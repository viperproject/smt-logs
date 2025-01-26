// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0313b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0313b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_19: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_19] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_19) ==> Heap[o_12, f_19] == ExhaleHeap[o_12, f_19]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19), ExhaleHeap[null, PredicateMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> Heap[null, PredicateMaskField(pm_f_19)] == ExhaleHeap[null, PredicateMaskField(pm_f_19)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, PredicateMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19), ExhaleHeap[null, WandMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> Heap[null, WandMaskField(pm_f_19)] == ExhaleHeap[null, WandMaskField(pm_f_19)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, WandMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_51: (Field A B), v: B ::
  { Heap[o_1, f_51:=v] }
  succHeap(Heap, Heap[o_1, f_51:=v])
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
// - height 1: length
// - height 0: item_at
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
function  wand(arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: bool, arg1_2: Ref, arg2_2: Ref, arg3_2: int, arg4_2: int, arg5_2: Ref, arg6_2: int, arg7_2: Ref, arg8_2: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique value_1: Field NormalField int;
axiom !IsPredicateField(value_1);
axiom !IsWandField(value_1);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length_1(Heap: HeapType, this: Ref): int;
function  length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { length_1(Heap, this) }
  length_1(Heap, this) == length'(Heap, this) && dummyFunction(length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { length'(Heap, this) }
  dummyFunction(length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length_1(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length_1(Heap, this) == (if this == null then 0 else 1 + length'(Heap, Heap[this, next]))
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) ==> length'(Heap, this) == length#frame(Heap[null, List(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || length#trigger(Heap[null, List(this)], this)) ==> length'(Heap, this) >= 0
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(this: Ref) returns (Result: int)
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
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (this == null ? 0 : (unfolding acc(List(this), write) in 1 + length(this.next)))
      if (this == null) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume List#trigger(UnfoldingHeap, List(this));
        assume UnfoldingHeap[null, List(this)] == FrameFragment((if this != null then CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), UnfoldingHeap[null, List(UnfoldingHeap[this, next])])) else EmptyFrame));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (0313b.vpr@13.1--18.2) [76351]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(this)];
        if (this != null) {
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, List(UnfoldingHeap[this, next]):=UnfoldingMask[null, List(UnfoldingHeap[this, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(List(this), UnfoldingHeap[null, List(this)], List(UnfoldingHeap[this, next]), UnfoldingHeap[null, List(UnfoldingHeap[this, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0313b.vpr@13.1--18.2) [76352]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(this.next) (0313b.vpr@17.52--17.69) [76353]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(UnfoldingHeap[this, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, List(UnfoldingHeap[this, next])], UnfoldingHeap[this, next]);
        }
        
        // -- Free assumptions (exp module)
          if (this != null) {
            Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, value_1:=true]];
            Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
              { newPMask[o_5, f_11] }
              Heap[null, List#sm(this)][o_5, f_11] || Heap[null, List#sm(Heap[this, next])][o_5, f_11] ==> newPMask[o_5, f_11]
            );
            Heap := Heap[null, List#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if this == null then 0 else 1 + length_1(Heap, Heap[this, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of length might not hold. Assertion result >= 0 might not hold. (0313b.vpr@15.13--15.24) [76354]"}
      Result >= 0;
}

// ==================================================
// Translation of function item_at
// ==================================================

// Uninterpreted function definitions
function  item_at(Heap: HeapType, this: Ref, count: int): int;
function  item_at'(Heap: HeapType, this: Ref, count: int): int;
axiom (forall Heap: HeapType, this: Ref, count: int ::
  { item_at(Heap, this, count) }
  item_at(Heap, this, count) == item_at'(Heap, this, count) && dummyFunction(item_at#triggerStateless(this, count))
);
axiom (forall Heap: HeapType, this: Ref, count: int ::
  { item_at'(Heap, this, count) }
  dummyFunction(item_at#triggerStateless(this, count))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, count: int ::
  { state(Heap, Mask), item_at(Heap, this, count) } { state(Heap, Mask), item_at#triggerStateless(this, count), List#trigger(Heap, List(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> count < length_1(Heap, this) && count >= 0 ==> item_at(Heap, this, count) == (if count == 0 then Heap[this, value_1] else item_at'(Heap, Heap[this, next], count - 1))
);

// Framing axioms
function  item_at#frame(frame: FrameType, this: Ref, count: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, count: int ::
  { state(Heap, Mask), item_at'(Heap, this, count) } { state(Heap, Mask), item_at#triggerStateless(this, count), List#trigger(Heap, List(this)) }
  state(Heap, Mask) ==> item_at'(Heap, this, count) == item_at#frame(Heap[null, List(this)], this, count)
);

// Trigger function (controlling recursive postconditions)
function  item_at#trigger(frame: FrameType, this: Ref, count: int): bool;

// State-independent trigger function
function  item_at#triggerStateless(this: Ref, count: int): int;

// Check contract well-formedness and postcondition
procedure item_at#definedness(this: Ref, count: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
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
    
    // -- Check definedness of count < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(this) (0313b.vpr@21.36--21.48) [76355]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume count < length_1(Heap, this);
    assume count >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(this), write) in (count == 0 ? this.value : item_at(this.next, count - 1)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(this));
      assume UnfoldingHeap[null, List(this)] == FrameFragment((if this != null then CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), UnfoldingHeap[null, List(UnfoldingHeap[this, next])])) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (0313b.vpr@20.1--24.2) [76356]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(this)];
      if (this != null) {
        perm := FullPerm;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, List(UnfoldingHeap[this, next]):=UnfoldingMask[null, List(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List(this), UnfoldingHeap[null, List(this)], List(UnfoldingHeap[this, next]), UnfoldingHeap[null, List(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (count == 0) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (0313b.vpr@20.1--24.2) [76357]"}
          HasDirectPerm(UnfoldingMask, this, value_1);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0313b.vpr@20.1--24.2) [76358]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function item_at might not hold. There might be insufficient permission to access List(this.next) (0313b.vpr@23.56--23.83) [76359]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(UnfoldingHeap[this, next])];
          assert {:msg "  Precondition of function item_at might not hold. Assertion count - 1 < length(this.next) might not hold. (0313b.vpr@23.56--23.83) [76360]"}
            count - 1 < length_1(UnfoldingHeap, UnfoldingHeap[this, next]);
          assert {:msg "  Precondition of function item_at might not hold. Assertion count - 1 >= 0 might not hold. (0313b.vpr@23.56--23.83) [76361]"}
            count - 1 >= 0;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume item_at#trigger(UnfoldingHeap[null, List(UnfoldingHeap[this, next])], UnfoldingHeap[this, next], count - 1);
        }
      }
      
      // -- Free assumptions (exp module)
        if (this != null) {
          Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, value_1:=true]];
          Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, List#sm(this)][o_6, f_12] || Heap[null, List#sm(Heap[this, next])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, List#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if count == 0 then Heap[this, value_1] else item_at(Heap, Heap[this, next], count - 1));
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
    if (this != null) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, next:=Mask[this, next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(List(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0313b.vpr@9.1--11.2) [76362]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, List(Heap[this, next]):=Mask[null, List(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(list_2: Ref) returns ()
  modifies Heap, Mask;
{
  var new_promise_lblGuard: bool;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Labelnew_promiseHeap: HeapType;
  var Labelnew_promiseMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i_15: int;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    new_promise_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[list_2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, List(list_2):=Mask[null, List(list_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: label new_promise -- 0313b.vpr@29.5--29.22
    new_promise:
    Labelnew_promiseHeap := Heap;
    Labelnew_promiseMask := Mask;
    new_promise_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(List(list), write) &&
  // (length(list) == old[new_promise](length(list)) &&
  // (forall i: Int ::
  //   { item_at(list, i) }
  //   0 <= i && i < length(list) ==> 2 == old[new_promise](item_at(list, i)))) --*
  // true {
  // } -- 0313b.vpr@30.5--40.13
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
        Ops_1Mask := Ops_1Mask[null, List(list_2):=Ops_1Mask[null, List(list_2)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        if (b_1_1) {
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          if (b_1_1) {
            
            // -- Check definedness of length(list) == old[new_promise](length(list))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Ops_1Heap;
                ExhaleWellDef0Mask := Ops_1Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(list) (0313b.vpr@32.13--32.25) [76363]"}
                  NoPerm < perm ==> NoPerm < Ops_1Mask[null, List(list_2)];
                // Finish exhale
                havoc ExhaleHeap;
                b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
                Ops_1Heap := ExhaleHeap;
                // Stop execution
                b_1_1 := false;
              }
              assert {:msg "  Packaging wand might fail. Did not reach labelled state new_promise required to evaluate old[new_promise](length(list)). (0313b.vpr@30.5--40.13) [76364]"}
                new_promise_lblGuard;
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Labelnew_promiseHeap;
                ExhaleWellDef0Mask := Labelnew_promiseMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(list) (0313b.vpr@32.46--32.58) [76365]"}
                  NoPerm < perm ==> NoPerm < Labelnew_promiseMask[null, List(list_2)];
                // Finish exhale
                havoc ExhaleHeap;
                b_1_1 := b_1_1 && IdenticalOnKnownLocations(Labelnew_promiseHeap, ExhaleHeap, Labelnew_promiseMask);
                Labelnew_promiseHeap := ExhaleHeap;
                // Stop execution
                b_1_1 := false;
              }
          }
          b_1_1 := b_1_1 && length_1(Ops_1Heap, list_2) == length_1(Labelnew_promiseHeap, list_2);
        }
        if (b_1_1) {
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          if (b_1_1) {
            
            // -- Check definedness of (forall i: Int :: { item_at(list, i) } 0 <= i && i < length(list) ==> 2 == old[new_promise](item_at(list, i)))
              if (*) {
                if (0 <= i_15) {
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Ops_1Heap;
                    ExhaleWellDef0Mask := Ops_1Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(list) (0313b.vpr@35.32--35.44) [76366]"}
                      NoPerm < perm ==> NoPerm < Ops_1Mask[null, List(list_2)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
                    Ops_1Heap := ExhaleHeap;
                    // Stop execution
                    b_1_1 := false;
                  }
                }
                if (0 <= i_15 && i_15 < length_1(Ops_1Heap, list_2)) {
                  assert {:msg "  Packaging wand might fail. Did not reach labelled state new_promise required to evaluate old[new_promise](item_at(list, i)). (0313b.vpr@30.5--40.13) [76367]"}
                    new_promise_lblGuard;
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Labelnew_promiseHeap;
                    ExhaleWellDef0Mask := Labelnew_promiseMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function item_at might not hold. There might be insufficient permission to access List(list) (0313b.vpr@36.39--36.55) [76368]"}
                      NoPerm < perm ==> NoPerm < Labelnew_promiseMask[null, List(list_2)];
                    assert {:msg "  Precondition of function item_at might not hold. Assertion i < length(list) might not hold. (0313b.vpr@36.39--36.55) [76369]"}
                      i_15 < length_1(Labelnew_promiseHeap, list_2);
                    assert {:msg "  Precondition of function item_at might not hold. Assertion i >= 0 might not hold. (0313b.vpr@36.39--36.55) [76370]"}
                      i_15 >= 0;
                    // Finish exhale
                    havoc ExhaleHeap;
                    b_1_1 := b_1_1 && IdenticalOnKnownLocations(Labelnew_promiseHeap, ExhaleHeap, Labelnew_promiseMask);
                    Labelnew_promiseHeap := ExhaleHeap;
                    // Stop execution
                    b_1_1 := false;
                  }
                }
                b_1_1 := false;
              }
          }
          b_1_1 := b_1_1 && (forall i_3_2: int ::
            { item_at#frame(Ops_1Heap[null, List(list_2)], list_2, i_3_2) }
            0 <= i_3_2 && i_3_2 < length_1(Ops_1Heap, list_2) ==> 2 == item_at(Labelnew_promiseHeap, list_2, i_3_2)
          );
        }
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- 0313b.vpr@30.13--40.13
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    assume state(Heap, Mask);
    Mask := Mask[null, wand(list_2, list_2, length_1(Labelnew_promiseHeap, list_2), 0, list_2, 2, list_2, true):=Mask[null, wand(list_2, list_2, length_1(Labelnew_promiseHeap, list_2), 0, list_2, 2, list_2, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}