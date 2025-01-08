// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:56:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testHistoryLoop.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testHistoryLoop-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@60.1--65.2) [160822]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@67.1--72.2) [160823]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@84.12--84.83) [160824]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@88.11--88.82) [160825]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 2;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@89.11--89.70) [160826]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@89.11--89.70) [160827]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_act:=PostMask[diz, History__x_hist_act] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == diz.History__x_hist_act
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@91.11--91.63) [160828]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_act (testHistoryLoop.vpr@91.11--91.63) [160829]"}
        HasDirectPerm(PostMask, diz, History__x_hist_act);
    assume PostHeap[diz, History__x_hist_value] == PostHeap[diz, History__x_hist_act];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@93.3--93.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion frac != none might not hold. (testHistoryLoop.vpr@85.11--85.23) [160830]"}
      frac != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access History__hist_do_incr(diz, frac, proc) (testHistoryLoop.vpr@86.11--86.61) [160831]"}
        perm <= Mask[null, History__hist_do_incr(diz, frac, proc)];
    }
    Mask := Mask[null, History__hist_do_incr(diz, frac, proc):=Mask[null, History__hist_do_incr(diz, frac, proc)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@87.11--87.48) [160832]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@88.11--88.82) [160833]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_mode == 2 might not hold. (testHistoryLoop.vpr@88.11--88.82) [160834]"}
      Heap[diz, History__x_hist_mode] == 2;
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryLoop.vpr@89.11--89.70) [160835]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_begin might not hold. There might be insufficient permission to access diz.History__x_hist_act (testHistoryLoop.vpr@90.11--90.46) [160836]"}
        perm <= Mask[diz, History__x_hist_act];
    }
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] - perm];
    assert {:msg "  Postcondition of History__incr_begin might not hold. Assertion diz.History__x_hist_value == diz.History__x_hist_act might not hold. (testHistoryLoop.vpr@91.11--91.63) [160837]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@103.12--103.83) [160838]"}
        HasDirectPerm(Mask, diz, History__x_hist_mode);
    assume Heap[diz, History__x_hist_mode] == 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_value == diz.History__x_hist_act + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@104.12--104.68) [160839]"}
        HasDirectPerm(Mask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_act (testHistoryLoop.vpr@104.12--104.68) [160840]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@108.11--108.82) [160841]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@109.11--109.70) [160842]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@109.11--109.70) [160843]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@111.3--111.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion frac != none might not hold. (testHistoryLoop.vpr@105.11--105.23) [160844]"}
      frac != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access History__hist_idle(diz, frac, p_seq(proc, p_incr())) (testHistoryLoop.vpr@106.11--106.75) [160845]"}
        perm <= Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(diz, frac, (p_seq(proc, (p_incr(): ProcessDomainType)): ProcessDomainType))] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@107.11--107.48) [160846]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr_commit might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@108.11--108.82) [160847]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion diz.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@108.11--108.82) [160848]"}
      Heap[diz, History__x_hist_mode] == 1;
    assert {:msg "  Postcondition of History__incr_commit might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryLoop.vpr@109.11--109.70) [160849]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__free_set_x
// ==================================================

procedure History__free_set_x(diz: Ref, current_thread_id: int, value_1: int) returns ()
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryLoop.vpr@118.12--118.83) [160850]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@118.12--118.83) [160851]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@119.11--119.88) [160852]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == value_1;
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryLoop.vpr@120.11--120.82) [160853]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@120.11--120.82) [160854]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@122.3--122.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__free_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@119.11--119.88) [160855]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__free_set_x might not hold. Assertion diz.History__x_hist_value == value might not hold. (testHistoryLoop.vpr@119.11--119.88) [160856]"}
      Heap[diz, History__x_hist_value] == value_1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of History__free_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryLoop.vpr@120.11--120.82) [160857]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__free_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@120.11--120.82) [160858]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__free_set_x might not hold. Assertion diz.History__x_hist_mode == 0 might not hold. (testHistoryLoop.vpr@120.11--120.82) [160859]"}
      Heap[diz, History__x_hist_mode] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__hist_set_x
// ==================================================

