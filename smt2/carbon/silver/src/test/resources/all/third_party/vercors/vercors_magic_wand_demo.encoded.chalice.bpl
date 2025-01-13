// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:17:29
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/vercors/vercors_magic_wand_demo.encoded.chalice.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/vercors/vercors_magic_wand_demo.encoded.chalice-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: Wand_readonly_for_writeonlyget_in_1$
// - height 1: WandDemoget$
// - height 0: Wand_readonly_for_writeonlyget_out_1$
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
// Translation of domain GlobalKPermission
// ==================================================

// The type for domain GlobalKPermission
type GlobalKPermissionDomainType;

// Translation of domain unique function globalK$
const unique globalK$: Perm;

// Translation of domain axiom globalKReadOnly
axiom NoPerm < globalK$ && globalK$ < FullPerm;

// ==================================================
// Translation of all fields
// ==================================================

const unique old$methodPermission: Field NormalField Perm;
axiom !IsPredicateField(old$methodPermission);
axiom !IsWandField(old$methodPermission);
const unique joinable$: Field NormalField bool;
axiom !IsPredicateField(joinable$);
axiom !IsWandField(joinable$);
const unique Wand_readonly_for_writeonlylemma$: Field NormalField int;
axiom !IsPredicateField(Wand_readonly_for_writeonlylemma$);
axiom !IsWandField(Wand_readonly_for_writeonlylemma$);
const unique Wand_readonly_for_writeonlyin_1$: Field NormalField Ref;
axiom !IsPredicateField(Wand_readonly_for_writeonlyin_1$);
axiom !IsWandField(Wand_readonly_for_writeonlyin_1$);
const unique Wand_readonly_for_writeonlyout_1$: Field NormalField Ref;
axiom !IsPredicateField(Wand_readonly_for_writeonlyout_1$);
axiom !IsWandField(Wand_readonly_for_writeonlyout_1$);
const unique Wand_readonly_for_writeonlythis_1$: Field NormalField Ref;
axiom !IsPredicateField(Wand_readonly_for_writeonlythis_1$);
axiom !IsWandField(Wand_readonly_for_writeonlythis_1$);
const unique WandDemox$: Field NormalField int;
axiom !IsPredicateField(WandDemox$);
axiom !IsWandField(WandDemox$);
const unique old$Wand_readonly_for_writeonlyapply$0: Field NormalField Ref;
axiom !IsPredicateField(old$Wand_readonly_for_writeonlyapply$0);
axiom !IsWandField(old$Wand_readonly_for_writeonlyapply$0);
const unique par$Wand_readonly_for_writeonlyapply$this$_3: Field NormalField Ref;
axiom !IsPredicateField(par$Wand_readonly_for_writeonlyapply$this$_3);
axiom !IsWandField(par$Wand_readonly_for_writeonlyapply$this$_3);
const unique par$Wand_readonly_for_writeonlyapply$k$: Field NormalField Perm;
axiom !IsPredicateField(par$Wand_readonly_for_writeonlyapply$k$);
axiom !IsWandField(par$Wand_readonly_for_writeonlyapply$k$);
const unique par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$this$_5: Field NormalField Ref;
axiom !IsPredicateField(par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$this$_5);
axiom !IsWandField(par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$this$_5);
const unique par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$k$_1: Field NormalField Perm;
axiom !IsPredicateField(par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$k$_1);
axiom !IsWandField(par$Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$k$_1);
const unique par$WandDemoWandDemo_init$this$_10: Field NormalField Ref;
axiom !IsPredicateField(par$WandDemoWandDemo_init$this$_10);
axiom !IsWandField(par$WandDemoWandDemo_init$this$_10);
const unique par$WandDemoWandDemo_init$k$_2: Field NormalField Perm;
axiom !IsPredicateField(par$WandDemoWandDemo_init$k$_2);
axiom !IsWandField(par$WandDemoWandDemo_init$k$_2);
const unique par$WandDemoWand_readonly_for_writeonly_lemma_1$this$_11: Field NormalField Ref;
axiom !IsPredicateField(par$WandDemoWand_readonly_for_writeonly_lemma_1$this$_11);
axiom !IsWandField(par$WandDemoWand_readonly_for_writeonly_lemma_1$this$_11);
const unique par$WandDemoWand_readonly_for_writeonly_lemma_1$k$_3: Field NormalField Perm;
axiom !IsPredicateField(par$WandDemoWand_readonly_for_writeonly_lemma_1$k$_3);
axiom !IsWandField(par$WandDemoWand_readonly_for_writeonly_lemma_1$k$_3);
const unique par$WandDemoWand_readonly_for_writeonly_lemma_1$__this_1: Field NormalField Ref;
axiom !IsPredicateField(par$WandDemoWand_readonly_for_writeonly_lemma_1$__this_1);
axiom !IsWandField(par$WandDemoWand_readonly_for_writeonly_lemma_1$__this_1);
const unique par$WandDemoWand_readonly_for_writeonly_lemma_1$__in_1: Field NormalField Ref;
axiom !IsPredicateField(par$WandDemoWand_readonly_for_writeonly_lemma_1$__in_1);
axiom !IsWandField(par$WandDemoWand_readonly_for_writeonly_lemma_1$__in_1);
const unique par$WandDemoWand_readonly_for_writeonly_lemma_1$__out_1: Field NormalField Ref;
axiom !IsPredicateField(par$WandDemoWand_readonly_for_writeonly_lemma_1$__out_1);
axiom !IsWandField(par$WandDemoWand_readonly_for_writeonly_lemma_1$__out_1);
const unique par$WandDemoset_val$this$_12: Field NormalField Ref;
axiom !IsPredicateField(par$WandDemoset_val$this$_12);
axiom !IsWandField(par$WandDemoset_val$this$_12);
const unique par$WandDemoset_val$k$_4: Field NormalField Perm;
axiom !IsPredicateField(par$WandDemoset_val$k$_4);
axiom !IsWandField(par$WandDemoset_val$k$_4);
const unique par$WandDemoset_val$__v: Field NormalField int;
axiom !IsPredicateField(par$WandDemoset_val$__v);
axiom !IsWandField(par$WandDemoset_val$__v);
const unique par$WandDemodemo$this$_13: Field NormalField Ref;
axiom !IsPredicateField(par$WandDemodemo$this$_13);
axiom !IsWandField(par$WandDemodemo$this$_13);
const unique par$WandDemodemo$k$_5: Field NormalField Perm;
axiom !IsPredicateField(par$WandDemodemo$k$_5);
axiom !IsWandField(par$WandDemodemo$k$_5);

// ==================================================
// Translation of function Wand_readonly_for_writeonlyget_in_1$
// ==================================================

