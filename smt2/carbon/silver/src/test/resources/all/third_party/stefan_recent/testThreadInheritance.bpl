// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:14:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testThreadInheritance.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testThreadInheritance-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
// Translation of domain TYPE
// ==================================================

// The type for domain TYPE
type TYPEDomainType;

// Translation of domain function class_Object
function  class_Object(): TYPEDomainType;

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
// Translation of all fields
// ==================================================

const unique Worker__input: Field NormalField int;
axiom !IsPredicateField(Worker__input);
axiom !IsWandField(Worker__input);
const unique Worker__output: Field NormalField int;
axiom !IsPredicateField(Worker__output);
axiom !IsWandField(Worker__output);

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
  getPredWandId(Thread__is_a_Thread(diz)) == 0
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
  getPredWandId(Thread__instance_of_Thread(diz)) == 1
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
  getPredWandId(Thread__joinToken(diz, p_1)) == 2
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
  getPredWandId(Thread__preFork(diz, p_1)) == 3
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
  getPredWandId(Thread__postJoin(diz, p_1)) == 4
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
  getPredWandId(Thread__joinToken_at_Thread(diz, p_1)) == 5
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
  getPredWandId(Thread__preFork_at_Thread(diz, p_1)) == 6
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
  getPredWandId(Thread__postJoin_at_Thread(diz, p_1)) == 7
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
  getPredWandId(Worker__is_a_Worker(diz)) == 8
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
  getPredWandId(Worker__instance_of_Worker(diz)) == 9
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
  getPredWandId(Worker__is_a_Thread(diz)) == 10
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
  getPredWandId(Worker__instance_of_Thread(diz)) == 11
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
  getPredWandId(Worker__joinToken(diz, p_1)) == 12
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
  getPredWandId(Worker__joinToken_at_Worker(diz, p_1)) == 13
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
  getPredWandId(Worker__preFork(diz, p_1)) == 14
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
  getPredWandId(Worker__postJoin(diz, p_1)) == 15
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
  getPredWandId(Worker__joinToken_at_Thread(diz, p_1)) == 16
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
  getPredWandId(Worker__preFork_at_Thread(diz, p_1)) == 17
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
  getPredWandId(Worker__postJoin_at_Thread(diz, p_1)) == 18
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
  getPredWandId(Worker__preFork_at_Worker(diz, p_1)) == 19
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
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume NoPerm <= p_1;
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, p_1):=Mask[null, Worker__preFork_at_Thread(diz, p_1)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] + perm];
    assume state(Heap, Mask);
    assume p_1 != NoPerm;
    perm := p_1;
    assert {:msg "  Predicate might not be well-formed. Fraction p might be negative. (testThreadInheritance.vpr@75.1--77.2) [171623]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] + perm];
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
  getPredWandId(Worker__postJoin_at_Worker(diz, p_1)) == 20
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
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume NoPerm <= p_1;
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, p_1):=Mask[null, Worker__postJoin_at_Thread(diz, p_1)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] + perm];
    assume state(Heap, Mask);
    assume p_1 != NoPerm;
    perm := p_1;
    assert {:msg "  Predicate might not be well-formed. Fraction p might be negative. (testThreadInheritance.vpr@79.1--81.2) [171624]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Worker__output == diz.Worker__input + 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__output (testThreadInheritance.vpr@79.1--81.2) [171625]"}
        HasDirectPerm(Mask, diz, Worker__output);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__input (testThreadInheritance.vpr@79.1--81.2) [171626]"}
        HasDirectPerm(Mask, diz, Worker__input);
    assume Heap[diz, Worker__output] == Heap[diz, Worker__input] + 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Thread__run
// ==================================================

