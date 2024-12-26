// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:12:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testHistoryThreadsApplication.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testHistoryThreadsApplication-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_41: Ref, f_27: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_41, f_27] }
  Heap[o_41, $allocated] ==> Heap[Heap[o_41, f_27], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_42: Ref, f_48: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_42, f_48] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_42, f_48) ==> Heap[o_42, f_48] == ExhaleHeap[o_42, f_48]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_18, f_48] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_48] ==> Heap[o2_18, f_48] == ExhaleHeap[o2_18, f_48]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18), ExhaleHeap[null, WandMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> Heap[null, WandMaskField(pm_f_18)] == ExhaleHeap[null, WandMaskField(pm_f_18)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_18, f_48] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_48] ==> Heap[o2_18, f_48] == ExhaleHeap[o2_18, f_48]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_42: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_42, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_42, $allocated] ==> ExhaleHeap[o_42, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_41: Ref, f_44: (Field A B), v: B ::
  { Heap[o_41, f_44:=v] }
  succHeap(Heap, Heap[o_41, f_44:=v])
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
// - height 1: History__hist_get_x
// - height 0: History__free_get_x
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
// Translation of domain TYPE
// ==================================================

// The type for domain TYPE
type TYPEDomainType;

// Translation of domain function class_Object
function  class_Object(): TYPEDomainType;

// Translation of domain function class_History
function  class_History(): TYPEDomainType;

// Translation of domain function class_SubjectLock
function  class_SubjectLock(): TYPEDomainType;

// Translation of domain function class_Thread
function  class_Thread(): TYPEDomainType;

// Translation of domain function class_Worker
function  class_Worker(): TYPEDomainType;

// Translation of domain function class_Main
function  class_Main(): TYPEDomainType;

// Translation of domain function instanceof
function  instanceof(t1_5: TYPEDomainType, t2_2: TYPEDomainType): bool;

// Translation of domain function type_of
function  type_of(val_3: Ref): TYPEDomainType;

// Translation of domain axiom object_top
axiom (forall t_2: TYPEDomainType ::
  { (instanceof((class_Object(): TYPEDomainType), t_2): bool) }
  (instanceof((class_Object(): TYPEDomainType), t_2): bool)
);

// ==================================================
// Translation of domain Process
// ==================================================

// The type for domain Process
type ProcessDomainType;

// Translation of domain function p_empty
function  p_empty(): ProcessDomainType;

// Translation of domain function p_merge
function  p_merge(p1_1: ProcessDomainType, p2_2: ProcessDomainType): ProcessDomainType;

// Translation of domain function p_seq
function  p_seq(p1_1: ProcessDomainType, p2_2: ProcessDomainType): ProcessDomainType;

// Translation of domain function p_incr
function  p_incr(): ProcessDomainType;

// Translation of domain function p_single
function  p_single(n_84: int): ProcessDomainType;

// Translation of domain function p_dual
function  p_dual(n_84: int, m_18: int): ProcessDomainType;

// Translation of domain axiom empty_1L
axiom (forall p_1: ProcessDomainType ::
  { (p_merge((p_empty(): ProcessDomainType), p_1): ProcessDomainType) }
  (p_merge((p_empty(): ProcessDomainType), p_1): ProcessDomainType) == p_1
);

// Translation of domain axiom empty_2L
axiom (forall p_1: ProcessDomainType ::
  { (p_seq((p_empty(): ProcessDomainType), p_1): ProcessDomainType) }
  (p_seq((p_empty(): ProcessDomainType), p_1): ProcessDomainType) == p_1
);

// Translation of domain axiom empty_2R
axiom (forall p_1: ProcessDomainType ::
  { (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType) }
  (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType) == p_1
);

// Translation of domain axiom seq_assoc
axiom (forall p1_2: ProcessDomainType ::
  
  (forall p2_1: ProcessDomainType ::
    { (p_seq(p1_2, p2_1): ProcessDomainType) }
    (forall p3_1: ProcessDomainType ::
      { (p_seq((p_seq(p1_2, p2_1): ProcessDomainType), p3_1): ProcessDomainType) } { (p_seq(p1_2, (p_seq(p2_1, p3_1): ProcessDomainType)): ProcessDomainType) }
      (p_seq((p_seq(p1_2, p2_1): ProcessDomainType), p3_1): ProcessDomainType) == (p_seq(p1_2, (p_seq(p2_1, p3_1): ProcessDomainType)): ProcessDomainType)
    )
  )
);

// Translation of domain axiom single_def
axiom (forall n: int ::
  { (p_single(n): ProcessDomainType) }
  (if n > 0 then (p_seq((p_incr(): ProcessDomainType), (p_single(n - 1): ProcessDomainType)): ProcessDomainType) else (p_empty(): ProcessDomainType)) == (p_single(n): ProcessDomainType)
);

// Translation of domain axiom dual_def
axiom (forall n: int, m_17: int ::
  { (p_dual(n, m_17): ProcessDomainType) }
  (p_merge((p_single(n): ProcessDomainType), (p_single(m_17): ProcessDomainType)): ProcessDomainType) == (p_dual(n, m_17): ProcessDomainType)
);

// Translation of domain axiom lemma_post
axiom (forall n: int ::
  { (p_single(n): ProcessDomainType) }
  (p_single(n): ProcessDomainType) == (if n > 0 then (p_seq((p_single(n - 1): ProcessDomainType), (p_incr(): ProcessDomainType)): ProcessDomainType) else (p_empty(): ProcessDomainType))
);

// Translation of domain axiom single_axiom_post
axiom (forall m_17: int, n: int ::
  { (p_seq((p_single(m_17): ProcessDomainType), (p_single(n): ProcessDomainType)): ProcessDomainType) }
  (p_seq((p_single(m_17): ProcessDomainType), (p_single(n): ProcessDomainType)): ProcessDomainType) == (p_single(m_17 + n): ProcessDomainType)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique History__x_hist_value: Field NormalField int;
axiom !IsPredicateField(History__x_hist_value);
axiom !IsWandField(History__x_hist_value);
const unique History__x_hist_mode: Field NormalField int;
axiom !IsPredicateField(History__x_hist_mode);
axiom !IsWandField(History__x_hist_mode);
const unique History__x_hist_init: Field NormalField int;
axiom !IsPredicateField(History__x_hist_init);
axiom !IsWandField(History__x_hist_init);
const unique History__x_hist_act: Field NormalField int;
axiom !IsPredicateField(History__x_hist_act);
axiom !IsWandField(History__x_hist_act);
const unique SubjectLock__subject: Field NormalField Ref;
axiom !IsPredicateField(SubjectLock__subject);
axiom !IsWandField(SubjectLock__subject);
const unique Worker__l: Field NormalField Ref;
axiom !IsPredicateField(Worker__l);
axiom !IsWandField(Worker__l);
const unique Worker__s: Field NormalField Ref;
axiom !IsPredicateField(Worker__s);
axiom !IsWandField(Worker__s);

// ==================================================
// Translation of function History__free_get_x
// ==================================================

// Uninterpreted function definitions
function  History__free_get_x(Heap: HeapType, diz: Ref): int;
function  History__free_get_x'(Heap: HeapType, diz: Ref): int;
axiom (forall Heap: HeapType, diz: Ref ::
  { History__free_get_x(Heap, diz) }
  History__free_get_x(Heap, diz) == History__free_get_x'(Heap, diz) && dummyFunction(History__free_get_x#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { History__free_get_x'(Heap, diz) }
  dummyFunction(History__free_get_x#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), History__free_get_x(Heap, diz) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> diz != null ==> History__free_get_x(Heap, diz) == Heap[diz, History__x_hist_value]
);

// Framing axioms
function  History__free_get_x#frame(frame: FrameType, diz: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), History__free_get_x'(Heap, diz) }
  state(Heap, Mask) ==> History__free_get_x'(Heap, diz) == History__free_get_x#frame(FrameFragment(Heap[diz, History__x_hist_value]), diz)
);

// Trigger function (controlling recursive postconditions)
function  History__free_get_x#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  History__free_get_x#triggerStateless(diz: Ref): int;

// Check contract well-formedness and postcondition
procedure History__free_get_x#definedness(diz: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of diz.History__x_hist_value
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@90.1--95.2) [162526]"}
        HasDirectPerm(Mask, diz, History__x_hist_value);
  
  // -- Translate function body
    Result := Heap[diz, History__x_hist_value];
}

// ==================================================
// Translation of function History__hist_get_x
// ==================================================

// Uninterpreted function definitions
function  History__hist_get_x(Heap: HeapType, diz: Ref): int;
function  History__hist_get_x'(Heap: HeapType, diz: Ref): int;
axiom (forall Heap: HeapType, diz: Ref ::
  { History__hist_get_x(Heap, diz) }
  History__hist_get_x(Heap, diz) == History__hist_get_x'(Heap, diz) && dummyFunction(History__hist_get_x#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { History__hist_get_x'(Heap, diz) }
  dummyFunction(History__hist_get_x#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), History__hist_get_x(Heap, diz) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> diz != null ==> History__hist_get_x(Heap, diz) == Heap[diz, History__x_hist_value]
);

// Framing axioms
function  History__hist_get_x#frame(frame: FrameType, diz: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), History__hist_get_x'(Heap, diz) }
  state(Heap, Mask) ==> History__hist_get_x'(Heap, diz) == History__hist_get_x#frame(FrameFragment(Heap[diz, History__x_hist_value]), diz)
);

// Trigger function (controlling recursive postconditions)
function  History__hist_get_x#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  History__hist_get_x#triggerStateless(diz: Ref): int;

// Check contract well-formedness and postcondition
procedure History__hist_get_x#definedness(diz: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of diz.History__x_hist_value
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@97.1--102.2) [162527]"}
        HasDirectPerm(Mask, diz, History__x_hist_value);
  
  // -- Translate function body
    Result := Heap[diz, History__x_hist_value];
}

// ==================================================
// Translation of predicate History__inv
// ==================================================

type PredicateType_History__inv;
function  History__inv(diz: Ref): Field PredicateType_History__inv FrameType;
function  History__inv#sm(diz: Ref): Field PredicateType_History__inv PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(History__inv(diz)) }
  PredicateMaskField(History__inv(diz)) == History__inv#sm(diz)
);
axiom (forall diz: Ref ::
  { History__inv(diz) }
  IsPredicateField(History__inv(diz))
);
axiom (forall diz: Ref ::
  { History__inv(diz) }
  getPredWandId(History__inv(diz)) == 0
);
function  History__inv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  History__inv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { History__inv(diz), History__inv(diz2) }
  History__inv(diz) == History__inv(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { History__inv#sm(diz), History__inv#sm(diz2) }
  History__inv#sm(diz) == History__inv#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { History__inv#trigger(Heap, History__inv(diz)) }
  History__inv#everUsed(History__inv(diz))
);

procedure History__inv#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of History__inv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@104.1--106.2) [162528]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate History__hist_do_incr
// ==================================================

type PredicateType_History__hist_do_incr;
function  History__hist_do_incr(diz: Ref, frac: Perm, proc: ProcessDomainType): Field PredicateType_History__hist_do_incr FrameType;
function  History__hist_do_incr#sm(diz: Ref, frac: Perm, proc: ProcessDomainType): Field PredicateType_History__hist_do_incr PMaskType;
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType ::
  { PredicateMaskField(History__hist_do_incr(diz, frac, proc)) }
  PredicateMaskField(History__hist_do_incr(diz, frac, proc)) == History__hist_do_incr#sm(diz, frac, proc)
);
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType ::
  { History__hist_do_incr(diz, frac, proc) }
  IsPredicateField(History__hist_do_incr(diz, frac, proc))
);
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType ::
  { History__hist_do_incr(diz, frac, proc) }
  getPredWandId(History__hist_do_incr(diz, frac, proc)) == 1
);
function  History__hist_do_incr#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  History__hist_do_incr#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType, diz2: Ref, frac2: Perm, proc2: ProcessDomainType ::
  { History__hist_do_incr(diz, frac, proc), History__hist_do_incr(diz2, frac2, proc2) }
  History__hist_do_incr(diz, frac, proc) == History__hist_do_incr(diz2, frac2, proc2) ==> diz == diz2 && (frac == frac2 && proc == proc2)
);
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType, diz2: Ref, frac2: Perm, proc2: ProcessDomainType ::
  { History__hist_do_incr#sm(diz, frac, proc), History__hist_do_incr#sm(diz2, frac2, proc2) }
  History__hist_do_incr#sm(diz, frac, proc) == History__hist_do_incr#sm(diz2, frac2, proc2) ==> diz == diz2 && (frac == frac2 && proc == proc2)
);

axiom (forall Heap: HeapType, diz: Ref, frac: Perm, proc: ProcessDomainType ::
  { History__hist_do_incr#trigger(Heap, History__hist_do_incr(diz, frac, proc)) }
  History__hist_do_incr#everUsed(History__hist_do_incr(diz, frac, proc))
);

// ==================================================
// Translation of predicate History__hist_idle
// ==================================================

type PredicateType_History__hist_idle;
function  History__hist_idle(diz: Ref, frac: Perm, proc: ProcessDomainType): Field PredicateType_History__hist_idle FrameType;
function  History__hist_idle#sm(diz: Ref, frac: Perm, proc: ProcessDomainType): Field PredicateType_History__hist_idle PMaskType;
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType ::
  { PredicateMaskField(History__hist_idle(diz, frac, proc)) }
  PredicateMaskField(History__hist_idle(diz, frac, proc)) == History__hist_idle#sm(diz, frac, proc)
);
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType ::
  { History__hist_idle(diz, frac, proc) }
  IsPredicateField(History__hist_idle(diz, frac, proc))
);
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType ::
  { History__hist_idle(diz, frac, proc) }
  getPredWandId(History__hist_idle(diz, frac, proc)) == 2
);
function  History__hist_idle#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  History__hist_idle#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType, diz2: Ref, frac2: Perm, proc2: ProcessDomainType ::
  { History__hist_idle(diz, frac, proc), History__hist_idle(diz2, frac2, proc2) }
  History__hist_idle(diz, frac, proc) == History__hist_idle(diz2, frac2, proc2) ==> diz == diz2 && (frac == frac2 && proc == proc2)
);
axiom (forall diz: Ref, frac: Perm, proc: ProcessDomainType, diz2: Ref, frac2: Perm, proc2: ProcessDomainType ::
  { History__hist_idle#sm(diz, frac, proc), History__hist_idle#sm(diz2, frac2, proc2) }
  History__hist_idle#sm(diz, frac, proc) == History__hist_idle#sm(diz2, frac2, proc2) ==> diz == diz2 && (frac == frac2 && proc == proc2)
);

axiom (forall Heap: HeapType, diz: Ref, frac: Perm, proc: ProcessDomainType ::
  { History__hist_idle#trigger(Heap, History__hist_idle(diz, frac, proc)) }
  History__hist_idle#everUsed(History__hist_idle(diz, frac, proc))
);

// ==================================================
// Translation of predicate SubjectLock__inv
// ==================================================

type PredicateType_SubjectLock__inv;
function  SubjectLock__inv(diz: Ref): Field PredicateType_SubjectLock__inv FrameType;
function  SubjectLock__inv#sm(diz: Ref): Field PredicateType_SubjectLock__inv PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(SubjectLock__inv(diz)) }
  PredicateMaskField(SubjectLock__inv(diz)) == SubjectLock__inv#sm(diz)
);
axiom (forall diz: Ref ::
  { SubjectLock__inv(diz) }
  IsPredicateField(SubjectLock__inv(diz))
);
axiom (forall diz: Ref ::
  { SubjectLock__inv(diz) }
  getPredWandId(SubjectLock__inv(diz)) == 3
);
function  SubjectLock__inv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  SubjectLock__inv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { SubjectLock__inv(diz), SubjectLock__inv(diz2) }
  SubjectLock__inv(diz) == SubjectLock__inv(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { SubjectLock__inv#sm(diz), SubjectLock__inv#sm(diz2) }
  SubjectLock__inv#sm(diz) == SubjectLock__inv#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { SubjectLock__inv#trigger(Heap, SubjectLock__inv(diz)) }
  SubjectLock__inv#everUsed(SubjectLock__inv(diz))
);

procedure SubjectLock__inv#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of SubjectLock__inv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, SubjectLock__subject:=Mask[diz, SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(History__inv(diz.SubjectLock__subject), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.SubjectLock__subject (testHistoryThreadsApplication.vpr@112.1--114.2) [162529]"}
        HasDirectPerm(Mask, diz, SubjectLock__subject);
    perm := FullPerm;
    Mask := Mask[null, History__inv(Heap[diz, SubjectLock__subject]):=Mask[null, History__inv(Heap[diz, SubjectLock__subject])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate SubjectLock__valid
// ==================================================

type PredicateType_SubjectLock__valid;
function  SubjectLock__valid(diz: Ref): Field PredicateType_SubjectLock__valid FrameType;
function  SubjectLock__valid#sm(diz: Ref): Field PredicateType_SubjectLock__valid PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(SubjectLock__valid(diz)) }
  PredicateMaskField(SubjectLock__valid(diz)) == SubjectLock__valid#sm(diz)
);
axiom (forall diz: Ref ::
  { SubjectLock__valid(diz) }
  IsPredicateField(SubjectLock__valid(diz))
);
axiom (forall diz: Ref ::
  { SubjectLock__valid(diz) }
  getPredWandId(SubjectLock__valid(diz)) == 4
);
function  SubjectLock__valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  SubjectLock__valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { SubjectLock__valid(diz), SubjectLock__valid(diz2) }
  SubjectLock__valid(diz) == SubjectLock__valid(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { SubjectLock__valid#sm(diz), SubjectLock__valid#sm(diz2) }
  SubjectLock__valid#sm(diz) == SubjectLock__valid#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { SubjectLock__valid#trigger(Heap, SubjectLock__valid(diz)) }
  SubjectLock__valid#everUsed(SubjectLock__valid(diz))
);

// ==================================================
// Translation of predicate SubjectLock__locked
// ==================================================

type PredicateType_SubjectLock__locked;
function  SubjectLock__locked(diz: Ref, p_1: Perm, count_1: int): Field PredicateType_SubjectLock__locked FrameType;
function  SubjectLock__locked#sm(diz: Ref, p_1: Perm, count_1: int): Field PredicateType_SubjectLock__locked PMaskType;
axiom (forall diz: Ref, p_1: Perm, count_1: int ::
  { PredicateMaskField(SubjectLock__locked(diz, p_1, count_1)) }
  PredicateMaskField(SubjectLock__locked(diz, p_1, count_1)) == SubjectLock__locked#sm(diz, p_1, count_1)
);
axiom (forall diz: Ref, p_1: Perm, count_1: int ::
  { SubjectLock__locked(diz, p_1, count_1) }
  IsPredicateField(SubjectLock__locked(diz, p_1, count_1))
);
axiom (forall diz: Ref, p_1: Perm, count_1: int ::
  { SubjectLock__locked(diz, p_1, count_1) }
  getPredWandId(SubjectLock__locked(diz, p_1, count_1)) == 5
);
function  SubjectLock__locked#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  SubjectLock__locked#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, count_1: int, diz2: Ref, p2_1: Perm, count2: int ::
  { SubjectLock__locked(diz, p_1, count_1), SubjectLock__locked(diz2, p2_1, count2) }
  SubjectLock__locked(diz, p_1, count_1) == SubjectLock__locked(diz2, p2_1, count2) ==> diz == diz2 && (p_1 == p2_1 && count_1 == count2)
);
axiom (forall diz: Ref, p_1: Perm, count_1: int, diz2: Ref, p2_1: Perm, count2: int ::
  { SubjectLock__locked#sm(diz, p_1, count_1), SubjectLock__locked#sm(diz2, p2_1, count2) }
  SubjectLock__locked#sm(diz, p_1, count_1) == SubjectLock__locked#sm(diz2, p2_1, count2) ==> diz == diz2 && (p_1 == p2_1 && count_1 == count2)
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm, count_1: int ::
  { SubjectLock__locked#trigger(Heap, SubjectLock__locked(diz, p_1, count_1)) }
  SubjectLock__locked#everUsed(SubjectLock__locked(diz, p_1, count_1))
);

// ==================================================
// Translation of predicate Thread__is_a_Thread
// ==================================================

type PredicateType_Thread__is_a_Thread;
function  Thread__is_a_Thread(diz: Ref): Field PredicateType_Thread__is_a_Thread FrameType;
function  Thread__is_a_Thread#sm(diz: Ref): Field PredicateType_Thread__is_a_Thread PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Thread__is_a_Thread(diz)) }
  PredicateMaskField(Thread__is_a_Thread(diz)) == Thread__is_a_Thread#sm(diz)
);
axiom (forall diz: Ref ::
  { Thread__is_a_Thread(diz) }
  IsPredicateField(Thread__is_a_Thread(diz))
);
axiom (forall diz: Ref ::
  { Thread__is_a_Thread(diz) }
  getPredWandId(Thread__is_a_Thread(diz)) == 6
);
function  Thread__is_a_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__is_a_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Thread__is_a_Thread(diz), Thread__is_a_Thread(diz2) }
  Thread__is_a_Thread(diz) == Thread__is_a_Thread(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Thread__is_a_Thread#sm(diz), Thread__is_a_Thread#sm(diz2) }
  Thread__is_a_Thread#sm(diz) == Thread__is_a_Thread#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Thread__is_a_Thread#trigger(Heap, Thread__is_a_Thread(diz)) }
  Thread__is_a_Thread#everUsed(Thread__is_a_Thread(diz))
);

// ==================================================
// Translation of predicate Thread__instance_of_Thread
// ==================================================

type PredicateType_Thread__instance_of_Thread;
function  Thread__instance_of_Thread(diz: Ref): Field PredicateType_Thread__instance_of_Thread FrameType;
function  Thread__instance_of_Thread#sm(diz: Ref): Field PredicateType_Thread__instance_of_Thread PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Thread__instance_of_Thread(diz)) }
  PredicateMaskField(Thread__instance_of_Thread(diz)) == Thread__instance_of_Thread#sm(diz)
);
axiom (forall diz: Ref ::
  { Thread__instance_of_Thread(diz) }
  IsPredicateField(Thread__instance_of_Thread(diz))
);
axiom (forall diz: Ref ::
  { Thread__instance_of_Thread(diz) }
  getPredWandId(Thread__instance_of_Thread(diz)) == 7
);
function  Thread__instance_of_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__instance_of_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Thread__instance_of_Thread(diz), Thread__instance_of_Thread(diz2) }
  Thread__instance_of_Thread(diz) == Thread__instance_of_Thread(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Thread__instance_of_Thread#sm(diz), Thread__instance_of_Thread#sm(diz2) }
  Thread__instance_of_Thread#sm(diz) == Thread__instance_of_Thread#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Thread__instance_of_Thread#trigger(Heap, Thread__instance_of_Thread(diz)) }
  Thread__instance_of_Thread#everUsed(Thread__instance_of_Thread(diz))
);

// ==================================================
// Translation of predicate Thread__joinToken
// ==================================================

type PredicateType_Thread__joinToken;
function  Thread__joinToken(diz: Ref, p_1: Perm): Field PredicateType_Thread__joinToken FrameType;
function  Thread__joinToken#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__joinToken PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__joinToken(diz, p_1)) }
  PredicateMaskField(Thread__joinToken(diz, p_1)) == Thread__joinToken#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__joinToken(diz, p_1) }
  IsPredicateField(Thread__joinToken(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__joinToken(diz, p_1) }
  getPredWandId(Thread__joinToken(diz, p_1)) == 8
);
function  Thread__joinToken#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__joinToken#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__joinToken(diz, p_1), Thread__joinToken(diz2, p2_1) }
  Thread__joinToken(diz, p_1) == Thread__joinToken(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__joinToken#sm(diz, p_1), Thread__joinToken#sm(diz2, p2_1) }
  Thread__joinToken#sm(diz, p_1) == Thread__joinToken#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__joinToken#trigger(Heap, Thread__joinToken(diz, p_1)) }
  Thread__joinToken#everUsed(Thread__joinToken(diz, p_1))
);

// ==================================================
// Translation of predicate Thread__preFork
// ==================================================

type PredicateType_Thread__preFork;
function  Thread__preFork(diz: Ref, p_1: Perm): Field PredicateType_Thread__preFork FrameType;
function  Thread__preFork#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__preFork PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__preFork(diz, p_1)) }
  PredicateMaskField(Thread__preFork(diz, p_1)) == Thread__preFork#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__preFork(diz, p_1) }
  IsPredicateField(Thread__preFork(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__preFork(diz, p_1) }
  getPredWandId(Thread__preFork(diz, p_1)) == 9
);
function  Thread__preFork#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__preFork#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__preFork(diz, p_1), Thread__preFork(diz2, p2_1) }
  Thread__preFork(diz, p_1) == Thread__preFork(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__preFork#sm(diz, p_1), Thread__preFork#sm(diz2, p2_1) }
  Thread__preFork#sm(diz, p_1) == Thread__preFork#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__preFork#trigger(Heap, Thread__preFork(diz, p_1)) }
  Thread__preFork#everUsed(Thread__preFork(diz, p_1))
);

// ==================================================
// Translation of predicate Thread__postJoin
// ==================================================

type PredicateType_Thread__postJoin;
function  Thread__postJoin(diz: Ref, p_1: Perm): Field PredicateType_Thread__postJoin FrameType;
function  Thread__postJoin#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__postJoin PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__postJoin(diz, p_1)) }
  PredicateMaskField(Thread__postJoin(diz, p_1)) == Thread__postJoin#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__postJoin(diz, p_1) }
  IsPredicateField(Thread__postJoin(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__postJoin(diz, p_1) }
  getPredWandId(Thread__postJoin(diz, p_1)) == 10
);
function  Thread__postJoin#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__postJoin#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__postJoin(diz, p_1), Thread__postJoin(diz2, p2_1) }
  Thread__postJoin(diz, p_1) == Thread__postJoin(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__postJoin#sm(diz, p_1), Thread__postJoin#sm(diz2, p2_1) }
  Thread__postJoin#sm(diz, p_1) == Thread__postJoin#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__postJoin#trigger(Heap, Thread__postJoin(diz, p_1)) }
  Thread__postJoin#everUsed(Thread__postJoin(diz, p_1))
);

// ==================================================
// Translation of predicate Thread__joinToken_at_Thread
// ==================================================

type PredicateType_Thread__joinToken_at_Thread;
function  Thread__joinToken_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Thread__joinToken_at_Thread FrameType;
function  Thread__joinToken_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__joinToken_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__joinToken_at_Thread(diz, p_1)) }
  PredicateMaskField(Thread__joinToken_at_Thread(diz, p_1)) == Thread__joinToken_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__joinToken_at_Thread(diz, p_1) }
  IsPredicateField(Thread__joinToken_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__joinToken_at_Thread(diz, p_1) }
  getPredWandId(Thread__joinToken_at_Thread(diz, p_1)) == 11
);
function  Thread__joinToken_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__joinToken_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__joinToken_at_Thread(diz, p_1), Thread__joinToken_at_Thread(diz2, p2_1) }
  Thread__joinToken_at_Thread(diz, p_1) == Thread__joinToken_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__joinToken_at_Thread#sm(diz, p_1), Thread__joinToken_at_Thread#sm(diz2, p2_1) }
  Thread__joinToken_at_Thread#sm(diz, p_1) == Thread__joinToken_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__joinToken_at_Thread#trigger(Heap, Thread__joinToken_at_Thread(diz, p_1)) }
  Thread__joinToken_at_Thread#everUsed(Thread__joinToken_at_Thread(diz, p_1))
);

