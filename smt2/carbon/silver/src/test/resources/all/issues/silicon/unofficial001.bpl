// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:18:20
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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
function  last_1(Heap: HeapType, start: Ref, end: Ref, x: Ref): Ref;
function  last'(Heap: HeapType, start: Ref, end: Ref, x: Ref): Ref;
axiom (forall Heap: HeapType, start: Ref, end: Ref, x: Ref ::
  { last_1(Heap, start, end, x) }
  last_1(Heap, start, end, x) == last'(Heap, start, end, x) && dummyFunction(last#triggerStateless(start, end, x))
);
axiom (forall Heap: HeapType, start: Ref, end: Ref, x: Ref ::
  { last'(Heap, start, end, x) }
  dummyFunction(last#triggerStateless(start, end, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, start: Ref, end: Ref, x: Ref ::
  { state(Heap, Mask), last_1(Heap, start, end, x) } { state(Heap, Mask), last#triggerStateless(start, end, x), P#trigger(Heap, P(start, end)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> start != null && start != end ==> last_1(Heap, start, end, x) == (if Heap[start, next] != end then last'(Heap, Heap[start, next], end, x) else null)
);

// Framing axioms
function  last#frame(frame: FrameType, start: Ref, end: Ref, x: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, start: Ref, end: Ref, x: Ref ::
  { state(Heap, Mask), last'(Heap, start, end, x) } { state(Heap, Mask), last#triggerStateless(start, end, x), P#trigger(Heap, P(start, end)) }
  state(Heap, Mask) ==> last'(Heap, start, end, x) == last#frame(CombineFrames(Heap[null, P(start, end)], FrameFragment((if x != null then FrameFragment(Heap[x, next]) else EmptyFrame))), start, end, x)
);

// Trigger function (controlling recursive postconditions)
function  last#trigger(frame: FrameType, start: Ref, end: Ref, x: Ref): bool;

// State-independent trigger function
function  last#triggerStateless(start: Ref, end: Ref, x: Ref): Ref;

// Check contract well-formedness and postcondition
procedure last#definedness(start: Ref, end: Ref, x: Ref) returns (Result: Ref)
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
    assume Heap[start, $allocated];
    assume Heap[end, $allocated];
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume start != null;
    assume state(Heap, Mask);
    assume start != end;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(start, end):=Mask[null, P(start, end)] + perm];
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
      assume P#trigger(UnfoldingHeap, P(start, end));
      assume UnfoldingHeap[null, P(start, end)] == FrameFragment((if start != end then CombineFrames(FrameFragment(UnfoldingHeap[start, next]), FrameFragment((if UnfoldingHeap[start, next] == null then EmptyFrame else UnfoldingHeap[null, P(UnfoldingHeap[start, next], end)]))) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(start, end) (unofficial001.vpr@19.1--27.2) [215110]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(start, end)];
      if (start != end) {
        perm := FullPerm;
        assume start != null;
        UnfoldingMask := UnfoldingMask[start, next:=UnfoldingMask[start, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[start, next] == null) {
          assume end == null;
        } else {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, P(UnfoldingHeap[start, next], end):=UnfoldingMask[null, P(UnfoldingHeap[start, next], end)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(P(start, end), UnfoldingHeap[null, P(start, end)], P(UnfoldingHeap[start, next], end), UnfoldingHeap[null, P(UnfoldingHeap[start, next], end)]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (unofficial001.vpr@19.1--27.2) [215111]"}
        HasDirectPerm(UnfoldingMask, start, next);
      if (UnfoldingHeap[start, next] != end) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (unofficial001.vpr@19.1--27.2) [215112]"}
          HasDirectPerm(UnfoldingMask, start, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          assert {:msg "  Precondition of function last might not hold. Assertion start.next != null might not hold. (unofficial001.vpr@26.23--26.46) [215113]"}
            UnfoldingHeap[start, next] != null;
          assert {:msg "  Precondition of function last might not hold. Assertion start.next != end might not hold. (unofficial001.vpr@26.23--26.46) [215114]"}
            UnfoldingHeap[start, next] != end;
          perm := FullPerm;
          assert {:msg "  Precondition of function last might not hold. There might be insufficient permission to access P(start.next, end) (unofficial001.vpr@26.23--26.46) [215115]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(UnfoldingHeap[start, next], end)];
          if (x != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function last might not hold. There might be insufficient permission to access x.next (unofficial001.vpr@26.23--26.46) [215116]"}
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
          assume last#trigger(CombineFrames(UnfoldingHeap[null, P(UnfoldingHeap[start, next], end)], FrameFragment((if x != null then FrameFragment(UnfoldingHeap[x, next]) else EmptyFrame))), UnfoldingHeap[start, next], end, x);
        }
      }
      
      // -- Free assumptions (exp module)
        if (start != end) {
          Heap := Heap[null, P#sm(start, end):=Heap[null, P#sm(start, end)][start, next:=true]];
          if (Heap[start, next] == null) {
          } else {
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, P#sm(start, end)][o_15, f_20] || Heap[null, P#sm(Heap[start, next], end)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, P#sm(start, end):=newPMask];
          }
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[start, next] != end then last_1(Heap, Heap[start, next], end, x) else null);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(start: Ref, end: Ref): Field PredicateType_P FrameType;
function  P#sm(start: Ref, end: Ref): Field PredicateType_P PMaskType;
axiom (forall start: Ref, end: Ref ::
  { PredicateMaskField(P(start, end)) }
  PredicateMaskField(P(start, end)) == P#sm(start, end)
);
axiom (forall start: Ref, end: Ref ::
  { P(start, end) }
  IsPredicateField(P(start, end))
);
axiom (forall start: Ref, end: Ref ::
  { P(start, end) }
  getPredWandId(P(start, end)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall start: Ref, end: Ref, start2: Ref, end2: Ref ::
  { P(start, end), P(start2, end2) }
  P(start, end) == P(start2, end2) ==> start == start2 && end == end2
);
axiom (forall start: Ref, end: Ref, start2: Ref, end2: Ref ::
  { P#sm(start, end), P#sm(start2, end2) }
  P#sm(start, end) == P#sm(start2, end2) ==> start == start2 && end == end2
);

axiom (forall Heap: HeapType, start: Ref, end: Ref ::
  { P#trigger(Heap, P(start, end)) }
  P#everUsed(P(start, end))
);

procedure P#definedness(start: Ref, end: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[start, $allocated];
      assume Heap[end, $allocated];
    if (start != end) {
      perm := FullPerm;
      assume start != null;
      Mask := Mask[start, next:=Mask[start, next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of start.next == null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (unofficial001.vpr@10.1--17.2) [215117]"}
          HasDirectPerm(Mask, start, next);
      if (Heap[start, next] == null) {
        assume end == null;
      } else {
        
        // -- Check definedness of acc(P(start.next, end), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (unofficial001.vpr@10.1--17.2) [215118]"}
            HasDirectPerm(Mask, start, next);
        perm := FullPerm;
        Mask := Mask[null, P(Heap[start, next], end):=Mask[null, P(Heap[start, next], end)] + perm];
        assume state(Heap, Mask);
      }
    }
    assume state(Heap, Mask);
}