procedure Thread__run(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@89.3--89.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__run might not hold. There might be insufficient permission to access Thread__postJoin(diz, write) (testThreadInheritance.vpr@87.11--87.51) [171627]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@98.3--98.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__start might not hold. There might be insufficient permission to access Thread__joinToken(diz, write) (testThreadInheritance.vpr@96.11--96.52) [171628]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@107.3--107.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__join might not hold. There might be insufficient permission to access Thread__postJoin(diz, p) (testThreadInheritance.vpr@105.11--105.47) [171629]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@117.3--117.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_joinToken_at_Thread might not hold. There might be insufficient permission to access Thread__joinToken_at_Thread(diz, p) (testThreadInheritance.vpr@115.11--115.58) [171630]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@127.3--127.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_preFork_at_Thread might not hold. There might be insufficient permission to access Thread__preFork_at_Thread(diz, p) (testThreadInheritance.vpr@125.11--125.56) [171631]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@137.3--137.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_postJoin_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin_at_Thread(diz, p) (testThreadInheritance.vpr@135.11--135.57) [171632]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Thread__is_a_Thread(sys__result):=PostMask[null, Thread__is_a_Thread(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@146.3--146.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Thread__Thread might not hold. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@142.11--142.30) [171633]"}
      sys__result != null;
    assert {:msg "  Postcondition of Thread__Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritance.vpr@143.11--143.49) [171634]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__Thread might not hold. There might be insufficient permission to access Thread__is_a_Thread(sys__result) (testThreadInheritance.vpr@144.11--144.55) [171635]"}
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
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- testThreadInheritance.vpr@155.3--155.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Thread() -- testThreadInheritance.vpr@156.3--156.40
    assume (type_of(diz): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@157.3--157.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testThreadInheritance.vpr@158.3--158.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null && type_of(sys__result) == class_Thread() -- testThreadInheritance.vpr@159.3--159.75
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@159.10--159.75) [171636]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritance.vpr@159.10--159.75) [171637]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@160.3--160.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Thread__Thread_at_Thread might not hold. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@151.11--151.30) [171638]"}
      sys__result != null;
    assert {:msg "  Postcondition of Thread__Thread_at_Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritance.vpr@152.11--152.49) [171639]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
}

// ==================================================
// Translation of method Thread__run_at_Thread
// ==================================================

procedure Thread__run_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@169.3--169.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__run_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin_at_Thread(diz, write) (testThreadInheritance.vpr@167.11--167.61) [171640]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@178.3--178.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__start_at_Thread might not hold. There might be insufficient permission to access Thread__joinToken(diz, write) (testThreadInheritance.vpr@176.11--176.52) [171641]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@187.3--187.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__join_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin(diz, p) (testThreadInheritance.vpr@185.11--185.47) [171642]"}
        perm <= Mask[null, Thread__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Thread__postJoin(diz, p_1):=Mask[null, Thread__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__run
// ==================================================

procedure Worker__run(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@196.3--196.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run might not hold. There might be insufficient permission to access Worker__postJoin(diz, write) (testThreadInheritance.vpr@194.11--194.51) [171643]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@205.3--205.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__start might not hold. There might be insufficient permission to access Worker__joinToken(diz, write) (testThreadInheritance.vpr@203.11--203.52) [171644]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@214.3--214.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__join might not hold. There might be insufficient permission to access Worker__postJoin(diz, p) (testThreadInheritance.vpr@212.11--212.47) [171645]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@224.3--224.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_joinToken_at_Thread might not hold. There might be insufficient permission to access Worker__joinToken_at_Thread(diz, p) (testThreadInheritance.vpr@222.11--222.58) [171646]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@234.3--234.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_preFork_at_Thread might not hold. There might be insufficient permission to access Worker__preFork_at_Thread(diz, p) (testThreadInheritance.vpr@232.11--232.56) [171647]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@244.3--244.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_postJoin_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, p) (testThreadInheritance.vpr@242.11--242.57) [171648]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__is_a_Thread(sys__result):=PostMask[null, Worker__is_a_Thread(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@253.3--253.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Worker__Thread might not hold. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@249.11--249.30) [171649]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritance.vpr@250.11--250.49) [171650]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Thread might not hold. There might be insufficient permission to access Worker__is_a_Thread(sys__result) (testThreadInheritance.vpr@251.11--251.55) [171651]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@261.3--261.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Worker__Thread_at_Thread might not hold. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@258.11--258.30) [171652]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Thread_at_Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritance.vpr@259.11--259.49) [171653]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
}