procedure History__hist_set_x(diz: Ref, current_thread_id: int, value_1: int) returns ()
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryLoop.vpr@129.12--129.83) [160860]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.History__x_hist_mode == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@129.12--129.83) [160861]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@130.11--130.88) [160862]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == value_1;
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryLoop.vpr@131.11--131.82) [160863]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, History__x_hist_mode:=PostMask[diz, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_mode == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@131.11--131.82) [160864]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@133.3--133.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__hist_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@130.11--130.88) [160865]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Assertion diz.History__x_hist_value == value might not hold. (testHistoryLoop.vpr@130.11--130.88) [160866]"}
      Heap[diz, History__x_hist_value] == value_1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryLoop.vpr@131.11--131.82) [160867]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__hist_set_x might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@131.11--131.82) [160868]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__hist_set_x might not hold. Assertion diz.History__x_hist_mode == 2 might not hold. (testHistoryLoop.vpr@131.11--131.82) [160869]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@140.12--140.83) [160870]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@144.11--144.82) [160871]"}
        HasDirectPerm(PostMask, diz, History__x_hist_mode);
    assume PostHeap[diz, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, History__x_hist_init:=PostMask[diz, History__x_hist_init] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_value == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@146.11--146.70) [160872]"}
        HasDirectPerm(PostMask, diz, History__x_hist_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@146.11--146.70) [160873]"}
        HasDirectPerm(oldMask, diz, History__x_hist_value);
    assume PostHeap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x_hist_init == old(diz.History__x_hist_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_init (testHistoryLoop.vpr@147.11--147.69) [160874]"}
        HasDirectPerm(PostMask, diz, History__x_hist_init);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@147.11--147.69) [160875]"}
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
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@150.3--150.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@143.11--143.48) [160876]"}
        perm <= Mask[diz, History__x_hist_value];
    }
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@144.11--144.82) [160877]"}
        perm <= Mask[diz, History__x_hist_mode];
    }
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@144.11--144.82) [160878]"}
      Heap[diz, History__x_hist_mode] == 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access diz.History__x_hist_init (testHistoryLoop.vpr@145.11--145.47) [160879]"}
        perm <= Mask[diz, History__x_hist_init];
    }
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] - perm];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_value == old(diz.History__x_hist_value) might not hold. (testHistoryLoop.vpr@146.11--146.70) [160880]"}
      Heap[diz, History__x_hist_value] == oldHeap[diz, History__x_hist_value];
    assert {:msg "  Postcondition of History__begin_hist might not hold. Assertion diz.History__x_hist_init == old(diz.History__x_hist_value) might not hold. (testHistoryLoop.vpr@147.11--147.69) [160881]"}
      Heap[diz, History__x_hist_init] == oldHeap[diz, History__x_hist_value];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__begin_hist might not hold. There might be insufficient permission to access History__hist_idle(diz, write, p_empty()) (testHistoryLoop.vpr@148.11--148.64) [160882]"}
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
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@160.3--160.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__split might not hold. There might be insufficient permission to access History__hist_idle(diz, frac1, proc1) (testHistoryLoop.vpr@157.11--157.60) [160883]"}
        perm <= Mask[null, History__hist_idle(diz, frac1, proc1)];
    }
    Mask := Mask[null, History__hist_idle(diz, frac1, proc1):=Mask[null, History__hist_idle(diz, frac1, proc1)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__split might not hold. There might be insufficient permission to access History__hist_idle(diz, frac2, proc2) (testHistoryLoop.vpr@158.11--158.60) [160884]"}
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
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@170.3--170.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__merge might not hold. There might be insufficient permission to access History__hist_idle(diz, frac1 + frac2, p_merge(proc1, proc2)) (testHistoryLoop.vpr@168.11--168.84) [160885]"}
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
  var __flatten_74: int;
  var __flatten_32: int;
  var __flatten_75: int;
  var __flatten_33: int;
  var __flatten_76: int;
  var __flatten_34: int;
  var __flatten_77: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryLoop.vpr@176.11--176.100) [160886]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_value);
    assume PostHeap[sys__result, History__x_hist_value] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_mode:=PostMask[sys__result, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_mode == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryLoop.vpr@177.11--177.98) [160887]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_mode);
    assume PostHeap[sys__result, History__x_hist_mode] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_init:=PostMask[sys__result, History__x_hist_init] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_init == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryLoop.vpr@178.11--178.98) [160888]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_init);
    assume PostHeap[sys__result, History__x_hist_init] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x_hist_act:=PostMask[sys__result, History__x_hist_act] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x_hist_act == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryLoop.vpr@179.11--179.96) [160889]"}
        HasDirectPerm(PostMask, sys__result, History__x_hist_act);
    assume PostHeap[sys__result, History__x_hist_act] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(History__x_hist_value, History__x_hist_mode, History__x_hist_init, History__x_hist_act) -- testHistoryLoop.vpr@190.3--190.101
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, History__x_hist_value:=Mask[diz, History__x_hist_value] + FullPerm];
    Mask := Mask[diz, History__x_hist_mode:=Mask[diz, History__x_hist_mode] + FullPerm];
    Mask := Mask[diz, History__x_hist_init:=Mask[diz, History__x_hist_init] + FullPerm];
    Mask := Mask[diz, History__x_hist_act:=Mask[diz, History__x_hist_act] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_31 := 0 -- testHistoryLoop.vpr@191.3--191.20
    __flatten_31 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_74 := __flatten_31 -- testHistoryLoop.vpr@192.3--192.31
    __flatten_74 := __flatten_31;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_value := __flatten_74 -- testHistoryLoop.vpr@193.3--193.44
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_value (testHistoryLoop.vpr@193.3--193.44) [160890]"}
      FullPerm == Mask[diz, History__x_hist_value];
    Heap := Heap[diz, History__x_hist_value:=__flatten_74];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_32 := 0 -- testHistoryLoop.vpr@194.3--194.20
    __flatten_32 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_75 := __flatten_32 -- testHistoryLoop.vpr@195.3--195.31
    __flatten_75 := __flatten_32;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_mode := __flatten_75 -- testHistoryLoop.vpr@196.3--196.43
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_mode (testHistoryLoop.vpr@196.3--196.43) [160891]"}
      FullPerm == Mask[diz, History__x_hist_mode];
    Heap := Heap[diz, History__x_hist_mode:=__flatten_75];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_33 := 0 -- testHistoryLoop.vpr@197.3--197.20
    __flatten_33 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_76 := __flatten_33 -- testHistoryLoop.vpr@198.3--198.31
    __flatten_76 := __flatten_33;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_init := __flatten_76 -- testHistoryLoop.vpr@199.3--199.43
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_init (testHistoryLoop.vpr@199.3--199.43) [160892]"}
      FullPerm == Mask[diz, History__x_hist_init];
    Heap := Heap[diz, History__x_hist_init:=__flatten_76];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_34 := 0 -- testHistoryLoop.vpr@200.3--200.20
    __flatten_34 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_77 := __flatten_34 -- testHistoryLoop.vpr@201.3--201.31
    __flatten_77 := __flatten_34;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x_hist_act := __flatten_77 -- testHistoryLoop.vpr@202.3--202.42
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x_hist_act (testHistoryLoop.vpr@202.3--202.42) [160893]"}
      FullPerm == Mask[diz, History__x_hist_act];
    Heap := Heap[diz, History__x_hist_act:=__flatten_77];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryLoop.vpr@203.3--203.21
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
  //   sys__result.History__x_hist_act == 0)))) -- testHistoryLoop.vpr@204.3--204.403
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryLoop.vpr@204.10--204.403) [160894]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryLoop.vpr@204.10--204.403) [160896]"}
        perm <= AssertMask[sys__result, History__x_hist_value];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_value:=AssertMask[sys__result, History__x_hist_value] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_value == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryLoop.vpr@204.10--204.403) [160897]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_value);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_value == 0 might not hold. (testHistoryLoop.vpr@204.10--204.403) [160898]"}
      AssertHeap[sys__result, History__x_hist_value] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryLoop.vpr@204.10--204.403) [160900]"}
        perm <= AssertMask[sys__result, History__x_hist_mode];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_mode:=AssertMask[sys__result, History__x_hist_mode] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_mode == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryLoop.vpr@204.10--204.403) [160901]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_mode);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_mode == 0 might not hold. (testHistoryLoop.vpr@204.10--204.403) [160902]"}
      AssertHeap[sys__result, History__x_hist_mode] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryLoop.vpr@204.10--204.403) [160904]"}
        perm <= AssertMask[sys__result, History__x_hist_init];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_init:=AssertMask[sys__result, History__x_hist_init] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_init == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryLoop.vpr@204.10--204.403) [160905]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_init);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_init == 0 might not hold. (testHistoryLoop.vpr@204.10--204.403) [160906]"}
      AssertHeap[sys__result, History__x_hist_init] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryLoop.vpr@204.10--204.403) [160908]"}
        perm <= AssertMask[sys__result, History__x_hist_act];
    }
    AssertMask := AssertMask[sys__result, History__x_hist_act:=AssertMask[sys__result, History__x_hist_act] - perm];
    
    // -- Check definedness of sys__result.History__x_hist_act == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryLoop.vpr@204.10--204.403) [160909]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x_hist_act);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x_hist_act == 0 might not hold. (testHistoryLoop.vpr@204.10--204.403) [160910]"}
      AssertHeap[sys__result, History__x_hist_act] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@205.3--205.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result != null might not hold. (testHistoryLoop.vpr@175.11--175.30) [160911]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_value (testHistoryLoop.vpr@176.11--176.100) [160912]"}
        perm <= Mask[sys__result, History__x_hist_value];
    }
    Mask := Mask[sys__result, History__x_hist_value:=Mask[sys__result, History__x_hist_value] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_value == 0 might not hold. (testHistoryLoop.vpr@176.11--176.100) [160913]"}
      Heap[sys__result, History__x_hist_value] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_mode (testHistoryLoop.vpr@177.11--177.98) [160914]"}
        perm <= Mask[sys__result, History__x_hist_mode];
    }
    Mask := Mask[sys__result, History__x_hist_mode:=Mask[sys__result, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_mode == 0 might not hold. (testHistoryLoop.vpr@177.11--177.98) [160915]"}
      Heap[sys__result, History__x_hist_mode] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_init (testHistoryLoop.vpr@178.11--178.98) [160916]"}
        perm <= Mask[sys__result, History__x_hist_init];
    }
    Mask := Mask[sys__result, History__x_hist_init:=Mask[sys__result, History__x_hist_init] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_init == 0 might not hold. (testHistoryLoop.vpr@178.11--178.98) [160917]"}
      Heap[sys__result, History__x_hist_init] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x_hist_act (testHistoryLoop.vpr@179.11--179.96) [160918]"}
        perm <= Mask[sys__result, History__x_hist_act];
    }
    Mask := Mask[sys__result, History__x_hist_act:=Mask[sys__result, History__x_hist_act] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x_hist_act == 0 might not hold. (testHistoryLoop.vpr@179.11--179.96) [160919]"}
      Heap[sys__result, History__x_hist_act] == 0;
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
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@212.3--212.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Application__do_incr_loop
// ==================================================

procedure Application__do_incr_loop(diz: Ref, current_thread_id: int, h_2: Ref, n: int, p_1: ProcessDomainType, q_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_proc: ProcessDomainType;
  var arg_value: int;
  var arg_proc_1: ProcessDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[h_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
    assume q_1 != NoPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(h_2, q_1, p_1):=Mask[null, History__hist_idle(h_2, q_1, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume h_2 != null;
    Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume h_2 != null;
    Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of h.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@222.12--222.79) [160920]"}
        HasDirectPerm(Mask, h_2, History__x_hist_mode);
    assume Heap[h_2, History__x_hist_mode] == 1;
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
    assume h_2 != null;
    PostMask := PostMask[h_2, History__x_hist_value:=PostMask[h_2, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume h_2 != null;
    PostMask := PostMask[h_2, History__x_hist_mode:=PostMask[h_2, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of h.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@224.11--224.78) [160921]"}
        HasDirectPerm(PostMask, h_2, History__x_hist_mode);
    assume PostHeap[h_2, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(n): ProcessDomainType)): ProcessDomainType)):=PostMask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(n): ProcessDomainType)): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: i := 0 -- testHistoryLoop.vpr@229.3--229.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- testHistoryLoop.vpr@230.3--242.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= i might not hold on entry. Assertion 0 <= i might not hold. (testHistoryLoop.vpr@231.15--231.21) [160922]"}
          0 <= i;
        assert {:msg "  Loop invariant i <= n might not hold on entry. Assertion i <= n might not hold. (testHistoryLoop.vpr@232.15--232.21) [160923]"}
          i <= n;
        assert {:msg "  Loop invariant q != none might not hold on entry. Assertion q != none might not hold. (testHistoryLoop.vpr@233.15--233.24) [160924]"}
          q_1 != NoPerm;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(h.History__x_hist_value, write) might not hold on entry. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@234.15--234.50) [160925]"}
            perm <= Mask[h_2, History__x_hist_value];
        }
        Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(h.History__x_hist_mode, write) && h.History__x_hist_mode == 1 might not hold on entry. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@235.15--235.82) [160926]"}
            perm <= Mask[h_2, History__x_hist_mode];
        }
        Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
        assert {:msg "  Loop invariant acc(h.History__x_hist_mode, write) && h.History__x_hist_mode == 1 might not hold on entry. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@235.15--235.82) [160927]"}
          Heap[h_2, History__x_hist_mode] == 1;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(History__hist_idle(h, q, p_seq(p, p_single(i))), write) might not hold on entry. There might be insufficient permission to access History__hist_idle(h, q, p_seq(p, p_single(i))) (testHistoryLoop.vpr@236.15--236.74) [160928]"}
            perm <= Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType))];
        }
        Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType))] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= i;
        assume state(Heap, Mask);
        assume i <= n;
        assume state(Heap, Mask);
        assume q_1 != NoPerm;
        assume state(Heap, Mask);
        perm := FullPerm;
        assume h_2 != null;
        Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        perm := FullPerm;
        assume h_2 != null;
        Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of h.History__x_hist_mode == 1
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@235.15--235.82) [160929]"}
            HasDirectPerm(Mask, h_2, History__x_hist_mode);
        assume Heap[h_2, History__x_hist_mode] == 1;
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType))] + perm];
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
        assume 0 <= i;
        assume i <= n;
        assume q_1 != NoPerm;
        perm := FullPerm;
        assume h_2 != null;
        Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume h_2 != null;
        Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
        assume state(Heap, Mask);
        assume Heap[h_2, History__x_hist_mode] == 1;
        perm := FullPerm;
        Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType))] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < n;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: History__incr_begin(h, current_thread_id, q, p_seq(p, p_single(i))) -- testHistoryLoop.vpr@238.5--238.72
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_proc := (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType);
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion h != null might not hold. (testHistoryLoop.vpr@238.5--238.72) [160930]"}
                h_2 != null;
              assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryLoop.vpr@238.5--238.72) [160931]"}
                current_thread_id >= 0;
              assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion q != none might not hold. (testHistoryLoop.vpr@238.5--238.72) [160932]"}
                q_1 != NoPerm;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access History__hist_idle(h, q, p_seq(p, p_single(i))) (testHistoryLoop.vpr@238.5--238.72) [160933]"}
                  perm <= Mask[null, History__hist_idle(h_2, q_1, arg_proc)];
              }
              Mask := Mask[null, History__hist_idle(h_2, q_1, arg_proc):=Mask[null, History__hist_idle(h_2, q_1, arg_proc)] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@238.5--238.72) [160934]"}
                  perm <= Mask[h_2, History__x_hist_value];
              }
              Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr_begin might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@238.5--238.72) [160935]"}
                  perm <= Mask[h_2, History__x_hist_mode];
              }
              Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
              assert {:msg "  The precondition of method History__incr_begin might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@238.5--238.72) [160936]"}
                Heap[h_2, History__x_hist_mode] == 1;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              assume q_1 != NoPerm;
              perm := FullPerm;
              Mask := Mask[null, History__hist_do_incr(h_2, q_1, arg_proc):=Mask[null, History__hist_do_incr(h_2, q_1, arg_proc)] + perm];
              assume state(Heap, Mask);
              perm := FullPerm;
              assume h_2 != null;
              Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
              assume state(Heap, Mask);
              perm := FullPerm;
              assume h_2 != null;
              Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
              assume state(Heap, Mask);
              assume Heap[h_2, History__x_hist_mode] == 2;
              assume Heap[h_2, History__x_hist_value] == PreCallHeap[h_2, History__x_hist_value];
              perm := FullPerm;
              assume h_2 != null;
              Mask := Mask[h_2, History__x_hist_act:=Mask[h_2, History__x_hist_act] + perm];
              assume state(Heap, Mask);
              assume Heap[h_2, History__x_hist_value] == Heap[h_2, History__x_hist_act];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: History__hist_set_x(h, current_thread_id, h.History__x_hist_value + 1) -- testHistoryLoop.vpr@239.5--239.75
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Check definedness of h.History__x_hist_value + 1
              assert {:msg "  Method call might fail. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@239.5--239.75) [160937]"}
                HasDirectPerm(Mask, h_2, History__x_hist_value);
            arg_value := Heap[h_2, History__x_hist_value] + 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion h != null might not hold. (testHistoryLoop.vpr@239.5--239.75) [160938]"}
                h_2 != null;
              assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryLoop.vpr@239.5--239.75) [160939]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__hist_set_x might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@239.5--239.75) [160940]"}
                  perm <= Mask[h_2, History__x_hist_value];
              }
              Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
              perm := 1 / 2;
              assert {:msg "  The precondition of method History__hist_set_x might not hold. Fraction 1 / 2 might be negative. (testHistoryLoop.vpr@239.5--239.75) [160941]"}
                perm >= NoPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__hist_set_x might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@239.5--239.75) [160942]"}
                  perm <= Mask[h_2, History__x_hist_mode];
              }
              Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
              assert {:msg "  The precondition of method History__hist_set_x might not hold. Assertion h.History__x_hist_mode == 2 might not hold. (testHistoryLoop.vpr@239.5--239.75) [160943]"}
                Heap[h_2, History__x_hist_mode] == 2;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume h_2 != null;
              Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
              assume state(Heap, Mask);
              assume Heap[h_2, History__x_hist_value] == arg_value;
              perm := 1 / 2;
              assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryLoop.vpr@239.5--239.75) [160944]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> h_2 != null;
              Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
              assume state(Heap, Mask);
              assume Heap[h_2, History__x_hist_mode] == 2;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: History__incr_commit(h, current_thread_id, q, p_seq(p, p_single(i))) -- testHistoryLoop.vpr@240.5--240.73
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_proc_1 := (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType);
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion h != null might not hold. (testHistoryLoop.vpr@240.5--240.73) [160945]"}
                h_2 != null;
              assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryLoop.vpr@240.5--240.73) [160946]"}
                current_thread_id >= 0;
              assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion q != none might not hold. (testHistoryLoop.vpr@240.5--240.73) [160947]"}
                q_1 != NoPerm;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access History__hist_do_incr(h, q, p_seq(p, p_single(i))) (testHistoryLoop.vpr@240.5--240.73) [160948]"}
                  perm <= Mask[null, History__hist_do_incr(h_2, q_1, arg_proc_1)];
              }
              Mask := Mask[null, History__hist_do_incr(h_2, q_1, arg_proc_1):=Mask[null, History__hist_do_incr(h_2, q_1, arg_proc_1)] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access h.History__x_hist_act (testHistoryLoop.vpr@240.5--240.73) [160949]"}
                  perm <= Mask[h_2, History__x_hist_act];
              }
              Mask := Mask[h_2, History__x_hist_act:=Mask[h_2, History__x_hist_act] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@240.5--240.73) [160950]"}
                  perm <= Mask[h_2, History__x_hist_value];
              }
              Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr_commit might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@240.5--240.73) [160951]"}
                  perm <= Mask[h_2, History__x_hist_mode];
              }
              Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
              assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion h.History__x_hist_mode == 2 might not hold. (testHistoryLoop.vpr@240.5--240.73) [160952]"}
                Heap[h_2, History__x_hist_mode] == 2;
              assert {:msg "  The precondition of method History__incr_commit might not hold. Assertion h.History__x_hist_value == h.History__x_hist_act + 1 might not hold. (testHistoryLoop.vpr@240.5--240.73) [160953]"}
                Heap[h_2, History__x_hist_value] == Heap[h_2, History__x_hist_act] + 1;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              assume q_1 != NoPerm;
              perm := FullPerm;
              Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(arg_proc_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(arg_proc_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
              assume state(Heap, Mask);
              perm := FullPerm;
              assume h_2 != null;
              Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
              assume state(Heap, Mask);
              perm := FullPerm;
              assume h_2 != null;
              Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
              assume state(Heap, Mask);
              assume Heap[h_2, History__x_hist_mode] == 1;
              assume Heap[h_2, History__x_hist_value] == PreCallHeap[h_2, History__x_hist_value];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i + 1 -- testHistoryLoop.vpr@241.5--241.15
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= i might not be preserved. Assertion 0 <= i might not hold. (testHistoryLoop.vpr@231.15--231.21) [160954]"}
          0 <= i;
        assert {:msg "  Loop invariant i <= n might not be preserved. Assertion i <= n might not hold. (testHistoryLoop.vpr@232.15--232.21) [160955]"}
          i <= n;
        assert {:msg "  Loop invariant q != none might not be preserved. Assertion q != none might not hold. (testHistoryLoop.vpr@233.15--233.24) [160956]"}
          q_1 != NoPerm;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(h.History__x_hist_value, write) might not be preserved. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@234.15--234.50) [160957]"}
            perm <= Mask[h_2, History__x_hist_value];
        }
        Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(h.History__x_hist_mode, write) && h.History__x_hist_mode == 1 might not be preserved. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@235.15--235.82) [160958]"}
            perm <= Mask[h_2, History__x_hist_mode];
        }
        Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
        assert {:msg "  Loop invariant acc(h.History__x_hist_mode, write) && h.History__x_hist_mode == 1 might not be preserved. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@235.15--235.82) [160959]"}
          Heap[h_2, History__x_hist_mode] == 1;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(History__hist_idle(h, q, p_seq(p, p_single(i))), write) might not be preserved. There might be insufficient permission to access History__hist_idle(h, q, p_seq(p, p_single(i))) (testHistoryLoop.vpr@236.15--236.74) [160960]"}
            perm <= Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType))];
        }
        Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType))] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < n);
      assume state(Heap, Mask);
      assume 0 <= i;
      assume i <= n;
      assume q_1 != NoPerm;
      perm := FullPerm;
      assume h_2 != null;
      Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_2 != null;
      Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_2, History__x_hist_mode] == 1;
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(i): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_incr_loop might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@223.11--223.46) [160961]"}
        perm <= Mask[h_2, History__x_hist_value];
    }
    Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_incr_loop might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@224.11--224.78) [160962]"}
        perm <= Mask[h_2, History__x_hist_mode];
    }
    Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of Application__do_incr_loop might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@224.11--224.78) [160963]"}
      Heap[h_2, History__x_hist_mode] == 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_incr_loop might not hold. There might be insufficient permission to access History__hist_idle(h, q, p_seq(p, p_single(n))) (testHistoryLoop.vpr@225.11--225.70) [160964]"}
        perm <= Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(n): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(n): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(p_1, (p_single(n): ProcessDomainType)): ProcessDomainType))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Application__do_loop_twice
