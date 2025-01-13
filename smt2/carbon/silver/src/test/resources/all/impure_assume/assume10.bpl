// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:16:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/assume10.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/assume10-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain __ns__impure_assume_rewriter
// ==================================================

// The type for domain __ns__impure_assume_rewriter
type __ns__impure_assume_rewriterDomainType;

// Translation of domain function __iar__assume_helper_1
function  __iar__assume_helper_1(c_1_2: bool, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_2
function  __iar__assume_helper_2(c_2_2: bool, c_1_2: bool, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_3
function  __iar__assume_helper_3(c_3_2: bool, c_2_2: bool, c_1_2: bool, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_4
function  __iar__assume_helper_4(c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_5
function  __iar__assume_helper_5(c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_6
function  __iar__assume_helper_6(c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_7
function  __iar__assume_helper_7(c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_8
function  __iar__assume_helper_8(c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_9
function  __iar__assume_helper_9(c_9_2: bool, c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_9_2: Perm, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_10
function  __iar__assume_helper_10(c_10_1: bool, c_9_2: bool, c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_10_1: Perm, p_9_2: Perm, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain axiom __iar__assume_helper_1_axiom
axiom (forall c_1: bool, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_2_axiom
axiom (forall c_2: bool, c_1: bool, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_2(c_2, c_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_2(c_2, c_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_3_axiom
axiom (forall c_3: bool, c_2: bool, c_1: bool, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_3(c_3, c_2, c_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_3(c_3, c_2, c_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_4_axiom
axiom (forall c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_4(c_4_2, c_3, c_2, c_1, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_4(c_4_2, c_3, c_2, c_1, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_5_axiom
axiom (forall c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_5(c_5_1, c_4_2, c_3, c_2, c_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_5(c_5_1, c_4_2, c_3, c_2, c_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_6_axiom
axiom (forall c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_6(c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_6(c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_7_axiom
axiom (forall c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_7(c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_7(c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_8_axiom
axiom (forall c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_8(c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_8(c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_9_axiom
axiom (forall c_9: bool, c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_9_3: Perm, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_9(c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_9(c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm) + (if c_9 then p_9_3 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_10_axiom
axiom (forall c_10_2: bool, c_9: bool, c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_10: Perm, p_9_3: Perm, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_10(c_10_2, c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_10, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_10(c_10_2, c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_10, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm) + (if c_9 then p_9_3 else NoPerm) + (if c_10_2 then p_10 else NoPerm)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method m
// ==================================================

procedure m(x1_2: Ref, x2: Ref, x3: Ref, x4: Ref, x5: Ref, x6: Ref, x7_20: Ref, x8_20: Ref, x9_20: Ref, x10: Ref, x11: Ref, x12: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
    assume Heap[x5, $allocated];
    assume Heap[x6, $allocated];
    assume Heap[x7_20, $allocated];
    assume Heap[x8_20, $allocated];
    assume Heap[x9_20, $allocated];
    assume Heap[x10, $allocated];
    assume Heap[x11, $allocated];
    assume Heap[x12, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x1.f, p) -- assume10.vpr@10.5--10.24
    perm := p_1;
    assert {:msg "  Inhale might fail. Fraction p might be negative. (assume10.vpr@10.12--10.24) [150222]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x1_2 != null;
    Mask := Mask[x1_2, f_7:=Mask[x1_2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x2.f) >= p -- <no position>
    assume p_1 <= Mask[x2, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x3.f) >= __iar__assume_helper_1(x2 == x3, p, p) -- <no position>
    assume (__iar__assume_helper_1(x2 == x3, p_1, p_1): Perm) <= Mask[x3, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x4.f) >= __iar__assume_helper_2(x2 == x4, x3 == x4, p, p, p) -- <no position>
    assume (__iar__assume_helper_2(x2 == x4, x3 == x4, p_1, p_1, p_1): Perm) <= Mask[x4, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x5.f) >=
  //   __iar__assume_helper_3(x2 == x5, x3 == x5, x4 == x5, p, p, p, p) -- <no position>
    assume (__iar__assume_helper_3(x2 == x5, x3 == x5, x4 == x5, p_1, p_1, p_1, p_1): Perm) <= Mask[x5, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x6.f) >=
  //   __iar__assume_helper_4(x2 == x6, x3 == x6, x4 == x6, x5 == x6, p, p, p, p,
  //   p) -- <no position>
    assume (__iar__assume_helper_4(x2 == x6, x3 == x6, x4 == x6, x5 == x6, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[x6, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x7.f) >=
  //   __iar__assume_helper_5(x2 == x7, x3 == x7, x4 == x7, x5 == x7, x6 == x7, p,
  //   p, p, p, p, p) -- <no position>
    assume (__iar__assume_helper_5(x2 == x7_20, x3 == x7_20, x4 == x7_20, x5 == x7_20, x6 == x7_20, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[x7_20, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x8.f) >=
  //   __iar__assume_helper_6(x2 == x8, x3 == x8, x4 == x8, x5 == x8, x6 == x8, x7 ==
  //   x8, p, p, p, p, p, p, p) -- <no position>
    assume (__iar__assume_helper_6(x2 == x8_20, x3 == x8_20, x4 == x8_20, x5 == x8_20, x6 == x8_20, x7_20 == x8_20, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[x8_20, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x9.f) >=
  //   __iar__assume_helper_7(x2 == x9, x3 == x9, x4 == x9, x5 == x9, x6 == x9, x7 ==
  //   x9, x8 == x9, p, p, p, p, p, p, p, p) -- <no position>
    assume (__iar__assume_helper_7(x2 == x9_20, x3 == x9_20, x4 == x9_20, x5 == x9_20, x6 == x9_20, x7_20 == x9_20, x8_20 == x9_20, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[x9_20, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x10.f) >=
  //   __iar__assume_helper_8(x2 == x10, x3 == x10, x4 == x10, x5 == x10, x6 ==
  //   x10, x7 == x10, x8 == x10, x9 == x10, p, p, p, p, p, p, p, p, p) -- <no position>
    assume (__iar__assume_helper_8(x2 == x10, x3 == x10, x4 == x10, x5 == x10, x6 == x10, x7_20 == x10, x8_20 == x10, x9_20 == x10, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[x10, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x11.f) >=
  //   __iar__assume_helper_9(x2 == x11, x3 == x11, x4 == x11, x5 == x11, x6 ==
  //   x11, x7 == x11, x8 == x11, x9 == x11, x10 == x11, p, p, p, p, p, p, p, p,
  //   p, p) -- <no position>
    assume (__iar__assume_helper_9(x2 == x11, x3 == x11, x4 == x11, x5 == x11, x6 == x11, x7_20 == x11, x8_20 == x11, x9_20 == x11, x10 == x11, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[x11, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x12.f) >=
  //   __iar__assume_helper_10(x2 == x12, x3 == x12, x4 == x12, x5 == x12, x6 ==
  //   x12, x7 == x12, x8 == x12, x9 == x12, x10 == x12, x11 == x12, p, p, p, p,
  //   p, p, p, p, p, p, p) -- <no position>
    assume (__iar__assume_helper_10(x2 == x12, x3 == x12, x4 == x12, x5 == x12, x6 == x12, x7_20 == x12, x8_20 == x12, x9_20 == x12, x10 == x12, x11 == x12, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[x12, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert p > none ==> false -- assume10.vpr@15.5--15.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (NoPerm < p_1) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (assume10.vpr@15.12--15.30) [150223]"}
        false;
    }
    assume state(Heap, Mask);
}