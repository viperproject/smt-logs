// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:21:21
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testHistoryAxioms.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testHistoryAxioms-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

// Translation of domain function p_merge
function  p_merge(p1_1: ProcessDomainType, p2_2: ProcessDomainType): ProcessDomainType;

// Translation of domain function p_seq
function  p_seq(p1_1: ProcessDomainType, p2_2: ProcessDomainType): ProcessDomainType;

// Translation of domain function p_empty
function  p_empty(): ProcessDomainType;

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

// Translation of domain axiom single_def
axiom (forall n: int ::
  { (p_single(n): ProcessDomainType) }
  (if n > 0 then (p_seq((p_single(n - 1): ProcessDomainType), (p_incr(): ProcessDomainType)): ProcessDomainType) else (p_empty(): ProcessDomainType)) == (p_single(n): ProcessDomainType)
);

// Translation of domain axiom dual_def
axiom (forall n: int, m_17: int ::
  { (p_single(n): ProcessDomainType), (p_dual(n, m_17): ProcessDomainType) } { (p_single(m_17): ProcessDomainType), (p_dual(n, m_17): ProcessDomainType) } { (p_merge((p_single(n): ProcessDomainType), (p_single(m_17): ProcessDomainType)): ProcessDomainType) } { (p_dual(n, m_17): ProcessDomainType) }
  (p_merge((p_single(n): ProcessDomainType), (p_single(m_17): ProcessDomainType)): ProcessDomainType) == (p_dual(n, m_17): ProcessDomainType)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique Ref__x: Field NormalField int;
axiom !IsPredicateField(Ref__x);
axiom !IsWandField(Ref__x);
const unique Ref__x_old: Field NormalField int;
axiom !IsPredicateField(Ref__x_old);
axiom !IsWandField(Ref__x_old);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of predicate Ref__hist_idle
// ==================================================

type PredicateType_Ref__hist_idle;
function  Ref__hist_idle(diz: Ref, ref: Ref, p_1: ProcessDomainType): Field PredicateType_Ref__hist_idle FrameType;
function  Ref__hist_idle#sm(diz: Ref, ref: Ref, p_1: ProcessDomainType): Field PredicateType_Ref__hist_idle PMaskType;
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { PredicateMaskField(Ref__hist_idle(diz, ref, p_1)) }
  PredicateMaskField(Ref__hist_idle(diz, ref, p_1)) == Ref__hist_idle#sm(diz, ref, p_1)
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_idle(diz, ref, p_1) }
  IsPredicateField(Ref__hist_idle(diz, ref, p_1))
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_idle(diz, ref, p_1) }
  getPredWandId(Ref__hist_idle(diz, ref, p_1)) == 0
);
function  Ref__hist_idle#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Ref__hist_idle#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType, diz2: Ref, ref2: Ref, p2_1: ProcessDomainType ::
  { Ref__hist_idle(diz, ref, p_1), Ref__hist_idle(diz2, ref2, p2_1) }
  Ref__hist_idle(diz, ref, p_1) == Ref__hist_idle(diz2, ref2, p2_1) ==> diz == diz2 && (ref == ref2 && p_1 == p2_1)
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType, diz2: Ref, ref2: Ref, p2_1: ProcessDomainType ::
  { Ref__hist_idle#sm(diz, ref, p_1), Ref__hist_idle#sm(diz2, ref2, p2_1) }
  Ref__hist_idle#sm(diz, ref, p_1) == Ref__hist_idle#sm(diz2, ref2, p2_1) ==> diz == diz2 && (ref == ref2 && p_1 == p2_1)
);

axiom (forall Heap: HeapType, diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_idle#trigger(Heap, Ref__hist_idle(diz, ref, p_1)) }
  Ref__hist_idle#everUsed(Ref__hist_idle(diz, ref, p_1))
);

