// 
// Translation of Viper program.
// 
// Date:         2025-01-04 00:59:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/folding_fun_frame.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/folding_fun_frame-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: sum_rec
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
function  wand(arg1: bool, arg2: Ref, arg3: Ref, arg4: int): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Ref, arg3: Ref, arg4: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Ref, arg3: Ref, arg4: int): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg1_2: bool, arg2_2: Ref, arg3_2: Ref, arg4_2: int ::
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

// ==================================================
// Translation of function sum_rec
// ==================================================

// Uninterpreted function definitions
function  sum_rec(Heap: HeapType, ys: Ref): int;
function  sum_rec'(Heap: HeapType, ys: Ref): int;
axiom (forall Heap: HeapType, ys: Ref ::
  { sum_rec(Heap, ys) }
  sum_rec(Heap, ys) == sum_rec'(Heap, ys) && dummyFunction(sum_rec#triggerStateless(ys))
);
axiom (forall Heap: HeapType, ys: Ref ::
  { sum_rec'(Heap, ys) }
  dummyFunction(sum_rec#triggerStateless(ys))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, ys: Ref ::
  { state(Heap, Mask), sum_rec(Heap, ys) } { state(Heap, Mask), sum_rec#triggerStateless(ys), List#trigger(Heap, List(ys)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> sum_rec(Heap, ys) == Heap[ys, val] + (if Heap[ys, next] == null then 0 else sum_rec'(Heap, Heap[ys, next]))
);

// Framing axioms
function  sum_rec#frame(frame: FrameType, ys: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, ys: Ref ::
  { state(Heap, Mask), sum_rec'(Heap, ys) } { state(Heap, Mask), sum_rec#triggerStateless(ys), List#trigger(Heap, List(ys)) }
  state(Heap, Mask) ==> sum_rec'(Heap, ys) == sum_rec#frame(Heap[null, List(ys)], ys)
);

// Trigger function (controlling recursive postconditions)
function  sum_rec#trigger(frame: FrameType, ys: Ref): bool;

// State-independent trigger function
function  sum_rec#triggerStateless(ys: Ref): int;

// Check contract well-formedness and postcondition
procedure sum_rec#definedness(ys: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[ys, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(ys):=Mask[null, List(ys)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(ys), write) in ys.val + (ys.next == null ? 0 : sum_rec(ys.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(ys));
      assume UnfoldingHeap[null, List(ys)] == CombineFrames(FrameFragment(UnfoldingHeap[ys, val]), CombineFrames(FrameFragment(UnfoldingHeap[ys, next]), FrameFragment((if UnfoldingHeap[ys, next] != null then UnfoldingHeap[null, List(UnfoldingHeap[ys, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(ys) (folding_fun_frame.vpr@20.1--22.76) [133125]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(ys)];
      perm := FullPerm;
      assume ys != null;
      UnfoldingMask := UnfoldingMask[ys, val:=UnfoldingMask[ys, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume ys != null;
      UnfoldingMask := UnfoldingMask[ys, next:=UnfoldingMask[ys, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[ys, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, List(UnfoldingHeap[ys, next]):=UnfoldingMask[null, List(UnfoldingHeap[ys, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List(ys), UnfoldingHeap[null, List(ys)], List(UnfoldingHeap[ys, next]), UnfoldingHeap[null, List(UnfoldingHeap[ys, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ys.val (folding_fun_frame.vpr@20.1--22.76) [133126]"}
        HasDirectPerm(UnfoldingMask, ys, val);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ys.next (folding_fun_frame.vpr@20.1--22.76) [133127]"}
        HasDirectPerm(UnfoldingMask, ys, next);
      if (UnfoldingHeap[ys, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ys.next (folding_fun_frame.vpr@20.1--22.76) [133128]"}
          HasDirectPerm(UnfoldingMask, ys, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys.next) (folding_fun_frame.vpr@22.57--22.73) [133129]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(UnfoldingHeap[ys, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_rec#trigger(UnfoldingHeap[null, List(UnfoldingHeap[ys, next])], UnfoldingHeap[ys, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(ys):=Heap[null, List#sm(ys)][ys, val:=true]];
        Heap := Heap[null, List#sm(ys):=Heap[null, List#sm(ys)][ys, next:=true]];
        if (Heap[ys, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, List#sm(ys)][o_15, f_20] || Heap[null, List#sm(Heap[ys, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, List#sm(ys):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[ys, val] + (if Heap[ys, next] == null then 0 else sum_rec(Heap, Heap[ys, next]));
}

// ==================================================
// Translation of predicate List
// ==================================================

type PredicateType_List;
function  List(ys: Ref): Field PredicateType_List FrameType;
function  List#sm(ys: Ref): Field PredicateType_List PMaskType;
axiom (forall ys: Ref ::
  { PredicateMaskField(List(ys)) }
  PredicateMaskField(List(ys)) == List#sm(ys)
);
axiom (forall ys: Ref ::
  { List(ys) }
  IsPredicateField(List(ys))
);
axiom (forall ys: Ref ::
  { List(ys) }
  getPredWandId(List(ys)) == 0
);
function  List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall ys: Ref, ys2: Ref ::
  { List(ys), List(ys2) }
  List(ys) == List(ys2) ==> ys == ys2
);
axiom (forall ys: Ref, ys2: Ref ::
  { List#sm(ys), List#sm(ys2) }
  List#sm(ys) == List#sm(ys2) ==> ys == ys2
);

axiom (forall Heap: HeapType, ys: Ref ::
  { List#trigger(Heap, List(ys)) }
  List#everUsed(List(ys))
);

procedure List#definedness(ys: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[ys, $allocated];
    perm := FullPerm;
    assume ys != null;
    Mask := Mask[ys, val:=Mask[ys, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume ys != null;
    Mask := Mask[ys, next:=Mask[ys, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of ys.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access ys.next (folding_fun_frame.vpr@15.1--17.2) [133130]"}
        HasDirectPerm(Mask, ys, next);
    if (Heap[ys, next] != null) {
      
      // -- Check definedness of acc(List(ys.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access ys.next (folding_fun_frame.vpr@15.1--17.2) [133131]"}
          HasDirectPerm(Mask, ys, next);
      perm := FullPerm;
      Mask := Mask[null, List(Heap[ys, next]):=Mask[null, List(Heap[ys, next])] + perm];
      assume state(Heap, Mask);
    }
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
  var ExhaleHeap: HeapType;
  var i: int;
  var newVersion: FrameType;
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
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_4: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_5: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_6: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var freshVersion: FrameType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_7: bool;
  var arg_1_1: Ref;
  var b_8: bool;
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
    Mask := Mask[null, List(xs):=Mask[null, List(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := sum_rec(xs) -- folding_fun_frame.vpr@29.3--29.19
    
    // -- Check definedness of sum_rec(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (folding_fun_frame.vpr@29.8--29.19) [133132]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    i := sum_rec(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(List(xs), write) -- folding_fun_frame.vpr@30.3--30.18
    assume List#trigger(Heap, List(xs));
    assume Heap[null, List(xs)] == CombineFrames(FrameFragment(Heap[xs, val]), CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, List(Heap[xs, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List(xs) might fail. There might be insufficient permission to access List(xs) (folding_fun_frame.vpr@30.3--30.18) [133135]"}
        perm <= Mask[null, List(xs)];
    }
    Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, List(xs))) {
        havoc newVersion;
        Heap := Heap[null, List(xs):=newVersion];
      }
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, val:=Mask[xs, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, List(Heap[xs, next]):=Mask[null, List(Heap[xs, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(List(xs), Heap[null, List(xs)], List(Heap[xs, next]), Heap[null, List(Heap[xs, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(List(xs), write) && sum_rec(xs) == i {
  //   fold acc(List(xs), write)
  // } -- folding_fun_frame.vpr@32.3--34.4
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
    
    // -- Translating statement: label lhs1 -- folding_fun_frame.vpr@32.11--32.53
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: fold acc(List(xs), write) -- folding_fun_frame.vpr@33.7--33.20
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(xs.val, write)
          rcvLocal := xs;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, val] + neededTransfer;
          assert {:msg "  Folding List(xs) might fail. Fraction acc(xs.val, write) might be negative. (folding_fun_frame.vpr@33.7--33.20) [133140]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, val:=Used_1Mask[rcvLocal, val] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, val] == Used_1Heap[rcvLocal, val];
                Ops_1Mask := Ops_1Mask[rcvLocal, val:=Ops_1Mask[rcvLocal, val] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, val:=Used_1Mask[rcvLocal, val] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, val] == Used_1Heap[rcvLocal, val];
                Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
                Heap := Heap[null, wand#sm(true, xs, xs, i):=Heap[null, wand#sm(true, xs, xs, i)][xs, val:=true]];
              }
            }
          assert {:msg "  Folding List(xs) might fail. There might be insufficient permission to access xs.val (folding_fun_frame.vpr@33.7--33.20) [133141]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, val] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        
        // -- Transfer of acc(xs.next, write)
          rcvLocal := xs;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, next] + neededTransfer;
          assert {:msg "  Folding List(xs) might fail. Fraction acc(xs.next, write) might be negative. (folding_fun_frame.vpr@33.7--33.20) [133142]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, next:=Used_1Mask[rcvLocal, next] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, next] == Used_1Heap[rcvLocal, next];
                Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, next:=Used_1Mask[rcvLocal, next] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, next] == Used_1Heap[rcvLocal, next];
                Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                Heap := Heap[null, wand#sm(true, xs, xs, i):=Heap[null, wand#sm(true, xs, xs, i)][xs, next:=true]];
              }
            }
          assert {:msg "  Folding List(xs) might fail. There might be insufficient permission to access xs.next (folding_fun_frame.vpr@33.7--33.20) [133143]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_4 := b_1_1 && b_2_1;
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
            b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
            b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        if (b_1_1 ==> Result_1Heap[xs, next] != null) {
          
          // -- Transfer of acc(List(xs.next), write)
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_2_1) {
                if (b_1_1) {
                  
                  // -- Check definedness of acc(List(xs.next), write)
                    assert {:msg "  Folding List(xs) might fail. There might be insufficient permission to access xs.next (folding_fun_frame.vpr@33.7--33.20) [133144]"}
                      HasDirectPerm(Result_1Mask, xs, next);
                }
              }
            arg_1 := Result_1Heap[xs, next];
            neededTransfer := FullPerm;
            initNeededTransfer := Used_1Mask[null, List(arg_1)] + neededTransfer;
            assert {:msg "  Folding List(xs) might fail. Fraction acc(List(xs.next), write) might be negative. (folding_fun_frame.vpr@33.7--33.20) [133145]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, List(arg_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, List(arg_1):=Used_1Mask[null, List(arg_1)] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  TempMask := ZeroMask[null, List(arg_1):=FullPerm];
                  b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                  Ops_1Mask := Ops_1Mask[null, List(arg_1):=Ops_1Mask[null, List(arg_1)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, List(arg_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, List(arg_1):=Used_1Mask[null, List(arg_1)] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  TempMask := ZeroMask[null, List(arg_1):=FullPerm];
                  b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                  Mask := Mask[null, List(arg_1):=Mask[null, List(arg_1)] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                    { newPMask[o_16, f_21] }
                    Heap[null, wand#sm(true, xs, xs, i)][o_16, f_21] || Heap[null, List#sm(Heap[xs, next])][o_16, f_21] ==> newPMask[o_16, f_21]
                  );
                  Heap := Heap[null, wand#sm(true, xs, xs, i):=newPMask];
                }
              }
            assert {:msg "  Folding List(xs) might fail. There might be insufficient permission to access List(xs.next) (folding_fun_frame.vpr@33.7--33.20) [133146]"}
              b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, List(arg_1)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_5 := b_1_1 && b_2_1;
              b_5 := b_5 && state(Result_2Heap, Result_2Mask);
              b_5 := b_5 && sumMask(Result_2Mask, Ops_1Mask, Used_1Mask);
              b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_2Heap, Used_1Mask);
              b_5 := b_5 && state(Result_2Heap, Result_2Mask);
            b_1_1 := b_1_1 && b_5;
          b_1_1 := b_1_1 && b_2_1;
          b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_6 := b_1_1 && b_2_1;
          b_6 := b_6 && state(Result_3Heap, Result_3Mask);
          b_6 := b_6 && sumMask(Result_3Mask, Ops_1Mask, Used_1Mask);
          b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_3Heap, Used_1Mask);
          b_6 := b_6 && state(Result_3Heap, Result_3Mask);
        b_1_1 := b_1_1 && b_6;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, List(xs):=Ops_1Mask[null, List(xs)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume List#trigger(Ops_1Heap, List(xs));
        assume Ops_1Heap[null, List(xs)] == CombineFrames(FrameFragment(Ops_1Heap[xs, val]), CombineFrames(FrameFragment(Ops_1Heap[xs, next]), FrameFragment((if Ops_1Heap[xs, next] != null then Ops_1Heap[null, List(Ops_1Heap[xs, next])] else EmptyFrame))));
        if (!HasDirectPerm(Ops_1Mask, null, List(xs))) {
          Ops_1Heap := Ops_1Heap[null, List#sm(xs):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, List(xs):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, List#sm(xs):=Ops_1Heap[null, List#sm(xs)][xs, val:=true]];
        Ops_1Heap := Ops_1Heap[null, List#sm(xs):=Ops_1Heap[null, List#sm(xs)][xs, next:=true]];
        if (Ops_1Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Ops_1Heap[null, List#sm(xs)][o_52, f_55] || Ops_1Heap[null, List#sm(Ops_1Heap[xs, next])][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Ops_1Heap := Ops_1Heap[null, List#sm(xs):=newPMask];
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(List(xs), write) && sum_rec(xs) == i
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_7 := b_7 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(List(xs), write)
      arg_1_1 := xs;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[null, List(arg_1_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(List(xs), write) might be negative. (folding_fun_frame.vpr@32.3--34.4) [133148]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, List(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, List(arg_1_1):=Used_2Mask[null, List(arg_1_1)] + takeTransfer];
            b_7 := b_7 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, List(arg_1_1):=FullPerm];
            b_7 := b_7 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, List(arg_1_1):=Ops_1Mask[null, List(arg_1_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, List(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, List(arg_1_1):=Used_2Mask[null, List(arg_1_1)] + takeTransfer];
            b_7 := b_7 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, List(arg_1_1):=FullPerm];
            b_7 := b_7 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
            Mask := Mask[null, List(arg_1_1):=Mask[null, List(arg_1_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, wand#sm(true, xs, xs, i)][o_53, f_56] || Heap[null, List#sm(xs)][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, wand#sm(true, xs, xs, i):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List(xs) (folding_fun_frame.vpr@32.3--34.4) [133149]"}
        (b_1_1 && b_1_1) && b_7 ==> neededTransfer == 0.000000000 && Used_2Mask[null, List(arg_1_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_1_1 && b_7;
        b_8 := b_8 && state(Result_4Heap, Result_4Mask);
        b_8 := b_8 && sumMask(Result_4Mask, Ops_1Mask, Used_2Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_4Heap, Used_2Mask);
        b_8 := b_8 && state(Result_4Heap, Result_4Mask);
      b_1_1 := b_1_1 && b_8;
    if ((b_1_1 && b_1_1) && b_7) {
      if (b_1_1) {
        
        // -- Check definedness of sum_rec(xs) == i
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Result_4Heap;
            ExhaleWellDef0Mask := Result_4Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (folding_fun_frame.vpr@32.39--32.50) [133150]"}
              NoPerm < perm ==> NoPerm < Result_4Mask[null, List(xs)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Result_4Heap, ExhaleHeap, Result_4Mask);
            Result_4Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion sum_rec(xs) == i might not hold. (folding_fun_frame.vpr@32.3--34.4) [133151]"}
      (b_1_1 && b_1_1) && b_7 ==> sum_rec(Result_4Heap, xs) == i;
    assume state(Heap, Mask);
    Mask := Mask[null, wand(true, xs, xs, i):=Mask[null, wand(true, xs, xs, i)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- folding_fun_frame.vpr@37.3--37.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (folding_fun_frame.vpr@37.10--37.15) [133152]"}
      false;
    assume state(Heap, Mask);
}