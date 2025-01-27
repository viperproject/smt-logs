// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:52
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0045.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0045-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_38: Ref, f_51: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_38, f_51] }
  Heap[o_38, $allocated] ==> Heap[Heap[o_38, f_51], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref, f_21: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, f_21] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_39, f_21) ==> Heap[o_39, f_21] == ExhaleHeap[o_39, f_21]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_39, $allocated] ==> ExhaleHeap[o_39, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_38: Ref, f_23: (Field A B), v: B ::
  { Heap[o_38, f_23:=v] }
  succHeap(Heap, Heap[o_38, f_23:=v])
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
// Translation of domain Natural
// ==================================================

// The type for domain Natural
type NaturalDomainType;

// Translation of domain function zero
function  zero(): NaturalDomainType;

// Translation of domain function successor
function  successor(n_84: NaturalDomainType): NaturalDomainType;

// Translation of domain function isZeroOrSuccessor
function  isZeroOrSuccessor(n_84: NaturalDomainType): bool;

// Translation of domain function lessEqual
function  lessEqual(l_2: NaturalDomainType, r_4: NaturalDomainType): bool;

// Translation of domain function less
function  less(l_2: NaturalDomainType, r_4: NaturalDomainType): bool;

// Translation of domain function plus
function  plus(l_2: NaturalDomainType, r_4: NaturalDomainType): NaturalDomainType;

// Translation of domain function minus
function  minus(l_2: NaturalDomainType, r_4: NaturalDomainType): NaturalDomainType;

// Translation of domain function times
function  times(l_2: NaturalDomainType, r_4: NaturalDomainType): NaturalDomainType;

// Translation of domain function minimum
function  minimum(l_2: NaturalDomainType, r_4: NaturalDomainType): NaturalDomainType;

// Translation of domain function maximum
function  maximum(l_2: NaturalDomainType, r_4: NaturalDomainType): NaturalDomainType;

// Translation of domain axiom zeroOrSuccessor
axiom (forall n: NaturalDomainType ::
  { (isZeroOrSuccessor(n): bool) }
  (isZeroOrSuccessor(n): bool)
);

// Translation of domain axiom isZeroOrSuccessorNatural
axiom (forall n: NaturalDomainType ::
  { (isZeroOrSuccessor(n): bool) }
  (isZeroOrSuccessor(n): bool) == (n == (zero(): NaturalDomainType) || (exists p_1: NaturalDomainType ::
    { (successor(p_1): NaturalDomainType) }
    n == (successor(p_1): NaturalDomainType)
  ))
);

// Translation of domain axiom equalZeroZero
axiom (zero(): NaturalDomainType) == (zero(): NaturalDomainType);

// Translation of domain axiom equalZeroSuccessor
axiom (forall n: NaturalDomainType ::
  { (successor(n): NaturalDomainType) }
  (zero(): NaturalDomainType) != (successor(n): NaturalDomainType)
);

// Translation of domain axiom equalSuccessorZero
axiom (forall n: NaturalDomainType ::
  { (successor(n): NaturalDomainType) }
  (successor(n): NaturalDomainType) != (zero(): NaturalDomainType)
);

// Translation of domain axiom equalSuccessorSuccessor
axiom (forall x: NaturalDomainType, y: NaturalDomainType ::
  { (successor(x): NaturalDomainType), (successor(y): NaturalDomainType) }
  ((successor(x): NaturalDomainType) == (successor(y): NaturalDomainType)) == (x == y)
);

// Translation of domain axiom lessEqualZeroNatural
axiom (forall n: NaturalDomainType ::
  { (lessEqual((zero(): NaturalDomainType), n): bool) }
  (lessEqual((zero(): NaturalDomainType), n): bool)
);

// Translation of domain axiom lessEqualSuccessorZero
axiom (forall n: NaturalDomainType ::
  { (lessEqual((successor(n): NaturalDomainType), (zero(): NaturalDomainType)): bool) }
  !(lessEqual((successor(n): NaturalDomainType), (zero(): NaturalDomainType)): bool)
);

// Translation of domain axiom lessEqualSuccessorSuccessor
axiom (forall x: NaturalDomainType, y: NaturalDomainType ::
  { (successor(x): NaturalDomainType), (lessEqual(x, y): bool) } { (successor(y): NaturalDomainType), (lessEqual(x, y): bool) } { (lessEqual((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): bool) } { (lessEqual(x, y): bool) }
  (lessEqual((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): bool) == (lessEqual(x, y): bool)
);

// Translation of domain axiom lessNaturalZero
axiom (forall n: NaturalDomainType ::
  { (less(n, (zero(): NaturalDomainType)): bool) }
  !(less(n, (zero(): NaturalDomainType)): bool)
);

// Translation of domain axiom lessZeroSuccessor
axiom (forall n: NaturalDomainType ::
  { (less((zero(): NaturalDomainType), (successor(n): NaturalDomainType)): bool) }
  (less((zero(): NaturalDomainType), (successor(n): NaturalDomainType)): bool)
);

// Translation of domain axiom lessSuccessorSuccessor
axiom (forall x: NaturalDomainType, y: NaturalDomainType ::
  { (successor(x): NaturalDomainType), (less(x, y): bool) } { (successor(y): NaturalDomainType), (less(x, y): bool) } { (less((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): bool) } { (less(x, y): bool) }
  (less((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): bool) == (less(x, y): bool)
);

// Translation of domain axiom plusZeroNatural
axiom (forall y: NaturalDomainType ::
  { (plus((zero(): NaturalDomainType), y): NaturalDomainType) }
  (plus((zero(): NaturalDomainType), y): NaturalDomainType) == y
);

// Translation of domain axiom plusSuccessorNatural
axiom (forall x: NaturalDomainType, y: NaturalDomainType ::
  { (successor(x): NaturalDomainType), (plus(x, y): NaturalDomainType) } { (successor(x): NaturalDomainType), (successor((plus(x, y): NaturalDomainType)): NaturalDomainType) } { (plus((successor(x): NaturalDomainType), y): NaturalDomainType) } { (successor((plus(x, y): NaturalDomainType)): NaturalDomainType) }
  (plus((successor(x): NaturalDomainType), y): NaturalDomainType) == (successor((plus(x, y): NaturalDomainType)): NaturalDomainType)
);

// Translation of domain axiom minusZeroNatural
axiom (forall n: NaturalDomainType ::
  { (minus((zero(): NaturalDomainType), n): NaturalDomainType) }
  (minus((zero(): NaturalDomainType), n): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom minusNaturalZero
axiom (forall x: NaturalDomainType ::
  { (minus(x, (zero(): NaturalDomainType)): NaturalDomainType) }
  (minus(x, (zero(): NaturalDomainType)): NaturalDomainType) == x
);

// Translation of domain axiom minusSuccessorSuccessor
axiom (forall x: NaturalDomainType, y: NaturalDomainType ::
  { (successor(x): NaturalDomainType), (minus(x, y): NaturalDomainType) } { (successor(y): NaturalDomainType), (minus(x, y): NaturalDomainType) } { (minus((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): NaturalDomainType) } { (minus(x, y): NaturalDomainType) }
  (minus((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): NaturalDomainType) == (minus(x, y): NaturalDomainType)
);

// Translation of domain axiom timesZeroNatural
axiom (forall n: NaturalDomainType ::
  { (times((zero(): NaturalDomainType), n): NaturalDomainType) }
  (times((zero(): NaturalDomainType), n): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom timesSuccessorNatural
axiom (forall x: NaturalDomainType, y: NaturalDomainType ::
  { (successor(x): NaturalDomainType), (times(x, y): NaturalDomainType) } { (successor(x): NaturalDomainType), (plus(y, (times(x, y): NaturalDomainType)): NaturalDomainType) } { (times((successor(x): NaturalDomainType), y): NaturalDomainType) } { (plus(y, (times(x, y): NaturalDomainType)): NaturalDomainType) }
  (times((successor(x): NaturalDomainType), y): NaturalDomainType) == (plus(y, (times(x, y): NaturalDomainType)): NaturalDomainType)
);

// Translation of domain axiom minimumZeroNatural
axiom (forall y: NaturalDomainType ::
  { (minimum((zero(): NaturalDomainType), y): NaturalDomainType) }
  (minimum((zero(): NaturalDomainType), y): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom minimumNaturalZero
axiom (forall x: NaturalDomainType ::
  { (minimum(x, (zero(): NaturalDomainType)): NaturalDomainType) }
  (minimum(x, (zero(): NaturalDomainType)): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom minimumSuccessorSuccessor
axiom (forall x: NaturalDomainType, y: NaturalDomainType ::
  { (successor(x): NaturalDomainType), (minimum(x, y): NaturalDomainType) } { (successor(x): NaturalDomainType), (successor((minimum(x, y): NaturalDomainType)): NaturalDomainType) } { (successor(y): NaturalDomainType), (minimum(x, y): NaturalDomainType) } { (successor(y): NaturalDomainType), (successor((minimum(x, y): NaturalDomainType)): NaturalDomainType) } { (minimum((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): NaturalDomainType) } { (successor((minimum(x, y): NaturalDomainType)): NaturalDomainType) }
  (minimum((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): NaturalDomainType) == (successor((minimum(x, y): NaturalDomainType)): NaturalDomainType)
);

// Translation of domain axiom maximumZeroNatural
axiom (forall y: NaturalDomainType ::
  { (maximum((zero(): NaturalDomainType), y): NaturalDomainType) }
  (maximum((zero(): NaturalDomainType), y): NaturalDomainType) == y
);

// Translation of domain axiom maximumNaturalZero
axiom (forall x: NaturalDomainType ::
  { (maximum(x, (zero(): NaturalDomainType)): NaturalDomainType) }
  (maximum(x, (zero(): NaturalDomainType)): NaturalDomainType) == x
);

// Translation of domain axiom maximumSuccessorSuccessor
axiom (forall x: NaturalDomainType, y: NaturalDomainType ::
  { (successor(x): NaturalDomainType), (maximum(x, y): NaturalDomainType) } { (successor(x): NaturalDomainType), (successor((maximum(x, y): NaturalDomainType)): NaturalDomainType) } { (successor(y): NaturalDomainType), (maximum(x, y): NaturalDomainType) } { (successor(y): NaturalDomainType), (successor((maximum(x, y): NaturalDomainType)): NaturalDomainType) } { (maximum((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): NaturalDomainType) } { (successor((maximum(x, y): NaturalDomainType)): NaturalDomainType) }
  (maximum((successor(x): NaturalDomainType), (successor(y): NaturalDomainType)): NaturalDomainType) == (successor((maximum(x, y): NaturalDomainType)): NaturalDomainType)
);

// ==================================================
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType A;

// Translation of domain function nil
function  nil<A>(t_3: A): ListDomainType A;

// Translation of domain function cons
function  cons<A>(e: A, l_2: (ListDomainType A)): ListDomainType A;

// Translation of domain function isNilOrCons
function  isNilOrCons<A>(l_2: (ListDomainType A)): bool;

// Translation of domain function empty
function  empty<A>(l_2: (ListDomainType A)): bool;

// Translation of domain function concatenate
function  concatenate<A>(l_2: (ListDomainType A), r_4: (ListDomainType A)): ListDomainType A;

// Translation of domain function reverse
function  reverse_1<A>(l_2: (ListDomainType A)): ListDomainType A;

// Translation of domain function delete
function  delete(n_84: NaturalDomainType, l_2: (ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType;

// Translation of domain function length
function  length_2<A>(l_2: (ListDomainType A)): NaturalDomainType;

// Translation of domain function element
function  element_1(n_84: NaturalDomainType, l_2: (ListDomainType NaturalDomainType)): bool;

// Translation of domain function drop
function  drop<A>(n_84: NaturalDomainType, l_2: (ListDomainType A)): ListDomainType A;

// Translation of domain function take
function  take<A>(n_84: NaturalDomainType, l_2: (ListDomainType A)): ListDomainType A;

// Translation of domain function count
function  count_1(n_84: NaturalDomainType, l_2: (ListDomainType NaturalDomainType)): NaturalDomainType;

// Translation of domain function butLast
function  butLast<A>(l_2: (ListDomainType A)): ListDomainType A;

// Translation of domain function last
function  last_2(l_2: (ListDomainType NaturalDomainType)): NaturalDomainType;

// Translation of domain function sorted
function  sorted(l_2: (ListDomainType NaturalDomainType)): bool;

// Translation of domain function insertSorting
function  insertSorting(n_84: NaturalDomainType, l_2: (ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType;

// Translation of domain function insert
function  insert_1(n_84: NaturalDomainType, l_2: (ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType;

// Translation of domain function insertUnlessPresent
function  insertUnlessPresent(n_84: NaturalDomainType, l_2: (ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType;

// Translation of domain function sort
function  sort(l_2: (ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType;

// Translation of domain function sum
function  sum_2(l_2: (ListDomainType NaturalDomainType)): NaturalDomainType;

// Translation of domain function hasMultiple
function  hasMultiple(l_2: (ListDomainType NaturalDomainType)): bool;

// Translation of domain axiom nilOrCons
axiom (forall <A> l_1: (ListDomainType A) ::
  { (isNilOrCons(l_1): bool) }
  (isNilOrCons(l_1): bool)
);

// Translation of domain axiom isNilOrConsList
axiom (forall <A> l_1: (ListDomainType A) ::
  { (isNilOrCons(l_1): bool) }
  (isNilOrCons(l_1): bool) == ((exists t_2: A ::
    { (nil(t_2): ListDomainType A) }
    l_1 == (nil(t_2): ListDomainType A)
  ) || (exists e_1: A, r_1: (ListDomainType A) ::
    { (cons(e_1, r_1): ListDomainType A) }
    l_1 == (cons(e_1, r_1): ListDomainType A)
  ))
);

// Translation of domain axiom equalNilNil
axiom (forall l_1: NaturalDomainType, r_1: NaturalDomainType ::
  { (nil(l_1): ListDomainType NaturalDomainType), (nil(r_1): ListDomainType NaturalDomainType) }
  (nil(l_1): ListDomainType NaturalDomainType) == (nil(r_1): ListDomainType NaturalDomainType)
);

// Translation of domain axiom equalConsNil
axiom (forall x: NaturalDomainType, xs: (ListDomainType NaturalDomainType), t_2: NaturalDomainType ::
  { (cons(x, xs): ListDomainType NaturalDomainType), (nil(t_2): ListDomainType NaturalDomainType) }
  (cons(x, xs): ListDomainType NaturalDomainType) != (nil(t_2): ListDomainType NaturalDomainType)
);

// Translation of domain axiom equalNilCons
axiom (forall t_2: NaturalDomainType, y: NaturalDomainType, ys: (ListDomainType NaturalDomainType) ::
  { (nil(t_2): ListDomainType NaturalDomainType), (cons(y, ys): ListDomainType NaturalDomainType) }
  (nil(t_2): ListDomainType NaturalDomainType) != (cons(y, ys): ListDomainType NaturalDomainType)
);

// Translation of domain axiom equalConsCons
axiom (forall x: NaturalDomainType, xs: (ListDomainType NaturalDomainType), y: NaturalDomainType, ys: (ListDomainType NaturalDomainType) ::
  { (cons(x, xs): ListDomainType NaturalDomainType), (cons(y, ys): ListDomainType NaturalDomainType) }
  ((cons(x, xs): ListDomainType NaturalDomainType) == (cons(y, ys): ListDomainType NaturalDomainType)) == (x == y && xs == ys)
);

// Translation of domain axiom emptyNil
axiom (forall <A> t_2: A ::
  { (empty((nil(t_2): ListDomainType A)): bool) }
  (empty((nil(t_2): ListDomainType A)): bool)
);

// Translation of domain axiom emptyCons
axiom (forall <A> e_1: A, l_1: (ListDomainType A) ::
  { (empty((cons(e_1, l_1): ListDomainType A)): bool) }
  !(empty((cons(e_1, l_1): ListDomainType A)): bool)
);

// Translation of domain axiom concatenateNilList
axiom (forall <A> t_2: A, ys: (ListDomainType A) ::
  { (concatenate((nil(t_2): ListDomainType A), ys): ListDomainType A) }
  (concatenate((nil(t_2): ListDomainType A), ys): ListDomainType A) == ys
);

// Translation of domain axiom concatenateConsList
axiom (forall <A> x: A, xs: (ListDomainType A), ys: (ListDomainType A) ::
  { (cons(x, xs): ListDomainType A), (concatenate(xs, ys): ListDomainType A) } { (cons(x, xs): ListDomainType A), (cons(x, (concatenate(xs, ys): ListDomainType A)): ListDomainType A) } { (concatenate((cons(x, xs): ListDomainType A), ys): ListDomainType A) } { (cons(x, (concatenate(xs, ys): ListDomainType A)): ListDomainType A) }
  (concatenate((cons(x, xs): ListDomainType A), ys): ListDomainType A) == (cons(x, (concatenate(xs, ys): ListDomainType A)): ListDomainType A)
);

// Translation of domain axiom reverseNil
axiom (forall <A> t_2: A ::
  { (reverse_1((nil(t_2): ListDomainType A)): ListDomainType A) }
  (reverse_1((nil(t_2): ListDomainType A)): ListDomainType A) == (nil(t_2): ListDomainType A)
);

// Translation of domain axiom reverseCons
axiom (forall <A> x: A, xs: (ListDomainType A), t_2: A ::
  { (cons(x, xs): ListDomainType A), (concatenate((reverse_1(xs): ListDomainType A), (cons(x, (nil(t_2): ListDomainType A)): ListDomainType A)): ListDomainType A) } { (reverse_1((cons(x, xs): ListDomainType A)): ListDomainType A), (nil(t_2): ListDomainType A) } { (reverse_1((cons(x, xs): ListDomainType A)): ListDomainType A), (cons(x, (nil(t_2): ListDomainType A)): ListDomainType A) } { (reverse_1((cons(x, xs): ListDomainType A)): ListDomainType A), (concatenate((reverse_1(xs): ListDomainType A), (cons(x, (nil(t_2): ListDomainType A)): ListDomainType A)): ListDomainType A) } { (concatenate((reverse_1(xs): ListDomainType A), (cons(x, (nil(t_2): ListDomainType A)): ListDomainType A)): ListDomainType A) }
  (reverse_1((cons(x, xs): ListDomainType A)): ListDomainType A) == (concatenate((reverse_1(xs): ListDomainType A), (cons(x, (nil(t_2): ListDomainType A)): ListDomainType A)): ListDomainType A)
);

// Translation of domain axiom deleteNaturalNil
axiom (forall n: NaturalDomainType, t_2: NaturalDomainType ::
  { (delete(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (delete(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (nil(t_2): ListDomainType NaturalDomainType)
);

// Translation of domain axiom deleteNaturalCons
axiom (forall n: NaturalDomainType, x: NaturalDomainType, xs: (ListDomainType NaturalDomainType) ::
  { (cons(x, xs): ListDomainType NaturalDomainType), (delete(n, xs): ListDomainType NaturalDomainType) } { (cons(x, xs): ListDomainType NaturalDomainType), (cons(x, (delete(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (delete(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(x, (delete(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (delete(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (if n == x then (delete(n, xs): ListDomainType NaturalDomainType) else (cons(x, (delete(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType))
);

// Translation of domain axiom lengthNil
axiom (forall <A> t_2: A ::
  { (length_2((nil(t_2): ListDomainType A)): NaturalDomainType) }
  (length_2((nil(t_2): ListDomainType A)): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom lengthCons
axiom (forall <A> e_1: A, xs: (ListDomainType A) ::
  { (length_2((cons(e_1, xs): ListDomainType A)): NaturalDomainType) }
  (length_2((cons(e_1, xs): ListDomainType A)): NaturalDomainType) == (successor((length_2(xs): NaturalDomainType)): NaturalDomainType)
);

// Translation of domain axiom elementNil
axiom (forall n: NaturalDomainType, t_2: NaturalDomainType ::
  { (element_1(n, (nil(t_2): ListDomainType NaturalDomainType)): bool) }
  !(element_1(n, (nil(t_2): ListDomainType NaturalDomainType)): bool)
);

// Translation of domain axiom elementCons
axiom (forall n: NaturalDomainType, x: NaturalDomainType, xs: (ListDomainType NaturalDomainType) ::
  { (cons(x, xs): ListDomainType NaturalDomainType), (element_1(n, xs): bool) } { (element_1(n, (cons(x, xs): ListDomainType NaturalDomainType)): bool) }
  (element_1(n, (cons(x, xs): ListDomainType NaturalDomainType)): bool) == (n == x || (element_1(n, xs): bool))
);

// Translation of domain axiom dropZeroList
axiom (forall <A> xs: (ListDomainType A) ::
  { (drop((zero(): NaturalDomainType), xs): ListDomainType A) }
  (drop((zero(): NaturalDomainType), xs): ListDomainType A) == xs
);

// Translation of domain axiom dropNaturalNil
axiom (forall <A> n: NaturalDomainType, t_2: A ::
  { (drop(n, (nil(t_2): ListDomainType A)): ListDomainType A) }
  (drop(n, (nil(t_2): ListDomainType A)): ListDomainType A) == (nil(t_2): ListDomainType A)
);

// Translation of domain axiom dropSuccessorCons
axiom (forall <A> x: NaturalDomainType, e_1: A, xs: (ListDomainType A) ::
  { (cons(e_1, xs): ListDomainType A), (drop(x, xs): ListDomainType A) } { (drop((successor(x): NaturalDomainType), (cons(e_1, xs): ListDomainType A)): ListDomainType A) }
  (drop((successor(x): NaturalDomainType), (cons(e_1, xs): ListDomainType A)): ListDomainType A) == (drop(x, xs): ListDomainType A)
);

// Translation of domain axiom takeZeroList
axiom (forall <A> l_1: (ListDomainType A) ::
  { (take((zero(): NaturalDomainType), l_1): ListDomainType A) }
  (exists t_2: A ::
    { (nil(t_2): ListDomainType A) }
    (take((zero(): NaturalDomainType), l_1): ListDomainType A) == (nil(t_2): ListDomainType A)
  )
);

// Translation of domain axiom takeNaturalNil
axiom (forall <A> n: NaturalDomainType, t_2: A ::
  { (take(n, (nil(t_2): ListDomainType A)): ListDomainType A) }
  (take(n, (nil(t_2): ListDomainType A)): ListDomainType A) == (nil(t_2): ListDomainType A)
);

// Translation of domain axiom takeSuccessorCons
axiom (forall <A> x: NaturalDomainType, y: A, ys: (ListDomainType A) ::
  { (successor(x): NaturalDomainType), (cons(y, (take(x, ys): ListDomainType A)): ListDomainType A) } { (cons(y, ys): ListDomainType A), (take(x, ys): ListDomainType A) } { (cons(y, ys): ListDomainType A), (cons(y, (take(x, ys): ListDomainType A)): ListDomainType A) } { (take((successor(x): NaturalDomainType), (cons(y, ys): ListDomainType A)): ListDomainType A) } { (cons(y, (take(x, ys): ListDomainType A)): ListDomainType A) }
  (take((successor(x): NaturalDomainType), (cons(y, ys): ListDomainType A)): ListDomainType A) == (cons(y, (take(x, ys): ListDomainType A)): ListDomainType A)
);

// Translation of domain axiom countNaturalNil
axiom (forall x: NaturalDomainType, t_2: NaturalDomainType ::
  { (count_1(x, (nil(t_2): ListDomainType NaturalDomainType)): NaturalDomainType) }
  (count_1(x, (nil(t_2): ListDomainType NaturalDomainType)): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom countNaturalCons
axiom (forall x: NaturalDomainType, y: NaturalDomainType, ys: (ListDomainType NaturalDomainType) ::
  { (cons(y, ys): ListDomainType NaturalDomainType), (count_1(x, ys): NaturalDomainType) } { (cons(y, ys): ListDomainType NaturalDomainType), (successor((count_1(x, ys): NaturalDomainType)): NaturalDomainType) } { (count_1(x, (cons(y, ys): ListDomainType NaturalDomainType)): NaturalDomainType) }
  (count_1(x, (cons(y, ys): ListDomainType NaturalDomainType)): NaturalDomainType) == (if x == y then (successor((count_1(x, ys): NaturalDomainType)): NaturalDomainType) else (count_1(x, ys): NaturalDomainType))
);

// Translation of domain axiom butLastNil
axiom (forall <A> t_2: A ::
  { (butLast((nil(t_2): ListDomainType A)): ListDomainType A) }
  (butLast((nil(t_2): ListDomainType A)): ListDomainType A) == (nil(t_2): ListDomainType A)
);

// Translation of domain axiom butLastConsNil
axiom (forall <A> x: A, t_2: A ::
  { (butLast((cons(x, (nil(t_2): ListDomainType A)): ListDomainType A)): ListDomainType A) }
  (butLast((cons(x, (nil(t_2): ListDomainType A)): ListDomainType A)): ListDomainType A) == (nil(t_2): ListDomainType A)
);

// Translation of domain axiom butLastConsCons
axiom (forall <A> x: A, e_1: A, l_1: (ListDomainType A) ::
  { (cons(x, (cons(e_1, l_1): ListDomainType A)): ListDomainType A) } { (cons(x, (butLast((cons(e_1, l_1): ListDomainType A)): ListDomainType A)): ListDomainType A) }
  (cons(x, (cons(e_1, l_1): ListDomainType A)): ListDomainType A) == (cons(x, (butLast((cons(e_1, l_1): ListDomainType A)): ListDomainType A)): ListDomainType A)
);

// Translation of domain axiom lastNil
axiom (forall t_2: NaturalDomainType ::
  { (last_2((nil(t_2): ListDomainType NaturalDomainType)): NaturalDomainType) }
  (last_2((nil(t_2): ListDomainType NaturalDomainType)): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom lastConsNil
axiom (forall x: NaturalDomainType, t_2: NaturalDomainType ::
  { (last_2((cons(x, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): NaturalDomainType) }
  (last_2((cons(x, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): NaturalDomainType) == x
);

// Translation of domain axiom lastConsCons
axiom (forall x: NaturalDomainType, n: NaturalDomainType, l_1: (ListDomainType NaturalDomainType) ::
  { (last_2((cons(x, (cons(n, l_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): NaturalDomainType) }
  (last_2((cons(x, (cons(n, l_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): NaturalDomainType) == (last_2((cons(n, l_1): ListDomainType NaturalDomainType)): NaturalDomainType)
);

// Translation of domain axiom sortedNil
axiom (forall t_2: NaturalDomainType ::
  { (sorted((nil(t_2): ListDomainType NaturalDomainType)): bool) }
  (sorted((nil(t_2): ListDomainType NaturalDomainType)): bool)
);

// Translation of domain axiom sortedConsNil
axiom (forall x: NaturalDomainType, t_2: NaturalDomainType ::
  { (sorted((cons(x, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): bool) }
  (sorted((cons(x, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): bool)
);

// Translation of domain axiom sortedConsCons
axiom (forall x: NaturalDomainType, y: NaturalDomainType, ys: (ListDomainType NaturalDomainType) ::
  { (cons(y, ys): ListDomainType NaturalDomainType), (lessEqual(x, y): bool) } { (sorted((cons(x, (cons(y, ys): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): bool) } { (lessEqual(x, y): bool), (cons(y, ys): ListDomainType NaturalDomainType) } { (lessEqual(x, y): bool), (sorted((cons(y, ys): ListDomainType NaturalDomainType)): bool) }
  (sorted((cons(x, (cons(y, ys): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): bool) == ((lessEqual(x, y): bool) && (sorted((cons(y, ys): ListDomainType NaturalDomainType)): bool))
);

// Translation of domain axiom insertSortingNil
axiom (forall n: NaturalDomainType, t_2: NaturalDomainType ::
  { (insertSorting(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (insertSorting(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (cons(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)
);

// Translation of domain axiom insertSortingCons
axiom (forall n: NaturalDomainType, x: NaturalDomainType, xs: (ListDomainType NaturalDomainType) ::
  { (cons(x, xs): ListDomainType NaturalDomainType), (lessEqual(n, x): bool) } { (cons(x, xs): ListDomainType NaturalDomainType), (insertSorting(n, xs): ListDomainType NaturalDomainType) } { (cons(x, xs): ListDomainType NaturalDomainType), (cons(x, (insertSorting(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (insertSorting(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (lessEqual(n, x): bool), (cons(x, xs): ListDomainType NaturalDomainType) } { (lessEqual(n, x): bool), (cons(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (lessEqual(n, x): bool), (insertSorting(n, xs): ListDomainType NaturalDomainType) } { (lessEqual(n, x): bool), (cons(x, (insertSorting(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(x, (insertSorting(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (insertSorting(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (if (lessEqual(n, x): bool) then (cons(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) else (cons(x, (insertSorting(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType))
);

// Translation of domain axiom insertNil
axiom (forall n: NaturalDomainType, t_2: NaturalDomainType ::
  { (insert_1(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (insert_1(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (cons(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)
);

// Translation of domain axiom insertCons
axiom (forall n: NaturalDomainType, x: NaturalDomainType, xs: (ListDomainType NaturalDomainType) ::
  { (cons(x, xs): ListDomainType NaturalDomainType), (less(n, x): bool) } { (cons(x, xs): ListDomainType NaturalDomainType), (insert_1(n, xs): ListDomainType NaturalDomainType) } { (cons(x, xs): ListDomainType NaturalDomainType), (cons(x, (insert_1(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (insert_1(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (less(n, x): bool), (cons(x, xs): ListDomainType NaturalDomainType) } { (less(n, x): bool), (cons(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (less(n, x): bool), (insert_1(n, xs): ListDomainType NaturalDomainType) } { (less(n, x): bool), (cons(x, (insert_1(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(x, (insert_1(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (insert_1(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (if (less(n, x): bool) then (cons(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) else (cons(x, (insert_1(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType))
);

// Translation of domain axiom insertUnlessPresentNil
axiom (forall n: NaturalDomainType, t_2: NaturalDomainType ::
  { (insertUnlessPresent(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (insertUnlessPresent(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (cons(n, (nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)
);

// Translation of domain axiom insertUnlessPresentCons
axiom (forall n: NaturalDomainType, x: NaturalDomainType, xs: (ListDomainType NaturalDomainType) ::
  { (cons(x, xs): ListDomainType NaturalDomainType), (insertUnlessPresent(n, xs): ListDomainType NaturalDomainType) } { (cons(x, xs): ListDomainType NaturalDomainType), (cons(x, (insertUnlessPresent(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (insertUnlessPresent(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (cons(x, (insertUnlessPresent(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (insertUnlessPresent(n, (cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (if n == x then (cons(x, xs): ListDomainType NaturalDomainType) else (cons(x, (insertUnlessPresent(n, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType))
);

// Translation of domain axiom sortNil
axiom (forall t_2: NaturalDomainType ::
  { (sort((nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (sort((nil(t_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (nil(t_2): ListDomainType NaturalDomainType)
);

// Translation of domain axiom sortCons
axiom (forall x: NaturalDomainType, xs: (ListDomainType NaturalDomainType) ::
  { (sort((cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) } { (insertSorting(x, (sort(xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
  (sort((cons(x, xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (insertSorting(x, (sort(xs): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)
);

// Translation of domain axiom sumNil
axiom (forall t_2: NaturalDomainType ::
  { (sum_2((nil(t_2): ListDomainType NaturalDomainType)): NaturalDomainType) }
  (sum_2((nil(t_2): ListDomainType NaturalDomainType)): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom sumCons
axiom (forall n: NaturalDomainType, l_1: (ListDomainType NaturalDomainType) ::
  { (sum_2((cons(n, l_1): ListDomainType NaturalDomainType)): NaturalDomainType) } { (plus(n, (sum_2(l_1): NaturalDomainType)): NaturalDomainType) }
  (sum_2((cons(n, l_1): ListDomainType NaturalDomainType)): NaturalDomainType) == (plus(n, (sum_2(l_1): NaturalDomainType)): NaturalDomainType)
);

// Translation of domain axiom hasMultipleNil
axiom (forall t_2: NaturalDomainType ::
  { (hasMultiple((nil(t_2): ListDomainType NaturalDomainType)): bool) }
  !(hasMultiple((nil(t_2): ListDomainType NaturalDomainType)): bool)
);

// Translation of domain axiom hasMultipleCons
axiom (forall n: NaturalDomainType, l_1: (ListDomainType NaturalDomainType) ::
  { (hasMultiple((cons(n, l_1): ListDomainType NaturalDomainType)): bool) } { (less((successor((zero(): NaturalDomainType)): NaturalDomainType), n): bool), (hasMultiple(l_1): bool) }
  (hasMultiple((cons(n, l_1): ListDomainType NaturalDomainType)): bool) == ((less((successor((zero(): NaturalDomainType)): NaturalDomainType), n): bool) || (hasMultiple(l_1): bool))
);

// ==================================================
// Translation of domain Tree
// ==================================================

// The type for domain Tree
type TreeDomainType A;

// Translation of domain function leaf
function  leaf<A>(t_3: A): TreeDomainType A;

// Translation of domain function node
function  node_5<A>(l_2: (TreeDomainType A), e: A, r_4: (TreeDomainType A)): TreeDomainType A;

// Translation of domain function isLeafOrNode
function  isLeafOrNode<A>(t_3: (TreeDomainType A)): bool;

// Translation of domain function height
function  height_1<A>(t_3: (TreeDomainType A)): NaturalDomainType;

// Translation of domain function mirror
function  mirror<A>(t_3: (TreeDomainType A)): TreeDomainType A;

// Translation of domain axiom leafOrNode
axiom (forall <A> t_2: (TreeDomainType A) ::
  { (isLeafOrNode(t_2): bool) }
  (isLeafOrNode(t_2): bool)
);

// Translation of domain axiom isLeafOrNodeTree
axiom (forall <A> t_2: (TreeDomainType A) ::
  { (isLeafOrNode(t_2): bool) }
  (isLeafOrNode(t_2): bool) == ((exists a_2: A ::
    { (leaf(a_2): TreeDomainType A) }
    t_2 == (leaf(a_2): TreeDomainType A)
  ) || (exists l_1: (TreeDomainType A), e_1: A, r_1: (TreeDomainType A) ::
    { (node_5(l_1, e_1, r_1): TreeDomainType A) }
    t_2 == (node_5(l_1, e_1, r_1): TreeDomainType A)
  ))
);

// Translation of domain axiom heightLeaf
axiom (forall <A> t_2: A ::
  { (height_1((leaf(t_2): TreeDomainType A)): NaturalDomainType) }
  (height_1((leaf(t_2): TreeDomainType A)): NaturalDomainType) == (zero(): NaturalDomainType)
);

// Translation of domain axiom heightNode
axiom (forall <A> l_1: (TreeDomainType A), x: A, r_1: (TreeDomainType A) ::
  { (height_1((node_5(l_1, x, r_1): TreeDomainType A)): NaturalDomainType) }
  (height_1((node_5(l_1, x, r_1): TreeDomainType A)): NaturalDomainType) == (successor((maximum((height_1(l_1): NaturalDomainType), (height_1(r_1): NaturalDomainType)): NaturalDomainType)): NaturalDomainType)
);

// Translation of domain axiom mirrorLeaf
axiom (forall <A> t_2: A ::
  { (mirror((leaf(t_2): TreeDomainType A)): TreeDomainType A) }
  (mirror((leaf(t_2): TreeDomainType A)): TreeDomainType A) == (leaf(t_2): TreeDomainType A)
);

// Translation of domain axiom mirrorNode
axiom (forall <A> l_1: (TreeDomainType A), x: A, r_1: (TreeDomainType A) ::
  { (mirror((node_5(l_1, x, r_1): TreeDomainType A)): TreeDomainType A) } { (node_5((mirror(r_1): TreeDomainType A), x, (mirror(l_1): TreeDomainType A)): TreeDomainType A) }
  (mirror((node_5(l_1, x, r_1): TreeDomainType A)): TreeDomainType A) == (node_5((mirror(r_1): TreeDomainType A), x, (mirror(l_1): TreeDomainType A)): TreeDomainType A)
);

// ==================================================
// Translation of domain Any
// ==================================================

// The type for domain Any
type AnyDomainType;

// ==================================================
// Translation of method property01
// ==================================================

procedure property01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var l_0: (ListDomainType NaturalDomainType);
  var e_0: NaturalDomainType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var n_3_2: NaturalDomainType;
  var t_0_2: NaturalDomainType;
  var l_0_2: (ListDomainType NaturalDomainType);
  var e_0_2: NaturalDomainType;
  var n_5_2: NaturalDomainType;
  
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        
        // -- Check definedness of (forall n: Natural, xs: List[Natural] :: { (concatenate((take(n, xs): List[Natural]), (drop(n, xs): List[Natural])): List[Natural]) } (concatenate((take(n, xs): List[Natural]), (drop(n, xs): List[Natural])): List[Natural]) == xs)
          if (*) {
            assume false;
          }
        assume (forall n_1: NaturalDomainType, xs_1_2: (ListDomainType NaturalDomainType) ::
          { (concatenate((take(n_1, xs_1_2): ListDomainType NaturalDomainType), (drop(n_1, xs_1_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
          (concatenate((take(n_1, xs_1_2): ListDomainType NaturalDomainType), (drop(n_1, xs_1_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == xs_1_2
        );
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      
      // -- Check definedness of (forall t_0: Natural :: { (nil(t_0): List[Natural]) } (forall n_3: Natural :: { (concatenate((take(n_3, (nil(t_0): List[Natural])): List[Natural]), (drop(n_3, (nil(t_0): List[Natural])): List[Natural])): List[Natural]) } (concatenate((take(n_3, (nil(t_0): List[Natural])): List[Natural]), (drop(n_3, (nil(t_0): List[Natural])): List[Natural])): List[Natural]) == (nil(t_0): List[Natural])))
        if (*) {
          if (*) {
            assume false;
          }
          assume false;
        }
      assume (forall t_0_1: NaturalDomainType ::
        { (nil(t_0_1): ListDomainType NaturalDomainType) }
        (forall n_3_1_1: NaturalDomainType ::
          { (concatenate((take(n_3_1_1, (nil(t_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_3_1_1, (nil(t_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
          (concatenate((take(n_3_1_1, (nil(t_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_3_1_1, (nil(t_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (nil(t_0_1): ListDomainType NaturalDomainType)
        )
      );
      
      // -- Check definedness of (forall l_0: List[Natural] :: { (isNilOrCons(l_0): Bool) } (isNilOrCons(l_0): Bool) ==> (forall n_4: Natural :: { (concatenate((take(n_4, l_0): List[Natural]), (drop(n_4, l_0): List[Natural])): List[Natural]) } (concatenate((take(n_4, l_0): List[Natural]), (drop(n_4, l_0): List[Natural])): List[Natural]) == l_0) ==> (forall e_0: Natural :: { isZeroOrSuccessor(e_0) } { (cons(e_0, l_0): List[Natural]) } isZeroOrSuccessor(e_0) ==> (forall n_5: Natural :: { isZeroOrSuccessor(n_5) } { (concatenate((take(n_5, (cons(e_0, l_0): List[Natural])): List[Natural]), (drop(n_5, (cons(e_0, l_0): List[Natural])): List[Natural])): List[Natural]) } isZeroOrSuccessor(n_5) ==> (concatenate((take(n_5, (cons(e_0, l_0): List[Natural])): List[Natural]), (drop(n_5, (cons(e_0, l_0): List[Natural])): List[Natural])): List[Natural]) == (cons(e_0, l_0): List[Natural]))))
        if (*) {
          if ((isNilOrCons(l_0): bool)) {
            if (*) {
              assume false;
            }
            if ((forall n_4_1_1: NaturalDomainType ::
              { (concatenate((take(n_4_1_1, l_0): ListDomainType NaturalDomainType), (drop(n_4_1_1, l_0): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
              (concatenate((take(n_4_1_1, l_0): ListDomainType NaturalDomainType), (drop(n_4_1_1, l_0): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == l_0
            )) {
              if (*) {
                if ((isZeroOrSuccessor(e_0): bool)) {
                  if (*) {
                    assume false;
                  }
                }
                assume false;
              }
            }
          }
          assume false;
        }
      assume (forall l_0_1: (ListDomainType NaturalDomainType) ::
        { (isNilOrCons(l_0_1): bool) }
        (isNilOrCons(l_0_1): bool) ==> (forall n_4_2: NaturalDomainType ::
          { (concatenate((take(n_4_2, l_0_1): ListDomainType NaturalDomainType), (drop(n_4_2, l_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
          (concatenate((take(n_4_2, l_0_1): ListDomainType NaturalDomainType), (drop(n_4_2, l_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == l_0_1
        ) ==> (forall e_0_1: NaturalDomainType ::
          { (isZeroOrSuccessor(e_0_1): bool) } { (cons(e_0_1, l_0_1): ListDomainType NaturalDomainType) }
          (isZeroOrSuccessor(e_0_1): bool) ==> (forall n_5_1_1: NaturalDomainType ::
            { (isZeroOrSuccessor(n_5_1_1): bool) } { (concatenate((take(n_5_1_1, (cons(e_0_1, l_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_1_1, (cons(e_0_1, l_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
            (isZeroOrSuccessor(n_5_1_1): bool) ==> (concatenate((take(n_5_1_1, (cons(e_0_1, l_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_1_1, (cons(e_0_1, l_0_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (cons(e_0_1, l_0_1): ListDomainType NaturalDomainType)
          )
        )
      );
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (*) {
      if (*) {
        assert {:msg "  Postcondition of property01 might not hold. Assertion (concatenate((take(n_3, (nil(t_0): List[Natural])): List[Natural]), (drop(n_3, (nil(t_0): List[Natural])): List[Natural])): List[Natural]) == (nil(t_0): List[Natural]) might not hold. (0045.vpr@438.11--459.74) [71052]"}
          (concatenate((take(n_3_2, (nil(t_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_3_2, (nil(t_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (nil(t_0_2): ListDomainType NaturalDomainType);
        assume false;
      }
      assume (forall n_3_3_1: NaturalDomainType ::
        { (concatenate((take(n_3_3_1, (nil(t_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_3_3_1, (nil(t_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
        (concatenate((take(n_3_3_1, (nil(t_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_3_3_1, (nil(t_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (nil(t_0_2): ListDomainType NaturalDomainType)
      );
      assume false;
    }
    assume (forall t_0_3_1: NaturalDomainType ::
      { (nil(t_0_3_1): ListDomainType NaturalDomainType) }
      (forall n_3_4: NaturalDomainType ::
        { (concatenate((take(n_3_4, (nil(t_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_3_4, (nil(t_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
        (concatenate((take(n_3_4, (nil(t_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_3_4, (nil(t_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (nil(t_0_3_1): ListDomainType NaturalDomainType)
      )
    );
    if (*) {
      if ((isNilOrCons(l_0_2): bool)) {
        if ((forall n_4_3: NaturalDomainType ::
          { (concatenate((take(n_4_3, l_0_2): ListDomainType NaturalDomainType), (drop(n_4_3, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
          (concatenate((take(n_4_3, l_0_2): ListDomainType NaturalDomainType), (drop(n_4_3, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == l_0_2
        )) {
          if (*) {
            if ((isZeroOrSuccessor(e_0_2): bool)) {
              if (*) {
                if ((isZeroOrSuccessor(n_5_2): bool)) {
                  assert {:msg "  Postcondition of property01 might not hold. Assertion (concatenate((take(n_5, (cons(e_0, l_0): List[Natural])): List[Natural]), (drop(n_5, (cons(e_0, l_0): List[Natural])): List[Natural])): List[Natural]) == (cons(e_0, l_0): List[Natural]) might not hold. (0045.vpr@438.11--459.74) [71053]"}
                    (concatenate((take(n_5_2, (cons(e_0_2, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_2, (cons(e_0_2, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (cons(e_0_2, l_0_2): ListDomainType NaturalDomainType);
                }
                assume false;
              }
              assume (forall n_5_3_1: NaturalDomainType ::
                { (isZeroOrSuccessor(n_5_3_1): bool) } { (concatenate((take(n_5_3_1, (cons(e_0_2, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_3_1, (cons(e_0_2, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
                (isZeroOrSuccessor(n_5_3_1): bool) ==> (concatenate((take(n_5_3_1, (cons(e_0_2, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_3_1, (cons(e_0_2, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (cons(e_0_2, l_0_2): ListDomainType NaturalDomainType)
              );
            }
            assume false;
          }
          assume (forall e_0_3_1: NaturalDomainType ::
            { (isZeroOrSuccessor(e_0_3_1): bool) } { (cons(e_0_3_1, l_0_2): ListDomainType NaturalDomainType) }
            (isZeroOrSuccessor(e_0_3_1): bool) ==> (forall n_5_4: NaturalDomainType ::
              { (isZeroOrSuccessor(n_5_4): bool) } { (concatenate((take(n_5_4, (cons(e_0_3_1, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_4, (cons(e_0_3_1, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
              (isZeroOrSuccessor(n_5_4): bool) ==> (concatenate((take(n_5_4, (cons(e_0_3_1, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_4, (cons(e_0_3_1, l_0_2): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (cons(e_0_3_1, l_0_2): ListDomainType NaturalDomainType)
            )
          );
        }
      }
      assume false;
    }
    assume (forall l_0_3_1: (ListDomainType NaturalDomainType) ::
      { (isNilOrCons(l_0_3_1): bool) }
      (isNilOrCons(l_0_3_1): bool) ==> (forall n_4_4: NaturalDomainType ::
        { (concatenate((take(n_4_4, l_0_3_1): ListDomainType NaturalDomainType), (drop(n_4_4, l_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
        (concatenate((take(n_4_4, l_0_3_1): ListDomainType NaturalDomainType), (drop(n_4_4, l_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == l_0_3_1
      ) ==> (forall e_0_4: NaturalDomainType ::
        { (isZeroOrSuccessor(e_0_4): bool) } { (cons(e_0_4, l_0_3_1): ListDomainType NaturalDomainType) }
        (isZeroOrSuccessor(e_0_4): bool) ==> (forall n_5_5: NaturalDomainType ::
          { (isZeroOrSuccessor(n_5_5): bool) } { (concatenate((take(n_5_5, (cons(e_0_4, l_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_5, (cons(e_0_4, l_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) }
          (isZeroOrSuccessor(n_5_5): bool) ==> (concatenate((take(n_5_5, (cons(e_0_4, l_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType), (drop(n_5_5, (cons(e_0_4, l_0_3_1): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType)): ListDomainType NaturalDomainType) == (cons(e_0_4, l_0_3_1): ListDomainType NaturalDomainType)
        )
      )
    );
}