// ==================================================
// Translation of method Worker__run_at_Thread
// ==================================================

procedure Worker__run_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@270.3--270.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, write) (testThreadInheritance.vpr@268.11--268.61) [171654]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@279.3--279.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__start_at_Thread might not hold. There might be insufficient permission to access Worker__joinToken(diz, write) (testThreadInheritance.vpr@277.11--277.52) [171655]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@288.3--288.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__join_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin(diz, p) (testThreadInheritance.vpr@286.11--286.47) [171656]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@298.3--298.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_preFork_at_Worker might not hold. There might be insufficient permission to access Worker__preFork_at_Worker(diz, p) (testThreadInheritance.vpr@296.11--296.56) [171657]"}
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
      oldMask := Mask;
      oldHeap := Heap;
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
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@308.3--308.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin_at_Worker(diz, p) (testThreadInheritance.vpr@306.11--306.57) [171658]"}
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

procedure Worker__Worker(current_thread_id: int, input: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
    assume (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__preFork(sys__result, FullPerm):=PostMask[null, Worker__preFork(sys__result, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__input:=PostMask[sys__result, Worker__input] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__input == input
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritance.vpr@317.11--317.45) [171659]"}
        HasDirectPerm(PostMask, sys__result, Worker__input);
    assume PostHeap[sys__result, Worker__input] == input;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__is_a_Worker(sys__result):=PostMask[null, Worker__is_a_Worker(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@320.3--320.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@313.11--313.30) [171660]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion type_of(sys__result) == class_Worker() might not hold. (testThreadInheritance.vpr@314.11--314.49) [171661]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access Worker__preFork(sys__result, write) (testThreadInheritance.vpr@315.11--315.58) [171662]"}
        perm <= Mask[null, Worker__preFork(sys__result, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork(sys__result, FullPerm):=Mask[null, Worker__preFork(sys__result, FullPerm)] - perm];
    assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritance.vpr@316.11--316.51) [171663]"}
      Mask[sys__result, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__input];
    Mask := Mask[sys__result, Worker__input:=Mask[sys__result, Worker__input] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result.Worker__input == input might not hold. (testThreadInheritance.vpr@317.11--317.45) [171664]"}
      Heap[sys__result, Worker__input] == input;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access Worker__is_a_Worker(sys__result) (testThreadInheritance.vpr@318.11--318.55) [171665]"}
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

procedure Worker__Worker_at_Worker(current_thread_id: int, input: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_3: int;
  var __flatten_11: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
    assume (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=PostMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__input:=PostMask[sys__result, Worker__input] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__input == input
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritance.vpr@329.11--329.45) [171666]"}
        HasDirectPerm(PostMask, sys__result, Worker__input);
    assume PostHeap[sys__result, Worker__input] == input;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Worker__input, Worker__output) -- testThreadInheritance.vpr@334.3--334.44
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] + FullPerm];
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Worker() -- testThreadInheritance.vpr@335.3--335.40
    assume (type_of(diz): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := input -- testThreadInheritance.vpr@336.3--336.23
    __flatten_3 := input;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := __flatten_3 -- testThreadInheritance.vpr@337.3--337.30
    __flatten_11 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Worker__input := __flatten_11 -- testThreadInheritance.vpr@338.3--338.36
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__input (testThreadInheritance.vpr@338.3--338.36) [171667]"}
      FullPerm == Mask[diz, Worker__input];
    Heap := Heap[diz, Worker__input:=__flatten_11];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__preFork_at_Thread(diz, write), write) -- testThreadInheritance.vpr@339.3--339.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
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
  
  // -- Translating statement: fold acc(Worker__preFork_at_Worker(diz, write), write) -- testThreadInheritance.vpr@340.3--340.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. Assertion write >= none might not hold. (testThreadInheritance.vpr@340.3--340.57) [171672]"}
      NoPerm <= FullPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__preFork_at_Thread(diz, write) (testThreadInheritance.vpr@340.3--340.57) [171674]"}
        perm <= Mask[null, Worker__preFork_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], Worker__preFork_at_Thread(diz, FullPerm), Heap[null, Worker__preFork_at_Thread(diz, FullPerm)]);
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__input (testThreadInheritance.vpr@340.3--340.57) [171675]"}
      Mask[diz, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Worker__input];
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] - wildcard];
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. Assertion write != none might not hold. (testThreadInheritance.vpr@340.3--340.57) [171676]"}
      FullPerm != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__output (testThreadInheritance.vpr@340.3--340.57) [171678]"}
        perm <= Mask[diz, Worker__output];
    }
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] - perm];
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__preFork_at_Worker#trigger(Heap, Worker__preFork_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__preFork_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__preFork_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__input]), ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Worker__output]))));
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
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][diz, Worker__input:=true]];
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][diz, Worker__output:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testThreadInheritance.vpr@341.3--341.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (type_of(sys__result) == class_Worker() &&
  //   (acc(Worker__preFork_at_Worker(sys__result, write), write) &&
  //   (acc(sys__result.Worker__input, wildcard) &&
  //   sys__result.Worker__input == input))) -- testThreadInheritance.vpr@342.3--342.220
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@342.10--342.220) [171680]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Worker() might not hold. (testThreadInheritance.vpr@342.10--342.220) [171681]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Worker__preFork_at_Worker(sys__result, write) (testThreadInheritance.vpr@342.10--342.220) [171683]"}
        perm <= AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)];
    }
    AssertMask := AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] - perm];
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritance.vpr@342.10--342.220) [171684]"}
      AssertMask[sys__result, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Worker__input];
    AssertMask := AssertMask[sys__result, Worker__input:=AssertMask[sys__result, Worker__input] - wildcard];
    
    // -- Check definedness of sys__result.Worker__input == input
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritance.vpr@342.10--342.220) [171685]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Worker__input);
    assert {:msg "  Assert might fail. Assertion sys__result.Worker__input == input might not hold. (testThreadInheritance.vpr@342.10--342.220) [171686]"}
      AssertHeap[sys__result, Worker__input] == input;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@343.3--343.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@325.11--325.30) [171687]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion type_of(sys__result) == class_Worker() might not hold. (testThreadInheritance.vpr@326.11--326.49) [171688]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. There might be insufficient permission to access Worker__preFork_at_Worker(sys__result, write) (testThreadInheritance.vpr@327.11--327.68) [171689]"}
        perm <= Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] - perm];
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritance.vpr@328.11--328.51) [171690]"}
      Mask[sys__result, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__input];
    Mask := Mask[sys__result, Worker__input:=Mask[sys__result, Worker__input] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion sys__result.Worker__input == input might not hold. (testThreadInheritance.vpr@329.11--329.45) [171691]"}
      Heap[sys__result, Worker__input] == input;
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  var __flatten_4: int;
  var __flatten_12: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
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
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Worker(diz, FullPerm):=PostMask[null, Worker__postJoin_at_Worker(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Worker__preFork_at_Worker(diz, write), write) -- testThreadInheritance.vpr@354.3--354.59
    assume Worker__preFork_at_Worker#trigger(Heap, Worker__preFork_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__preFork_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__preFork_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__input]), ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Worker__output]))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__preFork_at_Worker(diz, write) (testThreadInheritance.vpr@354.3--354.59) [171694]"}
        perm <= Mask[null, Worker__preFork_at_Worker(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Worker__preFork_at_Worker(diz, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Worker__preFork_at_Worker(diz, FullPerm):=newVersion];
      }
    assume NoPerm <= FullPerm;
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], Worker__preFork_at_Thread(diz, FullPerm), Heap[null, Worker__preFork_at_Thread(diz, FullPerm)]);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] + perm];
    assume state(Heap, Mask);
    assume FullPerm != NoPerm;
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := diz.Worker__input + 1 -- testThreadInheritance.vpr@355.3--355.39
    
    // -- Check definedness of diz.Worker__input + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__input (testThreadInheritance.vpr@355.3--355.39) [171697]"}
        HasDirectPerm(Mask, diz, Worker__input);
    __flatten_4 := Heap[diz, Worker__input] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_12 := __flatten_4 -- testThreadInheritance.vpr@356.3--356.30
    __flatten_12 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Worker__output := __flatten_12 -- testThreadInheritance.vpr@357.3--357.37
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__output (testThreadInheritance.vpr@357.3--357.37) [171698]"}
      FullPerm == Mask[diz, Worker__output];
    Heap := Heap[diz, Worker__output:=__flatten_12];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__postJoin_at_Thread(diz, write), write) -- testThreadInheritance.vpr@358.3--358.58
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
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
  
  // -- Translating statement: fold acc(Worker__postJoin_at_Worker(diz, write), write) -- testThreadInheritance.vpr@359.3--359.58
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Assertion write >= none might not hold. (testThreadInheritance.vpr@359.3--359.58) [171703]"}
      NoPerm <= FullPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, write) (testThreadInheritance.vpr@359.3--359.58) [171705]"}
        perm <= Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, FullPerm):=Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__postJoin_at_Worker(diz, FullPerm), Heap[null, Worker__postJoin_at_Worker(diz, FullPerm)], Worker__postJoin_at_Thread(diz, FullPerm), Heap[null, Worker__postJoin_at_Thread(diz, FullPerm)]);
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__input (testThreadInheritance.vpr@359.3--359.58) [171706]"}
      Mask[diz, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Worker__input];
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] - wildcard];
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Assertion write != none might not hold. (testThreadInheritance.vpr@359.3--359.58) [171707]"}
      FullPerm != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__output (testThreadInheritance.vpr@359.3--359.58) [171709]"}
        perm <= Mask[diz, Worker__output];
    }
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] - perm];
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Assertion diz.Worker__output == diz.Worker__input + 1 might not hold. (testThreadInheritance.vpr@359.3--359.58) [171710]"}
      Heap[diz, Worker__output] == Heap[diz, Worker__input] + 1;
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Worker(diz, FullPerm):=Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__postJoin_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__postJoin_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__input]), ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Worker__output]))));
    if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Worker(diz, FullPerm))) {
      Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__postJoin_at_Worker(diz, FullPerm):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
      { newPMask[o_16, f_21] }
      Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][o_16, f_21] || Heap[null, Worker__postJoin_at_Thread#sm(diz, FullPerm)][o_16, f_21] ==> newPMask[o_16, f_21]
    );
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=newPMask];
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][diz, Worker__input:=true]];
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][diz, Worker__output:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin_at_Worker(diz, write) (testThreadInheritance.vpr@350.11--350.61) [171712]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(diz, FullPerm):=Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Main__main
// ==================================================

procedure Main__main(current_thread_id: int) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var w_2: Ref;
  var __flatten_5: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var ExhaleHeap: HeapType;
  var arg_p: Perm;
  var arg_p_1: Perm;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[w_2, $allocated];
    assume Heap[__flatten_5, $allocated];
  
  // -- Translating statement: sys__thrown, __flatten_5 := Worker__Worker(current_thread_id, 7) -- testThreadInheritance.vpr@367.3--367.67
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Worker__Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testThreadInheritance.vpr@367.3--367.67) [171713]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc sys__thrown, __flatten_5;
    
    // -- Inhaling postcondition
      assume __flatten_5 != null;
      assume (type_of(__flatten_5): TYPEDomainType) == (class_Worker(): TYPEDomainType);
      perm := FullPerm;
      Mask := Mask[null, Worker__preFork(__flatten_5, FullPerm):=Mask[null, Worker__preFork(__flatten_5, FullPerm)] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume __flatten_5 != null;
      Mask := Mask[__flatten_5, Worker__input:=Mask[__flatten_5, Worker__input] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_5, Worker__input] == 7;
      perm := FullPerm;
      Mask := Mask[null, Worker__is_a_Worker(__flatten_5):=Mask[null, Worker__is_a_Worker(__flatten_5)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume Heap[__flatten_5, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: w := __flatten_5 -- testThreadInheritance.vpr@368.3--368.19
    w_2 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert w.Worker__input == 7 -- testThreadInheritance.vpr@369.3--369.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of w.Worker__input == 7
      assert {:msg "  Assert might fail. There might be insufficient permission to access w.Worker__input (testThreadInheritance.vpr@369.10--369.30) [171714]"}
        HasDirectPerm(ExhaleWellDef0Mask, w_2, Worker__input);
    assert {:msg "  Assert might fail. Assertion w.Worker__input == 7 might not hold. (testThreadInheritance.vpr@369.10--369.30) [171715]"}
      Heap[w_2, Worker__input] == 7;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__start(w, current_thread_id) -- testThreadInheritance.vpr@370.3--370.53
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Worker__start might not hold. Assertion w != null might not hold. (testThreadInheritance.vpr@370.3--370.53) [171716]"}
        w_2 != null;
      assert {:msg "  The precondition of method Worker__start might not hold. Assertion current_thread_id >= 0 might not hold. (testThreadInheritance.vpr@370.3--370.53) [171717]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__start might not hold. There might be insufficient permission to access Worker__preFork(w, write) (testThreadInheritance.vpr@370.3--370.53) [171718]"}
          perm <= Mask[null, Worker__preFork(w_2, FullPerm)];
      }
      Mask := Mask[null, Worker__preFork(w_2, FullPerm):=Mask[null, Worker__preFork(w_2, FullPerm)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__joinToken(w_2, FullPerm):=Mask[null, Worker__joinToken(w_2, FullPerm)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__join(w, current_thread_id, write) -- testThreadInheritance.vpr@371.3--371.59
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Worker__join might not hold. Assertion w != null might not hold. (testThreadInheritance.vpr@371.3--371.59) [171719]"}
        w_2 != null;
      assert {:msg "  The precondition of method Worker__join might not hold. Assertion current_thread_id >= 0 might not hold. (testThreadInheritance.vpr@371.3--371.59) [171720]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__join might not hold. There might be insufficient permission to access Worker__joinToken(w, write) (testThreadInheritance.vpr@371.3--371.59) [171721]"}
          perm <= Mask[null, Worker__joinToken(w_2, arg_p)];
      }
      Mask := Mask[null, Worker__joinToken(w_2, arg_p):=Mask[null, Worker__joinToken(w_2, arg_p)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__postJoin(w_2, arg_p):=Mask[null, Worker__postJoin(w_2, arg_p)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert w.Worker__input == 7 -- testThreadInheritance.vpr@372.3--372.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of w.Worker__input == 7
      assert {:msg "  Assert might fail. There might be insufficient permission to access w.Worker__input (testThreadInheritance.vpr@372.10--372.30) [171722]"}
        HasDirectPerm(ExhaleWellDef0Mask, w_2, Worker__input);
    assert {:msg "  Assert might fail. Assertion w.Worker__input == 7 might not hold. (testThreadInheritance.vpr@372.10--372.30) [171723]"}
      Heap[w_2, Worker__input] == 7;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__open_postJoin_at_Worker(w, current_thread_id, write) -- testThreadInheritance.vpr@373.3--373.78
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_1 := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. Assertion w != null might not hold. (testThreadInheritance.vpr@373.3--373.78) [171724]"}
        w_2 != null;
      assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testThreadInheritance.vpr@373.3--373.78) [171725]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin(w, write) (testThreadInheritance.vpr@373.3--373.78) [171726]"}
          perm <= Mask[null, Worker__postJoin(w_2, arg_p_1)];
      }
      Mask := Mask[null, Worker__postJoin(w_2, arg_p_1):=Mask[null, Worker__postJoin(w_2, arg_p_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__is_a_Worker(w) (testThreadInheritance.vpr@373.3--373.78) [171727]"}
          perm <= Mask[null, Worker__is_a_Worker(w_2)];
      }
      Mask := Mask[null, Worker__is_a_Worker(w_2):=Mask[null, Worker__is_a_Worker(w_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__postJoin_at_Worker(w_2, arg_p_1):=Mask[null, Worker__postJoin_at_Worker(w_2, arg_p_1)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Worker__postJoin_at_Worker(w, write), write) -- testThreadInheritance.vpr@374.3--374.58
    assume Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(w_2, FullPerm));
    assume Heap[null, Worker__postJoin_at_Worker(w_2, FullPerm)] == CombineFrames(Heap[null, Worker__postJoin_at_Thread(w_2, FullPerm)], CombineFrames(FrameFragment(Heap[w_2, Worker__input]), ConditionalFrame(FullPerm, FrameFragment(Heap[w_2, Worker__output]))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Worker__postJoin_at_Worker(w, write) might fail. There might be insufficient permission to access Worker__postJoin_at_Worker(w, write) (testThreadInheritance.vpr@374.3--374.58) [171730]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(w_2, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(w_2, FullPerm):=Mask[null, Worker__postJoin_at_Worker(w_2, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Worker(w_2, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Worker__postJoin_at_Worker(w_2, FullPerm):=newVersion];
      }
    assume NoPerm <= FullPerm;
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(w_2, FullPerm):=Mask[null, Worker__postJoin_at_Thread(w_2, FullPerm)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__postJoin_at_Worker(w_2, FullPerm), Heap[null, Worker__postJoin_at_Worker(w_2, FullPerm)], Worker__postJoin_at_Thread(w_2, FullPerm), Heap[null, Worker__postJoin_at_Thread(w_2, FullPerm)]);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume w_2 != null;
    Mask := Mask[w_2, Worker__input:=Mask[w_2, Worker__input] + perm];
    assume state(Heap, Mask);
    assume FullPerm != NoPerm;
    perm := FullPerm;
    assume w_2 != null;
    Mask := Mask[w_2, Worker__output:=Mask[w_2, Worker__output] + perm];
    assume state(Heap, Mask);
    assume Heap[w_2, Worker__output] == Heap[w_2, Worker__input] + 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert w.Worker__output == 8 -- testThreadInheritance.vpr@375.3--375.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of w.Worker__output == 8
      assert {:msg "  Assert might fail. There might be insufficient permission to access w.Worker__output (testThreadInheritance.vpr@375.10--375.31) [171733]"}
        HasDirectPerm(ExhaleWellDef0Mask, w_2, Worker__output);
    assert {:msg "  Assert might fail. Assertion w.Worker__output == 8 might not hold. (testThreadInheritance.vpr@375.10--375.31) [171734]"}
      Heap[w_2, Worker__output] == 8;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Main__Main
// ==================================================

procedure Main__Main(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
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
    assume (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- testThreadInheritance.vpr@384.3--384.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Main() -- testThreadInheritance.vpr@385.3--385.38
    assume (type_of(diz): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testThreadInheritance.vpr@386.3--386.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null && type_of(sys__result) == class_Main() -- testThreadInheritance.vpr@387.3--387.73
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@387.10--387.73) [171735]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Main() might not hold. (testThreadInheritance.vpr@387.10--387.73) [171736]"}
      (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testThreadInheritance.vpr@388.3--388.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion sys__result != null might not hold. (testThreadInheritance.vpr@380.11--380.30) [171737]"}
      sys__result != null;
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion type_of(sys__result) == class_Main() might not hold. (testThreadInheritance.vpr@381.11--381.47) [171738]"}
      (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
}