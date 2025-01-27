// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:11:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testHistoryApplication.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testHistoryApplication-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  p_dual(n_84: int, m_19: int): ProcessDomainType;

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
    (forall p3: ProcessDomainType ::
      { (p_seq((p_seq(p1_2, p2_1): ProcessDomainType), p3): ProcessDomainType) } { (p_seq(p1_2, (p_seq(p2_1, p3): ProcessDomainType)): ProcessDomainType) }
      (p_seq((p_seq(p1_2, p2_1): ProcessDomainType), p3): ProcessDomainType) == (p_seq(p1_2, (p_seq(p2_1, p3): ProcessDomainType)): ProcessDomainType)
    )
  )
);

// Translation of domain axiom single_def
axiom (forall n: int ::
  { (p_single(n): ProcessDomainType) }
  (if n > 0 then (p_seq((p_incr(): ProcessDomainType), (p_single(n - 1): ProcessDomainType)): ProcessDomainType) else (p_empty(): ProcessDomainType)) == (p_single(n): ProcessDomainType)
);

// Translation of domain axiom dual_def
axiom (forall n: int, m_18: int ::
  { (p_dual(n, m_18): ProcessDomainType) }
  (p_merge((p_single(n): ProcessDomainType), (p_single(m_18): ProcessDomainType)): ProcessDomainType) == (p_dual(n, m_18): ProcessDomainType)
);

// Translation of domain axiom lemma_post
axiom (forall n: int ::
  { (p_single(n): ProcessDomainType) }
  (p_single(n): ProcessDomainType) == (if n > 0 then (p_seq((p_single(n - 1): ProcessDomainType), (p_incr(): ProcessDomainType)): ProcessDomainType) else (p_empty(): ProcessDomainType))
);

// Translation of domain axiom single_axiom_post
axiom (forall m_18: int, n: int ::
  { (p_seq((p_single(m_18): ProcessDomainType), (p_single(n): ProcessDomainType)): ProcessDomainType) }
  (p_seq((p_single(m_18): ProcessDomainType), (p_single(n): ProcessDomainType)): ProcessDomainType) == (p_single(m_18 + n): ProcessDomainType)
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@60.1--65.2) [30854]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@67.1--72.2) [30855]"}
        HasDirectPerm(Mask, diz, History__x_hist_value);
  
  // -- Translate function body
    Result := Heap[diz, History__x_hist_value];
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
  getPredWandId(History__hist_do_incr(diz, frac, proc)) == 0
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
  getPredWandId(History__hist_idle(diz, frac, proc)) == 1
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
// Translation of method History__incr_begin
// ==================================================

procedure History__incr_begin(diz: Ref, current_thread_id: int, frac: Perm, proc: ProcessDomainType) returns ()
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@84.12--84.83) [30856]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 1;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@88.11--88.82) [30857]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 2;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@89.11--89.70) [30858]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@89.11--89.70) [30859]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_act:=PostMask[diz, History__x_hist_act] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == diz.History__x_hist_act
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@91.11--91.63) [30860]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_act (testHistoryApplication.vpr@91.11--91.63) [30861]"}
        HasDirectPerm(PostMask, diz, History__x_hist_act);
    assume PostHeap[diz, History__x_hist_value] == PostHeap[diz, History__x_hist_act];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@93.3--93.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion frac != none might not hold. (testHistoryApplication.vpr@85.11--85.23) [30862]"}
      frac != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access History__hist_do_incr(diz, frac, proc) (testHistoryApplication.vpr@86.11--86.61) [30863]"}
        perm <= Mask[null, History__hist_do_incr(diz, frac, proc)];
    }
    Mask := Mask[null, History__hist_do_incr(diz, frac, proc):=Mask[null, History__hist_do_incr(diz, frac, proc)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@87.11--87.48) [30864]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@88.11--88.82) [30865]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_mode == 2 might not hold. (testHistoryApplication.vpr@88.11--88.82) [30866]"}
      Heap[diz, History__x_hist_mode] == 2;
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryApplication.vpr@89.11--89.70) [30867]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_act (testHistoryApplication.vpr@90.11--90.46) [30868]"}
        perm <= Mask[diz, History__x_hist_act];
    }
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] - perm];
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_value == diz.History__x_hist_act might not hold. (testHistoryApplication.vpr@91.11--91.63) [30869]"}
      Heap[diz, History__x_hist_value] == Heap[diz, History__x_hist_act];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__incr_commit
// ==================================================

