// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:03:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/MethodCall.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/MethodCall-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
function  wand(arg1: Ref, arg2: Ref, arg3: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  IsWandField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand#ft(arg1, arg2, arg3) }
  IsWandField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  !IsPredicateField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3)) }
  wand#sm(arg1, arg2, arg3) == WandMaskField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  getPredWandId(wand(arg1, arg2, arg3)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg1_2: Ref, arg2_2: Ref, arg3_2: Perm ::
  { wand(arg1, arg2, arg3), wand(arg1_2, arg2_2, arg3_2) }
  wand(arg1, arg2, arg3) == wand(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  IsWandField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1#ft(arg1, arg2, arg3) }
  IsWandField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  !IsPredicateField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3)) }
  wand_1#sm(arg1, arg2, arg3) == WandMaskField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  getPredWandId(wand_1(arg1, arg2, arg3)) == 2
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
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
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method callee
// ==================================================

procedure callee(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (MethodCall.vpr@12.9--12.29) [140218]"}
        HasDirectPerm(PostMask, x, f_7);
    assume PostHeap[x, f_7] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Cell(x), write) -- MethodCall.vpr@13.5--13.19
    assume Cell#trigger(Heap, Cell(x));
    assume Heap[null, Cell(x)] == FrameFragment(Heap[x, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Cell(x) might fail. There might be insufficient permission to access Cell(x) (MethodCall.vpr@13.5--13.19) [140221]"}
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
  
  // -- Translating statement: x.f := 0 -- MethodCall.vpr@14.5--14.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (MethodCall.vpr@14.5--14.13) [140223]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of callee might not hold. There might be insufficient permission to access x.f (MethodCall.vpr@12.9--12.29) [140224]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of callee might not hold. Assertion x.f == 0 might not hold. (MethodCall.vpr@12.9--12.29) [140225]"}
      Heap[x, f_7] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  var ExhaleHeap: HeapType;
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
      oldHeap := Heap;
      oldMask := Mask;
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
  
  // -- Translating statement: package acc(Cell(x), write) --* acc(x.f, write) {
  //   callee(x)
  // } -- MethodCall.vpr@20.5--22.6
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
    
    // -- Translating statement: label lhs1 -- MethodCall.vpr@20.13--20.33
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: callee(x) -- MethodCall.vpr@21.9--21.18
        PreCallHeap := Ops_1Heap;
        PreCallMask := Ops_1Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Ops_1Heap;
          ExhaleWellDef0Mask := Ops_1Mask;
          havoc Used_1Heap;
          Used_1Mask := ZeroMask;
          b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
          
          // -- Transfer of acc(Cell(x), write)
            arg_1 := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_1Mask[null, Cell(arg_1)] + neededTransfer;
            assert {:msg "  The precondition of method callee might not hold. Fraction acc(Cell(x), write) might be negative. (MethodCall.vpr@21.9--21.18) [140226]"}
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
                    Heap[null, wand#sm(x, x, FullPerm)][o_15, f_20] || Heap[null, Cell#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
                  );
                  Heap := Heap[null, wand#sm(x, x, FullPerm):=newPMask];
                }
              }
            assert {:msg "  The precondition of method callee might not hold. There might be insufficient permission to access Cell(x) (MethodCall.vpr@21.9--21.18) [140227]"}
              b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Cell(arg_1)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_3 := b_1_1 && b_2_1;
              b_3 := b_3 && state(ResultHeap, ResultMask);
              b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
              b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
              b_3 := b_3 && state(ResultHeap, ResultMask);
            b_1_1 := b_1_1 && b_3;
          b_1_1 := b_1_1 && b_2_1;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
          Ops_1Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          b_1_1 := b_1_1 && x != null;
          Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == 0;
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (MethodCall.vpr@20.5--22.6) [140228]"}
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
            Heap := Heap[null, wand#sm(x, x, FullPerm):=Heap[null, wand#sm(x, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (MethodCall.vpr@20.5--22.6) [140229]"}
        (b_1_1 && b_1_1) && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_5 := b_1_1 && b_4;
        b_5 := b_5 && state(Result_1Heap, Result_1Mask);
        b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
        b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
        b_5 := b_5 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_5;
    Mask := Mask[null, wand(x, x, FullPerm):=Mask[null, wand(x, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access Cell(x) (MethodCall.vpr@19.9--19.16) [140230]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_7: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  var ExhaleHeap: HeapType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var rcvLocal: Ref;
  var b_11: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
      oldHeap := Heap;
      oldMask := Mask;
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
  
  // -- Translating statement: package true --* acc(x.f, write) {
  //   callee(x)
  // } -- MethodCall.vpr@29.5--31.6
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
    
    // -- Translating statement: label lhs3 -- MethodCall.vpr@29.13--29.30
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_7) {
      
      // -- Translating statement: callee(x) -- MethodCall.vpr@30.9--30.18
        PreCallHeap := Ops_3Heap;
        PreCallMask := Ops_3Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Ops_3Heap;
          ExhaleWellDef0Mask := Ops_3Mask;
          havoc Used_4Heap;
          Used_4Mask := ZeroMask;
          b_8 := b_8 && state(Used_4Heap, Used_4Mask);
          
          // -- Transfer of acc(Cell(x), write)
            arg_1_1 := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_4Mask[null, Cell(arg_1_1)] + neededTransfer;
            assert {:msg "  The precondition of method callee might not hold. Fraction acc(Cell(x), write) might be negative. (MethodCall.vpr@30.9--30.18) [140231]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_7 && b_8) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[null, Cell(arg_1_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_4Mask := Used_4Mask[null, Cell(arg_1_1):=Used_4Mask[null, Cell(arg_1_1)] + takeTransfer];
                  b_8 := b_8 && state(Used_4Heap, Used_4Mask);
                  TempMask := ZeroMask[null, Cell(arg_1_1):=FullPerm];
                  b_8 := b_8 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
                  Ops_3Mask := Ops_3Mask[null, Cell(arg_1_1):=Ops_3Mask[null, Cell(arg_1_1)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_7 && b_8) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, Cell(arg_1_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_4Mask := Used_4Mask[null, Cell(arg_1_1):=Used_4Mask[null, Cell(arg_1_1)] + takeTransfer];
                  b_8 := b_8 && state(Used_4Heap, Used_4Mask);
                  TempMask := ZeroMask[null, Cell(arg_1_1):=FullPerm];
                  b_8 := b_8 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                  Mask := Mask[null, Cell(arg_1_1):=Mask[null, Cell(arg_1_1)] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                    { newPMask[o_16, f_21] }
                    Heap[null, wand_1#sm(true, x, FullPerm)][o_16, f_21] || Heap[null, Cell#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
                  );
                  Heap := Heap[null, wand_1#sm(true, x, FullPerm):=newPMask];
                }
              }
            assert {:msg "  The precondition of method callee might not hold. There might be insufficient permission to access Cell(x) (MethodCall.vpr@30.9--30.18) [140232]"}
              b_7 && b_8 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Cell(arg_1_1)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_9 := b_7 && b_8;
              b_9 := b_9 && state(Result_2Heap, Result_2Mask);
              b_9 := b_9 && sumMask(Result_2Mask, Ops_3Mask, Used_4Mask);
              b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_2Heap, Used_4Mask);
              b_9 := b_9 && state(Result_2Heap, Result_2Mask);
            b_7 := b_7 && b_9;
          b_7 := b_7 && b_8;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
          Ops_3Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          b_7 := b_7 && x != null;
          Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
          b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
          b_7 := b_7 && Ops_3Heap[x, f_7] == 0;
          b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (MethodCall.vpr@29.5--31.6) [140233]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_10) && accVar2) && neededTransfer > 0.000000000) {
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
        if ((((b_7 && b_7) && b_10) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand_1#sm(true, x, FullPerm):=Heap[null, wand_1#sm(true, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (MethodCall.vpr@29.5--31.6) [140234]"}
        (b_7 && b_7) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_7 && b_10;
        b_11 := b_11 && state(Result_3Heap, Result_3Mask);
        b_11 := b_11 && sumMask(Result_3Mask, Ops_3Mask, Used_5Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_3Heap, Used_5Mask);
        b_11 := b_11 && state(Result_3Heap, Result_3Mask);
      b_7 := b_7 && b_11;
    Mask := Mask[null, wand_1(true, x, FullPerm):=Mask[null, wand_1(true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access Cell(x) (MethodCall.vpr@28.9--28.16) [140235]"}
        perm <= Mask[null, Cell(x)];
    }
    Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}