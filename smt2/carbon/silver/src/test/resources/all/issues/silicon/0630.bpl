// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:16:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0630.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0630-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of all fields
// ==================================================

const unique discriminant: Field NormalField int;
axiom !IsPredicateField(discriminant);
axiom !IsWandField(discriminant);
const unique field1: Field NormalField Ref;
axiom !IsPredicateField(field1);
axiom !IsWandField(field1);

// ==================================================
// Translation of predicate pred
// ==================================================

type PredicateType_pred;
function  pred_3(self: Ref): Field PredicateType_pred FrameType;
function  pred#sm(self: Ref): Field PredicateType_pred PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(pred_3(self)) }
  PredicateMaskField(pred_3(self)) == pred#sm(self)
);
axiom (forall self: Ref ::
  { pred_3(self) }
  IsPredicateField(pred_3(self))
);
axiom (forall self: Ref ::
  { pred_3(self) }
  getPredWandId(pred_3(self)) == 0
);
function  pred#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { pred_3(self), pred_3(self2) }
  pred_3(self) == pred_3(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { pred#sm(self), pred#sm(self2) }
  pred#sm(self) == pred#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { pred#trigger(Heap, pred_3(self)) }
  pred#everUsed(pred_3(self))
);

procedure pred#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, discriminant:=Mask[self, discriminant] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, field1:=Mask[self, field1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of self.discriminant == 4
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.discriminant (0630.vpr@8.1--14.2) [206774]"}
        HasDirectPerm(Mask, self, discriminant);
    if (Heap[self, discriminant] == 4) {
      
      // -- Check definedness of acc(predFive(self.field1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.field1 (0630.vpr@8.1--14.2) [206775]"}
          HasDirectPerm(Mask, self, field1);
      perm := FullPerm;
      Mask := Mask[null, predFive(Heap[self, field1]):=Mask[null, predFive(Heap[self, field1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate predFive
// ==================================================

type PredicateType_predFive;
function  predFive(self: Ref): Field PredicateType_predFive FrameType;
function  predFive#sm(self: Ref): Field PredicateType_predFive PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(predFive(self)) }
  PredicateMaskField(predFive(self)) == predFive#sm(self)
);
axiom (forall self: Ref ::
  { predFive(self) }
  IsPredicateField(predFive(self))
);
axiom (forall self: Ref ::
  { predFive(self) }
  getPredWandId(predFive(self)) == 1
);
function  predFive#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  predFive#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { predFive(self), predFive(self2) }
  predFive(self) == predFive(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { predFive#sm(self), predFive#sm(self2) }
  predFive#sm(self) == predFive#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { predFive#trigger(Heap, predFive(self)) }
  predFive#everUsed(predFive(self))
);

procedure predFive#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of predFive
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate tt
// ==================================================

type PredicateType_tt;
function  tt(self: Ref): Field PredicateType_tt FrameType;
function  tt#sm(self: Ref): Field PredicateType_tt PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(tt(self)) }
  PredicateMaskField(tt(self)) == tt#sm(self)
);
axiom (forall self: Ref ::
  { tt(self) }
  IsPredicateField(tt(self))
);
axiom (forall self: Ref ::
  { tt(self) }
  getPredWandId(tt(self)) == 2
);
function  tt#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  tt#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { tt(self), tt(self2) }
  tt(self) == tt(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { tt#sm(self), tt#sm(self2) }
  tt#sm(self) == tt#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { tt#trigger(Heap, tt(self)) }
  tt#everUsed(tt(self))
);

procedure tt#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of tt
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m_test1
// ==================================================

procedure m_test1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var _1: Ref;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[_1, $allocated];
  
  // -- Translating statement: inhale acc(pred(_1), write) -- 0630.vpr@27.3--27.30
    perm := FullPerm;
    Mask := Mask[null, pred_3(_1):=Mask[null, pred_3(_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (unfolding acc(pred(_1), write) in
  //     _1.discriminant == 4 &&
  //     (unfolding acc(predFive(_1.field1), write) in true)) -- 0630.vpr@28.3--29.45
    
    // -- Check definedness of (unfolding acc(pred(_1), write) in _1.discriminant == 4 && (unfolding acc(predFive(_1.field1), write) in true))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pred#trigger(UnfoldingHeap, pred_3(_1));
      assume UnfoldingHeap[null, pred_3(_1)] == CombineFrames(FrameFragment(UnfoldingHeap[_1, discriminant]), CombineFrames(FrameFragment(UnfoldingHeap[_1, field1]), FrameFragment((if UnfoldingHeap[_1, discriminant] == 4 then UnfoldingHeap[null, predFive(UnfoldingHeap[_1, field1])] else FrameFragment(EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access pred(_1) (0630.vpr@28.11--29.44) [206777]"}
          perm <= UnfoldingMask[null, pred_3(_1)];
      }
      UnfoldingMask := UnfoldingMask[null, pred_3(_1):=UnfoldingMask[null, pred_3(_1)] - perm];
      perm := FullPerm;
      assume _1 != null;
      UnfoldingMask := UnfoldingMask[_1, discriminant:=UnfoldingMask[_1, discriminant] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume _1 != null;
      UnfoldingMask := UnfoldingMask[_1, field1:=UnfoldingMask[_1, field1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[_1, discriminant] == 4) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, predFive(UnfoldingHeap[_1, field1]):=UnfoldingMask[null, predFive(UnfoldingHeap[_1, field1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(pred_3(_1), UnfoldingHeap[null, pred_3(_1)], predFive(UnfoldingHeap[_1, field1]), UnfoldingHeap[null, predFive(UnfoldingHeap[_1, field1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access _1.discriminant (0630.vpr@28.11--29.44) [206778]"}
        HasDirectPerm(UnfoldingMask, _1, discriminant);
      if (UnfoldingHeap[_1, discriminant] == 4) {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume predFive#trigger(Unfolding1Heap, predFive(Unfolding1Heap[_1, field1]));
        assume Unfolding1Heap[null, predFive(Unfolding1Heap[_1, field1])] == EmptyFrame;
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access predFive(_1.field1) (0630.vpr@28.11--29.44) [206779]"}
            perm <= Unfolding1Mask[null, predFive(Unfolding1Heap[_1, field1])];
        }
        Unfolding1Mask := Unfolding1Mask[null, predFive(Unfolding1Heap[_1, field1]):=Unfolding1Mask[null, predFive(Unfolding1Heap[_1, field1])] - perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access _1.field1 (0630.vpr@28.11--29.44) [206780]"}
          HasDirectPerm(Unfolding1Mask, _1, field1);
        
        // -- Free assumptions (exp module)
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pred#sm(_1):=Heap[null, pred#sm(_1)][_1, discriminant:=true]];
        Heap := Heap[null, pred#sm(_1):=Heap[null, pred#sm(_1)][_1, field1:=true]];
        if (Heap[_1, discriminant] == 4) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, pred#sm(_1)][o_15, f_20] || Heap[null, predFive#sm(Heap[_1, field1])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, pred#sm(_1):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pred#trigger(UnfoldingHeap, pred_3(_1));
      assume UnfoldingHeap[null, pred_3(_1)] == CombineFrames(FrameFragment(UnfoldingHeap[_1, discriminant]), CombineFrames(FrameFragment(UnfoldingHeap[_1, field1]), FrameFragment((if UnfoldingHeap[_1, discriminant] == 4 then UnfoldingHeap[null, predFive(UnfoldingHeap[_1, field1])] else FrameFragment(EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, pred_3(_1):=UnfoldingMask[null, pred_3(_1)] - perm];
      perm := FullPerm;
      assume _1 != null;
      UnfoldingMask := UnfoldingMask[_1, discriminant:=UnfoldingMask[_1, discriminant] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume _1 != null;
      UnfoldingMask := UnfoldingMask[_1, field1:=UnfoldingMask[_1, field1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[_1, discriminant] == 4) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, predFive(UnfoldingHeap[_1, field1]):=UnfoldingMask[null, predFive(UnfoldingHeap[_1, field1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(pred_3(_1), UnfoldingHeap[null, pred_3(_1)], predFive(UnfoldingHeap[_1, field1]), UnfoldingHeap[null, predFive(UnfoldingHeap[_1, field1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[_1, discriminant] == 4;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0630.vpr@32.3--32.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0630.vpr@32.10--32.15) [206781]"}
      false;
    assume state(Heap, Mask);
}