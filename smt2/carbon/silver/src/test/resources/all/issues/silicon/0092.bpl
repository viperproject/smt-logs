// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:56
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0092.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0092-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_32: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_32] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_32], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_69: Ref, f_130: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_69, f_130] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_69, f_130) ==> Heap[o_69, f_130] == ExhaleHeap[o_69, f_130]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_41: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_41), ExhaleHeap[null, PredicateMaskField(pm_f_41)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_41) && IsPredicateField(pm_f_41) ==> Heap[null, PredicateMaskField(pm_f_41)] == ExhaleHeap[null, PredicateMaskField(pm_f_41)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_41: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_41) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_41) && IsPredicateField(pm_f_41) ==> (forall <A, B> o2_41: Ref, f_130: (Field A B) ::
    { ExhaleHeap[o2_41, f_130] }
    Heap[null, PredicateMaskField(pm_f_41)][o2_41, f_130] ==> Heap[o2_41, f_130] == ExhaleHeap[o2_41, f_130]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_41: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_41), ExhaleHeap[null, WandMaskField(pm_f_41)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_41) && IsWandField(pm_f_41) ==> Heap[null, WandMaskField(pm_f_41)] == ExhaleHeap[null, WandMaskField(pm_f_41)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_41: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_41) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_41) && IsWandField(pm_f_41) ==> (forall <A, B> o2_41: Ref, f_130: (Field A B) ::
    { ExhaleHeap[o2_41, f_130] }
    Heap[null, WandMaskField(pm_f_41)][o2_41, f_130] ==> Heap[o2_41, f_130] == ExhaleHeap[o2_41, f_130]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_69: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_69, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_69, $allocated] ==> ExhaleHeap[o_69, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_69: (Field A B), v: B ::
  { Heap[o_22, f_69:=v] }
  succHeap(Heap, Heap[o_22, f_69:=v])
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField Ref;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
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
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(Q(x.g), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@7.1--9.2) [73476]"}
        HasDirectPerm(Mask, x, g);
    perm := FullPerm;
    Mask := Mask[null, Q(Heap[x, g]):=Mask[null, Q(Heap[x, g])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(Q(x.g), write) in x.g.f != 0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Q#trigger(UnfoldingHeap, Q(UnfoldingHeap[x, g]));
      assume UnfoldingHeap[null, Q(UnfoldingHeap[x, g])] == FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access Q(x.g) (0092.vpr@7.1--9.2) [73477]"}
          perm <= UnfoldingMask[null, Q(UnfoldingHeap[x, g])];
      }
      UnfoldingMask := UnfoldingMask[null, Q(UnfoldingHeap[x, g]):=UnfoldingMask[null, Q(UnfoldingHeap[x, g])] - perm];
      perm := FullPerm;
      assume UnfoldingHeap[x, g] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@7.1--9.2) [73478]"}
        HasDirectPerm(UnfoldingMask, x, g);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@7.1--9.2) [73479]"}
        HasDirectPerm(UnfoldingMask, x, g);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g.f (0092.vpr@7.1--9.2) [73480]"}
        HasDirectPerm(UnfoldingMask, UnfoldingHeap[x, g], f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Q#sm(Heap[x, g]):=Heap[null, Q#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Q#trigger(UnfoldingHeap, Q(UnfoldingHeap[x, g]));
      assume UnfoldingHeap[null, Q(UnfoldingHeap[x, g])] == FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Q(UnfoldingHeap[x, g]):=UnfoldingMask[null, Q(UnfoldingHeap[x, g])] - perm];
      perm := FullPerm;
      assume UnfoldingHeap[x, g] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[Heap[x, g], f_7] != 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(x: Ref): Field PredicateType_Q FrameType;
function  Q#sm(x: Ref): Field PredicateType_Q PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Q(x)) }
  PredicateMaskField(Q(x)) == Q#sm(x)
);
axiom (forall x: Ref ::
  { Q(x) }
  IsPredicateField(Q(x))
);
axiom (forall x: Ref ::
  { Q(x) }
  getPredWandId(Q(x)) == 1
);
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Q(x), Q(x2) }
  Q(x) == Q(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Q#sm(x), Q#sm(x2) }
  Q#sm(x) == Q#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Q#trigger(Heap, Q(x)) }
  Q#everUsed(Q(x))
);

