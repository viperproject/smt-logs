// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:05:46
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/UnfoldTwice.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/UnfoldTwice-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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
function  wand(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: Perm, arg6_2: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique b_94: Field NormalField bool;
axiom !IsPredicateField(b_94);
axiom !IsWandField(b_94);
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
    Mask := Mask[x, b_94:=Mask[x, b_94] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.b
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.b (UnfoldTwice.vpr@7.1--9.2) [136962]"}
        HasDirectPerm(Mask, x, b_94);
    if (Heap[x, b_94]) {
      
      // -- Check definedness of acc(Cell(x.f), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (UnfoldTwice.vpr@7.1--9.2) [136963]"}
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
  var arg_1_1: Ref;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
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
  var arg_2: Ref;
  var b_9: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  
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
  // acc(x.f, write) && (acc(x.b, write) && acc(Cell(x.f), write)) {
  //   unfold acc(Cell(x), write)
  //   inhale x.b
  //   unfold acc(Cell(x.f), write)
  // } -- UnfoldTwice.vpr@14.5--18.6
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
    
    // -- Translating statement: label lhs1 -- UnfoldTwice.vpr@14.13--14.58
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(Cell(x), write) -- UnfoldTwice.vpr@15.9--15.23
        assume Cell#trigger(Ops_1Heap, Cell(x));
        assume Ops_1Heap[null, Cell(x)] == CombineFrames(FrameFragment(Ops_1Heap[x, b_94]), CombineFrames(FrameFragment(Ops_1Heap[x, f_7]), FrameFragment((if Ops_1Heap[x, b_94] then Ops_1Heap[null, Cell(Ops_1Heap[x, f_7])] else EmptyFrame))));
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(Cell(x), write)
          arg_1 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, Cell(arg_1)] + neededTransfer;
          assert {:msg "  Unfolding Cell(x) might fail. Fraction acc(Cell(x), write) might be negative. (UnfoldTwice.vpr@15.9--15.23) [136965]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Cell(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Cell(arg_1):=Used_1Mask[null, Cell(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Cell(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Cell(arg_1):=Ops_1Mask[null, Cell(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Cell(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Cell(arg_1):=Used_1Mask[null, Cell(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Cell(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, Cell(arg_1):=Mask[null, Cell(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x)][o_15, f_20] || Heap[null, Cell#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x):=newPMask];
              }
            }
          assert {:msg "  Unfolding Cell(x) might fail. There might be insufficient permission to access Cell(x) (UnfoldTwice.vpr@15.9--15.23) [136966]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Cell(arg_1)] == initNeededTransfer;
          
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
        Ops_1Mask := Ops_1Mask[x, b_94:=Ops_1Mask[x, b_94] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        if (Ops_1Heap[x, b_94]) {
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
      
      // -- Translating statement: inhale x.b -- UnfoldTwice.vpr@16.16--16.19
        if (b_1_1) {
          if (b_1_1) {
            
            // -- Check definedness of x.b
              assert {:msg "  Inhale might fail. There might be insufficient permission to access x.b (UnfoldTwice.vpr@16.16--16.19) [136970]"}
                HasDirectPerm(Ops_1Mask, x, b_94);
          }
          b_1_1 := b_1_1 && Ops_1Heap[x, b_94];
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(Cell(x.f), write) -- UnfoldTwice.vpr@17.9--17.25
        if (b_1_1) {
          
          // -- Check definedness of acc(Cell(x.f), write)
            assert {:msg "  Unfolding Cell(x.f) might fail. There might be insufficient permission to access x.f (UnfoldTwice.vpr@17.9--17.25) [136971]"}
              HasDirectPerm(Ops_1Mask, x, f_7);
        }
        assume Cell#trigger(Ops_1Heap, Cell(Ops_1Heap[x, f_7]));
        assume Ops_1Heap[null, Cell(Ops_1Heap[x, f_7])] == CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[x, f_7], b_94]), CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[x, f_7], f_7]), FrameFragment((if Ops_1Heap[Ops_1Heap[x, f_7], b_94] then Ops_1Heap[null, Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7])] else EmptyFrame))));
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
                  assert {:msg "  Unfolding Cell(x.f) might fail. There might be insufficient permission to access x.f (UnfoldTwice.vpr@17.9--17.25) [136973]"}
                    HasDirectPerm(Ops_1Mask, x, f_7);
              }
            }
          arg_1_1 := Ops_1Heap[x, f_7];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[null, Cell(arg_1_1)] + neededTransfer;
          assert {:msg "  Unfolding Cell(x.f) might fail. Fraction acc(Cell(x.f), write) might be negative. (UnfoldTwice.vpr@17.9--17.25) [136974]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Cell(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, Cell(arg_1_1):=Used_2Mask[null, Cell(arg_1_1)] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, Cell(arg_1_1):=FullPerm];
                b_4 := b_4 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Cell(arg_1_1):=Ops_1Mask[null, Cell(arg_1_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Cell(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, Cell(arg_1_1):=Used_2Mask[null, Cell(arg_1_1)] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, Cell(arg_1_1):=FullPerm];
                b_4 := b_4 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
                Mask := Mask[null, Cell(arg_1_1):=Mask[null, Cell(arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                  { newPMask[o_16, f_21] }
                  Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x)][o_16, f_21] || Heap[null, Cell#sm(Heap[x, f_7])][o_16, f_21] ==> newPMask[o_16, f_21]
                );
                Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x):=newPMask];
              }
            }
          assert {:msg "  Unfolding Cell(x.f) might fail. There might be insufficient permission to access Cell(x.f) (UnfoldTwice.vpr@17.9--17.25) [136975]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[null, Cell(arg_1_1)] == initNeededTransfer;
          
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
        Ops_1Mask := Ops_1Mask[Ops_1Heap[x, f_7], b_94:=Ops_1Mask[Ops_1Heap[x, f_7], b_94] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && Ops_1Heap[x, f_7] != null;
        Ops_1Mask := Ops_1Mask[Ops_1Heap[x, f_7], f_7:=Ops_1Mask[Ops_1Heap[x, f_7], f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        if (Ops_1Heap[Ops_1Heap[x, f_7], b_94]) {
          perm := FullPerm;
          b_1_1 := b_1_1;
          Ops_1Mask := Ops_1Mask[null, Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7]):=Ops_1Mask[null, Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7])] + perm];
          
          // -- Extra unfolding of predicate
            b_1_1 := b_1_1 && InsidePredicate(Cell(Ops_1Heap[x, f_7]), Ops_1Heap[null, Cell(Ops_1Heap[x, f_7])], Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7]), Ops_1Heap[null, Cell(Ops_1Heap[Ops_1Heap[x, f_7], f_7])]);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.b, write) && acc(Cell(x.f), write))
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (UnfoldTwice.vpr@14.5--18.6) [136979]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_1Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x):=Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (UnfoldTwice.vpr@14.5--18.6) [136980]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_1_1 && b_6;
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
        b_7 := b_7 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_7;
    
    // -- Transfer of acc(x.b, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, b_94] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.b, write) might be negative. (UnfoldTwice.vpr@14.5--18.6) [136981]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, b_94];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, b_94:=Used_3Mask[rcvLocal, b_94] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_1Heap[rcvLocal, b_94] == Used_3Heap[rcvLocal, b_94];
            Ops_1Mask := Ops_1Mask[rcvLocal, b_94:=Ops_1Mask[rcvLocal, b_94] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, b_94];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, b_94:=Used_3Mask[rcvLocal, b_94] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, b_94] == Used_3Heap[rcvLocal, b_94];
            Mask := Mask[rcvLocal, b_94:=Mask[rcvLocal, b_94] - takeTransfer];
            Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x):=Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x)][x, b_94:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.b (UnfoldTwice.vpr@14.5--18.6) [136982]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, b_94] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_1_1 && b_6;
        b_8 := b_8 && state(Result_3Heap, Result_3Mask);
        b_8 := b_8 && sumMask(Result_3Mask, Ops_1Mask, Used_3Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
        b_8 := b_8 && state(Result_3Heap, Result_3Mask);
      b_1_1 := b_1_1 && b_8;
    
    // -- Transfer of acc(Cell(x.f), write)
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_6) {
          if (b_1_1) {
            
            // -- Check definedness of acc(Cell(x.f), write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (UnfoldTwice.vpr@14.5--18.6) [136983]"}
                HasDirectPerm(Result_3Mask, x, f_7);
          }
        }
      arg_2 := Result_3Heap[x, f_7];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[null, Cell(arg_2)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Cell(x.f), write) might be negative. (UnfoldTwice.vpr@14.5--18.6) [136984]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, Cell(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, Cell(arg_2):=Used_3Mask[null, Cell(arg_2)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, Cell(arg_2):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, Cell(arg_2):=Ops_1Mask[null, Cell(arg_2)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Cell(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, Cell(arg_2):=Used_3Mask[null, Cell(arg_2)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, Cell(arg_2):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
            Mask := Mask[null, Cell(arg_2):=Mask[null, Cell(arg_2)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x)][o_52, f_55] || Heap[null, Cell#sm(Heap[x, f_7])][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, wand#sm(x, x, FullPerm, x, FullPerm, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Cell(x.f) (UnfoldTwice.vpr@14.5--18.6) [136985]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, Cell(arg_2)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_9 := b_1_1 && b_6;
        b_9 := b_9 && state(Result_4Heap, Result_4Mask);
        b_9 := b_9 && sumMask(Result_4Mask, Ops_1Mask, Used_3Mask);
        b_9 := (b_9 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_4Heap, Used_3Mask);
        b_9 := b_9 && state(Result_4Heap, Result_4Mask);
      b_1_1 := b_1_1 && b_9;
    Mask := Mask[null, wand(x, x, FullPerm, x, FullPerm, x):=Mask[null, wand(x, x, FullPerm, x, FullPerm, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}