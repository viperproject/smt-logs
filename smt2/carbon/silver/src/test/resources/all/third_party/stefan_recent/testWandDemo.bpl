// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:42
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testWandDemo.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testWandDemo-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// - height 2: WandDemo__get
// - height 1: Wand_readonly_for_writeonly__get_out_1
// - height 0: Wand_readonly_for_writeonly__get_in_1
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

const unique Wand_readonly_for_writeonly__lemma: Field NormalField int;
axiom !IsPredicateField(Wand_readonly_for_writeonly__lemma);
axiom !IsWandField(Wand_readonly_for_writeonly__lemma);
const unique Wand_readonly_for_writeonly__in_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_readonly_for_writeonly__in_1);
axiom !IsWandField(Wand_readonly_for_writeonly__in_1);
const unique Wand_readonly_for_writeonly__out_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_readonly_for_writeonly__out_1);
axiom !IsWandField(Wand_readonly_for_writeonly__out_1);
const unique Wand_readonly_for_writeonly__this_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_readonly_for_writeonly__this_1);
axiom !IsWandField(Wand_readonly_for_writeonly__this_1);
const unique WandDemo__x: Field NormalField int;
axiom !IsPredicateField(WandDemo__x);
axiom !IsWandField(WandDemo__x);

// ==================================================
// Translation of function Wand_readonly_for_writeonly__get_in_1
// ==================================================

// Uninterpreted function definitions
function  Wand_readonly_for_writeonly__get_in_1(Heap: HeapType, diz: Ref): Ref;
function  Wand_readonly_for_writeonly__get_in_1'(Heap: HeapType, diz: Ref): Ref;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_readonly_for_writeonly__get_in_1(Heap, diz) }
  Wand_readonly_for_writeonly__get_in_1(Heap, diz) == Wand_readonly_for_writeonly__get_in_1'(Heap, diz) && dummyFunction(Wand_readonly_for_writeonly__get_in_1#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_readonly_for_writeonly__get_in_1'(Heap, diz) }
  dummyFunction(Wand_readonly_for_writeonly__get_in_1#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonly__get_in_1(Heap, diz) } { state(Heap, Mask), Wand_readonly_for_writeonly__get_in_1#triggerStateless(diz), Wand_readonly_for_writeonly__valid_wand#trigger(Heap, Wand_readonly_for_writeonly__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> diz != null ==> Wand_readonly_for_writeonly__get_in_1(Heap, diz) == Heap[diz, Wand_readonly_for_writeonly__in_1]
);

// Framing axioms
function  Wand_readonly_for_writeonly__get_in_1#frame(frame: FrameType, diz: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonly__get_in_1'(Heap, diz) }
  state(Heap, Mask) ==> Wand_readonly_for_writeonly__get_in_1'(Heap, diz) == Wand_readonly_for_writeonly__get_in_1#frame(Heap[null, Wand_readonly_for_writeonly__valid_wand(diz)], diz)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonly__get_in_1'(Heap, diz) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || Wand_readonly_for_writeonly__get_in_1#trigger(Heap[null, Wand_readonly_for_writeonly__valid_wand(diz)], diz)) ==> diz != null ==> Wand_readonly_for_writeonly__get_in_1'(Heap, diz) != null
);

// Trigger function (controlling recursive postconditions)
function  Wand_readonly_for_writeonly__get_in_1#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_readonly_for_writeonly__get_in_1#triggerStateless(diz: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Wand_readonly_for_writeonly__get_in_1#definedness(diz: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(diz):=Mask[null, Wand_readonly_for_writeonly__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_readonly_for_writeonly__valid_wand(diz), write) in diz.Wand_readonly_for_writeonly__in_1)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_readonly_for_writeonly__valid_wand#trigger(UnfoldingHeap, Wand_readonly_for_writeonly__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_readonly_for_writeonly__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_readonly_for_writeonly__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_readonly_for_writeonly__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1]), FrameFragment((if UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma] == 1 then FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x]) else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(diz) (testWandDemo.vpr@14.1--20.2) [34641]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_readonly_for_writeonly__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_readonly_for_writeonly__lemma:=UnfoldingMask[diz, Wand_readonly_for_writeonly__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_readonly_for_writeonly__in_1:=UnfoldingMask[diz, Wand_readonly_for_writeonly__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_readonly_for_writeonly__out_1:=UnfoldingMask[diz, Wand_readonly_for_writeonly__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_readonly_for_writeonly__this_1:=UnfoldingMask[diz, Wand_readonly_for_writeonly__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1] != null;
        perm := 3 / 4;
        assert {:msg "  Function might not be well-formed. Fraction 3 / 4 might be negative. (testWandDemo.vpr@14.1--20.2) [34642]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=UnfoldingMask[UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__in_1] == UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1];
        assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__out_1] == UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1];
      }
      assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma] <= 1;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@14.1--20.2) [34643]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_readonly_for_writeonly__in_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][diz, Wand_readonly_for_writeonly__lemma:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][diz, Wand_readonly_for_writeonly__in_1:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][diz, Wand_readonly_for_writeonly__out_1:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][diz, Wand_readonly_for_writeonly__this_1:=true]];
        if (Heap[diz, Wand_readonly_for_writeonly__lemma] == 1) {
          Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=true]];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_readonly_for_writeonly__in_1];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_readonly_for_writeonly__get_in_1 might not hold. Assertion result != null might not hold. (testWandDemo.vpr@17.11--17.25) [34644]"}
      Result != null;
}

// ==================================================
// Translation of function Wand_readonly_for_writeonly__get_out_1
// ==================================================

// Uninterpreted function definitions
function  Wand_readonly_for_writeonly__get_out_1(Heap: HeapType, diz: Ref): Ref;
function  Wand_readonly_for_writeonly__get_out_1'(Heap: HeapType, diz: Ref): Ref;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_readonly_for_writeonly__get_out_1(Heap, diz) }
  Wand_readonly_for_writeonly__get_out_1(Heap, diz) == Wand_readonly_for_writeonly__get_out_1'(Heap, diz) && dummyFunction(Wand_readonly_for_writeonly__get_out_1#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_readonly_for_writeonly__get_out_1'(Heap, diz) }
  dummyFunction(Wand_readonly_for_writeonly__get_out_1#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonly__get_out_1(Heap, diz) } { state(Heap, Mask), Wand_readonly_for_writeonly__get_out_1#triggerStateless(diz), Wand_readonly_for_writeonly__valid_wand#trigger(Heap, Wand_readonly_for_writeonly__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> diz != null ==> Wand_readonly_for_writeonly__get_out_1(Heap, diz) == Heap[diz, Wand_readonly_for_writeonly__out_1]
);

// Framing axioms
function  Wand_readonly_for_writeonly__get_out_1#frame(frame: FrameType, diz: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonly__get_out_1'(Heap, diz) }
  state(Heap, Mask) ==> Wand_readonly_for_writeonly__get_out_1'(Heap, diz) == Wand_readonly_for_writeonly__get_out_1#frame(Heap[null, Wand_readonly_for_writeonly__valid_wand(diz)], diz)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonly__get_out_1'(Heap, diz) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Wand_readonly_for_writeonly__get_out_1#trigger(Heap[null, Wand_readonly_for_writeonly__valid_wand(diz)], diz)) ==> diz != null ==> Wand_readonly_for_writeonly__get_out_1'(Heap, diz) != null
);

// Trigger function (controlling recursive postconditions)
function  Wand_readonly_for_writeonly__get_out_1#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_readonly_for_writeonly__get_out_1#triggerStateless(diz: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Wand_readonly_for_writeonly__get_out_1#definedness(diz: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(diz):=Mask[null, Wand_readonly_for_writeonly__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_readonly_for_writeonly__valid_wand(diz), write) in diz.Wand_readonly_for_writeonly__out_1)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_readonly_for_writeonly__valid_wand#trigger(UnfoldingHeap, Wand_readonly_for_writeonly__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_readonly_for_writeonly__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_readonly_for_writeonly__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_readonly_for_writeonly__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1]), FrameFragment((if UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma] == 1 then FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x]) else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(diz) (testWandDemo.vpr@22.1--28.2) [34645]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_readonly_for_writeonly__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_readonly_for_writeonly__lemma:=UnfoldingMask[diz, Wand_readonly_for_writeonly__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_readonly_for_writeonly__in_1:=UnfoldingMask[diz, Wand_readonly_for_writeonly__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_readonly_for_writeonly__out_1:=UnfoldingMask[diz, Wand_readonly_for_writeonly__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_readonly_for_writeonly__this_1:=UnfoldingMask[diz, Wand_readonly_for_writeonly__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1] != null;
        perm := 3 / 4;
        assert {:msg "  Function might not be well-formed. Fraction 3 / 4 might be negative. (testWandDemo.vpr@22.1--28.2) [34646]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=UnfoldingMask[UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__in_1] == UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1];
        assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__out_1] == UnfoldingHeap[diz, Wand_readonly_for_writeonly__this_1];
      }
      assume UnfoldingHeap[diz, Wand_readonly_for_writeonly__lemma] <= 1;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@22.1--28.2) [34647]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_readonly_for_writeonly__out_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][diz, Wand_readonly_for_writeonly__lemma:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][diz, Wand_readonly_for_writeonly__in_1:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][diz, Wand_readonly_for_writeonly__out_1:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][diz, Wand_readonly_for_writeonly__this_1:=true]];
        if (Heap[diz, Wand_readonly_for_writeonly__lemma] == 1) {
          Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(diz)][Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=true]];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_readonly_for_writeonly__out_1];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_readonly_for_writeonly__get_out_1 might not hold. Assertion result != null might not hold. (testWandDemo.vpr@25.11--25.25) [34648]"}
      Result != null;
}