procedure Ref__hist_idle#definedness(diz: Ref, ref: Ref, p_1: ProcessDomainType) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Ref__hist_idle
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
      assume Heap[ref, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Ref__hist_empty
// ==================================================

type PredicateType_Ref__hist_empty;
function  Ref__hist_empty(diz: Ref, ref: Ref, p_1: ProcessDomainType): Field PredicateType_Ref__hist_empty FrameType;
function  Ref__hist_empty#sm(diz: Ref, ref: Ref, p_1: ProcessDomainType): Field PredicateType_Ref__hist_empty PMaskType;
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { PredicateMaskField(Ref__hist_empty(diz, ref, p_1)) }
  PredicateMaskField(Ref__hist_empty(diz, ref, p_1)) == Ref__hist_empty#sm(diz, ref, p_1)
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_empty(diz, ref, p_1) }
  IsPredicateField(Ref__hist_empty(diz, ref, p_1))
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_empty(diz, ref, p_1) }
  getPredWandId(Ref__hist_empty(diz, ref, p_1)) == 1
);
function  Ref__hist_empty#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Ref__hist_empty#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType, diz2: Ref, ref2: Ref, p2_1: ProcessDomainType ::
  { Ref__hist_empty(diz, ref, p_1), Ref__hist_empty(diz2, ref2, p2_1) }
  Ref__hist_empty(diz, ref, p_1) == Ref__hist_empty(diz2, ref2, p2_1) ==> diz == diz2 && (ref == ref2 && p_1 == p2_1)
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType, diz2: Ref, ref2: Ref, p2_1: ProcessDomainType ::
  { Ref__hist_empty#sm(diz, ref, p_1), Ref__hist_empty#sm(diz2, ref2, p2_1) }
  Ref__hist_empty#sm(diz, ref, p_1) == Ref__hist_empty#sm(diz2, ref2, p2_1) ==> diz == diz2 && (ref == ref2 && p_1 == p2_1)
);

axiom (forall Heap: HeapType, diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_empty#trigger(Heap, Ref__hist_empty(diz, ref, p_1)) }
  Ref__hist_empty#everUsed(Ref__hist_empty(diz, ref, p_1))
);

procedure Ref__hist_empty#definedness(diz: Ref, ref: Ref, p_1: ProcessDomainType) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Ref__hist_empty
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
      assume Heap[ref, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Ref__hist_incr
// ==================================================

type PredicateType_Ref__hist_incr;
function  Ref__hist_incr(diz: Ref, ref: Ref, p_1: ProcessDomainType): Field PredicateType_Ref__hist_incr FrameType;
function  Ref__hist_incr#sm(diz: Ref, ref: Ref, p_1: ProcessDomainType): Field PredicateType_Ref__hist_incr PMaskType;
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { PredicateMaskField(Ref__hist_incr(diz, ref, p_1)) }
  PredicateMaskField(Ref__hist_incr(diz, ref, p_1)) == Ref__hist_incr#sm(diz, ref, p_1)
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_incr(diz, ref, p_1) }
  IsPredicateField(Ref__hist_incr(diz, ref, p_1))
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_incr(diz, ref, p_1) }
  getPredWandId(Ref__hist_incr(diz, ref, p_1)) == 2
);
function  Ref__hist_incr#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Ref__hist_incr#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType, diz2: Ref, ref2: Ref, p2_1: ProcessDomainType ::
  { Ref__hist_incr(diz, ref, p_1), Ref__hist_incr(diz2, ref2, p2_1) }
  Ref__hist_incr(diz, ref, p_1) == Ref__hist_incr(diz2, ref2, p2_1) ==> diz == diz2 && (ref == ref2 && p_1 == p2_1)
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType, diz2: Ref, ref2: Ref, p2_1: ProcessDomainType ::
  { Ref__hist_incr#sm(diz, ref, p_1), Ref__hist_incr#sm(diz2, ref2, p2_1) }
  Ref__hist_incr#sm(diz, ref, p_1) == Ref__hist_incr#sm(diz2, ref2, p2_1) ==> diz == diz2 && (ref == ref2 && p_1 == p2_1)
);

axiom (forall Heap: HeapType, diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_incr#trigger(Heap, Ref__hist_incr(diz, ref, p_1)) }
  Ref__hist_incr#everUsed(Ref__hist_incr(diz, ref, p_1))
);

