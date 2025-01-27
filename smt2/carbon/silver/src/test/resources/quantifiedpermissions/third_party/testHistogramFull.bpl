// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:35:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_58: Ref, f_70: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_58, f_70] }
  Heap[o_58, $allocated] ==> Heap[Heap[o_58, f_70], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_66: Ref, f_134: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_66, f_134] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_66, f_134) ==> Heap[o_66, f_134] == ExhaleHeap[o_66, f_134]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_53: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_53), ExhaleHeap[null, PredicateMaskField(pm_f_53)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_53) && IsPredicateField(pm_f_53) ==> Heap[null, PredicateMaskField(pm_f_53)] == ExhaleHeap[null, PredicateMaskField(pm_f_53)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_53: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_53) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_53) && IsPredicateField(pm_f_53) ==> (forall <A, B> o2_54: Ref, f_134: (Field A B) ::
    { ExhaleHeap[o2_54, f_134] }
    Heap[null, PredicateMaskField(pm_f_53)][o2_54, f_134] ==> Heap[o2_54, f_134] == ExhaleHeap[o2_54, f_134]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_53: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_53), ExhaleHeap[null, WandMaskField(pm_f_53)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_53) && IsWandField(pm_f_53) ==> Heap[null, WandMaskField(pm_f_53)] == ExhaleHeap[null, WandMaskField(pm_f_53)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_53: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_53) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_53) && IsWandField(pm_f_53) ==> (forall <A, B> o2_54: Ref, f_134: (Field A B) ::
    { ExhaleHeap[o2_54, f_134] }
    Heap[null, WandMaskField(pm_f_53)][o2_54, f_134] ==> Heap[o2_54, f_134] == ExhaleHeap[o2_54, f_134]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_66: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_66, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_66, $allocated] ==> ExhaleHeap[o_66, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_58: Ref, f_67: (Field A B), v: B ::
  { Heap[o_58, f_67:=v] }
  succHeap(Heap, Heap[o_58, f_67:=v])
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

function  neverTriggered1(k_4_2: int): bool;
function  neverTriggered2(k_5: int): bool;
function  neverTriggered3(k_4_2: int): bool;
function  neverTriggered4(k_5: int): bool;
function  neverTriggered5(k_4_2: int): bool;
function  neverTriggered6(k_5: int): bool;
function  neverTriggered7(k_4_2: int): bool;
function  neverTriggered8(k_5: int): bool;
function  neverTriggered9(k_1: int): bool;
function  neverTriggered10(k_3: int): bool;
function  neverTriggered11(k_6_2: int): bool;
function  neverTriggered12(k_1: int): bool;
function  neverTriggered13(j_1: int): bool;
function  neverTriggered14(j_7_1: int): bool;
function  neverTriggered15(k_3: int): bool;
function  neverTriggered16(k$0: int): bool;
function  neverTriggered17(j_10_2: int): bool;
function  neverTriggered18(k_6_2: int): bool;
function  neverTriggered19(k_1: int): bool;
function  neverTriggered20(k_5: int): bool;
function  neverTriggered21(k_8: int): bool;
function  neverTriggered22(j1_1: int): bool;
function  neverTriggered23(i1_3_1: int): bool;
function  neverTriggered24(j1_5_1: int): bool;
function  neverTriggered25(i1_7_2: int): bool;
function  neverTriggered26(k$0: int): bool;
function  neverTriggered27(j1_8: int): bool;
function  neverTriggered28(i1_10_1: int): bool;
function  neverTriggered29(k_4_2: int): bool;
function  neverTriggered30(k_5: int): bool;
function  neverTriggered31(k_7_1: int): bool;
function  neverTriggered32(j: int): bool;
function  neverTriggered33(j_5: int): bool;
function  neverTriggered34(k_8: int): bool;
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
function  invRecv8(recv: Ref): int;
function  invRecv9(recv: Ref): int;
function  invRecv10(recv: Ref): int;
function  invRecv11(recv: Ref): int;
function  invRecv12(recv: Ref): int;
function  invRecv13(recv: Ref): int;
function  invRecv14(recv: Ref): int;
function  invRecv15(recv: Ref): int;
function  invRecv16(recv: Ref): int;
function  invRecv17(recv: Ref): int;
function  invRecv18(recv: Ref): int;
function  invRecv19(recv: Ref): int;
function  invRecv20(recv: Ref): int;
function  invRecv21(recv: Ref): int;
function  invRecv22(recv: Ref): int;
function  invRecv23(recv: Ref): int;
function  invRecv24(recv: Ref): int;
function  invRecv25(recv: Ref): int;
function  invRecv26(recv: Ref): int;
function  invRecv27(recv: Ref): int;
function  invRecv28(recv: Ref): int;
function  invRecv29(recv: Ref): int;
function  invRecv30(recv: Ref): int;
function  invRecv31(recv: Ref): int;
function  invRecv32(recv: Ref): int;
function  invRecv33(recv: Ref): int;
function  invRecv34(recv: Ref): int;
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
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(recv: Ref): bool;
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(recv: Ref): bool;
function  qpRange21(recv: Ref): bool;
function  qpRange22(recv: Ref): bool;
function  qpRange23(recv: Ref): bool;
function  qpRange24(recv: Ref): bool;
function  qpRange25(recv: Ref): bool;
function  qpRange26(recv: Ref): bool;
function  qpRange27(recv: Ref): bool;
function  qpRange28(recv: Ref): bool;
function  qpRange29(recv: Ref): bool;
function  qpRange30(recv: Ref): bool;
function  qpRange31(recv: Ref): bool;
function  qpRange32(recv: Ref): bool;
function  qpRange33(recv: Ref): bool;
function  qpRange34(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 6: count_list
// - height 5: sum_list
// - height 4: count_square
// - height 3: sum_square
// - height 2: count_array
// - height 1: Ref__multidim_index_2
// - height 0: sum_array
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
// Preamble of Sequence module.
// ==================================================

 // diff 0 implemented (no difference)
 // diff 1 implemented (fixes test5 in sequences.sil)
 // diff 2 implemented (fixes m01 and m03 in quantifiedpermissions/issues/issue_0064)
 // diff 3 implemented (no difference)
 // diff 4 implemented (no difference)
 // diff 5 implemented (fixes colourings0 in sequence-incompletenesses test case)
 // diff 6 implemented (no difference)
 // diff 7 implemented
 // diff 8 implemented (allows for contains triggering, without destroying performance of e.g. functions/linkedlists test case)
 // diff 11 implemented
 // diff 13 implemented, for now (may reduce completeness, but there's a known matching loop when the first drop amount is 0); another option would be to add !=0 as an explicit condition
 // diff 14 implemented: eliminate index over take/drop for trivial cases (to avoid matching loops when e.g. s[i..] == s is known)
 // diff 16 implemented: remove general cases of equality-learning between take/drop/append subsequences; only allow when take/drop are at top level (this affects linkedlists test case)
 // diff 17: removing a potential matching loop where more than one axiom applies to a Seq#Take(Seq#Append(s,t),n) term
// START BASICS
type Seq T;

function Seq#Length<T>(Seq T): int;
axiom (forall<T> s: Seq T :: { Seq#Length(s) } 0 <= Seq#Length(s));

function Seq#Empty<T>(): Seq T;
axiom (forall<T> :: Seq#Length(Seq#Empty(): Seq T) == 0);
axiom (forall<T> s: Seq T :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

function Seq#Singleton<T>(T): Seq T;
//axiom (forall<T> t: T :: { Seq#Length(Seq#Singleton(t)) } Seq#Length(Seq#Singleton(t)) == 1);// (diff 2 (old))
axiom (forall<T> t: T :: { Seq#Singleton(t) } Seq#Length(Seq#Singleton(t)) == 1);// (diff 2: changed trigger)

function Seq#Append<T>(Seq T, Seq T): Seq T;
axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Length(Seq#Append(s0,s1)) }
s0 != Seq#Empty() && s1 != Seq#Empty() ==> //diff 11: consider removing constraints
  Seq#Length(Seq#Append(s0,s1)) == Seq#Length(s0) + Seq#Length(s1));

//axiom (forall<T> s: Seq T :: { Seq#Append(Seq#Empty(),s) } Seq#Append(Seq#Empty(),s) == s); // (diff 11: switched to double-quantified version)
//axiom (forall<T> s: Seq T :: { Seq#Append(s,Seq#Empty()) } Seq#Append(s,Seq#Empty()) == s); // (diff 11: switched to double-quantified version)
axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Append(s0,s1) } (s0 == Seq#Empty() ==> Seq#Append(s0,s1) == s1) && (s1 == Seq#Empty() ==> Seq#Append(s0,s1) == s0)); // diff 11: switched to double-quantified version

function Seq#Index<T>(Seq T, int): T;
//axiom (forall<T> t: T :: { Seq#Index(Seq#Singleton(t), 0) } Seq#Index(Seq#Singleton(t), 0) == t); // (diff 2 (old))
axiom (forall<T> t: T :: { Seq#Singleton(t) } Seq#Index(Seq#Singleton(t), 0) == t); // (diff 2: changed trigger)

// END BASICS

// START INDEX-APPEND-UPDATE

// extra addition function used to force equalities into the e-graph
function Seq#Add(int, int) : int;
axiom (forall i: int, j: int :: {Seq#Add(i,j)} Seq#Add(i,j) == i + j);
function Seq#Sub(int, int) : int;
axiom (forall i: int, j: int :: {Seq#Sub(i,j)} Seq#Sub(i,j) == i - j);

// (diff 3 (old))
//axiom (forall<T> s0: Seq T, s1: Seq T, n: int :: { Seq#Index(Seq#Append(s0,s1), n) } // {:weight 25} // AS: dropped weight
//  s0 != Seq#Empty() && s1 != Seq#Empty() ==>
//  ((n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0,s1), n) == Seq#Index(s0, n)) &&
//  (Seq#Length(s0) <= n ==> Seq#Index(Seq#Append(s0,s1), n) == Seq#Index(s1, n - Seq#Length(s0)))));

// (diff 3: split axiom, added constraints, replace arithmetic) // diff 11: consider removing constraints
axiom (forall<T> s0: Seq T, s1: Seq T, n: int :: { Seq#Index(Seq#Append(s0,s1), n) } { Seq#Index(s0, n), Seq#Append(s0,s1) } // AS: added alternative trigger
  (s0 != Seq#Empty() && s1 != Seq#Empty() && 0 <= n && n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0,s1), n) == Seq#Index(s0, n)));
axiom (forall<T> s0: Seq T, s1: Seq T, n: int :: { Seq#Index(Seq#Append(s0,s1), n) } // term below breaks loops
  s0 != Seq#Empty() && s1 != Seq#Empty() && Seq#Length(s0) <= n && n < Seq#Length(Seq#Append(s0,s1)) ==> Seq#Add(Seq#Sub(n,Seq#Length(s0)),Seq#Length(s0)) == n && Seq#Index(Seq#Append(s0,s1), n) == Seq#Index(s1, Seq#Sub(n,Seq#Length(s0))));
// AS: added "reverse triggering" versions of the axioms
axiom (forall<T> s0: Seq T, s1: Seq T, m: int :: { Seq#Index(s1, m), Seq#Append(s0,s1)}  // m == n-|s0|, n == m + |s0|
  s0 != Seq#Empty() && s1 != Seq#Empty() && 0 <= m && m < Seq#Length(s1) ==> Seq#Sub(Seq#Add(m,Seq#Length(s0)),Seq#Length(s0)) == m && Seq#Index(Seq#Append(s0,s1), Seq#Add(m,Seq#Length(s0))) == Seq#Index(s1, m));

function Seq#Update<T>(Seq T, int, T): Seq T;
axiom (forall<T> s: Seq T, i: int, v: T :: { Seq#Length(Seq#Update(s,i,v)) } {Seq#Length(s),Seq#Update(s,i,v)} // (diff 4: added trigger)
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s,i,v)) == Seq#Length(s));
axiom (forall<T> s: Seq T, i: int, v: T, n: int :: { Seq#Index(Seq#Update(s,i,v),n) } { Seq#Index(s,n), Seq#Update(s,i,v) }  // (diff 4: added trigger)
  0 <= n && n < Seq#Length(s) ==>
    (i == n ==> Seq#Index(Seq#Update(s,i,v),n) == v) &&
    (i != n ==> Seq#Index(Seq#Update(s,i,v),n) == Seq#Index(s,n)));

// END INDEX-APPEND-UPDATE

// START TAKE/DROP

function Seq#Take<T>(s: Seq T, howMany: int): Seq T;
// AS: added triggers
axiom (forall<T> s: Seq T, n: int :: { Seq#Length(Seq#Take(s,n)) } { Seq#Take(s,n), Seq#Length(s)} // (diff 7: add trigger)
  (0 <= n ==>
    (n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s,n)) == n) &&
    (Seq#Length(s) < n ==> Seq#Length(Seq#Take(s,n)) == Seq#Length(s)))
    &&
   (n < 0 ==> Seq#Length(Seq#Take(s,n)) == 0)); // (diff 7: added case for n < 0)

// ** AS: 2nd of 3 axioms which get instantiated very often in certain problems involving take/drop/append
axiom (forall<T> s: Seq T, n: int, j: int :: { Seq#Index(Seq#Take(s,n), j) } {Seq#Index(s,j), Seq#Take(s,n)} // (diff 0: (was already done)) : add trigger // {:weight 25} // AS: dropped weight
  0 <= j && j < n && j < Seq#Length(s) ==>
    Seq#Index(Seq#Take(s,n), j) == Seq#Index(s, j));

function Seq#Drop<T>(s: Seq T, howMany: int): Seq T;
axiom (forall<T> s: Seq T, n: int :: { Seq#Length(Seq#Drop(s,n)) } {Seq#Length(s), Seq#Drop(s,n)} // (diff 5: added trigger, exchange arithmetic)
  (0 <= n ==>
    (n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s,n)) == Seq#Length(s) - n) &&
    (Seq#Length(s) < n ==> Seq#Length(Seq#Drop(s,n)) == 0))
    &&
  (n < 0 ==> Seq#Length(Seq#Drop(s,n)) == Seq#Length(s)) // (diff 7: added cases for n < 0)
    );

// ** AS: 3rd of 3 axioms which get instantiated very often in certain problems involving take/drop/append
// diff 5 (old)
//axiom (forall<T> s: Seq T, n: int, j: int :: { Seq#Index(Seq#Drop(s,n), j) } // {:weight 25} // AS: dropped weight
//  0 <= n && 0 <= j && j < Seq#Length(s)-n ==>
//    Seq#Index(Seq#Drop(s,n), j) == Seq#Index(s, j+n));
//
// diff already added // diff -1: try removing this axiom and checking effect
//axiom (forall<T> s: Seq T, n: int, k: int :: { Seq#Drop(s,n), Seq#Index(s,k) } // AS: alternative triggering for above axiom
//  0 <= n && n <= k && k < Seq#Length(s) ==>
//    Seq#Index(Seq#Drop(s,n), k-n) == Seq#Index(s, k));

// diff 5: split axiom, added triggering case, exhanged arithmetic

axiom (forall<T> s: Seq T, n: int, j: int :: { Seq#Index(Seq#Drop(s,n), j) } // {:weight 25} // AS: dropped weight
  0 < n && 0 <= j && j < Seq#Length(s)-n ==> // diff 14: change 0 <= n to 0 < n
   Seq#Sub(Seq#Add(j,n),n) == j && Seq#Index(Seq#Drop(s,n), j) == Seq#Index(s, Seq#Add(j,n)));

axiom (forall<T> s: Seq T, n: int, i: int :: { Seq#Drop(s,n), Seq#Index(s,i) }
  0 < n && n <= i && i < Seq#Length(s) ==> // diff 14: change 0 <= n to 0 < n
  Seq#Add(Seq#Sub(i,n),n) == i && Seq#Index(Seq#Drop(s,n), Seq#Sub(i,n)) == Seq#Index(s, i)); // i = j + n, j = i - n

// (diff 6a: add axioms for the 0 > n case)
//axiom (forall<T> s: Seq T, n: int, j: int :: { Seq#Index(Seq#Drop(s,n), j) } // {:weight 25} // AS: dropped weight
//  n <= 0 && 0 <= j && j < Seq#Length(s) ==> // diff 14: change n < 0 to n <= 0
//    Seq#Index(Seq#Drop(s,n), j) == Seq#Index(s, j));

// (diff 6a: add axioms for the 0 > n case)
//axiom (forall<T> s: Seq T, n: int, i: int :: { Seq#Drop(s,n), Seq#Index(s,i) }
//  n <= 0 && 0 <= i && i < Seq#Length(s) ==> // diff 14: change n < 0 to n <= 0
//  Seq#Index(Seq#Drop(s,n), i) == Seq#Index(s, i)); // i = j + n, j = i - n

// ** AS: We dropped the weak trigger on this axiom. One option is to strengthen the triggers:
//axiom (forall<T> s, t: Seq T ::
// // { Seq#Append(s, t) }
//  {Seq#Take(Seq#Append(s, t), Seq#Length(s))}{Seq#Drop(Seq#Append(s, t), Seq#Length(s))}
//  Seq#Take(Seq#Append(s, t), Seq#Length(s)) == s &&
//  Seq#Drop(Seq#Append(s, t), Seq#Length(s)) == t);

// ** AS: another option is to split the axiom (for some reason, this seems in some cases to perform slightly less well (but this could be random):
//axiom (forall<T> s, t: Seq T ::
// { Seq#Take(Seq#Append(s, t), Seq#Length(s)) }
//  Seq#Take(Seq#Append(s, t), Seq#Length(s)) == s);

//axiom (forall<T> s, t: Seq T ::
// { Seq#Drop(Seq#Append(s, t), Seq#Length(s)) }
//  Seq#Drop(Seq#Append(s, t), Seq#Length(s)) == t);

// (diff 6b: remove these?)
/* Removed: at present, Carbon doesn't generate Seq#Update (but desugars via take/drop/append)
// Commutability of Take and Drop with Update.
axiom (forall<T> s: Seq T, i: int, v: T, n: int ::
        { Seq#Take(Seq#Update(s, i, v), n) }
//        0 <= i && i < n && n < Seq#Length(s) ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v) );
        0 <= i && i < n && i < Seq#Length(s) ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v) );
axiom (forall<T> s: Seq T, i: int, v: T, n: int ::
        { Seq#Take(Seq#Update(s, i, v), n) }
        n <= i && i < Seq#Length(s) ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));
axiom (forall<T> s: Seq T, i: int, v: T, n: int ::
        { Seq#Drop(Seq#Update(s, i, v), n) }
//        0 <= n && n <= i && i < Seq#Length(s) ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i-n, v) );
        0 <= i && n <=i && i < Seq#Length(s) ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i-n, v) );
axiom (forall<T> s: Seq T, i: int, v: T, n: int ::
        { Seq#Drop(Seq#Update(s, i, v), n) }
//        0 <= i && i < n && n < Seq#Length(s) ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));
        0 <= i && i < n && i < Seq#Length(s) ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));
*/

axiom (forall<T> s: Seq T, t: Seq T, n:int ::
  { Seq#Take(Seq#Append(s,t),n) } //{Seq#Append(s,t), Seq#Take(s,n)} // diff 16: temporarily dropped general case of these
  0 < n && n <= Seq#Length(s) ==> Seq#Take(Seq#Append(s,t),n) == Seq#Take(s,n));

// diff 17: added a conjunct on the lhs of the implication
axiom (forall<T> s: Seq T, t: Seq T, n:int ::
  { Seq#Take(Seq#Append(s,t),n) }
  n > 0 && n > Seq#Length(s) && n < Seq#Length(Seq#Append(s,t)) ==> Seq#Add(Seq#Sub(n,Seq#Length(s)),Seq#Length(s)) == n && Seq#Take(Seq#Append(s,t),n) == Seq#Append(s,Seq#Take(t,Seq#Sub(n,Seq#Length(s)))));

// diff 16: temporarily dropped general case of these
//axiom (forall<T> s: Seq T, t: Seq T, m:int ::
//  { Seq#Append(s,Seq#Take(t,m)) } //{Seq#Append(s,t), Seq#Take(t,m)} // diff 16: temporarily dropped general case of these // reverse triggering version of above: m = n - |s|, n = m + |s|
//  m > 0 ==> Seq#Sub(Seq#Add(m,Seq#Length(s)),Seq#Length(s)) == m && Seq#Take(Seq#Append(s,t),Seq#Add(m,Seq#Length(s))) == Seq#Append(s,Seq#Take(t,m)));

axiom (forall<T> s: Seq T, t: Seq T, n:int ::
  { Seq#Drop(Seq#Append(s,t),n) } //{Seq#Append(s,t), Seq#Drop(s,n)} // diff 16: temporarily dropped general case of these
  0<n && n <= Seq#Length(s) ==> Seq#Drop(Seq#Append(s,t),n) == Seq#Append(Seq#Drop(s,n),t));

axiom (forall<T> s: Seq T, t: Seq T, n:int ::
  { Seq#Drop(Seq#Append(s,t),n) }
 n > 0 && n > Seq#Length(s) ==> Seq#Add(Seq#Sub(n,Seq#Length(s)),Seq#Length(s)) == n && Seq#Drop(Seq#Append(s,t),n) == Seq#Drop(t,Seq#Sub(n,Seq#Length(s))));

// diff 16: temporarily dropped general case of these
//axiom (forall<T> s: Seq T, t: Seq T, m:int ::
//  { Seq#Append(s,t),Seq#Drop(t,m) } // reverse triggering version of above: m = n - |s|, n = m + |s|
//  m > 0 ==> Seq#Sub(Seq#Add(m,Seq#Length(s)),Seq#Length(s)) == m && Seq#Drop(Seq#Append(s,t),Seq#Add(m,Seq#Length(s))) == Seq#Drop(t,m));

// Additional axioms about common things
axiom (forall<T> s: Seq T, n: int :: { Seq#Drop(s, n) } // ** NEW
        n <= 0 ==> Seq#Drop(s, n) == s); // (diff 1: try changing n==0 to n<=0 (should be ok))
axiom (forall<T> s: Seq T, n: int :: { Seq#Take(s, n) } // ** NEW
        n <= 0 ==> Seq#Take(s, n) == Seq#Empty());  // (diff 1: try changing n==0 to n<=0 (should be ok))
// diff 13: remove this?
//axiom (forall<T> s: Seq T, m, n: int :: { Seq#Drop(Seq#Drop(s, m), n) } // ** NEW - AS: could have bad triggering behaviour?
//        0 <= m && 0 <= n && m+n <= Seq#Length(s) ==>
//        Seq#Sub(Seq#Add(m,n),n) == m && Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, Seq#Add(m,n)));

// END TAKE/DROP

// START CONTAINS
// diff 8: skolemisation (old)
function Seq#Contains<T>(Seq T, T): bool;
function Seq#ContainsTrigger<T>(Seq T, T): bool; // usages of Contains inside quantifier triggers are replaced with this
function Seq#Skolem<T>(Seq T, T) : int; // skolem function for Seq#Contains // (diff 8: added)
axiom (forall<T> s: Seq T, x: T :: { Seq#Contains(s,x) }
  Seq#Contains(s,x) ==>
    (0 <= Seq#Skolem(s,x) && Seq#Skolem(s,x) < Seq#Length(s) && Seq#Index(s,Seq#Skolem(s,x)) == x)); // (diff 8: skolem function)
axiom (forall<T> s: Seq T, x: T, i:int :: { Seq#Contains(s,x), Seq#Index(s,i) } // only trigger if interested in the Contains term
    (0 <= i && i < Seq#Length(s) && Seq#Index(s,i) == x ==> Seq#Contains(s,x)));
axiom (forall<T> s: Seq T, i:int :: { Seq#Index(s,i) }
  (0 <= i && i < Seq#Length(s) ==> Seq#ContainsTrigger(s,Seq#Index(s,i))));
// ** AS: made one change here - changed type of x from ref to T
/*axiom (forall<T> x: T ::
  { Seq#Contains(Seq#Empty(), x) }
  !Seq#Contains(Seq#Empty(), x));
axiom (forall<T> s0: Seq T, s1: Seq T, x: T ::
  { Seq#Contains(Seq#Append(s0, s1), x) }
  Seq#Contains(Seq#Append(s0, s1), x) <==>
    Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall<T> s: Seq T, n: int, x: T ::
  { Seq#Contains(Seq#Take(s, n), x) }
  Seq#Contains(Seq#Take(s, n), x) <==>
    (exists i: int :: { Seq#Index(s, i) }
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));
axiom (forall<T> s: Seq T, n: int, x: T ::
  { Seq#Contains(Seq#Drop(s, n), x) }
  Seq#Contains(Seq#Drop(s, n), x) <==>
    (exists i: int :: { Seq#Index(s, i) }
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));
*/
// diff 8: skolemisation (new)
/*
function Seq#Skolem<T>(Seq T, T) : int; // skolem function for Seq#Contains
function Seq#SkolemContainsDrop<T>(Seq T, int, T) : int; // skolem function for Seq#Contains over drop
function Seq#SkolemContainsTake<T>(Seq T, int, T) : int; // skolem function for Seq#Contains over take

function Seq#Contains<T>(Seq T, T): bool;
axiom (forall<T> s: Seq T, x: T :: { Seq#Contains(s,x) }
  Seq#Contains(s,x) ==> s != Seq#Empty() && Seq#Length(s) > 0 && 0 <= Seq#Skolem(s,x) &&
    Seq#Skolem(s,x) < Seq#Length(s) && Seq#Index(s,Seq#Skolem(s,x)) == x);

// AS: note: this is an unusual axiom, but is basically the original
// Consider writing a version without the (precise) first trigger? Also see later versions
axiom (forall<T> s: Seq T, x: T, i:int :: { Seq#Contains(s,x), Seq#Index(s,i) }
  0 <= i && i < Seq#Length(s) && Seq#Index(s,i) == x ==> Seq#Contains(s,x));

// ** AS: made one change here - changed type of x from ref to T
axiom (forall<T> x: T ::
  { Seq#Contains(Seq#Empty(), x) }
  !Seq#Contains(Seq#Empty(), x));

// AS: Consider dropping this axiom?
axiom (forall<T> s0: Seq T, s1: Seq T, x: T ::
  { Seq#Contains(Seq#Append(s0, s1), x) } { Seq#Contains(s0,x), Seq#Append(s0,s1)} { Seq#Contains(s1,x), Seq#Append(s0,s1)} // AS: added triggers
  Seq#Contains(Seq#Append(s0, s1), x) <==>
    Seq#Contains(s0, x) || Seq#Contains(s1, x));

// AS: split axioms
axiom (forall<T> s: Seq T, n: int, x: T ::
  { Seq#Contains(Seq#Take(s, n), x) }
  Seq#Contains(Seq#Take(s, n), x) ==>
    (Seq#Take(s, n) != Seq#Empty() && Seq#Length(Seq#Take(s, n)) > 0 &&
     0 <= Seq#SkolemContainsTake(s, n, x) && Seq#SkolemContainsTake(s, n, x) < n &&
      Seq#SkolemContainsTake(s, n, x) < Seq#Length(s) &&
      Seq#Index(s, Seq#SkolemContainsTake(s, n, x)) == x));

axiom (forall<T> s: Seq T, n: int, x: T, i:int ::
  { Seq#Contains(Seq#Take(s, n), x), Seq#Index(s, i) }
    0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x ==>
     Seq#Contains(Seq#Take(s, n), x));

// AS: split axioms
axiom (forall<T> s: Seq T, n: int, x: T ::
  { Seq#Contains(Seq#Drop(s, n), x) }
  Seq#Contains(Seq#Drop(s, n), x) ==>
    ( 0 <= Seq#SkolemContainsDrop(s, n, x) && n <= Seq#SkolemContainsDrop(s, n, x) &&
      Seq#SkolemContainsDrop(s, n, x) < Seq#Length(s) &&
      Seq#Index(s, Seq#SkolemContainsDrop(s, n, x)) == x));

axiom (forall<T> s: Seq T, n: int, x: T, i:int ::
  { Seq#Contains(Seq#Drop(s, n), x), Seq#Index(s, i) }
  0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x ==>
  Seq#Contains(Seq#Drop(s, n), x));
*/

// END CONTAINS

// START EQUALS

// diff 9 : skolemise equals (old)
function Seq#Equal<T>(Seq T, Seq T): bool;
/*axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Equal(s0,s1) }
  Seq#Equal(s0,s1) <==>
    Seq#Length(s0) == Seq#Length(s1) &&
    (forall j: int :: { Seq#Index(s0,j) } { Seq#Index(s1,j) }
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0,j) == Seq#Index(s1,j)));

axiom (forall<T> a: Seq T, b: Seq T :: { Seq#Equal(a,b) }  // extensionality axiom for sequences
  Seq#Equal(a,b) ==> a == b);
*/
// diff 9: skolemise equals (new)
// AS: split axiom
axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Equal(s0,s1) }
  Seq#Equal(s0,s1) ==>
    Seq#Length(s0) == Seq#Length(s1) &&
    (forall j: int :: { Seq#Index(s0,j) } { Seq#Index(s1,j) }
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0,j) == Seq#Index(s1,j)));

function Seq#SkolemDiff<T>(Seq T, Seq T) : int; // skolem function for Seq#Equals

axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Equal(s0,s1) }
  (s0==s1 && Seq#Equal(s0,s1)) || (s0!=s1 && !Seq#Equal(s0,s1) && Seq#Length(s0) != Seq#Length(s1)) ||
        (s0 != s1 && !Seq#Equal(s0,s1) && Seq#Length(s0) == Seq#Length(s1) && Seq#SkolemDiff(s0,s1) == Seq#SkolemDiff(s1,s0) && 0 <= Seq#SkolemDiff(s0,s1) && Seq#SkolemDiff(s0,s1) < Seq#Length(s0) &&
         Seq#Index(s0,Seq#SkolemDiff(s0,s1)) != Seq#Index(s1,Seq#SkolemDiff(s0,s1))));

axiom (forall<T> a: Seq T, b: Seq T :: { Seq#Equal(a,b) }  // extensionality axiom for sequences
  Seq#Equal(a,b) ==> a == b);


// END EQUALS


// START EXTRAS

// extra stuff not in current Dafny Prelude

// diff 10: variant of trigger (maybe drop these?)
// old:
axiom (forall<T> x, y: T ::
  { Seq#Contains(Seq#Singleton(x),y) }
    Seq#Contains(Seq#Singleton(x),y) <==> x==y);
// new:
/*axiom (forall<T> x, y: T ::
  { Seq#Contains(Seq#Singleton(x),y) }
    Seq#Contains(Seq#Singleton(x),y) ==> x==y);

axiom (forall<T> x: T ::
  { Seq#Singleton(x) }
    Seq#Contains(Seq#Singleton(x),x));
*/

function Seq#Range(min: int, max: int) returns (Seq int);
axiom (forall min: int, max: int :: { Seq#Length(Seq#Range(min, max)) } (min < max ==> Seq#Length(Seq#Range(min, max)) == max-min) && (max <= min ==> Seq#Length(Seq#Range(min, max)) == 0));
axiom (forall min: int, max: int, j: int :: { Seq#Index(Seq#Range(min, max), j) } 0<=j && j<max-min ==> Seq#Index(Seq#Range(min, max), j) == min + j);

axiom (forall min: int, max: int, v: int :: {Seq#Contains(Seq#Range(min, max),v)}
  (Seq#Contains(Seq#Range(min, max),v) <==> min <= v && v < max));

// END EXTRAS


// ==================================================
// Translation of all fields
// ==================================================

const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of function Ref__multidim_index_2
// ==================================================

// Uninterpreted function definitions
function  Ref__multidim_index_2(Heap: HeapType, N0: int, N1: int, i0_3: int, i1_9: int): int;
function  Ref__multidim_index_2'(Heap: HeapType, N0: int, N1: int, i0_3: int, i1_9: int): int;
axiom (forall Heap: HeapType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { Ref__multidim_index_2(Heap, N0, N1, i0_3, i1_9) }
  Ref__multidim_index_2(Heap, N0, N1, i0_3, i1_9) == Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) && dummyFunction(Ref__multidim_index_2#triggerStateless(N0, N1, i0_3, i1_9))
);
axiom (forall Heap: HeapType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  dummyFunction(Ref__multidim_index_2#triggerStateless(N0, N1, i0_3, i1_9))
);

// Framing axioms
function  Ref__multidim_index_2#frame(frame: FrameType, N0: int, N1: int, i0_3: int, i1_9: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) == Ref__multidim_index_2#frame(EmptyFrame, N0, N1, i0_3, i1_9)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> 0 <= Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9)
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) < N0 * N1
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) == i0_3 * N1 + i1_9
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) mod N1 == i1_9
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) mod N1 < N0
);

// Trigger function (controlling recursive postconditions)
function  Ref__multidim_index_2#trigger(frame: FrameType, N0: int, N1: int, i0_3: int, i1_9: int): bool;

// State-independent trigger function
function  Ref__multidim_index_2#triggerStateless(N0: int, N1: int, i0_3: int, i1_9: int): int;

// Check contract well-formedness and postcondition
procedure Ref__multidim_index_2#definedness(N0: int, N1: int, i0_3: int, i1_9: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i0_3;
    assume state(Heap, Mask);
    assume i0_3 < N0;
    assume state(Heap, Mask);
    assume 0 <= N0;
    assume state(Heap, Mask);
    assume 0 <= i1_9;
    assume state(Heap, Mask);
    assume i1_9 < N1;
    assume state(Heap, Mask);
    assume 0 <= N1;
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume 0 <= Result;
    assume state(Heap, Mask);
    assume Result < N0 * N1;
    assume state(Heap, Mask);
    assume Result == i0_3 * N1 + i1_9;
    assume state(Heap, Mask);
    
    // -- Check definedness of result % N1 == i1
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (testHistogramFull.vpr@19.11--19.28) [155230]"}
        N1 != 0;
    assume Result mod N1 == i1_9;
    assume state(Heap, Mask);
    
    // -- Check definedness of result % N1 < N0
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (testHistogramFull.vpr@20.11--20.27) [155231]"}
        N1 != 0;
    assume Result mod N1 < N0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function sum_list
// ==================================================

// Uninterpreted function definitions
function  sum_list(Heap: HeapType, i: int, hi: int, ar_1: (Seq int)): int;
function  sum_list'(Heap: HeapType, i: int, hi: int, ar_1: (Seq int)): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq int) ::
  { sum_list(Heap, i, hi, ar_1) }
  sum_list(Heap, i, hi, ar_1) == sum_list'(Heap, i, hi, ar_1) && dummyFunction(sum_list#triggerStateless(i, hi, ar_1))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq int) ::
  { sum_list'(Heap, i, hi, ar_1) }
  dummyFunction(sum_list#triggerStateless(i, hi, ar_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq int) ::
  { state(Heap, Mask), sum_list(Heap, i, hi, ar_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar_1) ==> sum_list(Heap, i, hi, ar_1) == (if i < hi then Seq#Index(ar_1, i) + sum_list'(Heap, i + 1, hi, ar_1) else 0)
);

// Framing axioms
function  sum_list#frame(frame: FrameType, i: int, hi: int, ar_1: (Seq int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq int) ::
  { state(Heap, Mask), sum_list'(Heap, i, hi, ar_1) }
  state(Heap, Mask) ==> sum_list'(Heap, i, hi, ar_1) == sum_list#frame(EmptyFrame, i, hi, ar_1)
);

// Trigger function (controlling recursive postconditions)
function  sum_list#trigger(frame: FrameType, i: int, hi: int, ar_1: (Seq int)): bool;

// State-independent trigger function
function  sum_list#triggerStateless(i: int, hi: int, ar_1: (Seq int)): int;

// Check contract well-formedness and postcondition
procedure sum_list#definedness(i: int, hi: int, ar_1: (Seq int)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull.vpr@23.1--28.2) [155232]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull.vpr@23.1--28.2) [155233]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (testHistogramFull.vpr@27.21--27.44) [155234]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (testHistogramFull.vpr@27.21--27.44) [155235]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (testHistogramFull.vpr@27.21--27.44) [155236]"}
            hi <= Seq#Length(ar_1);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_list#trigger(EmptyFrame, i + 1, hi, ar_1);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Seq#Index(ar_1, i) + sum_list(Heap, i + 1, hi, ar_1) else 0);
}

// ==================================================
// Translation of function sum_array
// ==================================================

// Uninterpreted function definitions
function  sum_array(Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref)): int;
function  sum_array'(Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { sum_array(Heap, i, lo, hi, ar_1) }
  sum_array(Heap, i, lo, hi, ar_1) == sum_array'(Heap, i, lo, hi, ar_1) && dummyFunction(sum_array#triggerStateless(i, lo, hi, ar_1))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { sum_array'(Heap, i, lo, hi, ar_1) }
  dummyFunction(sum_array#triggerStateless(i, lo, hi, ar_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { state(Heap, Mask), sum_array(Heap, i, lo, hi, ar_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= lo && (lo <= i && i <= hi) ==> sum_array(Heap, i, lo, hi, ar_1) == (if i < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] + sum_array'(Heap, i + 1, lo, hi, ar_1) else 0)
);

// Framing axioms
function  sum_array#frame(frame: FrameType, i: int, lo: int, hi: int, ar_1: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { state(Heap, Mask), sum_array'(Heap, i, lo, hi, ar_1) }
  state(Heap, Mask) ==> sum_array'(Heap, i, lo, hi, ar_1) == sum_array#frame(FrameFragment(sum_array#condqp1(Heap, i, lo, hi, ar_1)), i, lo, hi, ar_1)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_array
// ==================================================

function  sum_array#condqp1(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_array#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) < hi <==> lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) < hi) && (lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) < hi ==> Heap2Heap[Seq#Index(ar_1, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar_1, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1))), Ref__Integer_value]) ==> sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1) == sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)
);

// Trigger function (controlling recursive postconditions)
function  sum_array#trigger(frame: FrameType, i: int, lo: int, hi: int, ar_1: (Seq Ref)): bool;

// State-independent trigger function
function  sum_array#triggerStateless(i: int, lo: int, hi: int, ar_1: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_array#definedness(i: int, lo: int, hi: int, ar_1: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var k_16: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (lo <= k_16 && k_16 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull.vpr@32.13--32.95) [155237]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull.vpr@32.13--32.95) [155238]"}
            k_16 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@32.13--32.95) [155239]"}
      (forall k_4_2: int, k_4_3: int ::
      
      (((k_4_2 != k_4_3 && (lo <= k_4_2 && k_4_2 < hi)) && (lo <= k_4_3 && k_4_3 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_4_2) != Seq#Index(ar_1, k_4_3)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_2: int ::
        { Seq#Index(ar_1, k_4_2) } { Seq#Index(ar_1, k_4_2) }
        lo <= k_4_2 && k_4_2 < hi ==> qpRange1(Seq#Index(ar_1, k_4_2)) && invRecv1(Seq#Index(ar_1, k_4_2)) == k_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (lo <= invRecv1(o_9) && invRecv1(o_9) < hi) && qpRange1(o_9) ==> Seq#Index(ar_1, invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_2: int ::
        { Seq#Index(ar_1, k_4_2) } { Seq#Index(ar_1, k_4_2) }
        lo <= k_4_2 && k_4_2 < hi ==> Seq#Index(ar_1, k_4_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((lo <= invRecv1(o_9) && invRecv1(o_9) < hi) && qpRange1(o_9) ==> Seq#Index(ar_1, invRecv1(o_9)) == o_9 && Mask[o_9, Ref__Integer_value] < QPMask[o_9, Ref__Integer_value]) && (!((lo <= invRecv1(o_9) && invRecv1(o_9) < hi) && qpRange1(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i].Ref__Integer_value + sum_array(i + 1, lo, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull.vpr@30.1--35.2) [155240]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull.vpr@30.1--35.2) [155241]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogramFull.vpr@30.1--35.2) [155242]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (testHistogramFull.vpr@34.40--34.68) [155243]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (testHistogramFull.vpr@34.40--34.68) [155244]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (testHistogramFull.vpr@34.40--34.68) [155245]"}
            i + 1 <= hi;
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull.vpr@34.40--34.68) [155246]"}
            (forall k_5: int ::
            
            lo <= k_5 && k_5 < hi ==> Mask[Seq#Index(ar_1, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            lo <= k_5 && k_5 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (testHistogramFull.vpr@34.40--34.68) [155247]"}
              (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              (lo <= k_5 && k_5 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@34.40--34.68) [155248]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered2(k_5), neverTriggered2(k_5_1) }
              (((k_5 != k_5_1 && (lo <= k_5 && k_5 < hi)) && (lo <= k_5_1 && k_5_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_5) != Seq#Index(ar_1, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull.vpr@34.40--34.68) [155249]"}
              (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              lo <= k_5 && k_5 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              (lo <= k_5 && k_5 < hi) && NoPerm < wildcard ==> qpRange2(Seq#Index(ar_1, k_5)) && invRecv2(Seq#Index(ar_1, k_5)) == k_5
            );
            assume (forall o_9: Ref ::
              { invRecv2(o_9) }
              (lo <= invRecv2(o_9) && invRecv2(o_9) < hi) && (NoPerm < wildcard && qpRange2(o_9)) ==> Seq#Index(ar_1, invRecv2(o_9)) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_array#trigger(FrameFragment(sum_array#condqp1(Heap, i + 1, lo, hi, ar_1)), i + 1, lo, hi, ar_1);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] + sum_array(Heap, i + 1, lo, hi, ar_1) else 0);
}

// ==================================================
// Translation of function sum_square
// ==================================================

// Uninterpreted function definitions
function  sum_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): int;
function  sum_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) }
  sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == sum_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) && dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax_1, ar_1))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { sum_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) }
  dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax_1, ar_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { state(Heap, Mask), sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> (0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1)) ==> sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == (if i < vmax_1 then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] else 0) + sum_square'(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1) else 0)
);

// Framing axioms
function  sum_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { state(Heap, Mask), sum_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) }
  state(Heap, Mask) ==> sum_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == sum_square#frame(FrameFragment(sum_square#condqp2(Heap, i, lo, hi, step, vmin, vmax_1, ar_1)), i, lo, hi, step, vmin, vmax_1, ar_1)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_square
// ==================================================

function  sum_square#condqp2(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_square#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) < vmax_1 && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step < hi)) <==> vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) < vmax_1 && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step < hi))) && (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) < vmax_1 && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar_1, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar_1, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1))), Ref__Integer_value]) ==> sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)
);

// Trigger function (controlling recursive postconditions)
function  sum_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): bool;

// State-independent trigger function
function  sum_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var k_6: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_6) {
          if (k_6 < vmax_1) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@40.13--40.136) [155250]"}
              step != 0;
            if (lo <= k_6 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@40.13--40.136) [155251]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_6 && (k_6 < vmax_1 && (lo <= k_6 mod step && k_6 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull.vpr@40.13--40.136) [155252]"}
            k_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull.vpr@40.13--40.136) [155253]"}
            k_6 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@40.13--40.136) [155254]"}
      (forall k_4_2: int, k_4_3: int ::
      
      (((k_4_2 != k_4_3 && (vmin <= k_4_2 && (k_4_2 < vmax_1 && (lo <= k_4_2 mod step && k_4_2 mod step < hi)))) && (vmin <= k_4_3 && (k_4_3 < vmax_1 && (lo <= k_4_3 mod step && k_4_3 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_4_2) != Seq#Index(ar_1, k_4_3)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_2: int ::
        { Seq#Index(ar_1, k_4_2) } { Seq#Index(ar_1, k_4_2) }
        vmin <= k_4_2 && (k_4_2 < vmax_1 && (lo <= k_4_2 mod step && k_4_2 mod step < hi)) ==> qpRange3(Seq#Index(ar_1, k_4_2)) && invRecv3(Seq#Index(ar_1, k_4_2)) == k_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (vmin <= invRecv3(o_9) && (invRecv3(o_9) < vmax_1 && (lo <= invRecv3(o_9) mod step && invRecv3(o_9) mod step < hi))) && qpRange3(o_9) ==> Seq#Index(ar_1, invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_2: int ::
        { Seq#Index(ar_1, k_4_2) } { Seq#Index(ar_1, k_4_2) }
        vmin <= k_4_2 && (k_4_2 < vmax_1 && (lo <= k_4_2 mod step && k_4_2 mod step < hi)) ==> Seq#Index(ar_1, k_4_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((vmin <= invRecv3(o_9) && (invRecv3(o_9) < vmax_1 && (lo <= invRecv3(o_9) mod step && invRecv3(o_9) mod step < hi))) && qpRange3(o_9) ==> Seq#Index(ar_1, invRecv3(o_9)) == o_9 && Mask[o_9, Ref__Integer_value] < QPMask[o_9, Ref__Integer_value]) && (!((vmin <= invRecv3(o_9) && (invRecv3(o_9) < vmax_1 && (lo <= invRecv3(o_9) mod step && invRecv3(o_9) mod step < hi))) && qpRange3(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && i % step < hi ? ar[i].Ref__Integer_value : 0) + sum_square(i + 1, lo, hi, step, min, max, ar) : 0)
      if (i < vmax_1) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@37.1--43.2) [155255]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@37.1--43.2) [155256]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull.vpr@37.1--43.2) [155257]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull.vpr@37.1--43.2) [155258]"}
            i < Seq#Length(ar_1);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogramFull.vpr@37.1--43.2) [155259]"}
            HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (testHistogramFull.vpr@42.85--42.130) [155260]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (testHistogramFull.vpr@42.85--42.130) [155261]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (testHistogramFull.vpr@42.85--42.130) [155262]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (testHistogramFull.vpr@42.85--42.130) [155263]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (testHistogramFull.vpr@42.85--42.130) [155264]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (testHistogramFull.vpr@42.85--42.130) [155265]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (testHistogramFull.vpr@42.85--42.130) [155266]"}
            i + 1 <= vmax_1;
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull.vpr@42.85--42.130) [155267]"}
            (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (testHistogramFull.vpr@42.85--42.130) [155268]"}
              (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              (vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@42.85--42.130) [155269]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered4(k_5), neverTriggered4(k_5_1) }
              (((k_5 != k_5_1 && (vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi)))) && (vmin <= k_5_1 && (k_5_1 < vmax_1 && (lo <= k_5_1 mod step && k_5_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_5) != Seq#Index(ar_1, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull.vpr@42.85--42.130) [155270]"}
              (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              (vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi))) && NoPerm < wildcard ==> qpRange4(Seq#Index(ar_1, k_5)) && invRecv4(Seq#Index(ar_1, k_5)) == k_5
            );
            assume (forall o_9: Ref ::
              { invRecv4(o_9) }
              (vmin <= invRecv4(o_9) && (invRecv4(o_9) < vmax_1 && (lo <= invRecv4(o_9) mod step && invRecv4(o_9) mod step < hi))) && (NoPerm < wildcard && qpRange4(o_9)) ==> Seq#Index(ar_1, invRecv4(o_9)) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_square#trigger(FrameFragment(sum_square#condqp2(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1)), i + 1, lo, hi, step, vmin, vmax_1, ar_1);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax_1 then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] else 0) + sum_square(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1) else 0);
}

// ==================================================
// Translation of function count_square
// ==================================================

// Uninterpreted function definitions
function  count_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): int;
function  count_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) }
  count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == count_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) && dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax_1, ar_1, v_2))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { count_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) }
  dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax_1, ar_1, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> (0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1)) ==> count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == (if i < vmax_1 then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square'(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2) else 0)
);

// Framing axioms
function  count_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) }
  state(Heap, Mask) ==> count_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == count_square#frame(FrameFragment(count_square#condqp3(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)), i, lo, hi, step, vmin, vmax_1, ar_1, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_square
// ==================================================

function  count_square#condqp3(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_square#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) < vmax_1 && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step < hi)) <==> vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) < vmax_1 && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step < hi))) && (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) < vmax_1 && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar_1, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar_1, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2))), Ref__Integer_value]) ==> count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var k_19: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_19) {
          if (k_19 < vmax_1) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@48.13--48.136) [155271]"}
              step != 0;
            if (lo <= k_19 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@48.13--48.136) [155272]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_19 && (k_19 < vmax_1 && (lo <= k_19 mod step && k_19 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull.vpr@48.13--48.136) [155273]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull.vpr@48.13--48.136) [155274]"}
            k_19 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@48.13--48.136) [155275]"}
      (forall k_4_2: int, k_4_3: int ::
      
      (((k_4_2 != k_4_3 && (vmin <= k_4_2 && (k_4_2 < vmax_1 && (lo <= k_4_2 mod step && k_4_2 mod step < hi)))) && (vmin <= k_4_3 && (k_4_3 < vmax_1 && (lo <= k_4_3 mod step && k_4_3 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_4_2) != Seq#Index(ar_1, k_4_3)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_2: int ::
        { Seq#Index(ar_1, k_4_2) } { Seq#Index(ar_1, k_4_2) }
        vmin <= k_4_2 && (k_4_2 < vmax_1 && (lo <= k_4_2 mod step && k_4_2 mod step < hi)) ==> qpRange5(Seq#Index(ar_1, k_4_2)) && invRecv5(Seq#Index(ar_1, k_4_2)) == k_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (vmin <= invRecv5(o_9) && (invRecv5(o_9) < vmax_1 && (lo <= invRecv5(o_9) mod step && invRecv5(o_9) mod step < hi))) && qpRange5(o_9) ==> Seq#Index(ar_1, invRecv5(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_2: int ::
        { Seq#Index(ar_1, k_4_2) } { Seq#Index(ar_1, k_4_2) }
        vmin <= k_4_2 && (k_4_2 < vmax_1 && (lo <= k_4_2 mod step && k_4_2 mod step < hi)) ==> Seq#Index(ar_1, k_4_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((vmin <= invRecv5(o_9) && (invRecv5(o_9) < vmax_1 && (lo <= invRecv5(o_9) mod step && invRecv5(o_9) mod step < hi))) && qpRange5(o_9) ==> Seq#Index(ar_1, invRecv5(o_9)) == o_9 && Mask[o_9, Ref__Integer_value] < QPMask[o_9, Ref__Integer_value]) && (!((vmin <= invRecv5(o_9) && (invRecv5(o_9) < vmax_1 && (lo <= invRecv5(o_9) mod step && invRecv5(o_9) mod step < hi))) && qpRange5(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && (i % step < hi && ar[i].Ref__Integer_value == v) ? 1 : 0) + count_square(i + 1, lo, hi, step, min, max, ar, v) : 0)
      if (i < vmax_1) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@45.1--51.2) [155276]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@45.1--51.2) [155277]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull.vpr@45.1--51.2) [155278]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull.vpr@45.1--51.2) [155279]"}
              i < Seq#Length(ar_1);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogramFull.vpr@45.1--51.2) [155280]"}
              HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (testHistogramFull.vpr@50.97--50.147) [155281]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (testHistogramFull.vpr@50.97--50.147) [155282]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (testHistogramFull.vpr@50.97--50.147) [155283]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testHistogramFull.vpr@50.97--50.147) [155284]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (testHistogramFull.vpr@50.97--50.147) [155285]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (testHistogramFull.vpr@50.97--50.147) [155286]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (testHistogramFull.vpr@50.97--50.147) [155287]"}
            i + 1 <= vmax_1;
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull.vpr@50.97--50.147) [155288]"}
            (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testHistogramFull.vpr@50.97--50.147) [155289]"}
              (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              (vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@50.97--50.147) [155290]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered6(k_5), neverTriggered6(k_5_1) }
              (((k_5 != k_5_1 && (vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi)))) && (vmin <= k_5_1 && (k_5_1 < vmax_1 && (lo <= k_5_1 mod step && k_5_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_5) != Seq#Index(ar_1, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull.vpr@50.97--50.147) [155291]"}
              (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              (vmin <= k_5 && (k_5 < vmax_1 && (lo <= k_5 mod step && k_5 mod step < hi))) && NoPerm < wildcard ==> qpRange6(Seq#Index(ar_1, k_5)) && invRecv6(Seq#Index(ar_1, k_5)) == k_5
            );
            assume (forall o_9: Ref ::
              { invRecv6(o_9) }
              (vmin <= invRecv6(o_9) && (invRecv6(o_9) < vmax_1 && (lo <= invRecv6(o_9) mod step && invRecv6(o_9) mod step < hi))) && (NoPerm < wildcard && qpRange6(o_9)) ==> Seq#Index(ar_1, invRecv6(o_9)) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_square#trigger(FrameFragment(count_square#condqp3(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2)), i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax_1 then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2) else 0);
}

// ==================================================
// Translation of function count_list
// ==================================================

// Uninterpreted function definitions
function  count_list(Heap: HeapType, i: int, hi: int, ar_1: (Seq int), v_2: int): int;
function  count_list'(Heap: HeapType, i: int, hi: int, ar_1: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq int), v_2: int ::
  { count_list(Heap, i, hi, ar_1, v_2) }
  count_list(Heap, i, hi, ar_1, v_2) == count_list'(Heap, i, hi, ar_1, v_2) && dummyFunction(count_list#triggerStateless(i, hi, ar_1, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq int), v_2: int ::
  { count_list'(Heap, i, hi, ar_1, v_2) }
  dummyFunction(count_list#triggerStateless(i, hi, ar_1, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list(Heap, i, hi, ar_1, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar_1) ==> count_list(Heap, i, hi, ar_1, v_2) == (if i < hi then (if Seq#Index(ar_1, i) == v_2 then 1 else 0) + count_list'(Heap, i + 1, hi, ar_1, v_2) else 0)
);

// Framing axioms
function  count_list#frame(frame: FrameType, i: int, hi: int, ar_1: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list'(Heap, i, hi, ar_1, v_2) }
  state(Heap, Mask) ==> count_list'(Heap, i, hi, ar_1, v_2) == count_list#frame(EmptyFrame, i, hi, ar_1, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_list#trigger(frame: FrameType, i: int, hi: int, ar_1: (Seq int), v_2: int): bool;

// State-independent trigger function
function  count_list#triggerStateless(i: int, hi: int, ar_1: (Seq int), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_list#definedness(i: int, hi: int, ar_1: (Seq int), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull.vpr@53.1--58.2) [155292]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull.vpr@53.1--58.2) [155293]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (testHistogramFull.vpr@57.36--57.64) [155294]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (testHistogramFull.vpr@57.36--57.64) [155295]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (testHistogramFull.vpr@57.36--57.64) [155296]"}
            hi <= Seq#Length(ar_1);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_list#trigger(EmptyFrame, i + 1, hi, ar_1, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Seq#Index(ar_1, i) == v_2 then 1 else 0) + count_list(Heap, i + 1, hi, ar_1, v_2) else 0);
}

// ==================================================
// Translation of function count_array
// ==================================================

// Uninterpreted function definitions
function  count_array(Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int): int;
function  count_array'(Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { count_array(Heap, i, hi, ar_1, v_2) }
  count_array(Heap, i, hi, ar_1, v_2) == count_array'(Heap, i, hi, ar_1, v_2) && dummyFunction(count_array#triggerStateless(i, hi, ar_1, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { count_array'(Heap, i, hi, ar_1, v_2) }
  dummyFunction(count_array#triggerStateless(i, hi, ar_1, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array(Heap, i, hi, ar_1, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> 0 <= i && i <= hi ==> count_array(Heap, i, hi, ar_1, v_2) == (if i < hi then (if Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array'(Heap, i + 1, hi, ar_1, v_2) else 0)
);

// Framing axioms
function  count_array#frame(frame: FrameType, i: int, hi: int, ar_1: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array'(Heap, i, hi, ar_1, v_2) }
  state(Heap, Mask) ==> count_array'(Heap, i, hi, ar_1, v_2) == count_array#frame(FrameFragment(count_array#condqp4(Heap, i, hi, ar_1, v_2)), i, hi, ar_1, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_array
// ==================================================

function  count_array#condqp4(Heap: HeapType, i_1_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_array#condqp4(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) < hi <==> 0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) < hi) && (0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) < hi ==> Heap2Heap[Seq#Index(ar_1, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar_1, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2))), Ref__Integer_value]) ==> count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2) == count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_array#trigger(frame: FrameType, i: int, hi: int, ar_1: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_array#triggerStateless(i: int, hi: int, ar_1: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_array#definedness(i: int, hi: int, ar_1: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (0 <= k_7 && k_7 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull.vpr@62.13--62.94) [155297]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull.vpr@62.13--62.94) [155298]"}
            k_7 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@62.13--62.94) [155299]"}
      (forall k_4_2: int, k_4_3: int ::
      
      (((k_4_2 != k_4_3 && (0 <= k_4_2 && k_4_2 < hi)) && (0 <= k_4_3 && k_4_3 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_4_2) != Seq#Index(ar_1, k_4_3)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_2: int ::
        { Seq#Index(ar_1, k_4_2) } { Seq#Index(ar_1, k_4_2) }
        0 <= k_4_2 && k_4_2 < hi ==> qpRange7(Seq#Index(ar_1, k_4_2)) && invRecv7(Seq#Index(ar_1, k_4_2)) == k_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (0 <= invRecv7(o_9) && invRecv7(o_9) < hi) && qpRange7(o_9) ==> Seq#Index(ar_1, invRecv7(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_2: int ::
        { Seq#Index(ar_1, k_4_2) } { Seq#Index(ar_1, k_4_2) }
        0 <= k_4_2 && k_4_2 < hi ==> Seq#Index(ar_1, k_4_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv7(o_9) && invRecv7(o_9) < hi) && qpRange7(o_9) ==> Seq#Index(ar_1, invRecv7(o_9)) == o_9 && Mask[o_9, Ref__Integer_value] < QPMask[o_9, Ref__Integer_value]) && (!((0 <= invRecv7(o_9) && invRecv7(o_9) < hi) && qpRange7(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i].Ref__Integer_value == v ? 1 : 0) + count_array(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull.vpr@60.1--65.2) [155300]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull.vpr@60.1--65.2) [155301]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogramFull.vpr@60.1--65.2) [155302]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (testHistogramFull.vpr@64.55--64.84) [155303]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (testHistogramFull.vpr@64.55--64.84) [155304]"}
            i + 1 <= hi;
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull.vpr@64.55--64.84) [155305]"}
            (forall k_5: int ::
            
            0 <= k_5 && k_5 < hi ==> Mask[Seq#Index(ar_1, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            0 <= k_5 && k_5 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testHistogramFull.vpr@64.55--64.84) [155306]"}
              (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              (0 <= k_5 && k_5 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@64.55--64.84) [155307]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered8(k_5), neverTriggered8(k_5_1) }
              (((k_5 != k_5_1 && (0 <= k_5 && k_5 < hi)) && (0 <= k_5_1 && k_5_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_5) != Seq#Index(ar_1, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull.vpr@64.55--64.84) [155308]"}
              (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              0 <= k_5 && k_5 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar_1, k_5) } { Seq#Index(ar_1, k_5) }
              (0 <= k_5 && k_5 < hi) && NoPerm < wildcard ==> qpRange8(Seq#Index(ar_1, k_5)) && invRecv8(Seq#Index(ar_1, k_5)) == k_5
            );
            assume (forall o_9: Ref ::
              { invRecv8(o_9) }
              (0 <= invRecv8(o_9) && invRecv8(o_9) < hi) && (NoPerm < wildcard && qpRange8(o_9)) ==> Seq#Index(ar_1, invRecv8(o_9)) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_array#trigger(FrameFragment(count_array#condqp4(Heap, i + 1, hi, ar_1, v_2)), i + 1, hi, ar_1, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array(Heap, i + 1, hi, ar_1, v_2) else 0);
}

// ==================================================
// Translation of method Ref__loop_main_87
// ==================================================

procedure Ref__loop_main_87(diz: Ref, current_thread_id: int, P_2: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_4: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_14: int;
  var k_9: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_7_1: int;
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
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_4 && k_4 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@70.13--70.92) [155309]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@70.13--70.92) [155310]"}
            k_4 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@70.13--70.92) [155311]"}
      (forall k_1: int, k_1_1: int ::
      
      (((k_1 != k_1_1 && (0 <= k_1 && k_1 < P_2)) && (0 <= k_1_1 && k_1_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_1) != Seq#Index(hist, k_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_1: int ::
        { Seq#Index(hist, k_1) } { Seq#Index(hist, k_1) }
        (0 <= k_1 && k_1 < P_2) && NoPerm < FullPerm ==> qpRange9(Seq#Index(hist, k_1)) && invRecv9(Seq#Index(hist, k_1)) == k_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < P_2) && NoPerm < FullPerm) && qpRange9(o_9) ==> Seq#Index(hist, invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1: int ::
        { Seq#Index(hist, k_1) } { Seq#Index(hist, k_1) }
        0 <= k_1 && k_1 < P_2 ==> Seq#Index(hist, k_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv9(o_9) && invRecv9(o_9) < P_2) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv9(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < P_2) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_14 && k_14 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@71.12--71.91) [155312]"}
            k_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@71.12--71.91) [155313]"}
            k_14 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@71.12--71.91) [155314]"}
      (forall k_3: int, k_3_2: int ::
      
      (((k_3 != k_3_2 && (0 <= k_3 && k_3 < P_2)) && (0 <= k_3_2 && k_3_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        (0 <= k_3 && k_3 < P_2) && NoPerm < FullPerm ==> qpRange10(Seq#Index(hist, k_3)) && invRecv10(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < P_2) && NoPerm < FullPerm) && qpRange10(o_9) ==> Seq#Index(hist, invRecv10(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        0 <= k_3 && k_3 < P_2 ==> Seq#Index(hist, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv10(o_9) && invRecv10(o_9) < P_2) && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv10(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv10(o_9) && invRecv10(o_9) < P_2) && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == 0)
      if (*) {
        if (0 <= k_9 && k_9 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@72.12--72.86) [155315]"}
            k_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@72.12--72.86) [155316]"}
            k_9 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@72.12--72.86) [155317]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_9), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_5: int ::
      { Seq#Index(hist, k_5) }
      0 <= k_5 && k_5 < P_2 ==> PostHeap[Seq#Index(hist, k_5), Ref__Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistogramFull.vpr@74.3--74.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@71.12--71.91) [155318]"}
        (forall k_6_2: int, k_6_3: int ::
        { neverTriggered11(k_6_2), neverTriggered11(k_6_3) }
        (((k_6_2 != k_6_3 && (0 <= k_6_2 && k_6_2 < P_2)) && (0 <= k_6_3 && k_6_3 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_6_2) != Seq#Index(hist, k_6_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_87 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@71.12--71.91) [155319]"}
        (forall k_6_2: int ::
        { Seq#Index(hist, k_6_2) } { Seq#Index(hist, k_6_2) }
        0 <= k_6_2 && k_6_2 < P_2 ==> Mask[Seq#Index(hist, k_6_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_6_2: int ::
        { Seq#Index(hist, k_6_2) } { Seq#Index(hist, k_6_2) }
        (0 <= k_6_2 && k_6_2 < P_2) && NoPerm < FullPerm ==> qpRange11(Seq#Index(hist, k_6_2)) && invRecv11(Seq#Index(hist, k_6_2)) == k_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (0 <= invRecv11(o_9) && invRecv11(o_9) < P_2) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(hist, invRecv11(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < P_2) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(hist, invRecv11(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv11(o_9) && invRecv11(o_9) < P_2) && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= k_7_1 && k_7_1 < P_2) {
        assert {:msg "  Postcondition of Ref__loop_main_87 might not hold. Assertion hist[k].Ref__Integer_value == 0 might not hold. (testHistogramFull.vpr@72.12--72.86) [155320]"}
          Heap[Seq#Index(hist, k_7_1), Ref__Integer_value] == 0;
      }
      assume false;
    }
    assume (forall k_8_1_1: int ::
      { Seq#Index(hist, k_8_1_1) }
      0 <= k_8_1_1 && k_8_1_1 < P_2 ==> Heap[Seq#Index(hist, k_8_1_1), Ref__Integer_value] == 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_87
// ==================================================

procedure Ref__loop_body_87(diz: Ref, current_thread_id: int, k: int, P_2: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_4: Ref;
  var __flatten_5: int;
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
    assume 0 <= k;
    assume k < P_2;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(hist[k].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@81.12--81.50) [155321]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@81.12--81.50) [155322]"}
        k < Seq#Length(hist);
    perm := FullPerm;
    assume Seq#Index(hist, k) != null;
    Mask := Mask[Seq#Index(hist, k), Ref__Integer_value:=Mask[Seq#Index(hist, k), Ref__Integer_value] + perm];
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
    assume 0 <= k;
    assume k < P_2;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(hist[k].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@83.11--83.49) [155323]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@83.11--83.49) [155324]"}
        k < Seq#Length(hist);
    perm := FullPerm;
    assume Seq#Index(hist, k) != null;
    PostMask := PostMask[Seq#Index(hist, k), Ref__Integer_value:=PostMask[Seq#Index(hist, k), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of hist[k].Ref__Integer_value == 0
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@84.11--84.42) [155325]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@84.11--84.42) [155326]"}
        k < Seq#Length(hist);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@84.11--84.42) [155327]"}
        HasDirectPerm(PostMask, Seq#Index(hist, k), Ref__Integer_value);
    assume PostHeap[Seq#Index(hist, k), Ref__Integer_value] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_4, $allocated];
  
  // -- Translating statement: __flatten_4 := hist[k] -- testHistogramFull.vpr@88.3--88.25
    
    // -- Check definedness of hist[k]
      assert {:msg "  Assignment might fail. Index hist[k] into hist might be negative. (testHistogramFull.vpr@88.3--88.25) [155328]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@88.3--88.25) [155329]"}
        k < Seq#Length(hist);
    __flatten_4 := Seq#Index(hist, k);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := 0 -- testHistogramFull.vpr@89.3--89.19
    __flatten_5 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4.Ref__Integer_value := __flatten_5 -- testHistogramFull.vpr@90.3--90.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (testHistogramFull.vpr@90.3--90.48) [155330]"}
      FullPerm == Mask[__flatten_4, Ref__Integer_value];
    Heap := Heap[__flatten_4, Ref__Integer_value:=__flatten_5];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_87 might not hold. Assertion 0 <= k might not hold. (testHistogramFull.vpr@82.11--82.30) [155331]"}
      0 <= k;
    assert {:msg "  Postcondition of Ref__loop_body_87 might not hold. Assertion k < P might not hold. (testHistogramFull.vpr@82.11--82.30) [155332]"}
      k < P_2;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_87 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@83.11--83.49) [155333]"}
        perm <= Mask[Seq#Index(hist, k), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(hist, k), Ref__Integer_value:=Mask[Seq#Index(hist, k), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_87 might not hold. Assertion hist[k].Ref__Integer_value == 0 might not hold. (testHistogramFull.vpr@84.11--84.42) [155334]"}
      Heap[Seq#Index(hist, k), Ref__Integer_value] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_main_107
// ==================================================

procedure Ref__loop_main_107(diz: Ref, current_thread_id: int, step: int, matrix_1: (Seq Ref), P_2: int, N: int, M_1: int, p_1: Perm, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_2: int;
  var QPMask: MaskType;
  var j_6: int;
  var i_19: int;
  var j_10: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_9: int;
  var j_7: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_8: int;
  var i_17: int;
  var j_22: int;
  var k_23: int;
  var k_24: int;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var i_6_2: int;
  var j_11_1: int;
  var k_7_1: int;
  
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
    assume p_1 != NoPerm;
    assume M_1 > 0;
    assume N > 0;
    assume step >= N;
    assume P_2 > 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_2 && k_2 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@97.13--97.92) [155335]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@97.13--97.92) [155336]"}
            k_2 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@97.13--97.92) [155337]"}
      (forall k_1: int, k_1_1: int ::
      
      (((k_1 != k_1_1 && (0 <= k_1 && k_1 < P_2)) && (0 <= k_1_1 && k_1_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_1) != Seq#Index(hist, k_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_1: int ::
        { Seq#Index(hist, k_1) } { Seq#Index(hist, k_1) }
        (0 <= k_1 && k_1 < P_2) && NoPerm < FullPerm ==> qpRange12(Seq#Index(hist, k_1)) && invRecv12(Seq#Index(hist, k_1)) == k_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < P_2) && NoPerm < FullPerm) && qpRange12(o_9) ==> Seq#Index(hist, invRecv12(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1: int ::
        { Seq#Index(hist, k_1) } { Seq#Index(hist, k_1) }
        0 <= k_1 && k_1 < P_2 ==> Seq#Index(hist, k_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv12(o_9) && invRecv12(o_9) < P_2) && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv12(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < P_2) && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N <= step;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } 0 <= j && (j < M * step && j % step < N) ==> acc(matrix[j].Ref__Integer_value, p))
      if (*) {
        if (0 <= j_6) {
          if (j_6 < M_1 * step) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@99.13--99.115) [155338]"}
              step != 0;
          }
        }
        if (0 <= j_6 && (j_6 < M_1 * step && j_6 mod step < N)) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogramFull.vpr@99.13--99.115) [155339]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogramFull.vpr@99.13--99.115) [155340]"}
            j_6 < Seq#Length(matrix_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull.vpr@99.13--99.115) [155341]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && (j_1 < M_1 * step && j_1 mod step < N))) && (0 <= j_1_1 && (j_1_1 < M_1 * step && j_1_1 mod step < N))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(matrix_1, j_1) != Seq#Index(matrix_1, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(matrix_1, j_1) } { Seq#Index(matrix_1, j_1) }
        (0 <= j_1 && (j_1 < M_1 * step && j_1 mod step < N)) && NoPerm < p_1 ==> qpRange13(Seq#Index(matrix_1, j_1)) && invRecv13(Seq#Index(matrix_1, j_1)) == j_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((0 <= invRecv13(o_9) && (invRecv13(o_9) < M_1 * step && invRecv13(o_9) mod step < N)) && NoPerm < p_1) && qpRange13(o_9) ==> Seq#Index(matrix_1, invRecv13(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (testHistogramFull.vpr@99.13--99.115) [155342]"}
      (forall j_1: int ::
      { Seq#Index(matrix_1, j_1) } { Seq#Index(matrix_1, j_1) }
      0 <= j_1 && (j_1 < M_1 * step && j_1 mod step < N) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(matrix_1, j_1) } { Seq#Index(matrix_1, j_1) }
        (0 <= j_1 && (j_1 < M_1 * step && j_1 mod step < N)) && p_1 > NoPerm ==> Seq#Index(matrix_1, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv13(o_9) && (invRecv13(o_9) < M_1 * step && invRecv13(o_9) mod step < N)) && NoPerm < p_1) && qpRange13(o_9) ==> (NoPerm < p_1 ==> Seq#Index(matrix_1, invRecv13(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + p_1) && (!(((0 <= invRecv13(o_9) && (invRecv13(o_9) < M_1 * step && invRecv13(o_9) mod step < N)) && NoPerm < p_1) && qpRange13(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { matrix[Ref__multidim_index_2(M, step, i, j)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value)
      if (*) {
        if (0 <= i_19 && (i_19 < M_1 && (0 <= j_10 && j_10 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@100.98--100.134) [155343]"}
              0 <= i_19;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@100.98--100.134) [155344]"}
              i_19 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@100.98--100.134) [155345]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@100.98--100.134) [155346]"}
              0 <= j_10;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@100.98--100.134) [155347]"}
              j_10 < step;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@100.98--100.134) [155348]"}
              0 <= step;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@100.13--100.155) [155349]"}
            Ref__multidim_index_2(Heap, M_1, step, i_19, j_10) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@100.13--100.155) [155350]"}
            Ref__multidim_index_2(Heap, M_1, step, i_19, j_10) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@100.13--100.155) [155351]"}
            HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_19, j_10)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_1: int, j_3: int ::
      { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_1, j_3)) }
      0 <= i_1 && (i_1 < M_1 && (0 <= j_3 && j_3 < N)) ==> 0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_1, j_3)), Ref__Integer_value]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { matrix[Ref__multidim_index_2(M, step, i, j)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value < P)
      if (*) {
        if (0 <= i_9 && (i_9 < M_1 && (0 <= j_7 && j_7 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@101.93--101.129) [155352]"}
              0 <= i_9;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@101.93--101.129) [155353]"}
              i_9 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@101.93--101.129) [155354]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@101.93--101.129) [155355]"}
              0 <= j_7;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@101.93--101.129) [155356]"}
              j_7 < step;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@101.93--101.129) [155357]"}
              0 <= step;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@101.13--101.154) [155358]"}
            Ref__multidim_index_2(Heap, M_1, step, i_9, j_7) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@101.13--101.154) [155359]"}
            Ref__multidim_index_2(Heap, M_1, step, i_9, j_7) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@101.13--101.154) [155360]"}
            HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_9, j_7)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_5: int ::
      { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_3_2, j_5)) }
      0 <= i_3_2 && (i_3_2 < M_1 && (0 <= j_5 && j_5 < N)) ==> Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_3_2, j_5)), Ref__Integer_value] < P_2
    );
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
    assume p_1 != NoPerm;
    assume M_1 > 0;
    assume N > 0;
    assume step >= N;
    assume P_2 > 0;
    assume state(PostHeap, PostMask);
    assume N <= step;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } 0 <= j && (j < M * step && j % step < N) ==> acc(matrix[j].Ref__Integer_value, p))
      if (*) {
        if (0 <= j_8) {
          if (j_8 < M_1 * step) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@104.12--104.114) [155361]"}
              step != 0;
          }
        }
        if (0 <= j_8 && (j_8 < M_1 * step && j_8 mod step < N)) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogramFull.vpr@104.12--104.114) [155362]"}
            j_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogramFull.vpr@104.12--104.114) [155363]"}
            j_8 < Seq#Length(matrix_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull.vpr@104.12--104.114) [155364]"}
      (forall j_7_1: int, j_7_2: int ::
      
      (((j_7_1 != j_7_2 && (0 <= j_7_1 && (j_7_1 < M_1 * step && j_7_1 mod step < N))) && (0 <= j_7_2 && (j_7_2 < M_1 * step && j_7_2 mod step < N))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(matrix_1, j_7_1) != Seq#Index(matrix_1, j_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_7_1: int ::
        { Seq#Index(matrix_1, j_7_1) } { Seq#Index(matrix_1, j_7_1) }
        (0 <= j_7_1 && (j_7_1 < M_1 * step && j_7_1 mod step < N)) && NoPerm < p_1 ==> qpRange14(Seq#Index(matrix_1, j_7_1)) && invRecv14(Seq#Index(matrix_1, j_7_1)) == j_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        ((0 <= invRecv14(o_9) && (invRecv14(o_9) < M_1 * step && invRecv14(o_9) mod step < N)) && NoPerm < p_1) && qpRange14(o_9) ==> Seq#Index(matrix_1, invRecv14(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (testHistogramFull.vpr@104.12--104.114) [155365]"}
      (forall j_7_1: int ::
      { Seq#Index(matrix_1, j_7_1) } { Seq#Index(matrix_1, j_7_1) }
      0 <= j_7_1 && (j_7_1 < M_1 * step && j_7_1 mod step < N) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_7_1: int ::
        { Seq#Index(matrix_1, j_7_1) } { Seq#Index(matrix_1, j_7_1) }
        (0 <= j_7_1 && (j_7_1 < M_1 * step && j_7_1 mod step < N)) && p_1 > NoPerm ==> Seq#Index(matrix_1, j_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv14(o_9) && (invRecv14(o_9) < M_1 * step && invRecv14(o_9) mod step < N)) && NoPerm < p_1) && qpRange14(o_9) ==> (NoPerm < p_1 ==> Seq#Index(matrix_1, invRecv14(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + p_1) && (!(((0 <= invRecv14(o_9) && (invRecv14(o_9) < M_1 * step && invRecv14(o_9) mod step < N)) && NoPerm < p_1) && qpRange14(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { old(Ref__multidim_index_2(M, step, i, j)) } { old(matrix[Ref__multidim_index_2(M, step, i, j)]) } 0 <= i && (i < M && (0 <= j && j < N)) ==> matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value))
      if (*) {
        if (0 <= i_17 && (i_17 < M_1 && (0 <= j_22 && j_22 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@105.92--105.128) [155366]"}
              0 <= i_17;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@105.92--105.128) [155367]"}
              i_17 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@105.92--105.128) [155368]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@105.92--105.128) [155369]"}
              0 <= j_22;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@105.92--105.128) [155370]"}
              j_22 < step;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@105.92--105.128) [155371]"}
              0 <= step;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@105.12--105.221) [155372]"}
            Ref__multidim_index_2(PostHeap, M_1, step, i_17, j_22) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@105.12--105.221) [155373]"}
            Ref__multidim_index_2(PostHeap, M_1, step, i_17, j_22) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@105.12--105.221) [155374]"}
            HasDirectPerm(PostMask, Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i_17, j_22)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@105.163--105.199) [155375]"}
              0 <= i_17;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@105.163--105.199) [155376]"}
              i_17 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@105.163--105.199) [155377]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@105.163--105.199) [155378]"}
              0 <= j_22;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@105.163--105.199) [155379]"}
              j_22 < step;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@105.163--105.199) [155380]"}
              0 <= step;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@105.12--105.221) [155381]"}
            Ref__multidim_index_2(oldHeap, M_1, step, i_17, j_22) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@105.12--105.221) [155382]"}
            Ref__multidim_index_2(oldHeap, M_1, step, i_17, j_22) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@105.12--105.221) [155383]"}
            HasDirectPerm(oldMask, Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i_17, j_22)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_9_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_5_1, j_9_1) } { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_5_1, j_9_1)) }
      0 <= i_5_1 && (i_5_1 < M_1 && (0 <= j_9_1 && j_9_1 < N)) ==> PostHeap[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i_5_1, j_9_1)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i_5_1, j_9_1)), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_23 && k_23 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@106.12--106.91) [155384]"}
            k_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@106.12--106.91) [155385]"}
            k_23 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@106.12--106.91) [155386]"}
      (forall k_3: int, k_3_2: int ::
      
      (((k_3 != k_3_2 && (0 <= k_3 && k_3 < P_2)) && (0 <= k_3_2 && k_3_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        (0 <= k_3 && k_3 < P_2) && NoPerm < FullPerm ==> qpRange15(Seq#Index(hist, k_3)) && invRecv15(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        ((0 <= invRecv15(o_9) && invRecv15(o_9) < P_2) && NoPerm < FullPerm) && qpRange15(o_9) ==> Seq#Index(hist, invRecv15(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        0 <= k_3 && k_3 < P_2 ==> Seq#Index(hist, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv15(o_9) && invRecv15(o_9) < P_2) && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv15(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv15(o_9) && invRecv15(o_9) < P_2) && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { old(hist[k]) } 0 <= k && k < P ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k))
      if (*) {
        if (0 <= k_24 && k_24 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@107.12--107.170) [155387]"}
            k_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@107.12--107.170) [155388]"}
            k_24 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@107.12--107.170) [155389]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_24), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@107.12--107.170) [155390]"}
            k_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@107.12--107.170) [155391]"}
            k_24 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@107.12--107.170) [155392]"}
            HasDirectPerm(oldMask, Seq#Index(hist, k_24), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= N might not hold. (testHistogramFull.vpr@107.118--107.169) [155393]"}
              0 <= N;
            assert {:msg "  Precondition of function count_square might not hold. Assertion N <= step might not hold. (testHistogramFull.vpr@107.118--107.169) [155394]"}
              N <= step;
            assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testHistogramFull.vpr@107.118--107.169) [155395]"}
              step > 0;
            assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= M * step might not hold. (testHistogramFull.vpr@107.118--107.169) [155396]"}
              0 <= M_1 * step;
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogramFull.vpr@107.118--107.169) [155397]"}
              (forall k$0: int ::
              
              0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N)) ==> PostMask[Seq#Index(matrix_1, k$0), Ref__Integer_value] > NoPerm
            );
            assume (forall k$0: int ::
              
              0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N)) ==> wildcard < PostMask[Seq#Index(matrix_1, k$0), Ref__Integer_value]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testHistogramFull.vpr@107.118--107.169) [155398]"}
                (forall k$0: int ::
                { Seq#Index(matrix_1, k$0) } { Seq#Index(matrix_1, k$0) }
                (0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N))) && dummyFunction(PostHeap[Seq#Index(matrix_1, k$0), Ref__Integer_value]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver matrix[k$0] is injective
              assert {:msg "  Precondition of function count_square might not hold. Quantified resource matrix[k$0].Ref__Integer_value might not be injective. (testHistogramFull.vpr@107.118--107.169) [155399]"}
                (forall k$0: int, k$0_3: int ::
                { neverTriggered16(k$0), neverTriggered16(k$0_3) }
                (((k$0 != k$0_3 && (0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N)))) && (0 <= k$0_3 && (k$0_3 < M_1 * step && (0 <= k$0_3 mod step && k$0_3 mod step < N)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(matrix_1, k$0) != Seq#Index(matrix_1, k$0_3)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogramFull.vpr@107.118--107.169) [155400]"}
                (forall k$0: int ::
                { Seq#Index(matrix_1, k$0) } { Seq#Index(matrix_1, k$0) }
                0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N)) ==> wildcard > NoPerm ==> PostMask[Seq#Index(matrix_1, k$0), Ref__Integer_value] > NoPerm
              );
            
            // -- assumptions for inverse of receiver matrix[k$0]
              assume (forall k$0: int ::
                { Seq#Index(matrix_1, k$0) } { Seq#Index(matrix_1, k$0) }
                (0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N))) && NoPerm < wildcard ==> qpRange16(Seq#Index(matrix_1, k$0)) && invRecv16(Seq#Index(matrix_1, k$0)) == k$0
              );
              assume (forall o_9: Ref ::
                { invRecv16(o_9) }
                (0 <= invRecv16(o_9) && (invRecv16(o_9) < M_1 * step && (0 <= invRecv16(o_9) mod step && invRecv16(o_9) mod step < N))) && (NoPerm < wildcard && qpRange16(o_9)) ==> Seq#Index(matrix_1, invRecv16(o_9)) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall k_5: int ::
      { Seq#Index(hist, k_5) }
      0 <= k_5 && k_5 < P_2 ==> PostHeap[Seq#Index(hist, k_5), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_5), Ref__Integer_value] + count_square(PostHeap, 0, 0, N, step, 0, M_1 * step, matrix_1, k_5)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistogramFull.vpr@109.3--109.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Assertion p != none might not hold. (testHistogramFull.vpr@102.11--102.70) [155401]"}
      p_1 != NoPerm;
    assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Assertion M > 0 might not hold. (testHistogramFull.vpr@102.11--102.70) [155402]"}
      M_1 > 0;
    assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Assertion N > 0 might not hold. (testHistogramFull.vpr@102.11--102.70) [155403]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Assertion step >= N might not hold. (testHistogramFull.vpr@102.11--102.70) [155404]"}
      step >= N;
    assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Assertion P > 0 might not hold. (testHistogramFull.vpr@102.11--102.70) [155405]"}
      P_2 > 0;
    assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Assertion N <= step might not hold. (testHistogramFull.vpr@103.11--103.20) [155406]"}
      N <= step;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Fraction p might be negative. (testHistogramFull.vpr@104.12--104.114) [155407]"}
        (forall j_10_2: int ::
        { Seq#Index(matrix_1, j_10_2) } { Seq#Index(matrix_1, j_10_2) }
        (0 <= j_10_2 && (j_10_2 < M_1 * step && j_10_2 mod step < N)) && dummyFunction(Heap[Seq#Index(matrix_1, j_10_2), Ref__Integer_value]) ==> p_1 >= NoPerm
      );
    
    // -- check if receiver matrix[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull.vpr@104.12--104.114) [155408]"}
        (forall j_10_2: int, j_10_3: int ::
        { neverTriggered17(j_10_2), neverTriggered17(j_10_3) }
        (((j_10_2 != j_10_3 && (0 <= j_10_2 && (j_10_2 < M_1 * step && j_10_2 mod step < N))) && (0 <= j_10_3 && (j_10_3 < M_1 * step && j_10_3 mod step < N))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(matrix_1, j_10_2) != Seq#Index(matrix_1, j_10_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (testHistogramFull.vpr@104.12--104.114) [155409]"}
        (forall j_10_2: int ::
        { Seq#Index(matrix_1, j_10_2) } { Seq#Index(matrix_1, j_10_2) }
        0 <= j_10_2 && (j_10_2 < M_1 * step && j_10_2 mod step < N) ==> Mask[Seq#Index(matrix_1, j_10_2), Ref__Integer_value] >= p_1
      );
    
    // -- assumptions for inverse of receiver matrix[j]
      assume (forall j_10_2: int ::
        { Seq#Index(matrix_1, j_10_2) } { Seq#Index(matrix_1, j_10_2) }
        (0 <= j_10_2 && (j_10_2 < M_1 * step && j_10_2 mod step < N)) && NoPerm < p_1 ==> qpRange17(Seq#Index(matrix_1, j_10_2)) && invRecv17(Seq#Index(matrix_1, j_10_2)) == j_10_2
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        (0 <= invRecv17(o_9) && (invRecv17(o_9) < M_1 * step && invRecv17(o_9) mod step < N)) && (NoPerm < p_1 && qpRange17(o_9)) ==> Seq#Index(matrix_1, invRecv17(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv17(o_9) && (invRecv17(o_9) < M_1 * step && invRecv17(o_9) mod step < N)) && (NoPerm < p_1 && qpRange17(o_9)) ==> Seq#Index(matrix_1, invRecv17(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - p_1) && (!((0 <= invRecv17(o_9) && (invRecv17(o_9) < M_1 * step && invRecv17(o_9) mod step < N)) && (NoPerm < p_1 && qpRange17(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_6_2 && (i_6_2 < M_1 && (0 <= j_11_1 && j_11_1 < N))) {
        assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Assertion matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value) might not hold. (testHistogramFull.vpr@105.12--105.221) [155410]"}
          Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_6_2, j_11_1)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i_6_2, j_11_1)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_7_1_1: int, j_12_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_7_1_1, j_12_1) } { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_7_1_1, j_12_1)) }
      0 <= i_7_1_1 && (i_7_1_1 < M_1 && (0 <= j_12_1 && j_12_1 < N)) ==> Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_7_1_1, j_12_1)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i_7_1_1, j_12_1)), Ref__Integer_value]
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@106.12--106.91) [155411]"}
        (forall k_6_2: int, k_6_3: int ::
        { neverTriggered18(k_6_2), neverTriggered18(k_6_3) }
        (((k_6_2 != k_6_3 && (0 <= k_6_2 && k_6_2 < P_2)) && (0 <= k_6_3 && k_6_3 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_6_2) != Seq#Index(hist, k_6_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@106.12--106.91) [155412]"}
        (forall k_6_2: int ::
        { Seq#Index(hist, k_6_2) } { Seq#Index(hist, k_6_2) }
        0 <= k_6_2 && k_6_2 < P_2 ==> Mask[Seq#Index(hist, k_6_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_6_2: int ::
        { Seq#Index(hist, k_6_2) } { Seq#Index(hist, k_6_2) }
        (0 <= k_6_2 && k_6_2 < P_2) && NoPerm < FullPerm ==> qpRange18(Seq#Index(hist, k_6_2)) && invRecv18(Seq#Index(hist, k_6_2)) == k_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        (0 <= invRecv18(o_9) && invRecv18(o_9) < P_2) && (NoPerm < FullPerm && qpRange18(o_9)) ==> Seq#Index(hist, invRecv18(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv18(o_9) && invRecv18(o_9) < P_2) && (NoPerm < FullPerm && qpRange18(o_9)) ==> Seq#Index(hist, invRecv18(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv18(o_9) && invRecv18(o_9) < P_2) && (NoPerm < FullPerm && qpRange18(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= k_7_1 && k_7_1 < P_2) {
        assert {:msg "  Postcondition of Ref__loop_main_107 might not hold. Assertion hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k) might not hold. (testHistogramFull.vpr@107.12--107.170) [155413]"}
          Heap[Seq#Index(hist, k_7_1), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_7_1), Ref__Integer_value] + count_square(Heap, 0, 0, N, step, 0, M_1 * step, matrix_1, k_7_1);
      }
      assume false;
    }
    assume (forall k_8_1_1: int ::
      { Seq#Index(hist, k_8_1_1) }
      0 <= k_8_1_1 && k_8_1_1 < P_2 ==> Heap[Seq#Index(hist, k_8_1_1), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_8_1_1), Ref__Integer_value] + count_square(Heap, 0, 0, N, step, 0, M_1 * step, matrix_1, k_8_1_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_107
// ==================================================

procedure Ref__loop_body_107(diz: Ref, current_thread_id: int, p_1: Perm, step: int, j: int, i: int, P_2: int, N: int, M_1: int, hist: (Seq Ref), matrix_1: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_21: int;
  var QPMask: MaskType;
  var k_32: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_37: int;
  var k_26: int;
  var __flatten_7: Ref;
  var __flatten_8: Ref;
  var __flatten_10: Ref;
  var __flatten_11: Ref;
  var __flatten_6: int;
  var __flatten_1: int;
  var __flatten_9: int;
  var k_9_1: int;
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
    assume p_1 != NoPerm;
    assume M_1 > 0;
    assume N > 0;
    assume step >= N;
    assume P_2 > 0;
    assume state(Heap, Mask);
    assume 0 <= i;
    assume i < M_1;
    assume 0 <= j;
    assume j < N;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_21 && k_21 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@117.13--117.92) [155414]"}
            k_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@117.13--117.92) [155415]"}
            k_21 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@117.13--117.92) [155416]"}
      (forall k_1: int, k_1_1: int ::
      
      (((k_1 != k_1_1 && (0 <= k_1 && k_1 < P_2)) && (0 <= k_1_1 && k_1_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_1) != Seq#Index(hist, k_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_1: int ::
        { Seq#Index(hist, k_1) } { Seq#Index(hist, k_1) }
        (0 <= k_1 && k_1 < P_2) && NoPerm < FullPerm ==> qpRange19(Seq#Index(hist, k_1)) && invRecv19(Seq#Index(hist, k_1)) == k_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        ((0 <= invRecv19(o_9) && invRecv19(o_9) < P_2) && NoPerm < FullPerm) && qpRange19(o_9) ==> Seq#Index(hist, invRecv19(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1: int ::
        { Seq#Index(hist, k_1) } { Seq#Index(hist, k_1) }
        0 <= k_1 && k_1 < P_2 ==> Seq#Index(hist, k_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv19(o_9) && invRecv19(o_9) < P_2) && NoPerm < FullPerm) && qpRange19(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv19(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv19(o_9) && invRecv19(o_9) < P_2) && NoPerm < FullPerm) && qpRange19(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == 0)
      if (*) {
        if (0 <= k_32 && k_32 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@118.13--118.87) [155417]"}
            k_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@118.13--118.87) [155418]"}
            k_32 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@118.13--118.87) [155419]"}
            HasDirectPerm(Mask, Seq#Index(hist, k_32), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_3: int ::
      { Seq#Index(hist, k_3) }
      0 <= k_3 && k_3 < P_2 ==> Heap[Seq#Index(hist, k_3), Ref__Integer_value] == 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value, p)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@119.23--119.59) [155420]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@119.23--119.59) [155421]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@119.23--119.59) [155422]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@119.23--119.59) [155423]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@119.23--119.59) [155424]"}
          j < step;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@119.23--119.59) [155425]"}
          0 <= step;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@119.12--119.83) [155426]"}
        Ref__multidim_index_2(Heap, M_1, step, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@119.12--119.83) [155427]"}
        Ref__multidim_index_2(Heap, M_1, step, i, j) < Seq#Length(matrix_1);
    perm := p_1;
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (testHistogramFull.vpr@119.12--119.83) [155428]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)) != null;
    Mask := Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value:=Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 <= matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@120.24--120.60) [155429]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@120.24--120.60) [155430]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@120.24--120.60) [155431]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@120.24--120.60) [155432]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@120.24--120.60) [155433]"}
          j < step;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@120.24--120.60) [155434]"}
          0 <= step;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@120.12--120.80) [155435]"}
        Ref__multidim_index_2(Heap, M_1, step, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@120.12--120.80) [155436]"}
        Ref__multidim_index_2(Heap, M_1, step, i, j) < Seq#Length(matrix_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@120.12--120.80) [155437]"}
        HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value);
    assume 0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value < P
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@121.19--121.55) [155438]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@121.19--121.55) [155439]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@121.19--121.55) [155440]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@121.19--121.55) [155441]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@121.19--121.55) [155442]"}
          j < step;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@121.19--121.55) [155443]"}
          0 <= step;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@121.12--121.79) [155444]"}
        Ref__multidim_index_2(Heap, M_1, step, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@121.12--121.79) [155445]"}
        Ref__multidim_index_2(Heap, M_1, step, i, j) < Seq#Length(matrix_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@121.12--121.79) [155446]"}
        HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value);
    assume Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value] < P_2;
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
    assume p_1 != NoPerm;
    assume M_1 > 0;
    assume N > 0;
    assume step >= N;
    assume P_2 > 0;
    assume state(PostHeap, PostMask);
    assume 0 <= i;
    assume i < M_1;
    assume 0 <= j;
    assume j < N;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value, p)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@124.22--124.58) [155447]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@124.22--124.58) [155448]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@124.22--124.58) [155449]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@124.22--124.58) [155450]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@124.22--124.58) [155451]"}
          j < step;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@124.22--124.58) [155452]"}
          0 <= step;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@124.11--124.82) [155453]"}
        Ref__multidim_index_2(PostHeap, M_1, step, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@124.11--124.82) [155454]"}
        Ref__multidim_index_2(PostHeap, M_1, step, i, j) < Seq#Length(matrix_1);
    perm := p_1;
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (testHistogramFull.vpr@124.11--124.82) [155455]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i, j)) != null;
    PostMask := PostMask[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i, j)), Ref__Integer_value:=PostMask[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i, j)), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@125.18--125.54) [155456]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@125.18--125.54) [155457]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@125.18--125.54) [155458]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@125.18--125.54) [155459]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@125.18--125.54) [155460]"}
          j < step;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@125.18--125.54) [155461]"}
          0 <= step;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@125.11--125.146) [155462]"}
        Ref__multidim_index_2(PostHeap, M_1, step, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@125.11--125.146) [155463]"}
        Ref__multidim_index_2(PostHeap, M_1, step, i, j) < Seq#Length(matrix_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@125.11--125.146) [155464]"}
        HasDirectPerm(PostMask, Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i, j)), Ref__Integer_value);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@125.89--125.125) [155465]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@125.89--125.125) [155466]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@125.89--125.125) [155467]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@125.89--125.125) [155468]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@125.89--125.125) [155469]"}
          j < step;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@125.89--125.125) [155470]"}
          0 <= step;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@125.11--125.146) [155471]"}
        Ref__multidim_index_2(oldHeap, M_1, step, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@125.11--125.146) [155472]"}
        Ref__multidim_index_2(oldHeap, M_1, step, i, j) < Seq#Length(matrix_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@125.11--125.146) [155473]"}
        HasDirectPerm(oldMask, Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i, j)), Ref__Integer_value);
    assume PostHeap[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i, j)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i, j)), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_37 && k_37 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@126.12--126.91) [155474]"}
            k_37 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@126.12--126.91) [155475]"}
            k_37 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@126.12--126.91) [155476]"}
      (forall k_5: int, k_5_1: int ::
      
      (((k_5 != k_5_1 && (0 <= k_5 && k_5 < P_2)) && (0 <= k_5_1 && k_5_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_5) != Seq#Index(hist, k_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_5: int ::
        { Seq#Index(hist, k_5) } { Seq#Index(hist, k_5) }
        (0 <= k_5 && k_5 < P_2) && NoPerm < FullPerm ==> qpRange20(Seq#Index(hist, k_5)) && invRecv20(Seq#Index(hist, k_5)) == k_5
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        ((0 <= invRecv20(o_9) && invRecv20(o_9) < P_2) && NoPerm < FullPerm) && qpRange20(o_9) ==> Seq#Index(hist, invRecv20(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_5: int ::
        { Seq#Index(hist, k_5) } { Seq#Index(hist, k_5) }
        0 <= k_5 && k_5 < P_2 ==> Seq#Index(hist, k_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv20(o_9) && invRecv20(o_9) < P_2) && NoPerm < FullPerm) && qpRange20(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv20(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv20(o_9) && invRecv20(o_9) < P_2) && NoPerm < FullPerm) && qpRange20(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value == k ? 1 : 0))
      if (*) {
        if (0 <= k_26 && k_26 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@127.12--127.163) [155477]"}
            k_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@127.12--127.163) [155478]"}
            k_26 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@127.12--127.163) [155479]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_26), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@127.92--127.128) [155480]"}
              0 <= i;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@127.92--127.128) [155481]"}
              i < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@127.92--127.128) [155482]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@127.92--127.128) [155483]"}
              0 <= j;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@127.92--127.128) [155484]"}
              j < step;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@127.92--127.128) [155485]"}
              0 <= step;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might be negative. (testHistogramFull.vpr@127.12--127.163) [155486]"}
            Ref__multidim_index_2(PostHeap, M_1, step, i, j) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i, j)] into matrix might exceed sequence length. (testHistogramFull.vpr@127.12--127.163) [155487]"}
            Ref__multidim_index_2(PostHeap, M_1, step, i, j) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@127.12--127.163) [155488]"}
            HasDirectPerm(PostMask, Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i, j)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_7_1: int ::
      { Seq#Index(hist, k_7_1) }
      0 <= k_7_1 && k_7_1 < P_2 ==> PostHeap[Seq#Index(hist, k_7_1), Ref__Integer_value] == (if PostHeap[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i, j)), Ref__Integer_value] == k_7_1 then 1 else 0)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_7, $allocated];
    assume Heap[__flatten_8, $allocated];
    assume Heap[__flatten_10, $allocated];
    assume Heap[__flatten_11, $allocated];
  
  // -- Translating statement: __flatten_6 := Ref__multidim_index_2(M, step, i, j) -- testHistogramFull.vpr@136.3--136.54
    
    // -- Check definedness of Ref__multidim_index_2(M, step, i, j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@136.18--136.54) [155489]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@136.18--136.54) [155490]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@136.18--136.54) [155491]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@136.18--136.54) [155492]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < step might not hold. (testHistogramFull.vpr@136.18--136.54) [155493]"}
          j < step;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@136.18--136.54) [155494]"}
          0 <= step;
        // Stop execution
        assume false;
      }
    __flatten_6 := Ref__multidim_index_2(Heap, M_1, step, i, j);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := __flatten_6 -- testHistogramFull.vpr@137.3--137.29
    __flatten_1 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := matrix[__flatten_1] -- testHistogramFull.vpr@138.3--138.37
    
    // -- Check definedness of matrix[__flatten_1]
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might be negative. (testHistogramFull.vpr@138.3--138.37) [155495]"}
        __flatten_1 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might exceed sequence length. (testHistogramFull.vpr@138.3--138.37) [155496]"}
        __flatten_1 < Seq#Length(matrix_1);
    __flatten_8 := Seq#Index(matrix_1, __flatten_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := hist[__flatten_8.Ref__Integer_value] -- testHistogramFull.vpr@139.3--139.54
    
    // -- Check definedness of hist[__flatten_8.Ref__Integer_value]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (testHistogramFull.vpr@139.3--139.54) [155497]"}
        HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
      assert {:msg "  Assignment might fail. Index hist[__flatten_8.Ref__Integer_value] into hist might be negative. (testHistogramFull.vpr@139.3--139.54) [155498]"}
        Heap[__flatten_8, Ref__Integer_value] >= 0;
      assert {:msg "  Assignment might fail. Index hist[__flatten_8.Ref__Integer_value] into hist might exceed sequence length. (testHistogramFull.vpr@139.3--139.54) [155499]"}
        Heap[__flatten_8, Ref__Integer_value] < Seq#Length(hist);
    __flatten_7 := Seq#Index(hist, Heap[__flatten_8, Ref__Integer_value]);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := matrix[__flatten_1] -- testHistogramFull.vpr@140.3--140.38
    
    // -- Check definedness of matrix[__flatten_1]
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might be negative. (testHistogramFull.vpr@140.3--140.38) [155500]"}
        __flatten_1 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might exceed sequence length. (testHistogramFull.vpr@140.3--140.38) [155501]"}
        __flatten_1 < Seq#Length(matrix_1);
    __flatten_11 := Seq#Index(matrix_1, __flatten_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_10 := hist[__flatten_11.Ref__Integer_value] -- testHistogramFull.vpr@141.3--141.56
    
    // -- Check definedness of hist[__flatten_11.Ref__Integer_value]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_11.Ref__Integer_value (testHistogramFull.vpr@141.3--141.56) [155502]"}
        HasDirectPerm(Mask, __flatten_11, Ref__Integer_value);
      assert {:msg "  Assignment might fail. Index hist[__flatten_11.Ref__Integer_value] into hist might be negative. (testHistogramFull.vpr@141.3--141.56) [155503]"}
        Heap[__flatten_11, Ref__Integer_value] >= 0;
      assert {:msg "  Assignment might fail. Index hist[__flatten_11.Ref__Integer_value] into hist might exceed sequence length. (testHistogramFull.vpr@141.3--141.56) [155504]"}
        Heap[__flatten_11, Ref__Integer_value] < Seq#Length(hist);
    __flatten_10 := Seq#Index(hist, Heap[__flatten_11, Ref__Integer_value]);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_9 := __flatten_10.Ref__Integer_value + 1 -- testHistogramFull.vpr@142.3--142.53
    
    // -- Check definedness of __flatten_10.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_10.Ref__Integer_value (testHistogramFull.vpr@142.3--142.53) [155505]"}
        HasDirectPerm(Mask, __flatten_10, Ref__Integer_value);
    __flatten_9 := Heap[__flatten_10, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7.Ref__Integer_value := __flatten_9 -- testHistogramFull.vpr@143.3--143.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_7.Ref__Integer_value (testHistogramFull.vpr@143.3--143.48) [155506]"}
      FullPerm == Mask[__flatten_7, Ref__Integer_value];
    Heap := Heap[__flatten_7, Ref__Integer_value:=__flatten_9];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion p != none might not hold. (testHistogramFull.vpr@122.11--122.70) [155507]"}
      p_1 != NoPerm;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion M > 0 might not hold. (testHistogramFull.vpr@122.11--122.70) [155508]"}
      M_1 > 0;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion N > 0 might not hold. (testHistogramFull.vpr@122.11--122.70) [155509]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion step >= N might not hold. (testHistogramFull.vpr@122.11--122.70) [155510]"}
      step >= N;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion P > 0 might not hold. (testHistogramFull.vpr@122.11--122.70) [155511]"}
      P_2 > 0;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion 0 <= i might not hold. (testHistogramFull.vpr@123.11--123.55) [155512]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion i < M might not hold. (testHistogramFull.vpr@123.11--123.55) [155513]"}
      i < M_1;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion 0 <= j might not hold. (testHistogramFull.vpr@123.11--123.55) [155514]"}
      0 <= j;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion j < N might not hold. (testHistogramFull.vpr@123.11--123.55) [155515]"}
      j < N;
    perm := p_1;
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Fraction p might be negative. (testHistogramFull.vpr@124.11--124.82) [155516]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value (testHistogramFull.vpr@124.11--124.82) [155517]"}
        perm <= Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value:=Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value) might not hold. (testHistogramFull.vpr@125.11--125.146) [155518]"}
      Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i, j)), Ref__Integer_value];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@126.12--126.91) [155519]"}
        (forall k_8: int, k_8_1: int ::
        { neverTriggered21(k_8), neverTriggered21(k_8_1) }
        (((k_8 != k_8_1 && (0 <= k_8 && k_8 < P_2)) && (0 <= k_8_1 && k_8_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_8) != Seq#Index(hist, k_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@126.12--126.91) [155520]"}
        (forall k_8: int ::
        { Seq#Index(hist, k_8) } { Seq#Index(hist, k_8) }
        0 <= k_8 && k_8 < P_2 ==> Mask[Seq#Index(hist, k_8), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_8: int ::
        { Seq#Index(hist, k_8) } { Seq#Index(hist, k_8) }
        (0 <= k_8 && k_8 < P_2) && NoPerm < FullPerm ==> qpRange21(Seq#Index(hist, k_8)) && invRecv21(Seq#Index(hist, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        (0 <= invRecv21(o_9) && invRecv21(o_9) < P_2) && (NoPerm < FullPerm && qpRange21(o_9)) ==> Seq#Index(hist, invRecv21(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv21(o_9) && invRecv21(o_9) < P_2) && (NoPerm < FullPerm && qpRange21(o_9)) ==> Seq#Index(hist, invRecv21(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv21(o_9) && invRecv21(o_9) < P_2) && (NoPerm < FullPerm && qpRange21(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= k_9_1 && k_9_1 < P_2) {
        assert {:msg "  Postcondition of Ref__loop_body_107 might not hold. Assertion hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value == k ? 1 : 0) might not hold. (testHistogramFull.vpr@127.12--127.163) [155521]"}
          Heap[Seq#Index(hist, k_9_1), Ref__Integer_value] == (if Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value] == k_9_1 then 1 else 0);
      }
      assume false;
    }
    assume (forall k_10_1: int ::
      { Seq#Index(hist, k_10_1) }
      0 <= k_10_1 && k_10_1 < P_2 ==> Heap[Seq#Index(hist, k_10_1), Ref__Integer_value] == (if Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j)), Ref__Integer_value] == k_10_1 then 1 else 0)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__histogram
// ==================================================

procedure Ref__histogram(diz: Ref, current_thread_id: int, M_1: int, N: int, step: int, matrix_1: (Seq Ref), P_2: int, hist: (Seq Ref), p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var j1_12: int;
  var QPMask: MaskType;
  var i1_16: int;
  var j1_3: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_3: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j1_16: int;
  var i1_17: int;
  var j1_17: int;
  var i1_18: int;
  var k_34: int;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var i: int;
  var j_1: int;
  var i_2: int;
  var j_3: int;
  var i1_8_1: int;
  var j1_9: int;
  var k_2_2: int;
  
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
    assume p_1 != NoPerm;
    assume M_1 > 0;
    assume N > 0;
    assume step >= N;
    assume P_2 > 0;
    assume state(Heap, Mask);
    assume N <= step;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } 0 <= j1 && (j1 < M * step && j1 % step < N) ==> acc(matrix[j1].Ref__Integer_value, p))
      if (*) {
        if (0 <= j1_12) {
          if (j1_12 < M_1 * step) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@151.13--151.120) [155522]"}
              step != 0;
          }
        }
        if (0 <= j1_12 && (j1_12 < M_1 * step && j1_12 mod step < N)) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (testHistogramFull.vpr@151.13--151.120) [155523]"}
            j1_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (testHistogramFull.vpr@151.13--151.120) [155524]"}
            j1_12 < Seq#Length(matrix_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogramFull.vpr@151.13--151.120) [155525]"}
      (forall j1_1: int, j1_1_1: int ::
      
      (((j1_1 != j1_1_1 && (0 <= j1_1 && (j1_1 < M_1 * step && j1_1 mod step < N))) && (0 <= j1_1_1 && (j1_1_1 < M_1 * step && j1_1_1 mod step < N))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(matrix_1, j1_1) != Seq#Index(matrix_1, j1_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_1: int ::
        { Seq#Index(matrix_1, j1_1) } { Seq#Index(matrix_1, j1_1) }
        (0 <= j1_1 && (j1_1 < M_1 * step && j1_1 mod step < N)) && NoPerm < p_1 ==> qpRange22(Seq#Index(matrix_1, j1_1)) && invRecv22(Seq#Index(matrix_1, j1_1)) == j1_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        ((0 <= invRecv22(o_9) && (invRecv22(o_9) < M_1 * step && invRecv22(o_9) mod step < N)) && NoPerm < p_1) && qpRange22(o_9) ==> Seq#Index(matrix_1, invRecv22(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (testHistogramFull.vpr@151.13--151.120) [155526]"}
      (forall j1_1: int ::
      { Seq#Index(matrix_1, j1_1) } { Seq#Index(matrix_1, j1_1) }
      0 <= j1_1 && (j1_1 < M_1 * step && j1_1 mod step < N) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_1: int ::
        { Seq#Index(matrix_1, j1_1) } { Seq#Index(matrix_1, j1_1) }
        (0 <= j1_1 && (j1_1 < M_1 * step && j1_1 mod step < N)) && p_1 > NoPerm ==> Seq#Index(matrix_1, j1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv22(o_9) && (invRecv22(o_9) < M_1 * step && invRecv22(o_9) mod step < N)) && NoPerm < p_1) && qpRange22(o_9) ==> (NoPerm < p_1 ==> Seq#Index(matrix_1, invRecv22(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + p_1) && (!(((0 <= invRecv22(o_9) && (invRecv22(o_9) < M_1 * step && invRecv22(o_9) mod step < N)) && NoPerm < p_1) && qpRange22(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, j1: Int :: { matrix[Ref__multidim_index_2(M, step, i1, j1)] } 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value < P)
      if (*) {
        if (0 <= i1_16 && (i1_16 < M_1 && (0 <= j1_3 && j1_3 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i1 might not hold. (testHistogramFull.vpr@152.104--152.142) [155527]"}
              0 <= i1_16;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i1 < M might not hold. (testHistogramFull.vpr@152.104--152.142) [155528]"}
              i1_16 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@152.104--152.142) [155529]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j1 might not hold. (testHistogramFull.vpr@152.104--152.142) [155530]"}
              0 <= j1_3;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j1 < step might not hold. (testHistogramFull.vpr@152.104--152.142) [155531]"}
              j1_3 < step;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@152.104--152.142) [155532]"}
              0 <= step;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i1, j1)] into matrix might be negative. (testHistogramFull.vpr@152.13--152.238) [155533]"}
            Ref__multidim_index_2(Heap, M_1, step, i1_16, j1_3) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i1, j1)] into matrix might exceed sequence length. (testHistogramFull.vpr@152.13--152.238) [155534]"}
            Ref__multidim_index_2(Heap, M_1, step, i1_16, j1_3) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value (testHistogramFull.vpr@152.13--152.238) [155535]"}
            HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i1_16, j1_3)), Ref__Integer_value);
          if (0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i1_16, j1_3)), Ref__Integer_value]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i1 might not hold. (testHistogramFull.vpr@152.175--152.213) [155536]"}
                0 <= i1_16;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i1 < M might not hold. (testHistogramFull.vpr@152.175--152.213) [155537]"}
                i1_16 < M_1;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@152.175--152.213) [155538]"}
                0 <= M_1;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j1 might not hold. (testHistogramFull.vpr@152.175--152.213) [155539]"}
                0 <= j1_3;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j1 < step might not hold. (testHistogramFull.vpr@152.175--152.213) [155540]"}
                j1_3 < step;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@152.175--152.213) [155541]"}
                0 <= step;
              // Stop execution
              assume false;
            }
            assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i1, j1)] into matrix might be negative. (testHistogramFull.vpr@152.13--152.238) [155542]"}
              Ref__multidim_index_2(Heap, M_1, step, i1_16, j1_3) >= 0;
            assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i1, j1)] into matrix might exceed sequence length. (testHistogramFull.vpr@152.13--152.238) [155543]"}
              Ref__multidim_index_2(Heap, M_1, step, i1_16, j1_3) < Seq#Length(matrix_1);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value (testHistogramFull.vpr@152.13--152.238) [155544]"}
              HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i1_16, j1_3)), Ref__Integer_value);
          }
        }
        assume false;
      }
    assume (forall i1_1: int, j1_3_1: int ::
      { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i1_1, j1_3_1)) }
      0 <= i1_1 && (i1_1 < M_1 && (0 <= j1_3_1 && j1_3_1 < N)) ==> 0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i1_1, j1_3_1)), Ref__Integer_value] && Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i1_1, j1_3_1)), Ref__Integer_value] < P_2
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int :: { hist[i1] } 0 <= i1 && i1 < P ==> acc(hist[i1].Ref__Integer_value, write))
      if (*) {
        if (0 <= i1_3 && i1_3 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might be negative. (testHistogramFull.vpr@153.13--153.96) [155545]"}
            i1_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might exceed sequence length. (testHistogramFull.vpr@153.13--153.96) [155546]"}
            i1_3 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogramFull.vpr@153.13--153.96) [155547]"}
      (forall i1_3_1: int, i1_3_2: int ::
      
      (((i1_3_1 != i1_3_2 && (0 <= i1_3_1 && i1_3_1 < P_2)) && (0 <= i1_3_2 && i1_3_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_3_1) != Seq#Index(hist, i1_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall i1_3_1: int ::
        { Seq#Index(hist, i1_3_1) } { Seq#Index(hist, i1_3_1) }
        (0 <= i1_3_1 && i1_3_1 < P_2) && NoPerm < FullPerm ==> qpRange23(Seq#Index(hist, i1_3_1)) && invRecv23(Seq#Index(hist, i1_3_1)) == i1_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        ((0 <= invRecv23(o_9) && invRecv23(o_9) < P_2) && NoPerm < FullPerm) && qpRange23(o_9) ==> Seq#Index(hist, invRecv23(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i1_3_1: int ::
        { Seq#Index(hist, i1_3_1) } { Seq#Index(hist, i1_3_1) }
        0 <= i1_3_1 && i1_3_1 < P_2 ==> Seq#Index(hist, i1_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv23(o_9) && invRecv23(o_9) < P_2) && NoPerm < FullPerm) && qpRange23(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv23(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv23(o_9) && invRecv23(o_9) < P_2) && NoPerm < FullPerm) && qpRange23(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
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
    assume p_1 != NoPerm;
    assume M_1 > 0;
    assume N > 0;
    assume step >= N;
    assume P_2 > 0;
    assume state(PostHeap, PostMask);
    assume N <= step;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } 0 <= j1 && (j1 < M * step && j1 % step < N) ==> acc(matrix[j1].Ref__Integer_value, p))
      if (*) {
        if (0 <= j1_16) {
          if (j1_16 < M_1 * step) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull.vpr@156.12--156.119) [155548]"}
              step != 0;
          }
        }
        if (0 <= j1_16 && (j1_16 < M_1 * step && j1_16 mod step < N)) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (testHistogramFull.vpr@156.12--156.119) [155549]"}
            j1_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (testHistogramFull.vpr@156.12--156.119) [155550]"}
            j1_16 < Seq#Length(matrix_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogramFull.vpr@156.12--156.119) [155551]"}
      (forall j1_5_1: int, j1_5_2: int ::
      
      (((j1_5_1 != j1_5_2 && (0 <= j1_5_1 && (j1_5_1 < M_1 * step && j1_5_1 mod step < N))) && (0 <= j1_5_2 && (j1_5_2 < M_1 * step && j1_5_2 mod step < N))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(matrix_1, j1_5_1) != Seq#Index(matrix_1, j1_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j1_5_1: int ::
        { Seq#Index(matrix_1, j1_5_1) } { Seq#Index(matrix_1, j1_5_1) }
        (0 <= j1_5_1 && (j1_5_1 < M_1 * step && j1_5_1 mod step < N)) && NoPerm < p_1 ==> qpRange24(Seq#Index(matrix_1, j1_5_1)) && invRecv24(Seq#Index(matrix_1, j1_5_1)) == j1_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        ((0 <= invRecv24(o_9) && (invRecv24(o_9) < M_1 * step && invRecv24(o_9) mod step < N)) && NoPerm < p_1) && qpRange24(o_9) ==> Seq#Index(matrix_1, invRecv24(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (testHistogramFull.vpr@156.12--156.119) [155552]"}
      (forall j1_5_1: int ::
      { Seq#Index(matrix_1, j1_5_1) } { Seq#Index(matrix_1, j1_5_1) }
      0 <= j1_5_1 && (j1_5_1 < M_1 * step && j1_5_1 mod step < N) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_5_1: int ::
        { Seq#Index(matrix_1, j1_5_1) } { Seq#Index(matrix_1, j1_5_1) }
        (0 <= j1_5_1 && (j1_5_1 < M_1 * step && j1_5_1 mod step < N)) && p_1 > NoPerm ==> Seq#Index(matrix_1, j1_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv24(o_9) && (invRecv24(o_9) < M_1 * step && invRecv24(o_9) mod step < N)) && NoPerm < p_1) && qpRange24(o_9) ==> (NoPerm < p_1 ==> Seq#Index(matrix_1, invRecv24(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + p_1) && (!(((0 <= invRecv24(o_9) && (invRecv24(o_9) < M_1 * step && invRecv24(o_9) mod step < N)) && NoPerm < p_1) && qpRange24(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i1: Int, j1: Int :: { old(Ref__multidim_index_2(M, step, i1, j1)) } { old(matrix[Ref__multidim_index_2(M, step, i1, j1)]) } 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value))
      if (*) {
        if (0 <= i1_17 && (i1_17 < M_1 && (0 <= j1_17 && j1_17 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i1 might not hold. (testHistogramFull.vpr@157.98--157.136) [155553]"}
              0 <= i1_17;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i1 < M might not hold. (testHistogramFull.vpr@157.98--157.136) [155554]"}
              i1_17 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@157.98--157.136) [155555]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j1 might not hold. (testHistogramFull.vpr@157.98--157.136) [155556]"}
              0 <= j1_17;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j1 < step might not hold. (testHistogramFull.vpr@157.98--157.136) [155557]"}
              j1_17 < step;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@157.98--157.136) [155558]"}
              0 <= step;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i1, j1)] into matrix might be negative. (testHistogramFull.vpr@157.12--157.231) [155559]"}
            Ref__multidim_index_2(PostHeap, M_1, step, i1_17, j1_17) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i1, j1)] into matrix might exceed sequence length. (testHistogramFull.vpr@157.12--157.231) [155560]"}
            Ref__multidim_index_2(PostHeap, M_1, step, i1_17, j1_17) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value (testHistogramFull.vpr@157.12--157.231) [155561]"}
            HasDirectPerm(PostMask, Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i1_17, j1_17)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i1 might not hold. (testHistogramFull.vpr@157.171--157.209) [155562]"}
              0 <= i1_17;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i1 < M might not hold. (testHistogramFull.vpr@157.171--157.209) [155563]"}
              i1_17 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogramFull.vpr@157.171--157.209) [155564]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j1 might not hold. (testHistogramFull.vpr@157.171--157.209) [155565]"}
              0 <= j1_17;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j1 < step might not hold. (testHistogramFull.vpr@157.171--157.209) [155566]"}
              j1_17 < step;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= step might not hold. (testHistogramFull.vpr@157.171--157.209) [155567]"}
              0 <= step;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i1, j1)] into matrix might be negative. (testHistogramFull.vpr@157.12--157.231) [155568]"}
            Ref__multidim_index_2(oldHeap, M_1, step, i1_17, j1_17) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, step, i1, j1)] into matrix might exceed sequence length. (testHistogramFull.vpr@157.12--157.231) [155569]"}
            Ref__multidim_index_2(oldHeap, M_1, step, i1_17, j1_17) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value (testHistogramFull.vpr@157.12--157.231) [155570]"}
            HasDirectPerm(oldMask, Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i1_17, j1_17)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i1_5_2: int, j1_7_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i1_5_2, j1_7_1) } { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i1_5_2, j1_7_1)) }
      0 <= i1_5_2 && (i1_5_2 < M_1 && (0 <= j1_7_1 && j1_7_1 < N)) ==> PostHeap[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, step, i1_5_2, j1_7_1)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i1_5_2, j1_7_1)), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i1: Int :: { hist[i1] } 0 <= i1 && i1 < P ==> acc(hist[i1].Ref__Integer_value, write))
      if (*) {
        if (0 <= i1_18 && i1_18 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might be negative. (testHistogramFull.vpr@158.12--158.95) [155571]"}
            i1_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might exceed sequence length. (testHistogramFull.vpr@158.12--158.95) [155572]"}
            i1_18 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogramFull.vpr@158.12--158.95) [155573]"}
      (forall i1_7_2: int, i1_7_3: int ::
      
      (((i1_7_2 != i1_7_3 && (0 <= i1_7_2 && i1_7_2 < P_2)) && (0 <= i1_7_3 && i1_7_3 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_7_2) != Seq#Index(hist, i1_7_3)
    );
    
    // -- Define Inverse Function
      assume (forall i1_7_2: int ::
        { Seq#Index(hist, i1_7_2) } { Seq#Index(hist, i1_7_2) }
        (0 <= i1_7_2 && i1_7_2 < P_2) && NoPerm < FullPerm ==> qpRange25(Seq#Index(hist, i1_7_2)) && invRecv25(Seq#Index(hist, i1_7_2)) == i1_7_2
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        ((0 <= invRecv25(o_9) && invRecv25(o_9) < P_2) && NoPerm < FullPerm) && qpRange25(o_9) ==> Seq#Index(hist, invRecv25(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i1_7_2: int ::
        { Seq#Index(hist, i1_7_2) } { Seq#Index(hist, i1_7_2) }
        0 <= i1_7_2 && i1_7_2 < P_2 ==> Seq#Index(hist, i1_7_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv25(o_9) && invRecv25(o_9) < P_2) && NoPerm < FullPerm) && qpRange25(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv25(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv25(o_9) && invRecv25(o_9) < P_2) && NoPerm < FullPerm) && qpRange25(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k))
      if (*) {
        if (0 <= k_34 && k_34 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull.vpr@159.12--159.136) [155574]"}
            k_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull.vpr@159.12--159.136) [155575]"}
            k_34 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@159.12--159.136) [155576]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_34), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= N might not hold. (testHistogramFull.vpr@159.84--159.135) [155577]"}
              0 <= N;
            assert {:msg "  Precondition of function count_square might not hold. Assertion N <= step might not hold. (testHistogramFull.vpr@159.84--159.135) [155578]"}
              N <= step;
            assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testHistogramFull.vpr@159.84--159.135) [155579]"}
              step > 0;
            assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= M * step might not hold. (testHistogramFull.vpr@159.84--159.135) [155580]"}
              0 <= M_1 * step;
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogramFull.vpr@159.84--159.135) [155581]"}
              (forall k$0: int ::
              
              0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N)) ==> PostMask[Seq#Index(matrix_1, k$0), Ref__Integer_value] > NoPerm
            );
            assume (forall k$0: int ::
              
              0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N)) ==> wildcard < PostMask[Seq#Index(matrix_1, k$0), Ref__Integer_value]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testHistogramFull.vpr@159.84--159.135) [155582]"}
                (forall k$0: int ::
                { Seq#Index(matrix_1, k$0) } { Seq#Index(matrix_1, k$0) }
                (0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N))) && dummyFunction(PostHeap[Seq#Index(matrix_1, k$0), Ref__Integer_value]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver matrix[k$0] is injective
              assert {:msg "  Precondition of function count_square might not hold. Quantified resource matrix[k$0].Ref__Integer_value might not be injective. (testHistogramFull.vpr@159.84--159.135) [155583]"}
                (forall k$0: int, k$0_3: int ::
                { neverTriggered26(k$0), neverTriggered26(k$0_3) }
                (((k$0 != k$0_3 && (0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N)))) && (0 <= k$0_3 && (k$0_3 < M_1 * step && (0 <= k$0_3 mod step && k$0_3 mod step < N)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(matrix_1, k$0) != Seq#Index(matrix_1, k$0_3)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogramFull.vpr@159.84--159.135) [155584]"}
                (forall k$0: int ::
                { Seq#Index(matrix_1, k$0) } { Seq#Index(matrix_1, k$0) }
                0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N)) ==> wildcard > NoPerm ==> PostMask[Seq#Index(matrix_1, k$0), Ref__Integer_value] > NoPerm
              );
            
            // -- assumptions for inverse of receiver matrix[k$0]
              assume (forall k$0: int ::
                { Seq#Index(matrix_1, k$0) } { Seq#Index(matrix_1, k$0) }
                (0 <= k$0 && (k$0 < M_1 * step && (0 <= k$0 mod step && k$0 mod step < N))) && NoPerm < wildcard ==> qpRange26(Seq#Index(matrix_1, k$0)) && invRecv26(Seq#Index(matrix_1, k$0)) == k$0
              );
              assume (forall o_9: Ref ::
                { invRecv26(o_9) }
                (0 <= invRecv26(o_9) && (invRecv26(o_9) < M_1 * step && (0 <= invRecv26(o_9) mod step && invRecv26(o_9) mod step < N))) && (NoPerm < wildcard && qpRange26(o_9)) ==> Seq#Index(matrix_1, invRecv26(o_9)) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall k_1: int ::
      { Seq#Index(hist, k_1) }
      0 <= k_1 && k_1 < P_2 ==> PostHeap[Seq#Index(hist, k_1), Ref__Integer_value] == count_square(PostHeap, 0, 0, N, step, 0, M_1 * step, matrix_1, k_1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_87(diz, current_thread_id, P, hist) -- testHistogramFull.vpr@161.3--161.53
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_87 might not hold. Assertion diz != null might not hold. (testHistogramFull.vpr@161.3--161.53) [155585]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_87 might not hold. Assertion current_thread_id >= 0 might not hold. (testHistogramFull.vpr@161.3--161.53) [155586]"}
        current_thread_id >= 0;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver hist[k] is injective
        assert {:msg "  The precondition of method Ref__loop_main_87 might not hold. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@161.3--161.53) [155587]"}
          (forall k_4_2: int, k_4_3: int ::
          { neverTriggered29(k_4_2), neverTriggered29(k_4_3) }
          (((k_4_2 != k_4_3 && (0 <= k_4_2 && k_4_2 < P_2)) && (0 <= k_4_3 && k_4_3 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_4_2) != Seq#Index(hist, k_4_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_87 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@161.3--161.53) [155588]"}
          (forall k_4_2: int ::
          { Seq#Index(hist, k_4_2) } { Seq#Index(hist, k_4_2) }
          0 <= k_4_2 && k_4_2 < P_2 ==> Mask[Seq#Index(hist, k_4_2), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver hist[k]
        assume (forall k_4_2: int ::
          { Seq#Index(hist, k_4_2) } { Seq#Index(hist, k_4_2) }
          (0 <= k_4_2 && k_4_2 < P_2) && NoPerm < FullPerm ==> qpRange29(Seq#Index(hist, k_4_2)) && invRecv29(Seq#Index(hist, k_4_2)) == k_4_2
        );
        assume (forall o_9: Ref ::
          { invRecv29(o_9) }
          (0 <= invRecv29(o_9) && invRecv29(o_9) < P_2) && (NoPerm < FullPerm && qpRange29(o_9)) ==> Seq#Index(hist, invRecv29(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv29(o_9) && invRecv29(o_9) < P_2) && (NoPerm < FullPerm && qpRange29(o_9)) ==> Seq#Index(hist, invRecv29(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv29(o_9) && invRecv29(o_9) < P_2) && (NoPerm < FullPerm && qpRange29(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@161.3--161.53) [155589]"}
        (forall k_5: int, k_5_1: int ::
        
        (((k_5 != k_5_1 && (0 <= k_5 && k_5 < P_2)) && (0 <= k_5_1 && k_5_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_5) != Seq#Index(hist, k_5_1)
      );
      
      // -- Define Inverse Function
        assume (forall k_5: int ::
          { Seq#Index(hist, k_5) } { Seq#Index(hist, k_5) }
          (0 <= k_5 && k_5 < P_2) && NoPerm < FullPerm ==> qpRange30(Seq#Index(hist, k_5)) && invRecv30(Seq#Index(hist, k_5)) == k_5
        );
        assume (forall o_9: Ref ::
          { invRecv30(o_9) }
          ((0 <= invRecv30(o_9) && invRecv30(o_9) < P_2) && NoPerm < FullPerm) && qpRange30(o_9) ==> Seq#Index(hist, invRecv30(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_5: int ::
          { Seq#Index(hist, k_5) } { Seq#Index(hist, k_5) }
          0 <= k_5 && k_5 < P_2 ==> Seq#Index(hist, k_5) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv30(o_9) && invRecv30(o_9) < P_2) && NoPerm < FullPerm) && qpRange30(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv30(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv30(o_9) && invRecv30(o_9) < P_2) && NoPerm < FullPerm) && qpRange30(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall k_6_2: int ::
        { Seq#Index(hist, k_6_2) }
        0 <= k_6_2 && k_6_2 < P_2 ==> Heap[Seq#Index(hist, k_6_2), Ref__Integer_value] == 0
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__loop_main_107(diz, current_thread_id, step, matrix, P, N, M, p, hist) -- testHistogramFull.vpr@162.3--162.77
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion diz != null might not hold. (testHistogramFull.vpr@162.3--162.77) [155590]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion current_thread_id >= 0 might not hold. (testHistogramFull.vpr@162.3--162.77) [155591]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion p != none might not hold. (testHistogramFull.vpr@162.3--162.77) [155592]"}
        p_1 != NoPerm;
      assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion M > 0 might not hold. (testHistogramFull.vpr@162.3--162.77) [155593]"}
        M_1 > 0;
      assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion N > 0 might not hold. (testHistogramFull.vpr@162.3--162.77) [155594]"}
        N > 0;
      assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion step >= N might not hold. (testHistogramFull.vpr@162.3--162.77) [155595]"}
        step >= N;
      assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion P > 0 might not hold. (testHistogramFull.vpr@162.3--162.77) [155596]"}
        P_2 > 0;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver hist[k] is injective
        assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@162.3--162.77) [155597]"}
          (forall k_7_1: int, k_7_2: int ::
          { neverTriggered31(k_7_1), neverTriggered31(k_7_2) }
          (((k_7_1 != k_7_2 && (0 <= k_7_1 && k_7_1 < P_2)) && (0 <= k_7_2 && k_7_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_7_1) != Seq#Index(hist, k_7_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull.vpr@162.3--162.77) [155598]"}
          (forall k_7_1: int ::
          { Seq#Index(hist, k_7_1) } { Seq#Index(hist, k_7_1) }
          0 <= k_7_1 && k_7_1 < P_2 ==> Mask[Seq#Index(hist, k_7_1), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver hist[k]
        assume (forall k_7_1: int ::
          { Seq#Index(hist, k_7_1) } { Seq#Index(hist, k_7_1) }
          (0 <= k_7_1 && k_7_1 < P_2) && NoPerm < FullPerm ==> qpRange31(Seq#Index(hist, k_7_1)) && invRecv31(Seq#Index(hist, k_7_1)) == k_7_1
        );
        assume (forall o_9: Ref ::
          { invRecv31(o_9) }
          (0 <= invRecv31(o_9) && invRecv31(o_9) < P_2) && (NoPerm < FullPerm && qpRange31(o_9)) ==> Seq#Index(hist, invRecv31(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv31(o_9) && invRecv31(o_9) < P_2) && (NoPerm < FullPerm && qpRange31(o_9)) ==> Seq#Index(hist, invRecv31(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv31(o_9) && invRecv31(o_9) < P_2) && (NoPerm < FullPerm && qpRange31(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion N <= step might not hold. (testHistogramFull.vpr@162.3--162.77) [155599]"}
        N <= step;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Fraction p might be negative. (testHistogramFull.vpr@162.3--162.77) [155600]"}
          (forall j: int ::
          { Seq#Index(matrix_1, j) } { Seq#Index(matrix_1, j) }
          (0 <= j && (j < M_1 * step && j mod step < N)) && dummyFunction(Heap[Seq#Index(matrix_1, j), Ref__Integer_value]) ==> p_1 >= NoPerm
        );
      
      // -- check if receiver matrix[j] is injective
        assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull.vpr@162.3--162.77) [155601]"}
          (forall j: int, j_39: int ::
          { neverTriggered32(j), neverTriggered32(j_39) }
          (((j != j_39 && (0 <= j && (j < M_1 * step && j mod step < N))) && (0 <= j_39 && (j_39 < M_1 * step && j_39 mod step < N))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(matrix_1, j) != Seq#Index(matrix_1, j_39)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (testHistogramFull.vpr@162.3--162.77) [155602]"}
          (forall j: int ::
          { Seq#Index(matrix_1, j) } { Seq#Index(matrix_1, j) }
          0 <= j && (j < M_1 * step && j mod step < N) ==> Mask[Seq#Index(matrix_1, j), Ref__Integer_value] >= p_1
        );
      
      // -- assumptions for inverse of receiver matrix[j]
        assume (forall j: int ::
          { Seq#Index(matrix_1, j) } { Seq#Index(matrix_1, j) }
          (0 <= j && (j < M_1 * step && j mod step < N)) && NoPerm < p_1 ==> qpRange32(Seq#Index(matrix_1, j)) && invRecv32(Seq#Index(matrix_1, j)) == j
        );
        assume (forall o_9: Ref ::
          { invRecv32(o_9) }
          (0 <= invRecv32(o_9) && (invRecv32(o_9) < M_1 * step && invRecv32(o_9) mod step < N)) && (NoPerm < p_1 && qpRange32(o_9)) ==> Seq#Index(matrix_1, invRecv32(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv32(o_9) && (invRecv32(o_9) < M_1 * step && invRecv32(o_9) mod step < N)) && (NoPerm < p_1 && qpRange32(o_9)) ==> Seq#Index(matrix_1, invRecv32(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - p_1) && (!((0 <= invRecv32(o_9) && (invRecv32(o_9) < M_1 * step && invRecv32(o_9) mod step < N)) && (NoPerm < p_1 && qpRange32(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (0 <= i && (i < M_1 && (0 <= j_1 && j_1 < N))) {
          assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion 0 <= matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value might not hold. (testHistogramFull.vpr@162.3--162.77) [155603]"}
            0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i, j_1)), Ref__Integer_value];
        }
        assume false;
      }
      assume (forall i_1_1_1: int, j_2_1: int ::
        { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_1_1_1, j_2_1)) }
        0 <= i_1_1_1 && (i_1_1_1 < M_1 && (0 <= j_2_1 && j_2_1 < N)) ==> 0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_1_1_1, j_2_1)), Ref__Integer_value]
      );
      if (*) {
        if (0 <= i_2 && (i_2 < M_1 && (0 <= j_3 && j_3 < N))) {
          assert {:msg "  The precondition of method Ref__loop_main_107 might not hold. Assertion matrix[Ref__multidim_index_2(M, step, i, j)].Ref__Integer_value < P might not hold. (testHistogramFull.vpr@162.3--162.77) [155604]"}
            Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_2, j_3)), Ref__Integer_value] < P_2;
        }
        assume false;
      }
      assume (forall i_3_1: int, j_4_1_1: int ::
        { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_3_1, j_4_1_1)) }
        0 <= i_3_1 && (i_3_1 < M_1 && (0 <= j_4_1_1 && j_4_1_1 < N)) ==> Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_3_1, j_4_1_1)), Ref__Integer_value] < P_2
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume p_1 != NoPerm;
      assume M_1 > 0;
      assume N > 0;
      assume step >= N;
      assume P_2 > 0;
      assume N <= step;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull.vpr@162.3--162.77) [155605]"}
        (forall j_5: int, j_5_1: int ::
        
        (((j_5 != j_5_1 && (0 <= j_5 && (j_5 < M_1 * step && j_5 mod step < N))) && (0 <= j_5_1 && (j_5_1 < M_1 * step && j_5_1 mod step < N))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(matrix_1, j_5) != Seq#Index(matrix_1, j_5_1)
      );
      
      // -- Define Inverse Function
        assume (forall j_5: int ::
          { Seq#Index(matrix_1, j_5) } { Seq#Index(matrix_1, j_5) }
          (0 <= j_5 && (j_5 < M_1 * step && j_5 mod step < N)) && NoPerm < p_1 ==> qpRange33(Seq#Index(matrix_1, j_5)) && invRecv33(Seq#Index(matrix_1, j_5)) == j_5
        );
        assume (forall o_9: Ref ::
          { invRecv33(o_9) }
          ((0 <= invRecv33(o_9) && (invRecv33(o_9) < M_1 * step && invRecv33(o_9) mod step < N)) && NoPerm < p_1) && qpRange33(o_9) ==> Seq#Index(matrix_1, invRecv33(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction p might be negative. (testHistogramFull.vpr@162.3--162.77) [155606]"}
        (forall j_5: int ::
        { Seq#Index(matrix_1, j_5) } { Seq#Index(matrix_1, j_5) }
        0 <= j_5 && (j_5 < M_1 * step && j_5 mod step < N) ==> p_1 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall j_5: int ::
          { Seq#Index(matrix_1, j_5) } { Seq#Index(matrix_1, j_5) }
          (0 <= j_5 && (j_5 < M_1 * step && j_5 mod step < N)) && p_1 > NoPerm ==> Seq#Index(matrix_1, j_5) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv33(o_9) && (invRecv33(o_9) < M_1 * step && invRecv33(o_9) mod step < N)) && NoPerm < p_1) && qpRange33(o_9) ==> (NoPerm < p_1 ==> Seq#Index(matrix_1, invRecv33(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + p_1) && (!(((0 <= invRecv33(o_9) && (invRecv33(o_9) < M_1 * step && invRecv33(o_9) mod step < N)) && NoPerm < p_1) && qpRange33(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall i_4_1: int, j_6_2: int ::
        { Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_4_1, j_6_2) } { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i_4_1, j_6_2)) }
        0 <= i_4_1 && (i_4_1 < M_1 && (0 <= j_6_2 && j_6_2 < N)) ==> Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i_4_1, j_6_2)), Ref__Integer_value] == PreCallHeap[Seq#Index(matrix_1, Ref__multidim_index_2(PreCallHeap, M_1, step, i_4_1, j_6_2)), Ref__Integer_value]
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull.vpr@162.3--162.77) [155607]"}
        (forall k_8: int, k_8_1: int ::
        
        (((k_8 != k_8_1 && (0 <= k_8 && k_8 < P_2)) && (0 <= k_8_1 && k_8_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_8) != Seq#Index(hist, k_8_1)
      );
      
      // -- Define Inverse Function
        assume (forall k_8: int ::
          { Seq#Index(hist, k_8) } { Seq#Index(hist, k_8) }
          (0 <= k_8 && k_8 < P_2) && NoPerm < FullPerm ==> qpRange34(Seq#Index(hist, k_8)) && invRecv34(Seq#Index(hist, k_8)) == k_8
        );
        assume (forall o_9: Ref ::
          { invRecv34(o_9) }
          ((0 <= invRecv34(o_9) && invRecv34(o_9) < P_2) && NoPerm < FullPerm) && qpRange34(o_9) ==> Seq#Index(hist, invRecv34(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_8: int ::
          { Seq#Index(hist, k_8) } { Seq#Index(hist, k_8) }
          0 <= k_8 && k_8 < P_2 ==> Seq#Index(hist, k_8) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv34(o_9) && invRecv34(o_9) < P_2) && NoPerm < FullPerm) && qpRange34(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv34(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv34(o_9) && invRecv34(o_9) < P_2) && NoPerm < FullPerm) && qpRange34(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall k_9_1: int ::
        { Seq#Index(hist, k_9_1) }
        0 <= k_9_1 && k_9_1 < P_2 ==> Heap[Seq#Index(hist, k_9_1), Ref__Integer_value] == PreCallHeap[Seq#Index(hist, k_9_1), Ref__Integer_value] + count_square(Heap, 0, 0, N, step, 0, M_1 * step, matrix_1, k_9_1)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion p != none might not hold. (testHistogramFull.vpr@154.11--154.70) [155608]"}
      p_1 != NoPerm;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion M > 0 might not hold. (testHistogramFull.vpr@154.11--154.70) [155609]"}
      M_1 > 0;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion N > 0 might not hold. (testHistogramFull.vpr@154.11--154.70) [155610]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion step >= N might not hold. (testHistogramFull.vpr@154.11--154.70) [155611]"}
      step >= N;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion P > 0 might not hold. (testHistogramFull.vpr@154.11--154.70) [155612]"}
      P_2 > 0;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion N <= step might not hold. (testHistogramFull.vpr@155.11--155.20) [155613]"}
      N <= step;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__histogram might not hold. Fraction p might be negative. (testHistogramFull.vpr@156.12--156.119) [155614]"}
        (forall j1_8: int ::
        { Seq#Index(matrix_1, j1_8) } { Seq#Index(matrix_1, j1_8) }
        (0 <= j1_8 && (j1_8 < M_1 * step && j1_8 mod step < N)) && dummyFunction(Heap[Seq#Index(matrix_1, j1_8), Ref__Integer_value]) ==> p_1 >= NoPerm
      );
    
    // -- check if receiver matrix[j1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogramFull.vpr@156.12--156.119) [155615]"}
        (forall j1_8: int, j1_8_1: int ::
        { neverTriggered27(j1_8), neverTriggered27(j1_8_1) }
        (((j1_8 != j1_8_1 && (0 <= j1_8 && (j1_8 < M_1 * step && j1_8 mod step < N))) && (0 <= j1_8_1 && (j1_8_1 < M_1 * step && j1_8_1 mod step < N))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(matrix_1, j1_8) != Seq#Index(matrix_1, j1_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__histogram might not hold. There might be insufficient permission to access matrix[j1].Ref__Integer_value (testHistogramFull.vpr@156.12--156.119) [155616]"}
        (forall j1_8: int ::
        { Seq#Index(matrix_1, j1_8) } { Seq#Index(matrix_1, j1_8) }
        0 <= j1_8 && (j1_8 < M_1 * step && j1_8 mod step < N) ==> Mask[Seq#Index(matrix_1, j1_8), Ref__Integer_value] >= p_1
      );
    
    // -- assumptions for inverse of receiver matrix[j1]
      assume (forall j1_8: int ::
        { Seq#Index(matrix_1, j1_8) } { Seq#Index(matrix_1, j1_8) }
        (0 <= j1_8 && (j1_8 < M_1 * step && j1_8 mod step < N)) && NoPerm < p_1 ==> qpRange27(Seq#Index(matrix_1, j1_8)) && invRecv27(Seq#Index(matrix_1, j1_8)) == j1_8
      );
      assume (forall o_9: Ref ::
        { invRecv27(o_9) }
        (0 <= invRecv27(o_9) && (invRecv27(o_9) < M_1 * step && invRecv27(o_9) mod step < N)) && (NoPerm < p_1 && qpRange27(o_9)) ==> Seq#Index(matrix_1, invRecv27(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv27(o_9) && (invRecv27(o_9) < M_1 * step && invRecv27(o_9) mod step < N)) && (NoPerm < p_1 && qpRange27(o_9)) ==> Seq#Index(matrix_1, invRecv27(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - p_1) && (!((0 <= invRecv27(o_9) && (invRecv27(o_9) < M_1 * step && invRecv27(o_9) mod step < N)) && (NoPerm < p_1 && qpRange27(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i1_8_1 && (i1_8_1 < M_1 && (0 <= j1_9 && j1_9 < N))) {
        assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, step, i1, j1)].Ref__Integer_value) might not hold. (testHistogramFull.vpr@157.12--157.231) [155617]"}
          Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i1_8_1, j1_9)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i1_8_1, j1_9)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i1_9_1: int, j1_10_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i1_9_1, j1_10_1) } { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, step, i1_9_1, j1_10_1)) }
      0 <= i1_9_1 && (i1_9_1 < M_1 && (0 <= j1_10_1 && j1_10_1 < N)) ==> Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, step, i1_9_1, j1_10_1)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, step, i1_9_1, j1_10_1)), Ref__Integer_value]
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[i1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogramFull.vpr@158.12--158.95) [155618]"}
        (forall i1_10_1: int, i1_10_2: int ::
        { neverTriggered28(i1_10_1), neverTriggered28(i1_10_2) }
        (((i1_10_1 != i1_10_2 && (0 <= i1_10_1 && i1_10_1 < P_2)) && (0 <= i1_10_2 && i1_10_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_10_1) != Seq#Index(hist, i1_10_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__histogram might not hold. There might be insufficient permission to access hist[i1].Ref__Integer_value (testHistogramFull.vpr@158.12--158.95) [155619]"}
        (forall i1_10_1: int ::
        { Seq#Index(hist, i1_10_1) } { Seq#Index(hist, i1_10_1) }
        0 <= i1_10_1 && i1_10_1 < P_2 ==> Mask[Seq#Index(hist, i1_10_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[i1]
      assume (forall i1_10_1: int ::
        { Seq#Index(hist, i1_10_1) } { Seq#Index(hist, i1_10_1) }
        (0 <= i1_10_1 && i1_10_1 < P_2) && NoPerm < FullPerm ==> qpRange28(Seq#Index(hist, i1_10_1)) && invRecv28(Seq#Index(hist, i1_10_1)) == i1_10_1
      );
      assume (forall o_9: Ref ::
        { invRecv28(o_9) }
        (0 <= invRecv28(o_9) && invRecv28(o_9) < P_2) && (NoPerm < FullPerm && qpRange28(o_9)) ==> Seq#Index(hist, invRecv28(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv28(o_9) && invRecv28(o_9) < P_2) && (NoPerm < FullPerm && qpRange28(o_9)) ==> Seq#Index(hist, invRecv28(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv28(o_9) && invRecv28(o_9) < P_2) && (NoPerm < FullPerm && qpRange28(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= k_2_2 && k_2_2 < P_2) {
        assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k) might not hold. (testHistogramFull.vpr@159.12--159.136) [155620]"}
          Heap[Seq#Index(hist, k_2_2), Ref__Integer_value] == count_square(Heap, 0, 0, N, step, 0, M_1 * step, matrix_1, k_2_2);
      }
      assume false;
    }
    assume (forall k_3_1: int ::
      { Seq#Index(hist, k_3_1) }
      0 <= k_3_1 && k_3_1 < P_2 ==> Heap[Seq#Index(hist, k_3_1), Ref__Integer_value] == count_square(Heap, 0, 0, N, step, 0, M_1 * step, matrix_1, k_3_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}