// ==================================================
// Translation of function WandDemo__get
// ==================================================

// Uninterpreted function definitions
function  WandDemo__get(Heap: HeapType, diz: Ref): int;
function  WandDemo__get'(Heap: HeapType, diz: Ref): int;
axiom (forall Heap: HeapType, diz: Ref ::
  { WandDemo__get(Heap, diz) }
  WandDemo__get(Heap, diz) == WandDemo__get'(Heap, diz) && dummyFunction(WandDemo__get#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { WandDemo__get'(Heap, diz) }
  dummyFunction(WandDemo__get#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), WandDemo__get(Heap, diz) } { state(Heap, Mask), WandDemo__get#triggerStateless(diz), WandDemo__readonly#trigger(Heap, WandDemo__readonly(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> diz != null ==> WandDemo__get(Heap, diz) == Heap[diz, WandDemo__x]
);

// Framing axioms
function  WandDemo__get#frame(frame: FrameType, diz: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), WandDemo__get'(Heap, diz) }
  state(Heap, Mask) ==> WandDemo__get'(Heap, diz) == WandDemo__get#frame(Heap[null, WandDemo__readonly(diz)], diz)
);

// Trigger function (controlling recursive postconditions)
function  WandDemo__get#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  WandDemo__get#triggerStateless(diz: Ref): int;

// Check contract well-formedness and postcondition
procedure WandDemo__get#definedness(diz: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, WandDemo__readonly(diz):=Mask[null, WandDemo__readonly(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(WandDemo__readonly(diz), write) in diz.WandDemo__x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume WandDemo__readonly#trigger(UnfoldingHeap, WandDemo__readonly(diz));
      assume UnfoldingHeap[null, WandDemo__readonly(diz)] == FrameFragment(UnfoldingHeap[diz, WandDemo__x]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access WandDemo__readonly(diz) (testWandDemo.vpr@30.1--35.2) [34649]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, WandDemo__readonly(diz)];
      perm := 1 / 4;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 4 might be negative. (testWandDemo.vpr@30.1--35.2) [34650]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> diz != null;
      UnfoldingMask := UnfoldingMask[diz, WandDemo__x:=UnfoldingMask[diz, WandDemo__x] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.WandDemo__x (testWandDemo.vpr@30.1--35.2) [34651]"}
        HasDirectPerm(UnfoldingMask, diz, WandDemo__x);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, WandDemo__readonly#sm(diz):=Heap[null, WandDemo__readonly#sm(diz)][diz, WandDemo__x:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, WandDemo__x];
}

// ==================================================
// Translation of predicate Wand_readonly_for_writeonly__valid_wand
// ==================================================

type PredicateType_Wand_readonly_for_writeonly__valid_wand;
function  Wand_readonly_for_writeonly__valid_wand(diz: Ref): Field PredicateType_Wand_readonly_for_writeonly__valid_wand FrameType;
function  Wand_readonly_for_writeonly__valid_wand#sm(diz: Ref): Field PredicateType_Wand_readonly_for_writeonly__valid_wand PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Wand_readonly_for_writeonly__valid_wand(diz)) }
  PredicateMaskField(Wand_readonly_for_writeonly__valid_wand(diz)) == Wand_readonly_for_writeonly__valid_wand#sm(diz)
);
axiom (forall diz: Ref ::
  { Wand_readonly_for_writeonly__valid_wand(diz) }
  IsPredicateField(Wand_readonly_for_writeonly__valid_wand(diz))
);
axiom (forall diz: Ref ::
  { Wand_readonly_for_writeonly__valid_wand(diz) }
  getPredWandId(Wand_readonly_for_writeonly__valid_wand(diz)) == 0
);
function  Wand_readonly_for_writeonly__valid_wand#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Wand_readonly_for_writeonly__valid_wand#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Wand_readonly_for_writeonly__valid_wand(diz), Wand_readonly_for_writeonly__valid_wand(diz2) }
  Wand_readonly_for_writeonly__valid_wand(diz) == Wand_readonly_for_writeonly__valid_wand(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Wand_readonly_for_writeonly__valid_wand#sm(diz), Wand_readonly_for_writeonly__valid_wand#sm(diz2) }
  Wand_readonly_for_writeonly__valid_wand#sm(diz) == Wand_readonly_for_writeonly__valid_wand#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_readonly_for_writeonly__valid_wand#trigger(Heap, Wand_readonly_for_writeonly__valid_wand(diz)) }
  Wand_readonly_for_writeonly__valid_wand#everUsed(Wand_readonly_for_writeonly__valid_wand(diz))
);

procedure Wand_readonly_for_writeonly__valid_wand#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of Wand_readonly_for_writeonly__valid_wand
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_readonly_for_writeonly__lemma:=Mask[diz, Wand_readonly_for_writeonly__lemma] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of 1 <= diz.Wand_readonly_for_writeonly__lemma
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@37.1--39.2) [34652]"}
        HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__lemma);
    assume 1 <= Heap[diz, Wand_readonly_for_writeonly__lemma];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_readonly_for_writeonly__in_1:=Mask[diz, Wand_readonly_for_writeonly__in_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_readonly_for_writeonly__in_1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@37.1--39.2) [34653]"}
        HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__in_1);
    assume Heap[diz, Wand_readonly_for_writeonly__in_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_readonly_for_writeonly__out_1:=Mask[diz, Wand_readonly_for_writeonly__out_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_readonly_for_writeonly__out_1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@37.1--39.2) [34654]"}
        HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__out_1);
    assume Heap[diz, Wand_readonly_for_writeonly__out_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_readonly_for_writeonly__this_1:=Mask[diz, Wand_readonly_for_writeonly__this_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_readonly_for_writeonly__lemma == 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@37.1--39.2) [34655]"}
        HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__lemma);
    if (Heap[diz, Wand_readonly_for_writeonly__lemma] == 1) {
      
      // -- Check definedness of diz.Wand_readonly_for_writeonly__this_1 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@37.1--39.2) [34656]"}
          HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__this_1);
      assume Heap[diz, Wand_readonly_for_writeonly__this_1] != null;
      
      // -- Check definedness of acc(diz.Wand_readonly_for_writeonly__this_1.WandDemo__x, 3 / 4)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@37.1--39.2) [34657]"}
          HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__this_1);
      perm := 3 / 4;
      assert {:msg "  Predicate might not be well-formed. Fraction 3 / 4 might be negative. (testWandDemo.vpr@37.1--39.2) [34658]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[diz, Wand_readonly_for_writeonly__this_1] != null;
      Mask := Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.Wand_readonly_for_writeonly__in_1 == diz.Wand_readonly_for_writeonly__this_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@37.1--39.2) [34659]"}
          HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@37.1--39.2) [34660]"}
          HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__this_1);
      assume Heap[diz, Wand_readonly_for_writeonly__in_1] == Heap[diz, Wand_readonly_for_writeonly__this_1];
      
      // -- Check definedness of diz.Wand_readonly_for_writeonly__out_1 == diz.Wand_readonly_for_writeonly__this_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@37.1--39.2) [34661]"}
          HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@37.1--39.2) [34662]"}
          HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__this_1);
      assume Heap[diz, Wand_readonly_for_writeonly__out_1] == Heap[diz, Wand_readonly_for_writeonly__this_1];
    }
    
    // -- Check definedness of diz.Wand_readonly_for_writeonly__lemma <= 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@37.1--39.2) [34663]"}
        HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__lemma);
    assume Heap[diz, Wand_readonly_for_writeonly__lemma] <= 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate WandDemo__readonly
// ==================================================