// ==================================================
// Translation of predicate Thread__preFork_at_Thread
// ==================================================

type PredicateType_Thread__preFork_at_Thread;
function  Thread__preFork_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Thread__preFork_at_Thread FrameType;
function  Thread__preFork_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__preFork_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__preFork_at_Thread(diz, p_1)) }
  PredicateMaskField(Thread__preFork_at_Thread(diz, p_1)) == Thread__preFork_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__preFork_at_Thread(diz, p_1) }
  IsPredicateField(Thread__preFork_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__preFork_at_Thread(diz, p_1) }
  getPredWandId(Thread__preFork_at_Thread(diz, p_1)) == 12
);
function  Thread__preFork_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__preFork_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__preFork_at_Thread(diz, p_1), Thread__preFork_at_Thread(diz2, p2_1) }
  Thread__preFork_at_Thread(diz, p_1) == Thread__preFork_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__preFork_at_Thread#sm(diz, p_1), Thread__preFork_at_Thread#sm(diz2, p2_1) }
  Thread__preFork_at_Thread#sm(diz, p_1) == Thread__preFork_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__preFork_at_Thread#trigger(Heap, Thread__preFork_at_Thread(diz, p_1)) }
  Thread__preFork_at_Thread#everUsed(Thread__preFork_at_Thread(diz, p_1))
);

procedure Thread__preFork_at_Thread#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Thread__preFork_at_Thread
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Thread__postJoin_at_Thread
// ==================================================

type PredicateType_Thread__postJoin_at_Thread;
function  Thread__postJoin_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Thread__postJoin_at_Thread FrameType;
function  Thread__postJoin_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__postJoin_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__postJoin_at_Thread(diz, p_1)) }
  PredicateMaskField(Thread__postJoin_at_Thread(diz, p_1)) == Thread__postJoin_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__postJoin_at_Thread(diz, p_1) }
  IsPredicateField(Thread__postJoin_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__postJoin_at_Thread(diz, p_1) }
  getPredWandId(Thread__postJoin_at_Thread(diz, p_1)) == 13
);
function  Thread__postJoin_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__postJoin_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__postJoin_at_Thread(diz, p_1), Thread__postJoin_at_Thread(diz2, p2_1) }
  Thread__postJoin_at_Thread(diz, p_1) == Thread__postJoin_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__postJoin_at_Thread#sm(diz, p_1), Thread__postJoin_at_Thread#sm(diz2, p2_1) }
  Thread__postJoin_at_Thread#sm(diz, p_1) == Thread__postJoin_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__postJoin_at_Thread#trigger(Heap, Thread__postJoin_at_Thread(diz, p_1)) }
  Thread__postJoin_at_Thread#everUsed(Thread__postJoin_at_Thread(diz, p_1))
);

procedure Thread__postJoin_at_Thread#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Thread__postJoin_at_Thread
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__is_a_Worker
// ==================================================

type PredicateType_Worker__is_a_Worker;
function  Worker__is_a_Worker(diz: Ref): Field PredicateType_Worker__is_a_Worker FrameType;
function  Worker__is_a_Worker#sm(diz: Ref): Field PredicateType_Worker__is_a_Worker PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__is_a_Worker(diz)) }
  PredicateMaskField(Worker__is_a_Worker(diz)) == Worker__is_a_Worker#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__is_a_Worker(diz) }
  IsPredicateField(Worker__is_a_Worker(diz))
);
axiom (forall diz: Ref ::
  { Worker__is_a_Worker(diz) }
  getPredWandId(Worker__is_a_Worker(diz)) == 14
);
function  Worker__is_a_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__is_a_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__is_a_Worker(diz), Worker__is_a_Worker(diz2) }
  Worker__is_a_Worker(diz) == Worker__is_a_Worker(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__is_a_Worker#sm(diz), Worker__is_a_Worker#sm(diz2) }
  Worker__is_a_Worker#sm(diz) == Worker__is_a_Worker#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__is_a_Worker#trigger(Heap, Worker__is_a_Worker(diz)) }
  Worker__is_a_Worker#everUsed(Worker__is_a_Worker(diz))
);

// ==================================================
// Translation of predicate Worker__instance_of_Worker
// ==================================================

type PredicateType_Worker__instance_of_Worker;
function  Worker__instance_of_Worker(diz: Ref): Field PredicateType_Worker__instance_of_Worker FrameType;
function  Worker__instance_of_Worker#sm(diz: Ref): Field PredicateType_Worker__instance_of_Worker PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__instance_of_Worker(diz)) }
  PredicateMaskField(Worker__instance_of_Worker(diz)) == Worker__instance_of_Worker#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__instance_of_Worker(diz) }
  IsPredicateField(Worker__instance_of_Worker(diz))
);
axiom (forall diz: Ref ::
  { Worker__instance_of_Worker(diz) }
  getPredWandId(Worker__instance_of_Worker(diz)) == 15
);
function  Worker__instance_of_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__instance_of_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__instance_of_Worker(diz), Worker__instance_of_Worker(diz2) }
  Worker__instance_of_Worker(diz) == Worker__instance_of_Worker(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__instance_of_Worker#sm(diz), Worker__instance_of_Worker#sm(diz2) }
  Worker__instance_of_Worker#sm(diz) == Worker__instance_of_Worker#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__instance_of_Worker#trigger(Heap, Worker__instance_of_Worker(diz)) }
  Worker__instance_of_Worker#everUsed(Worker__instance_of_Worker(diz))
);

// ==================================================
// Translation of predicate Worker__is_a_Thread
// ==================================================

type PredicateType_Worker__is_a_Thread;
function  Worker__is_a_Thread(diz: Ref): Field PredicateType_Worker__is_a_Thread FrameType;
function  Worker__is_a_Thread#sm(diz: Ref): Field PredicateType_Worker__is_a_Thread PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__is_a_Thread(diz)) }
  PredicateMaskField(Worker__is_a_Thread(diz)) == Worker__is_a_Thread#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__is_a_Thread(diz) }
  IsPredicateField(Worker__is_a_Thread(diz))
);
axiom (forall diz: Ref ::
  { Worker__is_a_Thread(diz) }
  getPredWandId(Worker__is_a_Thread(diz)) == 16
);
function  Worker__is_a_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__is_a_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__is_a_Thread(diz), Worker__is_a_Thread(diz2) }
  Worker__is_a_Thread(diz) == Worker__is_a_Thread(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__is_a_Thread#sm(diz), Worker__is_a_Thread#sm(diz2) }
  Worker__is_a_Thread#sm(diz) == Worker__is_a_Thread#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__is_a_Thread#trigger(Heap, Worker__is_a_Thread(diz)) }
  Worker__is_a_Thread#everUsed(Worker__is_a_Thread(diz))
);

// ==================================================
// Translation of predicate Worker__instance_of_Thread
// ==================================================

type PredicateType_Worker__instance_of_Thread;
function  Worker__instance_of_Thread(diz: Ref): Field PredicateType_Worker__instance_of_Thread FrameType;
function  Worker__instance_of_Thread#sm(diz: Ref): Field PredicateType_Worker__instance_of_Thread PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__instance_of_Thread(diz)) }
  PredicateMaskField(Worker__instance_of_Thread(diz)) == Worker__instance_of_Thread#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__instance_of_Thread(diz) }
  IsPredicateField(Worker__instance_of_Thread(diz))
);
axiom (forall diz: Ref ::
  { Worker__instance_of_Thread(diz) }
  getPredWandId(Worker__instance_of_Thread(diz)) == 17
);
function  Worker__instance_of_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__instance_of_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__instance_of_Thread(diz), Worker__instance_of_Thread(diz2) }
  Worker__instance_of_Thread(diz) == Worker__instance_of_Thread(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__instance_of_Thread#sm(diz), Worker__instance_of_Thread#sm(diz2) }
  Worker__instance_of_Thread#sm(diz) == Worker__instance_of_Thread#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__instance_of_Thread#trigger(Heap, Worker__instance_of_Thread(diz)) }
  Worker__instance_of_Thread#everUsed(Worker__instance_of_Thread(diz))
);

// ==================================================
// Translation of predicate Worker__joinToken
// ==================================================

type PredicateType_Worker__joinToken;
function  Worker__joinToken(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken FrameType;
function  Worker__joinToken#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__joinToken(diz, p_1)) }
  PredicateMaskField(Worker__joinToken(diz, p_1)) == Worker__joinToken#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken(diz, p_1) }
  IsPredicateField(Worker__joinToken(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken(diz, p_1) }
  getPredWandId(Worker__joinToken(diz, p_1)) == 18
);
function  Worker__joinToken#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__joinToken#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken(diz, p_1), Worker__joinToken(diz2, p2_1) }
  Worker__joinToken(diz, p_1) == Worker__joinToken(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken#sm(diz, p_1), Worker__joinToken#sm(diz2, p2_1) }
  Worker__joinToken#sm(diz, p_1) == Worker__joinToken#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__joinToken#trigger(Heap, Worker__joinToken(diz, p_1)) }
  Worker__joinToken#everUsed(Worker__joinToken(diz, p_1))
);

// ==================================================
// Translation of predicate Worker__joinToken_at_Worker
// ==================================================

type PredicateType_Worker__joinToken_at_Worker;
function  Worker__joinToken_at_Worker(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken_at_Worker FrameType;
function  Worker__joinToken_at_Worker#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken_at_Worker PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__joinToken_at_Worker(diz, p_1)) }
  PredicateMaskField(Worker__joinToken_at_Worker(diz, p_1)) == Worker__joinToken_at_Worker#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Worker(diz, p_1) }
  IsPredicateField(Worker__joinToken_at_Worker(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Worker(diz, p_1) }
  getPredWandId(Worker__joinToken_at_Worker(diz, p_1)) == 19
);
function  Worker__joinToken_at_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__joinToken_at_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken_at_Worker(diz, p_1), Worker__joinToken_at_Worker(diz2, p2_1) }
  Worker__joinToken_at_Worker(diz, p_1) == Worker__joinToken_at_Worker(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken_at_Worker#sm(diz, p_1), Worker__joinToken_at_Worker#sm(diz2, p2_1) }
  Worker__joinToken_at_Worker#sm(diz, p_1) == Worker__joinToken_at_Worker#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Worker#trigger(Heap, Worker__joinToken_at_Worker(diz, p_1)) }
  Worker__joinToken_at_Worker#everUsed(Worker__joinToken_at_Worker(diz, p_1))
);

procedure Worker__joinToken_at_Worker#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Worker__joinToken_at_Worker
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    Mask := Mask[null, Worker__joinToken_at_Thread(diz, p_1):=Mask[null, Worker__joinToken_at_Thread(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__preFork
// ==================================================

type PredicateType_Worker__preFork;
function  Worker__preFork(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork FrameType;
function  Worker__preFork#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__preFork(diz, p_1)) }
  PredicateMaskField(Worker__preFork(diz, p_1)) == Worker__preFork#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork(diz, p_1) }
  IsPredicateField(Worker__preFork(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork(diz, p_1) }
  getPredWandId(Worker__preFork(diz, p_1)) == 20
);
function  Worker__preFork#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__preFork#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork(diz, p_1), Worker__preFork(diz2, p2_1) }
  Worker__preFork(diz, p_1) == Worker__preFork(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork#sm(diz, p_1), Worker__preFork#sm(diz2, p2_1) }
  Worker__preFork#sm(diz, p_1) == Worker__preFork#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__preFork#trigger(Heap, Worker__preFork(diz, p_1)) }
  Worker__preFork#everUsed(Worker__preFork(diz, p_1))
);

// ==================================================
// Translation of predicate Worker__postJoin
// ==================================================

type PredicateType_Worker__postJoin;
function  Worker__postJoin(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin FrameType;
function  Worker__postJoin#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__postJoin(diz, p_1)) }
  PredicateMaskField(Worker__postJoin(diz, p_1)) == Worker__postJoin#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin(diz, p_1) }
  IsPredicateField(Worker__postJoin(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin(diz, p_1) }
  getPredWandId(Worker__postJoin(diz, p_1)) == 21
);
function  Worker__postJoin#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__postJoin#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin(diz, p_1), Worker__postJoin(diz2, p2_1) }
  Worker__postJoin(diz, p_1) == Worker__postJoin(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin#sm(diz, p_1), Worker__postJoin#sm(diz2, p2_1) }
  Worker__postJoin#sm(diz, p_1) == Worker__postJoin#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__postJoin#trigger(Heap, Worker__postJoin(diz, p_1)) }
  Worker__postJoin#everUsed(Worker__postJoin(diz, p_1))
);

// ==================================================
// Translation of predicate Worker__joinToken_at_Thread
// ==================================================

type PredicateType_Worker__joinToken_at_Thread;
function  Worker__joinToken_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken_at_Thread FrameType;
function  Worker__joinToken_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__joinToken_at_Thread(diz, p_1)) }
  PredicateMaskField(Worker__joinToken_at_Thread(diz, p_1)) == Worker__joinToken_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Thread(diz, p_1) }
  IsPredicateField(Worker__joinToken_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Thread(diz, p_1) }
  getPredWandId(Worker__joinToken_at_Thread(diz, p_1)) == 22
);
function  Worker__joinToken_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__joinToken_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken_at_Thread(diz, p_1), Worker__joinToken_at_Thread(diz2, p2_1) }
  Worker__joinToken_at_Thread(diz, p_1) == Worker__joinToken_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken_at_Thread#sm(diz, p_1), Worker__joinToken_at_Thread#sm(diz2, p2_1) }
  Worker__joinToken_at_Thread#sm(diz, p_1) == Worker__joinToken_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Thread#trigger(Heap, Worker__joinToken_at_Thread(diz, p_1)) }
  Worker__joinToken_at_Thread#everUsed(Worker__joinToken_at_Thread(diz, p_1))
);

// ==================================================
// Translation of predicate Worker__preFork_at_Thread
// ==================================================

type PredicateType_Worker__preFork_at_Thread;
function  Worker__preFork_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork_at_Thread FrameType;
function  Worker__preFork_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__preFork_at_Thread(diz, p_1)) }
  PredicateMaskField(Worker__preFork_at_Thread(diz, p_1)) == Worker__preFork_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Thread(diz, p_1) }
  IsPredicateField(Worker__preFork_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Thread(diz, p_1) }
  getPredWandId(Worker__preFork_at_Thread(diz, p_1)) == 23
);
function  Worker__preFork_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__preFork_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork_at_Thread(diz, p_1), Worker__preFork_at_Thread(diz2, p2_1) }
  Worker__preFork_at_Thread(diz, p_1) == Worker__preFork_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork_at_Thread#sm(diz, p_1), Worker__preFork_at_Thread#sm(diz2, p2_1) }
  Worker__preFork_at_Thread#sm(diz, p_1) == Worker__preFork_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Thread#trigger(Heap, Worker__preFork_at_Thread(diz, p_1)) }
  Worker__preFork_at_Thread#everUsed(Worker__preFork_at_Thread(diz, p_1))
);

procedure Worker__preFork_at_Thread#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Worker__preFork_at_Thread
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__postJoin_at_Thread
// ==================================================

type PredicateType_Worker__postJoin_at_Thread;
function  Worker__postJoin_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin_at_Thread FrameType;
function  Worker__postJoin_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__postJoin_at_Thread(diz, p_1)) }
  PredicateMaskField(Worker__postJoin_at_Thread(diz, p_1)) == Worker__postJoin_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Thread(diz, p_1) }
  IsPredicateField(Worker__postJoin_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Thread(diz, p_1) }
  getPredWandId(Worker__postJoin_at_Thread(diz, p_1)) == 24
);
function  Worker__postJoin_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__postJoin_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin_at_Thread(diz, p_1), Worker__postJoin_at_Thread(diz2, p2_1) }
  Worker__postJoin_at_Thread(diz, p_1) == Worker__postJoin_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin_at_Thread#sm(diz, p_1), Worker__postJoin_at_Thread#sm(diz2, p2_1) }
  Worker__postJoin_at_Thread#sm(diz, p_1) == Worker__postJoin_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Thread#trigger(Heap, Worker__postJoin_at_Thread(diz, p_1)) }
  Worker__postJoin_at_Thread#everUsed(Worker__postJoin_at_Thread(diz, p_1))
);

procedure Worker__postJoin_at_Thread#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Worker__postJoin_at_Thread
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__preFork_at_Worker
// ==================================================