procedure Ref__hist_incr#definedness(diz: Ref, ref: Ref, p_1: ProcessDomainType) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Ref__hist_incr
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
      assume Heap[ref, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__main
// ==================================================

procedure Ref__main(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert p_single(2) == p_single(2) -- testHistoryAxioms.vpr@61.3--61.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion p_single(2) == p_single(2) might not hold. (testHistoryAxioms.vpr@61.10--61.36) [159224]"}
      (p_single(2): ProcessDomainType) == (p_single(2): ProcessDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert p_dual(1, 1) == p_merge(p_single(1), p_single(1)) -- testHistoryAxioms.vpr@62.3--62.59
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion p_dual(1, 1) == p_merge(p_single(1), p_single(1)) might not hold. (testHistoryAxioms.vpr@62.10--62.59) [159225]"}
      (p_dual(1, 1): ProcessDomainType) == (p_merge((p_single(1): ProcessDomainType), (p_single(1): ProcessDomainType)): ProcessDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert p_empty() == p_single(0) -- testHistoryAxioms.vpr@63.3--63.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion p_empty() == p_single(0) might not hold. (testHistoryAxioms.vpr@63.10--63.34) [159226]"}
      (p_empty(): ProcessDomainType) == (p_single(0): ProcessDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert p_seq(p_incr(), p_single(1)) == p_single(2) -- testHistoryAxioms.vpr@64.3--64.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion p_seq(p_incr(), p_single(1)) == p_single(2) might not hold. (testHistoryAxioms.vpr@64.10--64.53) [159227]"}
      (p_seq((p_incr(): ProcessDomainType), (p_single(1): ProcessDomainType)): ProcessDomainType) == (p_single(2): ProcessDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert p_empty() == p_dual(0, 0) -- testHistoryAxioms.vpr@65.3--65.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion p_empty() == p_dual(0, 0) might not hold. (testHistoryAxioms.vpr@65.10--65.35) [159228]"}
      (p_empty(): ProcessDomainType) == (p_dual(0, 0): ProcessDomainType);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__Ref
// ==================================================

procedure Ref__Ref() returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var __flatten_31: Ref;
  var freshObj: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
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
    PostMask := PostMask[sys__result, Ref__x:=PostMask[sys__result, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Ref__x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Ref__x (testHistoryAxioms.vpr@70.11--70.70) [159229]"}
        HasDirectPerm(PostMask, sys__result, Ref__x);
    assume PostHeap[sys__result, Ref__x] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_31, $allocated];
  
  // -- Translating statement: __flatten_31 := new(Ref__x, Ref__x_old, Ref__Integer_value) -- testHistoryAxioms.vpr@74.3--74.62
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    __flatten_31 := freshObj;
    Mask := Mask[__flatten_31, Ref__x:=Mask[__flatten_31, Ref__x] + FullPerm];
    Mask := Mask[__flatten_31, Ref__x_old:=Mask[__flatten_31, Ref__x_old] + FullPerm];
    Mask := Mask[__flatten_31, Ref__Integer_value:=Mask[__flatten_31, Ref__Integer_value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz := __flatten_31 -- testHistoryAxioms.vpr@75.3--75.22
    diz := __flatten_31;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Ref__x := 0 -- testHistoryAxioms.vpr@76.3--76.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryAxioms.vpr@76.3--76.18) [159230]"}
      FullPerm == Mask[diz, Ref__x];
    Heap := Heap[diz, Ref__x:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryAxioms.vpr@77.3--77.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Ref__x, write) && sys__result.Ref__x == 0) -- testHistoryAxioms.vpr@78.3--78.96
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryAxioms.vpr@78.10--78.96) [159231]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Ref__x (testHistoryAxioms.vpr@78.10--78.96) [159233]"}
        perm <= AssertMask[sys__result, Ref__x];
    }
    AssertMask := AssertMask[sys__result, Ref__x:=AssertMask[sys__result, Ref__x] - perm];
    
    // -- Check definedness of sys__result.Ref__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Ref__x (testHistoryAxioms.vpr@78.10--78.96) [159234]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Ref__x);
    assert {:msg "  Assert might fail. Assertion sys__result.Ref__x == 0 might not hold. (testHistoryAxioms.vpr@78.10--78.96) [159235]"}
      AssertHeap[sys__result, Ref__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryAxioms.vpr@79.3--79.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result != null might not hold. (testHistoryAxioms.vpr@69.11--69.30) [159236]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__Ref might not hold. There might be insufficient permission to access sys__result.Ref__x (testHistoryAxioms.vpr@70.11--70.70) [159237]"}
        perm <= Mask[sys__result, Ref__x];
    }
    Mask := Mask[sys__result, Ref__x:=Mask[sys__result, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result.Ref__x == 0 might not hold. (testHistoryAxioms.vpr@70.11--70.70) [159238]"}
      Heap[sys__result, Ref__x] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__empty_begin
// ==================================================

procedure Ref__empty_begin(diz: Ref, ref: Ref, p_1: ProcessDomainType) returns ()
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
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[ref, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Ref__hist_idle(diz, ref, p_1):=Mask[null, Ref__hist_idle(diz, ref, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume ref != null;
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] + perm];
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
    PostMask := PostMask[null, Ref__hist_empty(diz, ref, p_1):=PostMask[null, Ref__hist_empty(diz, ref, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume ref != null;
    PostMask := PostMask[ref, Ref__x:=PostMask[ref, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == old(ref.Ref__x)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@88.11--88.40) [159239]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@88.11--88.40) [159240]"}
        HasDirectPerm(oldMask, ref, Ref__x);
    assume PostHeap[ref, Ref__x] == oldHeap[ref, Ref__x];
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryAxioms.vpr@89.11--89.37) [159241]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, Ref__x_old:=PostMask[diz, Ref__x_old] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == diz.Ref__x_old
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@90.11--90.39) [159242]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x_old (testHistoryAxioms.vpr@90.11--90.39) [159243]"}
        HasDirectPerm(PostMask, diz, Ref__x_old);
    assume PostHeap[ref, Ref__x] == PostHeap[diz, Ref__x_old];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryAxioms.vpr@92.3--92.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_begin might not hold. There might be insufficient permission to access Ref__hist_empty(diz, ref, p) (testHistoryAxioms.vpr@86.11--86.51) [159244]"}
        perm <= Mask[null, Ref__hist_empty(diz, ref, p_1)];
    }
    Mask := Mask[null, Ref__hist_empty(diz, ref, p_1):=Mask[null, Ref__hist_empty(diz, ref, p_1)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_begin might not hold. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@87.11--87.33) [159245]"}
        perm <= Mask[ref, Ref__x];
    }
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__empty_begin might not hold. Assertion ref.Ref__x == old(ref.Ref__x) might not hold. (testHistoryAxioms.vpr@88.11--88.40) [159246]"}
      Heap[ref, Ref__x] == oldHeap[ref, Ref__x];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__empty_begin might not hold. Fraction 1 / 2 might be negative. (testHistoryAxioms.vpr@89.11--89.37) [159247]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_begin might not hold. There might be insufficient permission to access diz.Ref__x_old (testHistoryAxioms.vpr@89.11--89.37) [159248]"}
        perm <= Mask[diz, Ref__x_old];
    }
    Mask := Mask[diz, Ref__x_old:=Mask[diz, Ref__x_old] - perm];
    assert {:msg "  Postcondition of Ref__empty_begin might not hold. Assertion ref.Ref__x == diz.Ref__x_old might not hold. (testHistoryAxioms.vpr@90.11--90.39) [159249]"}
      Heap[ref, Ref__x] == Heap[diz, Ref__x_old];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__empty_commit
// ==================================================

procedure Ref__empty_commit(diz: Ref, ref: Ref, p_1: ProcessDomainType) returns ()
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
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[ref, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Ref__hist_empty(diz, ref, p_1):=Mask[null, Ref__hist_empty(diz, ref, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume ref != null;
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryAxioms.vpr@99.12--99.38) [159250]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Ref__x_old:=Mask[diz, Ref__x_old] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of ref.Ref__x == diz.Ref__x_old
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@100.12--100.40) [159251]"}
        HasDirectPerm(Mask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x_old (testHistoryAxioms.vpr@100.12--100.40) [159252]"}
        HasDirectPerm(Mask, diz, Ref__x_old);
    assume Heap[ref, Ref__x] == Heap[diz, Ref__x_old];
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
    PostMask := PostMask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType)):=PostMask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume ref != null;
    PostMask := PostMask[ref, Ref__x:=PostMask[ref, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == old(ref.Ref__x)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@103.11--103.40) [159253]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@103.11--103.40) [159254]"}
        HasDirectPerm(oldMask, ref, Ref__x);
    assume PostHeap[ref, Ref__x] == oldHeap[ref, Ref__x];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryAxioms.vpr@105.3--105.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_commit might not hold. There might be insufficient permission to access Ref__hist_idle(diz, ref, p_seq(p, p_empty())) (testHistoryAxioms.vpr@101.11--101.68) [159255]"}
        perm <= Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType)):=Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType))] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_commit might not hold. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@102.11--102.33) [159256]"}
        perm <= Mask[ref, Ref__x];
    }
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__empty_commit might not hold. Assertion ref.Ref__x == old(ref.Ref__x) might not hold. (testHistoryAxioms.vpr@103.11--103.40) [159257]"}
      Heap[ref, Ref__x] == oldHeap[ref, Ref__x];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__incr_begin
