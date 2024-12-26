// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:20:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0302.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0302-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_8: Ref, f_12: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_8, f_12] }
  Heap[o_8, $allocated] ==> Heap[Heap[o_8, f_12], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref, f_44: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, f_44] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_38, f_44) ==> Heap[o_38, f_44] == ExhaleHeap[o_38, f_44]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21), ExhaleHeap[null, WandMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> Heap[null, WandMaskField(pm_f_21)] == ExhaleHeap[null, WandMaskField(pm_f_21)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_38, $allocated] ==> ExhaleHeap[o_38, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_8: Ref, f_8: (Field A B), v: B ::
  { Heap[o_8, f_8:=v] }
  succHeap(Heap, Heap[o_8, f_8:=v])
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(j_1: int): bool;
function  neverTriggered2(j_3_1: int): bool;
function  neverTriggered3(j_5_1: int): bool;
function  neverTriggered4(j_13_2: int): bool;
function  neverTriggered5(j_1: int): bool;
function  neverTriggered6(j_3_1: int): bool;
function  neverTriggered7(j_11_2: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: p
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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function length
function  length_1(a_3: ArrayDomainType): int;

// Translation of domain function ref_to_array
function  ref_to_array(ref_1: Ref): ArrayDomainType;

// Translation of domain function ref_to_index
function  ref_to_index(ref_1: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  0 <= i ==> (ref_to_array((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (ref_to_index((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: ArrayDomainType ::
  { (length_1(a_2): int) }
  (length_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function p
// ==================================================

// Uninterpreted function definitions
function  p(Heap: HeapType, q_1: int, size_1: int, rdAmount: Perm): Perm;
function  p'(Heap: HeapType, q_1: int, size_1: int, rdAmount: Perm): Perm;
axiom (forall Heap: HeapType, q_1: int, size_1: int, rdAmount: Perm ::
  { p(Heap, q_1, size_1, rdAmount) }
  p(Heap, q_1, size_1, rdAmount) == p'(Heap, q_1, size_1, rdAmount) && dummyFunction(p#triggerStateless(q_1, size_1, rdAmount))
);
axiom (forall Heap: HeapType, q_1: int, size_1: int, rdAmount: Perm ::
  { p'(Heap, q_1, size_1, rdAmount) }
  dummyFunction(p#triggerStateless(q_1, size_1, rdAmount))
);

// Framing axioms
function  p#frame(frame: FrameType, q_1: int, size_1: int, rdAmount: Perm): Perm;
axiom (forall Heap: HeapType, Mask: MaskType, q_1: int, size_1: int, rdAmount: Perm ::
  { state(Heap, Mask), p'(Heap, q_1, size_1, rdAmount) }
  state(Heap, Mask) ==> p'(Heap, q_1, size_1, rdAmount) == p#frame(EmptyFrame, q_1, size_1, rdAmount)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, q_1: int, size_1: int, rdAmount: Perm ::
  { state(Heap, Mask), p'(Heap, q_1, size_1, rdAmount) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || p#trigger_1(EmptyFrame, q_1, size_1, rdAmount)) ==> ((q_1 mod 2 != 0 && (size_1 >= 1 && (q_1 >= 0 && (size_1 >= 1 + q_1 && ((q_1 != 0 || p'(Heap, q_1, size_1, rdAmount) == FullPerm) && (q_1 == 0 || p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))) || ((q_1 mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= 0 && (q_1 >= -1 && (size_1 >= 1 + q_1 && p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))) || ((q_1 mod 2 != 0 && (q_1 mod 2 == 0 && (size_1 >= 1 + q_1 && (q_1 >= 0 && (q_1 >= 0 && (size_1 >= 1 + q_1 && p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))) || ((q_1 mod 2 != 0 && ((q_1 + 2) mod 2 == 0 && (size_1 >= 3 + q_1 && (q_1 >= 0 && (q_1 >= -2 && (size_1 >= 1 + q_1 && p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))) || ((q_1 mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= 0 && (q_1 >= -1 && (size_1 >= 1 + q_1 && p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))) || ((((q_1 + 1) mod 2 != 0 && (size_1 >= 1 && (q_1 >= -1 && (size_1 >= 2 + q_1 && ((q_1 != 0 || p'(Heap, q_1, size_1, rdAmount) == rdAmount) && ((q_1 == 0 || p'(Heap, q_1, size_1, rdAmount) == NoPerm) && (q_1 == 0 || p'(Heap, q_1, size_1, rdAmount) == NoPerm))))))) || (((q_1 + 1) mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -1 && (q_1 >= -1 && (size_1 >= 2 + q_1 && p'(Heap, q_1, size_1, rdAmount) == NoPerm)))))) || (((q_1 + 1) mod 2 != 0 && (q_1 mod 2 == 0 && (size_1 >= 1 + q_1 && (q_1 >= -1 && (q_1 >= 0 && (size_1 >= 2 + q_1 && p'(Heap, q_1, size_1, rdAmount) == rdAmount)))))) || (((q_1 + 1) mod 2 != 0 && ((q_1 + 2) mod 2 == 0 && (size_1 >= 3 + q_1 && (q_1 >= -1 && (q_1 >= -2 && (size_1 >= 2 + q_1 && p'(Heap, q_1, size_1, rdAmount) == NoPerm)))))) || ((q_1 + 1) mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -1 && (q_1 >= -1 && (size_1 >= 2 + q_1 && p'(Heap, q_1, size_1, rdAmount) == NoPerm)))))))))) || (((size_1 >= 1 && (size_1 >= 2 && ((q_1 != 0 || (q_1 == 1 || p'(Heap, q_1, size_1, rdAmount) == rdAmount)) && ((q_1 == 0 || (q_1 == 1 || p'(Heap, q_1, size_1, rdAmount) == NoPerm)) && ((q_1 == 1 || (q_1 == 0 || p'(Heap, q_1, size_1, rdAmount) == NoPerm)) && ((q_1 != 1 || (q_1 != 0 || p'(Heap, q_1, size_1, rdAmount) == FullPerm)) && (q_1 != 1 || (q_1 == 0 || p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))))) || (((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -1 && (size_1 >= 2 && ((q_1 == 1 || p'(Heap, q_1, size_1, rdAmount) == NoPerm) && (q_1 != 1 || p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))) || ((q_1 mod 2 == 0 && (size_1 >= 1 + q_1 && (q_1 >= 0 && (size_1 >= 2 && ((q_1 == 1 || p'(Heap, q_1, size_1, rdAmount) == rdAmount) && (q_1 != 1 || p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))) || (((q_1 + 2) mod 2 == 0 && (size_1 >= 3 + q_1 && (q_1 >= -2 && (size_1 >= 2 && ((q_1 == 1 || p'(Heap, q_1, size_1, rdAmount) == NoPerm) && (q_1 != 1 || p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))) || ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -1 && (size_1 >= 2 && ((q_1 == 1 || p'(Heap, q_1, size_1, rdAmount) == NoPerm) && (q_1 != 1 || p'(Heap, q_1, size_1, rdAmount) == FullPerm)))))))))) || (((q_1 + 2) mod 2 != 0 && (size_1 >= 1 && (q_1 >= -2 && (size_1 >= 3 + q_1 && ((q_1 != 0 || p'(Heap, q_1, size_1, rdAmount) == rdAmount) && ((q_1 == 0 || p'(Heap, q_1, size_1, rdAmount) == NoPerm) && (q_1 == 0 || p'(Heap, q_1, size_1, rdAmount) == NoPerm))))))) || (((q_1 + 2) mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -2 && (q_1 >= -1 && (size_1 >= 3 + q_1 && p'(Heap, q_1, size_1, rdAmount) == NoPerm)))))) || (((q_1 + 2) mod 2 != 0 && (q_1 mod 2 == 0 && (size_1 >= 1 + q_1 && (q_1 >= -2 && (q_1 >= 0 && (size_1 >= 3 + q_1 && p'(Heap, q_1, size_1, rdAmount) == rdAmount)))))) || (((q_1 + 2) mod 2 != 0 && ((q_1 + 2) mod 2 == 0 && (size_1 >= 3 + q_1 && (q_1 >= -2 && (q_1 >= -2 && (size_1 >= 3 + q_1 && p'(Heap, q_1, size_1, rdAmount) == NoPerm)))))) || ((q_1 + 2) mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -2 && (q_1 >= -1 && (size_1 >= 3 + q_1 && p'(Heap, q_1, size_1, rdAmount) == NoPerm))))))))))))))))) && (((q_1 + 1) mod 2 == 0 || (size_1 < 1 || (q_1 < -1 || (size_1 < 2 + q_1 || ((q_1 != 0 || rdAmount <= p'(Heap, q_1, size_1, rdAmount)) && ((q_1 == 0 || NoPerm <= p'(Heap, q_1, size_1, rdAmount)) && (q_1 == 0 || NoPerm <= p'(Heap, q_1, size_1, rdAmount)))))))) && (((q_1 + 1) mod 2 == 0 || (q_1 mod 2 != 0 || (size_1 < 1 + q_1 || (q_1 < -1 || (q_1 < 0 || (size_1 < 2 + q_1 || rdAmount <= p'(Heap, q_1, size_1, rdAmount))))))) && (((q_1 + 1) mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -1 || (q_1 < -1 || (size_1 < 2 + q_1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && (((q_1 + 1) mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -1 || (q_1 < -1 || (size_1 < 2 + q_1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && (((q_1 + 1) mod 2 == 0 || ((q_1 + 2) mod 2 != 0 || (size_1 < 3 + q_1 || (q_1 < -1 || (q_1 < -2 || (size_1 < 2 + q_1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && (((q_1 mod 2 == 0 || (size_1 < 1 || (q_1 < 0 || (size_1 < 1 + q_1 || ((q_1 != 0 || FullPerm <= p'(Heap, q_1, size_1, rdAmount)) && (q_1 == 0 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && ((q_1 mod 2 == 0 || (q_1 mod 2 != 0 || (size_1 < 1 + q_1 || (q_1 < 0 || (q_1 < 0 || (size_1 < 1 + q_1 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && ((q_1 mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < 0 || (q_1 < -1 || (size_1 < 1 + q_1 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && ((q_1 mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < 0 || (q_1 < -1 || (size_1 < 1 + q_1 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && (q_1 mod 2 == 0 || ((q_1 + 2) mod 2 != 0 || (size_1 < 3 + q_1 || (q_1 < 0 || (q_1 < -2 || (size_1 < 1 + q_1 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))))))) && (((size_1 < 1 || (size_1 < 2 || ((q_1 != 0 || (q_1 == 1 || rdAmount <= p'(Heap, q_1, size_1, rdAmount))) && ((q_1 == 0 || (q_1 == 1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount))) && ((q_1 == 1 || (q_1 == 0 || NoPerm <= p'(Heap, q_1, size_1, rdAmount))) && ((q_1 != 1 || (q_1 != 0 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))) && (q_1 != 1 || (q_1 == 0 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))))) && ((q_1 mod 2 != 0 || (size_1 < 1 + q_1 || (q_1 < 0 || (size_1 < 2 || ((q_1 == 1 || rdAmount <= p'(Heap, q_1, size_1, rdAmount)) && (q_1 != 1 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && (((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -1 || (size_1 < 2 || ((q_1 == 1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount)) && (q_1 != 1 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && (((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -1 || (size_1 < 2 || ((q_1 == 1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount)) && (q_1 != 1 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && ((q_1 + 2) mod 2 != 0 || (size_1 < 3 + q_1 || (q_1 < -2 || (size_1 < 2 || ((q_1 == 1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount)) && (q_1 != 1 || FullPerm <= p'(Heap, q_1, size_1, rdAmount))))))))))) && (((q_1 + 2) mod 2 == 0 || (size_1 < 1 || (q_1 < -2 || (size_1 < 3 + q_1 || ((q_1 != 0 || rdAmount <= p'(Heap, q_1, size_1, rdAmount)) && ((q_1 == 0 || NoPerm <= p'(Heap, q_1, size_1, rdAmount)) && (q_1 == 0 || NoPerm <= p'(Heap, q_1, size_1, rdAmount)))))))) && (((q_1 + 2) mod 2 == 0 || (q_1 mod 2 != 0 || (size_1 < 1 + q_1 || (q_1 < -2 || (q_1 < 0 || (size_1 < 3 + q_1 || rdAmount <= p'(Heap, q_1, size_1, rdAmount))))))) && (((q_1 + 2) mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -2 || (q_1 < -1 || (size_1 < 3 + q_1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && (((q_1 + 2) mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -2 || (q_1 < -1 || (size_1 < 3 + q_1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount))))))) && ((q_1 + 2) mod 2 == 0 || ((q_1 + 2) mod 2 != 0 || (size_1 < 3 + q_1 || (q_1 < -2 || (q_1 < -2 || (size_1 < 3 + q_1 || NoPerm <= p'(Heap, q_1, size_1, rdAmount))))))))))))))))))
);

// Trigger function (controlling recursive postconditions)
function  p#trigger_1(frame: FrameType, q_1: int, size_1: int, rdAmount: Perm): bool;

// State-independent trigger function
function  p#triggerStateless(q_1: int, size_1: int, rdAmount: Perm): Perm;

// Check contract well-formedness and postcondition
procedure p#definedness(q_1: int, size_1: int, rdAmount: Perm) returns (Result: Perm)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume (q_1 mod 2 != 0 && (size_1 >= 1 && (q_1 >= 0 && (size_1 >= 1 + q_1 && ((q_1 != 0 || Result == FullPerm) && (q_1 == 0 || Result == FullPerm)))))) || ((q_1 mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= 0 && (q_1 >= -1 && (size_1 >= 1 + q_1 && Result == FullPerm)))))) || ((q_1 mod 2 != 0 && (q_1 mod 2 == 0 && (size_1 >= 1 + q_1 && (q_1 >= 0 && (q_1 >= 0 && (size_1 >= 1 + q_1 && Result == FullPerm)))))) || ((q_1 mod 2 != 0 && ((q_1 + 2) mod 2 == 0 && (size_1 >= 3 + q_1 && (q_1 >= 0 && (q_1 >= -2 && (size_1 >= 1 + q_1 && Result == FullPerm)))))) || ((q_1 mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= 0 && (q_1 >= -1 && (size_1 >= 1 + q_1 && Result == FullPerm)))))) || ((((q_1 + 1) mod 2 != 0 && (size_1 >= 1 && (q_1 >= -1 && (size_1 >= 2 + q_1 && ((q_1 != 0 || Result == rdAmount) && ((q_1 == 0 || Result == NoPerm) && (q_1 == 0 || Result == NoPerm))))))) || (((q_1 + 1) mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -1 && (q_1 >= -1 && (size_1 >= 2 + q_1 && Result == NoPerm)))))) || (((q_1 + 1) mod 2 != 0 && (q_1 mod 2 == 0 && (size_1 >= 1 + q_1 && (q_1 >= -1 && (q_1 >= 0 && (size_1 >= 2 + q_1 && Result == rdAmount)))))) || (((q_1 + 1) mod 2 != 0 && ((q_1 + 2) mod 2 == 0 && (size_1 >= 3 + q_1 && (q_1 >= -1 && (q_1 >= -2 && (size_1 >= 2 + q_1 && Result == NoPerm)))))) || ((q_1 + 1) mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -1 && (q_1 >= -1 && (size_1 >= 2 + q_1 && Result == NoPerm)))))))))) || (((size_1 >= 1 && (size_1 >= 2 && ((q_1 != 0 || (q_1 == 1 || Result == rdAmount)) && ((q_1 == 0 || (q_1 == 1 || Result == NoPerm)) && ((q_1 == 1 || (q_1 == 0 || Result == NoPerm)) && ((q_1 != 1 || (q_1 != 0 || Result == FullPerm)) && (q_1 != 1 || (q_1 == 0 || Result == FullPerm)))))))) || (((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -1 && (size_1 >= 2 && ((q_1 == 1 || Result == NoPerm) && (q_1 != 1 || Result == FullPerm)))))) || ((q_1 mod 2 == 0 && (size_1 >= 1 + q_1 && (q_1 >= 0 && (size_1 >= 2 && ((q_1 == 1 || Result == rdAmount) && (q_1 != 1 || Result == FullPerm)))))) || (((q_1 + 2) mod 2 == 0 && (size_1 >= 3 + q_1 && (q_1 >= -2 && (size_1 >= 2 && ((q_1 == 1 || Result == NoPerm) && (q_1 != 1 || Result == FullPerm)))))) || ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -1 && (size_1 >= 2 && ((q_1 == 1 || Result == NoPerm) && (q_1 != 1 || Result == FullPerm)))))))))) || (((q_1 + 2) mod 2 != 0 && (size_1 >= 1 && (q_1 >= -2 && (size_1 >= 3 + q_1 && ((q_1 != 0 || Result == rdAmount) && ((q_1 == 0 || Result == NoPerm) && (q_1 == 0 || Result == NoPerm))))))) || (((q_1 + 2) mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -2 && (q_1 >= -1 && (size_1 >= 3 + q_1 && Result == NoPerm)))))) || (((q_1 + 2) mod 2 != 0 && (q_1 mod 2 == 0 && (size_1 >= 1 + q_1 && (q_1 >= -2 && (q_1 >= 0 && (size_1 >= 3 + q_1 && Result == rdAmount)))))) || (((q_1 + 2) mod 2 != 0 && ((q_1 + 2) mod 2 == 0 && (size_1 >= 3 + q_1 && (q_1 >= -2 && (q_1 >= -2 && (size_1 >= 3 + q_1 && Result == NoPerm)))))) || ((q_1 + 2) mod 2 != 0 && ((q_1 + 1) mod 2 == 0 && (size_1 >= 2 + q_1 && (q_1 >= -2 && (q_1 >= -1 && (size_1 >= 3 + q_1 && Result == NoPerm))))))))))))))));
    assume (q_1 + 1) mod 2 == 0 || (size_1 < 1 || (q_1 < -1 || (size_1 < 2 + q_1 || ((q_1 != 0 || rdAmount <= Result) && ((q_1 == 0 || NoPerm <= Result) && (q_1 == 0 || NoPerm <= Result))))));
    assume (q_1 + 1) mod 2 == 0 || (q_1 mod 2 != 0 || (size_1 < 1 + q_1 || (q_1 < -1 || (q_1 < 0 || (size_1 < 2 + q_1 || rdAmount <= Result)))));
    assume (q_1 + 1) mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -1 || (q_1 < -1 || (size_1 < 2 + q_1 || NoPerm <= Result)))));
    assume (q_1 + 1) mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -1 || (q_1 < -1 || (size_1 < 2 + q_1 || NoPerm <= Result)))));
    assume (q_1 + 1) mod 2 == 0 || ((q_1 + 2) mod 2 != 0 || (size_1 < 3 + q_1 || (q_1 < -1 || (q_1 < -2 || (size_1 < 2 + q_1 || NoPerm <= Result)))));
    assume q_1 mod 2 == 0 || (size_1 < 1 || (q_1 < 0 || (size_1 < 1 + q_1 || ((q_1 != 0 || FullPerm <= Result) && (q_1 == 0 || FullPerm <= Result)))));
    assume q_1 mod 2 == 0 || (q_1 mod 2 != 0 || (size_1 < 1 + q_1 || (q_1 < 0 || (q_1 < 0 || (size_1 < 1 + q_1 || FullPerm <= Result)))));
    assume q_1 mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < 0 || (q_1 < -1 || (size_1 < 1 + q_1 || FullPerm <= Result)))));
    assume q_1 mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < 0 || (q_1 < -1 || (size_1 < 1 + q_1 || FullPerm <= Result)))));
    assume q_1 mod 2 == 0 || ((q_1 + 2) mod 2 != 0 || (size_1 < 3 + q_1 || (q_1 < 0 || (q_1 < -2 || (size_1 < 1 + q_1 || FullPerm <= Result)))));
    assume size_1 < 1 || (size_1 < 2 || ((q_1 != 0 || (q_1 == 1 || rdAmount <= Result)) && ((q_1 == 0 || (q_1 == 1 || NoPerm <= Result)) && ((q_1 == 1 || (q_1 == 0 || NoPerm <= Result)) && ((q_1 != 1 || (q_1 != 0 || FullPerm <= Result)) && (q_1 != 1 || (q_1 == 0 || FullPerm <= Result)))))));
    assume q_1 mod 2 != 0 || (size_1 < 1 + q_1 || (q_1 < 0 || (size_1 < 2 || ((q_1 == 1 || rdAmount <= Result) && (q_1 != 1 || FullPerm <= Result)))));
    assume (q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -1 || (size_1 < 2 || ((q_1 == 1 || NoPerm <= Result) && (q_1 != 1 || FullPerm <= Result)))));
    assume (q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -1 || (size_1 < 2 || ((q_1 == 1 || NoPerm <= Result) && (q_1 != 1 || FullPerm <= Result)))));
    assume (q_1 + 2) mod 2 != 0 || (size_1 < 3 + q_1 || (q_1 < -2 || (size_1 < 2 || ((q_1 == 1 || NoPerm <= Result) && (q_1 != 1 || FullPerm <= Result)))));
    assume (q_1 + 2) mod 2 == 0 || (size_1 < 1 || (q_1 < -2 || (size_1 < 3 + q_1 || ((q_1 != 0 || rdAmount <= Result) && ((q_1 == 0 || NoPerm <= Result) && (q_1 == 0 || NoPerm <= Result))))));
    assume (q_1 + 2) mod 2 == 0 || (q_1 mod 2 != 0 || (size_1 < 1 + q_1 || (q_1 < -2 || (q_1 < 0 || (size_1 < 3 + q_1 || rdAmount <= Result)))));
    assume (q_1 + 2) mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -2 || (q_1 < -1 || (size_1 < 3 + q_1 || NoPerm <= Result)))));
    assume (q_1 + 2) mod 2 == 0 || ((q_1 + 1) mod 2 != 0 || (size_1 < 2 + q_1 || (q_1 < -2 || (q_1 < -1 || (size_1 < 3 + q_1 || NoPerm <= Result)))));
    assume (q_1 + 2) mod 2 == 0 || ((q_1 + 2) mod 2 != 0 || (size_1 < 3 + q_1 || (q_1 < -2 || (q_1 < -2 || (size_1 < 3 + q_1 || NoPerm <= Result)))));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testspec_skipping_indices1
// ==================================================

procedure testspec_skipping_indices1(arr: ArrayDomainType, size_1: int, rdAmount: Perm) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_7_1: int;
  var j_10_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume NoPerm < rdAmount;
    assume rdAmount < FullPerm;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { loc(arr, j) } { p(j, size, rdAmount) } acc(loc(arr, j).val, p(j, size, rdAmount)))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr, j).val might not be injective. (0302.vpr@30.13--30.72) [198602]"}
      (forall j_1: int, j_1_1: int ::
      
      (j_1 != j_1_1 && NoPerm < p(Heap, j_1, size_1, rdAmount)) && NoPerm < p(Heap, j_1_1, size_1, rdAmount) ==> (loc(arr, j_1): Ref) != (loc(arr, j_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { (loc(arr, j_1): Ref) } { (loc(arr, j_1): Ref) } { p#frame(EmptyFrame, j_1, size_1, rdAmount) }
        NoPerm < p(Heap, j_1, size_1, rdAmount) ==> qpRange1((loc(arr, j_1): Ref)) && invRecv1((loc(arr, j_1): Ref)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        NoPerm < p(Heap, invRecv1(o_4), size_1, rdAmount) && qpRange1(o_4) ==> (loc(arr, invRecv1(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p(j, size, rdAmount) might be negative. (0302.vpr@30.13--30.72) [198603]"}
      (forall j_1: int ::
      { (loc(arr, j_1): Ref) } { (loc(arr, j_1): Ref) } { p#frame(EmptyFrame, j_1, size_1, rdAmount) }
      p(Heap, j_1, size_1, rdAmount) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { (loc(arr, j_1): Ref) } { (loc(arr, j_1): Ref) } { p#frame(EmptyFrame, j_1, size_1, rdAmount) }
        p(Heap, j_1, size_1, rdAmount) > NoPerm ==> (loc(arr, j_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < p(Heap, invRecv1(o_4), size_1, rdAmount) && qpRange1(o_4) ==> (NoPerm < p(Heap, invRecv1(o_4), size_1, rdAmount) ==> (loc(arr, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + p(Heap, invRecv1(o_4), size_1, rdAmount)) && (!(NoPerm < p(Heap, invRecv1(o_4), size_1, rdAmount) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall j: Int ::
  //     { loc(arr, j) }
  //     acc(loc(arr, j).val, (j < 0 || j >= size ? none : write))) -- 0302.vpr@33.5--33.84
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall j: Int :: { loc(arr, j) } acc(loc(arr, j).val, (j < 0 || j >= size ? none : write)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction (j < 0 || j >= size ? none : write) might be negative. (0302.vpr@33.12--33.84) [198604]"}
        (forall j_3_1: int ::
        { (loc(arr, j_3_1): Ref) } { (loc(arr, j_3_1): Ref) }
        dummyFunction(AssertHeap[(loc(arr, j_3_1): Ref), val]) ==> (if j_3_1 < 0 || j_3_1 >= size_1 then NoPerm else FullPerm) >= NoPerm
      );
    
    // -- check if receiver loc(arr, j) is injective
      assert {:msg "  Assert might fail. Quantified resource loc(arr, j).val might not be injective. (0302.vpr@33.12--33.84) [198605]"}
        (forall j_3_1: int, j_3_2: int ::
        { neverTriggered2(j_3_1), neverTriggered2(j_3_2) }
        (j_3_1 != j_3_2 && NoPerm < (if j_3_1 < 0 || j_3_1 >= size_1 then NoPerm else FullPerm)) && NoPerm < (if j_3_2 < 0 || j_3_2 >= size_1 then NoPerm else FullPerm) ==> (loc(arr, j_3_1): Ref) != (loc(arr, j_3_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(arr, j).val (0302.vpr@33.12--33.84) [198606]"}
        (forall j_3_1: int ::
        { (loc(arr, j_3_1): Ref) } { (loc(arr, j_3_1): Ref) }
        AssertMask[(loc(arr, j_3_1): Ref), val] >= (if j_3_1 < 0 || j_3_1 >= size_1 then NoPerm else FullPerm)
      );
    
    // -- assumptions for inverse of receiver loc(arr, j)
      assume (forall j_3_1: int ::
        { (loc(arr, j_3_1): Ref) } { (loc(arr, j_3_1): Ref) }
        NoPerm < (if j_3_1 < 0 || j_3_1 >= size_1 then NoPerm else FullPerm) ==> qpRange2((loc(arr, j_3_1): Ref)) && invRecv2((loc(arr, j_3_1): Ref)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        NoPerm < (if invRecv2(o_4) < 0 || invRecv2(o_4) >= size_1 then NoPerm else FullPerm) && qpRange2(o_4) ==> (loc(arr, invRecv2(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < (if invRecv2(o_4) < 0 || invRecv2(o_4) >= size_1 then NoPerm else FullPerm) && qpRange2(o_4) ==> (loc(arr, invRecv2(o_4)): Ref) == o_4 && QPMask[o_4, val] == AssertMask[o_4, val] - (if invRecv2(o_4) < 0 || invRecv2(o_4) >= size_1 then NoPerm else FullPerm)) && (!(NoPerm < (if invRecv2(o_4) < 0 || invRecv2(o_4) >= size_1 then NoPerm else FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == AssertMask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { loc(arr, j) }
  //     acc(loc(arr, j).val, (j < 0 || j >= size ?
  //       none :
  //       (j % 2 == 0 ? rdAmount : write)))) -- 0302.vpr@34.5--34.110
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall j: Int :: { loc(arr, j) } acc(loc(arr, j).val, (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write))))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) might be negative. (0302.vpr@34.12--34.110) [198607]"}
        (forall j_5_1: int ::
        { (loc(arr, j_5_1): Ref) } { (loc(arr, j_5_1): Ref) }
        dummyFunction(AssertHeap[(loc(arr, j_5_1): Ref), val]) ==> (if j_5_1 < 0 || j_5_1 >= size_1 then NoPerm else (if j_5_1 mod 2 == 0 then rdAmount else FullPerm)) >= NoPerm
      );
    
    // -- check if receiver loc(arr, j) is injective
      assert {:msg "  Assert might fail. Quantified resource loc(arr, j).val might not be injective. (0302.vpr@34.12--34.110) [198608]"}
        (forall j_5_1: int, j_5_2: int ::
        { neverTriggered3(j_5_1), neverTriggered3(j_5_2) }
        (j_5_1 != j_5_2 && NoPerm < (if j_5_1 < 0 || j_5_1 >= size_1 then NoPerm else (if j_5_1 mod 2 == 0 then rdAmount else FullPerm))) && NoPerm < (if j_5_2 < 0 || j_5_2 >= size_1 then NoPerm else (if j_5_2 mod 2 == 0 then rdAmount else FullPerm)) ==> (loc(arr, j_5_1): Ref) != (loc(arr, j_5_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(arr, j).val (0302.vpr@34.12--34.110) [198609]"}
        (forall j_5_1: int ::
        { (loc(arr, j_5_1): Ref) } { (loc(arr, j_5_1): Ref) }
        AssertMask[(loc(arr, j_5_1): Ref), val] >= (if j_5_1 < 0 || j_5_1 >= size_1 then NoPerm else (if j_5_1 mod 2 == 0 then rdAmount else FullPerm))
      );
    
    // -- assumptions for inverse of receiver loc(arr, j)
      assume (forall j_5_1: int ::
        { (loc(arr, j_5_1): Ref) } { (loc(arr, j_5_1): Ref) }
        NoPerm < (if j_5_1 < 0 || j_5_1 >= size_1 then NoPerm else (if j_5_1 mod 2 == 0 then rdAmount else FullPerm)) ==> qpRange3((loc(arr, j_5_1): Ref)) && invRecv3((loc(arr, j_5_1): Ref)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        NoPerm < (if invRecv3(o_4) < 0 || invRecv3(o_4) >= size_1 then NoPerm else (if invRecv3(o_4) mod 2 == 0 then rdAmount else FullPerm)) && qpRange3(o_4) ==> (loc(arr, invRecv3(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < (if invRecv3(o_4) < 0 || invRecv3(o_4) >= size_1 then NoPerm else (if invRecv3(o_4) mod 2 == 0 then rdAmount else FullPerm)) && qpRange3(o_4) ==> (loc(arr, invRecv3(o_4)): Ref) == o_4 && QPMask[o_4, val] == AssertMask[o_4, val] - (if invRecv3(o_4) < 0 || invRecv3(o_4) >= size_1 then NoPerm else (if invRecv3(o_4) mod 2 == 0 then rdAmount else FullPerm))) && (!(NoPerm < (if invRecv3(o_4) < 0 || invRecv3(o_4) >= size_1 then NoPerm else (if invRecv3(o_4) mod 2 == 0 then rdAmount else FullPerm)) && qpRange3(o_4)) ==> QPMask[o_4, val] == AssertMask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { p(j, size, rdAmount) }
  //     (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) <=
  //     p(j, size, rdAmount)) -- 0302.vpr@35.5--35.113
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { p(j, size, rdAmount) } (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) <= p(j, size, rdAmount))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) <= p(j, size, rdAmount) might not hold. (0302.vpr@35.12--35.113) [198610]"}
        (if j_7_1 < 0 || j_7_1 >= size_1 then NoPerm else (if j_7_1 mod 2 == 0 then rdAmount else FullPerm)) <= p(Heap, j_7_1, size_1, rdAmount);
      assume false;
    }
    assume (forall j_8_1_1: int ::
      { p#frame(EmptyFrame, j_8_1_1, size_1, rdAmount) }
      (if j_8_1_1 < 0 || j_8_1_1 >= size_1 then NoPerm else (if j_8_1_1 mod 2 == 0 then rdAmount else FullPerm)) <= p(Heap, j_8_1_1, size_1, rdAmount)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { p(j, size, rdAmount) }
  //     (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) >=
  //     p(j, size, rdAmount)) -- 0302.vpr@36.5--36.113
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { p(j, size, rdAmount) } (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) >= p(j, size, rdAmount))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) >= p(j, size, rdAmount) might not hold. (0302.vpr@36.12--36.113) [198611]"}
        p(Heap, j_10_2, size_1, rdAmount) <= (if j_10_2 < 0 || j_10_2 >= size_1 then NoPerm else (if j_10_2 mod 2 == 0 then rdAmount else FullPerm));
      assume false;
    }
    assume (forall j_11_1: int ::
      { p#frame(EmptyFrame, j_11_1, size_1, rdAmount) }
      p(Heap, j_11_1, size_1, rdAmount) <= (if j_11_1 < 0 || j_11_1 >= size_1 then NoPerm else (if j_11_1 mod 2 == 0 then rdAmount else FullPerm))
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { loc(arr, j) }
  //     acc(loc(arr, j).val, (j < 0 || j >= size ? none : write))) -- 0302.vpr@37.5--37.84
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall j: Int :: { loc(arr, j) } acc(loc(arr, j).val, (j < 0 || j >= size ? none : write)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction (j < 0 || j >= size ? none : write) might be negative. (0302.vpr@37.12--37.84) [198612]"}
        (forall j_13_2: int ::
        { (loc(arr, j_13_2): Ref) } { (loc(arr, j_13_2): Ref) }
        dummyFunction(AssertHeap[(loc(arr, j_13_2): Ref), val]) ==> (if j_13_2 < 0 || j_13_2 >= size_1 then NoPerm else FullPerm) >= NoPerm
      );
    
    // -- check if receiver loc(arr, j) is injective
      assert {:msg "  Assert might fail. Quantified resource loc(arr, j).val might not be injective. (0302.vpr@37.12--37.84) [198613]"}
        (forall j_13_2: int, j_13_3: int ::
        { neverTriggered4(j_13_2), neverTriggered4(j_13_3) }
        (j_13_2 != j_13_3 && NoPerm < (if j_13_2 < 0 || j_13_2 >= size_1 then NoPerm else FullPerm)) && NoPerm < (if j_13_3 < 0 || j_13_3 >= size_1 then NoPerm else FullPerm) ==> (loc(arr, j_13_2): Ref) != (loc(arr, j_13_3): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(arr, j).val (0302.vpr@37.12--37.84) [198614]"}
        (forall j_13_2: int ::
        { (loc(arr, j_13_2): Ref) } { (loc(arr, j_13_2): Ref) }
        AssertMask[(loc(arr, j_13_2): Ref), val] >= (if j_13_2 < 0 || j_13_2 >= size_1 then NoPerm else FullPerm)
      );
    
    // -- assumptions for inverse of receiver loc(arr, j)
      assume (forall j_13_2: int ::
        { (loc(arr, j_13_2): Ref) } { (loc(arr, j_13_2): Ref) }
        NoPerm < (if j_13_2 < 0 || j_13_2 >= size_1 then NoPerm else FullPerm) ==> qpRange4((loc(arr, j_13_2): Ref)) && invRecv4((loc(arr, j_13_2): Ref)) == j_13_2
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        NoPerm < (if invRecv4(o_4) < 0 || invRecv4(o_4) >= size_1 then NoPerm else FullPerm) && qpRange4(o_4) ==> (loc(arr, invRecv4(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < (if invRecv4(o_4) < 0 || invRecv4(o_4) >= size_1 then NoPerm else FullPerm) && qpRange4(o_4) ==> (loc(arr, invRecv4(o_4)): Ref) == o_4 && QPMask[o_4, val] == AssertMask[o_4, val] - (if invRecv4(o_4) < 0 || invRecv4(o_4) >= size_1 then NoPerm else FullPerm)) && (!(NoPerm < (if invRecv4(o_4) < 0 || invRecv4(o_4) >= size_1 then NoPerm else FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, val] == AssertMask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testspec_skipping_indices2
// ==================================================

procedure testspec_skipping_indices2(arr: ArrayDomainType, size_1: int, rdAmount: Perm) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_5_1: int;
  var j_8: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume NoPerm < rdAmount;
    assume rdAmount < FullPerm;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { loc(arr, j) } { p(j, size, rdAmount) } acc(loc(arr, j).val, p(j, size, rdAmount)))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr, j).val might not be injective. (0302.vpr@42.13--42.72) [198615]"}
      (forall j_1: int, j_1_1: int ::
      
      (j_1 != j_1_1 && NoPerm < p(Heap, j_1, size_1, rdAmount)) && NoPerm < p(Heap, j_1_1, size_1, rdAmount) ==> (loc(arr, j_1): Ref) != (loc(arr, j_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { (loc(arr, j_1): Ref) } { (loc(arr, j_1): Ref) } { p#frame(EmptyFrame, j_1, size_1, rdAmount) }
        NoPerm < p(Heap, j_1, size_1, rdAmount) ==> qpRange5((loc(arr, j_1): Ref)) && invRecv5((loc(arr, j_1): Ref)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        NoPerm < p(Heap, invRecv5(o_4), size_1, rdAmount) && qpRange5(o_4) ==> (loc(arr, invRecv5(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p(j, size, rdAmount) might be negative. (0302.vpr@42.13--42.72) [198616]"}
      (forall j_1: int ::
      { (loc(arr, j_1): Ref) } { (loc(arr, j_1): Ref) } { p#frame(EmptyFrame, j_1, size_1, rdAmount) }
      p(Heap, j_1, size_1, rdAmount) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { (loc(arr, j_1): Ref) } { (loc(arr, j_1): Ref) } { p#frame(EmptyFrame, j_1, size_1, rdAmount) }
        p(Heap, j_1, size_1, rdAmount) > NoPerm ==> (loc(arr, j_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < p(Heap, invRecv5(o_4), size_1, rdAmount) && qpRange5(o_4) ==> (NoPerm < p(Heap, invRecv5(o_4), size_1, rdAmount) ==> (loc(arr, invRecv5(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + p(Heap, invRecv5(o_4), size_1, rdAmount)) && (!(NoPerm < p(Heap, invRecv5(o_4), size_1, rdAmount) && qpRange5(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall j: Int ::
  //     { loc(arr, j) }
  //     acc(loc(arr, j).val, (j < 0 || j >= size ?
  //       none :
  //       (j % 2 == 0 ? rdAmount : write)))) -- 0302.vpr@45.5--45.110
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall j: Int :: { loc(arr, j) } acc(loc(arr, j).val, (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write))))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) might be negative. (0302.vpr@45.12--45.110) [198617]"}
        (forall j_3_1: int ::
        { (loc(arr, j_3_1): Ref) } { (loc(arr, j_3_1): Ref) }
        dummyFunction(AssertHeap[(loc(arr, j_3_1): Ref), val]) ==> (if j_3_1 < 0 || j_3_1 >= size_1 then NoPerm else (if j_3_1 mod 2 == 0 then rdAmount else FullPerm)) >= NoPerm
      );
    
    // -- check if receiver loc(arr, j) is injective
      assert {:msg "  Assert might fail. Quantified resource loc(arr, j).val might not be injective. (0302.vpr@45.12--45.110) [198618]"}
        (forall j_3_1: int, j_3_2: int ::
        { neverTriggered6(j_3_1), neverTriggered6(j_3_2) }
        (j_3_1 != j_3_2 && NoPerm < (if j_3_1 < 0 || j_3_1 >= size_1 then NoPerm else (if j_3_1 mod 2 == 0 then rdAmount else FullPerm))) && NoPerm < (if j_3_2 < 0 || j_3_2 >= size_1 then NoPerm else (if j_3_2 mod 2 == 0 then rdAmount else FullPerm)) ==> (loc(arr, j_3_1): Ref) != (loc(arr, j_3_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(arr, j).val (0302.vpr@45.12--45.110) [198619]"}
        (forall j_3_1: int ::
        { (loc(arr, j_3_1): Ref) } { (loc(arr, j_3_1): Ref) }
        AssertMask[(loc(arr, j_3_1): Ref), val] >= (if j_3_1 < 0 || j_3_1 >= size_1 then NoPerm else (if j_3_1 mod 2 == 0 then rdAmount else FullPerm))
      );
    
    // -- assumptions for inverse of receiver loc(arr, j)
      assume (forall j_3_1: int ::
        { (loc(arr, j_3_1): Ref) } { (loc(arr, j_3_1): Ref) }
        NoPerm < (if j_3_1 < 0 || j_3_1 >= size_1 then NoPerm else (if j_3_1 mod 2 == 0 then rdAmount else FullPerm)) ==> qpRange6((loc(arr, j_3_1): Ref)) && invRecv6((loc(arr, j_3_1): Ref)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        NoPerm < (if invRecv6(o_4) < 0 || invRecv6(o_4) >= size_1 then NoPerm else (if invRecv6(o_4) mod 2 == 0 then rdAmount else FullPerm)) && qpRange6(o_4) ==> (loc(arr, invRecv6(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < (if invRecv6(o_4) < 0 || invRecv6(o_4) >= size_1 then NoPerm else (if invRecv6(o_4) mod 2 == 0 then rdAmount else FullPerm)) && qpRange6(o_4) ==> (loc(arr, invRecv6(o_4)): Ref) == o_4 && QPMask[o_4, val] == AssertMask[o_4, val] - (if invRecv6(o_4) < 0 || invRecv6(o_4) >= size_1 then NoPerm else (if invRecv6(o_4) mod 2 == 0 then rdAmount else FullPerm))) && (!(NoPerm < (if invRecv6(o_4) < 0 || invRecv6(o_4) >= size_1 then NoPerm else (if invRecv6(o_4) mod 2 == 0 then rdAmount else FullPerm)) && qpRange6(o_4)) ==> QPMask[o_4, val] == AssertMask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { p(j, size, rdAmount) }
  //     (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) <=
  //     p(j, size, rdAmount)) -- 0302.vpr@46.5--46.113
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { p(j, size, rdAmount) } (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) <= p(j, size, rdAmount))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) <= p(j, size, rdAmount) might not hold. (0302.vpr@46.12--46.113) [198620]"}
        (if j_5_1 < 0 || j_5_1 >= size_1 then NoPerm else (if j_5_1 mod 2 == 0 then rdAmount else FullPerm)) <= p(Heap, j_5_1, size_1, rdAmount);
      assume false;
    }
    assume (forall j_6_1_1: int ::
      { p#frame(EmptyFrame, j_6_1_1, size_1, rdAmount) }
      (if j_6_1_1 < 0 || j_6_1_1 >= size_1 then NoPerm else (if j_6_1_1 mod 2 == 0 then rdAmount else FullPerm)) <= p(Heap, j_6_1_1, size_1, rdAmount)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { p(j, size, rdAmount) }
  //     (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) >=
  //     p(j, size, rdAmount)) -- 0302.vpr@47.5--47.113
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { p(j, size, rdAmount) } (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) >= p(j, size, rdAmount))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion (j < 0 || j >= size ? none : (j % 2 == 0 ? rdAmount : write)) >= p(j, size, rdAmount) might not hold. (0302.vpr@47.12--47.113) [198621]"}
        p(Heap, j_8, size_1, rdAmount) <= (if j_8 < 0 || j_8 >= size_1 then NoPerm else (if j_8 mod 2 == 0 then rdAmount else FullPerm));
      assume false;
    }
    assume (forall j_9_1_1: int ::
      { p#frame(EmptyFrame, j_9_1_1, size_1, rdAmount) }
      p(Heap, j_9_1_1, size_1, rdAmount) <= (if j_9_1_1 < 0 || j_9_1_1 >= size_1 then NoPerm else (if j_9_1_1 mod 2 == 0 then rdAmount else FullPerm))
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { loc(arr, j) }
  //     acc(loc(arr, j).val, (j < 0 || j >= size ? none : write))) -- 0302.vpr@49.5--49.84
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall j: Int :: { loc(arr, j) } acc(loc(arr, j).val, (j < 0 || j >= size ? none : write)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction (j < 0 || j >= size ? none : write) might be negative. (0302.vpr@49.12--49.84) [198622]"}
        (forall j_11_2: int ::
        { (loc(arr, j_11_2): Ref) } { (loc(arr, j_11_2): Ref) }
        dummyFunction(AssertHeap[(loc(arr, j_11_2): Ref), val]) ==> (if j_11_2 < 0 || j_11_2 >= size_1 then NoPerm else FullPerm) >= NoPerm
      );
    
    // -- check if receiver loc(arr, j) is injective
      assert {:msg "  Assert might fail. Quantified resource loc(arr, j).val might not be injective. (0302.vpr@49.12--49.84) [198623]"}
        (forall j_11_2: int, j_11_3: int ::
        { neverTriggered7(j_11_2), neverTriggered7(j_11_3) }
        (j_11_2 != j_11_3 && NoPerm < (if j_11_2 < 0 || j_11_2 >= size_1 then NoPerm else FullPerm)) && NoPerm < (if j_11_3 < 0 || j_11_3 >= size_1 then NoPerm else FullPerm) ==> (loc(arr, j_11_2): Ref) != (loc(arr, j_11_3): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(arr, j).val (0302.vpr@49.12--49.84) [198624]"}
        (forall j_11_2: int ::
        { (loc(arr, j_11_2): Ref) } { (loc(arr, j_11_2): Ref) }
        AssertMask[(loc(arr, j_11_2): Ref), val] >= (if j_11_2 < 0 || j_11_2 >= size_1 then NoPerm else FullPerm)
      );
    
    // -- assumptions for inverse of receiver loc(arr, j)
      assume (forall j_11_2: int ::
        { (loc(arr, j_11_2): Ref) } { (loc(arr, j_11_2): Ref) }
        NoPerm < (if j_11_2 < 0 || j_11_2 >= size_1 then NoPerm else FullPerm) ==> qpRange7((loc(arr, j_11_2): Ref)) && invRecv7((loc(arr, j_11_2): Ref)) == j_11_2
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        NoPerm < (if invRecv7(o_4) < 0 || invRecv7(o_4) >= size_1 then NoPerm else FullPerm) && qpRange7(o_4) ==> (loc(arr, invRecv7(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < (if invRecv7(o_4) < 0 || invRecv7(o_4) >= size_1 then NoPerm else FullPerm) && qpRange7(o_4) ==> (loc(arr, invRecv7(o_4)): Ref) == o_4 && QPMask[o_4, val] == AssertMask[o_4, val] - (if invRecv7(o_4) < 0 || invRecv7(o_4) >= size_1 then NoPerm else FullPerm)) && (!(NoPerm < (if invRecv7(o_4) < 0 || invRecv7(o_4) >= size_1 then NoPerm else FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, val] == AssertMask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}