type PredicateType_WandDemo__readonly;
function  WandDemo__readonly(diz: Ref): Field PredicateType_WandDemo__readonly FrameType;
function  WandDemo__readonly#sm(diz: Ref): Field PredicateType_WandDemo__readonly PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(WandDemo__readonly(diz)) }
  PredicateMaskField(WandDemo__readonly(diz)) == WandDemo__readonly#sm(diz)
);
axiom (forall diz: Ref ::
  { WandDemo__readonly(diz) }
  IsPredicateField(WandDemo__readonly(diz))
);
axiom (forall diz: Ref ::
  { WandDemo__readonly(diz) }
  getPredWandId(WandDemo__readonly(diz)) == 1
);
function  WandDemo__readonly#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  WandDemo__readonly#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { WandDemo__readonly(diz), WandDemo__readonly(diz2) }
  WandDemo__readonly(diz) == WandDemo__readonly(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { WandDemo__readonly#sm(diz), WandDemo__readonly#sm(diz2) }
  WandDemo__readonly#sm(diz) == WandDemo__readonly#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { WandDemo__readonly#trigger(Heap, WandDemo__readonly(diz)) }
  WandDemo__readonly#everUsed(WandDemo__readonly(diz))
);

procedure WandDemo__readonly#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of WandDemo__readonly
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := 1 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 4 might be negative. (testWandDemo.vpr@41.1--43.2) [34664]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, WandDemo__x:=Mask[diz, WandDemo__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate WandDemo__writeonly
// ==================================================

type PredicateType_WandDemo__writeonly;
function  WandDemo__writeonly(diz: Ref): Field PredicateType_WandDemo__writeonly FrameType;
function  WandDemo__writeonly#sm(diz: Ref): Field PredicateType_WandDemo__writeonly PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(WandDemo__writeonly(diz)) }
  PredicateMaskField(WandDemo__writeonly(diz)) == WandDemo__writeonly#sm(diz)
);
axiom (forall diz: Ref ::
  { WandDemo__writeonly(diz) }
  IsPredicateField(WandDemo__writeonly(diz))
);
axiom (forall diz: Ref ::
  { WandDemo__writeonly(diz) }
  getPredWandId(WandDemo__writeonly(diz)) == 2
);
function  WandDemo__writeonly#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  WandDemo__writeonly#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { WandDemo__writeonly(diz), WandDemo__writeonly(diz2) }
  WandDemo__writeonly(diz) == WandDemo__writeonly(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { WandDemo__writeonly#sm(diz), WandDemo__writeonly#sm(diz2) }
  WandDemo__writeonly#sm(diz) == WandDemo__writeonly#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { WandDemo__writeonly#trigger(Heap, WandDemo__writeonly(diz)) }
  WandDemo__writeonly#everUsed(WandDemo__writeonly(diz))
);

procedure WandDemo__writeonly#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of WandDemo__writeonly
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, WandDemo__x:=Mask[diz, WandDemo__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Wand_readonly_for_writeonly___apply
// ==================================================

procedure Wand_readonly_for_writeonly___apply(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  var freshVersion: FrameType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(diz):=Mask[null, Wand_readonly_for_writeonly__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(WandDemo__readonly(Wand_readonly_for_writeonly__get_in_1(diz)), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_in_1 might not hold. Assertion diz != null might not hold. (testWandDemo.vpr@53.35--53.77) [34665]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_in_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(diz) (testWandDemo.vpr@53.35--53.77) [34666]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_readonly_for_writeonly__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    Mask := Mask[null, WandDemo__readonly(Wand_readonly_for_writeonly__get_in_1(Heap, diz)):=Mask[null, WandDemo__readonly(Wand_readonly_for_writeonly__get_in_1(Heap, diz))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_readonly_for_writeonly__get_out_1(diz) != null
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. Assertion diz != null might not hold. (testWandDemo.vpr@54.12--54.55) [34667]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(diz) (testWandDemo.vpr@54.12--54.55) [34668]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_readonly_for_writeonly__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_readonly_for_writeonly__get_out_1(Heap, diz) != null;
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(WandDemo__writeonly(old(Wand_readonly_for_writeonly__get_out_1(diz))), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. Assertion diz != null might not hold. (testWandDemo.vpr@55.39--55.82) [34669]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(diz) (testWandDemo.vpr@55.39--55.82) [34670]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_readonly_for_writeonly__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    PostMask := PostMask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(oldHeap, diz)):=PostMask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(oldHeap, diz))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Wand_readonly_for_writeonly__valid_wand(diz), write) -- testWandDemo.vpr@57.3--57.66
    assume Wand_readonly_for_writeonly__valid_wand#trigger(Heap, Wand_readonly_for_writeonly__valid_wand(diz));
    assume Heap[null, Wand_readonly_for_writeonly__valid_wand(diz)] == CombineFrames(FrameFragment(Heap[diz, Wand_readonly_for_writeonly__lemma]), CombineFrames(FrameFragment(Heap[diz, Wand_readonly_for_writeonly__in_1]), CombineFrames(FrameFragment(Heap[diz, Wand_readonly_for_writeonly__out_1]), CombineFrames(FrameFragment(Heap[diz, Wand_readonly_for_writeonly__this_1]), FrameFragment((if Heap[diz, Wand_readonly_for_writeonly__lemma] == 1 then FrameFragment(Heap[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x]) else EmptyFrame))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Wand_readonly_for_writeonly__valid_wand(diz) might fail. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(diz) (testWandDemo.vpr@57.3--57.66) [34673]"}
        perm <= Mask[null, Wand_readonly_for_writeonly__valid_wand(diz)];
    }
    Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(diz):=Mask[null, Wand_readonly_for_writeonly__valid_wand(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Wand_readonly_for_writeonly__valid_wand(diz))) {
        havoc newVersion;
        Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand(diz):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_readonly_for_writeonly__lemma:=Mask[diz, Wand_readonly_for_writeonly__lemma] + perm];
    assume state(Heap, Mask);
    assume 1 <= Heap[diz, Wand_readonly_for_writeonly__lemma];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_readonly_for_writeonly__in_1:=Mask[diz, Wand_readonly_for_writeonly__in_1] + perm];
    assume state(Heap, Mask);
    assume Heap[diz, Wand_readonly_for_writeonly__in_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_readonly_for_writeonly__out_1:=Mask[diz, Wand_readonly_for_writeonly__out_1] + perm];
    assume state(Heap, Mask);
    assume Heap[diz, Wand_readonly_for_writeonly__out_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_readonly_for_writeonly__this_1:=Mask[diz, Wand_readonly_for_writeonly__this_1] + perm];
    assume state(Heap, Mask);
    if (Heap[diz, Wand_readonly_for_writeonly__lemma] == 1) {
      assume Heap[diz, Wand_readonly_for_writeonly__this_1] != null;
      perm := 3 / 4;
      assert {:msg "  Unfolding Wand_readonly_for_writeonly__valid_wand(diz) might fail. Fraction 3 / 4 might be negative. (testWandDemo.vpr@57.3--57.66) [34674]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[diz, Wand_readonly_for_writeonly__this_1] != null;
      Mask := Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Wand_readonly_for_writeonly__in_1] == Heap[diz, Wand_readonly_for_writeonly__this_1];
      assume Heap[diz, Wand_readonly_for_writeonly__out_1] == Heap[diz, Wand_readonly_for_writeonly__this_1];
    }
    assume Heap[diz, Wand_readonly_for_writeonly__lemma] <= 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (diz.Wand_readonly_for_writeonly__lemma == 1) -- testWandDemo.vpr@58.3--63.4
    
    // -- Check definedness of diz.Wand_readonly_for_writeonly__lemma == 1
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@58.7--58.50) [34675]"}
        HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__lemma);
    if (Heap[diz, Wand_readonly_for_writeonly__lemma] == 1) {
      
      // -- Translating statement: unfold acc(WandDemo__readonly(diz.Wand_readonly_for_writeonly__this_1), write) -- testWandDemo.vpr@59.5--59.83
        
        // -- Check definedness of acc(WandDemo__readonly(diz.Wand_readonly_for_writeonly__this_1), write)
          assert {:msg "  Unfolding WandDemo__readonly(diz.Wand_readonly_for_writeonly__this_1) might fail. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@59.5--59.83) [34676]"}
            HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__this_1);
        assume WandDemo__readonly#trigger(Heap, WandDemo__readonly(Heap[diz, Wand_readonly_for_writeonly__this_1]));
        assume Heap[null, WandDemo__readonly(Heap[diz, Wand_readonly_for_writeonly__this_1])] == FrameFragment(Heap[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x]);
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding WandDemo__readonly(diz.Wand_readonly_for_writeonly__this_1) might fail. There might be insufficient permission to access WandDemo__readonly(diz.Wand_readonly_for_writeonly__this_1) (testWandDemo.vpr@59.5--59.83) [34679]"}
            perm <= Mask[null, WandDemo__readonly(Heap[diz, Wand_readonly_for_writeonly__this_1])];
        }
        Mask := Mask[null, WandDemo__readonly(Heap[diz, Wand_readonly_for_writeonly__this_1]):=Mask[null, WandDemo__readonly(Heap[diz, Wand_readonly_for_writeonly__this_1])] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, WandDemo__readonly(Heap[diz, Wand_readonly_for_writeonly__this_1]))) {
            havoc newVersion;
            Heap := Heap[null, WandDemo__readonly(Heap[diz, Wand_readonly_for_writeonly__this_1]):=newVersion];
          }
        perm := 1 / 4;
        assert {:msg "  Unfolding WandDemo__readonly(diz.Wand_readonly_for_writeonly__this_1) might fail. Fraction 1 / 4 might be negative. (testWandDemo.vpr@59.5--59.83) [34680]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Heap[diz, Wand_readonly_for_writeonly__this_1] != null;
        Mask := Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(WandDemo__writeonly(diz.Wand_readonly_for_writeonly__this_1), write) -- testWandDemo.vpr@60.5--60.82
        
        // -- Check definedness of acc(WandDemo__writeonly(diz.Wand_readonly_for_writeonly__this_1), write)
          assert {:msg "  Folding WandDemo__writeonly(diz.Wand_readonly_for_writeonly__this_1) might fail. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@60.5--60.82) [34681]"}
            HasDirectPerm(Mask, diz, Wand_readonly_for_writeonly__this_1);
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding WandDemo__writeonly(diz.Wand_readonly_for_writeonly__this_1) might fail. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__this_1.WandDemo__x (testWandDemo.vpr@60.5--60.82) [34684]"}
            perm <= Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x];
        }
        Mask := Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=Mask[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x] - perm];
        perm := FullPerm;
        Mask := Mask[null, WandDemo__writeonly(Heap[diz, Wand_readonly_for_writeonly__this_1]):=Mask[null, WandDemo__writeonly(Heap[diz, Wand_readonly_for_writeonly__this_1])] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume WandDemo__writeonly#trigger(Heap, WandDemo__writeonly(Heap[diz, Wand_readonly_for_writeonly__this_1]));
        assume Heap[null, WandDemo__writeonly(Heap[diz, Wand_readonly_for_writeonly__this_1])] == FrameFragment(Heap[Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x]);
        if (!HasDirectPerm(Mask, null, WandDemo__writeonly(Heap[diz, Wand_readonly_for_writeonly__this_1]))) {
          Heap := Heap[null, WandDemo__writeonly#sm(Heap[diz, Wand_readonly_for_writeonly__this_1]):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, WandDemo__writeonly(Heap[diz, Wand_readonly_for_writeonly__this_1]):=freshVersion];
        }
        Heap := Heap[null, WandDemo__writeonly#sm(Heap[diz, Wand_readonly_for_writeonly__this_1]):=Heap[null, WandDemo__writeonly#sm(Heap[diz, Wand_readonly_for_writeonly__this_1])][Heap[diz, Wand_readonly_for_writeonly__this_1], WandDemo__x:=true]];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(WandDemo__writeonly(old(Wand_readonly_for_writeonly__get_out_1(diz))), write) -- testWandDemo.vpr@61.5--61.93
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        
        // -- Check definedness of acc(WandDemo__writeonly(old(Wand_readonly_for_writeonly__get_out_1(diz))), write)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. Assertion diz != null might not hold. (testWandDemo.vpr@61.40--61.83) [34686]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(diz) (testWandDemo.vpr@61.40--61.83) [34687]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_readonly_for_writeonly__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access WandDemo__writeonly(old(Wand_readonly_for_writeonly__get_out_1(diz))) (testWandDemo.vpr@61.12--61.93) [34689]"}
            perm <= AssertMask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(oldHeap, diz))];
        }
        AssertMask := AssertMask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(oldHeap, diz)):=AssertMask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(oldHeap, diz))] - perm];
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testWandDemo.vpr@62.5--62.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonly___apply might not hold. There might be insufficient permission to access WandDemo__writeonly(old(Wand_readonly_for_writeonly__get_out_1(diz))) (testWandDemo.vpr@55.11--55.92) [34690]"}
        perm <= Mask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(oldHeap, diz))];
    }
    Mask := Mask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(oldHeap, diz)):=Mask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(oldHeap, diz))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Wand_readonly_for_writeonly__Wand_readonly_for_writeonly
