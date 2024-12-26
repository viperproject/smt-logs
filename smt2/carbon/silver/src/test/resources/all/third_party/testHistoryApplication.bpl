// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:11:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testHistoryApplication.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testHistoryApplication-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
  (if n > 0 then (p_seq((p_incr(): ProcessDomainType), (p_single(n - 1): ProcessDomainType)): ProcessDomainType) else (p_empty(): ProcessDomainType)) == (p_single(n): ProcessDomainType)
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
// Translation of method Ref__do_incr
// ==================================================

procedure Ref__do_incr(diz: Ref, h_2: Ref) returns ()
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
  var __flatten_49: int;
  var __flatten_18: int;
  var arg_p_1: ProcessDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[h_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume h_2 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Ref__hist_idle(h_2, diz, (p_empty(): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_2, diz, (p_empty(): ProcessDomainType))] + perm];
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
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume h_2 != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Ref__hist_idle(h_2, diz, (p_single(1): ProcessDomainType)):=PostMask[null, Ref__hist_idle(h_2, diz, (p_single(1): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__incr_begin(h, diz, p_empty()) -- testHistoryApplication.vpr@69.3--69.37
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__incr_begin might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@69.3--69.37) [158267]"}
        h_2 != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_begin might not hold. There might be insufficient permission to access Ref__hist_idle(h, diz, p_empty()) (testHistoryApplication.vpr@69.3--69.37) [158268]"}
          perm <= Mask[null, Ref__hist_idle(h_2, diz, arg_p)];
      }
      Mask := Mask[null, Ref__hist_idle(h_2, diz, arg_p):=Mask[null, Ref__hist_idle(h_2, diz, arg_p)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_begin might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@69.3--69.37) [158269]"}
          perm <= Mask[diz, Ref__x];
      }
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Ref__hist_incr(h_2, diz, arg_p):=Mask[null, Ref__hist_incr(h_2, diz, arg_p)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@69.3--69.37) [158270]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> h_2 != null;
      Mask := Mask[h_2, Ref__x_old:=Mask[h_2, Ref__x_old] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == Heap[h_2, Ref__x_old];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_49 := diz.Ref__x + 1 -- testHistoryApplication.vpr@70.3--70.33
    
    // -- Check definedness of diz.Ref__x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@70.3--70.33) [158271]"}
        HasDirectPerm(Mask, diz, Ref__x);
    __flatten_49 := Heap[diz, Ref__x] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_18 := __flatten_49 -- testHistoryApplication.vpr@71.3--71.31
    __flatten_18 := __flatten_49;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Ref__x := __flatten_18 -- testHistoryApplication.vpr@72.3--72.29
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@72.3--72.29) [158272]"}
      FullPerm == Mask[diz, Ref__x];
    Heap := Heap[diz, Ref__x:=__flatten_18];
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__incr_commit(h, diz, p_empty()) -- testHistoryApplication.vpr@73.3--73.38
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_1 := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@73.3--73.38) [158273]"}
        h_2 != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access Ref__hist_incr(h, diz, p_empty()) (testHistoryApplication.vpr@73.3--73.38) [158274]"}
          perm <= Mask[null, Ref__hist_incr(h_2, diz, arg_p_1)];
      }
      Mask := Mask[null, Ref__hist_incr(h_2, diz, arg_p_1):=Mask[null, Ref__hist_incr(h_2, diz, arg_p_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@73.3--73.38) [158275]"}
          perm <= Mask[diz, Ref__x];
      }
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@73.3--73.38) [158276]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access h.Ref__x_old (testHistoryApplication.vpr@73.3--73.38) [158277]"}
          perm <= Mask[h_2, Ref__x_old];
      }
      Mask := Mask[h_2, Ref__x_old:=Mask[h_2, Ref__x_old] - perm];
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Assertion diz.Ref__x == h.Ref__x_old + 1 might not hold. (testHistoryApplication.vpr@73.3--73.38) [158278]"}
        Heap[diz, Ref__x] == Heap[h_2, Ref__x_old] + 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Ref__hist_idle(h_2, diz, (p_seq(arg_p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_2, diz, (p_seq(arg_p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__do_incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@62.11--62.33) [158279]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__do_incr might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@63.11--63.20) [158280]"}
      h_2 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__do_incr might not hold. There might be insufficient permission to access Ref__hist_idle(h, diz, p_single(1)) (testHistoryApplication.vpr@64.11--64.58) [158281]"}
        perm <= Mask[null, Ref__hist_idle(h_2, diz, (p_single(1): ProcessDomainType))];
    }
    Mask := Mask[null, Ref__hist_idle(h_2, diz, (p_single(1): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_2, diz, (p_single(1): ProcessDomainType))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__do_incr_twice
// ==================================================

procedure Ref__do_incr_twice(diz: Ref, h_2: Ref) returns ()
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
  var __flatten_54: int;
  var __flatten_23: int;
  var arg_p_1: ProcessDomainType;
  var arg_p_2: ProcessDomainType;
  var __flatten_59: int;
  var __flatten_28: int;
  var arg_p_3: ProcessDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[h_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume h_2 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Ref__hist_idle(h_2, diz, (p_empty(): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_2, diz, (p_empty(): ProcessDomainType))] + perm];
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
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume h_2 != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Ref__hist_idle(h_2, diz, (p_single(2): ProcessDomainType)):=PostMask[null, Ref__hist_idle(h_2, diz, (p_single(2): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__incr_begin(h, diz, p_empty()) -- testHistoryApplication.vpr@90.3--90.37
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__incr_begin might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@90.3--90.37) [158282]"}
        h_2 != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_begin might not hold. There might be insufficient permission to access Ref__hist_idle(h, diz, p_empty()) (testHistoryApplication.vpr@90.3--90.37) [158283]"}
          perm <= Mask[null, Ref__hist_idle(h_2, diz, arg_p)];
      }
      Mask := Mask[null, Ref__hist_idle(h_2, diz, arg_p):=Mask[null, Ref__hist_idle(h_2, diz, arg_p)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_begin might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@90.3--90.37) [158284]"}
          perm <= Mask[diz, Ref__x];
      }
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Ref__hist_incr(h_2, diz, arg_p):=Mask[null, Ref__hist_incr(h_2, diz, arg_p)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@90.3--90.37) [158285]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> h_2 != null;
      Mask := Mask[h_2, Ref__x_old:=Mask[h_2, Ref__x_old] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == Heap[h_2, Ref__x_old];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_54 := diz.Ref__x + 1 -- testHistoryApplication.vpr@91.3--91.33
    
    // -- Check definedness of diz.Ref__x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@91.3--91.33) [158286]"}
        HasDirectPerm(Mask, diz, Ref__x);
    __flatten_54 := Heap[diz, Ref__x] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_23 := __flatten_54 -- testHistoryApplication.vpr@92.3--92.31
    __flatten_23 := __flatten_54;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Ref__x := __flatten_23 -- testHistoryApplication.vpr@93.3--93.29
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@93.3--93.29) [158287]"}
      FullPerm == Mask[diz, Ref__x];
    Heap := Heap[diz, Ref__x:=__flatten_23];
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__incr_commit(h, diz, p_empty()) -- testHistoryApplication.vpr@94.3--94.38
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_1 := (p_empty(): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@94.3--94.38) [158288]"}
        h_2 != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access Ref__hist_incr(h, diz, p_empty()) (testHistoryApplication.vpr@94.3--94.38) [158289]"}
          perm <= Mask[null, Ref__hist_incr(h_2, diz, arg_p_1)];
      }
      Mask := Mask[null, Ref__hist_incr(h_2, diz, arg_p_1):=Mask[null, Ref__hist_incr(h_2, diz, arg_p_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@94.3--94.38) [158290]"}
          perm <= Mask[diz, Ref__x];
      }
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@94.3--94.38) [158291]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access h.Ref__x_old (testHistoryApplication.vpr@94.3--94.38) [158292]"}
          perm <= Mask[h_2, Ref__x_old];
      }
      Mask := Mask[h_2, Ref__x_old:=Mask[h_2, Ref__x_old] - perm];
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Assertion diz.Ref__x == h.Ref__x_old + 1 might not hold. (testHistoryApplication.vpr@94.3--94.38) [158293]"}
        Heap[diz, Ref__x] == Heap[h_2, Ref__x_old] + 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Ref__hist_idle(h_2, diz, (p_seq(arg_p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_2, diz, (p_seq(arg_p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__incr_begin(h, diz, p_single(1)) -- testHistoryApplication.vpr@95.3--95.39
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_2 := (p_single(1): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__incr_begin might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@95.3--95.39) [158294]"}
        h_2 != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_begin might not hold. There might be insufficient permission to access Ref__hist_idle(h, diz, p_single(1)) (testHistoryApplication.vpr@95.3--95.39) [158295]"}
          perm <= Mask[null, Ref__hist_idle(h_2, diz, arg_p_2)];
      }
      Mask := Mask[null, Ref__hist_idle(h_2, diz, arg_p_2):=Mask[null, Ref__hist_idle(h_2, diz, arg_p_2)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_begin might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@95.3--95.39) [158296]"}
          perm <= Mask[diz, Ref__x];
      }
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Ref__hist_incr(h_2, diz, arg_p_2):=Mask[null, Ref__hist_incr(h_2, diz, arg_p_2)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@95.3--95.39) [158297]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> h_2 != null;
      Mask := Mask[h_2, Ref__x_old:=Mask[h_2, Ref__x_old] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == Heap[h_2, Ref__x_old];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_59 := diz.Ref__x + 1 -- testHistoryApplication.vpr@96.3--96.33
    
    // -- Check definedness of diz.Ref__x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@96.3--96.33) [158298]"}
        HasDirectPerm(Mask, diz, Ref__x);
    __flatten_59 := Heap[diz, Ref__x] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_28 := __flatten_59 -- testHistoryApplication.vpr@97.3--97.31
    __flatten_28 := __flatten_59;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Ref__x := __flatten_28 -- testHistoryApplication.vpr@98.3--98.29
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@98.3--98.29) [158299]"}
      FullPerm == Mask[diz, Ref__x];
    Heap := Heap[diz, Ref__x:=__flatten_28];
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__incr_commit(h, diz, p_single(1)) -- testHistoryApplication.vpr@99.3--99.40
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_3 := (p_single(1): ProcessDomainType);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@99.3--99.40) [158300]"}
        h_2 != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access Ref__hist_incr(h, diz, p_single(1)) (testHistoryApplication.vpr@99.3--99.40) [158301]"}
          perm <= Mask[null, Ref__hist_incr(h_2, diz, arg_p_3)];
      }
      Mask := Mask[null, Ref__hist_incr(h_2, diz, arg_p_3):=Mask[null, Ref__hist_incr(h_2, diz, arg_p_3)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@99.3--99.40) [158302]"}
          perm <= Mask[diz, Ref__x];
      }
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@99.3--99.40) [158303]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__incr_commit might not hold. There might be insufficient permission to access h.Ref__x_old (testHistoryApplication.vpr@99.3--99.40) [158304]"}
          perm <= Mask[h_2, Ref__x_old];
      }
      Mask := Mask[h_2, Ref__x_old:=Mask[h_2, Ref__x_old] - perm];
      assert {:msg "  The precondition of method Ref__incr_commit might not hold. Assertion diz.Ref__x == h.Ref__x_old + 1 might not hold. (testHistoryApplication.vpr@99.3--99.40) [158305]"}
        Heap[diz, Ref__x] == Heap[h_2, Ref__x_old] + 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Ref__hist_idle(h_2, diz, (p_seq(arg_p_3, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_2, diz, (p_seq(arg_p_3, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__do_incr_twice might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@81.11--81.33) [158306]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__do_incr_twice might not hold. Assertion h != null might not hold. (testHistoryApplication.vpr@82.11--82.20) [158307]"}
      h_2 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__do_incr_twice might not hold. There might be insufficient permission to access Ref__hist_idle(h, diz, p_single(2)) (testHistoryApplication.vpr@83.11--83.58) [158308]"}
        perm <= Mask[null, Ref__hist_idle(h_2, diz, (p_single(2): ProcessDomainType))];
    }
    Mask := Mask[null, Ref__hist_idle(h_2, diz, (p_single(2): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_2, diz, (p_single(2): ProcessDomainType))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__main_og
// ==================================================

procedure Ref__main_og(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var hh: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Ref__x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@105.12--105.27) [158309]"}
        HasDirectPerm(Mask, diz, Ref__x);
    assume Heap[diz, Ref__x] == 0;
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
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__x == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@107.11--107.26) [158310]"}
        HasDirectPerm(PostMask, diz, Ref__x);
    assume PostHeap[diz, Ref__x] == 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[hh, $allocated];
  
  // -- Translating statement: assert diz.Ref__x == 0 -- testHistoryApplication.vpr@111.3--111.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of diz.Ref__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@111.10--111.25) [158311]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Ref__x);
    assert {:msg "  Assert might fail. Assertion diz.Ref__x == 0 might not hold. (testHistoryApplication.vpr@111.10--111.25) [158312]"}
      Heap[diz, Ref__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale hh != null && acc(Ref__hist_idle(hh, diz, p_empty()), write) -- testHistoryApplication.vpr@112.3--112.72
    assume hh != null;
    perm := FullPerm;
    Mask := Mask[null, Ref__hist_idle(hh, diz, (p_empty(): ProcessDomainType)):=Mask[null, Ref__hist_idle(hh, diz, (p_empty(): ProcessDomainType))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__do_incr(diz, hh) -- testHistoryApplication.vpr@113.3--113.24
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__do_incr might not hold. Assertion diz != null might not hold. (testHistoryApplication.vpr@113.3--113.24) [158314]"}
        diz != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__do_incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@113.3--113.24) [158315]"}
          perm <= Mask[diz, Ref__x];
      }
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
      assert {:msg "  The precondition of method Ref__do_incr might not hold. Assertion hh != null might not hold. (testHistoryApplication.vpr@113.3--113.24) [158316]"}
        hh != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Ref__do_incr might not hold. There might be insufficient permission to access Ref__hist_idle(hh, diz, p_empty()) (testHistoryApplication.vpr@113.3--113.24) [158317]"}
          perm <= Mask[null, Ref__hist_idle(hh, diz, (p_empty(): ProcessDomainType))];
      }
      Mask := Mask[null, Ref__hist_idle(hh, diz, (p_empty(): ProcessDomainType)):=Mask[null, Ref__hist_idle(hh, diz, (p_empty(): ProcessDomainType))] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
      assume state(Heap, Mask);
      assume hh != null;
      perm := FullPerm;
      Mask := Mask[null, Ref__hist_idle(hh, diz, (p_single(1): ProcessDomainType)):=Mask[null, Ref__hist_idle(hh, diz, (p_single(1): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale hh != null && acc(Ref__hist_idle(hh, diz, p_single(1)), write) -- testHistoryApplication.vpr@114.3--114.74
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Exhale might fail. Assertion hh != null might not hold. (testHistoryApplication.vpr@114.10--114.74) [158318]"}
      hh != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access Ref__hist_idle(hh, diz, p_single(1)) (testHistoryApplication.vpr@114.10--114.74) [158320]"}
        perm <= Mask[null, Ref__hist_idle(hh, diz, (p_single(1): ProcessDomainType))];
    }
    Mask := Mask[null, Ref__hist_idle(hh, diz, (p_single(1): ProcessDomainType)):=Mask[null, Ref__hist_idle(hh, diz, (p_single(1): ProcessDomainType))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale diz.Ref__x == 1 -- testHistoryApplication.vpr@115.3--115.25
    
    // -- Check definedness of diz.Ref__x == 1
      assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@115.10--115.25) [158321]"}
        HasDirectPerm(Mask, diz, Ref__x);
    assume Heap[diz, Ref__x] == 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_og might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@106.11--106.33) [158322]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__main_og might not hold. Assertion diz.Ref__x == 1 might not hold. (testHistoryApplication.vpr@107.11--107.26) [158323]"}
      Heap[diz, Ref__x] == 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__Ref
// ==================================================

procedure Ref__Ref() returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var __flatten_63: Ref;
  var freshObj: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
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
    PostMask := PostMask[sys__result, Ref__x:=PostMask[sys__result, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Ref__x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Ref__x (testHistoryApplication.vpr@120.11--120.70) [158324]"}
        HasDirectPerm(PostMask, sys__result, Ref__x);
    assume PostHeap[sys__result, Ref__x] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_63, $allocated];
  
  // -- Translating statement: __flatten_63 := new(Ref__x, Ref__x_old, Ref__Integer_value) -- testHistoryApplication.vpr@124.3--124.62
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    __flatten_63 := freshObj;
    Mask := Mask[__flatten_63, Ref__x:=Mask[__flatten_63, Ref__x] + FullPerm];
    Mask := Mask[__flatten_63, Ref__x_old:=Mask[__flatten_63, Ref__x_old] + FullPerm];
    Mask := Mask[__flatten_63, Ref__Integer_value:=Mask[__flatten_63, Ref__Integer_value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz := __flatten_63 -- testHistoryApplication.vpr@125.3--125.22
    diz := __flatten_63;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Ref__x := 0 -- testHistoryApplication.vpr@126.3--126.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryApplication.vpr@126.3--126.18) [158325]"}
      FullPerm == Mask[diz, Ref__x];
    Heap := Heap[diz, Ref__x:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryApplication.vpr@127.3--127.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Ref__x, write) && sys__result.Ref__x == 0) -- testHistoryApplication.vpr@128.3--128.96
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryApplication.vpr@128.10--128.96) [158326]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Ref__x (testHistoryApplication.vpr@128.10--128.96) [158328]"}
        perm <= AssertMask[sys__result, Ref__x];
    }
    AssertMask := AssertMask[sys__result, Ref__x:=AssertMask[sys__result, Ref__x] - perm];
    
    // -- Check definedness of sys__result.Ref__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Ref__x (testHistoryApplication.vpr@128.10--128.96) [158329]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Ref__x);
    assert {:msg "  Assert might fail. Assertion sys__result.Ref__x == 0 might not hold. (testHistoryApplication.vpr@128.10--128.96) [158330]"}
      AssertHeap[sys__result, Ref__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@129.3--129.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result != null might not hold. (testHistoryApplication.vpr@119.11--119.30) [158331]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__Ref might not hold. There might be insufficient permission to access sys__result.Ref__x (testHistoryApplication.vpr@120.11--120.70) [158332]"}
        perm <= Mask[sys__result, Ref__x];
    }
    Mask := Mask[sys__result, Ref__x:=Mask[sys__result, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result.Ref__x == 0 might not hold. (testHistoryApplication.vpr@120.11--120.70) [158333]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@138.11--138.40) [158334]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@138.11--138.40) [158335]"}
        HasDirectPerm(oldMask, ref, Ref__x);
    assume PostHeap[ref, Ref__x] == oldHeap[ref, Ref__x];
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@139.11--139.37) [158336]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, Ref__x_old:=PostMask[diz, Ref__x_old] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == diz.Ref__x_old
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@140.11--140.39) [158337]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x_old (testHistoryApplication.vpr@140.11--140.39) [158338]"}
        HasDirectPerm(PostMask, diz, Ref__x_old);
    assume PostHeap[ref, Ref__x] == PostHeap[diz, Ref__x_old];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@142.3--142.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_begin might not hold. There might be insufficient permission to access Ref__hist_empty(diz, ref, p) (testHistoryApplication.vpr@136.11--136.51) [158339]"}
        perm <= Mask[null, Ref__hist_empty(diz, ref, p_1)];
    }
    Mask := Mask[null, Ref__hist_empty(diz, ref, p_1):=Mask[null, Ref__hist_empty(diz, ref, p_1)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_begin might not hold. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@137.11--137.33) [158340]"}
        perm <= Mask[ref, Ref__x];
    }
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__empty_begin might not hold. Assertion ref.Ref__x == old(ref.Ref__x) might not hold. (testHistoryApplication.vpr@138.11--138.40) [158341]"}
      Heap[ref, Ref__x] == oldHeap[ref, Ref__x];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__empty_begin might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@139.11--139.37) [158342]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_begin might not hold. There might be insufficient permission to access diz.Ref__x_old (testHistoryApplication.vpr@139.11--139.37) [158343]"}
        perm <= Mask[diz, Ref__x_old];
    }
    Mask := Mask[diz, Ref__x_old:=Mask[diz, Ref__x_old] - perm];
    assert {:msg "  Postcondition of Ref__empty_begin might not hold. Assertion ref.Ref__x == diz.Ref__x_old might not hold. (testHistoryApplication.vpr@140.11--140.39) [158344]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@149.12--149.38) [158345]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Ref__x_old:=Mask[diz, Ref__x_old] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of ref.Ref__x == diz.Ref__x_old
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@150.12--150.40) [158346]"}
        HasDirectPerm(Mask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x_old (testHistoryApplication.vpr@150.12--150.40) [158347]"}
        HasDirectPerm(Mask, diz, Ref__x_old);
    assume Heap[ref, Ref__x] == Heap[diz, Ref__x_old];
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
    PostMask := PostMask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType)):=PostMask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume ref != null;
    PostMask := PostMask[ref, Ref__x:=PostMask[ref, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == old(ref.Ref__x)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@153.11--153.40) [158348]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@153.11--153.40) [158349]"}
        HasDirectPerm(oldMask, ref, Ref__x);
    assume PostHeap[ref, Ref__x] == oldHeap[ref, Ref__x];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@155.3--155.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_commit might not hold. There might be insufficient permission to access Ref__hist_idle(diz, ref, p_seq(p, p_empty())) (testHistoryApplication.vpr@151.11--151.68) [158350]"}
        perm <= Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType)):=Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_empty(): ProcessDomainType)): ProcessDomainType))] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty_commit might not hold. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@152.11--152.33) [158351]"}
        perm <= Mask[ref, Ref__x];
    }
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__empty_commit might not hold. Assertion ref.Ref__x == old(ref.Ref__x) might not hold. (testHistoryApplication.vpr@153.11--153.40) [158352]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@164.11--164.40) [158353]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@164.11--164.40) [158354]"}
        HasDirectPerm(oldMask, ref, Ref__x);
    assume PostHeap[ref, Ref__x] == oldHeap[ref, Ref__x];
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@165.11--165.37) [158355]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, Ref__x_old:=PostMask[diz, Ref__x_old] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == diz.Ref__x_old
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@166.11--166.39) [158356]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x_old (testHistoryApplication.vpr@166.11--166.39) [158357]"}
        HasDirectPerm(PostMask, diz, Ref__x_old);
    assume PostHeap[ref, Ref__x] == PostHeap[diz, Ref__x_old];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@168.3--168.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_begin might not hold. There might be insufficient permission to access Ref__hist_incr(diz, ref, p) (testHistoryApplication.vpr@162.11--162.50) [158358]"}
        perm <= Mask[null, Ref__hist_incr(diz, ref, p_1)];
    }
    Mask := Mask[null, Ref__hist_incr(diz, ref, p_1):=Mask[null, Ref__hist_incr(diz, ref, p_1)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_begin might not hold. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@163.11--163.33) [158359]"}
        perm <= Mask[ref, Ref__x];
    }
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__incr_begin might not hold. Assertion ref.Ref__x == old(ref.Ref__x) might not hold. (testHistoryApplication.vpr@164.11--164.40) [158360]"}
      Heap[ref, Ref__x] == oldHeap[ref, Ref__x];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__incr_begin might not hold. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@165.11--165.37) [158361]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_begin might not hold. There might be insufficient permission to access diz.Ref__x_old (testHistoryApplication.vpr@165.11--165.37) [158362]"}
        perm <= Mask[diz, Ref__x_old];
    }
    Mask := Mask[diz, Ref__x_old:=Mask[diz, Ref__x_old] - perm];
    assert {:msg "  Postcondition of Ref__incr_begin might not hold. Assertion ref.Ref__x == diz.Ref__x_old might not hold. (testHistoryApplication.vpr@166.11--166.39) [158363]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistoryApplication.vpr@175.12--175.38) [158364]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Ref__x_old:=Mask[diz, Ref__x_old] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of ref.Ref__x == diz.Ref__x_old + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@176.12--176.44) [158365]"}
        HasDirectPerm(Mask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x_old (testHistoryApplication.vpr@176.12--176.44) [158366]"}
        HasDirectPerm(Mask, diz, Ref__x_old);
    assume Heap[ref, Ref__x] == Heap[diz, Ref__x_old] + 1;
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
    PostMask := PostMask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=PostMask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume ref != null;
    PostMask := PostMask[ref, Ref__x:=PostMask[ref, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ref.Ref__x == old(ref.Ref__x)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@179.11--179.40) [158367]"}
        HasDirectPerm(PostMask, ref, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@179.11--179.40) [158368]"}
        HasDirectPerm(oldMask, ref, Ref__x);
    assume PostHeap[ref, Ref__x] == oldHeap[ref, Ref__x];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@181.3--181.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_commit might not hold. There might be insufficient permission to access Ref__hist_idle(diz, ref, p_seq(p, p_incr())) (testHistoryApplication.vpr@177.11--177.67) [158369]"}
        perm <= Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))];
    }
    Mask := Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType)):=Mask[null, Ref__hist_idle(diz, ref, (p_seq(p_1, (p_incr(): ProcessDomainType)): ProcessDomainType))] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr_commit might not hold. There might be insufficient permission to access ref.Ref__x (testHistoryApplication.vpr@178.11--178.33) [158370]"}
        perm <= Mask[ref, Ref__x];
    }
    Mask := Mask[ref, Ref__x:=Mask[ref, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__incr_commit might not hold. Assertion ref.Ref__x == old(ref.Ref__x) might not hold. (testHistoryApplication.vpr@179.11--179.40) [158371]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- testHistoryApplication.vpr@187.3--187.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}