// Uninterpreted function definitions
function  Wand_readonly_for_writeonlyget_in_1$(Heap: HeapType, this$_1: Ref): Ref;
function  Wand_readonly_for_writeonlyget_in_1$'(Heap: HeapType, this$_1: Ref): Ref;
axiom (forall Heap: HeapType, this$_1: Ref ::
  { Wand_readonly_for_writeonlyget_in_1$(Heap, this$_1) }
  Wand_readonly_for_writeonlyget_in_1$(Heap, this$_1) == Wand_readonly_for_writeonlyget_in_1$'(Heap, this$_1) && dummyFunction(Wand_readonly_for_writeonlyget_in_1$#triggerStateless(this$_1))
);
axiom (forall Heap: HeapType, this$_1: Ref ::
  { Wand_readonly_for_writeonlyget_in_1$'(Heap, this$_1) }
  dummyFunction(Wand_readonly_for_writeonlyget_in_1$#triggerStateless(this$_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_1: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonlyget_in_1$(Heap, this$_1) } { state(Heap, Mask), Wand_readonly_for_writeonlyget_in_1$#triggerStateless(this$_1), Wand_readonly_for_writeonlyvalid_wand$#trigger(Heap, Wand_readonly_for_writeonlyvalid_wand$(this$_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> this$_1 != null ==> Wand_readonly_for_writeonlyget_in_1$(Heap, this$_1) == Heap[this$_1, Wand_readonly_for_writeonlyin_1$]
);

// Framing axioms
function  Wand_readonly_for_writeonlyget_in_1$#frame(frame: FrameType, this$_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this$_1: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonlyget_in_1$'(Heap, this$_1) }
  state(Heap, Mask) ==> Wand_readonly_for_writeonlyget_in_1$'(Heap, this$_1) == Wand_readonly_for_writeonlyget_in_1$#frame(Heap[null, Wand_readonly_for_writeonlyvalid_wand$(this$_1)], this$_1)
);

// Trigger function (controlling recursive postconditions)
function  Wand_readonly_for_writeonlyget_in_1$#trigger(frame: FrameType, this$_1: Ref): bool;

// State-independent trigger function
function  Wand_readonly_for_writeonlyget_in_1$#triggerStateless(this$_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Wand_readonly_for_writeonlyget_in_1$#definedness(this$_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this$_1, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume this$_1 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_1):=Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_readonly_for_writeonlyvalid_wand$(this$_1), wildcard) in this$_1.Wand_readonly_for_writeonlyin_1$)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_readonly_for_writeonlyvalid_wand$#trigger(UnfoldingHeap, Wand_readonly_for_writeonlyvalid_wand$(this$_1));
      assume UnfoldingHeap[null, Wand_readonly_for_writeonlyvalid_wand$(this$_1)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_1, Wand_readonly_for_writeonlylemma$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_1, Wand_readonly_for_writeonlyin_1$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_1, Wand_readonly_for_writeonlyout_1$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_1, Wand_readonly_for_writeonlythis_1$]), FrameFragment((if UnfoldingHeap[this$_1, Wand_readonly_for_writeonlylemma$] == 1 then FrameFragment(UnfoldingHeap[UnfoldingHeap[this$_1, Wand_readonly_for_writeonlythis_1$], WandDemox$]) else EmptyFrame))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_readonly_for_writeonlyvalid_wand$(this$_1) (vercors_magic_wand_demo.encoded.chalice.vpr@61.1--67.2) [159586]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_1)];
      havoc wildcard;
      perm := wildcard;
      assume this$_1 != null;
      UnfoldingMask := UnfoldingMask[this$_1, Wand_readonly_for_writeonlylemma$:=UnfoldingMask[this$_1, Wand_readonly_for_writeonlylemma$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[this$_1, Wand_readonly_for_writeonlylemma$];
      havoc wildcard;
      perm := wildcard;
      assume this$_1 != null;
      UnfoldingMask := UnfoldingMask[this$_1, Wand_readonly_for_writeonlyin_1$:=UnfoldingMask[this$_1, Wand_readonly_for_writeonlyin_1$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_1 != null;
      UnfoldingMask := UnfoldingMask[this$_1, Wand_readonly_for_writeonlyout_1$:=UnfoldingMask[this$_1, Wand_readonly_for_writeonlyout_1$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_1 != null;
      UnfoldingMask := UnfoldingMask[this$_1, Wand_readonly_for_writeonlythis_1$:=UnfoldingMask[this$_1, Wand_readonly_for_writeonlythis_1$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this$_1, Wand_readonly_for_writeonlylemma$] == 1) {
        assume UnfoldingHeap[this$_1, Wand_readonly_for_writeonlythis_1$] != null;
        havoc wildcard;
        perm := wildcard;
        assume UnfoldingHeap[this$_1, Wand_readonly_for_writeonlythis_1$] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this$_1, Wand_readonly_for_writeonlythis_1$], WandDemox$:=UnfoldingMask[UnfoldingHeap[this$_1, Wand_readonly_for_writeonlythis_1$], WandDemox$] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[this$_1, Wand_readonly_for_writeonlyin_1$] == UnfoldingHeap[this$_1, Wand_readonly_for_writeonlythis_1$];
        assume UnfoldingHeap[this$_1, Wand_readonly_for_writeonlyout_1$] == UnfoldingHeap[this$_1, Wand_readonly_for_writeonlythis_1$];
      }
      assume UnfoldingHeap[this$_1, Wand_readonly_for_writeonlylemma$] <= 1;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_1.Wand_readonly_for_writeonlyin_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@61.1--67.2) [159587]"}
        HasDirectPerm(UnfoldingMask, this$_1, Wand_readonly_for_writeonlyin_1$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1)][this$_1, Wand_readonly_for_writeonlylemma$:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1)][this$_1, Wand_readonly_for_writeonlyin_1$:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1)][this$_1, Wand_readonly_for_writeonlyout_1$:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1)][this$_1, Wand_readonly_for_writeonlythis_1$:=true]];
        if (Heap[this$_1, Wand_readonly_for_writeonlylemma$] == 1) {
          Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_1)][Heap[this$_1, Wand_readonly_for_writeonlythis_1$], WandDemox$:=true]];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this$_1, Wand_readonly_for_writeonlyin_1$];
}

// ==================================================
// Translation of function Wand_readonly_for_writeonlyget_out_1$
// ==================================================

