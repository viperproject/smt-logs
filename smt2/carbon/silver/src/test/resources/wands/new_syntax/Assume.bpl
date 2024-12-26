// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:08:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/Assume.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/Assume-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique hasNext: Field NormalField bool;
axiom !IsPredicateField(hasNext);
axiom !IsWandField(hasNext);

// ==================================================
// Translation of predicate LinkedList
// ==================================================

type PredicateType_LinkedList;
function  LinkedList(x: Ref): Field PredicateType_LinkedList FrameType;
function  LinkedList#sm(x: Ref): Field PredicateType_LinkedList PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(LinkedList(x)) }
  PredicateMaskField(LinkedList(x)) == LinkedList#sm(x)
);
axiom (forall x: Ref ::
  { LinkedList(x) }
  IsPredicateField(LinkedList(x))
);
axiom (forall x: Ref ::
  { LinkedList(x) }
  getPredWandId(LinkedList(x)) == 0
);
function  LinkedList#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  LinkedList#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { LinkedList(x), LinkedList(x2) }
  LinkedList(x) == LinkedList(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { LinkedList#sm(x), LinkedList#sm(x2) }
  LinkedList#sm(x) == LinkedList#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { LinkedList#trigger(Heap, LinkedList(x)) }
  LinkedList#everUsed(LinkedList(x))
);

procedure LinkedList#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of LinkedList
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, hasNext:=Mask[x, hasNext] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.hasNext
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.hasNext (Assume.vpr@8.1--10.2) [140292]"}
        HasDirectPerm(Mask, x, hasNext);
    if (Heap[x, hasNext]) {
      
      // -- Check definedness of acc(LinkedList(x.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (Assume.vpr@8.1--10.2) [140293]"}
          HasDirectPerm(Mask, x, next);
      perm := FullPerm;
      Mask := Mask[null, LinkedList(Heap[x, next]):=Mask[null, LinkedList(Heap[x, next])] + perm];
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
  var rcvLocal: Ref;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var arg_1_1: Ref;
  var b_6: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, LinkedList(x):=Mask[null, LinkedList(x)] + perm];
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
    PostMask := PostMask[null, LinkedList(x):=PostMask[null, LinkedList(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(LinkedList(x), write) --*
  // acc(x.next, write) && acc(LinkedList(x.next), write) {
  //   unfold acc(LinkedList(x), write)
  //   inhale x.hasNext
  // } -- Assume.vpr@16.5--19.6
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
      Ops_1Mask := Ops_1Mask[null, LinkedList(x):=Ops_1Mask[null, LinkedList(x)] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- Assume.vpr@16.13--16.64
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(LinkedList(x), write) -- Assume.vpr@17.9--17.29
        assume LinkedList#trigger(Ops_1Heap, LinkedList(x));
        assume Ops_1Heap[null, LinkedList(x)] == CombineFrames(FrameFragment(Ops_1Heap[x, val]), CombineFrames(FrameFragment(Ops_1Heap[x, next]), CombineFrames(FrameFragment(Ops_1Heap[x, hasNext]), FrameFragment((if Ops_1Heap[x, hasNext] then Ops_1Heap[null, LinkedList(Ops_1Heap[x, next])] else EmptyFrame)))));
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(LinkedList(x), write)
          arg_1 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, LinkedList(arg_1)] + neededTransfer;
          assert {:msg "  Unfolding LinkedList(x) might fail. Fraction acc(LinkedList(x), write) might be negative. (Assume.vpr@17.9--17.29) [140295]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, LinkedList(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, LinkedList(arg_1):=Used_1Mask[null, LinkedList(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, LinkedList(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, LinkedList(arg_1):=Ops_1Mask[null, LinkedList(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, LinkedList(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, LinkedList(arg_1):=Used_1Mask[null, LinkedList(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, LinkedList(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, LinkedList(arg_1):=Mask[null, LinkedList(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand#sm(x, x, FullPerm, x)][o_15, f_20] || Heap[null, LinkedList#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand#sm(x, x, FullPerm, x):=newPMask];
              }
            }
          assert {:msg "  Unfolding LinkedList(x) might fail. There might be insufficient permission to access LinkedList(x) (Assume.vpr@17.9--17.29) [140296]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, LinkedList(arg_1)] == initNeededTransfer;
          
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
        Ops_1Mask := Ops_1Mask[x, val:=Ops_1Mask[x, val] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, next:=Ops_1Mask[x, next] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, hasNext:=Ops_1Mask[x, hasNext] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        if (Ops_1Heap[x, hasNext]) {
          perm := FullPerm;
          b_1_1 := b_1_1;
          Ops_1Mask := Ops_1Mask[null, LinkedList(Ops_1Heap[x, next]):=Ops_1Mask[null, LinkedList(Ops_1Heap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            b_1_1 := b_1_1 && InsidePredicate(LinkedList(x), Ops_1Heap[null, LinkedList(x)], LinkedList(Ops_1Heap[x, next]), Ops_1Heap[null, LinkedList(Ops_1Heap[x, next])]);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: inhale x.hasNext -- Assume.vpr@18.16--18.25
        if (b_1_1) {
          if (b_1_1) {
            
            // -- Check definedness of x.hasNext
              assert {:msg "  Inhale might fail. There might be insufficient permission to access x.hasNext (Assume.vpr@18.16--18.25) [140301]"}
                HasDirectPerm(Ops_1Mask, x, hasNext);
          }
          b_1_1 := b_1_1 && Ops_1Heap[x, hasNext];
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.next, write) && acc(LinkedList(x.next), write)
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(x.next, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[rcvLocal, next] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.next, write) might be negative. (Assume.vpr@16.5--19.6) [140302]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[rcvLocal, next:=Used_2Mask[rcvLocal, next] + takeTransfer];
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            b_4 := b_4 && Ops_1Heap[rcvLocal, next] == Used_2Heap[rcvLocal, next];
            Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[rcvLocal, next:=Used_2Mask[rcvLocal, next] + takeTransfer];
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            b_4 := b_4 && Heap[rcvLocal, next] == Used_2Heap[rcvLocal, next];
            Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
            Heap := Heap[null, wand#sm(x, x, FullPerm, x):=Heap[null, wand#sm(x, x, FullPerm, x)][x, next:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (Assume.vpr@16.5--19.6) [140303]"}
        (b_1_1 && b_1_1) && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, next] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_5 := b_1_1 && b_4;
        b_5 := b_5 && state(Result_1Heap, Result_1Mask);
        b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
        b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
        b_5 := b_5 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_5;
    
    // -- Transfer of acc(LinkedList(x.next), write)
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_4) {
          if (b_1_1) {
            
            // -- Check definedness of acc(LinkedList(x.next), write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (Assume.vpr@16.5--19.6) [140304]"}
                HasDirectPerm(Result_1Mask, x, next);
          }
        }
      arg_1_1 := Result_1Heap[x, next];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[null, LinkedList(arg_1_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(LinkedList(x.next), write) might be negative. (Assume.vpr@16.5--19.6) [140305]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, LinkedList(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, LinkedList(arg_1_1):=Used_2Mask[null, LinkedList(arg_1_1)] + takeTransfer];
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, LinkedList(arg_1_1):=FullPerm];
            b_4 := b_4 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, LinkedList(arg_1_1):=Ops_1Mask[null, LinkedList(arg_1_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, LinkedList(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, LinkedList(arg_1_1):=Used_2Mask[null, LinkedList(arg_1_1)] + takeTransfer];
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, LinkedList(arg_1_1):=FullPerm];
            b_4 := b_4 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
            Mask := Mask[null, LinkedList(arg_1_1):=Mask[null, LinkedList(arg_1_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, wand#sm(x, x, FullPerm, x)][o_16, f_21] || Heap[null, LinkedList#sm(Heap[x, next])][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, wand#sm(x, x, FullPerm, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LinkedList(x.next) (Assume.vpr@16.5--19.6) [140306]"}
        (b_1_1 && b_1_1) && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[null, LinkedList(arg_1_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_1_1 && b_4;
        b_6 := b_6 && state(Result_2Heap, Result_2Mask);
        b_6 := b_6 && sumMask(Result_2Mask, Ops_1Mask, Used_2Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_2Heap, Used_2Mask);
        b_6 := b_6 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_6;
    Mask := Mask[null, wand(x, x, FullPerm, x):=Mask[null, wand(x, x, FullPerm, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access LinkedList(x) (Assume.vpr@14.9--14.22) [140307]"}
        perm <= Mask[null, LinkedList(x)];
    }
    Mask := Mask[null, LinkedList(x):=Mask[null, LinkedList(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}