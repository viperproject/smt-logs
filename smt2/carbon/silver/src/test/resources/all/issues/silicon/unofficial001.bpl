// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial001.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial001-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_14: Ref, f_22: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_14, f_22] }
  Heap[o_14, $allocated] ==> Heap[Heap[o_14, f_22], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref, f_23: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, f_23] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_15, f_23) ==> Heap[o_15, f_23] == ExhaleHeap[o_15, f_23]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_15, $allocated] ==> ExhaleHeap[o_15, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_14: Ref, f_24: (Field A B), v: B ::
  { Heap[o_14, f_24:=v] }
  succHeap(Heap, Heap[o_14, f_24:=v])
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
// - height 0: last
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
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function last
// ==================================================

// Uninterpreted function definitions
function  last_1(Heap: HeapType, start_1: Ref, end_1: Ref, x: Ref): Ref;
function  last'(Heap: HeapType, start_1: Ref, end_1: Ref, x: Ref): Ref;
axiom (forall Heap: HeapType, start_1: Ref, end_1: Ref, x: Ref ::
  { last_1(Heap, start_1, end_1, x) }
  last_1(Heap, start_1, end_1, x) == last'(Heap, start_1, end_1, x) && dummyFunction(last#triggerStateless(start_1, end_1, x))
);
axiom (forall Heap: HeapType, start_1: Ref, end_1: Ref, x: Ref ::
  { last'(Heap, start_1, end_1, x) }
  dummyFunction(last#triggerStateless(start_1, end_1, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, start_1: Ref, end_1: Ref, x: Ref ::
  { state(Heap, Mask), last_1(Heap, start_1, end_1, x) } { state(Heap, Mask), last#triggerStateless(start_1, end_1, x), P#trigger(Heap, P(start_1, end_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> start_1 != null && start_1 != end_1 ==> last_1(Heap, start_1, end_1, x) == (if Heap[start_1, next] != end_1 then last'(Heap, Heap[start_1, next], end_1, x) else null)
);

// Framing axioms
function  last#frame(frame: FrameType, start_1: Ref, end_1: Ref, x: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, start_1: Ref, end_1: Ref, x: Ref ::
  { state(Heap, Mask), last'(Heap, start_1, end_1, x) } { state(Heap, Mask), last#triggerStateless(start_1, end_1, x), P#trigger(Heap, P(start_1, end_1)) }
  state(Heap, Mask) ==> last'(Heap, start_1, end_1, x) == last#frame(CombineFrames(Heap[null, P(start_1, end_1)], FrameFragment((if x != null then FrameFragment(Heap[x, next]) else EmptyFrame))), start_1, end_1, x)
);

// Trigger function (controlling recursive postconditions)
function  last#trigger(frame: FrameType, start_1: Ref, end_1: Ref, x: Ref): bool;

// State-independent trigger function
function  last#triggerStateless(start_1: Ref, end_1: Ref, x: Ref): Ref;

// Check contract well-formedness and postcondition
procedure last#definedness(start_1: Ref, end_1: Ref, x: Ref) returns (Result: Ref)
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
    assume Heap[start_1, $allocated];
    assume Heap[end_1, $allocated];
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume start_1 != null;
    assume state(Heap, Mask);
    assume start_1 != end_1;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(start_1, end_1):=Mask[null, P(start_1, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (x != null) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, next:=Mask[x, next] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(start, end), write) in (start.next != end ? last(start.next, end, x) : null))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(start_1, end_1));
      assume UnfoldingHeap[null, P(start_1, end_1)] == FrameFragment((if start_1 != end_1 then CombineFrames(FrameFragment(UnfoldingHeap[start_1, next]), FrameFragment((if UnfoldingHeap[start_1, next] == null then EmptyFrame else UnfoldingHeap[null, P(UnfoldingHeap[start_1, next], end_1)]))) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(start, end) (unofficial001.vpr@19.1--27.2) [58083]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(start_1, end_1)];
      if (start_1 != end_1) {
        perm := FullPerm;
        assume start_1 != null;
        UnfoldingMask := UnfoldingMask[start_1, next:=UnfoldingMask[start_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[start_1, next] == null) {
          assume end_1 == null;
        } else {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, P(UnfoldingHeap[start_1, next], end_1):=UnfoldingMask[null, P(UnfoldingHeap[start_1, next], end_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(P(start_1, end_1), UnfoldingHeap[null, P(start_1, end_1)], P(UnfoldingHeap[start_1, next], end_1), UnfoldingHeap[null, P(UnfoldingHeap[start_1, next], end_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (unofficial001.vpr@19.1--27.2) [58084]"}
        HasDirectPerm(UnfoldingMask, start_1, next);
      if (UnfoldingHeap[start_1, next] != end_1) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (unofficial001.vpr@19.1--27.2) [58085]"}
          HasDirectPerm(UnfoldingMask, start_1, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          assert {:msg "  Precondition of function last might not hold. Assertion start.next != null might not hold. (unofficial001.vpr@26.23--26.46) [58086]"}
            UnfoldingHeap[start_1, next] != null;
          assert {:msg "  Precondition of function last might not hold. Assertion start.next != end might not hold. (unofficial001.vpr@26.23--26.46) [58087]"}
            UnfoldingHeap[start_1, next] != end_1;
          perm := FullPerm;
          assert {:msg "  Precondition of function last might not hold. There might be insufficient permission to access P(start.next, end) (unofficial001.vpr@26.23--26.46) [58088]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(UnfoldingHeap[start_1, next], end_1)];
          if (x != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function last might not hold. There might be insufficient permission to access x.next (unofficial001.vpr@26.23--26.46) [58089]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[x, next];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume last#trigger(CombineFrames(UnfoldingHeap[null, P(UnfoldingHeap[start_1, next], end_1)], FrameFragment((if x != null then FrameFragment(UnfoldingHeap[x, next]) else EmptyFrame))), UnfoldingHeap[start_1, next], end_1, x);
        }
      }
      
      // -- Free assumptions (exp module)
        if (start_1 != end_1) {
          Heap := Heap[null, P#sm(start_1, end_1):=Heap[null, P#sm(start_1, end_1)][start_1, next:=true]];
          if (Heap[start_1, next] == null) {
          } else {
            havoc newPMask;
            assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
              { newPMask[o_5, f_11] }
              Heap[null, P#sm(start_1, end_1)][o_5, f_11] || Heap[null, P#sm(Heap[start_1, next], end_1)][o_5, f_11] ==> newPMask[o_5, f_11]
            );
            Heap := Heap[null, P#sm(start_1, end_1):=newPMask];
          }
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[start_1, next] != end_1 then last_1(Heap, Heap[start_1, next], end_1, x) else null);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(start_1: Ref, end_1: Ref): Field PredicateType_P FrameType;
function  P#sm(start_1: Ref, end_1: Ref): Field PredicateType_P PMaskType;
axiom (forall start_1: Ref, end_1: Ref ::
  { PredicateMaskField(P(start_1, end_1)) }
  PredicateMaskField(P(start_1, end_1)) == P#sm(start_1, end_1)
);
axiom (forall start_1: Ref, end_1: Ref ::
  { P(start_1, end_1) }
  IsPredicateField(P(start_1, end_1))
);
axiom (forall start_1: Ref, end_1: Ref ::
  { P(start_1, end_1) }
  getPredWandId(P(start_1, end_1)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall start_1: Ref, end_1: Ref, start2: Ref, end2: Ref ::
  { P(start_1, end_1), P(start2, end2) }
  P(start_1, end_1) == P(start2, end2) ==> start_1 == start2 && end_1 == end2
);
axiom (forall start_1: Ref, end_1: Ref, start2: Ref, end2: Ref ::
  { P#sm(start_1, end_1), P#sm(start2, end2) }
  P#sm(start_1, end_1) == P#sm(start2, end2) ==> start_1 == start2 && end_1 == end2
);

axiom (forall Heap: HeapType, start_1: Ref, end_1: Ref ::
  { P#trigger(Heap, P(start_1, end_1)) }
  P#everUsed(P(start_1, end_1))
);

procedure P#definedness(start_1: Ref, end_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[start_1, $allocated];
      assume Heap[end_1, $allocated];
    if (start_1 != end_1) {
      perm := FullPerm;
      assume start_1 != null;
      Mask := Mask[start_1, next:=Mask[start_1, next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of start.next == null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (unofficial001.vpr@10.1--17.2) [58090]"}
          HasDirectPerm(Mask, start_1, next);
      if (Heap[start_1, next] == null) {
        assume end_1 == null;
      } else {
        
        // -- Check definedness of acc(P(start.next, end), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (unofficial001.vpr@10.1--17.2) [58091]"}
            HasDirectPerm(Mask, start_1, next);
        perm := FullPerm;
        Mask := Mask[null, P(Heap[start_1, next], end_1):=Mask[null, P(Heap[start_1, next], end_1)] + perm];
        assume state(Heap, Mask);
      }
    }
    assume state(Heap, Mask);
}