// Uninterpreted function definitions
function  Wand_readonly_for_writeonlyget_out_1$(Heap: HeapType, this$_2: Ref): Ref;
function  Wand_readonly_for_writeonlyget_out_1$'(Heap: HeapType, this$_2: Ref): Ref;
axiom (forall Heap: HeapType, this$_2: Ref ::
  { Wand_readonly_for_writeonlyget_out_1$(Heap, this$_2) }
  Wand_readonly_for_writeonlyget_out_1$(Heap, this$_2) == Wand_readonly_for_writeonlyget_out_1$'(Heap, this$_2) && dummyFunction(Wand_readonly_for_writeonlyget_out_1$#triggerStateless(this$_2))
);
axiom (forall Heap: HeapType, this$_2: Ref ::
  { Wand_readonly_for_writeonlyget_out_1$'(Heap, this$_2) }
  dummyFunction(Wand_readonly_for_writeonlyget_out_1$#triggerStateless(this$_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_2: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonlyget_out_1$(Heap, this$_2) } { state(Heap, Mask), Wand_readonly_for_writeonlyget_out_1$#triggerStateless(this$_2), Wand_readonly_for_writeonlyvalid_wand$#trigger(Heap, Wand_readonly_for_writeonlyvalid_wand$(this$_2)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this$_2 != null ==> Wand_readonly_for_writeonlyget_out_1$(Heap, this$_2) == Heap[this$_2, Wand_readonly_for_writeonlyout_1$]
);

// Framing axioms
function  Wand_readonly_for_writeonlyget_out_1$#frame(frame: FrameType, this$_2: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this$_2: Ref ::
  { state(Heap, Mask), Wand_readonly_for_writeonlyget_out_1$'(Heap, this$_2) }
  state(Heap, Mask) ==> Wand_readonly_for_writeonlyget_out_1$'(Heap, this$_2) == Wand_readonly_for_writeonlyget_out_1$#frame(Heap[null, Wand_readonly_for_writeonlyvalid_wand$(this$_2)], this$_2)
);

// Trigger function (controlling recursive postconditions)
function  Wand_readonly_for_writeonlyget_out_1$#trigger(frame: FrameType, this$_2: Ref): bool;

// State-independent trigger function
function  Wand_readonly_for_writeonlyget_out_1$#triggerStateless(this$_2: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Wand_readonly_for_writeonlyget_out_1$#definedness(this$_2: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this$_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this$_2 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_2):=Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_readonly_for_writeonlyvalid_wand$(this$_2), wildcard) in this$_2.Wand_readonly_for_writeonlyout_1$)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_readonly_for_writeonlyvalid_wand$#trigger(UnfoldingHeap, Wand_readonly_for_writeonlyvalid_wand$(this$_2));
      assume UnfoldingHeap[null, Wand_readonly_for_writeonlyvalid_wand$(this$_2)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_2, Wand_readonly_for_writeonlylemma$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_2, Wand_readonly_for_writeonlyin_1$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_2, Wand_readonly_for_writeonlyout_1$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_2, Wand_readonly_for_writeonlythis_1$]), FrameFragment((if UnfoldingHeap[this$_2, Wand_readonly_for_writeonlylemma$] == 1 then FrameFragment(UnfoldingHeap[UnfoldingHeap[this$_2, Wand_readonly_for_writeonlythis_1$], WandDemox$]) else EmptyFrame))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_readonly_for_writeonlyvalid_wand$(this$_2) (vercors_magic_wand_demo.encoded.chalice.vpr@69.1--75.2) [159588]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_2)];
      havoc wildcard;
      perm := wildcard;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Wand_readonly_for_writeonlylemma$:=UnfoldingMask[this$_2, Wand_readonly_for_writeonlylemma$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[this$_2, Wand_readonly_for_writeonlylemma$];
      havoc wildcard;
      perm := wildcard;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Wand_readonly_for_writeonlyin_1$:=UnfoldingMask[this$_2, Wand_readonly_for_writeonlyin_1$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Wand_readonly_for_writeonlyout_1$:=UnfoldingMask[this$_2, Wand_readonly_for_writeonlyout_1$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Wand_readonly_for_writeonlythis_1$:=UnfoldingMask[this$_2, Wand_readonly_for_writeonlythis_1$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this$_2, Wand_readonly_for_writeonlylemma$] == 1) {
        assume UnfoldingHeap[this$_2, Wand_readonly_for_writeonlythis_1$] != null;
        havoc wildcard;
        perm := wildcard;
        assume UnfoldingHeap[this$_2, Wand_readonly_for_writeonlythis_1$] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this$_2, Wand_readonly_for_writeonlythis_1$], WandDemox$:=UnfoldingMask[UnfoldingHeap[this$_2, Wand_readonly_for_writeonlythis_1$], WandDemox$] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[this$_2, Wand_readonly_for_writeonlyin_1$] == UnfoldingHeap[this$_2, Wand_readonly_for_writeonlythis_1$];
        assume UnfoldingHeap[this$_2, Wand_readonly_for_writeonlyout_1$] == UnfoldingHeap[this$_2, Wand_readonly_for_writeonlythis_1$];
      }
      assume UnfoldingHeap[this$_2, Wand_readonly_for_writeonlylemma$] <= 1;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_2.Wand_readonly_for_writeonlyout_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@69.1--75.2) [159589]"}
        HasDirectPerm(UnfoldingMask, this$_2, Wand_readonly_for_writeonlyout_1$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2)][this$_2, Wand_readonly_for_writeonlylemma$:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2)][this$_2, Wand_readonly_for_writeonlyin_1$:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2)][this$_2, Wand_readonly_for_writeonlyout_1$:=true]];
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2)][this$_2, Wand_readonly_for_writeonlythis_1$:=true]];
        if (Heap[this$_2, Wand_readonly_for_writeonlylemma$] == 1) {
          Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2):=Heap[null, Wand_readonly_for_writeonlyvalid_wand$#sm(this$_2)][Heap[this$_2, Wand_readonly_for_writeonlythis_1$], WandDemox$:=true]];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this$_2, Wand_readonly_for_writeonlyout_1$];
}

// ==================================================
// Translation of function WandDemoget$
// ==================================================

