// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:17:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/loop_sum_ghostvar_old.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/loop_sum_ghostvar_old-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_19: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_19] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_19], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_20: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_20] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_20) ==> Heap[o_13, f_20] == ExhaleHeap[o_13, f_20]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_21: (Field A B), v: B ::
  { Heap[o_12, f_21:=v] }
  succHeap(Heap, Heap[o_12, f_21:=v])
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

const unique v_35: Field NormalField int;
axiom !IsPredicateField(v_35);
axiom !IsWandField(v_35);
const unique n_85: Field NormalField Ref;
axiom !IsPredicateField(n_85);
axiom !IsWandField(n_85);

// ==================================================
// Translation of function sum_rec
// ==================================================

// Uninterpreted function definitions
function  sum_rec(Heap: HeapType, this: Ref): int;
function  sum_rec'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { sum_rec(Heap, this) }
  sum_rec(Heap, this) == sum_rec'(Heap, this) && dummyFunction(sum_rec#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { sum_rec'(Heap, this) }
  dummyFunction(sum_rec#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), sum_rec(Heap, this) } { state(Heap, Mask), sum_rec#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> sum_rec(Heap, this) == Heap[this, v_35] + (if Heap[this, n_85] == null then 0 else sum_rec'(Heap, Heap[this, n_85]))
);