// ==================================================

procedure Wand_readonly_for_writeonly__Wand_readonly_for_writeonly(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_1: int;
  var __flatten_15: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_readonly_for_writeonly__lemma:=PostMask[sys__result, Wand_readonly_for_writeonly__lemma] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_readonly_for_writeonly__lemma == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@69.11--69.126) [34691]"}
        HasDirectPerm(PostMask, sys__result, Wand_readonly_for_writeonly__lemma);
    assume PostHeap[sys__result, Wand_readonly_for_writeonly__lemma] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_readonly_for_writeonly__in_1:=PostMask[sys__result, Wand_readonly_for_writeonly__in_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_readonly_for_writeonly__in_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@70.11--70.127) [34692]"}
        HasDirectPerm(PostMask, sys__result, Wand_readonly_for_writeonly__in_1);
    assume PostHeap[sys__result, Wand_readonly_for_writeonly__in_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_readonly_for_writeonly__out_1:=PostMask[sys__result, Wand_readonly_for_writeonly__out_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_readonly_for_writeonly__out_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@71.11--71.129) [34693]"}
        HasDirectPerm(PostMask, sys__result, Wand_readonly_for_writeonly__out_1);
    assume PostHeap[sys__result, Wand_readonly_for_writeonly__out_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_readonly_for_writeonly__this_1:=PostMask[sys__result, Wand_readonly_for_writeonly__this_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_readonly_for_writeonly__this_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@72.11--72.131) [34694]"}
        HasDirectPerm(PostMask, sys__result, Wand_readonly_for_writeonly__this_1);
    assume PostHeap[sys__result, Wand_readonly_for_writeonly__this_1] == null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Wand_readonly_for_writeonly__lemma, Wand_readonly_for_writeonly__in_1, Wand_readonly_for_writeonly__out_1, Wand_readonly_for_writeonly__this_1) -- testWandDemo.vpr@77.3--77.157
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Wand_readonly_for_writeonly__lemma:=Mask[diz, Wand_readonly_for_writeonly__lemma] + FullPerm];
    Mask := Mask[diz, Wand_readonly_for_writeonly__in_1:=Mask[diz, Wand_readonly_for_writeonly__in_1] + FullPerm];
    Mask := Mask[diz, Wand_readonly_for_writeonly__out_1:=Mask[diz, Wand_readonly_for_writeonly__out_1] + FullPerm];
    Mask := Mask[diz, Wand_readonly_for_writeonly__this_1:=Mask[diz, Wand_readonly_for_writeonly__this_1] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := 0 -- testWandDemo.vpr@78.3--78.19
    __flatten_1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_15 := __flatten_1 -- testWandDemo.vpr@79.3--79.30
    __flatten_15 := __flatten_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_readonly_for_writeonly__lemma := __flatten_15 -- testWandDemo.vpr@80.3--80.57
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@80.3--80.57) [34695]"}
      FullPerm == Mask[diz, Wand_readonly_for_writeonly__lemma];
    Heap := Heap[diz, Wand_readonly_for_writeonly__lemma:=__flatten_15];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_readonly_for_writeonly__in_1 := null -- testWandDemo.vpr@81.3--81.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@81.3--81.48) [34696]"}
      FullPerm == Mask[diz, Wand_readonly_for_writeonly__in_1];
    Heap := Heap[diz, Wand_readonly_for_writeonly__in_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_readonly_for_writeonly__out_1 := null -- testWandDemo.vpr@82.3--82.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@82.3--82.49) [34697]"}
      FullPerm == Mask[diz, Wand_readonly_for_writeonly__out_1];
    Heap := Heap[diz, Wand_readonly_for_writeonly__out_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_readonly_for_writeonly__this_1 := null -- testWandDemo.vpr@83.3--83.50
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@83.3--83.50) [34698]"}
      FullPerm == Mask[diz, Wand_readonly_for_writeonly__this_1];
    Heap := Heap[diz, Wand_readonly_for_writeonly__this_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testWandDemo.vpr@84.3--84.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Wand_readonly_for_writeonly__lemma, write) &&
  //   sys__result.Wand_readonly_for_writeonly__lemma == 0 &&
  //   (acc(sys__result.Wand_readonly_for_writeonly__in_1, write) &&
  //   sys__result.Wand_readonly_for_writeonly__in_1 == null &&
  //   (acc(sys__result.Wand_readonly_for_writeonly__out_1, write) &&
  //   sys__result.Wand_readonly_for_writeonly__out_1 == null &&
  //   (acc(sys__result.Wand_readonly_for_writeonly__this_1, write) &&
  //   sys__result.Wand_readonly_for_writeonly__this_1 == null)))) -- testWandDemo.vpr@85.3--85.524
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testWandDemo.vpr@85.10--85.524) [34699]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@85.10--85.524) [34701]"}
        perm <= AssertMask[sys__result, Wand_readonly_for_writeonly__lemma];
    }
    AssertMask := AssertMask[sys__result, Wand_readonly_for_writeonly__lemma:=AssertMask[sys__result, Wand_readonly_for_writeonly__lemma] - perm];
    
    // -- Check definedness of sys__result.Wand_readonly_for_writeonly__lemma == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@85.10--85.524) [34702]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_readonly_for_writeonly__lemma);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_readonly_for_writeonly__lemma == 0 might not hold. (testWandDemo.vpr@85.10--85.524) [34703]"}
      AssertHeap[sys__result, Wand_readonly_for_writeonly__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@85.10--85.524) [34705]"}
        perm <= AssertMask[sys__result, Wand_readonly_for_writeonly__in_1];
    }
    AssertMask := AssertMask[sys__result, Wand_readonly_for_writeonly__in_1:=AssertMask[sys__result, Wand_readonly_for_writeonly__in_1] - perm];
    
    // -- Check definedness of sys__result.Wand_readonly_for_writeonly__in_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@85.10--85.524) [34706]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_readonly_for_writeonly__in_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_readonly_for_writeonly__in_1 == null might not hold. (testWandDemo.vpr@85.10--85.524) [34707]"}
      AssertHeap[sys__result, Wand_readonly_for_writeonly__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@85.10--85.524) [34709]"}
        perm <= AssertMask[sys__result, Wand_readonly_for_writeonly__out_1];
    }
    AssertMask := AssertMask[sys__result, Wand_readonly_for_writeonly__out_1:=AssertMask[sys__result, Wand_readonly_for_writeonly__out_1] - perm];
    
    // -- Check definedness of sys__result.Wand_readonly_for_writeonly__out_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@85.10--85.524) [34710]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_readonly_for_writeonly__out_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_readonly_for_writeonly__out_1 == null might not hold. (testWandDemo.vpr@85.10--85.524) [34711]"}
      AssertHeap[sys__result, Wand_readonly_for_writeonly__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@85.10--85.524) [34713]"}
        perm <= AssertMask[sys__result, Wand_readonly_for_writeonly__this_1];
    }
    AssertMask := AssertMask[sys__result, Wand_readonly_for_writeonly__this_1:=AssertMask[sys__result, Wand_readonly_for_writeonly__this_1] - perm];
    
    // -- Check definedness of sys__result.Wand_readonly_for_writeonly__this_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@85.10--85.524) [34714]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_readonly_for_writeonly__this_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_readonly_for_writeonly__this_1 == null might not hold. (testWandDemo.vpr@85.10--85.524) [34715]"}
      AssertHeap[sys__result, Wand_readonly_for_writeonly__this_1] == null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testWandDemo.vpr@86.3--86.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. Assertion sys__result != null might not hold. (testWandDemo.vpr@68.11--68.30) [34716]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@69.11--69.126) [34717]"}
        perm <= Mask[sys__result, Wand_readonly_for_writeonly__lemma];
    }
    Mask := Mask[sys__result, Wand_readonly_for_writeonly__lemma:=Mask[sys__result, Wand_readonly_for_writeonly__lemma] - perm];
    assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. Assertion sys__result.Wand_readonly_for_writeonly__lemma == 0 might not hold. (testWandDemo.vpr@69.11--69.126) [34718]"}
      Heap[sys__result, Wand_readonly_for_writeonly__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@70.11--70.127) [34719]"}
        perm <= Mask[sys__result, Wand_readonly_for_writeonly__in_1];
    }
    Mask := Mask[sys__result, Wand_readonly_for_writeonly__in_1:=Mask[sys__result, Wand_readonly_for_writeonly__in_1] - perm];
    assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. Assertion sys__result.Wand_readonly_for_writeonly__in_1 == null might not hold. (testWandDemo.vpr@70.11--70.127) [34720]"}
      Heap[sys__result, Wand_readonly_for_writeonly__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@71.11--71.129) [34721]"}
        perm <= Mask[sys__result, Wand_readonly_for_writeonly__out_1];
    }
    Mask := Mask[sys__result, Wand_readonly_for_writeonly__out_1:=Mask[sys__result, Wand_readonly_for_writeonly__out_1] - perm];
    assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. Assertion sys__result.Wand_readonly_for_writeonly__out_1 == null might not hold. (testWandDemo.vpr@71.11--71.129) [34722]"}
      Heap[sys__result, Wand_readonly_for_writeonly__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. There might be insufficient permission to access sys__result.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@72.11--72.131) [34723]"}
        perm <= Mask[sys__result, Wand_readonly_for_writeonly__this_1];
    }
    Mask := Mask[sys__result, Wand_readonly_for_writeonly__this_1:=Mask[sys__result, Wand_readonly_for_writeonly__this_1] - perm];
    assert {:msg "  Postcondition of Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. Assertion sys__result.Wand_readonly_for_writeonly__this_1 == null might not hold. (testWandDemo.vpr@72.11--72.131) [34724]"}
      Heap[sys__result, Wand_readonly_for_writeonly__this_1] == null;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method WandDemo__WandDemo
