// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:17:18
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/IfElsePackage.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/IfElsePackage-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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
function  wand(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Ref, arg8: Perm, arg9: bool, arg1_2: Ref, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: Perm, arg6_2: Ref, arg7_2: Ref, arg8_2: Perm, arg9_2: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && arg9 == arg9_2)))))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique b_32: Field NormalField bool;
axiom !IsPredicateField(b_32);
axiom !IsWandField(b_32);
const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

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
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, b_32:=Mask[x, b_32] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.b
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.b (IfElsePackage.vpr@7.1--9.2) [223297]"}
        HasDirectPerm(Mask, x, b_32);
    if (Heap[x, b_32]) {
      
      // -- Check definedness of acc(Cell(x.f), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (IfElsePackage.vpr@7.1--9.2) [223298]"}
          HasDirectPerm(Mask, x, f_7);
      perm := FullPerm;
      Mask := Mask[null, Cell(Heap[x, f_7]):=Mask[null, Cell(Heap[x, f_7])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var perm: Perm;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var arg: Ref;
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
  var arg_1_13: Ref;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var rcvLocal: Ref;
  var b_7: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_8: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_9: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_10: bool;
  var b_11: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var b_12: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var b_13: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(Cell(x), write) --*
  // acc(x.f, write) && (acc(x.b, write) && (x.b ? acc(x.f.b, write) : false)) {
  //   unfold acc(Cell(x), write)
  //   if (x.b) {
  //     unfold acc(Cell(x.f), write)
  //   } else {
  //     inhale false}
  //   assert x.b ==> acc(x.f.b, write)
  // } -- IfElsePackage.vpr@13.5--21.6
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1;
      Ops_1Mask := Ops_1Mask[null, Cell(x):=Ops_1Mask[null, Cell(x)] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- IfElsePackage.vpr@13.13--13.75
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(Cell(x), write) -- IfElsePackage.vpr@14.9--14.23
        assume Cell#trigger(Ops_1Heap, Cell(x));
        assume Ops_1Heap[null, Cell(x)] == CombineFrames(FrameFragment(Ops_1Heap[x, b_32]), CombineFrames(FrameFragment(Ops_1Heap[x, f_7]), FrameFragment((if Ops_1Heap[x, b_32] then Ops_1Heap[null, Cell(Ops_1Heap[x, f_7])] else EmptyFrame))));
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(Cell(x), write)
          arg := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, Cell(arg)] + neededTransfer;
          assert {:msg "  Unfolding Cell(x) might fail. Fraction acc(Cell(x), write) might be negative. (IfElsePackage.vpr@14.9--14.23) [223300]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Cell(arg)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Cell(arg):=Used_1Mask[null, Cell(arg)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Cell(arg):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Cell(arg):=Ops_1Mask[null, Cell(arg)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Cell(arg)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Cell(arg):=Used_1Mask[null, Cell(arg)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Cell(arg):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, Cell(arg):=Mask[null, Cell(arg)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                  { newPMask[o_5, f_11] }
                  Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)][o_5, f_11] || Heap[null, Cell#sm(x)][o_5, f_11] ==> newPMask[o_5, f_11]
                );
                Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=newPMask];
              }
            }
          assert {:msg "  Unfolding Cell(x) might fail. There might be insufficient permission to access Cell(x) (IfElsePackage.vpr@14.9--14.23) [223301]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Cell(arg)] == initNeededTransfer;
          
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
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, b_32:=Ops_1Mask[x, b_32] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        if (Ops_1Heap[x, b_32]) {
          perm := FullPerm;
          b_1_1 := b_1_1;
          Ops_1Mask := Ops_1Mask[null, Cell(Ops_1Heap[x, f_7]):=Ops_1Mask[null, Cell(Ops_1Heap[x, f_7])] + perm];
          
          // -- Extra unfolding of predicate
            b_1_1 := b_1_1 && InsidePredicate(Cell(x), Ops_1Heap[null, Cell(x)], Cell(Ops_1Heap[x, f_7]), Ops_1Heap[null, Cell(Ops_1Heap[x, f_7])]);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: if (x.b) -- IfElsePackage.vpr@15.9--19.10
        if (b_1_1) {
          
          // -- Check definedness of x.b
            assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.b (IfElsePackage.vpr@15.12--15.15) [223305]"}
              HasDirectPerm(Ops_1Mask, x, b_32);
        }
        if (b_1_1 ==> Ops_1Heap[x, b_32]) {
          
          // -- Translating statement: unfold acc(Cell(x.f), write) -- IfElsePackage.vpr@16.13--16.29
            if (b_1_1) {
              
              // -- Check definedness of acc(Cell(x.f), write)
                assert {:msg "  Unfolding Cell(x.f) might fail. There might be insufficient permission to access x.f (IfElsePackage.vpr@16.13--16.29) [223306]"}
                  HasDirectPerm(Ops_1Mask, x, f_7);
            }
            assume Cell#trigger(Ops_1Heap, Cell(Ops_1Heap[x, f_7]));
            assume Ops_1Heap[null, Cell(Ops_1Heap[x, f_7])] == CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[x, f_7], b_32]), CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[x, f_7], f_7]), FrameFragment((if Ops_1Heap[Ops_1Heap[x, f_7], b_32] then Ops_1Heap[null, Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7])] else EmptyFrame))));
            ExhaleWellDef0Mask := Ops_1Mask;
            ExhaleWellDef0Heap := Ops_1Heap;
            havoc Used_2Heap;
            Used_2Mask := ZeroMask;
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            
            // -- Transfer of acc(Cell(x.f), write)
              
              // -- checking if access predicate defined in used state
                if (b_1_1 && b_4) {
                  if (b_1_1) {
                    
                    // -- Check definedness of acc(Cell(x.f), write)
                      assert {:msg "  Unfolding Cell(x.f) might fail. There might be insufficient permission to access x.f (IfElsePackage.vpr@16.13--16.29) [223308]"}
                        HasDirectPerm(Ops_1Mask, x, f_7);
                  }
                }
              arg_1_13 := Ops_1Heap[x, f_7];
              neededTransfer := FullPerm;
              initNeededTransfer := Used_2Mask[null, Cell(arg_1_13)] + neededTransfer;
              assert {:msg "  Unfolding Cell(x.f) might fail. Fraction acc(Cell(x.f), write) might be negative. (IfElsePackage.vpr@16.13--16.29) [223309]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_1Mask[null, Cell(arg_1_13)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_2Mask := Used_2Mask[null, Cell(arg_1_13):=Used_2Mask[null, Cell(arg_1_13)] + takeTransfer];
                    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                    TempMask := ZeroMask[null, Cell(arg_1_13):=FullPerm];
                    b_4 := b_4 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
                    Ops_1Mask := Ops_1Mask[null, Cell(arg_1_13):=Ops_1Mask[null, Cell(arg_1_13)] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[null, Cell(arg_1_13)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_2Mask := Used_2Mask[null, Cell(arg_1_13):=Used_2Mask[null, Cell(arg_1_13)] + takeTransfer];
                    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                    TempMask := ZeroMask[null, Cell(arg_1_13):=FullPerm];
                    b_4 := b_4 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
                    Mask := Mask[null, Cell(arg_1_13):=Mask[null, Cell(arg_1_13)] - takeTransfer];
                    havoc newPMask;
                    assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
                      { newPMask[o_6, f_12] }
                      Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)][o_6, f_12] || Heap[null, Cell#sm(Heap[x, f_7])][o_6, f_12] ==> newPMask[o_6, f_12]
                    );
                    Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=newPMask];
                  }
                }
              assert {:msg "  Unfolding Cell(x.f) might fail. There might be insufficient permission to access Cell(x.f) (IfElsePackage.vpr@16.13--16.29) [223310]"}
                b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[null, Cell(arg_1_13)] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_5 := b_1_1 && b_4;
                b_5 := b_5 && state(Result_1Heap, Result_1Mask);
                b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
                b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
                b_5 := b_5 && state(Result_1Heap, Result_1Mask);
              b_1_1 := b_1_1 && b_5;
            b_1_1 := b_1_1 && b_4;
            b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
            perm := FullPerm;
            b_1_1 := b_1_1 && Ops_1Heap[x, f_7] != null;
            Ops_1Mask := Ops_1Mask[Ops_1Heap[x, f_7], b_32:=Ops_1Mask[Ops_1Heap[x, f_7], b_32] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            perm := FullPerm;
            b_1_1 := b_1_1 && Ops_1Heap[x, f_7] != null;
            Ops_1Mask := Ops_1Mask[Ops_1Heap[x, f_7], f_7:=Ops_1Mask[Ops_1Heap[x, f_7], f_7] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            if (Ops_1Heap[Ops_1Heap[x, f_7], b_32]) {
              perm := FullPerm;
              b_1_1 := b_1_1;
              Ops_1Mask := Ops_1Mask[null, Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7]):=Ops_1Mask[null, Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7])] + perm];
              
              // -- Extra unfolding of predicate
                b_1_1 := b_1_1 && InsidePredicate(Cell(Ops_1Heap[x, f_7]), Ops_1Heap[null, Cell(Ops_1Heap[x, f_7])], Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7]), Ops_1Heap[null, Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7])]);
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            }
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        } else {
          
          // -- Translating statement: inhale false -- IfElsePackage.vpr@18.20--18.25
            if (b_1_1) {
              b_1_1 := false;
            }
            assume state(Ops_1Heap, Ops_1Mask);
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: assert x.b ==> acc(x.f.b, write) -- IfElsePackage.vpr@20.9--20.34
        AssertHeap := Ops_1Heap;
        AssertMask := Ops_1Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        havoc Used_3Heap;
        Used_3Mask := ZeroMask;
        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
        if (b_1_1 ==> Ops_1Heap[x, b_32]) {
          
          // -- Transfer of acc(x.f.b, write)
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_6) {
                if (b_1_1) {
                  
                  // -- Check definedness of acc(x.f.b, write)
                    assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (IfElsePackage.vpr@20.16--20.34) [223314]"}
                      HasDirectPerm(Ops_1Mask, x, f_7);
                }
              }
            rcvLocal := Ops_1Heap[x, f_7];
            neededTransfer := FullPerm;
            initNeededTransfer := Used_3Mask[rcvLocal, b_32] + neededTransfer;
            assert {:msg "  Assert might fail. Fraction acc(x.f.b, write) might be negative. (IfElsePackage.vpr@20.16--20.34) [223315]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[rcvLocal, b_32];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_3Mask := Used_3Mask[rcvLocal, b_32:=Used_3Mask[rcvLocal, b_32] + takeTransfer];
                  b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                  b_6 := b_6 && Ops_1Heap[rcvLocal, b_32] == Used_3Heap[rcvLocal, b_32];
                  Ops_1Mask := Ops_1Mask[rcvLocal, b_32:=Ops_1Mask[rcvLocal, b_32] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, b_32];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_3Mask := Used_3Mask[rcvLocal, b_32:=Used_3Mask[rcvLocal, b_32] + takeTransfer];
                  b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                  b_6 := b_6 && Heap[rcvLocal, b_32] == Used_3Heap[rcvLocal, b_32];
                  Mask := Mask[rcvLocal, b_32:=Mask[rcvLocal, b_32] - takeTransfer];
                  Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)][Heap[x, f_7], b_32:=true]];
                }
              }
            assert {:msg "  Assert might fail. There might be insufficient permission to access x.f.b (IfElsePackage.vpr@20.16--20.34) [223316]"}
              b_1_1 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, b_32] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_7 := b_1_1 && b_6;
              b_7 := b_7 && state(Result_2Heap, Result_2Mask);
              b_7 := b_7 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
              b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
              b_7 := b_7 && state(Result_2Heap, Result_2Mask);
            b_1_1 := b_1_1 && b_7;
          b_1_1 := b_1_1 && b_6;
          b_1_1 := b_1_1 && Used_3Heap == Ops_1Heap;
          
          // -- Transfer of acc(x.f.b, write)
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_1_1) {
                if (b_1_1) {
                  
                  // -- Check definedness of acc(x.f.b, write)
                    assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (IfElsePackage.vpr@20.16--20.34) [223317]"}
                      HasDirectPerm(Result_2Mask, x, f_7);
                }
              }
            rcvLocal := Result_2Heap[x, f_7];
            neededTransfer := FullPerm;
            initNeededTransfer := Ops_1Mask[rcvLocal, b_32] + neededTransfer;
            assert {:msg "  Assert might fail. Fraction acc(x.f.b, write) might be negative. (IfElsePackage.vpr@20.16--20.34) [223318]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_1_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Used_3Mask[rcvLocal, b_32];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Ops_1Mask := Ops_1Mask[rcvLocal, b_32:=Ops_1Mask[rcvLocal, b_32] + takeTransfer];
                  b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
                  b_1_1 := b_1_1 && Used_3Heap[rcvLocal, b_32] == Ops_1Heap[rcvLocal, b_32];
                  Used_3Mask := Used_3Mask[rcvLocal, b_32:=Used_3Mask[rcvLocal, b_32] - takeTransfer];
                  Used_3Heap := Used_3Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=Used_3Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)][Used_3Heap[x, f_7], b_32:=true]];
                }
              }
            assert {:msg "  Assert might fail. There might be insufficient permission to access x.f.b (IfElsePackage.vpr@20.16--20.34) [223319]"}
              b_1_1 && b_1_1 ==> neededTransfer == 0.000000000 && Ops_1Mask[rcvLocal, b_32] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_8 := b_1_1 && b_6;
              b_8 := b_8 && state(Result_3Heap, Result_3Mask);
              b_8 := b_8 && sumMask(Result_3Mask, Ops_1Mask, Used_3Mask);
              b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
              b_8 := b_8 && state(Result_3Heap, Result_3Mask);
            b_1_1 := b_1_1 && b_8;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_9 := b_1_1 && b_6;
          b_9 := b_9 && state(Result_4Heap, Result_4Mask);
          b_9 := b_9 && sumMask(Result_4Mask, Ops_1Mask, Used_3Mask);
          b_9 := (b_9 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_4Heap, Used_3Mask);
          b_9 := b_9 && state(Result_4Heap, Result_4Mask);
        b_1_1 := b_1_1 && b_9;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.b, write) && (x.b ? acc(x.f.b, write) : false))
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_10 := b_10 && state(Used_4Heap, Used_4Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_4Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (IfElsePackage.vpr@13.5--21.6) [223320]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_4Heap, Used_4Mask);
            b_10 := b_10 && Ops_1Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_4Heap, Used_4Mask);
            b_10 := b_10 && Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (IfElsePackage.vpr@13.5--21.6) [223321]"}
        (b_1_1 && b_1_1) && b_10 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_1_1 && b_10;
        b_11 := b_11 && state(Result_5Heap, Result_5Mask);
        b_11 := b_11 && sumMask(Result_5Mask, Ops_1Mask, Used_4Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_1Heap, Result_5Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_5Heap, Used_4Mask);
        b_11 := b_11 && state(Result_5Heap, Result_5Mask);
      b_1_1 := b_1_1 && b_11;
    
    // -- Transfer of acc(x.b, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_4Mask[rcvLocal, b_32] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.b, write) might be negative. (IfElsePackage.vpr@13.5--21.6) [223322]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, b_32];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, b_32:=Used_4Mask[rcvLocal, b_32] + takeTransfer];
            b_10 := b_10 && state(Used_4Heap, Used_4Mask);
            b_10 := b_10 && Ops_1Heap[rcvLocal, b_32] == Used_4Heap[rcvLocal, b_32];
            Ops_1Mask := Ops_1Mask[rcvLocal, b_32:=Ops_1Mask[rcvLocal, b_32] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, b_32];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, b_32:=Used_4Mask[rcvLocal, b_32] + takeTransfer];
            b_10 := b_10 && state(Used_4Heap, Used_4Mask);
            b_10 := b_10 && Heap[rcvLocal, b_32] == Used_4Heap[rcvLocal, b_32];
            Mask := Mask[rcvLocal, b_32:=Mask[rcvLocal, b_32] - takeTransfer];
            Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)][x, b_32:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.b (IfElsePackage.vpr@13.5--21.6) [223323]"}
        (b_1_1 && b_1_1) && b_10 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, b_32] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_12 := b_1_1 && b_10;
        b_12 := b_12 && state(Result_6Heap, Result_6Mask);
        b_12 := b_12 && sumMask(Result_6Mask, Ops_1Mask, Used_4Mask);
        b_12 := (b_12 && IdenticalOnKnownLocations(Ops_1Heap, Result_6Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_6Heap, Used_4Mask);
        b_12 := b_12 && state(Result_6Heap, Result_6Mask);
      b_1_1 := b_1_1 && b_12;
    if (b_1_1 && b_1_1) {
      if (Result_6Heap[x, b_32]) {
        
        // -- Transfer of acc(x.f.b, write)
          
          // -- checking if access predicate defined in used state
            if ((b_1_1 && b_1_1) && b_10) {
              if (b_1_1) {
                
                // -- Check definedness of acc(x.f.b, write)
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (IfElsePackage.vpr@13.5--21.6) [223324]"}
                    HasDirectPerm(Result_6Mask, x, f_7);
              }
            }
          rcvLocal := Result_6Heap[x, f_7];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[rcvLocal, b_32] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f.b, write) might be negative. (IfElsePackage.vpr@13.5--21.6) [223325]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, b_32];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, b_32:=Used_4Mask[rcvLocal, b_32] + takeTransfer];
                b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                b_10 := b_10 && Ops_1Heap[rcvLocal, b_32] == Used_4Heap[rcvLocal, b_32];
                Ops_1Mask := Ops_1Mask[rcvLocal, b_32:=Ops_1Mask[rcvLocal, b_32] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, b_32];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, b_32:=Used_4Mask[rcvLocal, b_32] + takeTransfer];
                b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                b_10 := b_10 && Heap[rcvLocal, b_32] == Used_4Heap[rcvLocal, b_32];
                Mask := Mask[rcvLocal, b_32:=Mask[rcvLocal, b_32] - takeTransfer];
                Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)][Heap[x, f_7], b_32:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f.b (IfElsePackage.vpr@13.5--21.6) [223326]"}
            (b_1_1 && b_1_1) && b_10 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, b_32] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_13 := b_1_1 && b_10;
            b_13 := b_13 && state(Result_7Heap, Result_7Mask);
            b_13 := b_13 && sumMask(Result_7Mask, Ops_1Mask, Used_4Mask);
            b_13 := (b_13 && IdenticalOnKnownLocations(Ops_1Heap, Result_7Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_7Heap, Used_4Mask);
            b_13 := b_13 && state(Result_7Heap, Result_7Mask);
          b_1_1 := b_1_1 && b_13;
      } else {
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (IfElsePackage.vpr@13.5--21.6) [223327]"}
          (b_1_1 && b_1_1) && b_10 ==> false;
      }
    }
    Mask := Mask[null, wand(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=Mask[null, wand(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(Cell(x), write) --*
  //   acc(x.f, write) && (acc(x.b, write) && (x.b ? acc(x.f.b, write) : false)) -- IfElsePackage.vpr@22.5--22.74
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(Cell(x), write) --* acc(x.f, write) && (acc(x.b, write) && (x.b ? acc(x.f.b, write) : false))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Cell(x):=WandDefLHSMask[null, Cell(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- IfElsePackage.vpr@22.12--22.74
          lhs3:
          Labellhs3Mask := WandDefLHSMask;
          Labellhs3Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, b_32:=WandDefRHSMask[x, b_32] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.b
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.b (IfElsePackage.vpr@22.12--22.74) [223328]"}
            HasDirectPerm(WandDefRHSMask, x, b_32);
        if (WandDefRHSHeap[x, b_32]) {
          
          // -- Check definedness of acc(x.f.b, write)
            assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (IfElsePackage.vpr@22.12--22.74) [223329]"}
              HasDirectPerm(WandDefRHSMask, x, f_7);
          perm := FullPerm;
          assume WandDefRHSHeap[x, f_7] != null;
          WandDefRHSMask := WandDefRHSMask[WandDefRHSHeap[x, f_7], b_32:=WandDefRHSMask[WandDefRHSHeap[x, f_7], b_32] + perm];
          assume state(WandDefRHSHeap, WandDefRHSMask);
        } else {
          assume false;
        }
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (IfElsePackage.vpr@22.12--22.74) [223330]"}
      FullPerm <= Mask[null, wand(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)];
    Mask := Mask[null, wand(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false):=Mask[null, wand(x, x, FullPerm, x, FullPerm, x, x, FullPerm, false)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}