// Framing axioms
function  sum_rec#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), sum_rec'(Heap, this) } { state(Heap, Mask), sum_rec#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) ==> sum_rec'(Heap, this) == sum_rec#frame(Heap[null, List(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  sum_rec#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  sum_rec#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure sum_rec#definedness(this: Ref) returns (Result: int)
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
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(this), write) in this.v + (this.n == null ? 0 : sum_rec(this.n)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(this));
      assume UnfoldingHeap[null, List(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, v_35]), CombineFrames(FrameFragment(UnfoldingHeap[this, n_85]), FrameFragment((if UnfoldingHeap[this, n_85] != null then UnfoldingHeap[null, List(UnfoldingHeap[this, n_85])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (loop_sum_ghostvar_old.vpr@11.1--13.78) [213894]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, v_35:=UnfoldingMask[this, v_35] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, n_85:=UnfoldingMask[this, n_85] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, n_85] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, List(UnfoldingHeap[this, n_85]):=UnfoldingMask[null, List(UnfoldingHeap[this, n_85])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List(this), UnfoldingHeap[null, List(this)], List(UnfoldingHeap[this, n_85]), UnfoldingHeap[null, List(UnfoldingHeap[this, n_85])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.v (loop_sum_ghostvar_old.vpr@11.1--13.78) [213895]"}
        HasDirectPerm(UnfoldingMask, this, v_35);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.n (loop_sum_ghostvar_old.vpr@11.1--13.78) [213896]"}
        HasDirectPerm(UnfoldingMask, this, n_85);
      if (UnfoldingHeap[this, n_85] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.n (loop_sum_ghostvar_old.vpr@11.1--13.78) [213897]"}
          HasDirectPerm(UnfoldingMask, this, n_85);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(this.n) (loop_sum_ghostvar_old.vpr@13.59--13.74) [213898]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(UnfoldingHeap[this, n_85])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_rec#trigger(UnfoldingHeap[null, List(UnfoldingHeap[this, n_85])], UnfoldingHeap[this, n_85]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, v_35:=true]];
        Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, n_85:=true]];
        if (Heap[this, n_85] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, List#sm(this)][o_5, f_11] || Heap[null, List#sm(Heap[this, n_85])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, List#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, v_35] + (if Heap[this, n_85] == null then 0 else sum_rec(Heap, Heap[this, n_85]));
}

// ==================================================
// Translation of predicate List
// ==================================================

type PredicateType_List;
function  List(this: Ref): Field PredicateType_List FrameType;
function  List#sm(this: Ref): Field PredicateType_List PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(List(this)) }
  PredicateMaskField(List(this)) == List#sm(this)
);
axiom (forall this: Ref ::
  { List(this) }
  IsPredicateField(List(this))
);
axiom (forall this: Ref ::
  { List(this) }
  getPredWandId(List(this)) == 0
);
function  List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { List(this), List(this2) }
  List(this) == List(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { List#sm(this), List#sm(this2) }
  List#sm(this) == List#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { List#trigger(Heap, List(this)) }
  List#everUsed(List(this))
);

procedure List#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, v_35:=Mask[this, v_35] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, n_85:=Mask[this, n_85] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.n != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.n (loop_sum_ghostvar_old.vpr@7.1--9.2) [213899]"}
        HasDirectPerm(Mask, this, n_85);
    if (Heap[this, n_85] != null) {
      
      // -- Check definedness of acc(List(this.n), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.n (loop_sum_ghostvar_old.vpr@7.1--9.2) [213900]"}
          HasDirectPerm(Mask, this, n_85);
      perm := FullPerm;
      Mask := Mask[null, List(Heap[this, n_85]):=Mask[null, List(Heap[this, n_85])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method sum_it
// ==================================================

procedure sum_it(ys: Ref) returns (sum_3: int)
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
  var oldsum_xs: int;
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
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var prev_xs: Ref;
  var newVersion: FrameType;
  var oldoldsum_xs: int;
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
  var arg_1_13: Ref;
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
  var arg_2_13: Ref;
  var b_14: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var b_15: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_16: bool;
  var arg_3_13: Ref;
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
        assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@19.21--19.32) [213901]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume sum_3 == sum_rec(oldHeap, ys);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[xs, $allocated];
  
  // -- Translating statement: xs := ys -- loop_sum_ghostvar_old.vpr@22.3--22.11
    xs := ys;
    assume state(Heap, Mask);
  
  // -- Translating statement: sum := 0 -- loop_sum_ghostvar_old.vpr@23.3--23.11
    sum_3 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: oldsum_xs := sum_rec(xs) -- loop_sum_ghostvar_old.vpr@26.15--26.39
    
    // -- Check definedness of sum_rec(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@26.28--26.39) [213902]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    oldsum_xs := sum_rec(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: package (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --*
  // acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) {
  // } -- loop_sum_ghostvar_old.vpr@28.3--31.55
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
              
              // -- Check definedness of sum_rec(xs) == oldsum_xs
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := Ops_1Heap;
                  ExhaleWellDef0Mask := Ops_1Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@29.41--29.52) [213903]"}
                    NoPerm < perm ==> NoPerm < Ops_1Mask[null, List(xs)];
                  // Finish exhale
                  havoc ExhaleHeap;
                  b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
                  Ops_1Heap := ExhaleHeap;
                  // Stop execution
                  b_1_1 := false;
                }
            }
            b_1_1 := b_1_1 && sum_rec(Ops_1Heap, xs) == oldsum_xs;
          }
        }
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- loop_sum_ghostvar_old.vpr@29.5--31.55
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
      arg := ys;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[null, List(arg)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(List(ys), write) might be negative. (loop_sum_ghostvar_old.vpr@28.3--31.55) [213904]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, List(arg)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[null, List(arg):=Used_1Mask[null, List(arg)] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            TempMask := ZeroMask[null, List(arg):=FullPerm];
            b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, List(arg):=Ops_1Mask[null, List(arg)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, List(arg)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[null, List(arg):=Used_1Mask[null, List(arg)] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            TempMask := ZeroMask[null, List(arg):=FullPerm];
            b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
            Mask := Mask[null, List(arg):=Mask[null, List(arg)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
              { newPMask[o_6, f_12] }
              Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))][o_6, f_12] || Heap[null, List#sm(ys)][o_6, f_12] ==> newPMask[o_6, f_12]
            );
            Heap := Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@28.3--31.55) [213905]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, List(arg)] == initNeededTransfer;
      
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
            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@31.23--31.34) [213906]"}
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
            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@31.42--31.53) [213907]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
            // Finish exhale
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion sum_rec(ys) == old(sum_rec(ys)) might not hold. (loop_sum_ghostvar_old.vpr@28.3--31.55) [213908]"}
      (b_1_1 && b_1_1) && b_2_1 ==> sum_rec(ResultHeap, ys) == sum_rec(oldHeap, ys);
    assume state(Heap, Mask);
    Mask := Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (xs != null) -- loop_sum_ghostvar_old.vpr@33.3--69.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (xs != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant xs != null ==> acc(List(xs), write) might not hold on entry. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@34.16--34.46) [213909]"}
              perm <= Mask[null, List(xs)];
          }
          Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
        }
        assert {:msg "  Loop invariant sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs)) might not hold on entry. Assertion sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs)) might not hold. (loop_sum_ghostvar_old.vpr@35.15--35.73) [213910]"}
          sum_3 == sum_rec(oldHeap, ys) - (if xs == null then 0 else sum_rec(Heap, xs));
        // permLe
        assert {:msg "  Loop invariant (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) might not hold on entry. Magic wand instance not found. (loop_sum_ghostvar_old.vpr@37.7--39.57) [213911]"}
          FullPerm <= Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))];
        Mask := Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))] - FullPerm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc oldsum_xs, xs, sum_3;
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
        
        // -- Check definedness of sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@35.27--35.38) [213912]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (xs == null) {
          } else {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@35.60--35.71) [213913]"}
                NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        assume sum_3 == sum_rec(oldHeap, ys) - (if xs == null then 0 else sum_rec(Heap, xs));
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            if (xs != null) {
              perm := FullPerm;
              WandDefLHSMask := WandDefLHSMask[null, List(xs):=WandDefLHSMask[null, List(xs)] + perm];
              assume state(WandDefLHSHeap, WandDefLHSMask);
              assume state(WandDefLHSHeap, WandDefLHSMask);
              
              // -- Check definedness of sum_rec(xs) == oldsum_xs
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := WandDefLHSHeap;
                  ExhaleWellDef0Mask := WandDefLHSMask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@37.43--37.54) [213914]"}
                    NoPerm < perm ==> NoPerm < WandDefLHSMask[null, List(xs)];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                  WandDefLHSHeap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
              assume sum_rec(WandDefLHSHeap, xs) == oldsum_xs;
            }
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs3 -- loop_sum_ghostvar_old.vpr@37.7--39.57
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
                assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@39.25--39.36) [213915]"}
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
                assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@39.44--39.55) [213916]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assume sum_rec(WandDefRHSHeap, ys) == sum_rec(oldHeap, ys);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        Mask := Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
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
        assume sum_3 == sum_rec(oldHeap, ys) - (if xs == null then 0 else sum_rec(Heap, xs));
        assume state(Heap, Mask);
        Mask := Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume xs != null;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Assumptions about local variables
            assume Heap[prev_xs, $allocated];
          
          // -- Translating statement: inhale oldsum_xs == sum_rec(xs) -- loop_sum_ghostvar_old.vpr@41.12--41.36
            assume state(Heap, Mask);
            
            // -- Check definedness of oldsum_xs == sum_rec(xs)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@41.25--41.36) [213917]"}
                  NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume oldsum_xs == sum_rec(Heap, xs);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: prev_xs := xs -- loop_sum_ghostvar_old.vpr@50.17--50.30
            prev_xs := xs;
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(List(xs), write) -- loop_sum_ghostvar_old.vpr@52.5--52.20
            assume List#trigger(Heap, List(xs));
            assume Heap[null, List(xs)] == CombineFrames(FrameFragment(Heap[xs, v_35]), CombineFrames(FrameFragment(Heap[xs, n_85]), FrameFragment((if Heap[xs, n_85] != null then Heap[null, List(Heap[xs, n_85])] else EmptyFrame))));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding List(xs) might fail. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@52.5--52.20) [213918]"}
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
            Mask := Mask[xs, v_35:=Mask[xs, v_35] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume xs != null;
            Mask := Mask[xs, n_85:=Mask[xs, n_85] + perm];
            assume state(Heap, Mask);
            if (Heap[xs, n_85] != null) {
              perm := FullPerm;
              Mask := Mask[null, List(Heap[xs, n_85]):=Mask[null, List(Heap[xs, n_85])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(List(xs), Heap[null, List(xs)], List(Heap[xs, n_85]), Heap[null, List(Heap[xs, n_85])]);
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: sum := sum + xs.v -- loop_sum_ghostvar_old.vpr@53.5--53.24
            
            // -- Check definedness of sum + xs.v
              assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.v (loop_sum_ghostvar_old.vpr@53.5--53.24) [213919]"}
                HasDirectPerm(Mask, xs, v_35);
            sum_3 := sum_3 + Heap[xs, v_35];
            assume state(Heap, Mask);
          
          // -- Translating statement: xs := xs.n -- loop_sum_ghostvar_old.vpr@54.5--54.15
            
            // -- Check definedness of xs.n
              assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.n (loop_sum_ghostvar_old.vpr@54.5--54.15) [213920]"}
                HasDirectPerm(Mask, xs, n_85);
            xs := Heap[xs, n_85];
            assume state(Heap, Mask);
          
          // -- Translating statement: oldoldsum_xs := oldsum_xs -- loop_sum_ghostvar_old.vpr@57.15--57.40
            oldoldsum_xs := oldsum_xs;
            assume state(Heap, Mask);
          
          // -- Translating statement: if (xs != null) -- loop_sum_ghostvar_old.vpr@59.5--61.6
            if (xs != null) {
              
              // -- Translating statement: oldsum_xs := sum_rec(xs) -- loop_sum_ghostvar_old.vpr@60.7--60.31
                
                // -- Check definedness of sum_rec(xs)
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@60.20--60.31) [213921]"}
                      NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                oldsum_xs := sum_rec(Heap, xs);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: package (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --*
  // acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) {
  //   fold acc(List(prev_xs), write)
  //   apply (prev_xs != null ==>
  //     acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --*
  //     acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
  // } -- loop_sum_ghostvar_old.vpr@63.5--68.12
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
                      
                      // -- Check definedness of sum_rec(xs) == oldsum_xs
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef0Heap := Ops_3Heap;
                          ExhaleWellDef0Mask := Ops_3Mask;
                          perm := FullPerm;
                          assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@64.43--64.54) [213922]"}
                            NoPerm < perm ==> NoPerm < Ops_3Mask[null, List(xs)];
                          // Finish exhale
                          havoc ExhaleHeap;
                          b_5 := b_5 && IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                          Ops_3Heap := ExhaleHeap;
                          // Stop execution
                          b_5 := false;
                        }
                    }
                    b_5 := b_5 && sum_rec(Ops_3Heap, xs) == oldsum_xs;
                  }
                }
              }
            }
            b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            
            // -- Translating statement: label lhs4 -- loop_sum_ghostvar_old.vpr@64.7--65.63
              lhs4:
              Labellhs4Heap := Ops_3Heap;
              Labellhs4Mask := Ops_3Mask;
              b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            boolCur_1 := true;
            if (b_5) {
              
              // -- Translating statement: fold acc(List(prev_xs), write) -- loop_sum_ghostvar_old.vpr@66.13--66.31
                ExhaleWellDef0Heap := Ops_3Heap;
                ExhaleWellDef0Mask := Ops_3Mask;
                havoc Used_3Heap;
                Used_3Mask := ZeroMask;
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                
                // -- Transfer of acc(prev_xs.v, write)
                  rcvLocal := prev_xs;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_3Mask[rcvLocal, v_35] + neededTransfer;
                  assert {:msg "  Folding List(prev_xs) might fail. Fraction acc(prev_xs.v, write) might be negative. (loop_sum_ghostvar_old.vpr@66.13--66.31) [213923]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[rcvLocal, v_35];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, v_35:=Used_3Mask[rcvLocal, v_35] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Ops_3Heap[rcvLocal, v_35] == Used_3Heap[rcvLocal, v_35];
                        Ops_3Mask := Ops_3Mask[rcvLocal, v_35:=Ops_3Mask[rcvLocal, v_35] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, v_35];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, v_35:=Used_3Mask[rcvLocal, v_35] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Heap[rcvLocal, v_35] == Used_3Heap[rcvLocal, v_35];
                        Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
                        Heap := Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))][prev_xs, v_35:=true]];
                      }
                    }
                  assert {:msg "  Folding List(prev_xs) might fail. There might be insufficient permission to access prev_xs.v (loop_sum_ghostvar_old.vpr@66.13--66.31) [213924]"}
                    b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, v_35] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_7 := b_5 && b_6;
                    b_7 := b_7 && state(Result_1Heap, Result_1Mask);
                    b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
                    b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
                    b_7 := b_7 && state(Result_1Heap, Result_1Mask);
                  b_5 := b_5 && b_7;
                b_5 := b_5 && b_6;
                b_5 := b_5 && Used_3Heap == Ops_3Heap;
                
                // -- Transfer of acc(prev_xs.n, write)
                  rcvLocal := prev_xs;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_3Mask[rcvLocal, n_85] + neededTransfer;
                  assert {:msg "  Folding List(prev_xs) might fail. Fraction acc(prev_xs.n, write) might be negative. (loop_sum_ghostvar_old.vpr@66.13--66.31) [213925]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[rcvLocal, n_85];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, n_85:=Used_3Mask[rcvLocal, n_85] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Ops_3Heap[rcvLocal, n_85] == Used_3Heap[rcvLocal, n_85];
                        Ops_3Mask := Ops_3Mask[rcvLocal, n_85:=Ops_3Mask[rcvLocal, n_85] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, n_85];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, n_85:=Used_3Mask[rcvLocal, n_85] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Heap[rcvLocal, n_85] == Used_3Heap[rcvLocal, n_85];
                        Mask := Mask[rcvLocal, n_85:=Mask[rcvLocal, n_85] - takeTransfer];
                        Heap := Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))][prev_xs, n_85:=true]];
                      }
                    }
                  assert {:msg "  Folding List(prev_xs) might fail. There might be insufficient permission to access prev_xs.n (loop_sum_ghostvar_old.vpr@66.13--66.31) [213926]"}
                    b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, n_85] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_8 := b_5 && b_6;
                    b_8 := b_8 && state(Result_2Heap, Result_2Mask);
                    b_8 := b_8 && sumMask(Result_2Mask, Ops_3Mask, Used_3Mask);
                    b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
                    b_8 := b_8 && state(Result_2Heap, Result_2Mask);
                  b_5 := b_5 && b_8;
                b_5 := b_5 && b_6;
                b_5 := b_5 && Used_3Heap == Ops_3Heap;
                if (b_5 ==> Result_2Heap[prev_xs, n_85] != null) {
                  
                  // -- Transfer of acc(List(prev_xs.n), write)
                    
                    // -- checking if access predicate defined in used state
                      if (b_5 && b_6) {
                        if (b_5) {
                          
                          // -- Check definedness of acc(List(prev_xs.n), write)
                            assert {:msg "  Folding List(prev_xs) might fail. There might be insufficient permission to access prev_xs.n (loop_sum_ghostvar_old.vpr@66.13--66.31) [213927]"}
                              HasDirectPerm(Result_2Mask, prev_xs, n_85);
                        }
                      }
                    arg_1_13 := Result_2Heap[prev_xs, n_85];
                    neededTransfer := FullPerm;
                    initNeededTransfer := Used_3Mask[null, List(arg_1_13)] + neededTransfer;
                    assert {:msg "  Folding List(prev_xs) might fail. Fraction acc(List(prev_xs.n), write) might be negative. (loop_sum_ghostvar_old.vpr@66.13--66.31) [213928]"}
                      neededTransfer >= 0.000000000;
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Ops_3Mask[null, List(arg_1_13)];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_3Mask := Used_3Mask[null, List(arg_1_13):=Used_3Mask[null, List(arg_1_13)] + takeTransfer];
                          b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                          TempMask := ZeroMask[null, List(arg_1_13):=FullPerm];
                          b_6 := b_6 && IdenticalOnKnownLocations(Ops_3Heap, Used_3Heap, TempMask);
                          Ops_3Mask := Ops_3Mask[null, List(arg_1_13):=Ops_3Mask[null, List(arg_1_13)] - takeTransfer];
                        }
                      }
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Mask[null, List(arg_1_13)];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_3Mask := Used_3Mask[null, List(arg_1_13):=Used_3Mask[null, List(arg_1_13)] + takeTransfer];
                          b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                          TempMask := ZeroMask[null, List(arg_1_13):=FullPerm];
                          b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                          Mask := Mask[null, List(arg_1_13):=Mask[null, List(arg_1_13)] - takeTransfer];
                          havoc newPMask;
                          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
                            { newPMask[o_40, f_52] }
                            Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))][o_40, f_52] || Heap[null, List#sm(Heap[prev_xs, n_85])][o_40, f_52] ==> newPMask[o_40, f_52]
                          );
                          Heap := Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=newPMask];
                        }
                      }
                    assert {:msg "  Folding List(prev_xs) might fail. There might be insufficient permission to access List(prev_xs.n) (loop_sum_ghostvar_old.vpr@66.13--66.31) [213929]"}
                      b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, List(arg_1_13)] == initNeededTransfer;
                    
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
                Ops_3Mask := Ops_3Mask[null, List(prev_xs):=Ops_3Mask[null, List(prev_xs)] + perm];
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                assume List#trigger(Ops_3Heap, List(prev_xs));
                assume Ops_3Heap[null, List(prev_xs)] == CombineFrames(FrameFragment(Ops_3Heap[prev_xs, v_35]), CombineFrames(FrameFragment(Ops_3Heap[prev_xs, n_85]), FrameFragment((if Ops_3Heap[prev_xs, n_85] != null then Ops_3Heap[null, List(Ops_3Heap[prev_xs, n_85])] else EmptyFrame))));
                if (!HasDirectPerm(Ops_3Mask, null, List(prev_xs))) {
                  Ops_3Heap := Ops_3Heap[null, List#sm(prev_xs):=ZeroPMask];
                  havoc freshVersion;
                  Ops_3Heap := Ops_3Heap[null, List(prev_xs):=freshVersion];
                }
                Ops_3Heap := Ops_3Heap[null, List#sm(prev_xs):=Ops_3Heap[null, List#sm(prev_xs)][prev_xs, v_35:=true]];
                Ops_3Heap := Ops_3Heap[null, List#sm(prev_xs):=Ops_3Heap[null, List#sm(prev_xs)][prev_xs, n_85:=true]];
                if (Ops_3Heap[prev_xs, n_85] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
                    { newPMask[o_42, f_55] }
                    Ops_3Heap[null, List#sm(prev_xs)][o_42, f_55] || Ops_3Heap[null, List#sm(Ops_3Heap[prev_xs, n_85])][o_42, f_55] ==> newPMask[o_42, f_55]
                  );
                  Ops_3Heap := Ops_3Heap[null, List#sm(prev_xs):=newPMask];
                }
                assume state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            }
            if (b_5) {
              
              // -- Translating statement: apply (prev_xs != null ==>
  //   acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --*
  //   acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) -- loop_sum_ghostvar_old.vpr@67.13--67.154
                
                // -- check if wand is held and remove an instance
                  ExhaleWellDef0Heap := Ops_3Heap;
                  ExhaleWellDef0Mask := Ops_3Mask;
                  havoc Used_4Heap;
                  Used_4Mask := ZeroMask;
                  b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                  
                  // -- Transfer of (prev_xs != null ==> acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
                    
                    // -- checking if access predicate defined in used state
                      if (b_5 && b_11) {
                        if (b_5) {
                          
                          // -- Check definedness of (prev_xs != null ==> acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
                            if (*) {
                              havoc WandDefLHSHeap;
                              WandDefLHSMask := ZeroMask;
                              if (prev_xs != null) {
                                perm := FullPerm;
                                WandDefLHSMask := WandDefLHSMask[null, List(prev_xs):=WandDefLHSMask[null, List(prev_xs)] + perm];
                                assume state(WandDefLHSHeap, WandDefLHSMask);
                                assume state(WandDefLHSHeap, WandDefLHSMask);
                                
                                // -- Check definedness of sum_rec(prev_xs) == oldoldsum_xs
                                  if (*) {
                                    // Exhale precondition of function application
                                    ExhaleWellDef1Heap := WandDefLHSHeap;
                                    ExhaleWellDef1Mask := WandDefLHSMask;
                                    perm := FullPerm;
                                    assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(prev_xs) (loop_sum_ghostvar_old.vpr@67.65--67.81) [213930]"}
                                      NoPerm < perm ==> NoPerm < WandDefLHSMask[null, List(prev_xs)];
                                    // Finish exhale
                                    havoc ExhaleHeap;
                                    assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                                    WandDefLHSHeap := ExhaleHeap;
                                    // Stop execution
                                    assume false;
                                  }
                                assume sum_rec(WandDefLHSHeap, prev_xs) == oldoldsum_xs;
                              }
                              assume state(WandDefLHSHeap, WandDefLHSMask);
                              
                              // -- Translating statement: label lhs7 -- loop_sum_ghostvar_old.vpr@67.19--67.154
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
                                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@67.122--67.133) [213931]"}
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
                                  assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@67.141--67.152) [213932]"}
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
                    initNeededTransfer := Used_4Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys))] + neededTransfer;
                    assert {:msg "  Applying wand might fail. Fraction (prev_xs != null ==> acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) might be negative. (loop_sum_ghostvar_old.vpr@67.13--67.154) [213933]"}
                      neededTransfer >= 0.000000000;
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Ops_3Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys))];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_4Mask := Used_4Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Used_4Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys))] + takeTransfer];
                          b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                          Ops_3Mask := Ops_3Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Ops_3Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys))] - takeTransfer];
                        }
                      }
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys))];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_4Mask := Used_4Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Used_4Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys))] + takeTransfer];
                          b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                          Mask := Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys))] - takeTransfer];
                        }
                      }
                    assert {:msg "  Applying wand might fail. Magic wand instance not found. (loop_sum_ghostvar_old.vpr@67.13--67.154) [213934]"}
                      b_5 && b_11 ==> neededTransfer == 0.000000000 && Used_4Mask[null, wand(prev_xs != null, prev_xs, prev_xs, oldoldsum_xs, ys, ys, sum_rec(oldHeap, ys))] == initNeededTransfer;
                    
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
                  if (b_5 ==> prev_xs != null) {
                    
                    // -- Transfer of acc(List(prev_xs), write)
                      arg_2_13 := prev_xs;
                      neededTransfer := FullPerm;
                      initNeededTransfer := Used_5Mask[null, List(arg_2_13)] + neededTransfer;
                      assert {:msg "  Applying wand might fail. Fraction acc(List(prev_xs), write) might be negative. (loop_sum_ghostvar_old.vpr@67.13--67.154) [213935]"}
                        neededTransfer >= 0.000000000;
                      
                      // -- transfer code for top state of stack
                        // accumulate constraints which need to be satisfied for transfer to occur
                        accVar2 := true;
                        // actual code for the transfer from current state on stack
                        if (((b_5 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                          maskTransfer := Ops_3Mask[null, List(arg_2_13)];
                          if (neededTransfer <= maskTransfer) {
                            takeTransfer := neededTransfer;
                          } else {
                            takeTransfer := maskTransfer;
                          }
                          if (takeTransfer > 0.000000000) {
                            neededTransfer := neededTransfer - takeTransfer;
                            Used_5Mask := Used_5Mask[null, List(arg_2_13):=Used_5Mask[null, List(arg_2_13)] + takeTransfer];
                            b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                            TempMask := ZeroMask[null, List(arg_2_13):=FullPerm];
                            b_13 := b_13 && IdenticalOnKnownLocations(Ops_3Heap, Used_5Heap, TempMask);
                            Ops_3Mask := Ops_3Mask[null, List(arg_2_13):=Ops_3Mask[null, List(arg_2_13)] - takeTransfer];
                          }
                        }
                      
                      // -- transfer code for top state of stack
                        // accumulate constraints which need to be satisfied for transfer to occur
                        accVar2 := true;
                        // actual code for the transfer from current state on stack
                        if (((b_5 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                          maskTransfer := Mask[null, List(arg_2_13)];
                          if (neededTransfer <= maskTransfer) {
                            takeTransfer := neededTransfer;
                          } else {
                            takeTransfer := maskTransfer;
                          }
                          if (takeTransfer > 0.000000000) {
                            neededTransfer := neededTransfer - takeTransfer;
                            Used_5Mask := Used_5Mask[null, List(arg_2_13):=Used_5Mask[null, List(arg_2_13)] + takeTransfer];
                            b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                            TempMask := ZeroMask[null, List(arg_2_13):=FullPerm];
                            b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
                            Mask := Mask[null, List(arg_2_13):=Mask[null, List(arg_2_13)] - takeTransfer];
                            havoc newPMask;
                            assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
                              { newPMask[o_46, f_60] }
                              Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))][o_46, f_60] || Heap[null, List#sm(prev_xs)][o_46, f_60] ==> newPMask[o_46, f_60]
                            );
                            Heap := Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=newPMask];
                          }
                        }
                      assert {:msg "  Applying wand might fail. There might be insufficient permission to access List(prev_xs) (loop_sum_ghostvar_old.vpr@67.13--67.154) [213936]"}
                        b_5 && b_13 ==> neededTransfer == 0.000000000 && Used_5Mask[null, List(arg_2_13)] == initNeededTransfer;
                      
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
                        
                        // -- Check definedness of sum_rec(prev_xs) == oldoldsum_xs
                          if (*) {
                            // Exhale precondition of function application
                            ExhaleWellDef1Heap := Result_6Heap;
                            ExhaleWellDef1Mask := Result_6Mask;
                            perm := FullPerm;
                            assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(prev_xs) (loop_sum_ghostvar_old.vpr@67.65--67.81) [213937]"}
                              NoPerm < perm ==> NoPerm < Result_6Mask[null, List(prev_xs)];
                            // Finish exhale
                            havoc ExhaleHeap;
                            assume IdenticalOnKnownLocations(Result_6Heap, ExhaleHeap, Result_6Mask);
                            Result_6Heap := ExhaleHeap;
                            // Stop execution
                            assume false;
                          }
                      }
                    }
                    assert {:msg "  Applying wand might fail. Assertion sum_rec(prev_xs) == oldoldsum_xs might not hold. (loop_sum_ghostvar_old.vpr@67.13--67.154) [213938]"}
                      b_5 && b_13 ==> sum_rec(Result_6Heap, prev_xs) == oldoldsum_xs;
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
              arg_3_13 := ys;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_6Mask[null, List(arg_3_13)] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(List(ys), write) might be negative. (loop_sum_ghostvar_old.vpr@63.5--68.12) [213939]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_5 && b_5) && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_3Mask[null, List(arg_3_13)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[null, List(arg_3_13):=Used_6Mask[null, List(arg_3_13)] + takeTransfer];
                    b_16 := b_16 && state(Used_6Heap, Used_6Mask);
                    TempMask := ZeroMask[null, List(arg_3_13):=FullPerm];
                    b_16 := b_16 && IdenticalOnKnownLocations(Ops_3Heap, Used_6Heap, TempMask);
                    Ops_3Mask := Ops_3Mask[null, List(arg_3_13):=Ops_3Mask[null, List(arg_3_13)] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_5 && b_5) && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[null, List(arg_3_13)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[null, List(arg_3_13):=Used_6Mask[null, List(arg_3_13)] + takeTransfer];
                    b_16 := b_16 && state(Used_6Heap, Used_6Mask);
                    TempMask := ZeroMask[null, List(arg_3_13):=FullPerm];
                    b_16 := b_16 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
                    Mask := Mask[null, List(arg_3_13):=Mask[null, List(arg_3_13)] - takeTransfer];
                    havoc newPMask;
                    assume (forall <A, B> o: Ref, f_61: (Field A B) ::
                      { newPMask[o, f_61] }
                      Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))][o, f_61] || Heap[null, List#sm(ys)][o, f_61] ==> newPMask[o, f_61]
                    );
                    Heap := Heap[null, wand#sm(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@63.5--68.12) [213940]"}
                (b_5 && b_5) && b_16 ==> neededTransfer == 0.000000000 && Used_6Mask[null, List(arg_3_13)] == initNeededTransfer;
              
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
                    assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@65.31--65.42) [213941]"}
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
                    assert {:msg "  Precondition of function sum_rec might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@65.50--65.61) [213942]"}
                      NoPerm < perm ==> NoPerm < oldMask[null, List(ys)];
                    // Finish exhale
                    // Stop execution
                    assume false;
                  }
              }
            }
            assert {:msg "  Packaging wand might fail. Assertion sum_rec(ys) == old(sum_rec(ys)) might not hold. (loop_sum_ghostvar_old.vpr@63.5--68.12) [213943]"}
              (b_5 && b_5) && b_16 ==> sum_rec(Result_8Heap, ys) == sum_rec(oldHeap, ys);
            assume state(Heap, Mask);
            Mask := Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (xs != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant xs != null ==> acc(List(xs), write) might not be preserved. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@34.16--34.46) [213944]"}
              perm <= Mask[null, List(xs)];
          }
          Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
        }
        assert {:msg "  Loop invariant sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs)) might not be preserved. Assertion sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs)) might not hold. (loop_sum_ghostvar_old.vpr@35.15--35.73) [213945]"}
          sum_3 == sum_rec(oldHeap, ys) - (if xs == null then 0 else sum_rec(Heap, xs));
        // permLe
        assert {:msg "  Loop invariant (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) might not be preserved. Magic wand instance not found. (loop_sum_ghostvar_old.vpr@37.7--39.57) [213946]"}
          FullPerm <= Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))];
        Mask := Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))] - FullPerm];
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
      assume sum_3 == sum_rec(oldHeap, ys) - (if xs == null then 0 else sum_rec(Heap, xs));
      assume state(Heap, Mask);
      Mask := Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --*
  //   acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) -- loop_sum_ghostvar_old.vpr@71.3--74.55
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (loop_sum_ghostvar_old.vpr@71.3--74.55) [213947]"}
        FullPerm <= Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))];
      Mask := Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys)):=Mask[null, wand(xs != null, xs, xs, oldsum_xs, ys, ys, sum_rec(oldHeap, ys))] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      if (xs != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access List(xs) (loop_sum_ghostvar_old.vpr@71.3--74.55) [213949]"}
            perm <= Mask[null, List(xs)];
        }
        Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
        assert {:msg "  Applying wand might fail. Assertion sum_rec(xs) == oldsum_xs might not hold. (loop_sum_ghostvar_old.vpr@71.3--74.55) [213950]"}
          sum_rec(Heap, xs) == oldsum_xs;
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
      assert {:msg "  Postcondition of sum_it might not hold. There might be insufficient permission to access List(ys) (loop_sum_ghostvar_old.vpr@18.10--18.23) [213952]"}
        perm <= Mask[null, List(ys)];
    }
    Mask := Mask[null, List(ys):=Mask[null, List(ys)] - perm];
    assert {:msg "  Postcondition of sum_it might not hold. Assertion sum == old(sum_rec(ys)) might not hold. (loop_sum_ghostvar_old.vpr@19.10--19.33) [213953]"}
      sum_3 == sum_rec(oldHeap, ys);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}