// ==================================================

procedure WandDemo__WandDemo(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, WandDemo__writeonly(sys__result):=PostMask[null, WandDemo__writeonly(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(WandDemo__x) -- testWandDemo.vpr@95.3--95.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, WandDemo__x:=Mask[diz, WandDemo__x] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(WandDemo__writeonly(diz), write) -- testWandDemo.vpr@96.3--96.44
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding WandDemo__writeonly(diz) might fail. There might be insufficient permission to access diz.WandDemo__x (testWandDemo.vpr@96.3--96.44) [34727]"}
        perm <= Mask[diz, WandDemo__x];
    }
    Mask := Mask[diz, WandDemo__x:=Mask[diz, WandDemo__x] - perm];
    perm := FullPerm;
    Mask := Mask[null, WandDemo__writeonly(diz):=Mask[null, WandDemo__writeonly(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume WandDemo__writeonly#trigger(Heap, WandDemo__writeonly(diz));
    assume Heap[null, WandDemo__writeonly(diz)] == FrameFragment(Heap[diz, WandDemo__x]);
    if (!HasDirectPerm(Mask, null, WandDemo__writeonly(diz))) {
      Heap := Heap[null, WandDemo__writeonly#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, WandDemo__writeonly(diz):=freshVersion];
    }
    Heap := Heap[null, WandDemo__writeonly#sm(diz):=Heap[null, WandDemo__writeonly#sm(diz)][diz, WandDemo__x:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testWandDemo.vpr@97.3--97.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null && acc(WandDemo__writeonly(sys__result), write) -- testWandDemo.vpr@98.3--98.79
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testWandDemo.vpr@98.10--98.79) [34729]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access WandDemo__writeonly(sys__result) (testWandDemo.vpr@98.10--98.79) [34731]"}
        perm <= AssertMask[null, WandDemo__writeonly(sys__result)];
    }
    AssertMask := AssertMask[null, WandDemo__writeonly(sys__result):=AssertMask[null, WandDemo__writeonly(sys__result)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testWandDemo.vpr@99.3--99.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of WandDemo__WandDemo might not hold. Assertion sys__result != null might not hold. (testWandDemo.vpr@91.11--91.30) [34732]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of WandDemo__WandDemo might not hold. There might be insufficient permission to access WandDemo__writeonly(sys__result) (testWandDemo.vpr@92.11--92.55) [34733]"}
        perm <= Mask[null, WandDemo__writeonly(sys__result)];
    }
    Mask := Mask[null, WandDemo__writeonly(sys__result):=Mask[null, WandDemo__writeonly(sys__result)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method WandDemo__Wand_readonly_for_writeonly_lemma_1
// ==================================================

procedure WandDemo__Wand_readonly_for_writeonly_lemma_1(diz: Ref, current_thread_id: int, this_1: Ref, in_1: Ref, out_1: Ref) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var vwand: Ref;
  var __flatten_2: Ref;
  var __flatten_4: Ref;
  var __flatten_5: Ref;
  var __flatten_6: Ref;
  var __flatten_7: Ref;
  var __flatten_18: Ref;
  var __flatten_19: Ref;
  var __flatten_20: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var __flatten_3: int;
  var __flatten_17: int;
  var wildcard: real where wildcard > NoPerm;
  var freshVersion: FrameType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[this_1, $allocated];
    assume Heap[in_1, $allocated];
    assume Heap[out_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume this_1 != null;
    assume state(Heap, Mask);
    perm := 3 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 3 / 4 might be negative. (testWandDemo.vpr@106.12--106.42) [34734]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this_1 != null;
    Mask := Mask[this_1, WandDemo__x:=Mask[this_1, WandDemo__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume in_1 != null;
    assume state(Heap, Mask);
    assume in_1 == this_1;
    assume state(Heap, Mask);
    assume out_1 != null;
    assume state(Heap, Mask);
    assume out_1 == this_1;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Wand_readonly_for_writeonly__valid_wand(sys__result):=PostMask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_readonly_for_writeonly__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_in_1 might not hold. Assertion sys__result != null might not hold. (testWandDemo.vpr@113.11--113.61) [34735]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_in_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(sys__result) (testWandDemo.vpr@113.11--113.61) [34736]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_readonly_for_writeonly__get_in_1(PostHeap, sys__result) == in_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_readonly_for_writeonly__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. Assertion sys__result != null might not hold. (testWandDemo.vpr@114.11--114.62) [34737]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(sys__result) (testWandDemo.vpr@114.11--114.62) [34738]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_readonly_for_writeonly__get_out_1(PostHeap, sys__result) == out_1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[vwand, $allocated];
    assume Heap[__flatten_2, $allocated];
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_5, $allocated];
    assume Heap[__flatten_6, $allocated];
    assume Heap[__flatten_7, $allocated];
    assume Heap[__flatten_18, $allocated];
    assume Heap[__flatten_19, $allocated];
    assume Heap[__flatten_20, $allocated];
  
  // -- Translating statement: __flatten_2 := Wand_readonly_for_writeonly__Wand_readonly_for_writeonly(current_thread_id) -- testWandDemo.vpr@127.3--127.93
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Wand_readonly_for_writeonly__Wand_readonly_for_writeonly might not hold. Assertion current_thread_id >= 0 might not hold. (testWandDemo.vpr@127.3--127.93) [34739]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_2;
    
    // -- Inhaling postcondition
      assume __flatten_2 != null;
      perm := FullPerm;
      assume __flatten_2 != null;
      Mask := Mask[__flatten_2, Wand_readonly_for_writeonly__lemma:=Mask[__flatten_2, Wand_readonly_for_writeonly__lemma] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_2, Wand_readonly_for_writeonly__lemma] == 0;
      perm := FullPerm;
      assume __flatten_2 != null;
      Mask := Mask[__flatten_2, Wand_readonly_for_writeonly__in_1:=Mask[__flatten_2, Wand_readonly_for_writeonly__in_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_2, Wand_readonly_for_writeonly__in_1] == null;
      perm := FullPerm;
      assume __flatten_2 != null;
      Mask := Mask[__flatten_2, Wand_readonly_for_writeonly__out_1:=Mask[__flatten_2, Wand_readonly_for_writeonly__out_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_2, Wand_readonly_for_writeonly__out_1] == null;
      perm := FullPerm;
      assume __flatten_2 != null;
      Mask := Mask[__flatten_2, Wand_readonly_for_writeonly__this_1:=Mask[__flatten_2, Wand_readonly_for_writeonly__this_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_2, Wand_readonly_for_writeonly__this_1] == null;
      assume state(Heap, Mask);
    assume Heap[__flatten_2, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand := __flatten_2 -- testWandDemo.vpr@128.3--128.23
    vwand := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := 1 -- testWandDemo.vpr@129.3--129.19
    __flatten_3 := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_17 := __flatten_3 -- testWandDemo.vpr@130.3--130.30
    __flatten_17 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_readonly_for_writeonly__lemma := __flatten_17 -- testWandDemo.vpr@131.3--131.59
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@131.3--131.59) [34740]"}
      FullPerm == Mask[vwand, Wand_readonly_for_writeonly__lemma];
    Heap := Heap[vwand, Wand_readonly_for_writeonly__lemma:=__flatten_17];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := this_1 -- testWandDemo.vpr@132.3--132.24
    __flatten_4 := this_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_18 := __flatten_4 -- testWandDemo.vpr@133.3--133.30
    __flatten_18 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_readonly_for_writeonly__this_1 := __flatten_18 -- testWandDemo.vpr@134.3--134.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@134.3--134.60) [34741]"}
      FullPerm == Mask[vwand, Wand_readonly_for_writeonly__this_1];
    Heap := Heap[vwand, Wand_readonly_for_writeonly__this_1:=__flatten_18];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := in_1 -- testWandDemo.vpr@135.3--135.22
    __flatten_5 := in_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_19 := __flatten_5 -- testWandDemo.vpr@136.3--136.30
    __flatten_19 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_readonly_for_writeonly__in_1 := __flatten_19 -- testWandDemo.vpr@137.3--137.58
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@137.3--137.58) [34742]"}
      FullPerm == Mask[vwand, Wand_readonly_for_writeonly__in_1];
    Heap := Heap[vwand, Wand_readonly_for_writeonly__in_1:=__flatten_19];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := out_1 -- testWandDemo.vpr@138.3--138.23
    __flatten_6 := out_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_20 := __flatten_6 -- testWandDemo.vpr@139.3--139.30
    __flatten_20 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_readonly_for_writeonly__out_1 := __flatten_20 -- testWandDemo.vpr@140.3--140.59
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@140.3--140.59) [34743]"}
      FullPerm == Mask[vwand, Wand_readonly_for_writeonly__out_1];
    Heap := Heap[vwand, Wand_readonly_for_writeonly__out_1:=__flatten_20];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_readonly_for_writeonly__valid_wand(vwand), write) -- testWandDemo.vpr@141.3--141.66
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__lemma (testWandDemo.vpr@141.3--141.66) [34745]"}
      Mask[vwand, Wand_readonly_for_writeonly__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_readonly_for_writeonly__lemma];
    Mask := Mask[vwand, Wand_readonly_for_writeonly__lemma:=Mask[vwand, Wand_readonly_for_writeonly__lemma] - wildcard];
    assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_readonly_for_writeonly__lemma might not hold. (testWandDemo.vpr@141.3--141.66) [34746]"}
      1 <= Heap[vwand, Wand_readonly_for_writeonly__lemma];
    assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__in_1 (testWandDemo.vpr@141.3--141.66) [34747]"}
      Mask[vwand, Wand_readonly_for_writeonly__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_readonly_for_writeonly__in_1];
    Mask := Mask[vwand, Wand_readonly_for_writeonly__in_1:=Mask[vwand, Wand_readonly_for_writeonly__in_1] - wildcard];
    assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. Assertion vwand.Wand_readonly_for_writeonly__in_1 != null might not hold. (testWandDemo.vpr@141.3--141.66) [34748]"}
      Heap[vwand, Wand_readonly_for_writeonly__in_1] != null;
    assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__out_1 (testWandDemo.vpr@141.3--141.66) [34749]"}
      Mask[vwand, Wand_readonly_for_writeonly__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_readonly_for_writeonly__out_1];
    Mask := Mask[vwand, Wand_readonly_for_writeonly__out_1:=Mask[vwand, Wand_readonly_for_writeonly__out_1] - wildcard];
    assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. Assertion vwand.Wand_readonly_for_writeonly__out_1 != null might not hold. (testWandDemo.vpr@141.3--141.66) [34750]"}
      Heap[vwand, Wand_readonly_for_writeonly__out_1] != null;
    assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__this_1 (testWandDemo.vpr@141.3--141.66) [34751]"}
      Mask[vwand, Wand_readonly_for_writeonly__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_readonly_for_writeonly__this_1];
    Mask := Mask[vwand, Wand_readonly_for_writeonly__this_1:=Mask[vwand, Wand_readonly_for_writeonly__this_1] - wildcard];
    if (Heap[vwand, Wand_readonly_for_writeonly__lemma] == 1) {
      assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. Assertion vwand.Wand_readonly_for_writeonly__this_1 != null might not hold. (testWandDemo.vpr@141.3--141.66) [34752]"}
        Heap[vwand, Wand_readonly_for_writeonly__this_1] != null;
      perm := 3 / 4;
      assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. Fraction 3 / 4 might be negative. (testWandDemo.vpr@141.3--141.66) [34753]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_readonly_for_writeonly__this_1.WandDemo__x (testWandDemo.vpr@141.3--141.66) [34754]"}
          perm <= Mask[Heap[vwand, Wand_readonly_for_writeonly__this_1], WandDemo__x];
      }
      Mask := Mask[Heap[vwand, Wand_readonly_for_writeonly__this_1], WandDemo__x:=Mask[Heap[vwand, Wand_readonly_for_writeonly__this_1], WandDemo__x] - perm];
      assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. Assertion vwand.Wand_readonly_for_writeonly__in_1 == vwand.Wand_readonly_for_writeonly__this_1 might not hold. (testWandDemo.vpr@141.3--141.66) [34755]"}
        Heap[vwand, Wand_readonly_for_writeonly__in_1] == Heap[vwand, Wand_readonly_for_writeonly__this_1];
      assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. Assertion vwand.Wand_readonly_for_writeonly__out_1 == vwand.Wand_readonly_for_writeonly__this_1 might not hold. (testWandDemo.vpr@141.3--141.66) [34756]"}
        Heap[vwand, Wand_readonly_for_writeonly__out_1] == Heap[vwand, Wand_readonly_for_writeonly__this_1];
    }
    assert {:msg "  Folding Wand_readonly_for_writeonly__valid_wand(vwand) might fail. Assertion vwand.Wand_readonly_for_writeonly__lemma <= 1 might not hold. (testWandDemo.vpr@141.3--141.66) [34757]"}
      Heap[vwand, Wand_readonly_for_writeonly__lemma] <= 1;
    perm := FullPerm;
    Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand):=Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Wand_readonly_for_writeonly__valid_wand#trigger(Heap, Wand_readonly_for_writeonly__valid_wand(vwand));
    assume Heap[null, Wand_readonly_for_writeonly__valid_wand(vwand)] == CombineFrames(FrameFragment(Heap[vwand, Wand_readonly_for_writeonly__lemma]), CombineFrames(FrameFragment(Heap[vwand, Wand_readonly_for_writeonly__in_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_readonly_for_writeonly__out_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_readonly_for_writeonly__this_1]), FrameFragment((if Heap[vwand, Wand_readonly_for_writeonly__lemma] == 1 then FrameFragment(Heap[Heap[vwand, Wand_readonly_for_writeonly__this_1], WandDemo__x]) else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, Wand_readonly_for_writeonly__valid_wand(vwand))) {
      Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand(vwand):=freshVersion];
    }
    Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand)][vwand, Wand_readonly_for_writeonly__lemma:=true]];
    Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand)][vwand, Wand_readonly_for_writeonly__in_1:=true]];
    Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand)][vwand, Wand_readonly_for_writeonly__out_1:=true]];
    Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand)][vwand, Wand_readonly_for_writeonly__this_1:=true]];
    if (Heap[vwand, Wand_readonly_for_writeonly__lemma] == 1) {
      Heap := Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand):=Heap[null, Wand_readonly_for_writeonly__valid_wand#sm(vwand)][Heap[vwand, Wand_readonly_for_writeonly__this_1], WandDemo__x:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := vwand -- testWandDemo.vpr@142.3--142.23
    __flatten_7 := vwand;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_7 -- testWandDemo.vpr@143.3--143.29
    sys__result := __flatten_7;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(Wand_readonly_for_writeonly__valid_wand(sys__result), write) &&
  //   (Wand_readonly_for_writeonly__get_in_1(sys__result) == in_1 &&
  //   Wand_readonly_for_writeonly__get_out_1(sys__result) == out_1)) -- testWandDemo.vpr@144.3--144.229
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testWandDemo.vpr@144.10--144.229) [34759]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(sys__result) (testWandDemo.vpr@144.10--144.229) [34761]"}
        perm <= AssertMask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_readonly_for_writeonly__valid_wand(sys__result):=AssertMask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_readonly_for_writeonly__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_in_1 might not hold. Assertion sys__result != null might not hold. (testWandDemo.vpr@144.104--144.154) [34762]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_in_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(sys__result) (testWandDemo.vpr@144.104--144.154) [34763]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_readonly_for_writeonly__get_in_1(sys__result) == in_1 might not hold. (testWandDemo.vpr@144.10--144.229) [34764]"}
      Wand_readonly_for_writeonly__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_readonly_for_writeonly__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. Assertion sys__result != null might not hold. (testWandDemo.vpr@144.168--144.219) [34765]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(sys__result) (testWandDemo.vpr@144.168--144.219) [34766]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_readonly_for_writeonly__get_out_1(sys__result) == out_1 might not hold. (testWandDemo.vpr@144.10--144.229) [34767]"}
      Wand_readonly_for_writeonly__get_out_1(AssertHeap, sys__result) == out_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testWandDemo.vpr@145.3--145.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion sys__result != null might not hold. (testWandDemo.vpr@111.11--111.30) [34768]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(sys__result) (testWandDemo.vpr@112.11--112.75) [34769]"}
        perm <= Mask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(sys__result):=Mask[null, Wand_readonly_for_writeonly__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion Wand_readonly_for_writeonly__get_in_1(sys__result) == in_1 might not hold. (testWandDemo.vpr@113.11--113.69) [34770]"}
      Wand_readonly_for_writeonly__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion Wand_readonly_for_writeonly__get_out_1(sys__result) == out_1 might not hold. (testWandDemo.vpr@114.11--114.71) [34771]"}
      Wand_readonly_for_writeonly__get_out_1(Heap, sys__result) == out_1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method WandDemo__set
// ==================================================

procedure WandDemo__set(diz: Ref, current_thread_id: int, v_2: int) returns (vwand: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var __flatten_9: Ref;
  var newVersion: FrameType;
  var __flatten_8: int;
  var __flatten_21: int;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, WandDemo__writeonly(diz):=Mask[null, WandDemo__writeonly(diz)] + perm];
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
    PostMask := PostMask[null, WandDemo__readonly(diz):=PostMask[null, WandDemo__readonly(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume vwand != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Wand_readonly_for_writeonly__valid_wand(vwand):=PostMask[null, Wand_readonly_for_writeonly__valid_wand(vwand)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_readonly_for_writeonly__get_in_1(vwand) == diz
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_in_1 might not hold. Assertion vwand != null might not hold. (testWandDemo.vpr@155.11--155.55) [34772]"}
          vwand != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_in_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(vwand) (testWandDemo.vpr@155.11--155.55) [34773]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_readonly_for_writeonly__valid_wand(vwand)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_readonly_for_writeonly__get_in_1(PostHeap, vwand) == diz;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_readonly_for_writeonly__get_out_1(vwand) == diz
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. Assertion vwand != null might not hold. (testWandDemo.vpr@156.11--156.56) [34774]"}
          vwand != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonly__get_out_1 might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(vwand) (testWandDemo.vpr@156.11--156.56) [34775]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_readonly_for_writeonly__valid_wand(vwand)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_readonly_for_writeonly__get_out_1(PostHeap, vwand) == diz;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_9, $allocated];
  
  // -- Translating statement: unfold acc(WandDemo__writeonly(diz), write) -- testWandDemo.vpr@161.3--161.46
    assume WandDemo__writeonly#trigger(Heap, WandDemo__writeonly(diz));
    assume Heap[null, WandDemo__writeonly(diz)] == FrameFragment(Heap[diz, WandDemo__x]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding WandDemo__writeonly(diz) might fail. There might be insufficient permission to access WandDemo__writeonly(diz) (testWandDemo.vpr@161.3--161.46) [34778]"}
        perm <= Mask[null, WandDemo__writeonly(diz)];
    }
    Mask := Mask[null, WandDemo__writeonly(diz):=Mask[null, WandDemo__writeonly(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, WandDemo__writeonly(diz))) {
        havoc newVersion;
        Heap := Heap[null, WandDemo__writeonly(diz):=newVersion];
      }
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, WandDemo__x:=Mask[diz, WandDemo__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := v -- testWandDemo.vpr@162.3--162.19
    __flatten_8 := v_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_21 := __flatten_8 -- testWandDemo.vpr@163.3--163.30
    __flatten_21 := __flatten_8;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.WandDemo__x := __flatten_21 -- testWandDemo.vpr@164.3--164.34
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.WandDemo__x (testWandDemo.vpr@164.3--164.34) [34780]"}
      FullPerm == Mask[diz, WandDemo__x];
    Heap := Heap[diz, WandDemo__x:=__flatten_21];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(WandDemo__readonly(diz), write) -- testWandDemo.vpr@165.3--165.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 4;
    assert {:msg "  Folding WandDemo__readonly(diz) might fail. Fraction 1 / 4 might be negative. (testWandDemo.vpr@165.3--165.43) [34782]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding WandDemo__readonly(diz) might fail. There might be insufficient permission to access diz.WandDemo__x (testWandDemo.vpr@165.3--165.43) [34783]"}
        perm <= Mask[diz, WandDemo__x];
    }
    Mask := Mask[diz, WandDemo__x:=Mask[diz, WandDemo__x] - perm];
    perm := FullPerm;
    Mask := Mask[null, WandDemo__readonly(diz):=Mask[null, WandDemo__readonly(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume WandDemo__readonly#trigger(Heap, WandDemo__readonly(diz));
    assume Heap[null, WandDemo__readonly(diz)] == FrameFragment(Heap[diz, WandDemo__x]);
    if (!HasDirectPerm(Mask, null, WandDemo__readonly(diz))) {
      Heap := Heap[null, WandDemo__readonly#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, WandDemo__readonly(diz):=freshVersion];
    }
    Heap := Heap[null, WandDemo__readonly#sm(diz):=Heap[null, WandDemo__readonly#sm(diz)][diz, WandDemo__x:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_9 := WandDemo__Wand_readonly_for_writeonly_lemma_1(diz, current_thread_id,
  //   diz, diz, diz) -- testWandDemo.vpr@166.3--166.102
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion diz != null might not hold. (testWandDemo.vpr@166.3--166.102) [34785]"}
        diz != null;
      assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion current_thread_id >= 0 might not hold. (testWandDemo.vpr@166.3--166.102) [34786]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion diz != null might not hold. (testWandDemo.vpr@166.3--166.102) [34787]"}
        diz != null;
      perm := 3 / 4;
      assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Fraction 3 / 4 might be negative. (testWandDemo.vpr@166.3--166.102) [34788]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. There might be insufficient permission to access diz.WandDemo__x (testWandDemo.vpr@166.3--166.102) [34789]"}
          perm <= Mask[diz, WandDemo__x];
      }
      Mask := Mask[diz, WandDemo__x:=Mask[diz, WandDemo__x] - perm];
      assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion diz != null might not hold. (testWandDemo.vpr@166.3--166.102) [34790]"}
        diz != null;
      assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion diz == diz might not hold. (testWandDemo.vpr@166.3--166.102) [34791]"}
        diz == diz;
      assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion diz != null might not hold. (testWandDemo.vpr@166.3--166.102) [34792]"}
        diz != null;
      assert {:msg "  The precondition of method WandDemo__Wand_readonly_for_writeonly_lemma_1 might not hold. Assertion diz == diz might not hold. (testWandDemo.vpr@166.3--166.102) [34793]"}
        diz == diz;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc __flatten_9;
    
    // -- Inhaling postcondition
      assume __flatten_9 != null;
      perm := FullPerm;
      Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(__flatten_9):=Mask[null, Wand_readonly_for_writeonly__valid_wand(__flatten_9)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Wand_readonly_for_writeonly__get_in_1(Heap, __flatten_9) == diz;
      assume state(Heap, Mask);
      assume Wand_readonly_for_writeonly__get_out_1(Heap, __flatten_9) == diz;
      assume state(Heap, Mask);
    assume Heap[__flatten_9, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand := __flatten_9 -- testWandDemo.vpr@167.3--167.23
    vwand := __flatten_9;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of WandDemo__set might not hold. There might be insufficient permission to access WandDemo__readonly(diz) (testWandDemo.vpr@152.11--152.46) [34794]"}
        perm <= Mask[null, WandDemo__readonly(diz)];
    }
    Mask := Mask[null, WandDemo__readonly(diz):=Mask[null, WandDemo__readonly(diz)] - perm];
    assert {:msg "  Postcondition of WandDemo__set might not hold. Assertion vwand != null might not hold. (testWandDemo.vpr@153.11--153.24) [34795]"}
      vwand != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of WandDemo__set might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(vwand) (testWandDemo.vpr@154.11--154.69) [34796]"}
        perm <= Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand)];
    }
    Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand):=Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand)] - perm];
    assert {:msg "  Postcondition of WandDemo__set might not hold. Assertion Wand_readonly_for_writeonly__get_in_1(vwand) == diz might not hold. (testWandDemo.vpr@155.11--155.62) [34797]"}
      Wand_readonly_for_writeonly__get_in_1(Heap, vwand) == diz;
    assert {:msg "  Postcondition of WandDemo__set might not hold. Assertion Wand_readonly_for_writeonly__get_out_1(vwand) == diz might not hold. (testWandDemo.vpr@156.11--156.63) [34798]"}
      Wand_readonly_for_writeonly__get_out_1(Heap, vwand) == diz;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method WandDemo__demo
// ==================================================

procedure WandDemo__demo(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var vwand: Ref;
  var d: Ref;
  var __flatten_10: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var i: int;
  var ExhaleHeap: HeapType;
  var __flatten_13: int;
  var __flatten_26: int;
  var __flatten_12: int;
  var __flatten_25: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[vwand, $allocated];
    assume Heap[d, $allocated];
    assume Heap[__flatten_10, $allocated];
  
  // -- Translating statement: __flatten_10 := WandDemo__WandDemo(current_thread_id) -- testWandDemo.vpr@182.3--182.56
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method WandDemo__WandDemo might not hold. Assertion current_thread_id >= 0 might not hold. (testWandDemo.vpr@182.3--182.56) [34799]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_10;
    
    // -- Inhaling postcondition
      assume __flatten_10 != null;
      perm := FullPerm;
      Mask := Mask[null, WandDemo__writeonly(__flatten_10):=Mask[null, WandDemo__writeonly(__flatten_10)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[__flatten_10, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: d := __flatten_10 -- testWandDemo.vpr@183.3--183.20
    d := __flatten_10;
    assume state(Heap, Mask);
  
  // -- Translating statement: i := 1 -- testWandDemo.vpr@184.3--184.9
    i := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (true) -- testWandDemo.vpr@185.3--195.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(WandDemo__writeonly(d), write) might not hold on entry. There might be insufficient permission to access WandDemo__writeonly(d) (testWandDemo.vpr@186.15--186.49) [34800]"}
            perm <= Mask[null, WandDemo__writeonly(d)];
        }
        Mask := Mask[null, WandDemo__writeonly(d):=Mask[null, WandDemo__writeonly(d)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i, __flatten_13, __flatten_26, __flatten_12, __flatten_25, vwand;
      assume Heap[vwand, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, WandDemo__writeonly(d):=Mask[null, WandDemo__writeonly(d)] + perm];
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
        perm := FullPerm;
        Mask := Mask[null, WandDemo__writeonly(d):=Mask[null, WandDemo__writeonly(d)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: vwand := WandDemo__set(d, current_thread_id, i) -- testWandDemo.vpr@188.5--188.52
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method WandDemo__set might not hold. Assertion d != null might not hold. (testWandDemo.vpr@188.5--188.52) [34801]"}
                d != null;
              assert {:msg "  The precondition of method WandDemo__set might not hold. Assertion current_thread_id >= 0 might not hold. (testWandDemo.vpr@188.5--188.52) [34802]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method WandDemo__set might not hold. There might be insufficient permission to access WandDemo__writeonly(d) (testWandDemo.vpr@188.5--188.52) [34803]"}
                  perm <= Mask[null, WandDemo__writeonly(d)];
              }
              Mask := Mask[null, WandDemo__writeonly(d):=Mask[null, WandDemo__writeonly(d)] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Havocing target variables
              havoc vwand;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              Mask := Mask[null, WandDemo__readonly(d):=Mask[null, WandDemo__readonly(d)] + perm];
              assume state(Heap, Mask);
              assume vwand != null;
              perm := FullPerm;
              Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand):=Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand)] + perm];
              assume state(Heap, Mask);
              assume state(Heap, Mask);
              assume Wand_readonly_for_writeonly__get_in_1(Heap, vwand) == d;
              assume state(Heap, Mask);
              assume Wand_readonly_for_writeonly__get_out_1(Heap, vwand) == d;
              assume state(Heap, Mask);
            assume Heap[vwand, $allocated];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_25 := WandDemo__get(d) -- testWandDemo.vpr@189.5--189.37
            
            // -- Check definedness of WandDemo__get(d)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function WandDemo__get might not hold. Assertion d != null might not hold. (testWandDemo.vpr@189.21--189.37) [34804]"}
                  d != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function WandDemo__get might not hold. There might be insufficient permission to access WandDemo__readonly(d) (testWandDemo.vpr@189.21--189.37) [34805]"}
                  NoPerm < perm ==> NoPerm < Mask[null, WandDemo__readonly(d)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            __flatten_25 := WandDemo__get(Heap, d);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_12 := __flatten_25 -- testWandDemo.vpr@190.5--190.33
            __flatten_12 := __flatten_25;
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_26 := WandDemo__get(d) -- testWandDemo.vpr@191.5--191.37
            
            // -- Check definedness of WandDemo__get(d)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function WandDemo__get might not hold. Assertion d != null might not hold. (testWandDemo.vpr@191.21--191.37) [34806]"}
                  d != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function WandDemo__get might not hold. There might be insufficient permission to access WandDemo__readonly(d) (testWandDemo.vpr@191.21--191.37) [34807]"}
                  NoPerm < perm ==> NoPerm < Mask[null, WandDemo__readonly(d)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            __flatten_26 := WandDemo__get(Heap, d);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_13 := __flatten_26 -- testWandDemo.vpr@192.5--192.33
            __flatten_13 := __flatten_26;
            assume state(Heap, Mask);
          
          // -- Translating statement: i := __flatten_12 + __flatten_13 -- testWandDemo.vpr@193.5--193.37
            i := __flatten_12 + __flatten_13;
            assume state(Heap, Mask);
          
          // -- Translating statement: Wand_readonly_for_writeonly___apply(vwand, current_thread_id) -- testWandDemo.vpr@194.5--194.66
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method Wand_readonly_for_writeonly___apply might not hold. Assertion vwand != null might not hold. (testWandDemo.vpr@194.5--194.66) [34808]"}
                vwand != null;
              assert {:msg "  The precondition of method Wand_readonly_for_writeonly___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testWandDemo.vpr@194.5--194.66) [34809]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Wand_readonly_for_writeonly___apply might not hold. There might be insufficient permission to access Wand_readonly_for_writeonly__valid_wand(vwand) (testWandDemo.vpr@194.5--194.66) [34810]"}
                  perm <= Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand)];
              }
              Mask := Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand):=Mask[null, Wand_readonly_for_writeonly__valid_wand(vwand)] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Wand_readonly_for_writeonly___apply might not hold. There might be insufficient permission to access WandDemo__readonly(Wand_readonly_for_writeonly__get_in_1(vwand)) (testWandDemo.vpr@194.5--194.66) [34811]"}
                  perm <= Mask[null, WandDemo__readonly(Wand_readonly_for_writeonly__get_in_1(Heap, vwand))];
              }
              Mask := Mask[null, WandDemo__readonly(Wand_readonly_for_writeonly__get_in_1(Heap, vwand)):=Mask[null, WandDemo__readonly(Wand_readonly_for_writeonly__get_in_1(Heap, vwand))] - perm];
              assert {:msg "  The precondition of method Wand_readonly_for_writeonly___apply might not hold. Assertion Wand_readonly_for_writeonly__get_out_1(vwand) != null might not hold. (testWandDemo.vpr@194.5--194.66) [34812]"}
                Wand_readonly_for_writeonly__get_out_1(Heap, vwand) != null;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              assume state(Heap, Mask);
              perm := FullPerm;
              Mask := Mask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(PreCallHeap, vwand)):=Mask[null, WandDemo__writeonly(Wand_readonly_for_writeonly__get_out_1(PreCallHeap, vwand))] + perm];
              assume state(Heap, Mask);
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(WandDemo__writeonly(d), write) might not be preserved. There might be insufficient permission to access WandDemo__writeonly(d) (testWandDemo.vpr@186.15--186.49) [34813]"}
            perm <= Mask[null, WandDemo__writeonly(d)];
        }
        Mask := Mask[null, WandDemo__writeonly(d):=Mask[null, WandDemo__writeonly(d)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume false;
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, WandDemo__writeonly(d):=Mask[null, WandDemo__writeonly(d)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}