procedure Q#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Q
    
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
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of Rec
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.g != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@23.1--25.2) [73481]"}
        HasDirectPerm(Mask, x, g);
    if (Heap[x, g] != null) {
      
      // -- Check definedness of acc(Rec(x.g), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@23.1--25.2) [73482]"}
          HasDirectPerm(Mask, x, g);
      perm := FullPerm;
      Mask := Mask[null, Rec(Heap[x, g]):=Mask[null, Rec(Heap[x, g])] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(Rec(x.g), write) in x.f < x.g.f)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Rec#trigger(UnfoldingHeap, Rec(UnfoldingHeap[x, g]));
        assume UnfoldingHeap[null, Rec(UnfoldingHeap[x, g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[x, g], g] != null then UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access Rec(x.g) (0092.vpr@23.1--25.2) [73483]"}
            perm <= UnfoldingMask[null, Rec(UnfoldingHeap[x, g])];
        }
        UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[x, g]):=UnfoldingMask[null, Rec(UnfoldingHeap[x, g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], g:=UnfoldingMask[UnfoldingHeap[x, g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[x, g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Rec(UnfoldingHeap[x, g]), UnfoldingHeap[null, Rec(UnfoldingHeap[x, g])], Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume Rec#trigger(Unfolding1Heap, Rec(Unfolding1Heap[Unfolding1Heap[x, g], g]));
            assume Unfolding1Heap[null, Rec(Unfolding1Heap[Unfolding1Heap[x, g], g])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g] != null then Unfolding1Heap[null, Rec(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])] else EmptyFrame))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, Rec(Unfolding1Heap[Unfolding1Heap[x, g], g]):=Unfolding1Mask[null, Rec(Unfolding1Heap[Unfolding1Heap[x, g], g])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[x, g], g] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[x, g], g] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], g:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], g] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, Rec(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Mask[null, Rec(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(Rec(Unfolding1Heap[Unfolding1Heap[x, g], g]), Unfolding1Heap[null, Rec(Unfolding1Heap[Unfolding1Heap[x, g], g])], Rec(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]), Unfolding1Heap[null, Rec(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7] < Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], f_7];
              
              // -- Free assumptions (inhale module)
                Unfolding1Heap := Unfolding1Heap[null, Rec#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Heap[null, Rec#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, Rec#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Heap[null, Rec#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g:=true]];
                if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
                    { newPMask[o_6, f_12] }
                    Unfolding1Heap[null, Rec#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][o_6, f_12] || Unfolding1Heap[null, Rec#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g])][o_6, f_12] ==> newPMask[o_6, f_12]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, Rec#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                { newPMask[o_5, f_11] }
                UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][o_5, f_11] || UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_5, f_11] ==> newPMask[o_5, f_11]
              );
              UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@23.1--25.2) [73484]"}
          HasDirectPerm(UnfoldingMask, x, g);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (0092.vpr@23.1--25.2) [73485]"}
          HasDirectPerm(UnfoldingMask, x, f_7);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@23.1--25.2) [73486]"}
          HasDirectPerm(UnfoldingMask, x, g);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g.f (0092.vpr@23.1--25.2) [73487]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[x, g], f_7);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, Rec#sm(Heap[x, g]):=Heap[null, Rec#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
          Heap := Heap[null, Rec#sm(Heap[x, g]):=Heap[null, Rec#sm(Heap[x, g])][Heap[x, g], g:=true]];
          if (Heap[Heap[x, g], g] != null) {
            havoc newPMask;
            assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
              { newPMask[o_40, f_52] }
              Heap[null, Rec#sm(Heap[x, g])][o_40, f_52] || Heap[null, Rec#sm(Heap[Heap[x, g], g])][o_40, f_52] ==> newPMask[o_40, f_52]
            );
            Heap := Heap[null, Rec#sm(Heap[x, g]):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Rec#trigger(UnfoldingHeap, Rec(UnfoldingHeap[x, g]));
        assume UnfoldingHeap[null, Rec(UnfoldingHeap[x, g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[x, g], g] != null then UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[x, g]):=UnfoldingMask[null, Rec(UnfoldingHeap[x, g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], g:=UnfoldingMask[UnfoldingHeap[x, g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[x, g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Rec(UnfoldingHeap[x, g]), UnfoldingHeap[null, Rec(UnfoldingHeap[x, g])], Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
                { newPMask[o_42, f_55] }
                UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][o_42, f_55] || UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_42, f_55] ==> newPMask[o_42, f_55]
              );
              UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[x, f_7] < Heap[Heap[x, g], f_7];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate MRecA
// ==================================================

type PredicateType_MRecA;
function  MRecA(x: Ref): Field PredicateType_MRecA FrameType;
function  MRecA#sm(x: Ref): Field PredicateType_MRecA PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(MRecA(x)) }
  PredicateMaskField(MRecA(x)) == MRecA#sm(x)
);
axiom (forall x: Ref ::
  { MRecA(x) }
  IsPredicateField(MRecA(x))
);
axiom (forall x: Ref ::
  { MRecA(x) }
  getPredWandId(MRecA(x)) == 3
);
function  MRecA#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  MRecA#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { MRecA(x), MRecA(x2) }
  MRecA(x) == MRecA(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { MRecA#sm(x), MRecA#sm(x2) }
  MRecA#sm(x) == MRecA#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { MRecA#trigger(Heap, MRecA(x)) }
  MRecA#everUsed(MRecA(x))
);

procedure MRecA#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of MRecA
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.g != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@39.1--41.2) [73488]"}
        HasDirectPerm(Mask, x, g);
    if (Heap[x, g] != null) {
      
      // -- Check definedness of acc(MRecB(x.g), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@39.1--41.2) [73489]"}
          HasDirectPerm(Mask, x, g);
      perm := FullPerm;
      Mask := Mask[null, MRecB(Heap[x, g]):=Mask[null, MRecB(Heap[x, g])] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(MRecB(x.g), write) in x.f < x.g.f)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume MRecB#trigger(UnfoldingHeap, MRecB(UnfoldingHeap[x, g]));
        assume UnfoldingHeap[null, MRecB(UnfoldingHeap[x, g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[x, g], g] != null then UnfoldingHeap[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access MRecB(x.g) (0092.vpr@39.1--41.2) [73490]"}
            perm <= UnfoldingMask[null, MRecB(UnfoldingHeap[x, g])];
        }
        UnfoldingMask := UnfoldingMask[null, MRecB(UnfoldingHeap[x, g]):=UnfoldingMask[null, MRecB(UnfoldingHeap[x, g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], g:=UnfoldingMask[UnfoldingHeap[x, g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[x, g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(MRecB(UnfoldingHeap[x, g]), UnfoldingHeap[null, MRecB(UnfoldingHeap[x, g])], MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume MRecA#trigger(Unfolding1Heap, MRecA(Unfolding1Heap[Unfolding1Heap[x, g], g]));
            assume Unfolding1Heap[null, MRecA(Unfolding1Heap[Unfolding1Heap[x, g], g])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g] != null then Unfolding1Heap[null, MRecB(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])] else EmptyFrame))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, MRecA(Unfolding1Heap[Unfolding1Heap[x, g], g]):=Unfolding1Mask[null, MRecA(Unfolding1Heap[Unfolding1Heap[x, g], g])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[x, g], g] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[x, g], g] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], g:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], g] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, MRecB(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Mask[null, MRecB(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(MRecA(Unfolding1Heap[Unfolding1Heap[x, g], g]), Unfolding1Heap[null, MRecA(Unfolding1Heap[Unfolding1Heap[x, g], g])], MRecB(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]), Unfolding1Heap[null, MRecB(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7] < Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], f_7];
              
              // -- Free assumptions (inhale module)
                Unfolding1Heap := Unfolding1Heap[null, MRecB#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Heap[null, MRecB#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, MRecB#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Heap[null, MRecB#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g:=true]];
                if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o: Ref, f_61: (Field A B) ::
                    { newPMask[o, f_61] }
                    Unfolding1Heap[null, MRecB#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][o, f_61] || Unfolding1Heap[null, MRecA#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g])][o, f_61] ==> newPMask[o, f_61]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, MRecB#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
                { newPMask[o_46, f_60] }
                UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][o_46, f_60] || UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_46, f_60] ==> newPMask[o_46, f_60]
              );
              UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@39.1--41.2) [73491]"}
          HasDirectPerm(UnfoldingMask, x, g);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (0092.vpr@39.1--41.2) [73492]"}
          HasDirectPerm(UnfoldingMask, x, f_7);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@39.1--41.2) [73493]"}
          HasDirectPerm(UnfoldingMask, x, g);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g.f (0092.vpr@39.1--41.2) [73494]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[x, g], f_7);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, MRecB#sm(Heap[x, g]):=Heap[null, MRecB#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
          Heap := Heap[null, MRecB#sm(Heap[x, g]):=Heap[null, MRecB#sm(Heap[x, g])][Heap[x, g], g:=true]];
          if (Heap[Heap[x, g], g] != null) {
            havoc newPMask;
            assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
              { newPMask[o_14, f_3] }
              Heap[null, MRecB#sm(Heap[x, g])][o_14, f_3] || Heap[null, MRecA#sm(Heap[Heap[x, g], g])][o_14, f_3] ==> newPMask[o_14, f_3]
            );
            Heap := Heap[null, MRecB#sm(Heap[x, g]):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume MRecB#trigger(UnfoldingHeap, MRecB(UnfoldingHeap[x, g]));
        assume UnfoldingHeap[null, MRecB(UnfoldingHeap[x, g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[x, g], g] != null then UnfoldingHeap[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, MRecB(UnfoldingHeap[x, g]):=UnfoldingMask[null, MRecB(UnfoldingHeap[x, g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], g:=UnfoldingMask[UnfoldingHeap[x, g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[x, g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(MRecB(UnfoldingHeap[x, g]), UnfoldingHeap[null, MRecB(UnfoldingHeap[x, g])], MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
                { newPMask[o_3, f_24] }
                UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][o_3, f_24] || UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_3, f_24] ==> newPMask[o_3, f_24]
              );
              UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[x, f_7] < Heap[Heap[x, g], f_7];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate MRecB
// ==================================================

type PredicateType_MRecB;
function  MRecB(x: Ref): Field PredicateType_MRecB FrameType;
function  MRecB#sm(x: Ref): Field PredicateType_MRecB PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(MRecB(x)) }
  PredicateMaskField(MRecB(x)) == MRecB#sm(x)
);
axiom (forall x: Ref ::
  { MRecB(x) }
  IsPredicateField(MRecB(x))
);
axiom (forall x: Ref ::
  { MRecB(x) }
  getPredWandId(MRecB(x)) == 4
);
function  MRecB#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  MRecB#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { MRecB(x), MRecB(x2) }
  MRecB(x) == MRecB(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { MRecB#sm(x), MRecB#sm(x2) }
  MRecB#sm(x) == MRecB#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { MRecB#trigger(Heap, MRecB(x)) }
  MRecB#everUsed(MRecB(x))
);

procedure MRecB#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of MRecB
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.g != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@43.1--45.2) [73495]"}
        HasDirectPerm(Mask, x, g);
    if (Heap[x, g] != null) {
      
      // -- Check definedness of acc(MRecA(x.g), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@43.1--45.2) [73496]"}
          HasDirectPerm(Mask, x, g);
      perm := FullPerm;
      Mask := Mask[null, MRecA(Heap[x, g]):=Mask[null, MRecA(Heap[x, g])] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(MRecA(x.g), write) in x.f < x.g.f)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume MRecA#trigger(UnfoldingHeap, MRecA(UnfoldingHeap[x, g]));
        assume UnfoldingHeap[null, MRecA(UnfoldingHeap[x, g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[x, g], g] != null then UnfoldingHeap[null, MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access MRecA(x.g) (0092.vpr@43.1--45.2) [73497]"}
            perm <= UnfoldingMask[null, MRecA(UnfoldingHeap[x, g])];
        }
        UnfoldingMask := UnfoldingMask[null, MRecA(UnfoldingHeap[x, g]):=UnfoldingMask[null, MRecA(UnfoldingHeap[x, g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], g:=UnfoldingMask[UnfoldingHeap[x, g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[x, g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(MRecA(UnfoldingHeap[x, g]), UnfoldingHeap[null, MRecA(UnfoldingHeap[x, g])], MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume MRecB#trigger(Unfolding1Heap, MRecB(Unfolding1Heap[Unfolding1Heap[x, g], g]));
            assume Unfolding1Heap[null, MRecB(Unfolding1Heap[Unfolding1Heap[x, g], g])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g] != null then Unfolding1Heap[null, MRecA(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])] else EmptyFrame))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, MRecB(Unfolding1Heap[Unfolding1Heap[x, g], g]):=Unfolding1Mask[null, MRecB(Unfolding1Heap[Unfolding1Heap[x, g], g])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[x, g], g] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[x, g], g] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], g:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, g], g], g] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, MRecA(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Mask[null, MRecA(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(MRecB(Unfolding1Heap[Unfolding1Heap[x, g], g]), Unfolding1Heap[null, MRecB(Unfolding1Heap[Unfolding1Heap[x, g], g])], MRecA(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]), Unfolding1Heap[null, MRecA(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], f_7] < Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], f_7];
              
              // -- Free assumptions (inhale module)
                Unfolding1Heap := Unfolding1Heap[null, MRecA#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Heap[null, MRecA#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, MRecA#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=Unfolding1Heap[null, MRecA#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g:=true]];
                if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
                    { newPMask[o_15, f_51] }
                    Unfolding1Heap[null, MRecA#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g])][o_15, f_51] || Unfolding1Heap[null, MRecB#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g], g])][o_15, f_51] ==> newPMask[o_15, f_51]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, MRecA#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, g], g], g]):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
                { newPMask[o_1, f_10] }
                UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][o_1, f_10] || UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_1, f_10] ==> newPMask[o_1, f_10]
              );
              UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@43.1--45.2) [73498]"}
          HasDirectPerm(UnfoldingMask, x, g);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (0092.vpr@43.1--45.2) [73499]"}
          HasDirectPerm(UnfoldingMask, x, f_7);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0092.vpr@43.1--45.2) [73500]"}
          HasDirectPerm(UnfoldingMask, x, g);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g.f (0092.vpr@43.1--45.2) [73501]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[x, g], f_7);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, MRecA#sm(Heap[x, g]):=Heap[null, MRecA#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
          Heap := Heap[null, MRecA#sm(Heap[x, g]):=Heap[null, MRecA#sm(Heap[x, g])][Heap[x, g], g:=true]];
          if (Heap[Heap[x, g], g] != null) {
            havoc newPMask;
            assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
              { newPMask[o_4, f_54] }
              Heap[null, MRecA#sm(Heap[x, g])][o_4, f_54] || Heap[null, MRecB#sm(Heap[Heap[x, g], g])][o_4, f_54] ==> newPMask[o_4, f_54]
            );
            Heap := Heap[null, MRecA#sm(Heap[x, g]):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume MRecA#trigger(UnfoldingHeap, MRecA(UnfoldingHeap[x, g]));
        assume UnfoldingHeap[null, MRecA(UnfoldingHeap[x, g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[x, g], g] != null then UnfoldingHeap[null, MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, MRecA(UnfoldingHeap[x, g]):=UnfoldingMask[null, MRecA(UnfoldingHeap[x, g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], g:=UnfoldingMask[UnfoldingHeap[x, g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[x, g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(MRecA(UnfoldingHeap[x, g]), UnfoldingHeap[null, MRecA(UnfoldingHeap[x, g])], MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, MRecB(UnfoldingHeap[UnfoldingHeap[x, g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
                { newPMask[o_12, f_25] }
                UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][o_12, f_25] || UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_12, f_25] ==> newPMask[o_12, f_25]
              );
              UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[x, f_7] < Heap[Heap[x, g], f_7];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (unfolding acc(P(x), write) in
  //     (unfolding acc(Q(x.g), write) in x.g.f != 0)) -- 0092.vpr@18.3--18.68
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(P(x), write) in (unfolding acc(Q(x.g), write) in x.g.f != 0))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, g]), UnfoldingHeap[null, Q(UnfoldingHeap[x, g])]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access P(x) (0092.vpr@18.10--18.68) [73502]"}
          perm <= UnfoldingMask[null, P(x)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Q(UnfoldingHeap[x, g]):=UnfoldingMask[null, Q(UnfoldingHeap[x, g])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(P(x), UnfoldingHeap[null, P(x)], Q(UnfoldingHeap[x, g]), UnfoldingHeap[null, Q(UnfoldingHeap[x, g])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume Q#trigger(Unfolding1Heap, Q(Unfolding1Heap[x, g]));
        assume Unfolding1Heap[null, Q(Unfolding1Heap[x, g])] == FrameFragment(Unfolding1Heap[Unfolding1Heap[x, g], f_7]);
        ExhaleWellDef1Mask := Unfolding1Mask;
        ExhaleWellDef1Heap := Unfolding1Heap;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, Q(Unfolding1Heap[x, g]):=Unfolding1Mask[null, Q(Unfolding1Heap[x, g])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[x, g] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, g], f_7:=Unfolding1Mask[Unfolding1Heap[x, g], f_7] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] != 0;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, Q#sm(UnfoldingHeap[x, g]):=UnfoldingHeap[null, Q#sm(UnfoldingHeap[x, g])][UnfoldingHeap[x, g], f_7:=true]];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume Q#trigger(Unfolding1Heap, Q(Unfolding1Heap[x, g]));
      assume Unfolding1Heap[null, Q(Unfolding1Heap[x, g])] == FrameFragment(Unfolding1Heap[Unfolding1Heap[x, g], f_7]);
      ExhaleWellDef1Mask := Unfolding1Mask;
      ExhaleWellDef1Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access Q(x.g) (0092.vpr@18.10--18.68) [73503]"}
          perm <= Unfolding1Mask[null, Q(Unfolding1Heap[x, g])];
      }
      Unfolding1Mask := Unfolding1Mask[null, Q(Unfolding1Heap[x, g]):=Unfolding1Mask[null, Q(Unfolding1Heap[x, g])] - perm];
      perm := FullPerm;
      assume Unfolding1Heap[x, g] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, g], f_7:=Unfolding1Mask[Unfolding1Heap[x, g], f_7] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (0092.vpr@18.10--18.68) [73504]"}
        HasDirectPerm(Unfolding1Mask, x, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (0092.vpr@18.10--18.68) [73505]"}
        HasDirectPerm(Unfolding1Mask, x, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g.f (0092.vpr@18.10--18.68) [73506]"}
        HasDirectPerm(Unfolding1Mask, Heap[x, g], f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Q#sm(Heap[x, g]):=Heap[null, Q#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, g:=true]];
        havoc newPMask;
        assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
          { newPMask[o_41, f_21] }
          Heap[null, P#sm(x)][o_41, f_21] || Heap[null, Q#sm(Heap[x, g])][o_41, f_21] ==> newPMask[o_41, f_21]
        );
        Heap := Heap[null, P#sm(x):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, Q#sm(Heap[x, g]):=Heap[null, Q#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion x.g.f != 0 might not hold. (0092.vpr@18.10--18.68) [73507]"}
      Heap[Heap[x, g], f_7] != 0;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, g:=true]];
      havoc newPMask;
      assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
        { newPMask[o_23, f_13] }
        Heap[null, P#sm(x)][o_23, f_13] || Heap[null, Q#sm(Heap[x, g])][o_23, f_13] ==> newPMask[o_23, f_13]
      );
      Heap := Heap[null, P#sm(x):=newPMask];
      assume state(Heap, Mask);
      Heap := Heap[null, Q#sm(Heap[x, g]):=Heap[null, Q#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Rec(x):=Mask[null, Rec(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(Rec(x), write) -- 0092.vpr@30.3--30.21
    assume Rec#trigger(Heap, Rec(x));
    assume Heap[null, Rec(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), CombineFrames(FrameFragment(Heap[x, g]), FrameFragment((if Heap[x, g] != null then Heap[null, Rec(Heap[x, g])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Rec(x) might fail. There might be insufficient permission to access Rec(x) (0092.vpr@30.3--30.21) [73510]"}
        perm <= Mask[null, Rec(x)];
    }
    Mask := Mask[null, Rec(x):=Mask[null, Rec(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Rec(x))) {
        havoc newVersion;
        Heap := Heap[null, Rec(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    if (Heap[x, g] != null) {
      perm := FullPerm;
      Mask := Mask[null, Rec(Heap[x, g]):=Mask[null, Rec(Heap[x, g])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Rec(x), Heap[null, Rec(x)], Rec(Heap[x, g]), Heap[null, Rec(Heap[x, g])]);
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Rec#trigger(UnfoldingHeap, Rec(UnfoldingHeap[x, g]));
        assume UnfoldingHeap[null, Rec(UnfoldingHeap[x, g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[x, g], g] != null then UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[x, g]):=UnfoldingMask[null, Rec(UnfoldingHeap[x, g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], g:=UnfoldingMask[UnfoldingHeap[x, g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[x, g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Rec(UnfoldingHeap[x, g]), UnfoldingHeap[null, Rec(UnfoldingHeap[x, g])], Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
                { newPMask[o_51, f_66] }
                UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][o_51, f_66] || UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_51, f_66] ==> newPMask[o_51, f_66]
              );
              UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[x, f_7] < Heap[Heap[x, g], f_7];
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, Rec#sm(Heap[x, g]):=Heap[null, Rec#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
        Heap := Heap[null, Rec#sm(Heap[x, g]):=Heap[null, Rec#sm(Heap[x, g])][Heap[x, g], g:=true]];
        if (Heap[Heap[x, g], g] != null) {
          havoc newPMask;
          assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
            { newPMask[o_13, f_65] }
            Heap[null, Rec#sm(Heap[x, g])][o_13, f_65] || Heap[null, Rec#sm(Heap[Heap[x, g], g])][o_13, f_65] ==> newPMask[o_13, f_65]
          );
          Heap := Heap[null, Rec#sm(Heap[x, g]):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.g != null -- 0092.vpr@31.10--31.21
    
    // -- Check definedness of x.g != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.g (0092.vpr@31.10--31.21) [73514]"}
        HasDirectPerm(Mask, x, g);
    assume Heap[x, g] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Rec(x.g), write) -- 0092.vpr@32.3--32.23
    
    // -- Check definedness of acc(Rec(x.g), write)
      assert {:msg "  Unfolding Rec(x.g) might fail. There might be insufficient permission to access x.g (0092.vpr@32.3--32.23) [73515]"}
        HasDirectPerm(Mask, x, g);
    assume Rec#trigger(Heap, Rec(Heap[x, g]));
    assume Heap[null, Rec(Heap[x, g])] == CombineFrames(FrameFragment(Heap[Heap[x, g], f_7]), CombineFrames(FrameFragment(Heap[Heap[x, g], g]), FrameFragment((if Heap[Heap[x, g], g] != null then Heap[null, Rec(Heap[Heap[x, g], g])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Rec(x.g) might fail. There might be insufficient permission to access Rec(x.g) (0092.vpr@32.3--32.23) [73518]"}
        perm <= Mask[null, Rec(Heap[x, g])];
    }
    Mask := Mask[null, Rec(Heap[x, g]):=Mask[null, Rec(Heap[x, g])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Rec(Heap[x, g]))) {
        havoc newVersion;
        Heap := Heap[null, Rec(Heap[x, g]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[x, g] != null;
    Mask := Mask[Heap[x, g], f_7:=Mask[Heap[x, g], f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[x, g] != null;
    Mask := Mask[Heap[x, g], g:=Mask[Heap[x, g], g] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[x, g], g] != null) {
      perm := FullPerm;
      Mask := Mask[null, Rec(Heap[Heap[x, g], g]):=Mask[null, Rec(Heap[Heap[x, g], g])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Rec(Heap[x, g]), Heap[null, Rec(Heap[x, g])], Rec(Heap[Heap[x, g], g]), Heap[null, Rec(Heap[Heap[x, g], g])]);
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Rec#trigger(UnfoldingHeap, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]));
        assume UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null then UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[UnfoldingHeap[x, g], g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[UnfoldingHeap[x, g], g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, g], g], g:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, g], g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]):=UnfoldingMask[null, Rec(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Rec(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[x, g], g])], Rec(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]), UnfoldingHeap[null, Rec(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]):=UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]):=UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
                { newPMask[o_20, f_50] }
                UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_20, f_50] || UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], g])][o_20, f_50] ==> newPMask[o_20, f_50]
              );
              UnfoldingHeap := UnfoldingHeap[null, Rec#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[Heap[x, g], f_7] < Heap[Heap[Heap[x, g], g], f_7];
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, Rec#sm(Heap[Heap[x, g], g]):=Heap[null, Rec#sm(Heap[Heap[x, g], g])][Heap[Heap[x, g], g], f_7:=true]];
        Heap := Heap[null, Rec#sm(Heap[Heap[x, g], g]):=Heap[null, Rec#sm(Heap[Heap[x, g], g])][Heap[Heap[x, g], g], g:=true]];
        if (Heap[Heap[Heap[x, g], g], g] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
            { newPMask[o_52, f_14] }
            Heap[null, Rec#sm(Heap[Heap[x, g], g])][o_52, f_14] || Heap[null, Rec#sm(Heap[Heap[Heap[x, g], g], g])][o_52, f_14] ==> newPMask[o_52, f_14]
          );
          Heap := Heap[null, Rec#sm(Heap[Heap[x, g], g]):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f < x.g.f -- 0092.vpr@34.3--34.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.f < x.g.f
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (0092.vpr@34.10--34.21) [73522]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (0092.vpr@34.10--34.21) [73523]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g.f (0092.vpr@34.10--34.21) [73524]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[x, g], f_7);
    assert {:msg "  Assert might fail. Assertion x.f < x.g.f might not hold. (0092.vpr@34.10--34.21) [73525]"}
      Heap[x, f_7] < Heap[Heap[x, g], f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, MRecA(x):=Mask[null, MRecA(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(MRecA(x), write) -- 0092.vpr@50.3--50.23
    assume MRecA#trigger(Heap, MRecA(x));
    assume Heap[null, MRecA(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), CombineFrames(FrameFragment(Heap[x, g]), FrameFragment((if Heap[x, g] != null then Heap[null, MRecB(Heap[x, g])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding MRecA(x) might fail. There might be insufficient permission to access MRecA(x) (0092.vpr@50.3--50.23) [73528]"}
        perm <= Mask[null, MRecA(x)];
    }
    Mask := Mask[null, MRecA(x):=Mask[null, MRecA(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, MRecA(x))) {
        havoc newVersion;
        Heap := Heap[null, MRecA(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    if (Heap[x, g] != null) {
      perm := FullPerm;
      Mask := Mask[null, MRecB(Heap[x, g]):=Mask[null, MRecB(Heap[x, g])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(MRecA(x), Heap[null, MRecA(x)], MRecB(Heap[x, g]), Heap[null, MRecB(Heap[x, g])]);
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume MRecB#trigger(UnfoldingHeap, MRecB(UnfoldingHeap[x, g]));
        assume UnfoldingHeap[null, MRecB(UnfoldingHeap[x, g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[x, g], g] != null then UnfoldingHeap[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, MRecB(UnfoldingHeap[x, g]):=UnfoldingMask[null, MRecB(UnfoldingHeap[x, g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], f_7:=UnfoldingMask[UnfoldingHeap[x, g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[x, g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, g], g:=UnfoldingMask[UnfoldingHeap[x, g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[x, g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(MRecB(UnfoldingHeap[x, g]), UnfoldingHeap[null, MRecB(UnfoldingHeap[x, g])], MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[x, g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][UnfoldingHeap[UnfoldingHeap[x, g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
                { newPMask[o_10, f_67] }
                UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g])][o_10, f_67] || UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_10, f_67] ==> newPMask[o_10, f_67]
              );
              UnfoldingHeap := UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[x, g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[x, f_7] < Heap[Heap[x, g], f_7];
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, MRecB#sm(Heap[x, g]):=Heap[null, MRecB#sm(Heap[x, g])][Heap[x, g], f_7:=true]];
        Heap := Heap[null, MRecB#sm(Heap[x, g]):=Heap[null, MRecB#sm(Heap[x, g])][Heap[x, g], g:=true]];
        if (Heap[Heap[x, g], g] != null) {
          havoc newPMask;
          assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
            { newPMask[o_58, f_30] }
            Heap[null, MRecB#sm(Heap[x, g])][o_58, f_30] || Heap[null, MRecA#sm(Heap[Heap[x, g], g])][o_58, f_30] ==> newPMask[o_58, f_30]
          );
          Heap := Heap[null, MRecB#sm(Heap[x, g]):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.g != null -- 0092.vpr@51.10--51.21
    
    // -- Check definedness of x.g != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.g (0092.vpr@51.10--51.21) [73532]"}
        HasDirectPerm(Mask, x, g);
    assume Heap[x, g] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(MRecB(x.g), write) -- 0092.vpr@52.3--52.25
    
    // -- Check definedness of acc(MRecB(x.g), write)
      assert {:msg "  Unfolding MRecB(x.g) might fail. There might be insufficient permission to access x.g (0092.vpr@52.3--52.25) [73533]"}
        HasDirectPerm(Mask, x, g);
    assume MRecB#trigger(Heap, MRecB(Heap[x, g]));
    assume Heap[null, MRecB(Heap[x, g])] == CombineFrames(FrameFragment(Heap[Heap[x, g], f_7]), CombineFrames(FrameFragment(Heap[Heap[x, g], g]), FrameFragment((if Heap[Heap[x, g], g] != null then Heap[null, MRecA(Heap[Heap[x, g], g])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding MRecB(x.g) might fail. There might be insufficient permission to access MRecB(x.g) (0092.vpr@52.3--52.25) [73536]"}
        perm <= Mask[null, MRecB(Heap[x, g])];
    }
    Mask := Mask[null, MRecB(Heap[x, g]):=Mask[null, MRecB(Heap[x, g])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, MRecB(Heap[x, g]))) {
        havoc newVersion;
        Heap := Heap[null, MRecB(Heap[x, g]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[x, g] != null;
    Mask := Mask[Heap[x, g], f_7:=Mask[Heap[x, g], f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[x, g] != null;
    Mask := Mask[Heap[x, g], g:=Mask[Heap[x, g], g] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[x, g], g] != null) {
      perm := FullPerm;
      Mask := Mask[null, MRecA(Heap[Heap[x, g], g]):=Mask[null, MRecA(Heap[Heap[x, g], g])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(MRecB(Heap[x, g]), Heap[null, MRecB(Heap[x, g])], MRecA(Heap[Heap[x, g], g]), Heap[null, MRecA(Heap[Heap[x, g], g])]);
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume MRecA#trigger(UnfoldingHeap, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]));
        assume UnfoldingHeap[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null then UnfoldingHeap[null, MRecB(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]):=UnfoldingMask[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[UnfoldingHeap[x, g], g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[UnfoldingHeap[x, g], g] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, g], g], g:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, g], g], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, MRecB(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]):=UnfoldingMask[null, MRecB(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g]), UnfoldingHeap[null, MRecA(UnfoldingHeap[UnfoldingHeap[x, g], g])], MRecB(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]), UnfoldingHeap[null, MRecB(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], f_7] < UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], f_7];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]):=UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]):=UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], g:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], g] != null) {
              havoc newPMask;
              assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
                { newPMask[o_66, f_28] }
                UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g])][o_66, f_28] || UnfoldingHeap[null, MRecA#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g], g])][o_66, f_28] ==> newPMask[o_66, f_28]
              );
              UnfoldingHeap := UnfoldingHeap[null, MRecB#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, g], g], g]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[Heap[x, g], f_7] < Heap[Heap[Heap[x, g], g], f_7];
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, MRecA#sm(Heap[Heap[x, g], g]):=Heap[null, MRecA#sm(Heap[Heap[x, g], g])][Heap[Heap[x, g], g], f_7:=true]];
        Heap := Heap[null, MRecA#sm(Heap[Heap[x, g], g]):=Heap[null, MRecA#sm(Heap[Heap[x, g], g])][Heap[Heap[x, g], g], g:=true]];
        if (Heap[Heap[Heap[x, g], g], g] != null) {
          havoc newPMask;
          assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
            { newPMask[o_18, f_18] }
            Heap[null, MRecA#sm(Heap[Heap[x, g], g])][o_18, f_18] || Heap[null, MRecB#sm(Heap[Heap[Heap[x, g], g], g])][o_18, f_18] ==> newPMask[o_18, f_18]
          );
          Heap := Heap[null, MRecA#sm(Heap[Heap[x, g], g]):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f < x.g.f -- 0092.vpr@54.3--54.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.f < x.g.f
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (0092.vpr@54.10--54.21) [73540]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (0092.vpr@54.10--54.21) [73541]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g.f (0092.vpr@54.10--54.21) [73542]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[x, g], f_7);
    assert {:msg "  Assert might fail. Assertion x.f < x.g.f might not hold. (0092.vpr@54.10--54.21) [73543]"}
      Heap[x, f_7] < Heap[Heap[x, g], f_7];
    assume state(Heap, Mask);
}