// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:37:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0290.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0290-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique ofs: Field NormalField Ref;
axiom !IsPredicateField(ofs);
axiom !IsWandField(ofs);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(r_1: Ref): Field PredicateType_P FrameType;
function  P#sm(r_1: Ref): Field PredicateType_P PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(P(r_1)) }
  PredicateMaskField(P(r_1)) == P#sm(r_1)
);
axiom (forall r_1: Ref ::
  { P(r_1) }
  IsPredicateField(P(r_1))
);
axiom (forall r_1: Ref ::
  { P(r_1) }
  getPredWandId(P(r_1)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { P(r_1), P(r2) }
  P(r_1) == P(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { P#sm(r_1), P#sm(r2) }
  P#sm(r_1) == P#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { P#trigger(Heap, P(r_1)) }
  P#everUsed(P(r_1))
);

procedure P#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(Q(r.f), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (0290.vpr@6.1--10.2) [196330]"}
        HasDirectPerm(Mask, r_1, f_7);
    perm := FullPerm;
    Mask := Mask[null, Q(Heap[r_1, f_7]):=Mask[null, Q(Heap[r_1, f_7])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(Q(r.f), write) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Q#trigger(UnfoldingHeap, Q(UnfoldingHeap[r_1, f_7]));
      assume UnfoldingHeap[null, Q(UnfoldingHeap[r_1, f_7])] == EmptyFrame;
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access Q(r.f) (0290.vpr@6.1--10.2) [196331]"}
          perm <= UnfoldingMask[null, Q(UnfoldingHeap[r_1, f_7])];
      }
      UnfoldingMask := UnfoldingMask[null, Q(UnfoldingHeap[r_1, f_7]):=UnfoldingMask[null, Q(UnfoldingHeap[r_1, f_7])] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (0290.vpr@6.1--10.2) [196332]"}
        HasDirectPerm(UnfoldingMask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Q#trigger(UnfoldingHeap, Q(UnfoldingHeap[r_1, f_7]));
      assume UnfoldingHeap[null, Q(UnfoldingHeap[r_1, f_7])] == EmptyFrame;
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Q(UnfoldingHeap[r_1, f_7]):=UnfoldingMask[null, Q(UnfoldingHeap[r_1, f_7])] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(r_1: Ref): Field PredicateType_Q FrameType;
function  Q#sm(r_1: Ref): Field PredicateType_Q PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(Q(r_1)) }
  PredicateMaskField(Q(r_1)) == Q#sm(r_1)
);
axiom (forall r_1: Ref ::
  { Q(r_1) }
  IsPredicateField(Q(r_1))
);
axiom (forall r_1: Ref ::
  { Q(r_1) }
  getPredWandId(Q(r_1)) == 1
);
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { Q(r_1), Q(r2) }
  Q(r_1) == Q(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { Q#sm(r_1), Q#sm(r2) }
  Q#sm(r_1) == Q#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { Q#trigger(Heap, Q(r_1)) }
  Q#everUsed(Q(r_1))
);

procedure Q#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Q
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Rec
// ==================================================

type PredicateType_Rec;
function  Rec(x: Ref): Field PredicateType_Rec FrameType;
function  Rec#sm(x: Ref): Field PredicateType_Rec PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Rec(x)) }
  PredicateMaskField(Rec(x)) == Rec#sm(x)
);
axiom (forall x: Ref ::
  { Rec(x) }
  IsPredicateField(Rec(x))
);
axiom (forall x: Ref ::
  { Rec(x) }
  getPredWandId(Rec(x)) == 2
);
function  Rec#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Rec#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Rec(x), Rec(x2) }
  Rec(x) == Rec(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Rec#sm(x), Rec#sm(x2) }
  Rec#sm(x) == Rec#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Rec#trigger(Heap, Rec(x)) }
  Rec#everUsed(Rec(x))
);

procedure Rec#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of Rec
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (0290.vpr@24.1--27.2) [196333]"}
        HasDirectPerm(Mask, x, f_7);
    if (Heap[x, f_7] != null) {
      
      // -- Check definedness of acc(Rec(x.f), wildcard)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (0290.vpr@24.1--27.2) [196334]"}
          HasDirectPerm(Mask, x, f_7);
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, Rec(Heap[x, f_7]):=Mask[null, Rec(Heap[x, f_7])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate SP_State
// ==================================================

type PredicateType_SP_State;
function  SP_State(self: Ref): Field PredicateType_SP_State FrameType;
function  SP_State#sm(self: Ref): Field PredicateType_SP_State PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(SP_State(self)) }
  PredicateMaskField(SP_State(self)) == SP_State#sm(self)
);
axiom (forall self: Ref ::
  { SP_State(self) }
  IsPredicateField(SP_State(self))
);
axiom (forall self: Ref ::
  { SP_State(self) }
  getPredWandId(SP_State(self)) == 3
);
function  SP_State#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  SP_State#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { SP_State(self), SP_State(self2) }
  SP_State(self) == SP_State(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { SP_State#sm(self), SP_State#sm(self2) }
  SP_State#sm(self) == SP_State#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { SP_State#trigger(Heap, SP_State(self)) }
  SP_State#everUsed(SP_State(self))
);

procedure SP_State#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Check definedness of predicate body of SP_State
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, ofs:=Mask[self, ofs] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(OFL_State(self.ofs), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.ofs (0290.vpr@40.1--44.2) [196335]"}
        HasDirectPerm(Mask, self, ofs);
    perm := FullPerm;
    Mask := Mask[null, OFL_State(Heap[self, ofs]):=Mask[null, OFL_State(Heap[self, ofs])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(OFL_State(self.ofs), write) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume OFL_State#trigger(UnfoldingHeap, OFL_State(UnfoldingHeap[self, ofs]));
      assume UnfoldingHeap[null, OFL_State(UnfoldingHeap[self, ofs])] == EmptyFrame;
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access OFL_State(self.ofs) (0290.vpr@40.1--44.2) [196336]"}
          perm <= UnfoldingMask[null, OFL_State(UnfoldingHeap[self, ofs])];
      }
      UnfoldingMask := UnfoldingMask[null, OFL_State(UnfoldingHeap[self, ofs]):=UnfoldingMask[null, OFL_State(UnfoldingHeap[self, ofs])] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.ofs (0290.vpr@40.1--44.2) [196337]"}
        HasDirectPerm(UnfoldingMask, self, ofs);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume OFL_State#trigger(UnfoldingHeap, OFL_State(UnfoldingHeap[self, ofs]));
      assume UnfoldingHeap[null, OFL_State(UnfoldingHeap[self, ofs])] == EmptyFrame;
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, OFL_State(UnfoldingHeap[self, ofs]):=UnfoldingMask[null, OFL_State(UnfoldingHeap[self, ofs])] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate OFL_State
// ==================================================

type PredicateType_OFL_State;
function  OFL_State(self: Ref): Field PredicateType_OFL_State FrameType;
function  OFL_State#sm(self: Ref): Field PredicateType_OFL_State PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(OFL_State(self)) }
  PredicateMaskField(OFL_State(self)) == OFL_State#sm(self)
);
axiom (forall self: Ref ::
  { OFL_State(self) }
  IsPredicateField(OFL_State(self))
);
axiom (forall self: Ref ::
  { OFL_State(self) }
  getPredWandId(OFL_State(self)) == 4
);
function  OFL_State#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  OFL_State#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { OFL_State(self), OFL_State(self2) }
  OFL_State(self) == OFL_State(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { OFL_State#sm(self), OFL_State#sm(self2) }
  OFL_State#sm(self) == OFL_State#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { OFL_State#trigger(Heap, OFL_State(self)) }
  OFL_State#everUsed(OFL_State(self))
);

procedure OFL_State#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of OFL_State
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(r), write) -- 0290.vpr@15.3--15.19
    perm := FullPerm;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(r), wildcard) -- 0290.vpr@16.3--16.29
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), Heap[null, Q(Heap[r_1, f_7])]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Unfolding P(r) might fail. There might be insufficient permission to access P(r) (0290.vpr@16.3--16.29) [196340]"}
      Mask[null, P(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, P(r_1)];
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P(r_1):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Q(Heap[r_1, f_7]):=Mask[null, Q(Heap[r_1, f_7])] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(P(r_1), Heap[null, P(r_1)], Q(Heap[r_1, f_7]), Heap[null, Q(Heap[r_1, f_7])]);
    assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Q#trigger(UnfoldingHeap, Q(UnfoldingHeap[r_1, f_7]));
      assume UnfoldingHeap[null, Q(UnfoldingHeap[r_1, f_7])] == EmptyFrame;
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, Q(UnfoldingHeap[r_1, f_7])];
      UnfoldingMask := UnfoldingMask[null, Q(UnfoldingHeap[r_1, f_7]):=UnfoldingMask[null, Q(UnfoldingHeap[r_1, f_7])] - wildcard];
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Free assumptions (inhale module)
      assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0290.vpr@19.3--19.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0290.vpr@19.10--19.15) [196341]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var y: Ref;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  
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
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(Rec(x), write) -- 0290.vpr@30.3--30.16
    perm := FullPerm;
    Mask := Mask[null, Rec(x):=Mask[null, Rec(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: y := (unfolding acc(Rec(x), write) in x.f) -- 0290.vpr@31.3--31.40
    
    // -- Check definedness of (unfolding acc(Rec(x), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Rec#trigger(UnfoldingHeap, Rec(x));
      assume UnfoldingHeap[null, Rec(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment((if UnfoldingHeap[x, f_7] != null then UnfoldingHeap[null, Rec(UnfoldingHeap[x, f_7])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access Rec(x) (0290.vpr@31.3--31.40) [196343]"}
          perm <= UnfoldingMask[null, Rec(x)];
      }
      UnfoldingMask := UnfoldingMask[null, Rec(x):=UnfoldingMask[null, Rec(x)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, f_7] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[x, f_7]):=UnfoldingMask[null, Rec(UnfoldingHeap[x, f_7])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Rec(x), UnfoldingHeap[null, Rec(x)], Rec(UnfoldingHeap[x, f_7]), UnfoldingHeap[null, Rec(UnfoldingHeap[x, f_7])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (0290.vpr@31.3--31.40) [196344]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Rec#sm(x):=Heap[null, Rec#sm(x)][x, f_7:=true]];
        if (Heap[x, f_7] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Rec#sm(x)][o_15, f_20] || Heap[null, Rec#sm(Heap[x, f_7])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, Rec#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
    y := Heap[x, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Router__process_data_3_3
// ==================================================

procedure Router__process_data_3_3(spkt: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[spkt, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0290.vpr@49.12--49.36) [196345]"}
      perm >= NoPerm;
    Mask := Mask[null, SP_State(spkt):=Mask[null, SP_State(spkt)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(SP_State(spkt), wildcard) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume SP_State#trigger(UnfoldingHeap, SP_State(spkt));
      assume UnfoldingHeap[null, SP_State(spkt)] == CombineFrames(FrameFragment(UnfoldingHeap[spkt, ofs]), UnfoldingHeap[null, OFL_State(UnfoldingHeap[spkt, ofs])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access SP_State(spkt) (0290.vpr@50.13--50.60) [196346]"}
        UnfoldingMask[null, SP_State(spkt)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, SP_State(spkt)];
      UnfoldingMask := UnfoldingMask[null, SP_State(spkt):=UnfoldingMask[null, SP_State(spkt)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume spkt != null;
      UnfoldingMask := UnfoldingMask[spkt, ofs:=UnfoldingMask[spkt, ofs] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      UnfoldingMask := UnfoldingMask[null, OFL_State(UnfoldingHeap[spkt, ofs]):=UnfoldingMask[null, OFL_State(UnfoldingHeap[spkt, ofs])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(SP_State(spkt), UnfoldingHeap[null, SP_State(spkt)], OFL_State(UnfoldingHeap[spkt, ofs]), UnfoldingHeap[null, OFL_State(UnfoldingHeap[spkt, ofs])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume OFL_State#trigger(Unfolding1Heap, OFL_State(Unfolding1Heap[spkt, ofs]));
        assume Unfolding1Heap[null, OFL_State(Unfolding1Heap[spkt, ofs])] == EmptyFrame;
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        havoc wildcard;
        assume wildcard < Unfolding1Mask[null, OFL_State(Unfolding1Heap[spkt, ofs])];
        Unfolding1Mask := Unfolding1Mask[null, OFL_State(Unfolding1Heap[spkt, ofs]):=Unfolding1Mask[null, OFL_State(Unfolding1Heap[spkt, ofs])] - wildcard];
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SP_State#sm(spkt):=Heap[null, SP_State#sm(spkt)][spkt, ofs:=true]];
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
          { newPMask[o_16, f_21] }
          Heap[null, SP_State#sm(spkt)][o_16, f_21] || Heap[null, OFL_State#sm(Heap[spkt, ofs])][o_16, f_21] ==> newPMask[o_16, f_21]
        );
        Heap := Heap[null, SP_State#sm(spkt):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume SP_State#trigger(UnfoldingHeap, SP_State(spkt));
      assume UnfoldingHeap[null, SP_State(spkt)] == CombineFrames(FrameFragment(UnfoldingHeap[spkt, ofs]), UnfoldingHeap[null, OFL_State(UnfoldingHeap[spkt, ofs])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, SP_State(spkt)];
      UnfoldingMask := UnfoldingMask[null, SP_State(spkt):=UnfoldingMask[null, SP_State(spkt)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume spkt != null;
      UnfoldingMask := UnfoldingMask[spkt, ofs:=UnfoldingMask[spkt, ofs] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      UnfoldingMask := UnfoldingMask[null, OFL_State(UnfoldingHeap[spkt, ofs]):=UnfoldingMask[null, OFL_State(UnfoldingHeap[spkt, ofs])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(SP_State(spkt), UnfoldingHeap[null, SP_State(spkt)], OFL_State(UnfoldingHeap[spkt, ofs]), UnfoldingHeap[null, OFL_State(UnfoldingHeap[spkt, ofs])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (inhale module)
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert false -- 0290.vpr@53.3--53.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0290.vpr@53.10--53.15) [196347]"}
      false;
    assume state(Heap, Mask);
}