procedure History__incr_commit(diz: Ref, current_thread_id: int, frac: Perm, proc: ProcessDomainType) returns ()
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@103.12--103.83) [30870]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_value == diz.History__x_hist_act + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@104.12--104.68) [30871]"}
        HasDirectPerm(Mask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_act (testHistoryApplication.vpr@104.12--104.68) [30872]"}
        HasDirectPerm(Mask, diz, History__x_hist_act);
    assume Heap[diz, History__x_hist_value] == Heap[diz, History__x_hist_act] + 1;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@108.11--108.82) [30873]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@109.11--109.70) [30874]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@109.11--109.70) [30875]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@111.3--111.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion frac != none might not hold. (testHistoryApplication.vpr@105.11--105.23) [30876]"}
      frac != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access History__hist_idle(diz, frac, p_seq(proc, p_incr())) (testHistoryApplication.vpr@106.11--106.75) [30877]"}
        perm <= Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType))] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@107.11--107.48) [30878]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@108.11--108.82) [30879]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion diz.History__x_hist_mode == 1 might not hold. (testHistoryApplication.vpr@108.11--108.82) [30880]"}
      Heap[diz, History__x_hist_mode] == 1;
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryApplication.vpr@109.11--109.70) [30881]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__free_set_x
// ==================================================

procedure History__free_set_x(diz: Ref, current_thread_id: int, value: int) returns ()
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@118.12--118.83) [30882]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@118.12--118.83) [30883]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 0;
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
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_value:=PostMask[diz, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == value
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@119.11--119.88) [30884]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == value;
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@120.11--120.82) [30885]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@120.11--120.82) [30886]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@122.3--122.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__free_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@119.11--119.88) [30887]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__free_set_x might not hold. Assertion diz.History__x_hist_value == value might not hold. (testHistoryApplication.vpr@119.11--119.88) [30888]"}
      Heap[diz, History__x_hist_value] == value;
    perm := 1 / 2;
    assert {:msg "  Postcondition of History__free_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@120.11--120.82) [30889]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__free_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@120.11--120.82) [30890]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__free_set_x might not hold. Assertion diz.History__x_hist_mode == 0 might not hold. (testHistoryApplication.vpr@120.11--120.82) [30891]"}
      Heap[diz, History__x_hist_mode] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__hist_set_x
// ==================================================

procedure History__hist_set_x(diz: Ref, current_thread_id: int, value: int) returns ()
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@129.12--129.83) [30892]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@129.12--129.83) [30893]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 2;
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
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_value:=PostMask[diz, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == value
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@130.11--130.88) [30894]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == value;
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@131.11--131.82) [30895]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@131.11--131.82) [30896]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@133.3--133.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__hist_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@130.11--130.88) [30897]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Assertion diz.History__x_hist_value == value might not hold. (testHistoryApplication.vpr@130.11--130.88) [30898]"}
      Heap[diz, History__x_hist_value] == value;
    perm := 1 / 2;
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@131.11--131.82) [30899]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__hist_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@131.11--131.82) [30900]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Assertion diz.History__x_hist_mode == 2 might not hold. (testHistoryApplication.vpr@131.11--131.82) [30901]"}
      Heap[diz, History__x_hist_mode] == 2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__begin_hist
// ==================================================

procedure History__begin_hist(diz: Ref, current_thread_id: int) returns ()
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@140.12--140.83) [30902]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@144.11--144.82) [30903]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_init:=PostMask[diz, History__x_hist_init] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@146.11--146.70) [30904]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@146.11--146.70) [30905]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_init == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_init (testHistoryApplication.vpr@147.11--147.69) [30906]"}
        HasDirectPerm(PostMask, diz, History__x_hist_init);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@147.11--147.69) [30907]"}
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
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@150.3--150.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@143.11--143.48) [30908]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@144.11--144.82) [30909]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_mode == 1 might not hold. (testHistoryApplication.vpr@144.11--144.82) [30910]"}
      Heap[diz, History__x_hist_mode] == 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_init (testHistoryApplication.vpr@145.11--145.47) [30911]"}
        perm <= Mask[diz, History__x_hist_init];
    }
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] - perm];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryApplication.vpr@146.11--146.70) [30912]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_init == old(diz.History__x_hist_value) might not hold. (testHistoryApplication.vpr@147.11--147.69) [30913]"}
      Heap[diz, History__x_hist_init] == oldHeap[diz, History__x_hist_value];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access History__hist_idle(diz, write, p_empty()) (testHistoryApplication.vpr@148.11--148.64) [30914]"}
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