// Uninterpreted function definitions
function  WandDemoget$(Heap: HeapType, this$_9: Ref): int;
function  WandDemoget$'(Heap: HeapType, this$_9: Ref): int;
axiom (forall Heap: HeapType, this$_9: Ref ::
  { WandDemoget$(Heap, this$_9) }
  WandDemoget$(Heap, this$_9) == WandDemoget$'(Heap, this$_9) && dummyFunction(WandDemoget$#triggerStateless(this$_9))
);
axiom (forall Heap: HeapType, this$_9: Ref ::
  { WandDemoget$'(Heap, this$_9) }
  dummyFunction(WandDemoget$#triggerStateless(this$_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_9: Ref ::
  { state(Heap, Mask), WandDemoget$(Heap, this$_9) } { state(Heap, Mask), WandDemoget$#triggerStateless(this$_9), WandDemoreadonly$#trigger(Heap, WandDemoreadonly$(this$_9)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this$_9 != null ==> WandDemoget$(Heap, this$_9) == Heap[this$_9, WandDemox$]
);

// Framing axioms
function  WandDemoget$#frame(frame: FrameType, this$_9: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this$_9: Ref ::
  { state(Heap, Mask), WandDemoget$'(Heap, this$_9) }
  state(Heap, Mask) ==> WandDemoget$'(Heap, this$_9) == WandDemoget$#frame(Heap[null, WandDemoreadonly$(this$_9)], this$_9)
);

// Trigger function (controlling recursive postconditions)
function  WandDemoget$#trigger(frame: FrameType, this$_9: Ref): bool;

// State-independent trigger function
function  WandDemoget$#triggerStateless(this$_9: Ref): int;

// Check contract well-formedness and postcondition
procedure WandDemoget$#definedness(this$_9: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this$_9, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume this$_9 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, WandDemoreadonly$(this$_9):=Mask[null, WandDemoreadonly$(this$_9)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(WandDemoreadonly$(this$_9), wildcard) in this$_9.WandDemox$)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume WandDemoreadonly$#trigger(UnfoldingHeap, WandDemoreadonly$(this$_9));
      assume UnfoldingHeap[null, WandDemoreadonly$(this$_9)] == FrameFragment(UnfoldingHeap[this$_9, WandDemox$]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access WandDemoreadonly$(this$_9) (vercors_magic_wand_demo.encoded.chalice.vpr@77.1--82.2) [159590]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, WandDemoreadonly$(this$_9)];
      havoc wildcard;
      perm := wildcard;
      assume this$_9 != null;
      UnfoldingMask := UnfoldingMask[this$_9, WandDemox$:=UnfoldingMask[this$_9, WandDemox$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_9.WandDemox$ (vercors_magic_wand_demo.encoded.chalice.vpr@77.1--82.2) [159591]"}
        HasDirectPerm(UnfoldingMask, this$_9, WandDemox$);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, WandDemoreadonly$#sm(this$_9):=Heap[null, WandDemoreadonly$#sm(this$_9)][this$_9, WandDemox$:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this$_9, WandDemox$];
}

// ==================================================
// Translation of predicate Wand_readonly_for_writeonly$MonitorInvariant
// ==================================================

type PredicateType_Wand_readonly_for_writeonly$MonitorInvariant;
function  Wand_readonly_for_writeonly$MonitorInvariant(this$: Ref): Field PredicateType_Wand_readonly_for_writeonly$MonitorInvariant FrameType;
function  Wand_readonly_for_writeonly$MonitorInvariant#sm(this$: Ref): Field PredicateType_Wand_readonly_for_writeonly$MonitorInvariant PMaskType;
axiom (forall this$: Ref ::
  { PredicateMaskField(Wand_readonly_for_writeonly$MonitorInvariant(this$)) }
  PredicateMaskField(Wand_readonly_for_writeonly$MonitorInvariant(this$)) == Wand_readonly_for_writeonly$MonitorInvariant#sm(this$)
);
axiom (forall this$: Ref ::
  { Wand_readonly_for_writeonly$MonitorInvariant(this$) }
  IsPredicateField(Wand_readonly_for_writeonly$MonitorInvariant(this$))
);
axiom (forall this$: Ref ::
  { Wand_readonly_for_writeonly$MonitorInvariant(this$) }
  getPredWandId(Wand_readonly_for_writeonly$MonitorInvariant(this$)) == 0
);
function  Wand_readonly_for_writeonly$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Wand_readonly_for_writeonly$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$: Ref, this$2: Ref ::
  { Wand_readonly_for_writeonly$MonitorInvariant(this$), Wand_readonly_for_writeonly$MonitorInvariant(this$2) }
  Wand_readonly_for_writeonly$MonitorInvariant(this$) == Wand_readonly_for_writeonly$MonitorInvariant(this$2) ==> this$ == this$2
);
axiom (forall this$: Ref, this$2: Ref ::
  { Wand_readonly_for_writeonly$MonitorInvariant#sm(this$), Wand_readonly_for_writeonly$MonitorInvariant#sm(this$2) }
  Wand_readonly_for_writeonly$MonitorInvariant#sm(this$) == Wand_readonly_for_writeonly$MonitorInvariant#sm(this$2) ==> this$ == this$2
);

axiom (forall Heap: HeapType, this$: Ref ::
  { Wand_readonly_for_writeonly$MonitorInvariant#trigger(Heap, Wand_readonly_for_writeonly$MonitorInvariant(this$)) }
  Wand_readonly_for_writeonly$MonitorInvariant#everUsed(Wand_readonly_for_writeonly$MonitorInvariant(this$))
);

procedure Wand_readonly_for_writeonly$MonitorInvariant#definedness(this$: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Wand_readonly_for_writeonly$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Wand_readonly_for_writeonlyvalid_wand$
// ==================================================

type PredicateType_Wand_readonly_for_writeonlyvalid_wand$;
function  Wand_readonly_for_writeonlyvalid_wand$(this$_4: Ref): Field PredicateType_Wand_readonly_for_writeonlyvalid_wand$ FrameType;
function  Wand_readonly_for_writeonlyvalid_wand$#sm(this$_4: Ref): Field PredicateType_Wand_readonly_for_writeonlyvalid_wand$ PMaskType;
axiom (forall this$_4: Ref ::
  { PredicateMaskField(Wand_readonly_for_writeonlyvalid_wand$(this$_4)) }
  PredicateMaskField(Wand_readonly_for_writeonlyvalid_wand$(this$_4)) == Wand_readonly_for_writeonlyvalid_wand$#sm(this$_4)
);
axiom (forall this$_4: Ref ::
  { Wand_readonly_for_writeonlyvalid_wand$(this$_4) }
  IsPredicateField(Wand_readonly_for_writeonlyvalid_wand$(this$_4))
);
axiom (forall this$_4: Ref ::
  { Wand_readonly_for_writeonlyvalid_wand$(this$_4) }
  getPredWandId(Wand_readonly_for_writeonlyvalid_wand$(this$_4)) == 1
);
function  Wand_readonly_for_writeonlyvalid_wand$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Wand_readonly_for_writeonlyvalid_wand$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_4: Ref, this$_42: Ref ::
  { Wand_readonly_for_writeonlyvalid_wand$(this$_4), Wand_readonly_for_writeonlyvalid_wand$(this$_42) }
  Wand_readonly_for_writeonlyvalid_wand$(this$_4) == Wand_readonly_for_writeonlyvalid_wand$(this$_42) ==> this$_4 == this$_42
);
axiom (forall this$_4: Ref, this$_42: Ref ::
  { Wand_readonly_for_writeonlyvalid_wand$#sm(this$_4), Wand_readonly_for_writeonlyvalid_wand$#sm(this$_42) }
  Wand_readonly_for_writeonlyvalid_wand$#sm(this$_4) == Wand_readonly_for_writeonlyvalid_wand$#sm(this$_42) ==> this$_4 == this$_42
);

axiom (forall Heap: HeapType, this$_4: Ref ::
  { Wand_readonly_for_writeonlyvalid_wand$#trigger(Heap, Wand_readonly_for_writeonlyvalid_wand$(this$_4)) }
  Wand_readonly_for_writeonlyvalid_wand$#everUsed(Wand_readonly_for_writeonlyvalid_wand$(this$_4))
);

procedure Wand_readonly_for_writeonlyvalid_wand$#definedness(this$_4: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of Wand_readonly_for_writeonlyvalid_wand$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_4, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this$_4 != null;
    Mask := Mask[this$_4, Wand_readonly_for_writeonlylemma$:=Mask[this$_4, Wand_readonly_for_writeonlylemma$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of 1 <= this$_4.Wand_readonly_for_writeonlylemma$
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlylemma$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159592]"}
        HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlylemma$);
    assume 1 <= Heap[this$_4, Wand_readonly_for_writeonlylemma$];
    havoc wildcard;
    perm := wildcard;
    assume this$_4 != null;
    Mask := Mask[this$_4, Wand_readonly_for_writeonlyin_1$:=Mask[this$_4, Wand_readonly_for_writeonlyin_1$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this$_4 != null;
    Mask := Mask[this$_4, Wand_readonly_for_writeonlyout_1$:=Mask[this$_4, Wand_readonly_for_writeonlyout_1$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this$_4 != null;
    Mask := Mask[this$_4, Wand_readonly_for_writeonlythis_1$:=Mask[this$_4, Wand_readonly_for_writeonlythis_1$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this$_4.Wand_readonly_for_writeonlylemma$ == 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlylemma$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159593]"}
        HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlylemma$);
    if (Heap[this$_4, Wand_readonly_for_writeonlylemma$] == 1) {
      
      // -- Check definedness of this$_4.Wand_readonly_for_writeonlythis_1$ != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159594]"}
          HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlythis_1$);
      assume Heap[this$_4, Wand_readonly_for_writeonlythis_1$] != null;
      
      // -- Check definedness of acc(this$_4.Wand_readonly_for_writeonlythis_1$.WandDemox$, 75 / 100)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159595]"}
          HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlythis_1$);
      perm := 75 / 100;
      assert {:msg "  Predicate might not be well-formed. Fraction 75 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159596]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this$_4, Wand_readonly_for_writeonlythis_1$] != null;
      Mask := Mask[Heap[this$_4, Wand_readonly_for_writeonlythis_1$], WandDemox$:=Mask[Heap[this$_4, Wand_readonly_for_writeonlythis_1$], WandDemox$] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of this$_4.Wand_readonly_for_writeonlyin_1$ == this$_4.Wand_readonly_for_writeonlythis_1$
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlyin_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159597]"}
          HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlyin_1$);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159598]"}
          HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlythis_1$);
      assume Heap[this$_4, Wand_readonly_for_writeonlyin_1$] == Heap[this$_4, Wand_readonly_for_writeonlythis_1$];
      
      // -- Check definedness of this$_4.Wand_readonly_for_writeonlyout_1$ == this$_4.Wand_readonly_for_writeonlythis_1$
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlyout_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159599]"}
          HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlyout_1$);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159600]"}
          HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlythis_1$);
      assume Heap[this$_4, Wand_readonly_for_writeonlyout_1$] == Heap[this$_4, Wand_readonly_for_writeonlythis_1$];
    }
    
    // -- Check definedness of this$_4.Wand_readonly_for_writeonlylemma$ <= 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_4.Wand_readonly_for_writeonlylemma$ (vercors_magic_wand_demo.encoded.chalice.vpr@88.1--90.2) [159601]"}
        HasDirectPerm(Mask, this$_4, Wand_readonly_for_writeonlylemma$);
    assume Heap[this$_4, Wand_readonly_for_writeonlylemma$] <= 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate WandDemo$MonitorInvariant
// ==================================================

type PredicateType_WandDemo$MonitorInvariant;
function  WandDemo$MonitorInvariant(this$_6: Ref): Field PredicateType_WandDemo$MonitorInvariant FrameType;
function  WandDemo$MonitorInvariant#sm(this$_6: Ref): Field PredicateType_WandDemo$MonitorInvariant PMaskType;
axiom (forall this$_6: Ref ::
  { PredicateMaskField(WandDemo$MonitorInvariant(this$_6)) }
  PredicateMaskField(WandDemo$MonitorInvariant(this$_6)) == WandDemo$MonitorInvariant#sm(this$_6)
);
axiom (forall this$_6: Ref ::
  { WandDemo$MonitorInvariant(this$_6) }
  IsPredicateField(WandDemo$MonitorInvariant(this$_6))
);
axiom (forall this$_6: Ref ::
  { WandDemo$MonitorInvariant(this$_6) }
  getPredWandId(WandDemo$MonitorInvariant(this$_6)) == 2
);
function  WandDemo$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  WandDemo$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_6: Ref, this$_62: Ref ::
  { WandDemo$MonitorInvariant(this$_6), WandDemo$MonitorInvariant(this$_62) }
  WandDemo$MonitorInvariant(this$_6) == WandDemo$MonitorInvariant(this$_62) ==> this$_6 == this$_62
);
axiom (forall this$_6: Ref, this$_62: Ref ::
  { WandDemo$MonitorInvariant#sm(this$_6), WandDemo$MonitorInvariant#sm(this$_62) }
  WandDemo$MonitorInvariant#sm(this$_6) == WandDemo$MonitorInvariant#sm(this$_62) ==> this$_6 == this$_62
);

axiom (forall Heap: HeapType, this$_6: Ref ::
  { WandDemo$MonitorInvariant#trigger(Heap, WandDemo$MonitorInvariant(this$_6)) }
  WandDemo$MonitorInvariant#everUsed(WandDemo$MonitorInvariant(this$_6))
);

procedure WandDemo$MonitorInvariant#definedness(this$_6: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of WandDemo$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_6, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate WandDemoreadonly$
// ==================================================

type PredicateType_WandDemoreadonly$;
function  WandDemoreadonly$(this$_7: Ref): Field PredicateType_WandDemoreadonly$ FrameType;
function  WandDemoreadonly$#sm(this$_7: Ref): Field PredicateType_WandDemoreadonly$ PMaskType;
axiom (forall this$_7: Ref ::
  { PredicateMaskField(WandDemoreadonly$(this$_7)) }
  PredicateMaskField(WandDemoreadonly$(this$_7)) == WandDemoreadonly$#sm(this$_7)
);
axiom (forall this$_7: Ref ::
  { WandDemoreadonly$(this$_7) }
  IsPredicateField(WandDemoreadonly$(this$_7))
);
axiom (forall this$_7: Ref ::
  { WandDemoreadonly$(this$_7) }
  getPredWandId(WandDemoreadonly$(this$_7)) == 3
);
function  WandDemoreadonly$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  WandDemoreadonly$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_7: Ref, this$_72: Ref ::
  { WandDemoreadonly$(this$_7), WandDemoreadonly$(this$_72) }
  WandDemoreadonly$(this$_7) == WandDemoreadonly$(this$_72) ==> this$_7 == this$_72
);
axiom (forall this$_7: Ref, this$_72: Ref ::
  { WandDemoreadonly$#sm(this$_7), WandDemoreadonly$#sm(this$_72) }
  WandDemoreadonly$#sm(this$_7) == WandDemoreadonly$#sm(this$_72) ==> this$_7 == this$_72
);

axiom (forall Heap: HeapType, this$_7: Ref ::
  { WandDemoreadonly$#trigger(Heap, WandDemoreadonly$(this$_7)) }
  WandDemoreadonly$#everUsed(WandDemoreadonly$(this$_7))
);

procedure WandDemoreadonly$#definedness(this$_7: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of WandDemoreadonly$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_7, $allocated];
    perm := 25 / 100;
    assert {:msg "  Predicate might not be well-formed. Fraction 25 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@96.1--98.2) [159602]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_7 != null;
    Mask := Mask[this$_7, WandDemox$:=Mask[this$_7, WandDemox$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate WandDemowriteonly$
// ==================================================

type PredicateType_WandDemowriteonly$;
function  WandDemowriteonly$(this$_8: Ref): Field PredicateType_WandDemowriteonly$ FrameType;
function  WandDemowriteonly$#sm(this$_8: Ref): Field PredicateType_WandDemowriteonly$ PMaskType;
axiom (forall this$_8: Ref ::
  { PredicateMaskField(WandDemowriteonly$(this$_8)) }
  PredicateMaskField(WandDemowriteonly$(this$_8)) == WandDemowriteonly$#sm(this$_8)
);
axiom (forall this$_8: Ref ::
  { WandDemowriteonly$(this$_8) }
  IsPredicateField(WandDemowriteonly$(this$_8))
);
axiom (forall this$_8: Ref ::
  { WandDemowriteonly$(this$_8) }
  getPredWandId(WandDemowriteonly$(this$_8)) == 4
);
function  WandDemowriteonly$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  WandDemowriteonly$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_8: Ref, this$_82: Ref ::
  { WandDemowriteonly$(this$_8), WandDemowriteonly$(this$_82) }
  WandDemowriteonly$(this$_8) == WandDemowriteonly$(this$_82) ==> this$_8 == this$_82
);
axiom (forall this$_8: Ref, this$_82: Ref ::
  { WandDemowriteonly$#sm(this$_8), WandDemowriteonly$#sm(this$_82) }
  WandDemowriteonly$#sm(this$_8) == WandDemowriteonly$#sm(this$_82) ==> this$_8 == this$_82
);

axiom (forall Heap: HeapType, this$_8: Ref ::
  { WandDemowriteonly$#trigger(Heap, WandDemowriteonly$(this$_8)) }
  WandDemowriteonly$#everUsed(WandDemowriteonly$(this$_8))
);

procedure WandDemowriteonly$#definedness(this$_8: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of WandDemowriteonly$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_8, $allocated];
    perm := 100 / 100;
    assert {:msg "  Predicate might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@100.1--102.2) [159603]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_8 != null;
    Mask := Mask[this$_8, WandDemox$:=Mask[this$_8, WandDemox$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Wand_readonly_for_writeonlyapply$
// ==================================================

procedure Wand_readonly_for_writeonlyapply$(this$_3: Ref, k$: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$: Ref;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_3, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_3 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$;
    assume state(Heap, Mask);
    assume k$ < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3):=Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_readonly_for_writeonlyget_in_1$(this$_3) != null
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonlyget_in_1$ might not hold. Assertion this$_3 != null might not hold. (vercors_magic_wand_demo.encoded.chalice.vpr@109.12--109.57) [159604]"}
          this$_3 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonlyget_in_1$ might not hold. There might be insufficient permission to access Wand_readonly_for_writeonlyvalid_wand$(this$_3) (vercors_magic_wand_demo.encoded.chalice.vpr@109.12--109.57) [159605]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_readonly_for_writeonlyget_in_1$(Heap, this$_3) != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(WandDemoreadonly$(Wand_readonly_for_writeonlyget_in_1$(this$_3)), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonlyget_in_1$ might not hold. Assertion this$_3 != null might not hold. (vercors_magic_wand_demo.encoded.chalice.vpr@110.34--110.79) [159606]"}
          this$_3 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonlyget_in_1$ might not hold. There might be insufficient permission to access Wand_readonly_for_writeonlyvalid_wand$(this$_3) (vercors_magic_wand_demo.encoded.chalice.vpr@110.34--110.79) [159607]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    Mask := Mask[null, WandDemoreadonly$(Wand_readonly_for_writeonlyget_in_1$(Heap, this$_3)):=Mask[null, WandDemoreadonly$(Wand_readonly_for_writeonlyget_in_1$(Heap, this$_3))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_readonly_for_writeonlyget_out_1$(this$_3) != null
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonlyget_out_1$ might not hold. Assertion this$_3 != null might not hold. (vercors_magic_wand_demo.encoded.chalice.vpr@111.12--111.58) [159608]"}
          this$_3 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonlyget_out_1$ might not hold. There might be insufficient permission to access Wand_readonly_for_writeonlyvalid_wand$(this$_3) (vercors_magic_wand_demo.encoded.chalice.vpr@111.12--111.58) [159609]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_readonly_for_writeonlyget_out_1$(Heap, this$_3) != null;
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(WandDemowriteonly$(old(Wand_readonly_for_writeonlyget_out_1$(this$_3))), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonlyget_out_1$ might not hold. Assertion this$_3 != null might not hold. (vercors_magic_wand_demo.encoded.chalice.vpr@112.38--112.84) [159610]"}
          this$_3 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_readonly_for_writeonlyget_out_1$ might not hold. There might be insufficient permission to access Wand_readonly_for_writeonlyvalid_wand$(this$_3) (vercors_magic_wand_demo.encoded.chalice.vpr@112.38--112.84) [159611]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    PostMask := PostMask[null, WandDemowriteonly$(Wand_readonly_for_writeonlyget_out_1$(oldHeap, this$_3)):=PostMask[null, WandDemowriteonly$(Wand_readonly_for_writeonlyget_out_1$(oldHeap, this$_3))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$, $allocated];
  
  // -- Translating statement: unfold acc(Wand_readonly_for_writeonlyvalid_wand$(this$_3), write) -- vercors_magic_wand_demo.encoded.chalice.vpr@115.3--115.69
    assume Wand_readonly_for_writeonlyvalid_wand$#trigger(Heap, Wand_readonly_for_writeonlyvalid_wand$(this$_3));
    assume Heap[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3)] == CombineFrames(FrameFragment(Heap[this$_3, Wand_readonly_for_writeonlylemma$]), CombineFrames(FrameFragment(Heap[this$_3, Wand_readonly_for_writeonlyin_1$]), CombineFrames(FrameFragment(Heap[this$_3, Wand_readonly_for_writeonlyout_1$]), CombineFrames(FrameFragment(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]), FrameFragment((if Heap[this$_3, Wand_readonly_for_writeonlylemma$] == 1 then FrameFragment(Heap[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$]) else EmptyFrame))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Wand_readonly_for_writeonlyvalid_wand$(this$_3) might fail. There might be insufficient permission to access Wand_readonly_for_writeonlyvalid_wand$(this$_3) (vercors_magic_wand_demo.encoded.chalice.vpr@115.3--115.69) [159614]"}
        perm <= Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3)];
    }
    Mask := Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3):=Mask[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Wand_readonly_for_writeonlyvalid_wand$(this$_3))) {
        havoc newVersion;
        Heap := Heap[null, Wand_readonly_for_writeonlyvalid_wand$(this$_3):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume this$_3 != null;
    Mask := Mask[this$_3, Wand_readonly_for_writeonlylemma$:=Mask[this$_3, Wand_readonly_for_writeonlylemma$] + perm];
    assume state(Heap, Mask);
    assume 1 <= Heap[this$_3, Wand_readonly_for_writeonlylemma$];
    havoc wildcard;
    perm := wildcard;
    assume this$_3 != null;
    Mask := Mask[this$_3, Wand_readonly_for_writeonlyin_1$:=Mask[this$_3, Wand_readonly_for_writeonlyin_1$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this$_3 != null;
    Mask := Mask[this$_3, Wand_readonly_for_writeonlyout_1$:=Mask[this$_3, Wand_readonly_for_writeonlyout_1$] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this$_3 != null;
    Mask := Mask[this$_3, Wand_readonly_for_writeonlythis_1$:=Mask[this$_3, Wand_readonly_for_writeonlythis_1$] + perm];
    assume state(Heap, Mask);
    if (Heap[this$_3, Wand_readonly_for_writeonlylemma$] == 1) {
      assume Heap[this$_3, Wand_readonly_for_writeonlythis_1$] != null;
      perm := 75 / 100;
      assert {:msg "  Unfolding Wand_readonly_for_writeonlyvalid_wand$(this$_3) might fail. Fraction 75 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@115.3--115.69) [159615]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this$_3, Wand_readonly_for_writeonlythis_1$] != null;
      Mask := Mask[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$:=Mask[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$] + perm];
      assume state(Heap, Mask);
      assume Heap[this$_3, Wand_readonly_for_writeonlyin_1$] == Heap[this$_3, Wand_readonly_for_writeonlythis_1$];
      assume Heap[this$_3, Wand_readonly_for_writeonlyout_1$] == Heap[this$_3, Wand_readonly_for_writeonlythis_1$];
    }
    assume Heap[this$_3, Wand_readonly_for_writeonlylemma$] <= 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this$_3.Wand_readonly_for_writeonlylemma$ == 1) -- vercors_magic_wand_demo.encoded.chalice.vpr@116.3--119.4
    
    // -- Check definedness of this$_3.Wand_readonly_for_writeonlylemma$ == 1
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this$_3.Wand_readonly_for_writeonlylemma$ (vercors_magic_wand_demo.encoded.chalice.vpr@116.7--116.53) [159616]"}
        HasDirectPerm(Mask, this$_3, Wand_readonly_for_writeonlylemma$);
    if (Heap[this$_3, Wand_readonly_for_writeonlylemma$] == 1) {
      
      // -- Translating statement: unfold acc(WandDemoreadonly$(this$_3.Wand_readonly_for_writeonlythis_1$), write) -- vercors_magic_wand_demo.encoded.chalice.vpr@117.5--117.85
        
        // -- Check definedness of acc(WandDemoreadonly$(this$_3.Wand_readonly_for_writeonlythis_1$), write)
          assert {:msg "  Unfolding WandDemoreadonly$(this$_3.Wand_readonly_for_writeonlythis_1$) might fail. There might be insufficient permission to access this$_3.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@117.5--117.85) [159617]"}
            HasDirectPerm(Mask, this$_3, Wand_readonly_for_writeonlythis_1$);
        assume WandDemoreadonly$#trigger(Heap, WandDemoreadonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]));
        assume Heap[null, WandDemoreadonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$])] == FrameFragment(Heap[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$]);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding WandDemoreadonly$(this$_3.Wand_readonly_for_writeonlythis_1$) might fail. There might be insufficient permission to access WandDemoreadonly$(this$_3.Wand_readonly_for_writeonlythis_1$) (vercors_magic_wand_demo.encoded.chalice.vpr@117.5--117.85) [159620]"}
            perm <= Mask[null, WandDemoreadonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$])];
        }
        Mask := Mask[null, WandDemoreadonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]):=Mask[null, WandDemoreadonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$])] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, WandDemoreadonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]))) {
            havoc newVersion;
            Heap := Heap[null, WandDemoreadonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]):=newVersion];
          }
        perm := 25 / 100;
        assert {:msg "  Unfolding WandDemoreadonly$(this$_3.Wand_readonly_for_writeonlythis_1$) might fail. Fraction 25 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@117.5--117.85) [159621]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Heap[this$_3, Wand_readonly_for_writeonlythis_1$] != null;
        Mask := Mask[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$:=Mask[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(WandDemowriteonly$(this$_3.Wand_readonly_for_writeonlythis_1$), write) -- vercors_magic_wand_demo.encoded.chalice.vpr@118.5--118.84
        
        // -- Check definedness of acc(WandDemowriteonly$(this$_3.Wand_readonly_for_writeonlythis_1$), write)
          assert {:msg "  Folding WandDemowriteonly$(this$_3.Wand_readonly_for_writeonlythis_1$) might fail. There might be insufficient permission to access this$_3.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@118.5--118.84) [159622]"}
            HasDirectPerm(Mask, this$_3, Wand_readonly_for_writeonlythis_1$);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 100 / 100;
        assert {:msg "  Folding WandDemowriteonly$(this$_3.Wand_readonly_for_writeonlythis_1$) might fail. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@118.5--118.84) [159624]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding WandDemowriteonly$(this$_3.Wand_readonly_for_writeonlythis_1$) might fail. There might be insufficient permission to access this$_3.Wand_readonly_for_writeonlythis_1$.WandDemox$ (vercors_magic_wand_demo.encoded.chalice.vpr@118.5--118.84) [159625]"}
            perm <= Mask[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$];
        }
        Mask := Mask[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$:=Mask[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$] - perm];
        perm := FullPerm;
        Mask := Mask[null, WandDemowriteonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]):=Mask[null, WandDemowriteonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$])] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume WandDemowriteonly$#trigger(Heap, WandDemowriteonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]));
        assume Heap[null, WandDemowriteonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$])] == FrameFragment(Heap[Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$]);
        if (!HasDirectPerm(Mask, null, WandDemowriteonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]))) {
          Heap := Heap[null, WandDemowriteonly$#sm(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, WandDemowriteonly$(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]):=freshVersion];
        }
        Heap := Heap[null, WandDemowriteonly$#sm(Heap[this$_3, Wand_readonly_for_writeonlythis_1$]):=Heap[null, WandDemowriteonly$#sm(Heap[this$_3, Wand_readonly_for_writeonlythis_1$])][Heap[this$_3, Wand_readonly_for_writeonlythis_1$], WandDemox$:=true]];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonlyapply$ might not hold. There might be insufficient permission to access WandDemowriteonly$(old(Wand_readonly_for_writeonlyget_out_1$(this$_3))) (vercors_magic_wand_demo.encoded.chalice.vpr@112.11--112.94) [159627]"}
        perm <= Mask[null, WandDemowriteonly$(Wand_readonly_for_writeonlyget_out_1$(oldHeap, this$_3))];
    }
    Mask := Mask[null, WandDemowriteonly$(Wand_readonly_for_writeonlyget_out_1$(oldHeap, this$_3)):=Mask[null, WandDemowriteonly$(Wand_readonly_for_writeonlyget_out_1$(oldHeap, this$_3))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$
// ==================================================

procedure Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$(this$_5: Ref, k$_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$_1: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_5, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_5 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_1;
    assume state(Heap, Mask);
    assume k$_1 < FullPerm;
    assume state(Heap, Mask);
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@126.12--126.69) [159628]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_5 != null;
    Mask := Mask[this$_5, Wand_readonly_for_writeonlylemma$:=Mask[this$_5, Wand_readonly_for_writeonlylemma$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@127.12--127.68) [159629]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_5 != null;
    Mask := Mask[this$_5, Wand_readonly_for_writeonlyin_1$:=Mask[this$_5, Wand_readonly_for_writeonlyin_1$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@128.12--128.69) [159630]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_5 != null;
    Mask := Mask[this$_5, Wand_readonly_for_writeonlyout_1$:=Mask[this$_5, Wand_readonly_for_writeonlyout_1$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@129.12--129.70) [159631]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_5 != null;
    Mask := Mask[this$_5, Wand_readonly_for_writeonlythis_1$:=Mask[this$_5, Wand_readonly_for_writeonlythis_1$] + perm];
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
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@130.11--130.120) [159632]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_5 != null;
    PostMask := PostMask[this$_5, Wand_readonly_for_writeonlylemma$:=PostMask[this$_5, Wand_readonly_for_writeonlylemma$] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this$_5.Wand_readonly_for_writeonlylemma$ == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlylemma$ (vercors_magic_wand_demo.encoded.chalice.vpr@130.11--130.120) [159633]"}
        HasDirectPerm(PostMask, this$_5, Wand_readonly_for_writeonlylemma$);
    assume PostHeap[this$_5, Wand_readonly_for_writeonlylemma$] == 0;
    assume state(PostHeap, PostMask);
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@131.11--131.121) [159634]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_5 != null;
    PostMask := PostMask[this$_5, Wand_readonly_for_writeonlyin_1$:=PostMask[this$_5, Wand_readonly_for_writeonlyin_1$] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this$_5.Wand_readonly_for_writeonlyin_1$ == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlyin_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@131.11--131.121) [159635]"}
        HasDirectPerm(PostMask, this$_5, Wand_readonly_for_writeonlyin_1$);
    assume PostHeap[this$_5, Wand_readonly_for_writeonlyin_1$] == null;
    assume state(PostHeap, PostMask);
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@133.11--133.123) [159636]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_5 != null;
    PostMask := PostMask[this$_5, Wand_readonly_for_writeonlyout_1$:=PostMask[this$_5, Wand_readonly_for_writeonlyout_1$] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this$_5.Wand_readonly_for_writeonlyout_1$ == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlyout_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@133.11--133.123) [159637]"}
        HasDirectPerm(PostMask, this$_5, Wand_readonly_for_writeonlyout_1$);
    assume PostHeap[this$_5, Wand_readonly_for_writeonlyout_1$] == null;
    assume state(PostHeap, PostMask);
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@134.11--134.125) [159638]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_5 != null;
    PostMask := PostMask[this$_5, Wand_readonly_for_writeonlythis_1$:=PostMask[this$_5, Wand_readonly_for_writeonlythis_1$] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this$_5.Wand_readonly_for_writeonlythis_1$ == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@134.11--134.125) [159639]"}
        HasDirectPerm(PostMask, this$_5, Wand_readonly_for_writeonlythis_1$);
    assume PostHeap[this$_5, Wand_readonly_for_writeonlythis_1$] == null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$_1, $allocated];
  
  // -- Translating statement: this$_5.Wand_readonly_for_writeonlylemma$ := 0 -- vercors_magic_wand_demo.encoded.chalice.vpr@137.3--137.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlylemma$ (vercors_magic_wand_demo.encoded.chalice.vpr@137.3--137.49) [159640]"}
      FullPerm == Mask[this$_5, Wand_readonly_for_writeonlylemma$];
    Heap := Heap[this$_5, Wand_readonly_for_writeonlylemma$:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: this$_5.Wand_readonly_for_writeonlyin_1$ := null -- vercors_magic_wand_demo.encoded.chalice.vpr@138.3--138.51
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlyin_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@138.3--138.51) [159641]"}
      FullPerm == Mask[this$_5, Wand_readonly_for_writeonlyin_1$];
    Heap := Heap[this$_5, Wand_readonly_for_writeonlyin_1$:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this$_5.Wand_readonly_for_writeonlyout_1$ := null -- vercors_magic_wand_demo.encoded.chalice.vpr@139.3--139.52
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlyout_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@139.3--139.52) [159642]"}
      FullPerm == Mask[this$_5, Wand_readonly_for_writeonlyout_1$];
    Heap := Heap[this$_5, Wand_readonly_for_writeonlyout_1$:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this$_5.Wand_readonly_for_writeonlythis_1$ := null -- vercors_magic_wand_demo.encoded.chalice.vpr@140.3--140.53
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@140.3--140.53) [159643]"}
      FullPerm == Mask[this$_5, Wand_readonly_for_writeonlythis_1$];
    Heap := Heap[this$_5, Wand_readonly_for_writeonlythis_1$:=null];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 100 / 100;
    assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@130.11--130.120) [159644]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlylemma$ (vercors_magic_wand_demo.encoded.chalice.vpr@130.11--130.120) [159645]"}
        perm <= Mask[this$_5, Wand_readonly_for_writeonlylemma$];
    }
    Mask := Mask[this$_5, Wand_readonly_for_writeonlylemma$:=Mask[this$_5, Wand_readonly_for_writeonlylemma$] - perm];
    assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. Assertion this$_5.Wand_readonly_for_writeonlylemma$ == 0 might not hold. (vercors_magic_wand_demo.encoded.chalice.vpr@130.11--130.120) [159646]"}
      Heap[this$_5, Wand_readonly_for_writeonlylemma$] == 0;
    perm := 100 / 100;
    assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@131.11--131.121) [159647]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlyin_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@131.11--131.121) [159648]"}
        perm <= Mask[this$_5, Wand_readonly_for_writeonlyin_1$];
    }
    Mask := Mask[this$_5, Wand_readonly_for_writeonlyin_1$:=Mask[this$_5, Wand_readonly_for_writeonlyin_1$] - perm];
    assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. Assertion this$_5.Wand_readonly_for_writeonlyin_1$ == null might not hold. (vercors_magic_wand_demo.encoded.chalice.vpr@131.11--131.121) [159649]"}
      Heap[this$_5, Wand_readonly_for_writeonlyin_1$] == null;
    perm := 100 / 100;
    assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@133.11--133.123) [159650]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlyout_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@133.11--133.123) [159651]"}
        perm <= Mask[this$_5, Wand_readonly_for_writeonlyout_1$];
    }
    Mask := Mask[this$_5, Wand_readonly_for_writeonlyout_1$:=Mask[this$_5, Wand_readonly_for_writeonlyout_1$] - perm];
    assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. Assertion this$_5.Wand_readonly_for_writeonlyout_1$ == null might not hold. (vercors_magic_wand_demo.encoded.chalice.vpr@133.11--133.123) [159652]"}
      Heap[this$_5, Wand_readonly_for_writeonlyout_1$] == null;
    perm := 100 / 100;
    assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@134.11--134.125) [159653]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. There might be insufficient permission to access this$_5.Wand_readonly_for_writeonlythis_1$ (vercors_magic_wand_demo.encoded.chalice.vpr@134.11--134.125) [159654]"}
        perm <= Mask[this$_5, Wand_readonly_for_writeonlythis_1$];
    }
    Mask := Mask[this$_5, Wand_readonly_for_writeonlythis_1$:=Mask[this$_5, Wand_readonly_for_writeonlythis_1$] - perm];
    assert {:msg "  Postcondition of Wand_readonly_for_writeonlyWand_readonly_for_writeonly_init$ might not hold. Assertion this$_5.Wand_readonly_for_writeonlythis_1$ == null might not hold. (vercors_magic_wand_demo.encoded.chalice.vpr@134.11--134.125) [159655]"}
      Heap[this$_5, Wand_readonly_for_writeonlythis_1$] == null;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method WandDemoWandDemo_init$