// ==================================================

procedure Ref__incr_begin(diz: Ref, ref: Ref, p_1: ProcessDomainType) returns ()
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
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[ref, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Ref__hist_idle(diz, ref, p_1):=Mask[null, Ref__hist_idle(diz, ref, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume ref != null;
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] + perm];
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
    PostMask := PostMask[null, Ref__hist_incr(diz, ref, p_1):=PostMask[null, Ref__hist_incr(diz, ref, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume ref != null;
    PostMask := PostMask[ref, Ref__x:=PostMask[ref, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == old(ref.Ref__x)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@114.11--114.40) [159258]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@114.11--114.40) [159259]"}
        HasDirectPerm(oldMask, ref, Ref__x);
    assume PostHeap[ref, Ref__x] == oldHeap[ref, Ref__x];
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryAxioms.vpr@115.11--115.37) [159260]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, Ref__x_old:=PostMask[diz, Ref__x_old] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == diz.Ref__x_old
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@116.11--116.39) [159261]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x_old (testHistoryAxioms.vpr@116.11--116.39) [159262]"}
        HasDirectPerm(PostMask, diz, Ref__x_old);
    assume PostHeap[ref, Ref__x] == PostHeap[diz, Ref__x_old];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryAxioms.vpr@118.3--118.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_begin might not hold. There might be insufficient permission to access Ref__hist_incr(diz, ref, p) (testHistoryAxioms.vpr@112.11--112.50) [159263]"}
        perm <= Mask[null, Ref__hist_incr(diz, ref, p_1)];
    }
    Mask := Mask[null, Ref__hist_incr(diz, ref, p_1):=Mask[null, Ref__hist_incr(diz, ref, p_1)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_begin might not hold. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@113.11--113.33) [159264]"}
        perm <= Mask[ref, Ref__x];
    }
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__incr_begin might not hold. Assertion ref.Ref__x == old(ref.Ref__x) might not hold. (testHistoryAxioms.vpr@114.11--114.40) [159265]"}
      Heap[ref, Ref__x] == oldHeap[ref, Ref__x];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__incr_begin might not hold. Fraction 1 / 2 might be negative. (testHistoryAxioms.vpr@115.11--115.37) [159266]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_begin might not hold. There might be insufficient permission to access diz.Ref__x_old (testHistoryAxioms.vpr@115.11--115.37) [159267]"}
        perm <= Mask[diz, Ref__x_old];
    }
    Mask := Mask[diz, Ref__x_old:=Mask[diz, Ref__x_old] - perm];
    assert {:msg "  Postcondition of Ref__incr_begin might not hold. Assertion ref.Ref__x == diz.Ref__x_old might not hold. (testHistoryAxioms.vpr@116.11--116.39) [159268]"}
      Heap[ref, Ref__x] == Heap[diz, Ref__x_old];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__incr_commit