procedure History__split(diz: Ref, current_thread_id: int, frac1: Perm, proc1: ProcessDomainType, frac2: Perm, proc2: ProcessDomainType) returns ()
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@160.3--160.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__split might not hold. There might be insufficient permission to access History__hist_idle(diz, frac1, proc1) (testHistoryApplication.vpr@157.11--157.60) [30915]"}
        perm <= Mask[null, History__hist_idle(diz, frac1, proc1)];
    }
    Mask := Mask[null, History__hist_idle(diz, frac1, proc1):=Mask[null, History__hist_idle(diz, frac1, proc1)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__split might not hold. There might be insufficient permission to access History__hist_idle(diz, frac2, proc2) (testHistoryApplication.vpr@158.11--158.60) [30916]"}
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

procedure History__merge(diz: Ref, current_thread_id: int, frac1: Perm, proc1: ProcessDomainType, frac2: Perm, proc2: ProcessDomainType) returns ()
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@170.3--170.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__merge might not hold. There might be insufficient permission to access History__hist_idle(diz, frac1 + frac2, p_merge(proc1, proc2)) (testHistoryApplication.vpr@168.11--168.84) [30917]"}
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

procedure History__History(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_31: int;
  var __flatten_79: int;
  var __flatten_32: int;
  var __flatten_80: int;
  var __flatten_33: int;
  var __flatten_81: int;
  var __flatten_34: int;
  var __flatten_82: int;
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
    PostMask := PostMask[sys__result, History__x_hist_value:=PostMask[sys__result, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_value == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryApplication.vpr@176.11--176.100) [30918]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_value);
    assume PostHeap[sys__result, History__x_hist_value] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_mode:=PostMask[sys__result, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryApplication.vpr@177.11--177.98) [30919]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_mode);
    assume PostHeap[sys__result, History__x_hist_mode] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_init:=PostMask[sys__result, History__x_hist_init] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_init == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryApplication.vpr@178.11--178.98) [30920]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_init);
    assume PostHeap[sys__result, History__x_hist_init] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_act:=PostMask[sys__result, History__x_hist_act] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_act == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryApplication.vpr@179.11--179.96) [30921]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_act);
    assume PostHeap[sys__result, History__x_hist_act] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(History__x_hist_value, History__x_hist_mode, History__x_hist_init, History__x_hist_act) -- testHistoryApplication.vpr@190.3--190.101
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + FullPerm];
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + FullPerm];
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] + FullPerm];
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_31 := 0 -- testHistoryApplication.vpr@191.3--191.20
    __flatten_31 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_79 := __flatten_31 -- testHistoryApplication.vpr@192.3--192.31
    __flatten_79 := __flatten_31;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_value := __flatten_79 -- testHistoryApplication.vpr@193.3--193.44
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@193.3--193.44) [30922]"}
      FullPerm == Mask[diz, History__x_hist_value];
    Heap := Heap[diz, History__x_hist_value:=__flatten_79];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_32 := 0 -- testHistoryApplication.vpr@194.3--194.20
    __flatten_32 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_80 := __flatten_32 -- testHistoryApplication.vpr@195.3--195.31
    __flatten_80 := __flatten_32;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_mode := __flatten_80 -- testHistoryApplication.vpr@196.3--196.43
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@196.3--196.43) [30923]"}
      FullPerm == Mask[diz, History__x_hist_mode];
    Heap := Heap[diz, History__x_hist_mode:=__flatten_80];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_33 := 0 -- testHistoryApplication.vpr@197.3--197.20
    __flatten_33 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_81 := __flatten_33 -- testHistoryApplication.vpr@198.3--198.31
    __flatten_81 := __flatten_33;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_init := __flatten_81 -- testHistoryApplication.vpr@199.3--199.43
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_init (testHistoryApplication.vpr@199.3--199.43) [30924]"}
      FullPerm == Mask[diz, History__x_hist_init];
    Heap := Heap[diz, History__x_hist_init:=__flatten_81];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_34 := 0 -- testHistoryApplication.vpr@200.3--200.20
    __flatten_34 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_82 := __flatten_34 -- testHistoryApplication.vpr@201.3--201.31
    __flatten_82 := __flatten_34;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_act := __flatten_82 -- testHistoryApplication.vpr@202.3--202.42
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_act (testHistoryApplication.vpr@202.3--202.42) [30925]"}
      FullPerm == Mask[diz, History__x_hist_act];
    Heap := Heap[diz, History__x_hist_act:=__flatten_82];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryApplication.vpr@203.3--203.21
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
  //   sys__result.History__x_hist_act == 0)))) -- testHistoryApplication.vpr@204.3--204.403
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryApplication.vpr@204.10--204.403) [30926]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryApplication.vpr@204.10--204.403) [30928]"}
        perm <= AssertMask[sys__result, History__x_hist_value];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_value:=AssertMask[sys__result, History__x_hist_value] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_value == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryApplication.vpr@204.10--204.403) [30929]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_value);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_value == 0 might not hold. (testHistoryApplication.vpr@204.10--204.403) [30930]"}
      AssertHeap[sys__result, History__x_hist_value] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryApplication.vpr@204.10--204.403) [30932]"}
        perm <= AssertMask[sys__result, History__x_hist_mode];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_mode:=AssertMask[sys__result, History__x_hist_mode] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_mode == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryApplication.vpr@204.10--204.403) [30933]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_mode);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_mode == 0 might not hold. (testHistoryApplication.vpr@204.10--204.403) [30934]"}
      AssertHeap[sys__result, History__x_hist_mode] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryApplication.vpr@204.10--204.403) [30936]"}
        perm <= AssertMask[sys__result, History__x_hist_init];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_init:=AssertMask[sys__result, History__x_hist_init] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_init == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryApplication.vpr@204.10--204.403) [30937]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_init);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_init == 0 might not hold. (testHistoryApplication.vpr@204.10--204.403) [30938]"}
      AssertHeap[sys__result, History__x_hist_init] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryApplication.vpr@204.10--204.403) [30940]"}
        perm <= AssertMask[sys__result, History__x_hist_act];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_act:=AssertMask[sys__result, History__x_hist_act] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_act == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryApplication.vpr@204.10--204.403) [30941]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_act);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_act == 0 might not hold. (testHistoryApplication.vpr@204.10--204.403) [30942]"}
      AssertHeap[sys__result, History__x_hist_act] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@205.3--205.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result != null might not hold. (testHistoryApplication.vpr@175.11--175.30) [30943]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryApplication.vpr@176.11--176.100) [30944]"}
        perm <= Mask[sys__result, History__x_hist_value];
    }
    Mask := Mask[sys__result, History__x_hist_value:=Mask[sys__result, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_value == 0 might not hold. (testHistoryApplication.vpr@176.11--176.100) [30945]"}
      Heap[sys__result, History__x_hist_value] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryApplication.vpr@177.11--177.98) [30946]"}
        perm <= Mask[sys__result, History__x_hist_mode];
    }
    Mask := Mask[sys__result, History__x_hist_mode:=Mask[sys__result, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_mode == 0 might not hold. (testHistoryApplication.vpr@177.11--177.98) [30947]"}
      Heap[sys__result, History__x_hist_mode] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryApplication.vpr@178.11--178.98) [30948]"}
        perm <= Mask[sys__result, History__x_hist_init];
    }
    Mask := Mask[sys__result, History__x_hist_init:=Mask[sys__result, History__x_hist_init] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_init == 0 might not hold. (testHistoryApplication.vpr@178.11--178.98) [30949]"}
      Heap[sys__result, History__x_hist_init] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryApplication.vpr@179.11--179.96) [30950]"}
        perm <= Mask[sys__result, History__x_hist_act];
    }
    Mask := Mask[sys__result, History__x_hist_act:=Mask[sys__result, History__x_hist_act] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_act == 0 might not hold. (testHistoryApplication.vpr@179.11--179.96) [30951]"}
      Heap[sys__result, History__x_hist_act] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__end_hist_1
// ==================================================

procedure History__end_hist_1(diz: Ref, current_thread_id: int, n: int) returns ()
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@212.12--212.83) [30952]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@215.11--215.82) [30953]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@218.11--218.70) [30954]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@218.11--218.70) [30955]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_init == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_init (testHistoryApplication.vpr@219.11--219.69) [30956]"}
        HasDirectPerm(PostMask, diz, History__x_hist_init);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@219.11--219.69) [30957]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_init] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_init) + n
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@220.11--220.73) [30958]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_init (testHistoryApplication.vpr@220.11--220.73) [30959]"}
        HasDirectPerm(oldMask, diz, History__x_hist_init);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_init] + n;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@222.3--222.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__end_hist_1 might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryApplication.vpr@214.11--214.48) [30960]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__end_hist_1 might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryApplication.vpr@215.11--215.82) [30961]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__end_hist_1 might not hold. Assertion diz.History__x_hist_mode == 0 might not hold. (testHistoryApplication.vpr@215.11--215.82) [30962]"}
      Heap[diz, History__x_hist_mode] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__end_hist_1 might not hold. There might be insufficient permission to access diz.History__x_hist_init (testHistoryApplication.vpr@216.11--216.47) [30963]"}
        perm <= Mask[diz, History__x_hist_init];
    }
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__end_hist_1 might not hold. There might be insufficient permission to access diz.History__x_hist_act (testHistoryApplication.vpr@217.11--217.46) [30964]"}
        perm <= Mask[diz, History__x_hist_act];
    }
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] - perm];
    assert {:msg "  Postcondition of History__end_hist_1 might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryApplication.vpr@218.11--218.70) [30965]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assert {:msg "  Postcondition of History__end_hist_1 might not hold. Assertion diz.History__x_hist_init == old(diz.History__x_hist_value) might not hold. (testHistoryApplication.vpr@219.11--219.69) [30966]"}
      Heap[diz, History__x_hist_init] == oldHeap[diz, History__x_hist_value];
    assert {:msg "  Postcondition of History__end_hist_1 might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_init) + n might not hold. (testHistoryApplication.vpr@220.11--220.73) [30967]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_init] + n;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__if_any_random
// ==================================================

procedure History__if_any_random(diz: Ref, current_thread_id: int) returns (sys__result: bool)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
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
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@229.3--229.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Application__do_incr
// ==================================================

procedure Application__do_incr(diz: Ref, current_thread_id: int, h_1: Ref, p_1: ProcessDomainType, q_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var arg_value: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[h_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume q_1 != NoPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(h_1, q_1, p_1):=Mask[null, History__hist_idle(h_1, q_1, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume h_1 != null;
    Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume h_1 != null;
    Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of h.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@238.12--238.79) [30968]"}
        HasDirectPerm(Mask, h_1, History__x_hist_mode);
    assume Heap[h_1, History__x_hist_mode] == 1;
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
    assume h_1 != null;
    PostMask := PostMask[h_1, History__x_hist_value:=PostMask[h_1, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume h_1 != null;
    PostMask := PostMask[h_1, History__x_hist_mode:=PostMask[h_1, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of h.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@240.11--240.78) [30969]"}
        HasDirectPerm(PostMask, h_1, History__x_hist_mode);
    assume PostHeap[h_1, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, History__hist_idle(h_1, q_1, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=PostMask[null, History__hist_idle(h_1, q_1, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: History__incr_begin(h, current_thread_id, q, p) -- testHistoryApplication.vpr@244.3--244.50
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@244.3--244.50) [30970]"}
        h_1 != null;
      assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@244.3--244.50) [30971]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion q != none might not hold. (testHistoryApplication.vpr@244.3--244.50) [30972]"}
        q_1 != NoPerm;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access History__hist_idle(h, q, p) (testHistoryApplication.vpr@244.3--244.50) [30973]"}
          perm <= Mask[null, History__hist_idle(h_1, q_1, p_1)];
      }
      Mask := Mask[null, History__hist_idle(h_1, q_1, p_1):=Mask[null, History__hist_idle(h_1, q_1, p_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@244.3--244.50) [30974]"}
          perm <= Mask[h_1, History__x_hist_value];
      }
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@244.3--244.50) [30975]"}
          perm <= Mask[h_1, History__x_hist_mode];
      }
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryApplication.vpr@244.3--244.50) [30976]"}
        Heap[h_1, History__x_hist_mode] == 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume q_1 != NoPerm;
      perm := FullPerm;
      Mask := Mask[null, History__hist_do_incr(h_1, q_1, p_1):=Mask[null, History__hist_do_incr(h_1, q_1, p_1)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_mode] == 2;
      assume Heap[h_1, History__x_hist_value] == PreCallHeap[h_1, History__x_hist_value];
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_act:=Mask[h_1, History__x_hist_act] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_value] == Heap[h_1, History__x_hist_act];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: History__hist_set_x(h, current_thread_id, h.History__x_hist_value + 1) -- testHistoryApplication.vpr@245.3--245.73
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of h.History__x_hist_value + 1
      assert {:msg "  Method call might fail. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@245.3--245.73) [30977]"}
        HasDirectPerm(Mask, h_1, History__x_hist_value);
    arg_value := Heap[h_1, History__x_hist_value] + 1;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@245.3--245.73) [30978]"}
        h_1 != null;
      assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@245.3--245.73) [30979]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__hist_set_x might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@245.3--245.73) [30980]"}
          perm <= Mask[h_1, History__x_hist_value];
      }
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] - perm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method History__hist_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@245.3--245.73) [30981]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__hist_set_x might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@245.3--245.73) [30982]"}
          perm <= Mask[h_1, History__x_hist_mode];
      }
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion h.History__x_hist_mode == 2 might not hold. (testHistoryApplication.vpr@245.3--245.73) [30983]"}
        Heap[h_1, History__x_hist_mode] == 2;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_value] == arg_value;
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@245.3--245.73) [30984]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> h_1 != null;
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_mode] == 2;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: History__incr_commit(h, current_thread_id, q, p) -- testHistoryApplication.vpr@246.3--246.51
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@246.3--246.51) [30985]"}
        h_1 != null;
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@246.3--246.51) [30986]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion q != none might not hold. (testHistoryApplication.vpr@246.3--246.51) [30987]"}
        q_1 != NoPerm;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access History__hist_do_incr(h, q, p) (testHistoryApplication.vpr@246.3--246.51) [30988]"}
          perm <= Mask[null, History__hist_do_incr(h_1, q_1, p_1)];
      }
      Mask := Mask[null, History__hist_do_incr(h_1, q_1, p_1):=Mask[null, History__hist_do_incr(h_1, q_1, p_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access h.History__x_hist_act (testHistoryApplication.vpr@246.3--246.51) [30989]"}
          perm <= Mask[h_1, History__x_hist_act];
      }
      Mask := Mask[h_1, History__x_hist_act:=Mask[h_1, History__x_hist_act] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@246.3--246.51) [30990]"}
          perm <= Mask[h_1, History__x_hist_value];
      }
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@246.3--246.51) [30991]"}
          perm <= Mask[h_1, History__x_hist_mode];
      }
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion h.History__x_hist_mode == 2 might not hold. (testHistoryApplication.vpr@246.3--246.51) [30992]"}
        Heap[h_1, History__x_hist_mode] == 2;
      assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion h.History__x_hist_value == h.History__x_hist_act + 1 might not hold. (testHistoryApplication.vpr@246.3--246.51) [30993]"}
        Heap[h_1, History__x_hist_value] == Heap[h_1, History__x_hist_act] + 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume q_1 != NoPerm;
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_1, q_1, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_1, q_1, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_mode] == 1;
      assume Heap[h_1, History__x_hist_value] == PreCallHeap[h_1, History__x_hist_value];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_incr might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@239.11--239.46) [30994]"}
        perm <= Mask[h_1, History__x_hist_value];
    }
    Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_incr might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@240.11--240.78) [30995]"}
        perm <= Mask[h_1, History__x_hist_mode];
    }
    Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of Application__do_incr might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryApplication.vpr@240.11--240.78) [30996]"}
      Heap[h_1, History__x_hist_mode] == 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_incr might not hold. There might be insufficient permission to access History__hist_idle(h, q, p_seq(p, p_incr())) (testHistoryApplication.vpr@241.11--241.67) [30997]"}
        perm <= Mask[null, History__hist_idle(h_1, q_1, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(h_1, q_1, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_1, q_1, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Application__main
// ==================================================

procedure Application__main(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var h_1: Ref;
  var __flatten_38: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var arg_frac1: Perm;
  var arg_proc1: ProcessDomainType;
  var arg_frac2: Perm;
  var arg_proc2: ProcessDomainType;
  var arg_p: ProcessDomainType;
  var arg_q: Perm;
  var arg_frac1_1: Perm;
  var arg_proc1_1: ProcessDomainType;
  var arg_frac2_1: Perm;
  var arg_proc2_1: ProcessDomainType;
  
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
    assume Heap[h_1, $allocated];
    assume Heap[__flatten_38, $allocated];
  
  // -- Translating statement: __flatten_38 := History__History(current_thread_id) -- testHistoryApplication.vpr@256.3--256.54
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__History might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@256.3--256.54) [30998]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_38;
    
    // -- Inhaling postcondition
      assume __flatten_38 != null;
      perm := FullPerm;
      assume __flatten_38 != null;
      Mask := Mask[__flatten_38, History__x_hist_value:=Mask[__flatten_38, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_38, History__x_hist_value] == 0;
      perm := FullPerm;
      assume __flatten_38 != null;
      Mask := Mask[__flatten_38, History__x_hist_mode:=Mask[__flatten_38, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_38, History__x_hist_mode] == 0;
      perm := FullPerm;
      assume __flatten_38 != null;
      Mask := Mask[__flatten_38, History__x_hist_init:=Mask[__flatten_38, History__x_hist_init] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_38, History__x_hist_init] == 0;
      perm := FullPerm;
      assume __flatten_38 != null;
      Mask := Mask[__flatten_38, History__x_hist_act:=Mask[__flatten_38, History__x_hist_act] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_38, History__x_hist_act] == 0;
      assume state(Heap, Mask);
    assume Heap[__flatten_38, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: h := __flatten_38 -- testHistoryApplication.vpr@257.3--257.20
    h_1 := __flatten_38;
    assume state(Heap, Mask);
  
  // -- Translating statement: History__free_set_x(h, current_thread_id, 1) -- testHistoryApplication.vpr@258.3--258.47
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__free_set_x might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@258.3--258.47) [30999]"}
        h_1 != null;
      assert {:msg "  The precondition of method History__free_set_x might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@258.3--258.47) [31000]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__free_set_x might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@258.3--258.47) [31001]"}
          perm <= Mask[h_1, History__x_hist_value];
      }
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] - perm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method History__free_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@258.3--258.47) [31002]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__free_set_x might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@258.3--258.47) [31003]"}
          perm <= Mask[h_1, History__x_hist_mode];
      }
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__free_set_x might not hold. Assertion h.History__x_hist_mode == 0 might not hold. (testHistoryApplication.vpr@258.3--258.47) [31004]"}
        Heap[h_1, History__x_hist_mode] == 0;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_value] == 1;
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@258.3--258.47) [31005]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> h_1 != null;
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_mode] == 0;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: History__begin_hist(h, current_thread_id) -- testHistoryApplication.vpr@259.3--259.44
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__begin_hist might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@259.3--259.44) [31006]"}
        h_1 != null;
      assert {:msg "  The precondition of method History__begin_hist might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@259.3--259.44) [31007]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__begin_hist might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@259.3--259.44) [31008]"}
          perm <= Mask[h_1, History__x_hist_value];
      }
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__begin_hist might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@259.3--259.44) [31009]"}
          perm <= Mask[h_1, History__x_hist_mode];
      }
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__begin_hist might not hold. Assertion h.History__x_hist_mode == 0 might not hold. (testHistoryApplication.vpr@259.3--259.44) [31010]"}
        Heap[h_1, History__x_hist_mode] == 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__begin_hist might not hold. There might be insufficient permission to access h.History__x_hist_init (testHistoryApplication.vpr@259.3--259.44) [31011]"}
          perm <= Mask[h_1, History__x_hist_init];
      }
      Mask := Mask[h_1, History__x_hist_init:=Mask[h_1, History__x_hist_init] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__begin_hist might not hold. There might be insufficient permission to access h.History__x_hist_act (testHistoryApplication.vpr@259.3--259.44) [31012]"}
          perm <= Mask[h_1, History__x_hist_act];
      }
      Mask := Mask[h_1, History__x_hist_act:=Mask[h_1, History__x_hist_act] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_mode] == 1;
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_init:=Mask[h_1, History__x_hist_init] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_value] == PreCallHeap[h_1, History__x_hist_value];
      assume Heap[h_1, History__x_hist_init] == PreCallHeap[h_1, History__x_hist_value];
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_1, FullPerm, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(h_1, FullPerm, (p_empty(): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: History__split(h, current_thread_id, 1 / 3, p_empty(), 2 / 3, p_empty()) -- testHistoryApplication.vpr@260.3--260.75
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_frac1 := 1 / 3;
    arg_proc1 := (p_empty(): ProcessDomainType);
    arg_frac2 := 2 / 3;
    arg_proc2 := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__split might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@260.3--260.75) [31013]"}
        h_1 != null;
      assert {:msg "  The precondition of method History__split might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@260.3--260.75) [31014]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__split might not hold. There might be insufficient permission to access History__hist_idle(h, 1 / 3 + 2 / 3, p_merge(p_empty(), p_empty())) (testHistoryApplication.vpr@260.3--260.75) [31015]"}
          perm <= Mask[null, History__hist_idle(h_1, arg_frac1 + arg_frac2, (p_merge(arg_proc1, arg_proc2): ProcessDomainType))];
      }
      Mask := Mask[null, History__hist_idle(h_1, arg_frac1 + arg_frac2, (p_merge(arg_proc1, arg_proc2): ProcessDomainType)):=Mask[null, History__hist_idle(h_1, arg_frac1 + arg_frac2, (p_merge(arg_proc1, arg_proc2): ProcessDomainType))] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_1, arg_frac1, arg_proc1):=Mask[null, History__hist_idle(h_1, arg_frac1, arg_proc1)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_1, arg_frac2, arg_proc2):=Mask[null, History__hist_idle(h_1, arg_frac2, arg_proc2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Application__do_incr(diz, current_thread_id, h, p_empty(), 1 / 3) -- testHistoryApplication.vpr@261.3--261.68
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := (p_empty(): ProcessDomainType);
    arg_q := 1 / 3;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Application__do_incr might not hold. Assertion diz != null might not hold. (testHistoryApplication.vpr@261.3--261.68) [31016]"}
        diz != null;
      assert {:msg "  The precondition of method Application__do_incr might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@261.3--261.68) [31017]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Application__do_incr might not hold. Assertion 1 / 3 != none might not hold. (testHistoryApplication.vpr@261.3--261.68) [31018]"}
        arg_q != NoPerm;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr might not hold. There might be insufficient permission to access History__hist_idle(h, 1 / 3, p_empty()) (testHistoryApplication.vpr@261.3--261.68) [31019]"}
          perm <= Mask[null, History__hist_idle(h_1, arg_q, arg_p)];
      }
      Mask := Mask[null, History__hist_idle(h_1, arg_q, arg_p):=Mask[null, History__hist_idle(h_1, arg_q, arg_p)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@261.3--261.68) [31020]"}
          perm <= Mask[h_1, History__x_hist_value];
      }
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@261.3--261.68) [31021]"}
          perm <= Mask[h_1, History__x_hist_mode];
      }
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method Application__do_incr might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryApplication.vpr@261.3--261.68) [31022]"}
        Heap[h_1, History__x_hist_mode] == 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_mode] == 1;
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_1, arg_q, (p_seq(arg_p, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_1, arg_q, (p_seq(arg_p, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: History__merge(h, current_thread_id, 2 / 3, p_empty(), 1 / 3, p_single(1)) -- testHistoryApplication.vpr@262.3--262.77
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_frac1_1 := 2 / 3;
    arg_proc1_1 := (p_empty(): ProcessDomainType);
    arg_frac2_1 := 1 / 3;
    arg_proc2_1 := (p_single(1): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__merge might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@262.3--262.77) [31023]"}
        h_1 != null;
      assert {:msg "  The precondition of method History__merge might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@262.3--262.77) [31024]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__merge might not hold. There might be insufficient permission to access History__hist_idle(h, 2 / 3, p_empty()) (testHistoryApplication.vpr@262.3--262.77) [31025]"}
          perm <= Mask[null, History__hist_idle(h_1, arg_frac1_1, arg_proc1_1)];
      }
      Mask := Mask[null, History__hist_idle(h_1, arg_frac1_1, arg_proc1_1):=Mask[null, History__hist_idle(h_1, arg_frac1_1, arg_proc1_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__merge might not hold. There might be insufficient permission to access History__hist_idle(h, 1 / 3, p_single(1)) (testHistoryApplication.vpr@262.3--262.77) [31026]"}
          perm <= Mask[null, History__hist_idle(h_1, arg_frac2_1, arg_proc2_1)];
      }
      Mask := Mask[null, History__hist_idle(h_1, arg_frac2_1, arg_proc2_1):=Mask[null, History__hist_idle(h_1, arg_frac2_1, arg_proc2_1)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_1, arg_frac1_1 + arg_frac2_1, (p_merge(arg_proc1_1, arg_proc2_1): ProcessDomainType)):=Mask[null, History__hist_idle(h_1, arg_frac1_1 + arg_frac2_1, (p_merge(arg_proc1_1, arg_proc2_1): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: History__end_hist_1(h, current_thread_id, 1) -- testHistoryApplication.vpr@263.3--263.47
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__end_hist_1 might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@263.3--263.47) [31027]"}
        h_1 != null;
      assert {:msg "  The precondition of method History__end_hist_1 might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryApplication.vpr@263.3--263.47) [31028]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__end_hist_1 might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@263.3--263.47) [31029]"}
          perm <= Mask[h_1, History__x_hist_value];
      }
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__end_hist_1 might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryApplication.vpr@263.3--263.47) [31030]"}
          perm <= Mask[h_1, History__x_hist_mode];
      }
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method History__end_hist_1 might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryApplication.vpr@263.3--263.47) [31031]"}
        Heap[h_1, History__x_hist_mode] == 1;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method History__end_hist_1 might not hold. There might be insufficient permission to access h.History__x_hist_init (testHistoryApplication.vpr@263.3--263.47) [31032]"}
          perm <= Mask[h_1, History__x_hist_init];
      }
      Mask := Mask[h_1, History__x_hist_init:=Mask[h_1, History__x_hist_init] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_value:=Mask[h_1, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_mode:=Mask[h_1, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_mode] == 0;
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_init:=Mask[h_1, History__x_hist_init] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_1 != null;
      Mask := Mask[h_1, History__x_hist_act:=Mask[h_1, History__x_hist_act] + perm];
      assume state(Heap, Mask);
      assume Heap[h_1, History__x_hist_value] == PreCallHeap[h_1, History__x_hist_value];
      assume Heap[h_1, History__x_hist_init] == PreCallHeap[h_1, History__x_hist_value];
      assume Heap[h_1, History__x_hist_value] == PreCallHeap[h_1, History__x_hist_init] + 1;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h.History__x_hist_value == 2 -- testHistoryApplication.vpr@264.3--264.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of h.History__x_hist_value == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access h.History__x_hist_value (testHistoryApplication.vpr@264.10--264.38) [31033]"}
        HasDirectPerm(ExhaleWellDef0Mask, h_1, History__x_hist_value);
    assert {:msg "  Assert might fail. Assertion h.History__x_hist_value == 2 might not hold. (testHistoryApplication.vpr@264.10--264.38) [31034]"}
      Heap[h_1, History__x_hist_value] == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Application__Application
// ==================================================

procedure Application__Application(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
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
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- testHistoryApplication.vpr@272.3--272.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryApplication.vpr@273.3--273.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- testHistoryApplication.vpr@274.3--274.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryApplication.vpr@274.10--274.29) [31035]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@275.3--275.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Application__Application might not hold. Assertion sys__result != null might not hold. (testHistoryApplication.vpr@269.11--269.30) [31036]"}
      sys__result != null;
}

// ==================================================
// Translation of method Application__if_any_random
// ==================================================

procedure Application__if_any_random(diz: Ref, current_thread_id: int) returns (sys__result: bool)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
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
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@282.3--282.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}