type PredicateType_Worker__preFork_at_Worker;
function  Worker__preFork_at_Worker(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork_at_Worker FrameType;
function  Worker__preFork_at_Worker#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork_at_Worker PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__preFork_at_Worker(diz, p_1)) }
  PredicateMaskField(Worker__preFork_at_Worker(diz, p_1)) == Worker__preFork_at_Worker#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Worker(diz, p_1) }
  IsPredicateField(Worker__preFork_at_Worker(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Worker(diz, p_1) }
  getPredWandId(Worker__preFork_at_Worker(diz, p_1)) == 25
);
function  Worker__preFork_at_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__preFork_at_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork_at_Worker(diz, p_1), Worker__preFork_at_Worker(diz2, p2_1) }
  Worker__preFork_at_Worker(diz, p_1) == Worker__preFork_at_Worker(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork_at_Worker#sm(diz, p_1), Worker__preFork_at_Worker#sm(diz2, p2_1) }
  Worker__preFork_at_Worker#sm(diz, p_1) == Worker__preFork_at_Worker#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Worker#trigger(Heap, Worker__preFork_at_Worker(diz, p_1)) }
  Worker__preFork_at_Worker#everUsed(Worker__preFork_at_Worker(diz, p_1))
);

procedure Worker__preFork_at_Worker#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  
  // -- Check definedness of predicate body of Worker__preFork_at_Worker
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, p_1):=Mask[null, Worker__preFork_at_Thread(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume p_1 == FullPerm;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__l:=Mask[diz, Worker__l] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Worker__l.SubjectLock__subject, wildcard)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@168.1--170.2) [162530]"}
        HasDirectPerm(Mask, diz, Worker__l);
    havoc wildcard;
    perm := wildcard;
    assume Heap[diz, Worker__l] != null;
    Mask := Mask[Heap[diz, Worker__l], SubjectLock__subject:=Mask[Heap[diz, Worker__l], SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__s:=Mask[diz, Worker__s] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Worker__l.SubjectLock__subject == diz.Worker__s
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@168.1--170.2) [162531]"}
        HasDirectPerm(Mask, diz, Worker__l);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject (testHistoryThreadsApplication.vpr@168.1--170.2) [162532]"}
        HasDirectPerm(Mask, Heap[diz, Worker__l], SubjectLock__subject);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@168.1--170.2) [162533]"}
        HasDirectPerm(Mask, diz, Worker__s);
    assume Heap[Heap[diz, Worker__l], SubjectLock__subject] == Heap[diz, Worker__s];
    
    // -- Check definedness of acc(SubjectLock__valid(diz.Worker__l), 1 / 2)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@168.1--170.2) [162534]"}
        HasDirectPerm(Mask, diz, Worker__l);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@168.1--170.2) [162535]"}
      perm >= NoPerm;
    Mask := Mask[null, SubjectLock__valid(Heap[diz, Worker__l]):=Mask[null, SubjectLock__valid(Heap[diz, Worker__l])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(History__hist_idle(diz.Worker__s, 1 / 2, p_empty()), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@168.1--170.2) [162536]"}
        HasDirectPerm(Mask, diz, Worker__s);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__postJoin_at_Worker
// ==================================================

type PredicateType_Worker__postJoin_at_Worker;
function  Worker__postJoin_at_Worker(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin_at_Worker FrameType;
function  Worker__postJoin_at_Worker#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin_at_Worker PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__postJoin_at_Worker(diz, p_1)) }
  PredicateMaskField(Worker__postJoin_at_Worker(diz, p_1)) == Worker__postJoin_at_Worker#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Worker(diz, p_1) }
  IsPredicateField(Worker__postJoin_at_Worker(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Worker(diz, p_1) }
  getPredWandId(Worker__postJoin_at_Worker(diz, p_1)) == 26
);
function  Worker__postJoin_at_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__postJoin_at_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin_at_Worker(diz, p_1), Worker__postJoin_at_Worker(diz2, p2_1) }
  Worker__postJoin_at_Worker(diz, p_1) == Worker__postJoin_at_Worker(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin_at_Worker#sm(diz, p_1), Worker__postJoin_at_Worker#sm(diz2, p2_1) }
  Worker__postJoin_at_Worker#sm(diz, p_1) == Worker__postJoin_at_Worker#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(diz, p_1)) }
  Worker__postJoin_at_Worker#everUsed(Worker__postJoin_at_Worker(diz, p_1))
);

procedure Worker__postJoin_at_Worker#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  
  // -- Check definedness of predicate body of Worker__postJoin_at_Worker
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, p_1):=Mask[null, Worker__postJoin_at_Thread(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume p_1 == FullPerm;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__l:=Mask[diz, Worker__l] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Worker__l.SubjectLock__subject, wildcard)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@172.1--174.2) [162537]"}
        HasDirectPerm(Mask, diz, Worker__l);
    havoc wildcard;
    perm := wildcard;
    assume Heap[diz, Worker__l] != null;
    Mask := Mask[Heap[diz, Worker__l], SubjectLock__subject:=Mask[Heap[diz, Worker__l], SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__s:=Mask[diz, Worker__s] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Worker__l.SubjectLock__subject == diz.Worker__s
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@172.1--174.2) [162538]"}
        HasDirectPerm(Mask, diz, Worker__l);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject (testHistoryThreadsApplication.vpr@172.1--174.2) [162539]"}
        HasDirectPerm(Mask, Heap[diz, Worker__l], SubjectLock__subject);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@172.1--174.2) [162540]"}
        HasDirectPerm(Mask, diz, Worker__s);
    assume Heap[Heap[diz, Worker__l], SubjectLock__subject] == Heap[diz, Worker__s];
    
    // -- Check definedness of acc(SubjectLock__valid(diz.Worker__l), 1 / 2)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@172.1--174.2) [162541]"}
        HasDirectPerm(Mask, diz, Worker__l);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@172.1--174.2) [162542]"}
      perm >= NoPerm;
    Mask := Mask[null, SubjectLock__valid(Heap[diz, Worker__l]):=Mask[null, SubjectLock__valid(Heap[diz, Worker__l])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(History__hist_idle(diz.Worker__s, 1 / 2, p_single(1)), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@172.1--174.2) [162543]"}
        HasDirectPerm(Mask, diz, Worker__s);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)):=Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method History__incr_begin
// ==================================================

procedure History__incr_begin(diz: Ref, current_thread_id: int, frac: Perm, proc: ProcessDomainType) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume frac != NoPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(diz, frac, proc):=Mask[null, History__hist_idle(diz, frac, proc)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@182.12--182.83) [162544]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 1;
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
    assume frac != NoPerm;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, History__hist_do_incr(diz, frac, proc):=PostMask[null, History__hist_do_incr(diz, frac, proc)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_value:=PostMask[diz, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@186.11--186.82) [162545]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 2;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@187.11--187.70) [162546]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@187.11--187.70) [162547]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_act:=PostMask[diz, History__x_hist_act] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == diz.History__x_hist_act
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@189.11--189.63) [162548]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_act (testHistoryThreadsApplication.vpr@189.11--189.63) [162549]"}
        HasDirectPerm(PostMask, diz, History__x_hist_act);
    assume PostHeap[diz, History__x_hist_value] == PostHeap[diz, History__x_hist_act];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@191.3--191.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion frac != none might not hold. (testHistoryThreadsApplication.vpr@183.11--183.23) [162550]"}
      frac != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access History__hist_do_incr(diz, frac, proc) (testHistoryThreadsApplication.vpr@184.11--184.61) [162551]"}
        perm <= Mask[null, History__hist_do_incr(diz, frac, proc)];
    }
    Mask := Mask[null, History__hist_do_incr(diz, frac, proc):=Mask[null, History__hist_do_incr(diz, frac, proc)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@185.11--185.48) [162552]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@186.11--186.82) [162553]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_mode == 2 might not hold. (testHistoryThreadsApplication.vpr@186.11--186.82) [162554]"}
      Heap[diz, History__x_hist_mode] == 2;
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryThreadsApplication.vpr@187.11--187.70) [162555]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_act (testHistoryThreadsApplication.vpr@188.11--188.46) [162556]"}
        perm <= Mask[diz, History__x_hist_act];
    }
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] - perm];
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_value == diz.History__x_hist_act might not hold. (testHistoryThreadsApplication.vpr@189.11--189.63) [162557]"}
      Heap[diz, History__x_hist_value] == Heap[diz, History__x_hist_act];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__incr_commit
// ==================================================

procedure History__incr_commit(diz: Ref, current_thread_id: int, frac: Perm, proc: ProcessDomainType) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume frac != NoPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_do_incr(diz, frac, proc):=Mask[null, History__hist_do_incr(diz, frac, proc)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@201.12--201.83) [162558]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_value == diz.History__x_hist_act + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@202.12--202.68) [162559]"}
        HasDirectPerm(Mask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_act (testHistoryThreadsApplication.vpr@202.12--202.68) [162560]"}
        HasDirectPerm(Mask, diz, History__x_hist_act);
    assume Heap[diz, History__x_hist_value] == Heap[diz, History__x_hist_act] + 1;
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
    assume frac != NoPerm;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType)):=PostMask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_value:=PostMask[diz, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@206.11--206.82) [162561]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@207.11--207.70) [162562]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@207.11--207.70) [162563]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@209.3--209.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion frac != none might not hold. (testHistoryThreadsApplication.vpr@203.11--203.23) [162564]"}
      frac != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access History__hist_idle(diz, frac, p_seq(proc, p_incr())) (testHistoryThreadsApplication.vpr@204.11--204.75) [162565]"}
        perm <= Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType))] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@205.11--205.48) [162566]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@206.11--206.82) [162567]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion diz.History__x_hist_mode == 1 might not hold. (testHistoryThreadsApplication.vpr@206.11--206.82) [162568]"}
      Heap[diz, History__x_hist_mode] == 1;
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryThreadsApplication.vpr@207.11--207.70) [162569]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__free_set_x
// ==================================================

procedure History__free_set_x(diz: Ref, current_thread_id: int, value_1: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@216.12--216.83) [162570]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@216.12--216.83) [162571]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 0;
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
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_value:=PostMask[diz, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == value
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@217.11--217.88) [162572]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == value_1;
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@218.11--218.82) [162573]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@218.11--218.82) [162574]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@220.3--220.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__free_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@217.11--217.88) [162575]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__free_set_x might not hold. Assertion diz.History__x_hist_value == value might not hold. (testHistoryThreadsApplication.vpr@217.11--217.88) [162576]"}
      Heap[diz, History__x_hist_value] == value_1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of History__free_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@218.11--218.82) [162577]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__free_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@218.11--218.82) [162578]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__free_set_x might not hold. Assertion diz.History__x_hist_mode == 0 might not hold. (testHistoryThreadsApplication.vpr@218.11--218.82) [162579]"}
      Heap[diz, History__x_hist_mode] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__hist_set_x
// ==================================================

procedure History__hist_set_x(diz: Ref, current_thread_id: int, value_1: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@227.12--227.83) [162580]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@227.12--227.83) [162581]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 2;
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
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_value:=PostMask[diz, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == value
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@228.11--228.88) [162582]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == value_1;
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@229.11--229.82) [162583]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@229.11--229.82) [162584]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@231.3--231.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__hist_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@228.11--228.88) [162585]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Assertion diz.History__x_hist_value == value might not hold. (testHistoryThreadsApplication.vpr@228.11--228.88) [162586]"}
      Heap[diz, History__x_hist_value] == value_1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@229.11--229.82) [162587]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__hist_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@229.11--229.82) [162588]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Assertion diz.History__x_hist_mode == 2 might not hold. (testHistoryThreadsApplication.vpr@229.11--229.82) [162589]"}
      Heap[diz, History__x_hist_mode] == 2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__begin_hist
// ==================================================