// ==================================================

procedure Ref__incr_commit(diz: Ref, ref: Ref, p_1: ProcessDomainType) returns ()
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
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[ref, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Ref__hist_incr(diz, ref, p_1):=Mask[null, Ref__hist_incr(diz, ref, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume ref != null;
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryAxioms.vpr@125.12--125.38) [159269]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Ref__x_old:=Mask[diz, Ref__x_old] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of ref.Ref__x == diz.Ref__x_old + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@126.12--126.44) [159270]"}
        HasDirectPerm(Mask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x_old (testHistoryAxioms.vpr@126.12--126.44) [159271]"}
        HasDirectPerm(Mask, diz, Ref__x_old);
    assume Heap[ref, Ref__x] == Heap[diz, Ref__x_old] + 1;
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
    PostMask := PostMask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=PostMask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume ref != null;
    PostMask := PostMask[ref, Ref__x:=PostMask[ref, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == old(ref.Ref__x)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@129.11--129.40) [159272]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@129.11--129.40) [159273]"}
        HasDirectPerm(oldMask, ref, Ref__x);
    assume PostHeap[ref, Ref__x] == oldHeap[ref, Ref__x];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryAxioms.vpr@131.3--131.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_commit might not hold. There might be insufficient permission to access Ref__hist_idle(diz, ref, p_seq(p, p_incr())) (testHistoryAxioms.vpr@127.11--127.67) [159274]"}
        perm <= Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_commit might not hold. There might be insufficient permission to access ref.Ref__x (testHistoryAxioms.vpr@128.11--128.33) [159275]"}
        perm <= Mask[ref, Ref__x];
    }
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__incr_commit might not hold. Assertion ref.Ref__x == old(ref.Ref__x) might not hold. (testHistoryAxioms.vpr@129.11--129.40) [159276]"}
      Heap[ref, Ref__x] == oldHeap[ref, Ref__x];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__if_any_random
// ==================================================

procedure Ref__if_any_random(diz: Ref) returns (sys__result: bool)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryAxioms.vpr@137.3--137.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}