// ==================================================

procedure WandDemoWandDemo_init$(this$_10: Ref, k$_2: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$_2: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_10, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_10 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_2;
    assume state(Heap, Mask);
    assume k$_2 < FullPerm;
    assume state(Heap, Mask);
    perm := 100 / 100;
    assert {:msg "  Contract might not be well-formed. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@147.12--147.47) [159656]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_10 != null;
    Mask := Mask[this$_10, WandDemox$:=Mask[this$_10, WandDemox$] + perm];
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
    PostMask := PostMask[null, WandDemowriteonly$(this$_10):=PostMask[null, WandDemowriteonly$(this$_10)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$_2, $allocated];
  
  // -- Translating statement: fold acc(WandDemowriteonly$(this$_10), write) -- vercors_magic_wand_demo.encoded.chalice.vpr@151.3--151.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 100 / 100;
    assert {:msg "  Folding WandDemowriteonly$(this$_10) might fail. Fraction 100 / 100 might be negative. (vercors_magic_wand_demo.encoded.chalice.vpr@151.3--151.48) [159658]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding WandDemowriteonly$(this$_10) might fail. There might be insufficient permission to access this$_10.WandDemox$ (vercors_magic_wand_demo.encoded.chalice.vpr@151.3--151.48) [159659]"}
        perm <= Mask[this$_10, WandDemox$];
    }
    Mask := Mask[this$_10, WandDemox$:=Mask[this$_10, WandDemox$] - perm];
    perm := FullPerm;
    Mask := Mask[null, WandDemowriteonly$(this$_10):=Mask[null, WandDemowriteonly$(this$_10)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume WandDemowriteonly$#trigger(Heap, WandDemowriteonly$(this$_10));
    assume Heap[null, WandDemowriteonly$(this$_10)] == FrameFragment(Heap[this$_10, WandDemox$]);
    if (!HasDirectPerm(Mask, null, WandDemowriteonly$(this$_10))) {
      Heap := Heap[null, WandDemowriteonly$#sm(this$_10):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, WandDemowriteonly$(this$_10):=freshVersion];
    }
    Heap := Heap[null, WandDemowriteonly$#sm(this$_10):=Heap[null, WandDemowriteonly$#sm(this$_10)][this$_10, WandDemox$:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of WandDemoWandDemo_init$ might not hold. There might be insufficient permission to access WandDemowriteonly$(this$_10) (vercors_magic_wand_demo.encoded.chalice.vpr@148.11--148.51) [159661]"}
        perm <= Mask[null, WandDemowriteonly$(this$_10)];
    }
    Mask := Mask[null, WandDemowriteonly$(this$_10):=Mask[null, WandDemowriteonly$(this$_10)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}