// ==================================================

procedure Application__do_loop_twice(diz: Ref, current_thread_id: int, h_2: Ref, m_17: int, n: int, q_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_p: ProcessDomainType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var arg_p_1: ProcessDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[h_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume m_17 >= 0;
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
    assume q_1 != NoPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, History__hist_idle(h_2, q_1, (p_empty(): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_empty(): ProcessDomainType))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume h_2 != null;
    Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume h_2 != null;
    Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of h.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@253.12--253.79) [160965]"}
        HasDirectPerm(Mask, h_2, History__x_hist_mode);
    assume Heap[h_2, History__x_hist_mode] == 1;
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
    assume h_2 != null;
    PostMask := PostMask[h_2, History__x_hist_value:=PostMask[h_2, History__x_hist_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume h_2 != null;
    PostMask := PostMask[h_2, History__x_hist_mode:=PostMask[h_2, History__x_hist_mode] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of h.History__x_hist_mode == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@255.11--255.78) [160966]"}
        HasDirectPerm(PostMask, h_2, History__x_hist_mode);
    assume PostHeap[h_2, History__x_hist_mode] == 1;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, History__hist_idle(h_2, q_1, (p_single(m_17 + n): ProcessDomainType)):=PostMask[null, History__hist_idle(h_2, q_1, (p_single(m_17 + n): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Application__do_incr_loop(diz, current_thread_id, h, m, p_empty(), q) -- testHistoryLoop.vpr@259.3--259.72
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion diz != null might not hold. (testHistoryLoop.vpr@259.3--259.72) [160967]"}
        diz != null;
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryLoop.vpr@259.3--259.72) [160968]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion m >= 0 might not hold. (testHistoryLoop.vpr@259.3--259.72) [160969]"}
        m_17 >= 0;
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion q != none might not hold. (testHistoryLoop.vpr@259.3--259.72) [160970]"}
        q_1 != NoPerm;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr_loop might not hold. There might be insufficient permission to access History__hist_idle(h, q, p_empty()) (testHistoryLoop.vpr@259.3--259.72) [160971]"}
          perm <= Mask[null, History__hist_idle(h_2, q_1, arg_p)];
      }
      Mask := Mask[null, History__hist_idle(h_2, q_1, arg_p):=Mask[null, History__hist_idle(h_2, q_1, arg_p)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr_loop might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@259.3--259.72) [160972]"}
          perm <= Mask[h_2, History__x_hist_value];
      }
      Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr_loop might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@259.3--259.72) [160973]"}
          perm <= Mask[h_2, History__x_hist_mode];
      }
      Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@259.3--259.72) [160974]"}
        Heap[h_2, History__x_hist_mode] == 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume h_2 != null;
      Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_2 != null;
      Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_2, History__x_hist_mode] == 1;
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(arg_p, (p_single(m_17): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(arg_p, (p_single(m_17): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Application__do_incr_loop(diz, current_thread_id, h, n, p_single(m), q) -- testHistoryLoop.vpr@260.3--260.74
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_1 := (p_single(m_17): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion diz != null might not hold. (testHistoryLoop.vpr@260.3--260.74) [160975]"}
        diz != null;
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryLoop.vpr@260.3--260.74) [160976]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion n >= 0 might not hold. (testHistoryLoop.vpr@260.3--260.74) [160977]"}
        n >= 0;
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion q != none might not hold. (testHistoryLoop.vpr@260.3--260.74) [160978]"}
        q_1 != NoPerm;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr_loop might not hold. There might be insufficient permission to access History__hist_idle(h, q, p_single(m)) (testHistoryLoop.vpr@260.3--260.74) [160979]"}
          perm <= Mask[null, History__hist_idle(h_2, q_1, arg_p_1)];
      }
      Mask := Mask[null, History__hist_idle(h_2, q_1, arg_p_1):=Mask[null, History__hist_idle(h_2, q_1, arg_p_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr_loop might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@260.3--260.74) [160980]"}
          perm <= Mask[h_2, History__x_hist_value];
      }
      Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Application__do_incr_loop might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@260.3--260.74) [160981]"}
          perm <= Mask[h_2, History__x_hist_mode];
      }
      Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
      assert {:msg "  The precondition of method Application__do_incr_loop might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@260.3--260.74) [160982]"}
        Heap[h_2, History__x_hist_mode] == 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume h_2 != null;
      Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume h_2 != null;
      Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] + perm];
      assume state(Heap, Mask);
      assume Heap[h_2, History__x_hist_mode] == 1;
      perm := FullPerm;
      Mask := Mask[null, History__hist_idle(h_2, q_1, (p_seq(arg_p_1, (p_single(n): ProcessDomainType)): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_seq(arg_p_1, (p_single(n): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_loop_twice might not hold. There might be insufficient permission to access h.History__x_hist_value (testHistoryLoop.vpr@254.11--254.46) [160983]"}
        perm <= Mask[h_2, History__x_hist_value];
    }
    Mask := Mask[h_2, History__x_hist_value:=Mask[h_2, History__x_hist_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_loop_twice might not hold. There might be insufficient permission to access h.History__x_hist_mode (testHistoryLoop.vpr@255.11--255.78) [160984]"}
        perm <= Mask[h_2, History__x_hist_mode];
    }
    Mask := Mask[h_2, History__x_hist_mode:=Mask[h_2, History__x_hist_mode] - perm];
    assert {:msg "  Postcondition of Application__do_loop_twice might not hold. Assertion h.History__x_hist_mode == 1 might not hold. (testHistoryLoop.vpr@255.11--255.78) [160985]"}
      Heap[h_2, History__x_hist_mode] == 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Application__do_loop_twice might not hold. There might be insufficient permission to access History__hist_idle(h, q, p_single(m + n)) (testHistoryLoop.vpr@256.11--256.64) [160986]"}
        perm <= Mask[null, History__hist_idle(h_2, q_1, (p_single(m_17 + n): ProcessDomainType))];
    }
    Mask := Mask[null, History__hist_idle(h_2, q_1, (p_single(m_17 + n): ProcessDomainType)):=Mask[null, History__hist_idle(h_2, q_1, (p_single(m_17 + n): ProcessDomainType))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
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
  
  // -- Translating statement: diz := new() -- testHistoryLoop.vpr@268.3--268.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryLoop.vpr@269.3--269.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- testHistoryLoop.vpr@270.3--270.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryLoop.vpr@270.10--270.29) [160987]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@271.3--271.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Application__Application might not hold. Assertion sys__result != null might not hold. (testHistoryLoop.vpr@265.11--265.30) [160988]"}
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
  
  // -- Translating statement: inhale false -- testHistoryLoop.vpr@278.3--278.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}