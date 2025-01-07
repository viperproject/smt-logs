// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:07:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples_paper/list_sum.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples_paper/list_sum-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> Heap[null, PredicateMaskField(pm_f_16)] == ExhaleHeap[null, PredicateMaskField(pm_f_16)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> Heap[null, WandMaskField(pm_f_16)] == ExhaleHeap[null, WandMaskField(pm_f_16)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_35: (Field A B), v: B ::
  { Heap[o_3, f_35:=v] }
  succHeap(Heap, Heap[o_3, f_35:=v])
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
function  wand(arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 1
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int, arg1_2: bool, arg2_2: Ref, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Ref, arg7_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(ys) (list_sum.vpr@20.1--22.76) [121182]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ys.val (list_sum.vpr@20.1--22.76) [121183]"}
        HasDirectPerm(UnfoldingMask, ys, val);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ys.next (list_sum.vpr@20.1--22.76) [121184]"}
        HasDirectPerm(UnfoldingMask, ys, next);
      if (UnfoldingHeap[ys, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ys.next (list_sum.vpr@20.1--22.76) [121185]"}
          HasDirectPerm(UnfoldingMask, ys, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys.next) (list_sum.vpr@22.57--22.73) [121186]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access ys.next (list_sum.vpr@15.1--17.2) [121187]"}
        HasDirectPerm(Mask, ys, next);
    if (Heap[ys, next] != null) {
      
      // -- Check definedness of acc(List(ys.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access ys.next (list_sum.vpr@15.1--17.2) [121188]"}
          HasDirectPerm(Mask, ys, next);
      perm := FullPerm;
      Mask := Mask[null, List(Heap[ys, next]):=Mask[null, List(Heap[ys, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method sum_it
// ==================================================

procedure sum_it(ys: Ref) returns (sum_1: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var xs: Ref;
  var ExhaleHeap: HeapType;
  var old_sum_xs: int;
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
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var oldXs: Ref;
  var zs: Ref;
  var oldOld_sum_xs: int;
  var newVersion: FrameType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var rcvLocal: Ref;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var b_8: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var arg_1_1: Ref;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_10: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var freshVersion: FrameType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_11: bool;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var b_12: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_13: bool;
  var arg_2: Ref;
  var b_14: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var b_15: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_16: bool;
  var arg_3: Ref;
  var b_17: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[ys, $allocated];
  
  // -- Checked inhaling of precondition
    assume ys != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List(ys):=Mask[null, List(ys)] + perm];
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
    PostMask := PostMask[null, List(ys):=PostMask[null, List(ys)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sum == old(sum_rec(ys))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@32.22--32.33) [121189]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume sum_1 == sum_rec(oldHeap, ys);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[xs, $allocated];
  
  // -- Translating statement: xs := ys -- list_sum.vpr@34.3--34.20
    xs := ys;
    assume state(Heap, Mask);
  
  // -- Translating statement: sum := 0 -- list_sum.vpr@35.3--35.11
    sum_1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: old_sum_xs := sum_rec(xs) -- list_sum.vpr@49.3--49.28
    
    // -- Check definedness of sum_rec(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (list_sum.vpr@49.17--49.28) [121190]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    old_sum_xs := sum_rec(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: package (xs != null ==> acc(List(xs), write) && sum_rec(xs) == old_sum_xs) --*
  // acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) {
  // } -- list_sum.vpr@51.3--51.18
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      if (b_1_1 ==> xs != null) {
        if (b_1_1) {
          if (b_1_1) {
            perm := FullPerm;
            b_1_1 := b_1_1;
            Ops_1Mask := Ops_1Mask[null, List(xs):=Ops_1Mask[null, List(xs)] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          }
          if (b_1_1) {
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            if (b_1_1) {
              
              // -- Check definedness of sum_rec(xs) == old_sum_xs
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := Ops_1Heap;
                  ExhaleWellDef0Mask := Ops_1Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (list_sum.vpr@51.11--51.12) [121191]"}
                    NoPerm < perm ==> NoPerm < Ops_1Mask[null, List(xs)];
                  // Finish exhale
                  havoc ExhaleHeap;
                  b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
                  Ops_1Heap := ExhaleHeap;
                  // Stop execution
                  b_1_1 := false;
                }
            }
            b_1_1 := b_1_1 && sum_rec(Ops_1Heap, xs) == old_sum_xs;
          }
        }
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- list_sum.vpr@51.11--51.18
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(List(ys), write)
      arg_1 := ys;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[null, List(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(List(ys), write) might be negative. (list_sum.vpr@51.3--51.18) [121192]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
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
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
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
              Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))][o_16, f_21] || Heap[null, List#sm(ys)][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List(ys) (list_sum.vpr@51.3--51.18) [121193]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, List(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    if ((b_1_1 && b_1_1) && b_2_1) {
      if (b_1_1) {
        
        // -- Check definedness of sum_rec(ys) == old(sum_rec(ys))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := ResultHeap;
            ExhaleWellDef0Mask := ResultMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@51.17--51.18) [121194]"}
              NoPerm < perm ==> NoPerm < ResultMask[null, List(ys)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ResultHeap, ExhaleHeap, ResultMask);
            ResultHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@51.17--51.18) [121195]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
            // Finish exhale
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion sum_rec(ys) == old(sum_rec(ys)) might not hold. (list_sum.vpr@51.3--51.18) [121196]"}
      (b_1_1 && b_1_1) && b_2_1 ==> sum_rec(ResultHeap, ys) == sum_rec(oldHeap, ys);
    assume state(Heap, Mask);
    Mask := Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (xs != null) -- list_sum.vpr@62.3--90.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (xs != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant xs != null ==> acc(List(xs), write) might not hold on entry. There might be insufficient permission to access List(xs) (list_sum.vpr@63.15--63.43) [121197]"}
              perm <= Mask[null, List(xs)];
          }
          Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
        }
        assert {:msg "  Loop invariant old_sum_xs == (xs == null ? 0 : sum_rec(xs)) might not hold on entry. Assertion old_sum_xs == (xs == null ? 0 : sum_rec(xs)) might not hold. (list_sum.vpr@64.15--64.59) [121198]"}
          old_sum_xs == (if xs == null then 0 else sum_rec(Heap, xs));
        assert {:msg "  Loop invariant sum == old(sum_rec(ys)) - old_sum_xs might not hold on entry. Assertion sum == old(sum_rec(ys)) - old_sum_xs might not hold. (list_sum.vpr@65.15--65.51) [121199]"}
          sum_1 == sum_rec(oldHeap, ys) - old_sum_xs;
        // permLe
        assert {:msg "  Loop invariant (xs != null ==> acc(List(xs), write) && sum_rec(xs) == old_sum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) might not hold on entry. Magic wand instance not found. (list_sum.vpr@66.15--66.22) [121200]"}
          FullPerm <= Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))];
        Mask := Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))] - FullPerm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc old_sum_xs, xs, sum_1;
      assume Heap[xs, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        if (xs != null) {
          perm := FullPerm;
          Mask := Mask[null, List(xs):=Mask[null, List(xs)] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of old_sum_xs == (xs == null ? 0 : sum_rec(xs))
          if (xs == null) {
          } else {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (list_sum.vpr@64.47--64.58) [121201]"}
                NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        assume old_sum_xs == (if xs == null then 0 else sum_rec(Heap, xs));
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of sum == old(sum_rec(ys)) - old_sum_xs
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@65.26--65.37) [121202]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assume sum_1 == sum_rec(oldHeap, ys) - old_sum_xs;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (xs != null ==> acc(List(xs), write) && sum_rec(xs) == old_sum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            if (xs != null) {
              perm := FullPerm;
              WandDefLHSMask := WandDefLHSMask[null, List(xs):=WandDefLHSMask[null, List(xs)] + perm];
              assume state(WandDefLHSHeap, WandDefLHSMask);
              assume state(WandDefLHSHeap, WandDefLHSMask);
              
              // -- Check definedness of sum_rec(xs) == old_sum_xs
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := WandDefLHSHeap;
                  ExhaleWellDef0Mask := WandDefLHSMask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (list_sum.vpr@66.15--66.16) [121203]"}
                    NoPerm < perm ==> NoPerm < WandDefLHSMask[null, List(xs)];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                  WandDefLHSHeap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
              assume sum_rec(WandDefLHSHeap, xs) == old_sum_xs;
            }
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs3 -- list_sum.vpr@66.15--66.22
              lhs3:
              Labellhs3Heap := WandDefLHSHeap;
              Labellhs3Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            WandDefRHSMask := WandDefRHSMask[null, List(ys):=WandDefRHSMask[null, List(ys)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            
            // -- Check definedness of sum_rec(ys) == old(sum_rec(ys))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := WandDefRHSHeap;
                ExhaleWellDef0Mask := WandDefRHSMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@66.21--66.22) [121204]"}
                  NoPerm < perm ==> NoPerm < WandDefRHSMask[null, List(ys)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
                WandDefRHSHeap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@66.21--66.22) [121205]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assume sum_rec(WandDefRHSHeap, ys) == sum_rec(oldHeap, ys);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        Mask := Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        if (xs != null) {
          perm := FullPerm;
          Mask := Mask[null, List(xs):=Mask[null, List(xs)] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume old_sum_xs == (if xs == null then 0 else sum_rec(Heap, xs));
        assume state(Heap, Mask);
        assume sum_1 == sum_rec(oldHeap, ys) - old_sum_xs;
        assume state(Heap, Mask);
        Mask := Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume xs != null;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Assumptions about local variables
            assume Heap[oldXs, $allocated];
            assume Heap[zs, $allocated];
          
          // -- Translating statement: oldXs := xs -- list_sum.vpr@68.5--68.25
            oldXs := xs;
            assume state(Heap, Mask);
          
          // -- Translating statement: oldOld_sum_xs := old_sum_xs -- list_sum.vpr@69.5--69.41
            oldOld_sum_xs := old_sum_xs;
            assume state(Heap, Mask);
          
          // -- Translating statement: zs := xs -- list_sum.vpr@74.5--74.22
            zs := xs;
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(List(xs), write) -- list_sum.vpr@75.5--75.20
            assume List#trigger(Heap, List(xs));
            assume Heap[null, List(xs)] == CombineFrames(FrameFragment(Heap[xs, val]), CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, List(Heap[xs, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding List(xs) might fail. There might be insufficient permission to access List(xs) (list_sum.vpr@75.5--75.20) [121206]"}
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
          
          // -- Translating statement: sum := sum + xs.val -- list_sum.vpr@76.5--76.24
            
            // -- Check definedness of sum + xs.val
              assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.val (list_sum.vpr@76.5--76.24) [121207]"}
                HasDirectPerm(Mask, xs, val);
            sum_1 := sum_1 + Heap[xs, val];
            assume state(Heap, Mask);
          
          // -- Translating statement: xs := xs.next -- list_sum.vpr@77.5--77.18
            
            // -- Check definedness of xs.next
              assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (list_sum.vpr@77.5--77.18) [121208]"}
                HasDirectPerm(Mask, xs, next);
            xs := Heap[xs, next];
            assume state(Heap, Mask);
          
          // -- Translating statement: old_sum_xs := (xs == null ? 0 : sum_rec(xs)) -- list_sum.vpr@83.5--83.49
            
            // -- Check definedness of (xs == null ? 0 : sum_rec(xs))
              if (xs == null) {
              } else {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (list_sum.vpr@83.37--83.48) [121209]"}
                    NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
              }
            old_sum_xs := (if xs == null then 0 else sum_rec(Heap, xs));
            assume state(Heap, Mask);
          
          // -- Translating statement: package (xs != null ==> acc(List(xs), write) && sum_rec(xs) == old_sum_xs) --*
  // acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) {
  //   fold acc(List(zs), write)
  //   apply (oldXs != null ==>
  //     acc(List(oldXs), write) && sum_rec(oldXs) == oldOld_sum_xs) --*
  //     acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
  // } -- list_sum.vpr@85.5--89.6
            havoc Ops_3Heap;
            Ops_3Mask := ZeroMask;
            b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            havoc Used_2Heap;
            Used_2Mask := ZeroMask;
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            // Inhaling left hand side of current wand into hypothetical state
            if (b_5) {
              if (b_5 ==> xs != null) {
                if (b_5) {
                  if (b_5) {
                    perm := FullPerm;
                    b_5 := b_5;
                    Ops_3Mask := Ops_3Mask[null, List(xs):=Ops_3Mask[null, List(xs)] + perm];
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                  }
                  if (b_5) {
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                    if (b_5) {
                      
                      // -- Check definedness of sum_rec(xs) == old_sum_xs
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef0Heap := Ops_3Heap;
                          ExhaleWellDef0Mask := Ops_3Mask;
                          perm := FullPerm;
                          assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (list_sum.vpr@85.14--85.15) [121210]"}
                            NoPerm < perm ==> NoPerm < Ops_3Mask[null, List(xs)];
                          // Finish exhale
                          havoc ExhaleHeap;
                          b_5 := b_5 && IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                          Ops_3Heap := ExhaleHeap;
                          // Stop execution
                          b_5 := false;
                        }
                    }
                    b_5 := b_5 && sum_rec(Ops_3Heap, xs) == old_sum_xs;
                  }
                }
              }
            }
            b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            
            // -- Translating statement: label lhs4 -- list_sum.vpr@85.13--85.22
              lhs4:
              Labellhs4Heap := Ops_3Heap;
              Labellhs4Mask := Ops_3Mask;
              b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            boolCur_1 := true;
            if (b_5) {
              
              // -- Translating statement: fold acc(List(zs), write) -- list_sum.vpr@86.9--86.22
                ExhaleWellDef0Heap := Ops_3Heap;
                ExhaleWellDef0Mask := Ops_3Mask;
                havoc Used_3Heap;
                Used_3Mask := ZeroMask;
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                
                // -- Transfer of acc(zs.val, write)
                  rcvLocal := zs;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_3Mask[rcvLocal, val] + neededTransfer;
                  assert {:msg "  Folding List(zs) might fail. Fraction acc(zs.val, write) might be negative. (list_sum.vpr@86.9--86.22) [121211]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[rcvLocal, val];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, val:=Used_3Mask[rcvLocal, val] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Ops_3Heap[rcvLocal, val] == Used_3Heap[rcvLocal, val];
                        Ops_3Mask := Ops_3Mask[rcvLocal, val:=Ops_3Mask[rcvLocal, val] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, val];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, val:=Used_3Mask[rcvLocal, val] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Heap[rcvLocal, val] == Used_3Heap[rcvLocal, val];
                        Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
                        Heap := Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))][zs, val:=true]];
                      }
                    }
                  assert {:msg "  Folding List(zs) might fail. There might be insufficient permission to access zs.val (list_sum.vpr@86.9--86.22) [121212]"}
                    b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, val] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_7 := b_5 && b_6;
                    b_7 := b_7 && state(Result_1Heap, Result_1Mask);
                    b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
                    b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
                    b_7 := b_7 && state(Result_1Heap, Result_1Mask);
                  b_5 := b_5 && b_7;
                b_5 := b_5 && b_6;
                b_5 := b_5 && Used_3Heap == Ops_3Heap;
                
                // -- Transfer of acc(zs.next, write)
                  rcvLocal := zs;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_3Mask[rcvLocal, next] + neededTransfer;
                  assert {:msg "  Folding List(zs) might fail. Fraction acc(zs.next, write) might be negative. (list_sum.vpr@86.9--86.22) [121213]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[rcvLocal, next];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, next:=Used_3Mask[rcvLocal, next] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Ops_3Heap[rcvLocal, next] == Used_3Heap[rcvLocal, next];
                        Ops_3Mask := Ops_3Mask[rcvLocal, next:=Ops_3Mask[rcvLocal, next] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, next];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, next:=Used_3Mask[rcvLocal, next] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Heap[rcvLocal, next] == Used_3Heap[rcvLocal, next];
                        Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                        Heap := Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))][zs, next:=true]];
                      }
                    }
                  assert {:msg "  Folding List(zs) might fail. There might be insufficient permission to access zs.next (list_sum.vpr@86.9--86.22) [121214]"}
                    b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, next] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_8 := b_5 && b_6;
                    b_8 := b_8 && state(Result_2Heap, Result_2Mask);
                    b_8 := b_8 && sumMask(Result_2Mask, Ops_3Mask, Used_3Mask);
                    b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
                    b_8 := b_8 && state(Result_2Heap, Result_2Mask);
                  b_5 := b_5 && b_8;
                b_5 := b_5 && b_6;
                b_5 := b_5 && Used_3Heap == Ops_3Heap;
                if (b_5 ==> Result_2Heap[zs, next] != null) {
                  
                  // -- Transfer of acc(List(zs.next), write)
                    
                    // -- checking if access predicate defined in used state
                      if (b_5 && b_6) {
                        if (b_5) {
                          
                          // -- Check definedness of acc(List(zs.next), write)
                            assert {:msg "  Folding List(zs) might fail. There might be insufficient permission to access zs.next (list_sum.vpr@86.9--86.22) [121215]"}
                              HasDirectPerm(Result_2Mask, zs, next);
                        }
                      }
                    arg_1_1 := Result_2Heap[zs, next];
                    neededTransfer := FullPerm;
                    initNeededTransfer := Used_3Mask[null, List(arg_1_1)] + neededTransfer;
                    assert {:msg "  Folding List(zs) might fail. Fraction acc(List(zs.next), write) might be negative. (list_sum.vpr@86.9--86.22) [121216]"}
                      neededTransfer >= 0.000000000;
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Ops_3Mask[null, List(arg_1_1)];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_3Mask := Used_3Mask[null, List(arg_1_1):=Used_3Mask[null, List(arg_1_1)] + takeTransfer];
                          b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                          TempMask := ZeroMask[null, List(arg_1_1):=FullPerm];
                          b_6 := b_6 && IdenticalOnKnownLocations(Ops_3Heap, Used_3Heap, TempMask);
                          Ops_3Mask := Ops_3Mask[null, List(arg_1_1):=Ops_3Mask[null, List(arg_1_1)] - takeTransfer];
                        }
                      }
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Mask[null, List(arg_1_1)];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_3Mask := Used_3Mask[null, List(arg_1_1):=Used_3Mask[null, List(arg_1_1)] + takeTransfer];
                          b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                          TempMask := ZeroMask[null, List(arg_1_1):=FullPerm];
                          b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                          Mask := Mask[null, List(arg_1_1):=Mask[null, List(arg_1_1)] - takeTransfer];
                          havoc newPMask;
                          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                            { newPMask[o_52, f_55] }
                            Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))][o_52, f_55] || Heap[null, List#sm(Heap[zs, next])][o_52, f_55] ==> newPMask[o_52, f_55]
                          );
                          Heap := Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=newPMask];
                        }
                      }
                    assert {:msg "  Folding List(zs) might fail. There might be insufficient permission to access List(zs.next) (list_sum.vpr@86.9--86.22) [121217]"}
                      b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, List(arg_1_1)] == initNeededTransfer;
                    
                    // -- Creating state which is the sum of the two previously built up states
                      b_9 := b_5 && b_6;
                      b_9 := b_9 && state(Result_3Heap, Result_3Mask);
                      b_9 := b_9 && sumMask(Result_3Mask, Ops_3Mask, Used_3Mask);
                      b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
                      b_9 := b_9 && state(Result_3Heap, Result_3Mask);
                    b_5 := b_5 && b_9;
                  b_5 := b_5 && b_6;
                  b_5 := b_5 && Used_3Heap == Ops_3Heap;
                }
                
                // -- Creating state which is the sum of the two previously built up states
                  b_10 := b_5 && b_6;
                  b_10 := b_10 && state(Result_4Heap, Result_4Mask);
                  b_10 := b_10 && sumMask(Result_4Mask, Ops_3Mask, Used_3Mask);
                  b_10 := (b_10 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_4Heap, Used_3Mask);
                  b_10 := b_10 && state(Result_4Heap, Result_4Mask);
                b_5 := b_5 && b_10;
                perm := FullPerm;
                b_5 := b_5;
                Ops_3Mask := Ops_3Mask[null, List(zs):=Ops_3Mask[null, List(zs)] + perm];
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                assume List#trigger(Ops_3Heap, List(zs));
                assume Ops_3Heap[null, List(zs)] == CombineFrames(FrameFragment(Ops_3Heap[zs, val]), CombineFrames(FrameFragment(Ops_3Heap[zs, next]), FrameFragment((if Ops_3Heap[zs, next] != null then Ops_3Heap[null, List(Ops_3Heap[zs, next])] else EmptyFrame))));
                if (!HasDirectPerm(Ops_3Mask, null, List(zs))) {
                  Ops_3Heap := Ops_3Heap[null, List#sm(zs):=ZeroPMask];
                  havoc freshVersion;
                  Ops_3Heap := Ops_3Heap[null, List(zs):=freshVersion];
                }
                Ops_3Heap := Ops_3Heap[null, List#sm(zs):=Ops_3Heap[null, List#sm(zs)][zs, val:=true]];
                Ops_3Heap := Ops_3Heap[null, List#sm(zs):=Ops_3Heap[null, List#sm(zs)][zs, next:=true]];
                if (Ops_3Heap[zs, next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                    { newPMask[o_53, f_56] }
                    Ops_3Heap[null, List#sm(zs)][o_53, f_56] || Ops_3Heap[null, List#sm(Ops_3Heap[zs, next])][o_53, f_56] ==> newPMask[o_53, f_56]
                  );
                  Ops_3Heap := Ops_3Heap[null, List#sm(zs):=newPMask];
                }
                assume state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            }
            if (b_5) {
              
              // -- Translating statement: apply (oldXs != null ==>
  //   acc(List(oldXs), write) && sum_rec(oldXs) == oldOld_sum_xs) --*
  //   acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) -- list_sum.vpr@87.9--88.59
                
                // -- check if wand is held and remove an instance
                  ExhaleWellDef0Heap := Ops_3Heap;
                  ExhaleWellDef0Mask := Ops_3Mask;
                  havoc Used_4Heap;
                  Used_4Mask := ZeroMask;
                  b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                  
                  // -- Transfer of (oldXs != null ==> acc(List(oldXs), write) && sum_rec(oldXs) == oldOld_sum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
                    
                    // -- checking if access predicate defined in used state
                      if (b_5 && b_11) {
                        if (b_5) {
                          
                          // -- Check definedness of (oldXs != null ==> acc(List(oldXs), write) && sum_rec(oldXs) == oldOld_sum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
                            if (*) {
                              havoc WandDefLHSHeap;
                              WandDefLHSMask := ZeroMask;
                              if (oldXs != null) {
                                perm := FullPerm;
                                WandDefLHSMask := WandDefLHSMask[null, List(oldXs):=WandDefLHSMask[null, List(oldXs)] + perm];
                                assume state(WandDefLHSHeap, WandDefLHSMask);
                                assume state(WandDefLHSHeap, WandDefLHSMask);
                                
                                // -- Check definedness of sum_rec(oldXs) == oldOld_sum_xs
                                  if (*) {
                                    // Exhale precondition of function application
                                    ExhaleWellDef1Heap := WandDefLHSHeap;
                                    ExhaleWellDef1Mask := WandDefLHSMask;
                                    perm := FullPerm;
                                    assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(oldXs) (list_sum.vpr@87.54--87.68) [121218]"}
                                      NoPerm < perm ==> NoPerm < WandDefLHSMask[null, List(oldXs)];
                                    // Finish exhale
                                    havoc ExhaleHeap;
                                    assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                                    WandDefLHSHeap := ExhaleHeap;
                                    // Stop execution
                                    assume false;
                                  }
                                assume sum_rec(WandDefLHSHeap, oldXs) == oldOld_sum_xs;
                              }
                              assume state(WandDefLHSHeap, WandDefLHSMask);
                              
                              // -- Translating statement: label lhs7 -- list_sum.vpr@87.15--88.59
                                lhs7:
                                Labellhs7Heap := WandDefLHSHeap;
                                Labellhs7Mask := WandDefLHSMask;
                                assume state(WandDefLHSHeap, WandDefLHSMask);
                              havoc WandDefRHSHeap;
                              WandDefRHSMask := ZeroMask;
                              perm := FullPerm;
                              WandDefRHSMask := WandDefRHSMask[null, List(ys):=WandDefRHSMask[null, List(ys)] + perm];
                              assume state(WandDefRHSHeap, WandDefRHSMask);
                              assume state(WandDefRHSHeap, WandDefRHSMask);
                              
                              // -- Check definedness of sum_rec(ys) == old(sum_rec(ys))
                                if (*) {
                                  // Exhale precondition of function application
                                  ExhaleWellDef1Heap := WandDefRHSHeap;
                                  ExhaleWellDef1Mask := WandDefRHSMask;
                                  perm := FullPerm;
                                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@88.27--88.38) [121219]"}
                                    NoPerm < perm ==> NoPerm < WandDefRHSMask[null, List(ys)];
                                  // Finish exhale
                                  havoc ExhaleHeap;
                                  assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
                                  WandDefRHSHeap := ExhaleHeap;
                                  // Stop execution
                                  assume false;
                                }
                                if (*) {
                                  // Exhale precondition of function application
                                  ExhaleWellDef1Heap := oldHeap;
                                  ExhaleWellDef1Mask := oldMask;
                                  perm := FullPerm;
                                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@88.46--88.57) [121220]"}
                                    NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
                                  // Finish exhale
                                  // Stop execution
                                  assume false;
                                }
                              assume sum_rec(WandDefRHSHeap, ys) == sum_rec(oldHeap, ys);
                              assume state(WandDefRHSHeap, WandDefRHSMask);
                              assume false;
                            }
                        }
                      }
                    neededTransfer := 1.000000000;
                    initNeededTransfer := Used_4Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys))] + neededTransfer;
                    assert {:msg "  Applying wand might fail. Fraction (oldXs != null ==> acc(List(oldXs), write) && sum_rec(oldXs) == oldOld_sum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) might be negative. (list_sum.vpr@87.9--88.59) [121221]"}
                      neededTransfer >= 0.000000000;
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Ops_3Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys))];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_4Mask := Used_4Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Used_4Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys))] + takeTransfer];
                          b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                          Ops_3Mask := Ops_3Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Ops_3Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys))] - takeTransfer];
                        }
                      }
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys))];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_4Mask := Used_4Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Used_4Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys))] + takeTransfer];
                          b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                          Mask := Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys))] - takeTransfer];
                        }
                      }
                    assert {:msg "  Applying wand might fail. Magic wand instance not found. (list_sum.vpr@87.9--88.59) [121222]"}
                      b_5 && b_11 ==> neededTransfer == 0.000000000 && Used_4Mask[null, wand(oldXs != null, oldXs, oldXs, oldOld_sum_xs, ys, ys, sum_rec(oldHeap, ys))] == initNeededTransfer;
                    
                    // -- Creating state which is the sum of the two previously built up states
                      b_12 := b_5 && b_11;
                      b_12 := b_12 && state(Result_5Heap, Result_5Mask);
                      b_12 := b_12 && sumMask(Result_5Mask, Ops_3Mask, Used_4Mask);
                      b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_5Heap, Used_4Mask);
                      b_12 := b_12 && state(Result_5Heap, Result_5Mask);
                    b_5 := b_5 && b_12;
                  b_5 := b_5 && b_11;
                  b_5 := b_5 && Used_4Heap == Ops_3Heap;
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                
                // -- check if LHS holds and remove permissions 
                  ExhaleWellDef0Heap := Ops_3Heap;
                  ExhaleWellDef0Mask := Ops_3Mask;
                  havoc Used_5Heap;
                  Used_5Mask := ZeroMask;
                  b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                  if (b_5 ==> oldXs != null) {
                    
                    // -- Transfer of acc(List(oldXs), write)
                      arg_2 := oldXs;
                      neededTransfer := FullPerm;
                      initNeededTransfer := Used_5Mask[null, List(arg_2)] + neededTransfer;
                      assert {:msg "  Applying wand might fail. Fraction acc(List(oldXs), write) might be negative. (list_sum.vpr@87.9--88.59) [121223]"}
                        neededTransfer >= 0.000000000;
                      
                      // -- transfer code for top state of stack
                        // accumulate constraints which need to be satisfied for transfer to occur
                        accVar2 := true;
                        // actual code for the transfer from current state on stack
                        if (((b_5 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                          maskTransfer := Ops_3Mask[null, List(arg_2)];
                          if (neededTransfer <= maskTransfer) {
                            takeTransfer := neededTransfer;
                          } else {
                            takeTransfer := maskTransfer;
                          }
                          if (takeTransfer > 0.000000000) {
                            neededTransfer := neededTransfer - takeTransfer;
                            Used_5Mask := Used_5Mask[null, List(arg_2):=Used_5Mask[null, List(arg_2)] + takeTransfer];
                            b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                            TempMask := ZeroMask[null, List(arg_2):=FullPerm];
                            b_13 := b_13 && IdenticalOnKnownLocations(Ops_3Heap, Used_5Heap, TempMask);
                            Ops_3Mask := Ops_3Mask[null, List(arg_2):=Ops_3Mask[null, List(arg_2)] - takeTransfer];
                          }
                        }
                      
                      // -- transfer code for top state of stack
                        // accumulate constraints which need to be satisfied for transfer to occur
                        accVar2 := true;
                        // actual code for the transfer from current state on stack
                        if (((b_5 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                          maskTransfer := Mask[null, List(arg_2)];
                          if (neededTransfer <= maskTransfer) {
                            takeTransfer := neededTransfer;
                          } else {
                            takeTransfer := maskTransfer;
                          }
                          if (takeTransfer > 0.000000000) {
                            neededTransfer := neededTransfer - takeTransfer;
                            Used_5Mask := Used_5Mask[null, List(arg_2):=Used_5Mask[null, List(arg_2)] + takeTransfer];
                            b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                            TempMask := ZeroMask[null, List(arg_2):=FullPerm];
                            b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
                            Mask := Mask[null, List(arg_2):=Mask[null, List(arg_2)] - takeTransfer];
                            havoc newPMask;
                            assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                              { newPMask[o_26, f_29] }
                              Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))][o_26, f_29] || Heap[null, List#sm(oldXs)][o_26, f_29] ==> newPMask[o_26, f_29]
                            );
                            Heap := Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=newPMask];
                          }
                        }
                      assert {:msg "  Applying wand might fail. There might be insufficient permission to access List(oldXs) (list_sum.vpr@87.9--88.59) [121224]"}
                        b_5 && b_13 ==> neededTransfer == 0.000000000 && Used_5Mask[null, List(arg_2)] == initNeededTransfer;
                      
                      // -- Creating state which is the sum of the two previously built up states
                        b_14 := b_5 && b_13;
                        b_14 := b_14 && state(Result_6Heap, Result_6Mask);
                        b_14 := b_14 && sumMask(Result_6Mask, Ops_3Mask, Used_5Mask);
                        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_6Heap, Used_5Mask);
                        b_14 := b_14 && state(Result_6Heap, Result_6Mask);
                      b_5 := b_5 && b_14;
                    b_5 := b_5 && b_13;
                    b_5 := b_5 && Used_5Heap == Ops_3Heap;
                    if (b_5 && b_13) {
                      if (b_5) {
                        
                        // -- Check definedness of sum_rec(oldXs) == oldOld_sum_xs
                          if (*) {
                            // Exhale precondition of function application
                            ExhaleWellDef1Heap := Result_6Heap;
                            ExhaleWellDef1Mask := Result_6Mask;
                            perm := FullPerm;
                            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(oldXs) (list_sum.vpr@87.54--87.68) [121225]"}
                              NoPerm < perm ==> NoPerm < Result_6Mask[null, List(oldXs)];
                            // Finish exhale
                            havoc ExhaleHeap;
                            assume IdenticalOnKnownLocations(Result_6Heap, ExhaleHeap, Result_6Mask);
                            Result_6Heap := ExhaleHeap;
                            // Stop execution
                            assume false;
                          }
                      }
                    }
                    assert {:msg "  Applying wand might fail. Assertion sum_rec(oldXs) == oldOld_sum_xs might not hold. (list_sum.vpr@87.9--88.59) [121226]"}
                      b_5 && b_13 ==> sum_rec(Result_6Heap, oldXs) == oldOld_sum_xs;
                    b_5 := b_5 && b_13;
                    b_5 := b_5 && Used_5Heap == Ops_3Heap;
                  }
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_15 := b_5 && b_13;
                    b_15 := b_15 && state(Result_7Heap, Result_7Mask);
                    b_15 := b_15 && sumMask(Result_7Mask, Ops_3Mask, Used_5Mask);
                    b_15 := (b_15 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_7Heap, Used_5Mask);
                    b_15 := b_15 && state(Result_7Heap, Result_7Mask);
                  b_5 := b_5 && b_15;
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                
                // -- inhale the RHS of the wand
                  perm := FullPerm;
                  b_5 := b_5;
                  Ops_3Mask := Ops_3Mask[null, List(ys):=Ops_3Mask[null, List(ys)] + perm];
                  b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                  b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                  b_5 := b_5 && sum_rec(Ops_3Heap, ys) == sum_rec(oldHeap, ys);
                  b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                Ops_3Heap := ExhaleHeap;
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            }
            // Translating exec of non-ghost operationacc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
            havoc Used_6Heap;
            Used_6Mask := ZeroMask;
            b_16 := b_16 && state(Used_6Heap, Used_6Mask);
            
            // -- Transfer of acc(List(ys), write)
              arg_3 := ys;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_6Mask[null, List(arg_3)] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(List(ys), write) might be negative. (list_sum.vpr@85.5--89.6) [121227]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_5 && b_5) && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_3Mask[null, List(arg_3)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[null, List(arg_3):=Used_6Mask[null, List(arg_3)] + takeTransfer];
                    b_16 := b_16 && state(Used_6Heap, Used_6Mask);
                    TempMask := ZeroMask[null, List(arg_3):=FullPerm];
                    b_16 := b_16 && IdenticalOnKnownLocations(Ops_3Heap, Used_6Heap, TempMask);
                    Ops_3Mask := Ops_3Mask[null, List(arg_3):=Ops_3Mask[null, List(arg_3)] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_5 && b_5) && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[null, List(arg_3)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[null, List(arg_3):=Used_6Mask[null, List(arg_3)] + takeTransfer];
                    b_16 := b_16 && state(Used_6Heap, Used_6Mask);
                    TempMask := ZeroMask[null, List(arg_3):=FullPerm];
                    b_16 := b_16 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
                    Mask := Mask[null, List(arg_3):=Mask[null, List(arg_3)] - takeTransfer];
                    havoc newPMask;
                    assume (forall <A, B> o: Ref, f_85: (Field A B) ::
                      { newPMask[o, f_85] }
                      Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))][o, f_85] || Heap[null, List#sm(ys)][o, f_85] ==> newPMask[o, f_85]
                    );
                    Heap := Heap[null, wand#sm(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List(ys) (list_sum.vpr@85.5--89.6) [121228]"}
                (b_5 && b_5) && b_16 ==> neededTransfer == 0.000000000 && Used_6Mask[null, List(arg_3)] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_17 := b_5 && b_16;
                b_17 := b_17 && state(Result_8Heap, Result_8Mask);
                b_17 := b_17 && sumMask(Result_8Mask, Ops_3Mask, Used_6Mask);
                b_17 := (b_17 && IdenticalOnKnownLocations(Ops_3Heap, Result_8Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_8Heap, Used_6Mask);
                b_17 := b_17 && state(Result_8Heap, Result_8Mask);
              b_5 := b_5 && b_17;
            if ((b_5 && b_5) && b_16) {
              if (b_5) {
                
                // -- Check definedness of sum_rec(ys) == old(sum_rec(ys))
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Result_8Heap;
                    ExhaleWellDef0Mask := Result_8Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@85.21--85.22) [121229]"}
                      NoPerm < perm ==> NoPerm < Result_8Mask[null, List(ys)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Result_8Heap, ExhaleHeap, Result_8Mask);
                    Result_8Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := oldHeap;
                    ExhaleWellDef0Mask := oldMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@85.21--85.22) [121230]"}
                      NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
                    // Finish exhale
                    // Stop execution
                    assume false;
                  }
              }
            }
            assert {:msg "  Packaging wand might fail. Assertion sum_rec(ys) == old(sum_rec(ys)) might not hold. (list_sum.vpr@85.5--89.6) [121231]"}
              (b_5 && b_5) && b_16 ==> sum_rec(Result_8Heap, ys) == sum_rec(oldHeap, ys);
            assume state(Heap, Mask);
            Mask := Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (xs != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant xs != null ==> acc(List(xs), write) might not be preserved. There might be insufficient permission to access List(xs) (list_sum.vpr@63.15--63.43) [121232]"}
              perm <= Mask[null, List(xs)];
          }
          Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
        }
        assert {:msg "  Loop invariant old_sum_xs == (xs == null ? 0 : sum_rec(xs)) might not be preserved. Assertion old_sum_xs == (xs == null ? 0 : sum_rec(xs)) might not hold. (list_sum.vpr@64.15--64.59) [121233]"}
          old_sum_xs == (if xs == null then 0 else sum_rec(Heap, xs));
        assert {:msg "  Loop invariant sum == old(sum_rec(ys)) - old_sum_xs might not be preserved. Assertion sum == old(sum_rec(ys)) - old_sum_xs might not hold. (list_sum.vpr@65.15--65.51) [121234]"}
          sum_1 == sum_rec(oldHeap, ys) - old_sum_xs;
        // permLe
        assert {:msg "  Loop invariant (xs != null ==> acc(List(xs), write) && sum_rec(xs) == old_sum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) might not be preserved. Magic wand instance not found. (list_sum.vpr@66.15--66.22) [121235]"}
          FullPerm <= Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))];
        Mask := Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))] - FullPerm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(xs != null);
      assume state(Heap, Mask);
      if (xs != null) {
        perm := FullPerm;
        Mask := Mask[null, List(xs):=Mask[null, List(xs)] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
      assume old_sum_xs == (if xs == null then 0 else sum_rec(Heap, xs));
      assume state(Heap, Mask);
      assume sum_1 == sum_rec(oldHeap, ys) - old_sum_xs;
      assume state(Heap, Mask);
      Mask := Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply (xs != null ==> acc(List(xs), write) && sum_rec(xs) == old_sum_xs) --*
  //   acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) -- list_sum.vpr@97.3--97.16
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (list_sum.vpr@97.3--97.16) [121236]"}
        FullPerm <= Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))];
      Mask := Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, old_sum_xs, ys, ys, sum_rec(oldHeap, ys))] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      if (xs != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access List(xs) (list_sum.vpr@97.3--97.16) [121238]"}
            perm <= Mask[null, List(xs)];
        }
        Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
        assert {:msg "  Applying wand might fail. Assertion sum_rec(xs) == old_sum_xs might not hold. (list_sum.vpr@97.3--97.16) [121239]"}
          sum_rec(Heap, xs) == old_sum_xs;
      }
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, List(ys):=Mask[null, List(ys)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume sum_rec(Heap, ys) == sum_rec(oldHeap, ys);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of sum_it might not hold. There might be insufficient permission to access List(ys) (list_sum.vpr@31.11--31.24) [121241]"}
        perm <= Mask[null, List(ys)];
    }
    Mask := Mask[null, List(ys):=Mask[null, List(ys)] - perm];
    assert {:msg "  Postcondition of sum_it might not hold. Assertion sum == old(sum_rec(ys)) might not hold. (list_sum.vpr@32.11--32.34) [121242]"}
      sum_1 == sum_rec(oldHeap, ys);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}