procedure History__begin_hist(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@238.12--238.83) [162590]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_value:=PostMask[diz, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@242.11--242.82) [162591]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_init:=PostMask[diz, History__x_hist_init] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@244.11--244.70) [162592]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@244.11--244.70) [162593]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_init == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_init (testHistoryThreadsApplication.vpr@245.11--245.69) [162594]"}
        HasDirectPerm(PostMask, diz, History__x_hist_init);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@245.11--245.69) [162595]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_init] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, History__hist_idle(diz, FullPerm, (p_empty(): ProcessDomainType)):=PostMask[null, History__hist_idle(diz, FullPerm, (p_empty(): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@248.3--248.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@241.11--241.48) [162596]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@242.11--242.82) [162597]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_mode == 1 might not hold. (testHistoryThreadsApplication.vpr@242.11--242.82) [162598]"}
      Heap[diz, History__x_hist_mode] == 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_init (testHistoryThreadsApplication.vpr@243.11--243.47) [162599]"}
        perm <= Mask[diz, History__x_hist_init];
    }
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] - perm];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryThreadsApplication.vpr@244.11--244.70) [162600]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_init == old(diz.History__x_hist_value) might not hold. (testHistoryThreadsApplication.vpr@245.11--245.69) [162601]"}
      Heap[diz, History__x_hist_init] == oldHeap[diz, History__x_hist_value];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access History__hist_idle(diz, write, p_empty()) (testHistoryThreadsApplication.vpr@246.11--246.64) [162602]"}
        perm <= Mask[null, History__hist_idle(diz, FullPerm, (p_empty(): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(diz, FullPerm, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(diz, FullPerm, (p_empty(): ProcessDomainType))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__split
// ==================================================

procedure History__split(diz: Ref, current_thread_id: int, frac1: Perm, proc1: ProcessDomainType, frac2: Perm, proc2: ProcessDomainType) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, History__hist_idle(diz, frac1 + frac2, (p_merge(proc1, proc2): ProcessDomainType)):=Mask[null, History__hist_idle(diz, frac1 + frac2, (p_merge(proc1, proc2): ProcessDomainType))] + perm];
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
    PostMask := PostMask[null, History__hist_idle(diz, frac1, proc1):=PostMask[null, History__hist_idle(diz, frac1, proc1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, History__hist_idle(diz, frac2, proc2):=PostMask[null, History__hist_idle(diz, frac2, proc2)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@258.3--258.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__split might not hold. There might be insufficient permission to access History__hist_idle(diz, frac1, proc1) (testHistoryThreadsApplication.vpr@255.11--255.60) [162603]"}
        perm <= Mask[null, History__hist_idle(diz, frac1, proc1)];
    }
    Mask := Mask[null, History__hist_idle(diz, frac1, proc1):=Mask[null, History__hist_idle(diz, frac1, proc1)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__split might not hold. There might be insufficient permission to access History__hist_idle(diz, frac2, proc2) (testHistoryThreadsApplication.vpr@256.11--256.60) [162604]"}
        perm <= Mask[null, History__hist_idle(diz, frac2, proc2)];
    }
    Mask := Mask[null, History__hist_idle(diz, frac2, proc2):=Mask[null, History__hist_idle(diz, frac2, proc2)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__merge
// ==================================================

procedure History__merge(diz: Ref, current_thread_id: int, frac1: Perm, proc1: ProcessDomainType, frac2: Perm, proc2: ProcessDomainType) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, History__hist_idle(diz, frac1, proc1):=Mask[null, History__hist_idle(diz, frac1, proc1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(diz, frac2, proc2):=Mask[null, History__hist_idle(diz, frac2, proc2)] + perm];
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
    PostMask := PostMask[null, History__hist_idle(diz, frac1 + frac2, (p_merge(proc1, proc2): ProcessDomainType)):=PostMask[null, History__hist_idle(diz, frac1 + frac2, (p_merge(proc1, proc2): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@268.3--268.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__merge might not hold. There might be insufficient permission to access History__hist_idle(diz, frac1 + frac2, p_merge(proc1, proc2)) (testHistoryThreadsApplication.vpr@266.11--266.84) [162605]"}
        perm <= Mask[null, History__hist_idle(diz, frac1 + frac2, (p_merge(proc1, proc2): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(diz, frac1 + frac2, (p_merge(proc1, proc2): ProcessDomainType)):=Mask[null, History__hist_idle(diz, frac1 + frac2, (p_merge(proc1, proc2): ProcessDomainType))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__History
// ==================================================

procedure History__History(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_33: int;
  var __flatten_101: int;
  var __flatten_34: int;
  var __flatten_102: int;
  var __flatten_35: int;
  var __flatten_103: int;
  var __flatten_36: int;
  var __flatten_104: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_value:=PostMask[sys__result, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_value == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryThreadsApplication.vpr@274.11--274.100) [162606]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_value);
    assume PostHeap[sys__result, History__x_hist_value] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_mode:=PostMask[sys__result, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryThreadsApplication.vpr@275.11--275.98) [162607]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_mode);
    assume PostHeap[sys__result, History__x_hist_mode] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_init:=PostMask[sys__result, History__x_hist_init] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_init == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryThreadsApplication.vpr@276.11--276.98) [162608]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_init);
    assume PostHeap[sys__result, History__x_hist_init] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_act:=PostMask[sys__result, History__x_hist_act] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_act == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryThreadsApplication.vpr@277.11--277.96) [162609]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_act);
    assume PostHeap[sys__result, History__x_hist_act] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(History__x_hist_value, History__x_hist_mode, History__x_hist_init, History__x_hist_act) -- testHistoryThreadsApplication.vpr@288.3--288.101
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + FullPerm];
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + FullPerm];
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] + FullPerm];
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_33 := 0 -- testHistoryThreadsApplication.vpr@289.3--289.20
    __flatten_33 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_101 := __flatten_33 -- testHistoryThreadsApplication.vpr@290.3--290.32
    __flatten_101 := __flatten_33;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_value := __flatten_101 -- testHistoryThreadsApplication.vpr@291.3--291.45
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@291.3--291.45) [162610]"}
      FullPerm == Mask[diz, History__x_hist_value];
    Heap := Heap[diz, History__x_hist_value:=__flatten_101];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_34 := 0 -- testHistoryThreadsApplication.vpr@292.3--292.20
    __flatten_34 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_102 := __flatten_34 -- testHistoryThreadsApplication.vpr@293.3--293.32
    __flatten_102 := __flatten_34;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_mode := __flatten_102 -- testHistoryThreadsApplication.vpr@294.3--294.44
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@294.3--294.44) [162611]"}
      FullPerm == Mask[diz, History__x_hist_mode];
    Heap := Heap[diz, History__x_hist_mode:=__flatten_102];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_35 := 0 -- testHistoryThreadsApplication.vpr@295.3--295.20
    __flatten_35 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_103 := __flatten_35 -- testHistoryThreadsApplication.vpr@296.3--296.32
    __flatten_103 := __flatten_35;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_init := __flatten_103 -- testHistoryThreadsApplication.vpr@297.3--297.44
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_init (testHistoryThreadsApplication.vpr@297.3--297.44) [162612]"}
      FullPerm == Mask[diz, History__x_hist_init];
    Heap := Heap[diz, History__x_hist_init:=__flatten_103];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_36 := 0 -- testHistoryThreadsApplication.vpr@298.3--298.20
    __flatten_36 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_104 := __flatten_36 -- testHistoryThreadsApplication.vpr@299.3--299.32
    __flatten_104 := __flatten_36;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_act := __flatten_104 -- testHistoryThreadsApplication.vpr@300.3--300.43
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_act (testHistoryThreadsApplication.vpr@300.3--300.43) [162613]"}
      FullPerm == Mask[diz, History__x_hist_act];
    Heap := Heap[diz, History__x_hist_act:=__flatten_104];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryThreadsApplication.vpr@301.3--301.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.History__x_hist_value, write) &&
  //   sys__result.History__x_hist_value == 0 &&
  //   (acc(sys__result.History__x_hist_mode, write) &&
  //   sys__result.History__x_hist_mode == 0 &&
  //   (acc(sys__result.History__x_hist_init, write) &&
  //   sys__result.History__x_hist_init == 0 &&
  //   (acc(sys__result.History__x_hist_act, write) &&
  //   sys__result.History__x_hist_act == 0)))) -- testHistoryThreadsApplication.vpr@302.3--302.403
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@302.10--302.403) [162614]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryThreadsApplication.vpr@302.10--302.403) [162616]"}
        perm <= AssertMask[sys__result, History__x_hist_value];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_value:=AssertMask[sys__result, History__x_hist_value] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_value == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryThreadsApplication.vpr@302.10--302.403) [162617]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_value);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_value == 0 might not hold. (testHistoryThreadsApplication.vpr@302.10--302.403) [162618]"}
      AssertHeap[sys__result, History__x_hist_value] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryThreadsApplication.vpr@302.10--302.403) [162620]"}
        perm <= AssertMask[sys__result, History__x_hist_mode];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_mode:=AssertMask[sys__result, History__x_hist_mode] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_mode == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryThreadsApplication.vpr@302.10--302.403) [162621]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_mode);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_mode == 0 might not hold. (testHistoryThreadsApplication.vpr@302.10--302.403) [162622]"}
      AssertHeap[sys__result, History__x_hist_mode] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryThreadsApplication.vpr@302.10--302.403) [162624]"}
        perm <= AssertMask[sys__result, History__x_hist_init];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_init:=AssertMask[sys__result, History__x_hist_init] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_init == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryThreadsApplication.vpr@302.10--302.403) [162625]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_init);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_init == 0 might not hold. (testHistoryThreadsApplication.vpr@302.10--302.403) [162626]"}
      AssertHeap[sys__result, History__x_hist_init] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryThreadsApplication.vpr@302.10--302.403) [162628]"}
        perm <= AssertMask[sys__result, History__x_hist_act];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_act:=AssertMask[sys__result, History__x_hist_act] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_act == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryThreadsApplication.vpr@302.10--302.403) [162629]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_act);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_act == 0 might not hold. (testHistoryThreadsApplication.vpr@302.10--302.403) [162630]"}
      AssertHeap[sys__result, History__x_hist_act] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@303.3--303.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@273.11--273.30) [162631]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryThreadsApplication.vpr@274.11--274.100) [162632]"}
        perm <= Mask[sys__result, History__x_hist_value];
    }
    Mask := Mask[sys__result, History__x_hist_value:=Mask[sys__result, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_value == 0 might not hold. (testHistoryThreadsApplication.vpr@274.11--274.100) [162633]"}
      Heap[sys__result, History__x_hist_value] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryThreadsApplication.vpr@275.11--275.98) [162634]"}
        perm <= Mask[sys__result, History__x_hist_mode];
    }
    Mask := Mask[sys__result, History__x_hist_mode:=Mask[sys__result, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_mode == 0 might not hold. (testHistoryThreadsApplication.vpr@275.11--275.98) [162635]"}
      Heap[sys__result, History__x_hist_mode] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryThreadsApplication.vpr@276.11--276.98) [162636]"}
        perm <= Mask[sys__result, History__x_hist_init];
    }
    Mask := Mask[sys__result, History__x_hist_init:=Mask[sys__result, History__x_hist_init] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_init == 0 might not hold. (testHistoryThreadsApplication.vpr@276.11--276.98) [162637]"}
      Heap[sys__result, History__x_hist_init] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryThreadsApplication.vpr@277.11--277.96) [162638]"}
        perm <= Mask[sys__result, History__x_hist_act];
    }
    Mask := Mask[sys__result, History__x_hist_act:=Mask[sys__result, History__x_hist_act] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_act == 0 might not hold. (testHistoryThreadsApplication.vpr@277.11--277.96) [162639]"}
      Heap[sys__result, History__x_hist_act] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__end_hist_1
// ==================================================

procedure History__end_hist_1(diz: Ref, current_thread_id: int, n: int, m_17: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume diz != null;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@310.12--310.83) [162640]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 1;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_value:=PostMask[diz, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@313.11--313.82) [162641]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_init:=PostMask[diz, History__x_hist_init] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_act:=PostMask[diz, History__x_hist_act] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@316.11--316.70) [162642]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@316.11--316.70) [162643]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_init == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_init (testHistoryThreadsApplication.vpr@317.11--317.69) [162644]"}
        HasDirectPerm(PostMask, diz, History__x_hist_init);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@317.11--317.69) [162645]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_init] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_init) + n + m
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@318.11--318.77) [162646]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_init (testHistoryThreadsApplication.vpr@318.11--318.77) [162647]"}
        HasDirectPerm(oldMask, diz, History__x_hist_init);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_init] + n + m_17;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@320.3--320.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__end_hist_1 might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryThreadsApplication.vpr@312.11--312.48) [162648]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__end_hist_1 might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryThreadsApplication.vpr@313.11--313.82) [162649]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__end_hist_1 might not hold. Assertion diz.History__x_hist_mode == 0 might not hold. (testHistoryThreadsApplication.vpr@313.11--313.82) [162650]"}
      Heap[diz, History__x_hist_mode] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__end_hist_1 might not hold. There might be insufficient permission to access diz.History__x_hist_init (testHistoryThreadsApplication.vpr@314.11--314.47) [162651]"}
        perm <= Mask[diz, History__x_hist_init];
    }
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__end_hist_1 might not hold. There might be insufficient permission to access diz.History__x_hist_act (testHistoryThreadsApplication.vpr@315.11--315.46) [162652]"}
        perm <= Mask[diz, History__x_hist_act];
    }
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] - perm];
    assert {:msg "  Postcondition of History__end_hist_1 might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryThreadsApplication.vpr@316.11--316.70) [162653]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assert {:msg "  Postcondition of History__end_hist_1 might not hold. Assertion diz.History__x_hist_init == old(diz.History__x_hist_value) might not hold. (testHistoryThreadsApplication.vpr@317.11--317.69) [162654]"}
      Heap[diz, History__x_hist_init] == oldHeap[diz, History__x_hist_value];
    assert {:msg "  Postcondition of History__end_hist_1 might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_init) + n + m might not hold. (testHistoryThreadsApplication.vpr@318.11--318.77) [162655]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_init] + n + m_17;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__if_any_random
// ==================================================

procedure History__if_any_random(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref, sys__result: bool)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@327.3--327.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method SubjectLock__SubjectLock
// ==================================================

procedure SubjectLock__SubjectLock(current_thread_id: int, s_2: Ref) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var diz: Ref;
  var __flatten_37: Ref;
  var __flatten_105: Ref;
  var freshObj: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[s_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_SubjectLock(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, SubjectLock__subject:=PostMask[sys__result, SubjectLock__subject] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.SubjectLock__subject == s
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.SubjectLock__subject (testHistoryThreadsApplication.vpr@335.11--335.48) [162656]"}
        HasDirectPerm(PostMask, sys__result, SubjectLock__subject);
    assume PostHeap[sys__result, SubjectLock__subject] == s_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_37, $allocated];
    assume Heap[__flatten_105, $allocated];
  
  // -- Translating statement: diz := new(SubjectLock__subject) -- testHistoryThreadsApplication.vpr@340.3--340.35
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, SubjectLock__subject:=Mask[diz, SubjectLock__subject] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_SubjectLock() -- testHistoryThreadsApplication.vpr@341.3--341.45
    assume (type_of(diz): TYPEDomainType) == (class_SubjectLock(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_37 := s -- testHistoryThreadsApplication.vpr@342.3--342.20
    __flatten_37 := s_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_105 := __flatten_37 -- testHistoryThreadsApplication.vpr@343.3--343.32
    __flatten_105 := __flatten_37;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.SubjectLock__subject := __flatten_105 -- testHistoryThreadsApplication.vpr@344.3--344.44
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.SubjectLock__subject (testHistoryThreadsApplication.vpr@344.3--344.44) [162657]"}
      FullPerm == Mask[diz, SubjectLock__subject];
    Heap := Heap[diz, SubjectLock__subject:=__flatten_105];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryThreadsApplication.vpr@345.3--345.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (type_of(sys__result) == class_SubjectLock() &&
  //   (acc(sys__result.SubjectLock__subject, wildcard) &&
  //   sys__result.SubjectLock__subject == s)) -- testHistoryThreadsApplication.vpr@346.3--346.174
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@346.10--346.174) [162658]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_SubjectLock() might not hold. (testHistoryThreadsApplication.vpr@346.10--346.174) [162659]"}
      (type_of(sys__result): TYPEDomainType) == (class_SubjectLock(): TYPEDomainType);
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.SubjectLock__subject (testHistoryThreadsApplication.vpr@346.10--346.174) [162660]"}
      AssertMask[sys__result, SubjectLock__subject] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, SubjectLock__subject];
    AssertMask := AssertMask[sys__result, SubjectLock__subject:=AssertMask[sys__result, SubjectLock__subject] - wildcard];
    
    // -- Check definedness of sys__result.SubjectLock__subject == s
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.SubjectLock__subject (testHistoryThreadsApplication.vpr@346.10--346.174) [162661]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, SubjectLock__subject);
    assert {:msg "  Assert might fail. Assertion sys__result.SubjectLock__subject == s might not hold. (testHistoryThreadsApplication.vpr@346.10--346.174) [162662]"}
      AssertHeap[sys__result, SubjectLock__subject] == s_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@347.3--347.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of SubjectLock__SubjectLock might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@332.11--332.30) [162663]"}
      sys__result != null;
    assert {:msg "  Postcondition of SubjectLock__SubjectLock might not hold. Assertion type_of(sys__result) == class_SubjectLock() might not hold. (testHistoryThreadsApplication.vpr@333.11--333.54) [162664]"}
      (type_of(sys__result): TYPEDomainType) == (class_SubjectLock(): TYPEDomainType);
    assert {:msg "  Postcondition of SubjectLock__SubjectLock might not hold. There might be insufficient permission to access sys__result.SubjectLock__subject (testHistoryThreadsApplication.vpr@334.11--334.58) [162665]"}
      Mask[sys__result, SubjectLock__subject] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, SubjectLock__subject];
    Mask := Mask[sys__result, SubjectLock__subject:=Mask[sys__result, SubjectLock__subject] - wildcard];
    assert {:msg "  Postcondition of SubjectLock__SubjectLock might not hold. Assertion sys__result.SubjectLock__subject == s might not hold. (testHistoryThreadsApplication.vpr@335.11--335.48) [162666]"}
      Heap[sys__result, SubjectLock__subject] == s_2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method SubjectLock__commit
// ==================================================

procedure SubjectLock__commit(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, SubjectLock__inv(diz):=Mask[null, SubjectLock__inv(diz)] + perm];
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
    PostMask := PostMask[null, SubjectLock__valid(diz):=PostMask[null, SubjectLock__valid(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@356.3--356.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of SubjectLock__commit might not hold. There might be insufficient permission to access SubjectLock__valid(diz) (testHistoryThreadsApplication.vpr@354.11--354.46) [162667]"}
        perm <= Mask[null, SubjectLock__valid(diz)];
    }
    Mask := Mask[null, SubjectLock__valid(diz):=Mask[null, SubjectLock__valid(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method SubjectLock__uncommit
// ==================================================

procedure SubjectLock__uncommit(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, SubjectLock__valid(diz):=Mask[null, SubjectLock__valid(diz)] + perm];
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
    PostMask := PostMask[null, SubjectLock__inv(diz):=PostMask[null, SubjectLock__inv(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@365.3--365.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of SubjectLock__uncommit might not hold. There might be insufficient permission to access SubjectLock__inv(diz) (testHistoryThreadsApplication.vpr@363.11--363.44) [162668]"}
        perm <= Mask[null, SubjectLock__inv(diz)];
    }
    Mask := Mask[null, SubjectLock__inv(diz):=Mask[null, SubjectLock__inv(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method SubjectLock__lock
// ==================================================

procedure SubjectLock__lock(diz: Ref, current_thread_id: int, count_1: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume count_1 >= 0;
    assume state(Heap, Mask);
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    if (count_1 > 0) {
      perm := FullPerm;
      Mask := Mask[null, SubjectLock__locked(diz, p_1, count_1):=Mask[null, SubjectLock__locked(diz, p_1, count_1)] + perm];
      assume state(Heap, Mask);
    } else {
      perm := p_1;
      assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (testHistoryThreadsApplication.vpr@373.13--373.105) [162669]"}
        perm >= NoPerm;
      Mask := Mask[null, SubjectLock__valid(diz):=Mask[null, SubjectLock__valid(diz)] + perm];
      assume state(Heap, Mask);
    }
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
    PostMask := PostMask[null, SubjectLock__locked(diz, p_1, count_1 + 1):=PostMask[null, SubjectLock__locked(diz, p_1, count_1 + 1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (count_1 == 0) {
      perm := FullPerm;
      PostMask := PostMask[null, SubjectLock__inv(diz):=PostMask[null, SubjectLock__inv(diz)] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@377.3--377.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of SubjectLock__lock might not hold. There might be insufficient permission to access SubjectLock__locked(diz, p, count + 1) (testHistoryThreadsApplication.vpr@374.11--374.61) [162670]"}
        perm <= Mask[null, SubjectLock__locked(diz, p_1, count_1 + 1)];
    }
    Mask := Mask[null, SubjectLock__locked(diz, p_1, count_1 + 1):=Mask[null, SubjectLock__locked(diz, p_1, count_1 + 1)] - perm];
    if (count_1 == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of SubjectLock__lock might not hold. There might be insufficient permission to access SubjectLock__inv(diz) (testHistoryThreadsApplication.vpr@375.11--375.61) [162671]"}
          perm <= Mask[null, SubjectLock__inv(diz)];
      }
      Mask := Mask[null, SubjectLock__inv(diz):=Mask[null, SubjectLock__inv(diz)] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method SubjectLock__unlock
// ==================================================

procedure SubjectLock__unlock(diz: Ref, current_thread_id: int, count_1: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume count_1 > 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, SubjectLock__locked(diz, p_1, count_1):=Mask[null, SubjectLock__locked(diz, p_1, count_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (count_1 == 1) {
      perm := FullPerm;
      Mask := Mask[null, SubjectLock__inv(diz):=Mask[null, SubjectLock__inv(diz)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume NoPerm <= p_1;
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
    if (count_1 == 1) {
      perm := p_1;
      assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (testHistoryThreadsApplication.vpr@387.12--387.109) [162672]"}
        perm >= NoPerm;
      PostMask := PostMask[null, SubjectLock__valid(diz):=PostMask[null, SubjectLock__valid(diz)] + perm];
      assume state(PostHeap, PostMask);
    } else {
      perm := FullPerm;
      PostMask := PostMask[null, SubjectLock__locked(diz, p_1, count_1 - 1):=PostMask[null, SubjectLock__locked(diz, p_1, count_1 - 1)] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@389.3--389.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (count_1 == 1) {
      perm := p_1;
      assert {:msg "  Postcondition of SubjectLock__unlock might not hold. Fraction p might be negative. (testHistoryThreadsApplication.vpr@387.12--387.109) [162673]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of SubjectLock__unlock might not hold. There might be insufficient permission to access SubjectLock__valid(diz) (testHistoryThreadsApplication.vpr@387.12--387.109) [162674]"}
          perm <= Mask[null, SubjectLock__valid(diz)];
      }
      Mask := Mask[null, SubjectLock__valid(diz):=Mask[null, SubjectLock__valid(diz)] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of SubjectLock__unlock might not hold. There might be insufficient permission to access SubjectLock__locked(diz, p, count - 1) (testHistoryThreadsApplication.vpr@387.12--387.109) [162675]"}
          perm <= Mask[null, SubjectLock__locked(diz, p_1, count_1 - 1)];
      }
      Mask := Mask[null, SubjectLock__locked(diz, p_1, count_1 - 1):=Mask[null, SubjectLock__locked(diz, p_1, count_1 - 1)] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method SubjectLock__if_any_random
// ==================================================

procedure SubjectLock__if_any_random(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref, sys__result: bool)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@396.3--396.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Thread__run
// ==================================================

procedure Thread__run(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__preFork(diz, FullPerm):=Mask[null, Thread__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin(diz, FullPerm):=PostMask[null, Thread__postJoin(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@405.3--405.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__run might not hold. There might be insufficient permission to access Thread__postJoin(diz, write) (testHistoryThreadsApplication.vpr@403.11--403.51) [162676]"}
        perm <= Mask[null, Thread__postJoin(diz, FullPerm)];
    }
    Mask := Mask[null, Thread__postJoin(diz, FullPerm):=Mask[null, Thread__postJoin(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__start
// ==================================================

procedure Thread__start(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__preFork(diz, FullPerm):=Mask[null, Thread__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Thread__joinToken(diz, FullPerm):=PostMask[null, Thread__joinToken(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@414.3--414.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__start might not hold. There might be insufficient permission to access Thread__joinToken(diz, write) (testHistoryThreadsApplication.vpr@412.11--412.52) [162677]"}
        perm <= Mask[null, Thread__joinToken(diz, FullPerm)];
    }
    Mask := Mask[null, Thread__joinToken(diz, FullPerm):=Mask[null, Thread__joinToken(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__join
// ==================================================

procedure Thread__join(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__joinToken(diz, p_1):=Mask[null, Thread__joinToken(diz, p_1)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin(diz, p_1):=PostMask[null, Thread__postJoin(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@423.3--423.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__join might not hold. There might be insufficient permission to access Thread__postJoin(diz, p) (testHistoryThreadsApplication.vpr@421.11--421.47) [162678]"}
        perm <= Mask[null, Thread__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Thread__postJoin(diz, p_1):=Mask[null, Thread__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__open_joinToken_at_Thread
// ==================================================

procedure Thread__open_joinToken_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__joinToken(diz, p_1):=Mask[null, Thread__joinToken(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__is_a_Thread(diz):=Mask[null, Thread__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Thread__joinToken_at_Thread(diz, p_1):=PostMask[null, Thread__joinToken_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@433.3--433.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_joinToken_at_Thread might not hold. There might be insufficient permission to access Thread__joinToken_at_Thread(diz, p) (testHistoryThreadsApplication.vpr@431.11--431.58) [162679]"}
        perm <= Mask[null, Thread__joinToken_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Thread__joinToken_at_Thread(diz, p_1):=Mask[null, Thread__joinToken_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__open_preFork_at_Thread
// ==================================================

procedure Thread__open_preFork_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__preFork(diz, p_1):=Mask[null, Thread__preFork(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__is_a_Thread(diz):=Mask[null, Thread__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Thread__preFork_at_Thread(diz, p_1):=PostMask[null, Thread__preFork_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@443.3--443.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_preFork_at_Thread might not hold. There might be insufficient permission to access Thread__preFork_at_Thread(diz, p) (testHistoryThreadsApplication.vpr@441.11--441.56) [162680]"}
        perm <= Mask[null, Thread__preFork_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Thread__preFork_at_Thread(diz, p_1):=Mask[null, Thread__preFork_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__open_postJoin_at_Thread
// ==================================================

procedure Thread__open_postJoin_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__postJoin(diz, p_1):=Mask[null, Thread__postJoin(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__is_a_Thread(diz):=Mask[null, Thread__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin_at_Thread(diz, p_1):=PostMask[null, Thread__postJoin_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@453.3--453.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_postJoin_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin_at_Thread(diz, p) (testHistoryThreadsApplication.vpr@451.11--451.57) [162681]"}
        perm <= Mask[null, Thread__postJoin_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Thread__postJoin_at_Thread(diz, p_1):=Mask[null, Thread__postJoin_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__Thread
// ==================================================

procedure Thread__Thread(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Thread__is_a_Thread(sys__result):=PostMask[null, Thread__is_a_Thread(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@462.3--462.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Thread__Thread might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@458.11--458.30) [162682]"}
      sys__result != null;
    assert {:msg "  Postcondition of Thread__Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testHistoryThreadsApplication.vpr@459.11--459.49) [162683]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__Thread might not hold. There might be insufficient permission to access Thread__is_a_Thread(sys__result) (testHistoryThreadsApplication.vpr@460.11--460.55) [162684]"}
        perm <= Mask[null, Thread__is_a_Thread(sys__result)];
    }
    Mask := Mask[null, Thread__is_a_Thread(sys__result):=Mask[null, Thread__is_a_Thread(sys__result)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__Thread_at_Thread
// ==================================================

procedure Thread__Thread_at_Thread(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- testHistoryThreadsApplication.vpr@471.3--471.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Thread() -- testHistoryThreadsApplication.vpr@472.3--472.40
    assume (type_of(diz): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@473.3--473.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryThreadsApplication.vpr@474.3--474.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null && type_of(sys__result) == class_Thread() -- testHistoryThreadsApplication.vpr@475.3--475.75
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@475.10--475.75) [162685]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Thread() might not hold. (testHistoryThreadsApplication.vpr@475.10--475.75) [162686]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@476.3--476.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Thread__Thread_at_Thread might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@467.11--467.30) [162687]"}
      sys__result != null;
    assert {:msg "  Postcondition of Thread__Thread_at_Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testHistoryThreadsApplication.vpr@468.11--468.49) [162688]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
}

// ==================================================
// Translation of method Thread__run_at_Thread
// ==================================================

procedure Thread__run_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__preFork_at_Thread(diz, FullPerm):=Mask[null, Thread__preFork_at_Thread(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin_at_Thread(diz, FullPerm):=PostMask[null, Thread__postJoin_at_Thread(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@485.3--485.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__run_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin_at_Thread(diz, write) (testHistoryThreadsApplication.vpr@483.11--483.61) [162689]"}
        perm <= Mask[null, Thread__postJoin_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Thread__postJoin_at_Thread(diz, FullPerm):=Mask[null, Thread__postJoin_at_Thread(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__start_at_Thread
// ==================================================

procedure Thread__start_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__preFork(diz, FullPerm):=Mask[null, Thread__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Thread__joinToken(diz, FullPerm):=PostMask[null, Thread__joinToken(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@494.3--494.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__start_at_Thread might not hold. There might be insufficient permission to access Thread__joinToken(diz, write) (testHistoryThreadsApplication.vpr@492.11--492.52) [162690]"}
        perm <= Mask[null, Thread__joinToken(diz, FullPerm)];
    }
    Mask := Mask[null, Thread__joinToken(diz, FullPerm):=Mask[null, Thread__joinToken(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__join_at_Thread
// ==================================================

procedure Thread__join_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Thread__joinToken(diz, p_1):=Mask[null, Thread__joinToken(diz, p_1)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin(diz, p_1):=PostMask[null, Thread__postJoin(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@503.3--503.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__join_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin(diz, p) (testHistoryThreadsApplication.vpr@501.11--501.47) [162691]"}
        perm <= Mask[null, Thread__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Thread__postJoin(diz, p_1):=Mask[null, Thread__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__if_any_random
// ==================================================

procedure Thread__if_any_random(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref, sys__result: bool)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@510.3--510.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Worker__run
// ==================================================

procedure Worker__run(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__preFork(diz, FullPerm):=Mask[null, Worker__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin(diz, FullPerm):=PostMask[null, Worker__postJoin(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@519.3--519.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run might not hold. There might be insufficient permission to access Worker__postJoin(diz, write) (testHistoryThreadsApplication.vpr@517.11--517.51) [162692]"}
        perm <= Mask[null, Worker__postJoin(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin(diz, FullPerm):=Mask[null, Worker__postJoin(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__start
// ==================================================

procedure Worker__start(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__preFork(diz, FullPerm):=Mask[null, Worker__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__joinToken(diz, FullPerm):=PostMask[null, Worker__joinToken(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@528.3--528.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__start might not hold. There might be insufficient permission to access Worker__joinToken(diz, write) (testHistoryThreadsApplication.vpr@526.11--526.52) [162693]"}
        perm <= Mask[null, Worker__joinToken(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__joinToken(diz, FullPerm):=Mask[null, Worker__joinToken(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__join
// ==================================================

procedure Worker__join(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__joinToken(diz, p_1):=Mask[null, Worker__joinToken(diz, p_1)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin(diz, p_1):=PostMask[null, Worker__postJoin(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@537.3--537.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__join might not hold. There might be insufficient permission to access Worker__postJoin(diz, p) (testHistoryThreadsApplication.vpr@535.11--535.47) [162694]"}
        perm <= Mask[null, Worker__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Worker__postJoin(diz, p_1):=Mask[null, Worker__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_joinToken_at_Thread
// ==================================================

procedure Worker__open_joinToken_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__joinToken(diz, p_1):=Mask[null, Worker__joinToken(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Thread(diz):=Mask[null, Worker__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Worker__joinToken_at_Thread(diz, p_1):=PostMask[null, Worker__joinToken_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@547.3--547.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_joinToken_at_Thread might not hold. There might be insufficient permission to access Worker__joinToken_at_Thread(diz, p) (testHistoryThreadsApplication.vpr@545.11--545.58) [162695]"}
        perm <= Mask[null, Worker__joinToken_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Worker__joinToken_at_Thread(diz, p_1):=Mask[null, Worker__joinToken_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_preFork_at_Thread
// ==================================================

procedure Worker__open_preFork_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__preFork(diz, p_1):=Mask[null, Worker__preFork(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Thread(diz):=Mask[null, Worker__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Worker__preFork_at_Thread(diz, p_1):=PostMask[null, Worker__preFork_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@557.3--557.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_preFork_at_Thread might not hold. There might be insufficient permission to access Worker__preFork_at_Thread(diz, p) (testHistoryThreadsApplication.vpr@555.11--555.56) [162696]"}
        perm <= Mask[null, Worker__preFork_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Worker__preFork_at_Thread(diz, p_1):=Mask[null, Worker__preFork_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_postJoin_at_Thread
// ==================================================

procedure Worker__open_postJoin_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__postJoin(diz, p_1):=Mask[null, Worker__postJoin(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Thread(diz):=Mask[null, Worker__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Thread(diz, p_1):=PostMask[null, Worker__postJoin_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@567.3--567.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_postJoin_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, p) (testHistoryThreadsApplication.vpr@565.11--565.57) [162697]"}
        perm <= Mask[null, Worker__postJoin_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, p_1):=Mask[null, Worker__postJoin_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__Thread
// ==================================================

procedure Worker__Thread(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__is_a_Thread(sys__result):=PostMask[null, Worker__is_a_Thread(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@576.3--576.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Thread might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@572.11--572.30) [162698]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testHistoryThreadsApplication.vpr@573.11--573.49) [162699]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Thread might not hold. There might be insufficient permission to access Worker__is_a_Thread(sys__result) (testHistoryThreadsApplication.vpr@574.11--574.55) [162700]"}
        perm <= Mask[null, Worker__is_a_Thread(sys__result)];
    }
    Mask := Mask[null, Worker__is_a_Thread(sys__result):=Mask[null, Worker__is_a_Thread(sys__result)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__Thread_at_Thread
// ==================================================

procedure Worker__Thread_at_Thread(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@584.3--584.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Thread_at_Thread might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@581.11--581.30) [162701]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Thread_at_Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testHistoryThreadsApplication.vpr@582.11--582.49) [162702]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
}

// ==================================================
// Translation of method Worker__run_at_Thread
// ==================================================

procedure Worker__run_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Thread(diz, FullPerm):=PostMask[null, Worker__postJoin_at_Thread(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@593.3--593.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, write) (testHistoryThreadsApplication.vpr@591.11--591.61) [162703]"}
        perm <= Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, FullPerm):=Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__start_at_Thread
// ==================================================

procedure Worker__start_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__preFork(diz, FullPerm):=Mask[null, Worker__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__joinToken(diz, FullPerm):=PostMask[null, Worker__joinToken(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@602.3--602.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__start_at_Thread might not hold. There might be insufficient permission to access Worker__joinToken(diz, write) (testHistoryThreadsApplication.vpr@600.11--600.52) [162704]"}
        perm <= Mask[null, Worker__joinToken(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__joinToken(diz, FullPerm):=Mask[null, Worker__joinToken(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__join_at_Thread
// ==================================================

procedure Worker__join_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__joinToken(diz, p_1):=Mask[null, Worker__joinToken(diz, p_1)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin(diz, p_1):=PostMask[null, Worker__postJoin(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@611.3--611.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__join_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin(diz, p) (testHistoryThreadsApplication.vpr@609.11--609.47) [162705]"}
        perm <= Mask[null, Worker__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Worker__postJoin(diz, p_1):=Mask[null, Worker__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_preFork_at_Worker
// ==================================================

procedure Worker__open_preFork_at_Worker(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__preFork(diz, p_1):=Mask[null, Worker__preFork(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Worker(diz):=Mask[null, Worker__is_a_Worker(diz)] + perm];
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
    PostMask := PostMask[null, Worker__preFork_at_Worker(diz, p_1):=PostMask[null, Worker__preFork_at_Worker(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@621.3--621.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_preFork_at_Worker might not hold. There might be insufficient permission to access Worker__preFork_at_Worker(diz, p) (testHistoryThreadsApplication.vpr@619.11--619.56) [162706]"}
        perm <= Mask[null, Worker__preFork_at_Worker(diz, p_1)];
    }
    Mask := Mask[null, Worker__preFork_at_Worker(diz, p_1):=Mask[null, Worker__preFork_at_Worker(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_postJoin_at_Worker
// ==================================================

procedure Worker__open_postJoin_at_Worker(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    Mask := Mask[null, Worker__postJoin(diz, p_1):=Mask[null, Worker__postJoin(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Worker(diz):=Mask[null, Worker__is_a_Worker(diz)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Worker(diz, p_1):=PostMask[null, Worker__postJoin_at_Worker(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@631.3--631.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin_at_Worker(diz, p) (testHistoryThreadsApplication.vpr@629.11--629.57) [162707]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(diz, p_1)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(diz, p_1):=Mask[null, Worker__postJoin_at_Worker(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__Worker
// ==================================================

procedure Worker__Worker(current_thread_id: int, s_2: Ref, l_2: Ref) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[s_2, $allocated];
    assume Heap[l_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume l_2 != null;
    Mask := Mask[l_2, SubjectLock__subject:=Mask[l_2, SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of l.SubjectLock__subject == s
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l.SubjectLock__subject (testHistoryThreadsApplication.vpr@637.12--637.39) [162708]"}
        HasDirectPerm(Mask, l_2, SubjectLock__subject);
    assume Heap[l_2, SubjectLock__subject] == s_2;
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@638.12--638.45) [162709]"}
      perm >= NoPerm;
    Mask := Mask[null, SubjectLock__valid(l_2):=Mask[null, SubjectLock__valid(l_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType))] + perm];
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__l:=PostMask[sys__result, Worker__l] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__l == l
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__l (testHistoryThreadsApplication.vpr@643.11--643.37) [162710]"}
        HasDirectPerm(PostMask, sys__result, Worker__l);
    assume PostHeap[sys__result, Worker__l] == l_2;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__s:=PostMask[sys__result, Worker__s] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__s == s
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__s (testHistoryThreadsApplication.vpr@645.11--645.37) [162711]"}
        HasDirectPerm(PostMask, sys__result, Worker__s);
    assume PostHeap[sys__result, Worker__s] == s_2;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__preFork(sys__result, FullPerm):=PostMask[null, Worker__preFork(sys__result, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__is_a_Worker(sys__result):=PostMask[null, Worker__is_a_Worker(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@649.3--649.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@640.11--640.30) [162712]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion type_of(sys__result) == class_Worker() might not hold. (testHistoryThreadsApplication.vpr@641.11--641.49) [162713]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access sys__result.Worker__l (testHistoryThreadsApplication.vpr@642.11--642.47) [162714]"}
      Mask[sys__result, Worker__l] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__l];
    Mask := Mask[sys__result, Worker__l:=Mask[sys__result, Worker__l] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result.Worker__l == l might not hold. (testHistoryThreadsApplication.vpr@643.11--643.37) [162715]"}
      Heap[sys__result, Worker__l] == l_2;
    assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access sys__result.Worker__s (testHistoryThreadsApplication.vpr@644.11--644.47) [162716]"}
      Mask[sys__result, Worker__s] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__s];
    Mask := Mask[sys__result, Worker__s:=Mask[sys__result, Worker__s] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result.Worker__s == s might not hold. (testHistoryThreadsApplication.vpr@645.11--645.37) [162717]"}
      Heap[sys__result, Worker__s] == s_2;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access Worker__preFork(sys__result, write) (testHistoryThreadsApplication.vpr@646.11--646.58) [162718]"}
        perm <= Mask[null, Worker__preFork(sys__result, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork(sys__result, FullPerm):=Mask[null, Worker__preFork(sys__result, FullPerm)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access Worker__is_a_Worker(sys__result) (testHistoryThreadsApplication.vpr@647.11--647.55) [162719]"}
        perm <= Mask[null, Worker__is_a_Worker(sys__result)];
    }
    Mask := Mask[null, Worker__is_a_Worker(sys__result):=Mask[null, Worker__is_a_Worker(sys__result)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__Worker_at_Worker
// ==================================================

procedure Worker__Worker_at_Worker(current_thread_id: int, s_2: Ref, l_2: Ref) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var __flatten_38: Ref;
  var __flatten_39: Ref;
  var __flatten_106: Ref;
  var __flatten_107: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[s_2, $allocated];
    assume Heap[l_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume l_2 != null;
    Mask := Mask[l_2, SubjectLock__subject:=Mask[l_2, SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of l.SubjectLock__subject == s
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l.SubjectLock__subject (testHistoryThreadsApplication.vpr@655.12--655.39) [162720]"}
        HasDirectPerm(Mask, l_2, SubjectLock__subject);
    assume Heap[l_2, SubjectLock__subject] == s_2;
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@656.12--656.45) [162721]"}
      perm >= NoPerm;
    Mask := Mask[null, SubjectLock__valid(l_2):=Mask[null, SubjectLock__valid(l_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType))] + perm];
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__l:=PostMask[sys__result, Worker__l] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__l == l
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__l (testHistoryThreadsApplication.vpr@661.11--661.37) [162722]"}
        HasDirectPerm(PostMask, sys__result, Worker__l);
    assume PostHeap[sys__result, Worker__l] == l_2;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__s:=PostMask[sys__result, Worker__s] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__s == s
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__s (testHistoryThreadsApplication.vpr@663.11--663.37) [162723]"}
        HasDirectPerm(PostMask, sys__result, Worker__s);
    assume PostHeap[sys__result, Worker__s] == s_2;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=PostMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_38, $allocated];
    assume Heap[__flatten_39, $allocated];
    assume Heap[__flatten_106, $allocated];
    assume Heap[__flatten_107, $allocated];
  
  // -- Translating statement: diz := new(Worker__l, Worker__s) -- testHistoryThreadsApplication.vpr@671.3--671.35
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Worker__l:=Mask[diz, Worker__l] + FullPerm];
    Mask := Mask[diz, Worker__s:=Mask[diz, Worker__s] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Worker() -- testHistoryThreadsApplication.vpr@672.3--672.40
    assume (type_of(diz): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_38 := l -- testHistoryThreadsApplication.vpr@673.3--673.20
    __flatten_38 := l_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_106 := __flatten_38 -- testHistoryThreadsApplication.vpr@674.3--674.32
    __flatten_106 := __flatten_38;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Worker__l := __flatten_106 -- testHistoryThreadsApplication.vpr@675.3--675.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@675.3--675.33) [162724]"}
      FullPerm == Mask[diz, Worker__l];
    Heap := Heap[diz, Worker__l:=__flatten_106];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_39 := s -- testHistoryThreadsApplication.vpr@676.3--676.20
    __flatten_39 := s_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_107 := __flatten_39 -- testHistoryThreadsApplication.vpr@677.3--677.32
    __flatten_107 := __flatten_39;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Worker__s := __flatten_107 -- testHistoryThreadsApplication.vpr@678.3--678.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@678.3--678.33) [162725]"}
      FullPerm == Mask[diz, Worker__s];
    Heap := Heap[diz, Worker__s:=__flatten_107];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__preFork_at_Thread(diz, write), write) -- testHistoryThreadsApplication.vpr@679.3--679.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__preFork_at_Thread#trigger(Heap, Worker__preFork_at_Thread(diz, FullPerm));
    assume Heap[null, Worker__preFork_at_Thread(diz, FullPerm)] == EmptyFrame;
    if (!HasDirectPerm(Mask, null, Worker__preFork_at_Thread(diz, FullPerm))) {
      Heap := Heap[null, Worker__preFork_at_Thread#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__preFork_at_Thread(diz, FullPerm):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__preFork_at_Worker(diz, write), write) -- testHistoryThreadsApplication.vpr@680.3--680.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__preFork_at_Thread(diz, write) (testHistoryThreadsApplication.vpr@680.3--680.57) [162731]"}
        perm <= Mask[null, Worker__preFork_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], Worker__preFork_at_Thread(diz, FullPerm), Heap[null, Worker__preFork_at_Thread(diz, FullPerm)]);
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. Assertion write == write might not hold. (testHistoryThreadsApplication.vpr@680.3--680.57) [162732]"}
      FullPerm == FullPerm;
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@680.3--680.57) [162733]"}
      Mask[diz, Worker__l] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Worker__l];
    Mask := Mask[diz, Worker__l:=Mask[diz, Worker__l] - wildcard];
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject (testHistoryThreadsApplication.vpr@680.3--680.57) [162734]"}
      Mask[Heap[diz, Worker__l], SubjectLock__subject] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[diz, Worker__l], SubjectLock__subject];
    Mask := Mask[Heap[diz, Worker__l], SubjectLock__subject:=Mask[Heap[diz, Worker__l], SubjectLock__subject] - wildcard];
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@680.3--680.57) [162735]"}
      Mask[diz, Worker__s] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Worker__s];
    Mask := Mask[diz, Worker__s:=Mask[diz, Worker__s] - wildcard];
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. Assertion diz.Worker__l.SubjectLock__subject == diz.Worker__s might not hold. (testHistoryThreadsApplication.vpr@680.3--680.57) [162736]"}
      Heap[Heap[diz, Worker__l], SubjectLock__subject] == Heap[diz, Worker__s];
    perm := 1 / 2;
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@680.3--680.57) [162737]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access SubjectLock__valid(diz.Worker__l) (testHistoryThreadsApplication.vpr@680.3--680.57) [162738]"}
        perm <= Mask[null, SubjectLock__valid(Heap[diz, Worker__l])];
    }
    Mask := Mask[null, SubjectLock__valid(Heap[diz, Worker__l]):=Mask[null, SubjectLock__valid(Heap[diz, Worker__l])] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], SubjectLock__valid(Heap[diz, Worker__l]), Heap[null, SubjectLock__valid(Heap[diz, Worker__l])]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access History__hist_idle(diz.Worker__s, 1 / 2, p_empty()) (testHistoryThreadsApplication.vpr@680.3--680.57) [162740]"}
        perm <= Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType)), Heap[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))]);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__preFork_at_Worker#trigger(Heap, Worker__preFork_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__preFork_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__preFork_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__l]), CombineFrames(FrameFragment(Heap[Heap[diz, Worker__l], SubjectLock__subject]), CombineFrames(FrameFragment(Heap[diz, Worker__s]), CombineFrames(Heap[null, SubjectLock__valid(Heap[diz, Worker__l])], Heap[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))])))));
    if (!HasDirectPerm(Mask, null, Worker__preFork_at_Worker(diz, FullPerm))) {
      Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__preFork_at_Worker(diz, FullPerm):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
      { newPMask[o_15, f_20] }
      Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][o_15, f_20] || Heap[null, Worker__preFork_at_Thread#sm(diz, FullPerm)][o_15, f_20] ==> newPMask[o_15, f_20]
    );
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=newPMask];
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][diz, Worker__l:=true]];
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][Heap[diz, Worker__l], SubjectLock__subject:=true]];
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][diz, Worker__s:=true]];
    havoc newPMask;
    assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
      { newPMask[o_16, f_21] }
      Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][o_16, f_21] || Heap[null, SubjectLock__valid#sm(Heap[diz, Worker__l])][o_16, f_21] ==> newPMask[o_16, f_21]
    );
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=newPMask];
    havoc newPMask;
    assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
      { newPMask[o_52, f_55] }
      Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][o_52, f_55] || Heap[null, History__hist_idle#sm(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))][o_52, f_55] ==> newPMask[o_52, f_55]
    );
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryThreadsApplication.vpr@681.3--681.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (type_of(sys__result) == class_Worker() &&
  //   (acc(sys__result.Worker__l, wildcard) &&
  //   (sys__result.Worker__l == l &&
  //   (acc(sys__result.Worker__s, wildcard) &&
  //   (sys__result.Worker__s == s &&
  //   acc(Worker__preFork_at_Worker(sys__result, write), write)))))) -- testHistoryThreadsApplication.vpr@682.3--682.280
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@682.10--682.280) [162742]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Worker() might not hold. (testHistoryThreadsApplication.vpr@682.10--682.280) [162743]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__l (testHistoryThreadsApplication.vpr@682.10--682.280) [162744]"}
      AssertMask[sys__result, Worker__l] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Worker__l];
    AssertMask := AssertMask[sys__result, Worker__l:=AssertMask[sys__result, Worker__l] - wildcard];
    
    // -- Check definedness of sys__result.Worker__l == l
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__l (testHistoryThreadsApplication.vpr@682.10--682.280) [162745]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Worker__l);
    assert {:msg "  Assert might fail. Assertion sys__result.Worker__l == l might not hold. (testHistoryThreadsApplication.vpr@682.10--682.280) [162746]"}
      AssertHeap[sys__result, Worker__l] == l_2;
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__s (testHistoryThreadsApplication.vpr@682.10--682.280) [162747]"}
      AssertMask[sys__result, Worker__s] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Worker__s];
    AssertMask := AssertMask[sys__result, Worker__s:=AssertMask[sys__result, Worker__s] - wildcard];
    
    // -- Check definedness of sys__result.Worker__s == s
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__s (testHistoryThreadsApplication.vpr@682.10--682.280) [162748]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Worker__s);
    assert {:msg "  Assert might fail. Assertion sys__result.Worker__s == s might not hold. (testHistoryThreadsApplication.vpr@682.10--682.280) [162749]"}
      AssertHeap[sys__result, Worker__s] == s_2;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Worker__preFork_at_Worker(sys__result, write) (testHistoryThreadsApplication.vpr@682.10--682.280) [162751]"}
        perm <= AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)];
    }
    AssertMask := AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@683.3--683.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@658.11--658.30) [162752]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion type_of(sys__result) == class_Worker() might not hold. (testHistoryThreadsApplication.vpr@659.11--659.49) [162753]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. There might be insufficient permission to access sys__result.Worker__l (testHistoryThreadsApplication.vpr@660.11--660.47) [162754]"}
      Mask[sys__result, Worker__l] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__l];
    Mask := Mask[sys__result, Worker__l:=Mask[sys__result, Worker__l] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion sys__result.Worker__l == l might not hold. (testHistoryThreadsApplication.vpr@661.11--661.37) [162755]"}
      Heap[sys__result, Worker__l] == l_2;
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. There might be insufficient permission to access sys__result.Worker__s (testHistoryThreadsApplication.vpr@662.11--662.47) [162756]"}
      Mask[sys__result, Worker__s] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__s];
    Mask := Mask[sys__result, Worker__s:=Mask[sys__result, Worker__s] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion sys__result.Worker__s == s might not hold. (testHistoryThreadsApplication.vpr@663.11--663.37) [162757]"}
      Heap[sys__result, Worker__s] == s_2;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. There might be insufficient permission to access Worker__preFork_at_Worker(sys__result, write) (testHistoryThreadsApplication.vpr@664.11--664.68) [162758]"}
        perm <= Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__run_at_Worker
// ==================================================

procedure Worker__run_at_Worker(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_43: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_diz: Ref;
  var arg_p: Perm;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var arg_diz_1: Ref;
  var arg_frac: Perm;
  var arg_proc: ProcessDomainType;
  var arg_diz_2: Ref;
  var arg_value: int;
  var arg_diz_3: Ref;
  var arg_frac_1: Perm;
  var arg_proc_1: ProcessDomainType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var arg_diz_4: Ref;
  var arg_p_1: Perm;
  
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
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Worker(diz, FullPerm):=PostMask[null, Worker__postJoin_at_Worker(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_43, $allocated];
  
  // -- Translating statement: unfold acc(Worker__preFork_at_Worker(diz, write), write) -- testHistoryThreadsApplication.vpr@694.3--694.59
    assume Worker__preFork_at_Worker#trigger(Heap, Worker__preFork_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__preFork_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__preFork_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__l]), CombineFrames(FrameFragment(Heap[Heap[diz, Worker__l], SubjectLock__subject]), CombineFrames(FrameFragment(Heap[diz, Worker__s]), CombineFrames(Heap[null, SubjectLock__valid(Heap[diz, Worker__l])], Heap[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))])))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__preFork_at_Worker(diz, write) (testHistoryThreadsApplication.vpr@694.3--694.59) [162761]"}
        perm <= Mask[null, Worker__preFork_at_Worker(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Worker__preFork_at_Worker(diz, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Worker__preFork_at_Worker(diz, FullPerm):=newVersion];
      }
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], Worker__preFork_at_Thread(diz, FullPerm), Heap[null, Worker__preFork_at_Thread(diz, FullPerm)]);
    assume state(Heap, Mask);
    assume FullPerm == FullPerm;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__l:=Mask[diz, Worker__l] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume Heap[diz, Worker__l] != null;
    Mask := Mask[Heap[diz, Worker__l], SubjectLock__subject:=Mask[Heap[diz, Worker__l], SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__s:=Mask[diz, Worker__s] + perm];
    assume state(Heap, Mask);
    assume Heap[Heap[diz, Worker__l], SubjectLock__subject] == Heap[diz, Worker__s];
    perm := 1 / 2;
    assert {:msg "  Unfolding Worker__preFork_at_Worker(diz, write) might fail. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@694.3--694.59) [162763]"}
      perm >= NoPerm;
    Mask := Mask[null, SubjectLock__valid(Heap[diz, Worker__l]):=Mask[null, SubjectLock__valid(Heap[diz, Worker__l])] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], SubjectLock__valid(Heap[diz, Worker__l]), Heap[null, SubjectLock__valid(Heap[diz, Worker__l])]);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType)), Heap[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := SubjectLock__lock(diz.Worker__l, current_thread_id, 0, 1 / 2) -- testHistoryThreadsApplication.vpr@695.3--695.79
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Worker__l
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@695.3--695.79) [162765]"}
        HasDirectPerm(Mask, diz, Worker__l);
    arg_diz := Heap[diz, Worker__l];
    arg_p := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method SubjectLock__lock might not hold. Assertion diz.Worker__l != null might not hold. (testHistoryThreadsApplication.vpr@695.3--695.79) [162766]"}
        arg_diz != null;
      assert {:msg "  The precondition of method SubjectLock__lock might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@695.3--695.79) [162767]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method SubjectLock__lock might not hold. Assertion 1 / 2 >= none might not hold. (testHistoryThreadsApplication.vpr@695.3--695.79) [162768]"}
        NoPerm <= arg_p;
      perm := arg_p;
      assert {:msg "  The precondition of method SubjectLock__lock might not hold. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@695.3--695.79) [162769]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method SubjectLock__lock might not hold. There might be insufficient permission to access SubjectLock__valid(diz.Worker__l) (testHistoryThreadsApplication.vpr@695.3--695.79) [162770]"}
          perm <= Mask[null, SubjectLock__valid(arg_diz)];
      }
      Mask := Mask[null, SubjectLock__valid(arg_diz):=Mask[null, SubjectLock__valid(arg_diz)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, SubjectLock__locked(arg_diz, arg_p, 1):=Mask[null, SubjectLock__locked(arg_diz, arg_p, 1)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, SubjectLock__inv(arg_diz):=Mask[null, SubjectLock__inv(arg_diz)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(SubjectLock__inv(diz.Worker__l), write) -- testHistoryThreadsApplication.vpr@696.3--696.53
    
    // -- Check definedness of acc(SubjectLock__inv(diz.Worker__l), write)
      assert {:msg "  Unfolding SubjectLock__inv(diz.Worker__l) might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@696.3--696.53) [162771]"}
        HasDirectPerm(Mask, diz, Worker__l);
    assume SubjectLock__inv#trigger(Heap, SubjectLock__inv(Heap[diz, Worker__l]));
    assume Heap[null, SubjectLock__inv(Heap[diz, Worker__l])] == CombineFrames(FrameFragment(Heap[Heap[diz, Worker__l], SubjectLock__subject]), Heap[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding SubjectLock__inv(diz.Worker__l) might fail. There might be insufficient permission to access SubjectLock__inv(diz.Worker__l) (testHistoryThreadsApplication.vpr@696.3--696.53) [162774]"}
        perm <= Mask[null, SubjectLock__inv(Heap[diz, Worker__l])];
    }
    Mask := Mask[null, SubjectLock__inv(Heap[diz, Worker__l]):=Mask[null, SubjectLock__inv(Heap[diz, Worker__l])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, SubjectLock__inv(Heap[diz, Worker__l]))) {
        havoc newVersion;
        Heap := Heap[null, SubjectLock__inv(Heap[diz, Worker__l]):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume Heap[diz, Worker__l] != null;
    Mask := Mask[Heap[diz, Worker__l], SubjectLock__subject:=Mask[Heap[diz, Worker__l], SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(SubjectLock__inv(Heap[diz, Worker__l]), Heap[null, SubjectLock__inv(Heap[diz, Worker__l])], History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]), Heap[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(History__inv(diz.Worker__l.SubjectLock__subject), write) -- testHistoryThreadsApplication.vpr@697.3--697.70
    
    // -- Check definedness of acc(History__inv(diz.Worker__l.SubjectLock__subject), write)
      assert {:msg "  Unfolding History__inv(diz.Worker__l.SubjectLock__subject) might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@697.3--697.70) [162776]"}
        HasDirectPerm(Mask, diz, Worker__l);
      assert {:msg "  Unfolding History__inv(diz.Worker__l.SubjectLock__subject) might fail. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject (testHistoryThreadsApplication.vpr@697.3--697.70) [162777]"}
        HasDirectPerm(Mask, Heap[diz, Worker__l], SubjectLock__subject);
    assume History__inv#trigger(Heap, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]));
    assume Heap[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])] == CombineFrames(FrameFragment(Heap[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_value]), FrameFragment(Heap[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding History__inv(diz.Worker__l.SubjectLock__subject) might fail. There might be insufficient permission to access History__inv(diz.Worker__l.SubjectLock__subject) (testHistoryThreadsApplication.vpr@697.3--697.70) [162780]"}
        perm <= Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])];
    }
    Mask := Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]))) {
        havoc newVersion;
        Heap := Heap[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[Heap[diz, Worker__l], SubjectLock__subject] != null;
    Mask := Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_value:=Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[Heap[diz, Worker__l], SubjectLock__subject] != null;
    Mask := Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode:=Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    assume Heap[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode] == 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(History__hist_idle(diz.Worker__s, 1 / 2, p_empty()), write) -- testHistoryThreadsApplication.vpr@698.3--698.73
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of acc(History__hist_idle(diz.Worker__s, 1 / 2, p_empty()), write)
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@698.10--698.73) [162783]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Worker__s);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access History__hist_idle(diz.Worker__s, 1 / 2, p_empty()) (testHistoryThreadsApplication.vpr@698.10--698.73) [162785]"}
        perm <= AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))];
    }
    AssertMask := AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType)):=AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_empty(): ProcessDomainType))] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := History__incr_begin(diz.Worker__s, current_thread_id, 1 / 2,
  //   p_empty()) -- testHistoryThreadsApplication.vpr@699.3--699.89
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Worker__s
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@699.3--699.89) [162786]"}
        HasDirectPerm(Mask, diz, Worker__s);
    arg_diz_1 := Heap[diz, Worker__s];
    arg_frac := 1 / 2;
    arg_proc := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion diz.Worker__s != null might not hold. (testHistoryThreadsApplication.vpr@699.3--699.89) [162787]"}
        arg_diz_1 != null;
      assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@699.3--699.89) [162788]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion 1 / 2 != none might not hold. (testHistoryThreadsApplication.vpr@699.3--699.89) [162789]"}
        arg_frac != NoPerm;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access History__hist_idle(diz.Worker__s, 1 / 2, p_empty()) (testHistoryThreadsApplication.vpr@699.3--699.89) [162790]"}
          perm <= Mask[null, History__hist_idle(arg_diz_1, arg_frac, arg_proc)];
      }
      Mask := Mask[null, History__hist_idle(arg_diz_1, arg_frac, arg_proc):=Mask[null, History__hist_idle(arg_diz_1, arg_frac, arg_proc)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access diz.Worker__s.History__x_hist_value (testHistoryThreadsApplication.vpr@699.3--699.89) [162791]"}
          perm <= Mask[arg_diz_1, History__x_hist_value];
      }
      Mask := Mask[arg_diz_1, History__x_hist_value:=Mask[arg_diz_1, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access diz.Worker__s.History__x_hist_mode (testHistoryThreadsApplication.vpr@699.3--699.89) [162792]"}
          perm <= Mask[arg_diz_1, History__x_hist_mode];
      }
      Mask := Mask[arg_diz_1, History__x_hist_mode:=Mask[arg_diz_1, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion diz.Worker__s.History__x_hist_mode == 1 might not hold. (testHistoryThreadsApplication.vpr@699.3--699.89) [162793]"}
        Heap[arg_diz_1, History__x_hist_mode] == 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      assume arg_frac != NoPerm;
      perm := FullPerm;
      Mask := Mask[null, History__hist_do_incr(arg_diz_1, arg_frac, arg_proc):=Mask[null, History__hist_do_incr(arg_diz_1, arg_frac, arg_proc)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume arg_diz_1 != null;
      Mask := Mask[arg_diz_1, History__x_hist_value:=Mask[arg_diz_1, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume arg_diz_1 != null;
      Mask := Mask[arg_diz_1, History__x_hist_mode:=Mask[arg_diz_1, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_diz_1, History__x_hist_mode] == 2;
      assume Heap[arg_diz_1, History__x_hist_value] == PreCallHeap[arg_diz_1, History__x_hist_value];
      perm := FullPerm;
      assume arg_diz_1 != null;
      Mask := Mask[arg_diz_1, History__x_hist_act:=Mask[arg_diz_1, History__x_hist_act] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_diz_1, History__x_hist_value] == Heap[arg_diz_1, History__x_hist_act];
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_43 := diz.Worker__s -- testHistoryThreadsApplication.vpr@700.3--700.32
    
    // -- Check definedness of diz.Worker__s
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@700.3--700.32) [162794]"}
        HasDirectPerm(Mask, diz, Worker__s);
    __flatten_43 := Heap[diz, Worker__s];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := History__hist_set_x(diz.Worker__s, current_thread_id, __flatten_43.History__x_hist_value +
  //   1) -- testHistoryThreadsApplication.vpr@701.3--701.111
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Worker__s
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@701.3--701.111) [162795]"}
        HasDirectPerm(Mask, diz, Worker__s);
    
    // -- Check definedness of __flatten_43.History__x_hist_value + 1
      assert {:msg "  Method call might fail. There might be insufficient permission to access __flatten_43.History__x_hist_value (testHistoryThreadsApplication.vpr@701.3--701.111) [162796]"}
        HasDirectPerm(Mask, __flatten_43, History__x_hist_value);
    arg_diz_2 := Heap[diz, Worker__s];
    arg_value := Heap[__flatten_43, History__x_hist_value] + 1;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion diz.Worker__s != null might not hold. (testHistoryThreadsApplication.vpr@701.3--701.111) [162797]"}
        arg_diz_2 != null;
      assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@701.3--701.111) [162798]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__hist_set_x might not hold. There might be insufficient permission to access diz.Worker__s.History__x_hist_value (testHistoryThreadsApplication.vpr@701.3--701.111) [162799]"}
          perm <= Mask[arg_diz_2, History__x_hist_value];
      }
      Mask := Mask[arg_diz_2, History__x_hist_value:=Mask[arg_diz_2, History__x_hist_value] - perm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method History__hist_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@701.3--701.111) [162800]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__hist_set_x might not hold. There might be insufficient permission to access diz.Worker__s.History__x_hist_mode (testHistoryThreadsApplication.vpr@701.3--701.111) [162801]"}
          perm <= Mask[arg_diz_2, History__x_hist_mode];
      }
      Mask := Mask[arg_diz_2, History__x_hist_mode:=Mask[arg_diz_2, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion diz.Worker__s.History__x_hist_mode == 2 might not hold. (testHistoryThreadsApplication.vpr@701.3--701.111) [162802]"}
        Heap[arg_diz_2, History__x_hist_mode] == 2;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume arg_diz_2 != null;
      Mask := Mask[arg_diz_2, History__x_hist_value:=Mask[arg_diz_2, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_diz_2, History__x_hist_value] == arg_value;
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@701.3--701.111) [162803]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_diz_2 != null;
      Mask := Mask[arg_diz_2, History__x_hist_mode:=Mask[arg_diz_2, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_diz_2, History__x_hist_mode] == 2;
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := History__incr_commit(diz.Worker__s, current_thread_id, 1 / 2,
  //   p_empty()) -- testHistoryThreadsApplication.vpr@702.3--702.90
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Worker__s
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@702.3--702.90) [162804]"}
        HasDirectPerm(Mask, diz, Worker__s);
    arg_diz_3 := Heap[diz, Worker__s];
    arg_frac_1 := 1 / 2;
    arg_proc_1 := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion diz.Worker__s != null might not hold. (testHistoryThreadsApplication.vpr@702.3--702.90) [162805]"}
        arg_diz_3 != null;
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@702.3--702.90) [162806]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion 1 / 2 != none might not hold. (testHistoryThreadsApplication.vpr@702.3--702.90) [162807]"}
        arg_frac_1 != NoPerm;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access History__hist_do_incr(diz.Worker__s, 1 / 2, p_empty()) (testHistoryThreadsApplication.vpr@702.3--702.90) [162808]"}
          perm <= Mask[null, History__hist_do_incr(arg_diz_3, arg_frac_1, arg_proc_1)];
      }
      Mask := Mask[null, History__hist_do_incr(arg_diz_3, arg_frac_1, arg_proc_1):=Mask[null, History__hist_do_incr(arg_diz_3, arg_frac_1, arg_proc_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access diz.Worker__s.History__x_hist_act (testHistoryThreadsApplication.vpr@702.3--702.90) [162809]"}
          perm <= Mask[arg_diz_3, History__x_hist_act];
      }
      Mask := Mask[arg_diz_3, History__x_hist_act:=Mask[arg_diz_3, History__x_hist_act] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access diz.Worker__s.History__x_hist_value (testHistoryThreadsApplication.vpr@702.3--702.90) [162810]"}
          perm <= Mask[arg_diz_3, History__x_hist_value];
      }
      Mask := Mask[arg_diz_3, History__x_hist_value:=Mask[arg_diz_3, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access diz.Worker__s.History__x_hist_mode (testHistoryThreadsApplication.vpr@702.3--702.90) [162811]"}
          perm <= Mask[arg_diz_3, History__x_hist_mode];
      }
      Mask := Mask[arg_diz_3, History__x_hist_mode:=Mask[arg_diz_3, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion diz.Worker__s.History__x_hist_mode == 2 might not hold. (testHistoryThreadsApplication.vpr@702.3--702.90) [162812]"}
        Heap[arg_diz_3, History__x_hist_mode] == 2;
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion diz.Worker__s.History__x_hist_value == diz.Worker__s.History__x_hist_act + 1 might not hold. (testHistoryThreadsApplication.vpr@702.3--702.90) [162813]"}
        Heap[arg_diz_3, History__x_hist_value] == Heap[arg_diz_3, History__x_hist_act] + 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      assume arg_frac_1 != NoPerm;
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(arg_diz_3, arg_frac_1, (p_seq(arg_proc_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(arg_diz_3, arg_frac_1, (p_seq(arg_proc_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume arg_diz_3 != null;
      Mask := Mask[arg_diz_3, History__x_hist_value:=Mask[arg_diz_3, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume arg_diz_3 != null;
      Mask := Mask[arg_diz_3, History__x_hist_mode:=Mask[arg_diz_3, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_diz_3, History__x_hist_mode] == 1;
      assume Heap[arg_diz_3, History__x_hist_value] == PreCallHeap[arg_diz_3, History__x_hist_value];
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(History__hist_idle(diz.Worker__s, 1 / 2, p_single(1)), write) -- testHistoryThreadsApplication.vpr@703.3--703.75
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of acc(History__hist_idle(diz.Worker__s, 1 / 2, p_single(1)), write)
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@703.10--703.75) [162814]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Worker__s);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access History__hist_idle(diz.Worker__s, 1 / 2, p_single(1)) (testHistoryThreadsApplication.vpr@703.10--703.75) [162816]"}
        perm <= AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))];
    }
    AssertMask := AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)):=AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(History__inv(diz.Worker__l.SubjectLock__subject), write) -- testHistoryThreadsApplication.vpr@704.3--704.68
    
    // -- Check definedness of acc(History__inv(diz.Worker__l.SubjectLock__subject), write)
      assert {:msg "  Folding History__inv(diz.Worker__l.SubjectLock__subject) might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@704.3--704.68) [162817]"}
        HasDirectPerm(Mask, diz, Worker__l);
      assert {:msg "  Folding History__inv(diz.Worker__l.SubjectLock__subject) might fail. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject (testHistoryThreadsApplication.vpr@704.3--704.68) [162818]"}
        HasDirectPerm(Mask, Heap[diz, Worker__l], SubjectLock__subject);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding History__inv(diz.Worker__l.SubjectLock__subject) might fail. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject.History__x_hist_value (testHistoryThreadsApplication.vpr@704.3--704.68) [162821]"}
        perm <= Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_value];
    }
    Mask := Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_value:=Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding History__inv(diz.Worker__l.SubjectLock__subject) might fail. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject.History__x_hist_mode (testHistoryThreadsApplication.vpr@704.3--704.68) [162823]"}
        perm <= Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode];
    }
    Mask := Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode:=Mask[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode] - perm];
    assert {:msg "  Folding History__inv(diz.Worker__l.SubjectLock__subject) might fail. Assertion diz.Worker__l.SubjectLock__subject.History__x_hist_mode == 1 might not hold. (testHistoryThreadsApplication.vpr@704.3--704.68) [162824]"}
      Heap[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode] == 1;
    perm := FullPerm;
    Mask := Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume History__inv#trigger(Heap, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]));
    assume Heap[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])] == CombineFrames(FrameFragment(Heap[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_value]), FrameFragment(Heap[Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode]));
    if (!HasDirectPerm(Mask, null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]))) {
      Heap := Heap[null, History__inv#sm(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=freshVersion];
    }
    Heap := Heap[null, History__inv#sm(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=Heap[null, History__inv#sm(Heap[Heap[diz, Worker__l], SubjectLock__subject])][Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_value:=true]];
    Heap := Heap[null, History__inv#sm(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=Heap[null, History__inv#sm(Heap[Heap[diz, Worker__l], SubjectLock__subject])][Heap[Heap[diz, Worker__l], SubjectLock__subject], History__x_hist_mode:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(SubjectLock__inv(diz.Worker__l), write) -- testHistoryThreadsApplication.vpr@705.3--705.51
    
    // -- Check definedness of acc(SubjectLock__inv(diz.Worker__l), write)
      assert {:msg "  Folding SubjectLock__inv(diz.Worker__l) might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@705.3--705.51) [162826]"}
        HasDirectPerm(Mask, diz, Worker__l);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding SubjectLock__inv(diz.Worker__l) might fail. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject (testHistoryThreadsApplication.vpr@705.3--705.51) [162828]"}
      Mask[Heap[diz, Worker__l], SubjectLock__subject] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[diz, Worker__l], SubjectLock__subject];
    Mask := Mask[Heap[diz, Worker__l], SubjectLock__subject:=Mask[Heap[diz, Worker__l], SubjectLock__subject] - wildcard];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding SubjectLock__inv(diz.Worker__l) might fail. There might be insufficient permission to access History__inv(diz.Worker__l.SubjectLock__subject) (testHistoryThreadsApplication.vpr@705.3--705.51) [162830]"}
        perm <= Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])];
    }
    Mask := Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]):=Mask[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(SubjectLock__inv(Heap[diz, Worker__l]), Heap[null, SubjectLock__inv(Heap[diz, Worker__l])], History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject]), Heap[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])]);
    perm := FullPerm;
    Mask := Mask[null, SubjectLock__inv(Heap[diz, Worker__l]):=Mask[null, SubjectLock__inv(Heap[diz, Worker__l])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume SubjectLock__inv#trigger(Heap, SubjectLock__inv(Heap[diz, Worker__l]));
    assume Heap[null, SubjectLock__inv(Heap[diz, Worker__l])] == CombineFrames(FrameFragment(Heap[Heap[diz, Worker__l], SubjectLock__subject]), Heap[null, History__inv(Heap[Heap[diz, Worker__l], SubjectLock__subject])]);
    if (!HasDirectPerm(Mask, null, SubjectLock__inv(Heap[diz, Worker__l]))) {
      Heap := Heap[null, SubjectLock__inv#sm(Heap[diz, Worker__l]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, SubjectLock__inv(Heap[diz, Worker__l]):=freshVersion];
    }
    Heap := Heap[null, SubjectLock__inv#sm(Heap[diz, Worker__l]):=Heap[null, SubjectLock__inv#sm(Heap[diz, Worker__l])][Heap[diz, Worker__l], SubjectLock__subject:=true]];
    havoc newPMask;
    assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
      { newPMask[o_53, f_56] }
      Heap[null, SubjectLock__inv#sm(Heap[diz, Worker__l])][o_53, f_56] || Heap[null, History__inv#sm(Heap[Heap[diz, Worker__l], SubjectLock__subject])][o_53, f_56] ==> newPMask[o_53, f_56]
    );
    Heap := Heap[null, SubjectLock__inv#sm(Heap[diz, Worker__l]):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := SubjectLock__unlock(diz.Worker__l, current_thread_id, 1, 1 /
  //   2) -- testHistoryThreadsApplication.vpr@706.3--706.81
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Worker__l
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@706.3--706.81) [162832]"}
        HasDirectPerm(Mask, diz, Worker__l);
    arg_diz_4 := Heap[diz, Worker__l];
    arg_p_1 := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method SubjectLock__unlock might not hold. Assertion diz.Worker__l != null might not hold. (testHistoryThreadsApplication.vpr@706.3--706.81) [162833]"}
        arg_diz_4 != null;
      assert {:msg "  The precondition of method SubjectLock__unlock might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@706.3--706.81) [162834]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method SubjectLock__unlock might not hold. There might be insufficient permission to access SubjectLock__locked(diz.Worker__l, 1 / 2, 1) (testHistoryThreadsApplication.vpr@706.3--706.81) [162835]"}
          perm <= Mask[null, SubjectLock__locked(arg_diz_4, arg_p_1, 1)];
      }
      Mask := Mask[null, SubjectLock__locked(arg_diz_4, arg_p_1, 1):=Mask[null, SubjectLock__locked(arg_diz_4, arg_p_1, 1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method SubjectLock__unlock might not hold. There might be insufficient permission to access SubjectLock__inv(diz.Worker__l) (testHistoryThreadsApplication.vpr@706.3--706.81) [162836]"}
          perm <= Mask[null, SubjectLock__inv(arg_diz_4)];
      }
      Mask := Mask[null, SubjectLock__inv(arg_diz_4):=Mask[null, SubjectLock__inv(arg_diz_4)] - perm];
      assert {:msg "  The precondition of method SubjectLock__unlock might not hold. Assertion 1 / 2 >= none might not hold. (testHistoryThreadsApplication.vpr@706.3--706.81) [162837]"}
        NoPerm <= arg_p_1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := arg_p_1;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@706.3--706.81) [162838]"}
        perm >= NoPerm;
      Mask := Mask[null, SubjectLock__valid(arg_diz_4):=Mask[null, SubjectLock__valid(arg_diz_4)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(History__hist_idle(diz.Worker__s, 1 / 2, p_single(1)), write) -- testHistoryThreadsApplication.vpr@707.3--707.75
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of acc(History__hist_idle(diz.Worker__s, 1 / 2, p_single(1)), write)
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@707.10--707.75) [162839]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Worker__s);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access History__hist_idle(diz.Worker__s, 1 / 2, p_single(1)) (testHistoryThreadsApplication.vpr@707.10--707.75) [162841]"}
        perm <= AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))];
    }
    AssertMask := AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)):=AssertMask[null, History__hist_idle(AssertHeap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__postJoin_at_Thread(diz, write), write) -- testHistoryThreadsApplication.vpr@708.3--708.58
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, FullPerm):=Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__postJoin_at_Thread#trigger(Heap, Worker__postJoin_at_Thread(diz, FullPerm));
    assume Heap[null, Worker__postJoin_at_Thread(diz, FullPerm)] == EmptyFrame;
    if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Thread(diz, FullPerm))) {
      Heap := Heap[null, Worker__postJoin_at_Thread#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__postJoin_at_Thread(diz, FullPerm):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__postJoin_at_Worker(diz, write), write) -- testHistoryThreadsApplication.vpr@709.3--709.58
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, write) (testHistoryThreadsApplication.vpr@709.3--709.58) [162847]"}
        perm <= Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, FullPerm):=Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__postJoin_at_Worker(diz, FullPerm), Heap[null, Worker__postJoin_at_Worker(diz, FullPerm)], Worker__postJoin_at_Thread(diz, FullPerm), Heap[null, Worker__postJoin_at_Thread(diz, FullPerm)]);
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Assertion write == write might not hold. (testHistoryThreadsApplication.vpr@709.3--709.58) [162848]"}
      FullPerm == FullPerm;
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__l (testHistoryThreadsApplication.vpr@709.3--709.58) [162849]"}
      Mask[diz, Worker__l] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Worker__l];
    Mask := Mask[diz, Worker__l:=Mask[diz, Worker__l] - wildcard];
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__l.SubjectLock__subject (testHistoryThreadsApplication.vpr@709.3--709.58) [162850]"}
      Mask[Heap[diz, Worker__l], SubjectLock__subject] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[diz, Worker__l], SubjectLock__subject];
    Mask := Mask[Heap[diz, Worker__l], SubjectLock__subject:=Mask[Heap[diz, Worker__l], SubjectLock__subject] - wildcard];
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__s (testHistoryThreadsApplication.vpr@709.3--709.58) [162851]"}
      Mask[diz, Worker__s] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Worker__s];
    Mask := Mask[diz, Worker__s:=Mask[diz, Worker__s] - wildcard];
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Assertion diz.Worker__l.SubjectLock__subject == diz.Worker__s might not hold. (testHistoryThreadsApplication.vpr@709.3--709.58) [162852]"}
      Heap[Heap[diz, Worker__l], SubjectLock__subject] == Heap[diz, Worker__s];
    perm := 1 / 2;
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@709.3--709.58) [162853]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access SubjectLock__valid(diz.Worker__l) (testHistoryThreadsApplication.vpr@709.3--709.58) [162854]"}
        perm <= Mask[null, SubjectLock__valid(Heap[diz, Worker__l])];
    }
    Mask := Mask[null, SubjectLock__valid(Heap[diz, Worker__l]):=Mask[null, SubjectLock__valid(Heap[diz, Worker__l])] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__postJoin_at_Worker(diz, FullPerm), Heap[null, Worker__postJoin_at_Worker(diz, FullPerm)], SubjectLock__valid(Heap[diz, Worker__l]), Heap[null, SubjectLock__valid(Heap[diz, Worker__l])]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access History__hist_idle(diz.Worker__s, 1 / 2, p_single(1)) (testHistoryThreadsApplication.vpr@709.3--709.58) [162856]"}
        perm <= Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)):=Mask[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__postJoin_at_Worker(diz, FullPerm), Heap[null, Worker__postJoin_at_Worker(diz, FullPerm)], History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)), Heap[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))]);
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Worker(diz, FullPerm):=Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__postJoin_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__postJoin_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__l]), CombineFrames(FrameFragment(Heap[Heap[diz, Worker__l], SubjectLock__subject]), CombineFrames(FrameFragment(Heap[diz, Worker__s]), CombineFrames(Heap[null, SubjectLock__valid(Heap[diz, Worker__l])], Heap[null, History__hist_idle(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))])))));
    if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Worker(diz, FullPerm))) {
      Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__postJoin_at_Worker(diz, FullPerm):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
      { newPMask[o_26, f_29] }
      Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][o_26, f_29] || Heap[null, Worker__postJoin_at_Thread#sm(diz, FullPerm)][o_26, f_29] ==> newPMask[o_26, f_29]
    );
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=newPMask];
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][diz, Worker__l:=true]];
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][Heap[diz, Worker__l], SubjectLock__subject:=true]];
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][diz, Worker__s:=true]];
    havoc newPMask;
    assume (forall <A, B> o: Ref, f_85: (Field A B) ::
      { newPMask[o, f_85] }
      Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][o, f_85] || Heap[null, SubjectLock__valid#sm(Heap[diz, Worker__l])][o, f_85] ==> newPMask[o, f_85]
    );
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=newPMask];
    havoc newPMask;
    assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
      { newPMask[o_11, f_3] }
      Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][o_11, f_3] || Heap[null, History__hist_idle#sm(Heap[diz, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))][o_11, f_3] ==> newPMask[o_11, f_3]
    );
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin_at_Worker(diz, write) (testHistoryThreadsApplication.vpr@690.11--690.61) [162858]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(diz, FullPerm):=Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__if_any_random
// ==================================================

procedure Worker__if_any_random(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref, sys__result: bool)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@716.3--716.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Main__main
// ==================================================

procedure Main__main(current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var s_2: Ref;
  var __flatten_48: Ref;
  var lock: Ref;
  var __flatten_54: Ref;
  var w1: Ref;
  var __flatten_56: Ref;
  var w2: Ref;
  var __flatten_57: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var arg_frac1: Perm;
  var arg_proc1: ProcessDomainType;
  var arg_frac2: Perm;
  var arg_proc2: ProcessDomainType;
  var freshVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  var arg_p: Perm;
  var arg_p_1: Perm;
  var arg_p_2: Perm;
  var arg_p_3: Perm;
  var newVersion: FrameType;
  var arg_frac1_1: Perm;
  var arg_proc1_1: ProcessDomainType;
  var arg_frac2_1: Perm;
  var arg_proc2_1: ProcessDomainType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[s_2, $allocated];
    assume Heap[__flatten_48, $allocated];
    assume Heap[lock, $allocated];
    assume Heap[__flatten_54, $allocated];
    assume Heap[w1, $allocated];
    assume Heap[__flatten_56, $allocated];
    assume Heap[w2, $allocated];
    assume Heap[__flatten_57, $allocated];
  
  // -- Translating statement: sys__thrown, __flatten_48 := History__History(current_thread_id) -- testHistoryThreadsApplication.vpr@731.3--731.67
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__History might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@731.3--731.67) [162859]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc sys__thrown, __flatten_48;
    
    // -- Inhaling postcondition
      assume __flatten_48 != null;
      perm := FullPerm;
      assume __flatten_48 != null;
      Mask := Mask[__flatten_48, History__x_hist_value:=Mask[__flatten_48, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_48, History__x_hist_value] == 0;
      perm := FullPerm;
      assume __flatten_48 != null;
      Mask := Mask[__flatten_48, History__x_hist_mode:=Mask[__flatten_48, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_48, History__x_hist_mode] == 0;
      perm := FullPerm;
      assume __flatten_48 != null;
      Mask := Mask[__flatten_48, History__x_hist_init:=Mask[__flatten_48, History__x_hist_init] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_48, History__x_hist_init] == 0;
      perm := FullPerm;
      assume __flatten_48 != null;
      Mask := Mask[__flatten_48, History__x_hist_act:=Mask[__flatten_48, History__x_hist_act] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_48, History__x_hist_act] == 0;
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume Heap[__flatten_48, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: s := __flatten_48 -- testHistoryThreadsApplication.vpr@732.3--732.20
    s_2 := __flatten_48;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := History__free_set_x(s, current_thread_id, 37) -- testHistoryThreadsApplication.vpr@733.3--733.63
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__free_set_x might not hold. Assertion s != null might not hold. (testHistoryThreadsApplication.vpr@733.3--733.63) [162860]"}
        s_2 != null;
      assert {:msg "  The precondition of method History__free_set_x might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@733.3--733.63) [162861]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__free_set_x might not hold. There might be insufficient permission to access s.History__x_hist_value (testHistoryThreadsApplication.vpr@733.3--733.63) [162862]"}
          perm <= Mask[s_2, History__x_hist_value];
      }
      Mask := Mask[s_2, History__x_hist_value:=Mask[s_2, History__x_hist_value] - perm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method History__free_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@733.3--733.63) [162863]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__free_set_x might not hold. There might be insufficient permission to access s.History__x_hist_mode (testHistoryThreadsApplication.vpr@733.3--733.63) [162864]"}
          perm <= Mask[s_2, History__x_hist_mode];
      }
      Mask := Mask[s_2, History__x_hist_mode:=Mask[s_2, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__free_set_x might not hold. Assertion s.History__x_hist_mode == 0 might not hold. (testHistoryThreadsApplication.vpr@733.3--733.63) [162865]"}
        Heap[s_2, History__x_hist_mode] == 0;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume s_2 != null;
      Mask := Mask[s_2, History__x_hist_value:=Mask[s_2, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      assume Heap[s_2, History__x_hist_value] == 37;
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@733.3--733.63) [162866]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> s_2 != null;
      Mask := Mask[s_2, History__x_hist_mode:=Mask[s_2, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[s_2, History__x_hist_mode] == 0;
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := History__begin_hist(s, current_thread_id) -- testHistoryThreadsApplication.vpr@734.3--734.59
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__begin_hist might not hold. Assertion s != null might not hold. (testHistoryThreadsApplication.vpr@734.3--734.59) [162867]"}
        s_2 != null;
      assert {:msg "  The precondition of method History__begin_hist might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@734.3--734.59) [162868]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__begin_hist might not hold. There might be insufficient permission to access s.History__x_hist_value (testHistoryThreadsApplication.vpr@734.3--734.59) [162869]"}
          perm <= Mask[s_2, History__x_hist_value];
      }
      Mask := Mask[s_2, History__x_hist_value:=Mask[s_2, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__begin_hist might not hold. There might be insufficient permission to access s.History__x_hist_mode (testHistoryThreadsApplication.vpr@734.3--734.59) [162870]"}
          perm <= Mask[s_2, History__x_hist_mode];
      }
      Mask := Mask[s_2, History__x_hist_mode:=Mask[s_2, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__begin_hist might not hold. Assertion s.History__x_hist_mode == 0 might not hold. (testHistoryThreadsApplication.vpr@734.3--734.59) [162871]"}
        Heap[s_2, History__x_hist_mode] == 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__begin_hist might not hold. There might be insufficient permission to access s.History__x_hist_init (testHistoryThreadsApplication.vpr@734.3--734.59) [162872]"}
          perm <= Mask[s_2, History__x_hist_init];
      }
      Mask := Mask[s_2, History__x_hist_init:=Mask[s_2, History__x_hist_init] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__begin_hist might not hold. There might be insufficient permission to access s.History__x_hist_act (testHistoryThreadsApplication.vpr@734.3--734.59) [162873]"}
          perm <= Mask[s_2, History__x_hist_act];
      }
      Mask := Mask[s_2, History__x_hist_act:=Mask[s_2, History__x_hist_act] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume s_2 != null;
      Mask := Mask[s_2, History__x_hist_value:=Mask[s_2, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume s_2 != null;
      Mask := Mask[s_2, History__x_hist_mode:=Mask[s_2, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[s_2, History__x_hist_mode] == 1;
      perm := FullPerm;
      assume s_2 != null;
      Mask := Mask[s_2, History__x_hist_init:=Mask[s_2, History__x_hist_init] + perm];
      assume state(Heap, Mask);
      assume Heap[s_2, History__x_hist_value] == PreCallHeap[s_2, History__x_hist_value];
      assume Heap[s_2, History__x_hist_init] == PreCallHeap[s_2, History__x_hist_value];
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(s_2, FullPerm, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(s_2, FullPerm, (p_empty(): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := History__split(s, current_thread_id, 1 / 2, p_empty(), 1 / 2,
  //   p_empty()) -- testHistoryThreadsApplication.vpr@735.3--735.90
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_frac1 := 1 / 2;
    arg_proc1 := (p_empty(): ProcessDomainType);
    arg_frac2 := 1 / 2;
    arg_proc2 := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__split might not hold. Assertion s != null might not hold. (testHistoryThreadsApplication.vpr@735.3--735.90) [162874]"}
        s_2 != null;
      assert {:msg "  The precondition of method History__split might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@735.3--735.90) [162875]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__split might not hold. There might be insufficient permission to access History__hist_idle(s, 1 / 2 + 1 / 2, p_merge(p_empty(), p_empty())) (testHistoryThreadsApplication.vpr@735.3--735.90) [162876]"}
          perm <= Mask[null, History__hist_idle(s_2, arg_frac1 + arg_frac2, (p_merge(arg_proc1, arg_proc2): ProcessDomainType))];
      }
      Mask := Mask[null, History__hist_idle(s_2, arg_frac1 + arg_frac2, (p_merge(arg_proc1, arg_proc2): ProcessDomainType)):=Mask[null, History__hist_idle(s_2, arg_frac1 + arg_frac2, (p_merge(arg_proc1, arg_proc2): ProcessDomainType))] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(s_2, arg_frac1, arg_proc1):=Mask[null, History__hist_idle(s_2, arg_frac1, arg_proc1)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(s_2, arg_frac2, arg_proc2):=Mask[null, History__hist_idle(s_2, arg_frac2, arg_proc2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(History__inv(s), write) -- testHistoryThreadsApplication.vpr@736.3--736.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding History__inv(s) might fail. There might be insufficient permission to access s.History__x_hist_value (testHistoryThreadsApplication.vpr@736.3--736.35) [162879]"}
        perm <= Mask[s_2, History__x_hist_value];
    }
    Mask := Mask[s_2, History__x_hist_value:=Mask[s_2, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding History__inv(s) might fail. There might be insufficient permission to access s.History__x_hist_mode (testHistoryThreadsApplication.vpr@736.3--736.35) [162881]"}
        perm <= Mask[s_2, History__x_hist_mode];
    }
    Mask := Mask[s_2, History__x_hist_mode:=Mask[s_2, History__x_hist_mode] - perm];
    assert {:msg "  Folding History__inv(s) might fail. Assertion s.History__x_hist_mode == 1 might not hold. (testHistoryThreadsApplication.vpr@736.3--736.35) [162882]"}
      Heap[s_2, History__x_hist_mode] == 1;
    perm := FullPerm;
    Mask := Mask[null, History__inv(s_2):=Mask[null, History__inv(s_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume History__inv#trigger(Heap, History__inv(s_2));
    assume Heap[null, History__inv(s_2)] == CombineFrames(FrameFragment(Heap[s_2, History__x_hist_value]), FrameFragment(Heap[s_2, History__x_hist_mode]));
    if (!HasDirectPerm(Mask, null, History__inv(s_2))) {
      Heap := Heap[null, History__inv#sm(s_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, History__inv(s_2):=freshVersion];
    }
    Heap := Heap[null, History__inv#sm(s_2):=Heap[null, History__inv#sm(s_2)][s_2, History__x_hist_value:=true]];
    Heap := Heap[null, History__inv#sm(s_2):=Heap[null, History__inv#sm(s_2)][s_2, History__x_hist_mode:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown, __flatten_54 := SubjectLock__SubjectLock(current_thread_id, s) -- testHistoryThreadsApplication.vpr@737.3--737.78
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method SubjectLock__SubjectLock might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@737.3--737.78) [162884]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc sys__thrown, __flatten_54;
    
    // -- Inhaling postcondition
      assume __flatten_54 != null;
      assume (type_of(__flatten_54): TYPEDomainType) == (class_SubjectLock(): TYPEDomainType);
      havoc wildcard;
      perm := wildcard;
      assume __flatten_54 != null;
      Mask := Mask[__flatten_54, SubjectLock__subject:=Mask[__flatten_54, SubjectLock__subject] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_54, SubjectLock__subject] == s_2;
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume Heap[__flatten_54, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: lock := __flatten_54 -- testHistoryThreadsApplication.vpr@738.3--738.23
    lock := __flatten_54;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(SubjectLock__inv(lock), write) -- testHistoryThreadsApplication.vpr@739.3--739.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding SubjectLock__inv(lock) might fail. There might be insufficient permission to access lock.SubjectLock__subject (testHistoryThreadsApplication.vpr@739.3--739.42) [162886]"}
      Mask[lock, SubjectLock__subject] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[lock, SubjectLock__subject];
    Mask := Mask[lock, SubjectLock__subject:=Mask[lock, SubjectLock__subject] - wildcard];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding SubjectLock__inv(lock) might fail. There might be insufficient permission to access History__inv(lock.SubjectLock__subject) (testHistoryThreadsApplication.vpr@739.3--739.42) [162888]"}
        perm <= Mask[null, History__inv(Heap[lock, SubjectLock__subject])];
    }
    Mask := Mask[null, History__inv(Heap[lock, SubjectLock__subject]):=Mask[null, History__inv(Heap[lock, SubjectLock__subject])] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(SubjectLock__inv(lock), Heap[null, SubjectLock__inv(lock)], History__inv(Heap[lock, SubjectLock__subject]), Heap[null, History__inv(Heap[lock, SubjectLock__subject])]);
    perm := FullPerm;
    Mask := Mask[null, SubjectLock__inv(lock):=Mask[null, SubjectLock__inv(lock)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume SubjectLock__inv#trigger(Heap, SubjectLock__inv(lock));
    assume Heap[null, SubjectLock__inv(lock)] == CombineFrames(FrameFragment(Heap[lock, SubjectLock__subject]), Heap[null, History__inv(Heap[lock, SubjectLock__subject])]);
    if (!HasDirectPerm(Mask, null, SubjectLock__inv(lock))) {
      Heap := Heap[null, SubjectLock__inv#sm(lock):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, SubjectLock__inv(lock):=freshVersion];
    }
    Heap := Heap[null, SubjectLock__inv#sm(lock):=Heap[null, SubjectLock__inv#sm(lock)][lock, SubjectLock__subject:=true]];
    havoc newPMask;
    assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
      { newPMask[o_35, f_17] }
      Heap[null, SubjectLock__inv#sm(lock)][o_35, f_17] || Heap[null, History__inv#sm(Heap[lock, SubjectLock__subject])][o_35, f_17] ==> newPMask[o_35, f_17]
    );
    Heap := Heap[null, SubjectLock__inv#sm(lock):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := SubjectLock__commit(lock, current_thread_id) -- testHistoryThreadsApplication.vpr@740.3--740.62
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method SubjectLock__commit might not hold. Assertion lock != null might not hold. (testHistoryThreadsApplication.vpr@740.3--740.62) [162890]"}
        lock != null;
      assert {:msg "  The precondition of method SubjectLock__commit might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@740.3--740.62) [162891]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method SubjectLock__commit might not hold. There might be insufficient permission to access SubjectLock__inv(lock) (testHistoryThreadsApplication.vpr@740.3--740.62) [162892]"}
          perm <= Mask[null, SubjectLock__inv(lock)];
      }
      Mask := Mask[null, SubjectLock__inv(lock):=Mask[null, SubjectLock__inv(lock)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, SubjectLock__valid(lock):=Mask[null, SubjectLock__valid(lock)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown, __flatten_56 := Worker__Worker(current_thread_id, s, lock) -- testHistoryThreadsApplication.vpr@741.3--741.74
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@741.3--741.74) [162893]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Worker__Worker might not hold. There might be insufficient permission to access lock.SubjectLock__subject (testHistoryThreadsApplication.vpr@741.3--741.74) [162894]"}
        Mask[lock, SubjectLock__subject] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[lock, SubjectLock__subject];
      Mask := Mask[lock, SubjectLock__subject:=Mask[lock, SubjectLock__subject] - wildcard];
      assert {:msg "  The precondition of method Worker__Worker might not hold. Assertion lock.SubjectLock__subject == s might not hold. (testHistoryThreadsApplication.vpr@741.3--741.74) [162895]"}
        Heap[lock, SubjectLock__subject] == s_2;
      perm := 1 / 2;
      assert {:msg "  The precondition of method Worker__Worker might not hold. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@741.3--741.74) [162896]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__Worker might not hold. There might be insufficient permission to access SubjectLock__valid(lock) (testHistoryThreadsApplication.vpr@741.3--741.74) [162897]"}
          perm <= Mask[null, SubjectLock__valid(lock)];
      }
      Mask := Mask[null, SubjectLock__valid(lock):=Mask[null, SubjectLock__valid(lock)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__Worker might not hold. There might be insufficient permission to access History__hist_idle(s, 1 / 2, p_empty()) (testHistoryThreadsApplication.vpr@741.3--741.74) [162898]"}
          perm <= Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType))];
      }
      Mask := Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType))] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown, __flatten_56;
    
    // -- Inhaling postcondition
      assume __flatten_56 != null;
      assume (type_of(__flatten_56): TYPEDomainType) == (class_Worker(): TYPEDomainType);
      havoc wildcard;
      perm := wildcard;
      assume __flatten_56 != null;
      Mask := Mask[__flatten_56, Worker__l:=Mask[__flatten_56, Worker__l] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_56, Worker__l] == lock;
      havoc wildcard;
      perm := wildcard;
      assume __flatten_56 != null;
      Mask := Mask[__flatten_56, Worker__s:=Mask[__flatten_56, Worker__s] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_56, Worker__s] == s_2;
      perm := FullPerm;
      Mask := Mask[null, Worker__preFork(__flatten_56, FullPerm):=Mask[null, Worker__preFork(__flatten_56, FullPerm)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Worker__is_a_Worker(__flatten_56):=Mask[null, Worker__is_a_Worker(__flatten_56)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume Heap[__flatten_56, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: w1 := __flatten_56 -- testHistoryThreadsApplication.vpr@742.3--742.21
    w1 := __flatten_56;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown, __flatten_57 := Worker__Worker(current_thread_id, s, lock) -- testHistoryThreadsApplication.vpr@743.3--743.74
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@743.3--743.74) [162899]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Worker__Worker might not hold. There might be insufficient permission to access lock.SubjectLock__subject (testHistoryThreadsApplication.vpr@743.3--743.74) [162900]"}
        Mask[lock, SubjectLock__subject] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[lock, SubjectLock__subject];
      Mask := Mask[lock, SubjectLock__subject:=Mask[lock, SubjectLock__subject] - wildcard];
      assert {:msg "  The precondition of method Worker__Worker might not hold. Assertion lock.SubjectLock__subject == s might not hold. (testHistoryThreadsApplication.vpr@743.3--743.74) [162901]"}
        Heap[lock, SubjectLock__subject] == s_2;
      perm := 1 / 2;
      assert {:msg "  The precondition of method Worker__Worker might not hold. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@743.3--743.74) [162902]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__Worker might not hold. There might be insufficient permission to access SubjectLock__valid(lock) (testHistoryThreadsApplication.vpr@743.3--743.74) [162903]"}
          perm <= Mask[null, SubjectLock__valid(lock)];
      }
      Mask := Mask[null, SubjectLock__valid(lock):=Mask[null, SubjectLock__valid(lock)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__Worker might not hold. There might be insufficient permission to access History__hist_idle(s, 1 / 2, p_empty()) (testHistoryThreadsApplication.vpr@743.3--743.74) [162904]"}
          perm <= Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType))];
      }
      Mask := Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(s_2, 1 / 2, (p_empty(): ProcessDomainType))] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown, __flatten_57;
    
    // -- Inhaling postcondition
      assume __flatten_57 != null;
      assume (type_of(__flatten_57): TYPEDomainType) == (class_Worker(): TYPEDomainType);
      havoc wildcard;
      perm := wildcard;
      assume __flatten_57 != null;
      Mask := Mask[__flatten_57, Worker__l:=Mask[__flatten_57, Worker__l] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_57, Worker__l] == lock;
      havoc wildcard;
      perm := wildcard;
      assume __flatten_57 != null;
      Mask := Mask[__flatten_57, Worker__s:=Mask[__flatten_57, Worker__s] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_57, Worker__s] == s_2;
      perm := FullPerm;
      Mask := Mask[null, Worker__preFork(__flatten_57, FullPerm):=Mask[null, Worker__preFork(__flatten_57, FullPerm)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Worker__is_a_Worker(__flatten_57):=Mask[null, Worker__is_a_Worker(__flatten_57)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume Heap[__flatten_57, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: w2 := __flatten_57 -- testHistoryThreadsApplication.vpr@744.3--744.21
    w2 := __flatten_57;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__start(w1, current_thread_id) -- testHistoryThreadsApplication.vpr@745.3--745.54
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__start might not hold. Assertion w1 != null might not hold. (testHistoryThreadsApplication.vpr@745.3--745.54) [162905]"}
        w1 != null;
      assert {:msg "  The precondition of method Worker__start might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@745.3--745.54) [162906]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__start might not hold. There might be insufficient permission to access Worker__preFork(w1, write) (testHistoryThreadsApplication.vpr@745.3--745.54) [162907]"}
          perm <= Mask[null, Worker__preFork(w1, FullPerm)];
      }
      Mask := Mask[null, Worker__preFork(w1, FullPerm):=Mask[null, Worker__preFork(w1, FullPerm)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__joinToken(w1, FullPerm):=Mask[null, Worker__joinToken(w1, FullPerm)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__start(w2, current_thread_id) -- testHistoryThreadsApplication.vpr@746.3--746.54
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__start might not hold. Assertion w2 != null might not hold. (testHistoryThreadsApplication.vpr@746.3--746.54) [162908]"}
        w2 != null;
      assert {:msg "  The precondition of method Worker__start might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@746.3--746.54) [162909]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__start might not hold. There might be insufficient permission to access Worker__preFork(w2, write) (testHistoryThreadsApplication.vpr@746.3--746.54) [162910]"}
          perm <= Mask[null, Worker__preFork(w2, FullPerm)];
      }
      Mask := Mask[null, Worker__preFork(w2, FullPerm):=Mask[null, Worker__preFork(w2, FullPerm)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__joinToken(w2, FullPerm):=Mask[null, Worker__joinToken(w2, FullPerm)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__join(w1, current_thread_id, write) -- testHistoryThreadsApplication.vpr@747.3--747.60
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__join might not hold. Assertion w1 != null might not hold. (testHistoryThreadsApplication.vpr@747.3--747.60) [162911]"}
        w1 != null;
      assert {:msg "  The precondition of method Worker__join might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@747.3--747.60) [162912]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__join might not hold. There might be insufficient permission to access Worker__joinToken(w1, write) (testHistoryThreadsApplication.vpr@747.3--747.60) [162913]"}
          perm <= Mask[null, Worker__joinToken(w1, arg_p)];
      }
      Mask := Mask[null, Worker__joinToken(w1, arg_p):=Mask[null, Worker__joinToken(w1, arg_p)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__postJoin(w1, arg_p):=Mask[null, Worker__postJoin(w1, arg_p)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__join(w2, current_thread_id, write) -- testHistoryThreadsApplication.vpr@748.3--748.60
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_1 := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__join might not hold. Assertion w2 != null might not hold. (testHistoryThreadsApplication.vpr@748.3--748.60) [162914]"}
        w2 != null;
      assert {:msg "  The precondition of method Worker__join might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@748.3--748.60) [162915]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__join might not hold. There might be insufficient permission to access Worker__joinToken(w2, write) (testHistoryThreadsApplication.vpr@748.3--748.60) [162916]"}
          perm <= Mask[null, Worker__joinToken(w2, arg_p_1)];
      }
      Mask := Mask[null, Worker__joinToken(w2, arg_p_1):=Mask[null, Worker__joinToken(w2, arg_p_1)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__postJoin(w2, arg_p_1):=Mask[null, Worker__postJoin(w2, arg_p_1)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__open_postJoin_at_Worker(w1, current_thread_id, write) -- testHistoryThreadsApplication.vpr@749.3--749.79
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_2 := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. Assertion w1 != null might not hold. (testHistoryThreadsApplication.vpr@749.3--749.79) [162917]"}
        w1 != null;
      assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@749.3--749.79) [162918]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin(w1, write) (testHistoryThreadsApplication.vpr@749.3--749.79) [162919]"}
          perm <= Mask[null, Worker__postJoin(w1, arg_p_2)];
      }
      Mask := Mask[null, Worker__postJoin(w1, arg_p_2):=Mask[null, Worker__postJoin(w1, arg_p_2)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__is_a_Worker(w1) (testHistoryThreadsApplication.vpr@749.3--749.79) [162920]"}
          perm <= Mask[null, Worker__is_a_Worker(w1)];
      }
      Mask := Mask[null, Worker__is_a_Worker(w1):=Mask[null, Worker__is_a_Worker(w1)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__postJoin_at_Worker(w1, arg_p_2):=Mask[null, Worker__postJoin_at_Worker(w1, arg_p_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__open_postJoin_at_Worker(w2, current_thread_id, write) -- testHistoryThreadsApplication.vpr@750.3--750.79
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_3 := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. Assertion w2 != null might not hold. (testHistoryThreadsApplication.vpr@750.3--750.79) [162921]"}
        w2 != null;
      assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@750.3--750.79) [162922]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin(w2, write) (testHistoryThreadsApplication.vpr@750.3--750.79) [162923]"}
          perm <= Mask[null, Worker__postJoin(w2, arg_p_3)];
      }
      Mask := Mask[null, Worker__postJoin(w2, arg_p_3):=Mask[null, Worker__postJoin(w2, arg_p_3)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__is_a_Worker(w2) (testHistoryThreadsApplication.vpr@750.3--750.79) [162924]"}
          perm <= Mask[null, Worker__is_a_Worker(w2)];
      }
      Mask := Mask[null, Worker__is_a_Worker(w2):=Mask[null, Worker__is_a_Worker(w2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__postJoin_at_Worker(w2, arg_p_3):=Mask[null, Worker__postJoin_at_Worker(w2, arg_p_3)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Worker__postJoin_at_Worker(w1, write), write) -- testHistoryThreadsApplication.vpr@751.3--751.59
    assume Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(w1, FullPerm));
    assume Heap[null, Worker__postJoin_at_Worker(w1, FullPerm)] == CombineFrames(Heap[null, Worker__postJoin_at_Thread(w1, FullPerm)], CombineFrames(FrameFragment(Heap[w1, Worker__l]), CombineFrames(FrameFragment(Heap[Heap[w1, Worker__l], SubjectLock__subject]), CombineFrames(FrameFragment(Heap[w1, Worker__s]), CombineFrames(Heap[null, SubjectLock__valid(Heap[w1, Worker__l])], Heap[null, History__hist_idle(Heap[w1, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))])))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Worker__postJoin_at_Worker(w1, write) might fail. There might be insufficient permission to access Worker__postJoin_at_Worker(w1, write) (testHistoryThreadsApplication.vpr@751.3--751.59) [162927]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(w1, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(w1, FullPerm):=Mask[null, Worker__postJoin_at_Worker(w1, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Worker(w1, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Worker__postJoin_at_Worker(w1, FullPerm):=newVersion];
      }
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(w1, FullPerm):=Mask[null, Worker__postJoin_at_Thread(w1, FullPerm)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__postJoin_at_Worker(w1, FullPerm), Heap[null, Worker__postJoin_at_Worker(w1, FullPerm)], Worker__postJoin_at_Thread(w1, FullPerm), Heap[null, Worker__postJoin_at_Thread(w1, FullPerm)]);
    assume state(Heap, Mask);
    assume FullPerm == FullPerm;
    havoc wildcard;
    perm := wildcard;
    assume w1 != null;
    Mask := Mask[w1, Worker__l:=Mask[w1, Worker__l] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume Heap[w1, Worker__l] != null;
    Mask := Mask[Heap[w1, Worker__l], SubjectLock__subject:=Mask[Heap[w1, Worker__l], SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume w1 != null;
    Mask := Mask[w1, Worker__s:=Mask[w1, Worker__s] + perm];
    assume state(Heap, Mask);
    assume Heap[Heap[w1, Worker__l], SubjectLock__subject] == Heap[w1, Worker__s];
    perm := 1 / 2;
    assert {:msg "  Unfolding Worker__postJoin_at_Worker(w1, write) might fail. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@751.3--751.59) [162929]"}
      perm >= NoPerm;
    Mask := Mask[null, SubjectLock__valid(Heap[w1, Worker__l]):=Mask[null, SubjectLock__valid(Heap[w1, Worker__l])] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__postJoin_at_Worker(w1, FullPerm), Heap[null, Worker__postJoin_at_Worker(w1, FullPerm)], SubjectLock__valid(Heap[w1, Worker__l]), Heap[null, SubjectLock__valid(Heap[w1, Worker__l])]);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(Heap[w1, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)):=Mask[null, History__hist_idle(Heap[w1, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__postJoin_at_Worker(w1, FullPerm), Heap[null, Worker__postJoin_at_Worker(w1, FullPerm)], History__hist_idle(Heap[w1, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)), Heap[null, History__hist_idle(Heap[w1, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Worker__postJoin_at_Worker(w2, write), write) -- testHistoryThreadsApplication.vpr@752.3--752.59
    assume Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(w2, FullPerm));
    assume Heap[null, Worker__postJoin_at_Worker(w2, FullPerm)] == CombineFrames(Heap[null, Worker__postJoin_at_Thread(w2, FullPerm)], CombineFrames(FrameFragment(Heap[w2, Worker__l]), CombineFrames(FrameFragment(Heap[Heap[w2, Worker__l], SubjectLock__subject]), CombineFrames(FrameFragment(Heap[w2, Worker__s]), CombineFrames(Heap[null, SubjectLock__valid(Heap[w2, Worker__l])], Heap[null, History__hist_idle(Heap[w2, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))])))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Worker__postJoin_at_Worker(w2, write) might fail. There might be insufficient permission to access Worker__postJoin_at_Worker(w2, write) (testHistoryThreadsApplication.vpr@752.3--752.59) [162933]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(w2, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(w2, FullPerm):=Mask[null, Worker__postJoin_at_Worker(w2, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Worker(w2, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Worker__postJoin_at_Worker(w2, FullPerm):=newVersion];
      }
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(w2, FullPerm):=Mask[null, Worker__postJoin_at_Thread(w2, FullPerm)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__postJoin_at_Worker(w2, FullPerm), Heap[null, Worker__postJoin_at_Worker(w2, FullPerm)], Worker__postJoin_at_Thread(w2, FullPerm), Heap[null, Worker__postJoin_at_Thread(w2, FullPerm)]);
    assume state(Heap, Mask);
    assume FullPerm == FullPerm;
    havoc wildcard;
    perm := wildcard;
    assume w2 != null;
    Mask := Mask[w2, Worker__l:=Mask[w2, Worker__l] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume Heap[w2, Worker__l] != null;
    Mask := Mask[Heap[w2, Worker__l], SubjectLock__subject:=Mask[Heap[w2, Worker__l], SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume w2 != null;
    Mask := Mask[w2, Worker__s:=Mask[w2, Worker__s] + perm];
    assume state(Heap, Mask);
    assume Heap[Heap[w2, Worker__l], SubjectLock__subject] == Heap[w2, Worker__s];
    perm := 1 / 2;
    assert {:msg "  Unfolding Worker__postJoin_at_Worker(w2, write) might fail. Fraction 1 / 2 might be negative. (testHistoryThreadsApplication.vpr@752.3--752.59) [162935]"}
      perm >= NoPerm;
    Mask := Mask[null, SubjectLock__valid(Heap[w2, Worker__l]):=Mask[null, SubjectLock__valid(Heap[w2, Worker__l])] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__postJoin_at_Worker(w2, FullPerm), Heap[null, Worker__postJoin_at_Worker(w2, FullPerm)], SubjectLock__valid(Heap[w2, Worker__l]), Heap[null, SubjectLock__valid(Heap[w2, Worker__l])]);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(Heap[w2, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)):=Mask[null, History__hist_idle(Heap[w2, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__postJoin_at_Worker(w2, FullPerm), Heap[null, Worker__postJoin_at_Worker(w2, FullPerm)], History__hist_idle(Heap[w2, Worker__s], 1 / 2, (p_single(1): ProcessDomainType)), Heap[null, History__hist_idle(Heap[w2, Worker__s], 1 / 2, (p_single(1): ProcessDomainType))]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := SubjectLock__uncommit(lock, current_thread_id) -- testHistoryThreadsApplication.vpr@753.3--753.64
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method SubjectLock__uncommit might not hold. Assertion lock != null might not hold. (testHistoryThreadsApplication.vpr@753.3--753.64) [162937]"}
        lock != null;
      assert {:msg "  The precondition of method SubjectLock__uncommit might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@753.3--753.64) [162938]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method SubjectLock__uncommit might not hold. There might be insufficient permission to access SubjectLock__valid(lock) (testHistoryThreadsApplication.vpr@753.3--753.64) [162939]"}
          perm <= Mask[null, SubjectLock__valid(lock)];
      }
      Mask := Mask[null, SubjectLock__valid(lock):=Mask[null, SubjectLock__valid(lock)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, SubjectLock__inv(lock):=Mask[null, SubjectLock__inv(lock)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(SubjectLock__inv(lock), write) -- testHistoryThreadsApplication.vpr@754.3--754.44
    assume SubjectLock__inv#trigger(Heap, SubjectLock__inv(lock));
    assume Heap[null, SubjectLock__inv(lock)] == CombineFrames(FrameFragment(Heap[lock, SubjectLock__subject]), Heap[null, History__inv(Heap[lock, SubjectLock__subject])]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding SubjectLock__inv(lock) might fail. There might be insufficient permission to access SubjectLock__inv(lock) (testHistoryThreadsApplication.vpr@754.3--754.44) [162942]"}
        perm <= Mask[null, SubjectLock__inv(lock)];
    }
    Mask := Mask[null, SubjectLock__inv(lock):=Mask[null, SubjectLock__inv(lock)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, SubjectLock__inv(lock))) {
        havoc newVersion;
        Heap := Heap[null, SubjectLock__inv(lock):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume lock != null;
    Mask := Mask[lock, SubjectLock__subject:=Mask[lock, SubjectLock__subject] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__inv(Heap[lock, SubjectLock__subject]):=Mask[null, History__inv(Heap[lock, SubjectLock__subject])] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(SubjectLock__inv(lock), Heap[null, SubjectLock__inv(lock)], History__inv(Heap[lock, SubjectLock__subject]), Heap[null, History__inv(Heap[lock, SubjectLock__subject])]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(History__inv(s), write) -- testHistoryThreadsApplication.vpr@755.3--755.37
    assume History__inv#trigger(Heap, History__inv(s_2));
    assume Heap[null, History__inv(s_2)] == CombineFrames(FrameFragment(Heap[s_2, History__x_hist_value]), FrameFragment(Heap[s_2, History__x_hist_mode]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding History__inv(s) might fail. There might be insufficient permission to access History__inv(s) (testHistoryThreadsApplication.vpr@755.3--755.37) [162946]"}
        perm <= Mask[null, History__inv(s_2)];
    }
    Mask := Mask[null, History__inv(s_2):=Mask[null, History__inv(s_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, History__inv(s_2))) {
        havoc newVersion;
        Heap := Heap[null, History__inv(s_2):=newVersion];
      }
    perm := FullPerm;
    assume s_2 != null;
    Mask := Mask[s_2, History__x_hist_value:=Mask[s_2, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume s_2 != null;
    Mask := Mask[s_2, History__x_hist_mode:=Mask[s_2, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    assume Heap[s_2, History__x_hist_mode] == 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := History__merge(s, current_thread_id, 1 / 2, p_single(1), 1 /
  //   2, p_single(1)) -- testHistoryThreadsApplication.vpr@756.3--756.94
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_frac1_1 := 1 / 2;
    arg_proc1_1 := (p_single(1): ProcessDomainType);
    arg_frac2_1 := 1 / 2;
    arg_proc2_1 := (p_single(1): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__merge might not hold. Assertion s != null might not hold. (testHistoryThreadsApplication.vpr@756.3--756.94) [162949]"}
        s_2 != null;
      assert {:msg "  The precondition of method History__merge might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@756.3--756.94) [162950]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__merge might not hold. There might be insufficient permission to access History__hist_idle(s, 1 / 2, p_single(1)) (testHistoryThreadsApplication.vpr@756.3--756.94) [162951]"}
          perm <= Mask[null, History__hist_idle(s_2, arg_frac1_1, arg_proc1_1)];
      }
      Mask := Mask[null, History__hist_idle(s_2, arg_frac1_1, arg_proc1_1):=Mask[null, History__hist_idle(s_2, arg_frac1_1, arg_proc1_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__merge might not hold. There might be insufficient permission to access History__hist_idle(s, 1 / 2, p_single(1)) (testHistoryThreadsApplication.vpr@756.3--756.94) [162952]"}
          perm <= Mask[null, History__hist_idle(s_2, arg_frac2_1, arg_proc2_1)];
      }
      Mask := Mask[null, History__hist_idle(s_2, arg_frac2_1, arg_proc2_1):=Mask[null, History__hist_idle(s_2, arg_frac2_1, arg_proc2_1)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(s_2, arg_frac1_1 + arg_frac2_1, (p_merge(arg_proc1_1, arg_proc2_1): ProcessDomainType)):=Mask[null, History__hist_idle(s_2, arg_frac1_1 + arg_frac2_1, (p_merge(arg_proc1_1, arg_proc2_1): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := History__end_hist_1(s, current_thread_id, 1, 1) -- testHistoryThreadsApplication.vpr@757.3--757.65
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__end_hist_1 might not hold. Assertion s != null might not hold. (testHistoryThreadsApplication.vpr@757.3--757.65) [162953]"}
        s_2 != null;
      assert {:msg "  The precondition of method History__end_hist_1 might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsApplication.vpr@757.3--757.65) [162954]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__end_hist_1 might not hold. There might be insufficient permission to access s.History__x_hist_value (testHistoryThreadsApplication.vpr@757.3--757.65) [162955]"}
          perm <= Mask[s_2, History__x_hist_value];
      }
      Mask := Mask[s_2, History__x_hist_value:=Mask[s_2, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__end_hist_1 might not hold. There might be insufficient permission to access s.History__x_hist_mode (testHistoryThreadsApplication.vpr@757.3--757.65) [162956]"}
          perm <= Mask[s_2, History__x_hist_mode];
      }
      Mask := Mask[s_2, History__x_hist_mode:=Mask[s_2, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__end_hist_1 might not hold. Assertion s.History__x_hist_mode == 1 might not hold. (testHistoryThreadsApplication.vpr@757.3--757.65) [162957]"}
        Heap[s_2, History__x_hist_mode] == 1;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__end_hist_1 might not hold. There might be insufficient permission to access s.History__x_hist_init (testHistoryThreadsApplication.vpr@757.3--757.65) [162958]"}
          perm <= Mask[s_2, History__x_hist_init];
      }
      Mask := Mask[s_2, History__x_hist_init:=Mask[s_2, History__x_hist_init] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume s_2 != null;
      Mask := Mask[s_2, History__x_hist_value:=Mask[s_2, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume s_2 != null;
      Mask := Mask[s_2, History__x_hist_mode:=Mask[s_2, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[s_2, History__x_hist_mode] == 0;
      perm := FullPerm;
      assume s_2 != null;
      Mask := Mask[s_2, History__x_hist_init:=Mask[s_2, History__x_hist_init] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume s_2 != null;
      Mask := Mask[s_2, History__x_hist_act:=Mask[s_2, History__x_hist_act] + perm];
      assume state(Heap, Mask);
      assume Heap[s_2, History__x_hist_value] == PreCallHeap[s_2, History__x_hist_value];
      assume Heap[s_2, History__x_hist_init] == PreCallHeap[s_2, History__x_hist_value];
      assume Heap[s_2, History__x_hist_value] == PreCallHeap[s_2, History__x_hist_init] + 1 + 1;
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert s.History__x_hist_value == 39 -- testHistoryThreadsApplication.vpr@758.3--758.39
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of s.History__x_hist_value == 39
      assert {:msg "  Assert might fail. There might be insufficient permission to access s.History__x_hist_value (testHistoryThreadsApplication.vpr@758.10--758.39) [162959]"}
        HasDirectPerm(ExhaleWellDef0Mask, s_2, History__x_hist_value);
    assert {:msg "  Assert might fail. Assertion s.History__x_hist_value == 39 might not hold. (testHistoryThreadsApplication.vpr@758.10--758.39) [162960]"}
      Heap[s_2, History__x_hist_value] == 39;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Main__Main
// ==================================================

procedure Main__Main(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- testHistoryThreadsApplication.vpr@767.3--767.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Main() -- testHistoryThreadsApplication.vpr@768.3--768.38
    assume (type_of(diz): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryThreadsApplication.vpr@769.3--769.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null && type_of(sys__result) == class_Main() -- testHistoryThreadsApplication.vpr@770.3--770.73
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@770.10--770.73) [162961]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Main() might not hold. (testHistoryThreadsApplication.vpr@770.10--770.73) [162962]"}
      (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@771.3--771.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion sys__result != null might not hold. (testHistoryThreadsApplication.vpr@763.11--763.30) [162963]"}
      sys__result != null;
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion type_of(sys__result) == class_Main() might not hold. (testHistoryThreadsApplication.vpr@764.11--764.47) [162964]"}
      (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
}

// ==================================================
// Translation of method Main__if_any_random
// ==================================================

procedure Main__if_any_random(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref, sys__result: bool)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryThreadsApplication.vpr@778.3--778.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}