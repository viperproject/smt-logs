// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:14:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_40: Ref, f_46: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_40, f_46] }
  Heap[o_40, $allocated] ==> Heap[Heap[o_40, f_46], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_45: Ref, f_49: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_45, f_49] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_45, f_49) ==> Heap[o_45, f_49] == ExhaleHeap[o_45, f_49]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20), ExhaleHeap[null, PredicateMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> Heap[null, PredicateMaskField(pm_f_20)] == ExhaleHeap[null, PredicateMaskField(pm_f_20)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_49: (Field A B) ::
    { ExhaleHeap[o2_20, f_49] }
    Heap[null, PredicateMaskField(pm_f_20)][o2_20, f_49] ==> Heap[o2_20, f_49] == ExhaleHeap[o2_20, f_49]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20), ExhaleHeap[null, WandMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> Heap[null, WandMaskField(pm_f_20)] == ExhaleHeap[null, WandMaskField(pm_f_20)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_49: (Field A B) ::
    { ExhaleHeap[o2_20, f_49] }
    Heap[null, WandMaskField(pm_f_20)][o2_20, f_49] ==> Heap[o2_20, f_49] == ExhaleHeap[o2_20, f_49]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_45: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_45, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_45, $allocated] ==> ExhaleHeap[o_45, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_40: Ref, f_50: (Field A B), v: B ::
  { Heap[o_40, f_50:=v] }
  succHeap(Heap, Heap[o_40, f_50:=v])
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

function  neverTriggered1(k_8: int): bool;
function  neverTriggered2(k_11: int): bool;
function  neverTriggered3(k_8: int): bool;
function  neverTriggered4(k_11: int): bool;
function  neverTriggered5(k_8: int): bool;
function  neverTriggered6(k_11: int): bool;
function  neverTriggered7(k_8: int): bool;
function  neverTriggered8(k_11: int): bool;
function  neverTriggered9(k_3: int): bool;
function  neverTriggered10(k_5: int): bool;
function  neverTriggered11(k_8: int): bool;
function  neverTriggered12(k_3: int): bool;
function  neverTriggered13(j_5_1: int): bool;
function  neverTriggered14(j_9_1: int): bool;
function  neverTriggered15(k_9: int): bool;
function  neverTriggered16(k$0_2: int): bool;
function  neverTriggered17(j_12_2: int): bool;
function  neverTriggered18(k_12_2: int): bool;
function  neverTriggered19(k_3: int): bool;
function  neverTriggered20(k_7_1: int): bool;
function  neverTriggered21(k_10_2: int): bool;
function  neverTriggered22(j1_1: int): bool;
function  neverTriggered23(i1_1_1: int): bool;
function  neverTriggered24(j1_3: int): bool;
function  neverTriggered25(i1_3: int): bool;
function  neverTriggered26(k$0_2: int): bool;
function  neverTriggered27(j1_4_1: int): bool;
function  neverTriggered28(i1_4_1: int): bool;
function  neverTriggered29(k_12_2: int): bool;
function  neverTriggered30(k_13: int): bool;
function  neverTriggered31(k_17_2: int): bool;
function  neverTriggered32(j_14_1: int): bool;
function  neverTriggered33(j_17_1: int): bool;
function  neverTriggered34(k_22_2: int): bool;
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
// - height 5: count_list
// - height 4: sum_list
// - height 3: sum_square
// - height 2: count_array
// - height 1: sum_array
// - height 0: count_square
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
// Translation of function sum_list
// ==================================================

// Uninterpreted function definitions
function  sum_list(Heap: HeapType, i: int, hi: int, ar: (Seq int)): int;
function  sum_list'(Heap: HeapType, i: int, hi: int, ar: (Seq int)): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int) ::
  { sum_list(Heap, i, hi, ar) }
  sum_list(Heap, i, hi, ar) == sum_list'(Heap, i, hi, ar) && dummyFunction(sum_list#triggerStateless(i, hi, ar))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int) ::
  { sum_list'(Heap, i, hi, ar) }
  dummyFunction(sum_list#triggerStateless(i, hi, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int) ::
  { state(Heap, Mask), sum_list(Heap, i, hi, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar) ==> sum_list(Heap, i, hi, ar) == (if i < hi then Seq#Index(ar, i) + sum_list'(Heap, i + 1, hi, ar) else 0)
);

// Framing axioms
function  sum_list#frame(frame: FrameType, i: int, hi: int, ar: (Seq int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int) ::
  { state(Heap, Mask), sum_list'(Heap, i, hi, ar) }
  state(Heap, Mask) ==> sum_list'(Heap, i, hi, ar) == sum_list#frame(EmptyFrame, i, hi, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_list#trigger(frame: FrameType, i: int, hi: int, ar: (Seq int)): bool;

// State-independent trigger function
function  sum_list#triggerStateless(i: int, hi: int, ar: (Seq int)): int;

// Check contract well-formedness and postcondition
procedure sum_list#definedness(i: int, hi: int, ar: (Seq int)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull-old.vpr@8.1--13.2) [38260]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull-old.vpr@8.1--13.2) [38261]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (testHistogramFull-old.vpr@12.21--12.44) [38262]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (testHistogramFull-old.vpr@12.21--12.44) [38263]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (testHistogramFull-old.vpr@12.21--12.44) [38264]"}
            hi <= Seq#Length(ar);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_list#trigger(EmptyFrame, i + 1, hi, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Seq#Index(ar, i) + sum_list(Heap, i + 1, hi, ar) else 0);
}

// ==================================================
// Translation of function sum_array
// ==================================================

// Uninterpreted function definitions
function  sum_array(Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
function  sum_array'(Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array(Heap, i, lo, hi, ar) }
  sum_array(Heap, i, lo, hi, ar) == sum_array'(Heap, i, lo, hi, ar) && dummyFunction(sum_array#triggerStateless(i, lo, hi, ar))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array'(Heap, i, lo, hi, ar) }
  dummyFunction(sum_array#triggerStateless(i, lo, hi, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_array(Heap, i, lo, hi, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar)) && (forall k: int, j_9: int ::
    { Seq#Index(ar, k), Seq#Index(ar, j_9) }
    k >= 0 && (k < Seq#Length(ar) && (j_9 >= 0 && (j_9 < Seq#Length(ar) && k != j_9))) ==> Seq#Index(ar, k) != Seq#Index(ar, j_9)
  ) ==> sum_array(Heap, i, lo, hi, ar) == (if i < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] + sum_array'(Heap, i + 1, lo, hi, ar) else 0)
);

// Framing axioms
function  sum_array#frame(frame: FrameType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_array'(Heap, i, lo, hi, ar) }
  state(Heap, Mask) ==> sum_array'(Heap, i, lo, hi, ar) == sum_array#frame(FrameFragment(sum_array#condqp1(Heap, i, lo, hi, ar)), i, lo, hi, ar)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { (k in [lo..hi)) } { ar[k] } (k in [lo..hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_array
// ==================================================

function  sum_array#condqp1(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_array#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Seq#Contains(Seq#Range(lo, hi), sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar))) <==> Seq#Contains(Seq#Range(lo, hi), sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)))) && (Seq#Contains(Seq#Range(lo, hi), sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar))) ==> Heap2Heap[Seq#Index(ar, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar))), Ref__Integer_value]) ==> sum_array#condqp1(Heap2Heap, i, lo, hi, ar) == sum_array#condqp1(Heap1Heap, i, lo, hi, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_array#trigger(frame: FrameType, i: int, lo: int, hi: int, ar: (Seq Ref)): bool;

// State-independent trigger function
function  sum_array#triggerStateless(i: int, lo: int, hi: int, ar: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_array#definedness(i: int, lo: int, hi: int, ar: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var k_1: int;
  var j_5: int;
  var k_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9: int;
  var j_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_1 >= 0 && (k_1 < Seq#Length(ar) && (j_5 >= 0 && (j_5 < Seq#Length(ar) && k_1 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull-old.vpr@18.12--18.106) [38265]"}
            k_1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull-old.vpr@18.12--18.106) [38266]"}
            k_1 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testHistogramFull-old.vpr@18.12--18.106) [38267]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testHistogramFull-old.vpr@18.12--18.106) [38268]"}
            j_5 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k_6: int, j_3_1: int ::
      { Seq#Index(ar, k_6), Seq#Index(ar, j_3_1) }
      k_6 >= 0 && (k_6 < Seq#Length(ar) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ar) && k_6 != j_3_1))) ==> Seq#Index(ar, k_6) != Seq#Index(ar, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [lo..hi)) } { ar[k] } (k in [lo..hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (Seq#Contains(Seq#Range(lo, hi), k_2)) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull-old.vpr@19.13--19.89) [38269]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull-old.vpr@19.13--19.89) [38270]"}
            k_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@19.13--19.89) [38271]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && Seq#Contains(Seq#Range(lo, hi), k_8)) && Seq#Contains(Seq#Range(lo, hi), k_8_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_8) != Seq#Index(ar, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_8) } { Seq#Contains(Seq#Range(lo, hi), k_8) } { Seq#Index(ar, k_8) }
        Seq#Contains(Seq#Range(lo, hi), k_8) ==> qpRange1(Seq#Index(ar, k_8)) && invRecv1(Seq#Index(ar, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        Seq#Contains(Seq#Range(lo, hi), invRecv1(o_4)) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_8) } { Seq#Contains(Seq#Range(lo, hi), k_8) } { Seq#Index(ar, k_8) }
        Seq#Contains(Seq#Range(lo, hi), k_8) ==> Seq#Index(ar, k_8) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(lo, hi), invRecv1(o_4)) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!(Seq#Contains(Seq#Range(lo, hi), invRecv1(o_4)) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i].Ref__Integer_value + sum_array(i + 1, lo, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull-old.vpr@15.1--22.2) [38272]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull-old.vpr@15.1--22.2) [38273]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogramFull-old.vpr@15.1--22.2) [38274]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (testHistogramFull-old.vpr@21.40--21.68) [38275]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (testHistogramFull-old.vpr@21.40--21.68) [38276]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (testHistogramFull-old.vpr@21.40--21.68) [38277]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (testHistogramFull-old.vpr@21.40--21.68) [38278]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (k_9 >= 0 && (k_9 < Seq#Length(ar) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar) && k_9 != j_4_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[k] != ar[j] might not hold. (testHistogramFull-old.vpr@21.40--21.68) [38279]"}
                Seq#Index(ar, k_9) != Seq#Index(ar, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar, k_10_1), Seq#Index(ar, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar, k_10_1) != Seq#Index(ar, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull-old.vpr@21.40--21.68) [38280]"}
            (forall k_11: int ::
            
            Seq#Contains(Seq#Range(lo, hi), k_11) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            Seq#Contains(Seq#Range(lo, hi), k_11) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (testHistogramFull-old.vpr@21.40--21.68) [38281]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_11) } { Seq#Contains(Seq#Range(lo, hi), k_11) } { Seq#Index(ar, k_11) }
              Seq#Contains(Seq#Range(lo, hi), k_11) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@21.40--21.68) [38282]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && Seq#Contains(Seq#Range(lo, hi), k_11)) && Seq#Contains(Seq#Range(lo, hi), k_11_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull-old.vpr@21.40--21.68) [38283]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_11) } { Seq#Contains(Seq#Range(lo, hi), k_11) } { Seq#Index(ar, k_11) }
              Seq#Contains(Seq#Range(lo, hi), k_11) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_11) } { Seq#Contains(Seq#Range(lo, hi), k_11) } { Seq#Index(ar, k_11) }
              Seq#Contains(Seq#Range(lo, hi), k_11) && NoPerm < wildcard ==> qpRange2(Seq#Index(ar, k_11)) && invRecv2(Seq#Index(ar, k_11)) == k_11
            );
            assume (forall o_4: Ref ::
              { invRecv2(o_4) }
              Seq#Contains(Seq#Range(lo, hi), invRecv2(o_4)) && (NoPerm < wildcard && qpRange2(o_4)) ==> Seq#Index(ar, invRecv2(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_array#trigger(FrameFragment(sum_array#condqp1(Heap, i + 1, lo, hi, ar)), i + 1, lo, hi, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] + sum_array(Heap, i + 1, lo, hi, ar) else 0);
}

// ==================================================
// Translation of function sum_square
// ==================================================

// Uninterpreted function definitions
function  sum_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
function  sum_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) }
  sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) && dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) }
  dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall k: int, j_9: int ::
    { Seq#Index(ar, k), Seq#Index(ar, j_9) }
    k >= 0 && (k < Seq#Length(ar) && (j_9 >= 0 && (j_9 < Seq#Length(ar) && k != j_9))) ==> Seq#Index(ar, k) != Seq#Index(ar, j_9)
  ) ==> sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) == (if i < vmax then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] else 0) + sum_square'(Heap, i + 1, lo, hi, step, vmin, vmax, ar) else 0)
);

// Framing axioms
function  sum_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) }
  state(Heap, Mask) ==> sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square#frame(FrameFragment(sum_square#condqp2(Heap, i, lo, hi, step, vmin, vmax, ar)), i, lo, hi, step, vmin, vmax, ar)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_square
// ==================================================

function  sum_square#condqp2(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_square#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi)) <==> vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi))) && (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar))), Ref__Integer_value]) ==> sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): bool;

// State-independent trigger function
function  sum_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var k_4: int;
  var j_6: int;
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9: int;
  var j_4_1: int;
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
    assume i <= vmax;
    assume state(Heap, Mask);
    assume vmax <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_4 >= 0 && (k_4 < Seq#Length(ar) && (j_6 >= 0 && (j_6 < Seq#Length(ar) && k_4 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull-old.vpr@28.12--28.106) [38284]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull-old.vpr@28.12--28.106) [38285]"}
            k_4 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testHistogramFull-old.vpr@28.12--28.106) [38286]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testHistogramFull-old.vpr@28.12--28.106) [38287]"}
            j_6 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k_6: int, j_3_1: int ::
      { Seq#Index(ar, k_6), Seq#Index(ar, j_3_1) }
      k_6 >= 0 && (k_6 < Seq#Length(ar) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ar) && k_6 != j_3_1))) ==> Seq#Index(ar, k_6) != Seq#Index(ar, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_7) {
          if (k_7 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@29.13--29.136) [38288]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@29.13--29.136) [38289]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull-old.vpr@29.13--29.136) [38290]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull-old.vpr@29.13--29.136) [38291]"}
            k_7 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@29.13--29.136) [38292]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)))) && (vmin <= k_8_1 && (k_8_1 < vmax && (lo <= k_8_1 mod step && k_8_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_8) != Seq#Index(ar, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)) ==> qpRange3(Seq#Index(ar, k_8)) && invRecv3(Seq#Index(ar, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4) ==> Seq#Index(ar, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)) ==> Seq#Index(ar, k_8) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4) ==> Seq#Index(ar, invRecv3(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && i % step < hi ? ar[i].Ref__Integer_value : 0) + sum_square(i + 1, lo, hi, step, min, max, ar) : 0)
      if (i < vmax) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@24.1--32.2) [38293]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@24.1--32.2) [38294]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull-old.vpr@24.1--32.2) [38295]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull-old.vpr@24.1--32.2) [38296]"}
            i < Seq#Length(ar);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogramFull-old.vpr@24.1--32.2) [38297]"}
            HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38298]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38299]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38300]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38301]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38302]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38303]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38304]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38305]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (k_9 >= 0 && (k_9 < Seq#Length(ar) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar) && k_9 != j_4_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[k] != ar[j] might not hold. (testHistogramFull-old.vpr@31.85--31.130) [38306]"}
                Seq#Index(ar, k_9) != Seq#Index(ar, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar, k_10_1), Seq#Index(ar, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar, k_10_1) != Seq#Index(ar, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull-old.vpr@31.85--31.130) [38307]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (testHistogramFull-old.vpr@31.85--31.130) [38308]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@31.85--31.130) [38309]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull-old.vpr@31.85--31.130) [38310]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && NoPerm < wildcard ==> qpRange4(Seq#Index(ar, k_11)) && invRecv4(Seq#Index(ar, k_11)) == k_11
            );
            assume (forall o_4: Ref ::
              { invRecv4(o_4) }
              (vmin <= invRecv4(o_4) && (invRecv4(o_4) < vmax && (lo <= invRecv4(o_4) mod step && invRecv4(o_4) mod step < hi))) && (NoPerm < wildcard && qpRange4(o_4)) ==> Seq#Index(ar, invRecv4(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_square#trigger(FrameFragment(sum_square#condqp2(Heap, i + 1, lo, hi, step, vmin, vmax, ar)), i + 1, lo, hi, step, vmin, vmax, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] else 0) + sum_square(Heap, i + 1, lo, hi, step, vmin, vmax, ar) else 0);
}

// ==================================================
// Translation of function count_square
// ==================================================

// Uninterpreted function definitions
function  count_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
function  count_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) && dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall k: int, j_9: int ::
    { Seq#Index(ar, k), Seq#Index(ar, j_9) }
    k >= 0 && (k < Seq#Length(ar) && (j_9 >= 0 && (j_9 < Seq#Length(ar) && k != j_9))) ==> Seq#Index(ar, k) != Seq#Index(ar, j_9)
  ) ==> count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == (if i < vmax then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square'(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2) else 0)
);

// Framing axioms
function  count_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  state(Heap, Mask) ==> count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square#frame(FrameFragment(count_square#condqp3(Heap, i, lo, hi, step, vmin, vmax, ar, v_2)), i, lo, hi, step, vmin, vmax, ar, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_square
// ==================================================

function  count_square#condqp3(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_square#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi)) <==> vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi))) && (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2))), Ref__Integer_value]) ==> count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var k_10: int;
  var j_7: int;
  var k_12: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9: int;
  var j_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax;
    assume state(Heap, Mask);
    assume vmax <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_10 >= 0 && (k_10 < Seq#Length(ar) && (j_7 >= 0 && (j_7 < Seq#Length(ar) && k_10 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull-old.vpr@38.12--38.106) [38311]"}
            k_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull-old.vpr@38.12--38.106) [38312]"}
            k_10 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testHistogramFull-old.vpr@38.12--38.106) [38313]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testHistogramFull-old.vpr@38.12--38.106) [38314]"}
            j_7 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k_6: int, j_3_1: int ::
      { Seq#Index(ar, k_6), Seq#Index(ar, j_3_1) }
      k_6 >= 0 && (k_6 < Seq#Length(ar) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ar) && k_6 != j_3_1))) ==> Seq#Index(ar, k_6) != Seq#Index(ar, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_12) {
          if (k_12 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@39.13--39.136) [38315]"}
              step != 0;
            if (lo <= k_12 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@39.13--39.136) [38316]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_12 && (k_12 < vmax && (lo <= k_12 mod step && k_12 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull-old.vpr@39.13--39.136) [38317]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull-old.vpr@39.13--39.136) [38318]"}
            k_12 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@39.13--39.136) [38319]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)))) && (vmin <= k_8_1 && (k_8_1 < vmax && (lo <= k_8_1 mod step && k_8_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_8) != Seq#Index(ar, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)) ==> qpRange5(Seq#Index(ar, k_8)) && invRecv5(Seq#Index(ar, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)) ==> Seq#Index(ar, k_8) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && (i % step < hi && ar[i].Ref__Integer_value == v) ? 1 : 0) + count_square(i + 1, lo, hi, step, min, max, ar, v) : 0)
      if (i < vmax) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@34.1--42.2) [38320]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@34.1--42.2) [38321]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull-old.vpr@34.1--42.2) [38322]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull-old.vpr@34.1--42.2) [38323]"}
              i < Seq#Length(ar);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogramFull-old.vpr@34.1--42.2) [38324]"}
              HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38325]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38326]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38327]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38328]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38329]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38330]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38331]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38332]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (k_9 >= 0 && (k_9 < Seq#Length(ar) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar) && k_9 != j_4_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[k] != ar[j] might not hold. (testHistogramFull-old.vpr@41.97--41.147) [38333]"}
                Seq#Index(ar, k_9) != Seq#Index(ar, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar, k_10_1), Seq#Index(ar, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar, k_10_1) != Seq#Index(ar, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull-old.vpr@41.97--41.147) [38334]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testHistogramFull-old.vpr@41.97--41.147) [38335]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@41.97--41.147) [38336]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull-old.vpr@41.97--41.147) [38337]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && NoPerm < wildcard ==> qpRange6(Seq#Index(ar, k_11)) && invRecv6(Seq#Index(ar, k_11)) == k_11
            );
            assume (forall o_4: Ref ::
              { invRecv6(o_4) }
              (vmin <= invRecv6(o_4) && (invRecv6(o_4) < vmax && (lo <= invRecv6(o_4) mod step && invRecv6(o_4) mod step < hi))) && (NoPerm < wildcard && qpRange6(o_4)) ==> Seq#Index(ar, invRecv6(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_square#trigger(FrameFragment(count_square#condqp3(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2)), i + 1, lo, hi, step, vmin, vmax, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2) else 0);
}

// ==================================================
// Translation of function count_list
// ==================================================

// Uninterpreted function definitions
function  count_list(Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int): int;
function  count_list'(Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { count_list(Heap, i, hi, ar, v_2) }
  count_list(Heap, i, hi, ar, v_2) == count_list'(Heap, i, hi, ar, v_2) && dummyFunction(count_list#triggerStateless(i, hi, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { count_list'(Heap, i, hi, ar, v_2) }
  dummyFunction(count_list#triggerStateless(i, hi, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar) ==> count_list(Heap, i, hi, ar, v_2) == (if i < hi then (if Seq#Index(ar, i) == v_2 then 1 else 0) + count_list'(Heap, i + 1, hi, ar, v_2) else 0)
);

// Framing axioms
function  count_list#frame(frame: FrameType, i: int, hi: int, ar: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list'(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) ==> count_list'(Heap, i, hi, ar, v_2) == count_list#frame(EmptyFrame, i, hi, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_list#trigger(frame: FrameType, i: int, hi: int, ar: (Seq int), v_2: int): bool;

// State-independent trigger function
function  count_list#triggerStateless(i: int, hi: int, ar: (Seq int), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_list#definedness(i: int, hi: int, ar: (Seq int), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull-old.vpr@44.1--49.2) [38338]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull-old.vpr@44.1--49.2) [38339]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (testHistogramFull-old.vpr@48.36--48.64) [38340]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (testHistogramFull-old.vpr@48.36--48.64) [38341]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (testHistogramFull-old.vpr@48.36--48.64) [38342]"}
            hi <= Seq#Length(ar);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_list#trigger(EmptyFrame, i + 1, hi, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Seq#Index(ar, i) == v_2 then 1 else 0) + count_list(Heap, i + 1, hi, ar, v_2) else 0);
}

// ==================================================
// Translation of function count_array
// ==================================================

// Uninterpreted function definitions
function  count_array(Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
function  count_array'(Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array(Heap, i, hi, ar, v_2) }
  count_array(Heap, i, hi, ar, v_2) == count_array'(Heap, i, hi, ar, v_2) && dummyFunction(count_array#triggerStateless(i, hi, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array'(Heap, i, hi, ar, v_2) }
  dummyFunction(count_array#triggerStateless(i, hi, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar)) && (forall k: int, j_9: int ::
    { Seq#Index(ar, k), Seq#Index(ar, j_9) }
    k >= 0 && (k < Seq#Length(ar) && (j_9 >= 0 && (j_9 < Seq#Length(ar) && k != j_9))) ==> Seq#Index(ar, k) != Seq#Index(ar, j_9)
  ) ==> count_array(Heap, i, hi, ar, v_2) == (if i < hi then (if Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array'(Heap, i + 1, hi, ar, v_2) else 0)
);

// Framing axioms
function  count_array#frame(frame: FrameType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array'(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) ==> count_array'(Heap, i, hi, ar, v_2) == count_array#frame(FrameFragment(count_array#condqp4(Heap, i, hi, ar, v_2)), i, hi, ar, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { (k in [0..hi)) } { ar[k] } (k in [0..hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_array
// ==================================================

function  count_array#condqp4(Heap: HeapType, i_1_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_array#condqp4(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Seq#Contains(Seq#Range(0, hi), sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2))) <==> Seq#Contains(Seq#Range(0, hi), sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)))) && (Seq#Contains(Seq#Range(0, hi), sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2))) ==> Heap2Heap[Seq#Index(ar, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2))), Ref__Integer_value]) ==> count_array#condqp4(Heap2Heap, i, hi, ar, v_2) == count_array#condqp4(Heap1Heap, i, hi, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_array#trigger(frame: FrameType, i: int, hi: int, ar: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_array#triggerStateless(i: int, hi: int, ar: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_array#definedness(i: int, hi: int, ar: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var k_15: int;
  var j_10: int;
  var k_16: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9: int;
  var j_4_1: int;
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
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_15 >= 0 && (k_15 < Seq#Length(ar) && (j_10 >= 0 && (j_10 < Seq#Length(ar) && k_15 != j_10)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull-old.vpr@54.12--54.106) [38343]"}
            k_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull-old.vpr@54.12--54.106) [38344]"}
            k_15 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testHistogramFull-old.vpr@54.12--54.106) [38345]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testHistogramFull-old.vpr@54.12--54.106) [38346]"}
            j_10 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k_6: int, j_3_1: int ::
      { Seq#Index(ar, k_6), Seq#Index(ar, j_3_1) }
      k_6 >= 0 && (k_6 < Seq#Length(ar) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ar) && k_6 != j_3_1))) ==> Seq#Index(ar, k_6) != Seq#Index(ar, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..hi)) } { ar[k] } (k in [0..hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (Seq#Contains(Seq#Range(0, hi), k_16)) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogramFull-old.vpr@55.13--55.88) [38347]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogramFull-old.vpr@55.13--55.88) [38348]"}
            k_16 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@55.13--55.88) [38349]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && Seq#Contains(Seq#Range(0, hi), k_8)) && Seq#Contains(Seq#Range(0, hi), k_8_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_8) != Seq#Index(ar, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_8) } { Seq#Contains(Seq#Range(0, hi), k_8) } { Seq#Index(ar, k_8) }
        Seq#Contains(Seq#Range(0, hi), k_8) ==> qpRange7(Seq#Index(ar, k_8)) && invRecv7(Seq#Index(ar, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        Seq#Contains(Seq#Range(0, hi), invRecv7(o_4)) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_8) } { Seq#Contains(Seq#Range(0, hi), k_8) } { Seq#Index(ar, k_8) }
        Seq#Contains(Seq#Range(0, hi), k_8) ==> Seq#Index(ar, k_8) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, hi), invRecv7(o_4)) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!(Seq#Contains(Seq#Range(0, hi), invRecv7(o_4)) && qpRange7(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i].Ref__Integer_value == v ? 1 : 0) + count_array(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogramFull-old.vpr@51.1--58.2) [38350]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogramFull-old.vpr@51.1--58.2) [38351]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogramFull-old.vpr@51.1--58.2) [38352]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (testHistogramFull-old.vpr@57.55--57.84) [38353]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (testHistogramFull-old.vpr@57.55--57.84) [38354]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (testHistogramFull-old.vpr@57.55--57.84) [38355]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (k_9 >= 0 && (k_9 < Seq#Length(ar) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar) && k_9 != j_4_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[k] != ar[j] might not hold. (testHistogramFull-old.vpr@57.55--57.84) [38356]"}
                Seq#Index(ar, k_9) != Seq#Index(ar, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar, k_10_1), Seq#Index(ar, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar, k_10_1) != Seq#Index(ar, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull-old.vpr@57.55--57.84) [38357]"}
            (forall k_11: int ::
            
            Seq#Contains(Seq#Range(0, hi), k_11) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            Seq#Contains(Seq#Range(0, hi), k_11) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testHistogramFull-old.vpr@57.55--57.84) [38358]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_11) } { Seq#Contains(Seq#Range(0, hi), k_11) } { Seq#Index(ar, k_11) }
              Seq#Contains(Seq#Range(0, hi), k_11) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@57.55--57.84) [38359]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && Seq#Contains(Seq#Range(0, hi), k_11)) && Seq#Contains(Seq#Range(0, hi), k_11_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogramFull-old.vpr@57.55--57.84) [38360]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_11) } { Seq#Contains(Seq#Range(0, hi), k_11) } { Seq#Index(ar, k_11) }
              Seq#Contains(Seq#Range(0, hi), k_11) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_11) } { Seq#Contains(Seq#Range(0, hi), k_11) } { Seq#Index(ar, k_11) }
              Seq#Contains(Seq#Range(0, hi), k_11) && NoPerm < wildcard ==> qpRange8(Seq#Index(ar, k_11)) && invRecv8(Seq#Index(ar, k_11)) == k_11
            );
            assume (forall o_4: Ref ::
              { invRecv8(o_4) }
              Seq#Contains(Seq#Range(0, hi), invRecv8(o_4)) && (NoPerm < wildcard && qpRange8(o_4)) ==> Seq#Index(ar, invRecv8(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_array#trigger(FrameFragment(count_array#condqp4(Heap, i + 1, hi, ar, v_2)), i + 1, hi, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array(Heap, i + 1, hi, ar, v_2) else 0);
}

// ==================================================
// Translation of method Ref__loop_main_93
// ==================================================

procedure Ref__loop_main_93(diz: Ref, P_1: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_17: int;
  var j_11: int;
  var k_18: int;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_19: int;
  var k_20: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9: int;
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
    assume P_1 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
      if (*) {
        if (k_17 >= 0 && (k_17 < Seq#Length(hist) && (j_11 >= 0 && (j_11 < Seq#Length(hist) && k_17 != j_11)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@63.12--63.114) [38361]"}
            k_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@63.12--63.114) [38362]"}
            k_17 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might be negative. (testHistogramFull-old.vpr@63.12--63.114) [38363]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might exceed sequence length. (testHistogramFull-old.vpr@63.12--63.114) [38364]"}
            j_11 < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_1: int ::
      { Seq#Index(hist, k_1_1), Seq#Index(hist, j_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(hist) && (j_1 >= 0 && (j_1 < Seq#Length(hist) && k_1_1 != j_1))) ==> Seq#Index(hist, k_1_1) != Seq#Index(hist, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_18)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@64.13--64.86) [38365]"}
            k_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@64.13--64.86) [38366]"}
            k_18 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@64.13--64.86) [38367]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && Seq#Contains(Seq#Range(0, P_1), k_3)) && Seq#Contains(Seq#Range(0, P_1), k_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) && NoPerm < FullPerm ==> qpRange9(Seq#Index(hist, k_3)) && invRecv9(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(hist, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) ==> Seq#Index(hist, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, P_1), invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv9(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_19)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@65.12--65.85) [38368]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@65.12--65.85) [38369]"}
            k_19 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@65.12--65.85) [38370]"}
      (forall k_5: int, k_5_1: int ::
      
      (((k_5 != k_5_1 && Seq#Contains(Seq#Range(0, P_1), k_5)) && Seq#Contains(Seq#Range(0, P_1), k_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_5) != Seq#Index(hist, k_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_5: int ::
        { Seq#Index(hist, k_5) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
        Seq#Contains(Seq#Range(0, P_1), k_5) && NoPerm < FullPerm ==> qpRange10(Seq#Index(hist, k_5)) && invRecv10(Seq#Index(hist, k_5)) == k_5
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> Seq#Index(hist, invRecv10(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_5: int ::
        { Seq#Index(hist, k_5) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
        Seq#Contains(Seq#Range(0, P_1), k_5) ==> Seq#Index(hist, k_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, P_1), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv10(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == 0)
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_20)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@66.12--66.80) [38371]"}
            k_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@66.12--66.80) [38372]"}
            k_20 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@66.12--66.80) [38373]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_20), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_7_1) } { Seq#Contains(Seq#Range(0, P_1), k_7_1) } { Seq#Index(hist, k_7_1) }
      Seq#Contains(Seq#Range(0, P_1), k_7_1) ==> PostHeap[Seq#Index(hist, k_7_1), Ref__Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistogramFull-old.vpr@68.3--68.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@65.12--65.85) [38374]"}
        (forall k_8: int, k_8_1: int ::
        { neverTriggered11(k_8), neverTriggered11(k_8_1) }
        (((k_8 != k_8_1 && Seq#Contains(Seq#Range(0, P_1), k_8)) && Seq#Contains(Seq#Range(0, P_1), k_8_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_8) != Seq#Index(hist, k_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_93 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@65.12--65.85) [38375]"}
        (forall k_8: int ::
        { Seq#Index(hist, k_8) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_8) } { Seq#Contains(Seq#Range(0, P_1), k_8) } { Seq#Index(hist, k_8) }
        Seq#Contains(Seq#Range(0, P_1), k_8) ==> Mask[Seq#Index(hist, k_8), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_8: int ::
        { Seq#Index(hist, k_8) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_8) } { Seq#Contains(Seq#Range(0, P_1), k_8) } { Seq#Index(hist, k_8) }
        Seq#Contains(Seq#Range(0, P_1), k_8) && NoPerm < FullPerm ==> qpRange11(Seq#Index(hist, k_8)) && invRecv11(Seq#Index(hist, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        Seq#Contains(Seq#Range(0, P_1), invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(hist, invRecv11(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, P_1), invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(hist, invRecv11(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, P_1), invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, P_1), k_9)) {
        assert {:msg "  Postcondition of Ref__loop_main_93 might not hold. Assertion hist[k].Ref__Integer_value == 0 might not hold. (testHistogramFull-old.vpr@66.12--66.80) [38376]"}
          Heap[Seq#Index(hist, k_9), Ref__Integer_value] == 0;
      }
      assume false;
    }
    assume (forall k_10_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_10_1) } { Seq#Contains(Seq#Range(0, P_1), k_10_1) } { Seq#Index(hist, k_10_1) }
      Seq#Contains(Seq#Range(0, P_1), k_10_1) ==> Heap[Seq#Index(hist, k_10_1), Ref__Integer_value] == 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_93
// ==================================================

procedure Ref__loop_body_93(diz: Ref, k: int, P_1: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_3: Ref;
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
    assume Seq#Contains(Seq#Range(0, P_1), k);
    assume state(Heap, Mask);
    assume P_1 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(hist[k].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@75.12--75.50) [38377]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@75.12--75.50) [38378]"}
        k < Seq#Length(hist);
    perm := FullPerm;
    assume Seq#Index(hist, k) != null;
    Mask := Mask[Seq#Index(hist, k), Ref__Integer_value:=Mask[Seq#Index(hist, k), Ref__Integer_value] + perm];
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
    assume Seq#Contains(Seq#Range(0, P_1), k);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(hist[k].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@77.11--77.49) [38379]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@77.11--77.49) [38380]"}
        k < Seq#Length(hist);
    perm := FullPerm;
    assume Seq#Index(hist, k) != null;
    PostMask := PostMask[Seq#Index(hist, k), Ref__Integer_value:=PostMask[Seq#Index(hist, k), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of hist[k].Ref__Integer_value == 0
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@78.11--78.42) [38381]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@78.11--78.42) [38382]"}
        k < Seq#Length(hist);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@78.11--78.42) [38383]"}
        HasDirectPerm(PostMask, Seq#Index(hist, k), Ref__Integer_value);
    assume PostHeap[Seq#Index(hist, k), Ref__Integer_value] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_3, $allocated];
  
  // -- Translating statement: __flatten_3 := hist[k] -- testHistogramFull-old.vpr@81.3--81.25
    
    // -- Check definedness of hist[k]
      assert {:msg "  Assignment might fail. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@81.3--81.25) [38384]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@81.3--81.25) [38385]"}
        k < Seq#Length(hist);
    __flatten_3 := Seq#Index(hist, k);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3.Ref__Integer_value := 0 -- testHistogramFull-old.vpr@82.3--82.38
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_3.Ref__Integer_value (testHistogramFull-old.vpr@82.3--82.38) [38386]"}
      FullPerm == Mask[__flatten_3, Ref__Integer_value];
    Heap := Heap[__flatten_3, Ref__Integer_value:=0];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__loop_body_93 might not hold. Assertion (k in [0..P)) might not hold. (testHistogramFull-old.vpr@76.12--76.23) [38387]"}
      Seq#Contains(Seq#Range(0, P_1), k);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_93 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@77.11--77.49) [38388]"}
        perm <= Mask[Seq#Index(hist, k), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(hist, k), Ref__Integer_value:=Mask[Seq#Index(hist, k), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_93 might not hold. Assertion hist[k].Ref__Integer_value == 0 might not hold. (testHistogramFull-old.vpr@78.11--78.42) [38389]"}
      Heap[Seq#Index(hist, k), Ref__Integer_value] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_main_113
// ==================================================

procedure Ref__loop_main_113(diz: Ref, N: int, M: int, step: int, hist: (Seq Ref), matrix: (Seq Ref), P_1: int) returns ()
  modifies Heap, Mask;
{
  var k_21: int;
  var j_12: int;
  var k_30: int;
  var QPMask: MaskType;
  var k_31: int;
  var j_14: int;
  var j_15: int;
  var k_fresh_rw_0: int;
  var k_23: int;
  var j_22: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_19: int;
  var k_25: int;
  var k_26: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k$0: int;
  var j_10_2: int;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var k_fresh_rw_0_2: int;
  var k_13: int;
  var k_fresh_rw_0_4: int;
  
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
    assume M > 0;
    assume N > 0;
    assume step >= N;
    assume P_1 > 0;
    assume state(Heap, Mask);
    assume P_1 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
      if (*) {
        if (k_21 >= 0 && (k_21 < Seq#Length(hist) && (j_12 >= 0 && (j_12 < Seq#Length(hist) && k_21 != j_12)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@89.12--89.114) [38390]"}
            k_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@89.12--89.114) [38391]"}
            k_21 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might be negative. (testHistogramFull-old.vpr@89.12--89.114) [38392]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might exceed sequence length. (testHistogramFull-old.vpr@89.12--89.114) [38393]"}
            j_12 < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_1: int ::
      { Seq#Index(hist, k_1_1), Seq#Index(hist, j_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(hist) && (j_1 >= 0 && (j_1 < Seq#Length(hist) && k_1_1 != j_1))) ==> Seq#Index(hist, k_1_1) != Seq#Index(hist, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_30)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@90.13--90.86) [38394]"}
            k_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@90.13--90.86) [38395]"}
            k_30 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@90.13--90.86) [38396]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && Seq#Contains(Seq#Range(0, P_1), k_3)) && Seq#Contains(Seq#Range(0, P_1), k_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) && NoPerm < FullPerm ==> qpRange12(Seq#Index(hist, k_3)) && invRecv12(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(hist, invRecv12(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) ==> Seq#Index(hist, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, P_1), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv12(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N <= step;
    assume state(Heap, Mask);
    assume M * step <= Seq#Length(matrix);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { matrix[k], matrix[j] } k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j])
      if (*) {
        if (k_31 >= 0 && (k_31 < Seq#Length(matrix) && (j_14 >= 0 && (j_14 < Seq#Length(matrix) && k_31 != j_14)))) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might be negative. (testHistogramFull-old.vpr@93.12--93.122) [38397]"}
            k_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might exceed sequence length. (testHistogramFull-old.vpr@93.12--93.122) [38398]"}
            k_31 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogramFull-old.vpr@93.12--93.122) [38399]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@93.12--93.122) [38400]"}
            j_14 < Seq#Length(matrix);
        }
        assume false;
      }
    assume (forall k_5: int, j_3_1: int ::
      { Seq#Index(matrix, k_5), Seq#Index(matrix, j_3_1) }
      k_5 >= 0 && (k_5 < Seq#Length(matrix) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(matrix) && k_5 != j_3_1))) ==> Seq#Index(matrix, k_5) != Seq#Index(matrix, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } (j in [0..M * step)) && j % step < N ==> acc(matrix[j].Ref__Integer_value, 1 / 4))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), j_15)) {
          assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@94.13--94.113) [38401]"}
            step != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * step), j_15) && j_15 mod step < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogramFull-old.vpr@94.13--94.113) [38402]"}
            j_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@94.13--94.113) [38403]"}
            j_15 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@94.13--94.113) [38404]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && (Seq#Contains(Seq#Range(0, M * step), j_5_1) && j_5_1 mod step < N)) && (Seq#Contains(Seq#Range(0, M * step), j_5_2) && j_5_2 mod step < N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_5_1) != Seq#Index(matrix, j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(matrix, j_5_1) } { Seq#Index(matrix, j_5_1) }
        (Seq#Contains(Seq#Range(0, M * step), j_5_1) && j_5_1 mod step < N) && NoPerm < 1 / 4 ==> qpRange13(Seq#Index(matrix, j_5_1)) && invRecv13(Seq#Index(matrix, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((Seq#Contains(Seq#Range(0, M * step), invRecv13(o_4)) && invRecv13(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange13(o_4) ==> Seq#Index(matrix, invRecv13(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogramFull-old.vpr@94.13--94.113) [38405]"}
      (forall j_5_1: int ::
      { Seq#Index(matrix, j_5_1) } { Seq#Index(matrix, j_5_1) }
      Seq#Contains(Seq#Range(0, M * step), j_5_1) && j_5_1 mod step < N ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(matrix, j_5_1) } { Seq#Index(matrix, j_5_1) }
        (Seq#Contains(Seq#Range(0, M * step), j_5_1) && j_5_1 mod step < N) && 1 / 4 > NoPerm ==> Seq#Index(matrix, j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((Seq#Contains(Seq#Range(0, M * step), invRecv13(o_4)) && invRecv13(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange13(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix, invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!(((Seq#Contains(Seq#Range(0, M * step), invRecv13(o_4)) && invRecv13(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N <= step;
    
    // -- Check definedness of (forall k_fresh_rw_0: Int :: { (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0)) {
          assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@95.12--95.173) [38406]"}
            step != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0) && k_fresh_rw_0 mod step < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogramFull-old.vpr@95.12--95.173) [38407]"}
            k_fresh_rw_0 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogramFull-old.vpr@95.12--95.173) [38408]"}
            k_fresh_rw_0 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogramFull-old.vpr@95.12--95.173) [38409]"}
            HasDirectPerm(Mask, Seq#Index(matrix, k_fresh_rw_0), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_fresh_rw_0_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_1), Ref__Integer_value]) } { Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_1), Ref__Integer_value]) }
      Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_1) && k_fresh_rw_0_1 mod step < N ==> Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_1), Ref__Integer_value])
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
      if (*) {
        if (k_23 >= 0 && (k_23 < Seq#Length(hist) && (j_22 >= 0 && (j_22 < Seq#Length(hist) && k_23 != j_22)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@96.12--96.114) [38410]"}
            k_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@96.12--96.114) [38411]"}
            k_23 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might be negative. (testHistogramFull-old.vpr@96.12--96.114) [38412]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might exceed sequence length. (testHistogramFull-old.vpr@96.12--96.114) [38413]"}
            j_22 < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall k_7_1: int, j_7_1: int ::
      { Seq#Index(hist, k_7_1), Seq#Index(hist, j_7_1) }
      k_7_1 >= 0 && (k_7_1 < Seq#Length(hist) && (j_7_1 >= 0 && (j_7_1 < Seq#Length(hist) && k_7_1 != j_7_1))) ==> Seq#Index(hist, k_7_1) != Seq#Index(hist, j_7_1)
    );
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
    assume M > 0;
    assume N > 0;
    assume step >= N;
    assume P_1 > 0;
    assume state(PostHeap, PostMask);
    assume N <= step;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } (j in [0..M * step)) && j % step < N ==> acc(matrix[j].Ref__Integer_value, 1 / 4))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), j_19)) {
          assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@99.12--99.112) [38414]"}
            step != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * step), j_19) && j_19 mod step < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogramFull-old.vpr@99.12--99.112) [38415]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@99.12--99.112) [38416]"}
            j_19 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@99.12--99.112) [38417]"}
      (forall j_9_1: int, j_9_2: int ::
      
      (((j_9_1 != j_9_2 && (Seq#Contains(Seq#Range(0, M * step), j_9_1) && j_9_1 mod step < N)) && (Seq#Contains(Seq#Range(0, M * step), j_9_2) && j_9_2 mod step < N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_9_1) != Seq#Index(matrix, j_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_9_1: int ::
        { Seq#Index(matrix, j_9_1) } { Seq#Index(matrix, j_9_1) }
        (Seq#Contains(Seq#Range(0, M * step), j_9_1) && j_9_1 mod step < N) && NoPerm < 1 / 4 ==> qpRange14(Seq#Index(matrix, j_9_1)) && invRecv14(Seq#Index(matrix, j_9_1)) == j_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((Seq#Contains(Seq#Range(0, M * step), invRecv14(o_4)) && invRecv14(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange14(o_4) ==> Seq#Index(matrix, invRecv14(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogramFull-old.vpr@99.12--99.112) [38418]"}
      (forall j_9_1: int ::
      { Seq#Index(matrix, j_9_1) } { Seq#Index(matrix, j_9_1) }
      Seq#Contains(Seq#Range(0, M * step), j_9_1) && j_9_1 mod step < N ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_9_1: int ::
        { Seq#Index(matrix, j_9_1) } { Seq#Index(matrix, j_9_1) }
        (Seq#Contains(Seq#Range(0, M * step), j_9_1) && j_9_1 mod step < N) && 1 / 4 > NoPerm ==> Seq#Index(matrix, j_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((Seq#Contains(Seq#Range(0, M * step), invRecv14(o_4)) && invRecv14(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange14(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix, invRecv14(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 4) && (!(((Seq#Contains(Seq#Range(0, M * step), invRecv14(o_4)) && invRecv14(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange14(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_25)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@100.12--100.85) [38419]"}
            k_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@100.12--100.85) [38420]"}
            k_25 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@100.12--100.85) [38421]"}
      (forall k_9: int, k_9_2: int ::
      
      (((k_9 != k_9_2 && Seq#Contains(Seq#Range(0, P_1), k_9)) && Seq#Contains(Seq#Range(0, P_1), k_9_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_9) != Seq#Index(hist, k_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_9: int ::
        { Seq#Index(hist, k_9) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_9) } { Seq#Contains(Seq#Range(0, P_1), k_9) } { Seq#Index(hist, k_9) }
        Seq#Contains(Seq#Range(0, P_1), k_9) && NoPerm < FullPerm ==> qpRange15(Seq#Index(hist, k_9)) && invRecv15(Seq#Index(hist, k_9)) == k_9
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(hist, invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_9: int ::
        { Seq#Index(hist, k_9) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_9) } { Seq#Contains(Seq#Range(0, P_1), k_9) } { Seq#Index(hist, k_9) }
        Seq#Contains(Seq#Range(0, P_1), k_9) ==> Seq#Index(hist, k_9) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, P_1), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv15(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { old(hist[k]) } (k in [0..P)) ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_26)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@101.12--101.164) [38422]"}
            k_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@101.12--101.164) [38423]"}
            k_26 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@101.12--101.164) [38424]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_26), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@101.12--101.164) [38425]"}
            k_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@101.12--101.164) [38426]"}
            k_26 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@101.12--101.164) [38427]"}
            HasDirectPerm(oldMask, Seq#Index(hist, k_26), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= N might not hold. (testHistogramFull-old.vpr@101.112--101.163) [38428]"}
              0 <= N;
            assert {:msg "  Precondition of function count_square might not hold. Assertion N <= step might not hold. (testHistogramFull-old.vpr@101.112--101.163) [38429]"}
              N <= step;
            assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testHistogramFull-old.vpr@101.112--101.163) [38430]"}
              step > 0;
            assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= M * step might not hold. (testHistogramFull-old.vpr@101.112--101.163) [38431]"}
              0 <= M * step;
            assert {:msg "  Precondition of function count_square might not hold. Assertion M * step <= |matrix| might not hold. (testHistogramFull-old.vpr@101.112--101.163) [38432]"}
              M * step <= Seq#Length(matrix);
            if (*) {
              if (k$0 >= 0 && (k$0 < Seq#Length(matrix) && (j_10_2 >= 0 && (j_10_2 < Seq#Length(matrix) && k$0 != j_10_2)))) {
                assert {:msg "  Precondition of function count_square might not hold. Assertion matrix[k$0] != matrix[j] might not hold. (testHistogramFull-old.vpr@101.112--101.163) [38433]"}
                  Seq#Index(matrix, k$0) != Seq#Index(matrix, j_10_2);
              }
              assume false;
            }
            assume (forall k$0_1_1: int, j_11_1: int ::
              { Seq#Index(matrix, k$0_1_1), Seq#Index(matrix, j_11_1) }
              k$0_1_1 >= 0 && (k$0_1_1 < Seq#Length(matrix) && (j_11_1 >= 0 && (j_11_1 < Seq#Length(matrix) && k$0_1_1 != j_11_1))) ==> Seq#Index(matrix, k$0_1_1) != Seq#Index(matrix, j_11_1)
            );
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogramFull-old.vpr@101.112--101.163) [38434]"}
              (forall k$0_2: int ::
              
              0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N)) ==> PostMask[Seq#Index(matrix, k$0_2), Ref__Integer_value] > NoPerm
            );
            assume (forall k$0_2: int ::
              
              0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N)) ==> wildcard < PostMask[Seq#Index(matrix, k$0_2), Ref__Integer_value]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testHistogramFull-old.vpr@101.112--101.163) [38435]"}
                (forall k$0_2: int ::
                { Seq#Index(matrix, k$0_2) } { Seq#Index(matrix, k$0_2) }
                (0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N))) && dummyFunction(PostHeap[Seq#Index(matrix, k$0_2), Ref__Integer_value]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver matrix[k$0] is injective
              assert {:msg "  Precondition of function count_square might not hold. Quantified resource matrix[k$0].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@101.112--101.163) [38436]"}
                (forall k$0_2: int, k$0_2_1: int ::
                { neverTriggered16(k$0_2), neverTriggered16(k$0_2_1) }
                (((k$0_2 != k$0_2_1 && (0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N)))) && (0 <= k$0_2_1 && (k$0_2_1 < M * step && (0 <= k$0_2_1 mod step && k$0_2_1 mod step < N)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(matrix, k$0_2) != Seq#Index(matrix, k$0_2_1)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogramFull-old.vpr@101.112--101.163) [38437]"}
                (forall k$0_2: int ::
                { Seq#Index(matrix, k$0_2) } { Seq#Index(matrix, k$0_2) }
                0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N)) ==> wildcard > NoPerm ==> PostMask[Seq#Index(matrix, k$0_2), Ref__Integer_value] > NoPerm
              );
            
            // -- assumptions for inverse of receiver matrix[k$0]
              assume (forall k$0_2: int ::
                { Seq#Index(matrix, k$0_2) } { Seq#Index(matrix, k$0_2) }
                (0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N))) && NoPerm < wildcard ==> qpRange16(Seq#Index(matrix, k$0_2)) && invRecv16(Seq#Index(matrix, k$0_2)) == k$0_2
              );
              assume (forall o_4: Ref ::
                { invRecv16(o_4) }
                (0 <= invRecv16(o_4) && (invRecv16(o_4) < M * step && (0 <= invRecv16(o_4) mod step && invRecv16(o_4) mod step < N))) && (NoPerm < wildcard && qpRange16(o_4)) ==> Seq#Index(matrix, invRecv16(o_4)) == o_4
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
    assume (forall k_11: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_11) } { Seq#Contains(Seq#Range(0, P_1), k_11) } { Seq#Index(hist, k_11) }
      Seq#Contains(Seq#Range(0, P_1), k_11) ==> PostHeap[Seq#Index(hist, k_11), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_11), Ref__Integer_value] + count_square(PostHeap, 0, 0, N, step, 0, M * step, matrix, k_11)
    );
    assume state(PostHeap, PostMask);
    assume N <= step;
    
    // -- Check definedness of (forall k_fresh_rw_0: Int :: { old(matrix[k_fresh_rw_0]) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_2)) {
          assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@102.11--102.210) [38438]"}
            step != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_2) && k_fresh_rw_0_2 mod step < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogramFull-old.vpr@102.11--102.210) [38439]"}
            k_fresh_rw_0_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogramFull-old.vpr@102.11--102.210) [38440]"}
            k_fresh_rw_0_2 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogramFull-old.vpr@102.11--102.210) [38441]"}
            HasDirectPerm(PostMask, Seq#Index(matrix, k_fresh_rw_0_2), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogramFull-old.vpr@102.11--102.210) [38442]"}
            k_fresh_rw_0_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogramFull-old.vpr@102.11--102.210) [38443]"}
            k_fresh_rw_0_2 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogramFull-old.vpr@102.11--102.210) [38444]"}
            HasDirectPerm(oldMask, Seq#Index(matrix, k_fresh_rw_0_2), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_fresh_rw_0_3: int ::
      { Seq#Index(matrix, k_fresh_rw_0_3) }
      Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_3) && k_fresh_rw_0_3 mod step < N ==> PostHeap[Seq#Index(matrix, k_fresh_rw_0_3), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_3), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistogramFull-old.vpr@104.3--104.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Assertion M > 0 might not hold. (testHistogramFull-old.vpr@97.11--97.55) [38445]"}
      M > 0;
    assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Assertion N > 0 might not hold. (testHistogramFull-old.vpr@97.11--97.55) [38446]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Assertion step >= N might not hold. (testHistogramFull-old.vpr@97.11--97.55) [38447]"}
      step >= N;
    assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Assertion P > 0 might not hold. (testHistogramFull-old.vpr@97.11--97.55) [38448]"}
      P_1 > 0;
    assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Assertion N <= step might not hold. (testHistogramFull-old.vpr@98.11--98.20) [38449]"}
      N <= step;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Fraction 1 / 4 might be negative. (testHistogramFull-old.vpr@99.12--99.112) [38450]"}
        (forall j_12_2: int ::
        { Seq#Index(matrix, j_12_2) } { Seq#Index(matrix, j_12_2) }
        (Seq#Contains(Seq#Range(0, M * step), j_12_2) && j_12_2 mod step < N) && dummyFunction(Heap[Seq#Index(matrix, j_12_2), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver matrix[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@99.12--99.112) [38451]"}
        (forall j_12_2: int, j_12_3: int ::
        { neverTriggered17(j_12_2), neverTriggered17(j_12_3) }
        (((j_12_2 != j_12_3 && (Seq#Contains(Seq#Range(0, M * step), j_12_2) && j_12_2 mod step < N)) && (Seq#Contains(Seq#Range(0, M * step), j_12_3) && j_12_3 mod step < N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_12_2) != Seq#Index(matrix, j_12_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (testHistogramFull-old.vpr@99.12--99.112) [38452]"}
        (forall j_12_2: int ::
        { Seq#Index(matrix, j_12_2) } { Seq#Index(matrix, j_12_2) }
        Seq#Contains(Seq#Range(0, M * step), j_12_2) && j_12_2 mod step < N ==> Mask[Seq#Index(matrix, j_12_2), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver matrix[j]
      assume (forall j_12_2: int ::
        { Seq#Index(matrix, j_12_2) } { Seq#Index(matrix, j_12_2) }
        (Seq#Contains(Seq#Range(0, M * step), j_12_2) && j_12_2 mod step < N) && NoPerm < 1 / 4 ==> qpRange17(Seq#Index(matrix, j_12_2)) && invRecv17(Seq#Index(matrix, j_12_2)) == j_12_2
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        (Seq#Contains(Seq#Range(0, M * step), invRecv17(o_4)) && invRecv17(o_4) mod step < N) && (NoPerm < 1 / 4 && qpRange17(o_4)) ==> Seq#Index(matrix, invRecv17(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, M * step), invRecv17(o_4)) && invRecv17(o_4) mod step < N) && (NoPerm < 1 / 4 && qpRange17(o_4)) ==> Seq#Index(matrix, invRecv17(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!((Seq#Contains(Seq#Range(0, M * step), invRecv17(o_4)) && invRecv17(o_4) mod step < N) && (NoPerm < 1 / 4 && qpRange17(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@100.12--100.85) [38453]"}
        (forall k_12_2: int, k_12_3: int ::
        { neverTriggered18(k_12_2), neverTriggered18(k_12_3) }
        (((k_12_2 != k_12_3 && Seq#Contains(Seq#Range(0, P_1), k_12_2)) && Seq#Contains(Seq#Range(0, P_1), k_12_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_12_2) != Seq#Index(hist, k_12_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@100.12--100.85) [38454]"}
        (forall k_12_2: int ::
        { Seq#Index(hist, k_12_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_12_2) } { Seq#Contains(Seq#Range(0, P_1), k_12_2) } { Seq#Index(hist, k_12_2) }
        Seq#Contains(Seq#Range(0, P_1), k_12_2) ==> Mask[Seq#Index(hist, k_12_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_12_2: int ::
        { Seq#Index(hist, k_12_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_12_2) } { Seq#Contains(Seq#Range(0, P_1), k_12_2) } { Seq#Index(hist, k_12_2) }
        Seq#Contains(Seq#Range(0, P_1), k_12_2) && NoPerm < FullPerm ==> qpRange18(Seq#Index(hist, k_12_2)) && invRecv18(Seq#Index(hist, k_12_2)) == k_12_2
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        Seq#Contains(Seq#Range(0, P_1), invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> Seq#Index(hist, invRecv18(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, P_1), invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> Seq#Index(hist, invRecv18(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, P_1), invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, P_1), k_13)) {
        assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Assertion hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k) might not hold. (testHistogramFull-old.vpr@101.12--101.164) [38455]"}
          Heap[Seq#Index(hist, k_13), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_13), Ref__Integer_value] + count_square(Heap, 0, 0, N, step, 0, M * step, matrix, k_13);
      }
      assume false;
    }
    assume (forall k_14_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_14_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_14_1_1) } { Seq#Index(hist, k_14_1_1) }
      Seq#Contains(Seq#Range(0, P_1), k_14_1_1) ==> Heap[Seq#Index(hist, k_14_1_1), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_14_1_1), Ref__Integer_value] + count_square(Heap, 0, 0, N, step, 0, M * step, matrix, k_14_1_1)
    );
    assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Assertion N <= step might not hold. (testHistogramFull-old.vpr@102.11--102.210) [38456]"}
      N <= step;
    if (*) {
      if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_4) && k_fresh_rw_0_4 mod step < N) {
        assert {:msg "  Postcondition of Ref__loop_main_113 might not hold. Assertion matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value) might not hold. (testHistogramFull-old.vpr@102.11--102.210) [38457]"}
          Heap[Seq#Index(matrix, k_fresh_rw_0_4), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_4), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall k_fresh_rw_0_5_1: int ::
      { Seq#Index(matrix, k_fresh_rw_0_5_1) }
      Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_5_1) && k_fresh_rw_0_5_1 mod step < N ==> Heap[Seq#Index(matrix, k_fresh_rw_0_5_1), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_5_1), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_113
// ==================================================

procedure Ref__loop_body_113(diz: Ref, step: int, j_9: int, i: int, P_1: int, N: int, M: int, hist: (Seq Ref), matrix: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_28: int;
  var l: int;
  var k_29: int;
  var QPMask: MaskType;
  var k_35: int;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_33: int;
  var k_36: int;
  var __flatten_4: Ref;
  var __flatten_5: Ref;
  var __flatten_7: Ref;
  var __flatten_8: Ref;
  var __flatten_6: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_11: int;
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
    assume M > 0;
    assume N > 0;
    assume step >= N;
    assume P_1 > 0;
    assume state(Heap, Mask);
    assume Seq#Contains(Seq#Range(0, M), i);
    assume Seq#Contains(Seq#Range(0, N), j_9);
    assume state(Heap, Mask);
    assume P_1 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, l: Int :: { hist[k], hist[l] } k >= 0 && (k < |hist| && (l >= 0 && (l < |hist| && k != l))) ==> hist[k] != hist[l])
      if (*) {
        if (k_28 >= 0 && (k_28 < Seq#Length(hist) && (l >= 0 && (l < Seq#Length(hist) && k_28 != l)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@112.12--112.114) [38458]"}
            k_28 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@112.12--112.114) [38459]"}
            k_28 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[l] into hist might be negative. (testHistogramFull-old.vpr@112.12--112.114) [38460]"}
            l >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[l] into hist might exceed sequence length. (testHistogramFull-old.vpr@112.12--112.114) [38461]"}
            l < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall k_1_1: int, l_1: int ::
      { Seq#Index(hist, k_1_1), Seq#Index(hist, l_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(hist) && (l_1 >= 0 && (l_1 < Seq#Length(hist) && k_1_1 != l_1))) ==> Seq#Index(hist, k_1_1) != Seq#Index(hist, l_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_29)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@113.13--113.86) [38462]"}
            k_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@113.13--113.86) [38463]"}
            k_29 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@113.13--113.86) [38464]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && Seq#Contains(Seq#Range(0, P_1), k_3)) && Seq#Contains(Seq#Range(0, P_1), k_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) && NoPerm < FullPerm ==> qpRange19(Seq#Index(hist, k_3)) && invRecv19(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> Seq#Index(hist, invRecv19(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) ==> Seq#Index(hist, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, P_1), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv19(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == 0)
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_35)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@114.13--114.81) [38465]"}
            k_35 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@114.13--114.81) [38466]"}
            k_35 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@114.13--114.81) [38467]"}
            HasDirectPerm(Mask, Seq#Index(hist, k_35), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_5: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
      Seq#Contains(Seq#Range(0, P_1), k_5) ==> Heap[Seq#Index(hist, k_5), Ref__Integer_value] == 0
    );
    assume state(Heap, Mask);
    assume i * step + j_9 < Seq#Length(matrix);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(matrix[i * step + j].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might be negative. (testHistogramFull-old.vpr@116.12--116.63) [38468]"}
        i * step + j_9 >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@116.12--116.63) [38469]"}
        i * step + j_9 < Seq#Length(matrix);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogramFull-old.vpr@116.12--116.63) [38470]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(matrix, i * step + j_9) != null;
    Mask := Mask[Seq#Index(matrix, i * step + j_9), Ref__Integer_value:=Mask[Seq#Index(matrix, i * step + j_9), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (matrix[i * step + j].Ref__Integer_value in [0..P))
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might be negative. (testHistogramFull-old.vpr@117.13--117.62) [38471]"}
        i * step + j_9 >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@117.13--117.62) [38472]"}
        i * step + j_9 < Seq#Length(matrix);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[i * step + j].Ref__Integer_value (testHistogramFull-old.vpr@117.13--117.62) [38473]"}
        HasDirectPerm(Mask, Seq#Index(matrix, i * step + j_9), Ref__Integer_value);
    assume Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, i * step + j_9), Ref__Integer_value]);
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
    assume M > 0;
    assume N > 0;
    assume step >= N;
    assume P_1 > 0;
    assume state(PostHeap, PostMask);
    assume Seq#Contains(Seq#Range(0, M), i);
    assume Seq#Contains(Seq#Range(0, N), j_9);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(matrix[i * step + j].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might be negative. (testHistogramFull-old.vpr@120.11--120.62) [38474]"}
        i * step + j_9 >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@120.11--120.62) [38475]"}
        i * step + j_9 < Seq#Length(matrix);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogramFull-old.vpr@120.11--120.62) [38476]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(matrix, i * step + j_9) != null;
    PostMask := PostMask[Seq#Index(matrix, i * step + j_9), Ref__Integer_value:=PostMask[Seq#Index(matrix, i * step + j_9), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_33)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@121.12--121.85) [38477]"}
            k_33 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@121.12--121.85) [38478]"}
            k_33 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@121.12--121.85) [38479]"}
      (forall k_7_1: int, k_7_2: int ::
      
      (((k_7_1 != k_7_2 && Seq#Contains(Seq#Range(0, P_1), k_7_1)) && Seq#Contains(Seq#Range(0, P_1), k_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_7_1) != Seq#Index(hist, k_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_7_1: int ::
        { Seq#Index(hist, k_7_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_7_1) } { Seq#Contains(Seq#Range(0, P_1), k_7_1) } { Seq#Index(hist, k_7_1) }
        Seq#Contains(Seq#Range(0, P_1), k_7_1) && NoPerm < FullPerm ==> qpRange20(Seq#Index(hist, k_7_1)) && invRecv20(Seq#Index(hist, k_7_1)) == k_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv20(o_4)) && NoPerm < FullPerm) && qpRange20(o_4) ==> Seq#Index(hist, invRecv20(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_7_1: int ::
        { Seq#Index(hist, k_7_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_7_1) } { Seq#Contains(Seq#Range(0, P_1), k_7_1) } { Seq#Index(hist, k_7_1) }
        Seq#Contains(Seq#Range(0, P_1), k_7_1) ==> Seq#Index(hist, k_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, P_1), invRecv20(o_4)) && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv20(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv20(o_4)) && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_36)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@122.12--122.133) [38480]"}
            k_36 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@122.12--122.133) [38481]"}
            k_36 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@122.12--122.133) [38482]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_36), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might be negative. (testHistogramFull-old.vpr@122.12--122.133) [38483]"}
            i * step + j_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@122.12--122.133) [38484]"}
            i * step + j_9 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[i * step + j].Ref__Integer_value (testHistogramFull-old.vpr@122.12--122.133) [38485]"}
            HasDirectPerm(PostMask, Seq#Index(matrix, i * step + j_9), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_9: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_9) } { Seq#Contains(Seq#Range(0, P_1), k_9) } { Seq#Index(hist, k_9) }
      Seq#Contains(Seq#Range(0, P_1), k_9) ==> PostHeap[Seq#Index(hist, k_9), Ref__Integer_value] == (if PostHeap[Seq#Index(matrix, i * step + j_9), Ref__Integer_value] == k_9 then 1 else 0)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of matrix[i * step + j].Ref__Integer_value == old(matrix[i * step + j].Ref__Integer_value)
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might be negative. (testHistogramFull-old.vpr@123.11--123.98) [38486]"}
        i * step + j_9 >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@123.11--123.98) [38487]"}
        i * step + j_9 < Seq#Length(matrix);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[i * step + j].Ref__Integer_value (testHistogramFull-old.vpr@123.11--123.98) [38488]"}
        HasDirectPerm(PostMask, Seq#Index(matrix, i * step + j_9), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might be negative. (testHistogramFull-old.vpr@123.11--123.98) [38489]"}
        i * step + j_9 >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[i * step + j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@123.11--123.98) [38490]"}
        i * step + j_9 < Seq#Length(matrix);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[i * step + j].Ref__Integer_value (testHistogramFull-old.vpr@123.11--123.98) [38491]"}
        HasDirectPerm(oldMask, Seq#Index(matrix, i * step + j_9), Ref__Integer_value);
    assume PostHeap[Seq#Index(matrix, i * step + j_9), Ref__Integer_value] == oldHeap[Seq#Index(matrix, i * step + j_9), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_5, $allocated];
    assume Heap[__flatten_7, $allocated];
    assume Heap[__flatten_8, $allocated];
  
  // -- Translating statement: __flatten_4 := matrix[i * step + j] -- testHistogramFull-old.vpr@130.3--130.38
    
    // -- Check definedness of matrix[i * step + j]
      assert {:msg "  Assignment might fail. Index matrix[i * step + j] into matrix might be negative. (testHistogramFull-old.vpr@130.3--130.38) [38492]"}
        i * step + j_9 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[i * step + j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@130.3--130.38) [38493]"}
        i * step + j_9 < Seq#Length(matrix);
    __flatten_4 := Seq#Index(matrix, i * step + j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := hist[__flatten_4.Ref__Integer_value] -- testHistogramFull-old.vpr@131.3--131.54
    
    // -- Check definedness of hist[__flatten_4.Ref__Integer_value]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (testHistogramFull-old.vpr@131.3--131.54) [38494]"}
        HasDirectPerm(Mask, __flatten_4, Ref__Integer_value);
      assert {:msg "  Assignment might fail. Index hist[__flatten_4.Ref__Integer_value] into hist might be negative. (testHistogramFull-old.vpr@131.3--131.54) [38495]"}
        Heap[__flatten_4, Ref__Integer_value] >= 0;
      assert {:msg "  Assignment might fail. Index hist[__flatten_4.Ref__Integer_value] into hist might exceed sequence length. (testHistogramFull-old.vpr@131.3--131.54) [38496]"}
        Heap[__flatten_4, Ref__Integer_value] < Seq#Length(hist);
    __flatten_5 := Seq#Index(hist, Heap[__flatten_4, Ref__Integer_value]);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := matrix[i * step + j] -- testHistogramFull-old.vpr@132.3--132.38
    
    // -- Check definedness of matrix[i * step + j]
      assert {:msg "  Assignment might fail. Index matrix[i * step + j] into matrix might be negative. (testHistogramFull-old.vpr@132.3--132.38) [38497]"}
        i * step + j_9 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[i * step + j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@132.3--132.38) [38498]"}
        i * step + j_9 < Seq#Length(matrix);
    __flatten_7 := Seq#Index(matrix, i * step + j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := hist[__flatten_7.Ref__Integer_value] -- testHistogramFull-old.vpr@133.3--133.54
    
    // -- Check definedness of hist[__flatten_7.Ref__Integer_value]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_7.Ref__Integer_value (testHistogramFull-old.vpr@133.3--133.54) [38499]"}
        HasDirectPerm(Mask, __flatten_7, Ref__Integer_value);
      assert {:msg "  Assignment might fail. Index hist[__flatten_7.Ref__Integer_value] into hist might be negative. (testHistogramFull-old.vpr@133.3--133.54) [38500]"}
        Heap[__flatten_7, Ref__Integer_value] >= 0;
      assert {:msg "  Assignment might fail. Index hist[__flatten_7.Ref__Integer_value] into hist might exceed sequence length. (testHistogramFull-old.vpr@133.3--133.54) [38501]"}
        Heap[__flatten_7, Ref__Integer_value] < Seq#Length(hist);
    __flatten_8 := Seq#Index(hist, Heap[__flatten_7, Ref__Integer_value]);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := __flatten_8.Ref__Integer_value + 1 -- testHistogramFull-old.vpr@134.3--134.52
    
    // -- Check definedness of __flatten_8.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (testHistogramFull-old.vpr@134.3--134.52) [38502]"}
        HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
    __flatten_6 := Heap[__flatten_8, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5.Ref__Integer_value := __flatten_6 -- testHistogramFull-old.vpr@135.3--135.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_5.Ref__Integer_value (testHistogramFull-old.vpr@135.3--135.48) [38503]"}
      FullPerm == Mask[__flatten_5, Ref__Integer_value];
    Heap := Heap[__flatten_5, Ref__Integer_value:=__flatten_6];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Assertion M > 0 might not hold. (testHistogramFull-old.vpr@118.11--118.55) [38504]"}
      M > 0;
    assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Assertion N > 0 might not hold. (testHistogramFull-old.vpr@118.11--118.55) [38505]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Assertion step >= N might not hold. (testHistogramFull-old.vpr@118.11--118.55) [38506]"}
      step >= N;
    assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Assertion P > 0 might not hold. (testHistogramFull-old.vpr@118.11--118.55) [38507]"}
      P_1 > 0;
    assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Assertion (i in [0..M)) might not hold. (testHistogramFull-old.vpr@119.11--119.41) [38508]"}
      Seq#Contains(Seq#Range(0, M), i);
    assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Assertion (j in [0..N)) might not hold. (testHistogramFull-old.vpr@119.11--119.41) [38509]"}
      Seq#Contains(Seq#Range(0, N), j_9);
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Fraction 1 / 4 might be negative. (testHistogramFull-old.vpr@120.11--120.62) [38510]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. There might be insufficient permission to access matrix[i * step + j].Ref__Integer_value (testHistogramFull-old.vpr@120.11--120.62) [38511]"}
        perm <= Mask[Seq#Index(matrix, i * step + j_9), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(matrix, i * step + j_9), Ref__Integer_value:=Mask[Seq#Index(matrix, i * step + j_9), Ref__Integer_value] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@121.12--121.85) [38512]"}
        (forall k_10_2: int, k_10_3: int ::
        { neverTriggered21(k_10_2), neverTriggered21(k_10_3) }
        (((k_10_2 != k_10_3 && Seq#Contains(Seq#Range(0, P_1), k_10_2)) && Seq#Contains(Seq#Range(0, P_1), k_10_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_10_2) != Seq#Index(hist, k_10_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@121.12--121.85) [38513]"}
        (forall k_10_2: int ::
        { Seq#Index(hist, k_10_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_10_2) } { Seq#Contains(Seq#Range(0, P_1), k_10_2) } { Seq#Index(hist, k_10_2) }
        Seq#Contains(Seq#Range(0, P_1), k_10_2) ==> Mask[Seq#Index(hist, k_10_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_10_2: int ::
        { Seq#Index(hist, k_10_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_10_2) } { Seq#Contains(Seq#Range(0, P_1), k_10_2) } { Seq#Index(hist, k_10_2) }
        Seq#Contains(Seq#Range(0, P_1), k_10_2) && NoPerm < FullPerm ==> qpRange21(Seq#Index(hist, k_10_2)) && invRecv21(Seq#Index(hist, k_10_2)) == k_10_2
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        Seq#Contains(Seq#Range(0, P_1), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(hist, invRecv21(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, P_1), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(hist, invRecv21(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, P_1), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, P_1), k_11)) {
        assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Assertion hist[k].Ref__Integer_value == (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0) might not hold. (testHistogramFull-old.vpr@122.12--122.133) [38514]"}
          Heap[Seq#Index(hist, k_11), Ref__Integer_value] == (if Heap[Seq#Index(matrix, i * step + j_9), Ref__Integer_value] == k_11 then 1 else 0);
      }
      assume false;
    }
    assume (forall k_12_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_12_1) } { Seq#Contains(Seq#Range(0, P_1), k_12_1) } { Seq#Index(hist, k_12_1) }
      Seq#Contains(Seq#Range(0, P_1), k_12_1) ==> Heap[Seq#Index(hist, k_12_1), Ref__Integer_value] == (if Heap[Seq#Index(matrix, i * step + j_9), Ref__Integer_value] == k_12_1 then 1 else 0)
    );
    assert {:msg "  Postcondition of Ref__loop_body_113 might not hold. Assertion matrix[i * step + j].Ref__Integer_value == old(matrix[i * step + j].Ref__Integer_value) might not hold. (testHistogramFull-old.vpr@123.11--123.98) [38515]"}
      Heap[Seq#Index(matrix, i * step + j_9), Ref__Integer_value] == oldHeap[Seq#Index(matrix, i * step + j_9), Ref__Integer_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__histogram
// ==================================================

procedure Ref__histogram(diz: Ref, M: int, N: int, step: int, matrix: (Seq Ref), P_1: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_34: int;
  var j_29: int;
  var j1_13: int;
  var QPMask: MaskType;
  var k_fresh_rw_0_5: int;
  var k_37: int;
  var j_31: int;
  var k_38: int;
  var j_32: int;
  var i1_9: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j1_14: int;
  var i1_11: int;
  var k_39: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k$0: int;
  var j_6_1: int;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var k_fresh_rw_0_6: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var k_10_2: int;
  var j_8: int;
  var k_15_1: int;
  var j_10_2: int;
  var k_18_1: int;
  var j_12_2: int;
  var k_fresh_rw_0_6_1: int;
  var k_20_1: int;
  var j_15_1: int;
  var k_8: int;
  var k_fresh_rw_0_4: int;
  
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
    assume M > 0;
    assume N > 0;
    assume step >= N;
    assume P_1 > 0;
    assume state(Heap, Mask);
    assume N <= step;
    assume state(Heap, Mask);
    assume M * step <= Seq#Length(matrix);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { matrix[k], matrix[j] } k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j])
      if (*) {
        if (k_34 >= 0 && (k_34 < Seq#Length(matrix) && (j_29 >= 0 && (j_29 < Seq#Length(matrix) && k_34 != j_29)))) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might be negative. (testHistogramFull-old.vpr@143.12--143.122) [38516]"}
            k_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might exceed sequence length. (testHistogramFull-old.vpr@143.12--143.122) [38517]"}
            k_34 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogramFull-old.vpr@143.12--143.122) [38518]"}
            j_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@143.12--143.122) [38519]"}
            j_29 < Seq#Length(matrix);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_1: int ::
      { Seq#Index(matrix, k_1_1), Seq#Index(matrix, j_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(matrix) && (j_1 >= 0 && (j_1 < Seq#Length(matrix) && k_1_1 != j_1))) ==> Seq#Index(matrix, k_1_1) != Seq#Index(matrix, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } (j1 in [0..M * step)) && j1 % step < N ==> acc(matrix[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), j1_13)) {
          assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@144.13--144.117) [38520]"}
            step != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * step), j1_13) && j1_13 mod step < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (testHistogramFull-old.vpr@144.13--144.117) [38521]"}
            j1_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (testHistogramFull-old.vpr@144.13--144.117) [38522]"}
            j1_13 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@144.13--144.117) [38523]"}
      (forall j1_1: int, j1_1_1: int ::
      
      (((j1_1 != j1_1_1 && (Seq#Contains(Seq#Range(0, M * step), j1_1) && j1_1 mod step < N)) && (Seq#Contains(Seq#Range(0, M * step), j1_1_1) && j1_1_1 mod step < N)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix, j1_1) != Seq#Index(matrix, j1_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_1: int ::
        { Seq#Index(matrix, j1_1) } { Seq#Index(matrix, j1_1) }
        (Seq#Contains(Seq#Range(0, M * step), j1_1) && j1_1 mod step < N) && NoPerm < 1 / 2 ==> qpRange22(Seq#Index(matrix, j1_1)) && invRecv22(Seq#Index(matrix, j1_1)) == j1_1
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        ((Seq#Contains(Seq#Range(0, M * step), invRecv22(o_4)) && invRecv22(o_4) mod step < N) && NoPerm < 1 / 2) && qpRange22(o_4) ==> Seq#Index(matrix, invRecv22(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistogramFull-old.vpr@144.13--144.117) [38524]"}
      (forall j1_1: int ::
      { Seq#Index(matrix, j1_1) } { Seq#Index(matrix, j1_1) }
      Seq#Contains(Seq#Range(0, M * step), j1_1) && j1_1 mod step < N ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_1: int ::
        { Seq#Index(matrix, j1_1) } { Seq#Index(matrix, j1_1) }
        (Seq#Contains(Seq#Range(0, M * step), j1_1) && j1_1 mod step < N) && 1 / 2 > NoPerm ==> Seq#Index(matrix, j1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((Seq#Contains(Seq#Range(0, M * step), invRecv22(o_4)) && invRecv22(o_4) mod step < N) && NoPerm < 1 / 2) && qpRange22(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(matrix, invRecv22(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((Seq#Contains(Seq#Range(0, M * step), invRecv22(o_4)) && invRecv22(o_4) mod step < N) && NoPerm < 1 / 2) && qpRange22(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N <= step;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k_fresh_rw_0: Int :: { matrix[k_fresh_rw_0] } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_5)) {
          assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@146.12--149.56) [38525]"}
            step != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_5) && k_fresh_rw_0_5 mod step < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogramFull-old.vpr@146.12--149.56) [38526]"}
            k_fresh_rw_0_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogramFull-old.vpr@146.12--149.56) [38527]"}
            k_fresh_rw_0_5 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogramFull-old.vpr@146.12--149.56) [38528]"}
            HasDirectPerm(Mask, Seq#Index(matrix, k_fresh_rw_0_5), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_fresh_rw_0_1: int ::
      { Seq#Index(matrix, k_fresh_rw_0_1) }
      Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_1) && k_fresh_rw_0_1 mod step < N ==> Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_1), Ref__Integer_value])
    );
    assume state(Heap, Mask);
    assume P_1 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
      if (*) {
        if (k_37 >= 0 && (k_37 < Seq#Length(hist) && (j_31 >= 0 && (j_31 < Seq#Length(hist) && k_37 != j_31)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@151.12--151.114) [38529]"}
            k_37 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@151.12--151.114) [38530]"}
            k_37 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might be negative. (testHistogramFull-old.vpr@151.12--151.114) [38531]"}
            j_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might exceed sequence length. (testHistogramFull-old.vpr@151.12--151.114) [38532]"}
            j_31 < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall k_3: int, j_3_1: int ::
      { Seq#Index(hist, k_3), Seq#Index(hist, j_3_1) }
      k_3 >= 0 && (k_3 < Seq#Length(hist) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(hist) && k_3 != j_3_1))) ==> Seq#Index(hist, k_3) != Seq#Index(hist, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { matrix[k], matrix[j] } k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j])
      if (*) {
        if (k_38 >= 0 && (k_38 < Seq#Length(matrix) && (j_32 >= 0 && (j_32 < Seq#Length(matrix) && k_38 != j_32)))) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might be negative. (testHistogramFull-old.vpr@152.12--152.122) [38533]"}
            k_38 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might exceed sequence length. (testHistogramFull-old.vpr@152.12--152.122) [38534]"}
            k_38 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogramFull-old.vpr@152.12--152.122) [38535]"}
            j_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogramFull-old.vpr@152.12--152.122) [38536]"}
            j_32 < Seq#Length(matrix);
        }
        assume false;
      }
    assume (forall k_5: int, j_5_1: int ::
      { Seq#Index(matrix, k_5), Seq#Index(matrix, j_5_1) }
      k_5 >= 0 && (k_5 < Seq#Length(matrix) && (j_5_1 >= 0 && (j_5_1 < Seq#Length(matrix) && k_5 != j_5_1))) ==> Seq#Index(matrix, k_5) != Seq#Index(matrix, j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int :: { (i1 in [0..P)) } { hist[i1] } (i1 in [0..P)) ==> acc(hist[i1].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), i1_9)) {
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might be negative. (testHistogramFull-old.vpr@153.13--153.89) [38537]"}
            i1_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might exceed sequence length. (testHistogramFull-old.vpr@153.13--153.89) [38538]"}
            i1_9 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@153.13--153.89) [38539]"}
      (forall i1_1_1: int, i1_1_2: int ::
      
      (((i1_1_1 != i1_1_2 && Seq#Contains(Seq#Range(0, P_1), i1_1_1)) && Seq#Contains(Seq#Range(0, P_1), i1_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_1_1) != Seq#Index(hist, i1_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall i1_1_1: int ::
        { Seq#Index(hist, i1_1_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), i1_1_1) } { Seq#Contains(Seq#Range(0, P_1), i1_1_1) } { Seq#Index(hist, i1_1_1) }
        Seq#Contains(Seq#Range(0, P_1), i1_1_1) && NoPerm < FullPerm ==> qpRange23(Seq#Index(hist, i1_1_1)) && invRecv23(Seq#Index(hist, i1_1_1)) == i1_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv23(o_4)) && NoPerm < FullPerm) && qpRange23(o_4) ==> Seq#Index(hist, invRecv23(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i1_1_1: int ::
        { Seq#Index(hist, i1_1_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), i1_1_1) } { Seq#Contains(Seq#Range(0, P_1), i1_1_1) } { Seq#Index(hist, i1_1_1) }
        Seq#Contains(Seq#Range(0, P_1), i1_1_1) ==> Seq#Index(hist, i1_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, P_1), invRecv23(o_4)) && NoPerm < FullPerm) && qpRange23(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv23(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv23(o_4)) && NoPerm < FullPerm) && qpRange23(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    assume M > 0;
    assume N > 0;
    assume step >= N;
    assume P_1 > 0;
    assume state(PostHeap, PostMask);
    assume N <= step;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } (j1 in [0..M * step)) && j1 % step < N ==> acc(matrix[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), j1_14)) {
          assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@156.12--156.116) [38540]"}
            step != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * step), j1_14) && j1_14 mod step < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (testHistogramFull-old.vpr@156.12--156.116) [38541]"}
            j1_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (testHistogramFull-old.vpr@156.12--156.116) [38542]"}
            j1_14 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@156.12--156.116) [38543]"}
      (forall j1_3: int, j1_3_1: int ::
      
      (((j1_3 != j1_3_1 && (Seq#Contains(Seq#Range(0, M * step), j1_3) && j1_3 mod step < N)) && (Seq#Contains(Seq#Range(0, M * step), j1_3_1) && j1_3_1 mod step < N)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix, j1_3) != Seq#Index(matrix, j1_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_3: int ::
        { Seq#Index(matrix, j1_3) } { Seq#Index(matrix, j1_3) }
        (Seq#Contains(Seq#Range(0, M * step), j1_3) && j1_3 mod step < N) && NoPerm < 1 / 2 ==> qpRange24(Seq#Index(matrix, j1_3)) && invRecv24(Seq#Index(matrix, j1_3)) == j1_3
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        ((Seq#Contains(Seq#Range(0, M * step), invRecv24(o_4)) && invRecv24(o_4) mod step < N) && NoPerm < 1 / 2) && qpRange24(o_4) ==> Seq#Index(matrix, invRecv24(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistogramFull-old.vpr@156.12--156.116) [38544]"}
      (forall j1_3: int ::
      { Seq#Index(matrix, j1_3) } { Seq#Index(matrix, j1_3) }
      Seq#Contains(Seq#Range(0, M * step), j1_3) && j1_3 mod step < N ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_3: int ::
        { Seq#Index(matrix, j1_3) } { Seq#Index(matrix, j1_3) }
        (Seq#Contains(Seq#Range(0, M * step), j1_3) && j1_3 mod step < N) && 1 / 2 > NoPerm ==> Seq#Index(matrix, j1_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((Seq#Contains(Seq#Range(0, M * step), invRecv24(o_4)) && invRecv24(o_4) mod step < N) && NoPerm < 1 / 2) && qpRange24(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(matrix, invRecv24(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((Seq#Contains(Seq#Range(0, M * step), invRecv24(o_4)) && invRecv24(o_4) mod step < N) && NoPerm < 1 / 2) && qpRange24(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i1: Int :: { (i1 in [0..P)) } { hist[i1] } (i1 in [0..P)) ==> acc(hist[i1].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), i1_11)) {
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might be negative. (testHistogramFull-old.vpr@157.12--157.88) [38545]"}
            i1_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might exceed sequence length. (testHistogramFull-old.vpr@157.12--157.88) [38546]"}
            i1_11 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@157.12--157.88) [38547]"}
      (forall i1_3: int, i1_3_1: int ::
      
      (((i1_3 != i1_3_1 && Seq#Contains(Seq#Range(0, P_1), i1_3)) && Seq#Contains(Seq#Range(0, P_1), i1_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_3) != Seq#Index(hist, i1_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i1_3: int ::
        { Seq#Index(hist, i1_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), i1_3) } { Seq#Contains(Seq#Range(0, P_1), i1_3) } { Seq#Index(hist, i1_3) }
        Seq#Contains(Seq#Range(0, P_1), i1_3) && NoPerm < FullPerm ==> qpRange25(Seq#Index(hist, i1_3)) && invRecv25(Seq#Index(hist, i1_3)) == i1_3
      );
      assume (forall o_4: Ref ::
        { invRecv25(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv25(o_4)) && NoPerm < FullPerm) && qpRange25(o_4) ==> Seq#Index(hist, invRecv25(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i1_3: int ::
        { Seq#Index(hist, i1_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), i1_3) } { Seq#Contains(Seq#Range(0, P_1), i1_3) } { Seq#Index(hist, i1_3) }
        Seq#Contains(Seq#Range(0, P_1), i1_3) ==> Seq#Index(hist, i1_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, P_1), invRecv25(o_4)) && NoPerm < FullPerm) && qpRange25(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv25(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv25(o_4)) && NoPerm < FullPerm) && qpRange25(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_39)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogramFull-old.vpr@158.12--158.130) [38548]"}
            k_39 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogramFull-old.vpr@158.12--158.130) [38549]"}
            k_39 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@158.12--158.130) [38550]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_39), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= N might not hold. (testHistogramFull-old.vpr@158.78--158.129) [38551]"}
              0 <= N;
            assert {:msg "  Precondition of function count_square might not hold. Assertion N <= step might not hold. (testHistogramFull-old.vpr@158.78--158.129) [38552]"}
              N <= step;
            assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testHistogramFull-old.vpr@158.78--158.129) [38553]"}
              step > 0;
            assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= M * step might not hold. (testHistogramFull-old.vpr@158.78--158.129) [38554]"}
              0 <= M * step;
            assert {:msg "  Precondition of function count_square might not hold. Assertion M * step <= |matrix| might not hold. (testHistogramFull-old.vpr@158.78--158.129) [38555]"}
              M * step <= Seq#Length(matrix);
            if (*) {
              if (k$0 >= 0 && (k$0 < Seq#Length(matrix) && (j_6_1 >= 0 && (j_6_1 < Seq#Length(matrix) && k$0 != j_6_1)))) {
                assert {:msg "  Precondition of function count_square might not hold. Assertion matrix[k$0] != matrix[j] might not hold. (testHistogramFull-old.vpr@158.78--158.129) [38556]"}
                  Seq#Index(matrix, k$0) != Seq#Index(matrix, j_6_1);
              }
              assume false;
            }
            assume (forall k$0_1_1: int, j_7_1_1: int ::
              { Seq#Index(matrix, k$0_1_1), Seq#Index(matrix, j_7_1_1) }
              k$0_1_1 >= 0 && (k$0_1_1 < Seq#Length(matrix) && (j_7_1_1 >= 0 && (j_7_1_1 < Seq#Length(matrix) && k$0_1_1 != j_7_1_1))) ==> Seq#Index(matrix, k$0_1_1) != Seq#Index(matrix, j_7_1_1)
            );
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogramFull-old.vpr@158.78--158.129) [38557]"}
              (forall k$0_2: int ::
              
              0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N)) ==> PostMask[Seq#Index(matrix, k$0_2), Ref__Integer_value] > NoPerm
            );
            assume (forall k$0_2: int ::
              
              0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N)) ==> wildcard < PostMask[Seq#Index(matrix, k$0_2), Ref__Integer_value]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testHistogramFull-old.vpr@158.78--158.129) [38558]"}
                (forall k$0_2: int ::
                { Seq#Index(matrix, k$0_2) } { Seq#Index(matrix, k$0_2) }
                (0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N))) && dummyFunction(PostHeap[Seq#Index(matrix, k$0_2), Ref__Integer_value]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver matrix[k$0] is injective
              assert {:msg "  Precondition of function count_square might not hold. Quantified resource matrix[k$0].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@158.78--158.129) [38559]"}
                (forall k$0_2: int, k$0_2_1: int ::
                { neverTriggered26(k$0_2), neverTriggered26(k$0_2_1) }
                (((k$0_2 != k$0_2_1 && (0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N)))) && (0 <= k$0_2_1 && (k$0_2_1 < M * step && (0 <= k$0_2_1 mod step && k$0_2_1 mod step < N)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(matrix, k$0_2) != Seq#Index(matrix, k$0_2_1)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogramFull-old.vpr@158.78--158.129) [38560]"}
                (forall k$0_2: int ::
                { Seq#Index(matrix, k$0_2) } { Seq#Index(matrix, k$0_2) }
                0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N)) ==> wildcard > NoPerm ==> PostMask[Seq#Index(matrix, k$0_2), Ref__Integer_value] > NoPerm
              );
            
            // -- assumptions for inverse of receiver matrix[k$0]
              assume (forall k$0_2: int ::
                { Seq#Index(matrix, k$0_2) } { Seq#Index(matrix, k$0_2) }
                (0 <= k$0_2 && (k$0_2 < M * step && (0 <= k$0_2 mod step && k$0_2 mod step < N))) && NoPerm < wildcard ==> qpRange26(Seq#Index(matrix, k$0_2)) && invRecv26(Seq#Index(matrix, k$0_2)) == k$0_2
              );
              assume (forall o_4: Ref ::
                { invRecv26(o_4) }
                (0 <= invRecv26(o_4) && (invRecv26(o_4) < M * step && (0 <= invRecv26(o_4) mod step && invRecv26(o_4) mod step < N))) && (NoPerm < wildcard && qpRange26(o_4)) ==> Seq#Index(matrix, invRecv26(o_4)) == o_4
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
    assume (forall k_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_7_1) } { Seq#Contains(Seq#Range(0, P_1), k_7_1) } { Seq#Index(hist, k_7_1) }
      Seq#Contains(Seq#Range(0, P_1), k_7_1) ==> PostHeap[Seq#Index(hist, k_7_1), Ref__Integer_value] == count_square(PostHeap, 0, 0, N, step, 0, M * step, matrix, k_7_1)
    );
    assume state(PostHeap, PostMask);
    assume N <= step;
    
    // -- Check definedness of (forall k_fresh_rw_0: Int :: { old(matrix[k_fresh_rw_0]) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_6)) {
          assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogramFull-old.vpr@159.11--159.210) [38561]"}
            step != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_6) && k_fresh_rw_0_6 mod step < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogramFull-old.vpr@159.11--159.210) [38562]"}
            k_fresh_rw_0_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogramFull-old.vpr@159.11--159.210) [38563]"}
            k_fresh_rw_0_6 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogramFull-old.vpr@159.11--159.210) [38564]"}
            HasDirectPerm(PostMask, Seq#Index(matrix, k_fresh_rw_0_6), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogramFull-old.vpr@159.11--159.210) [38565]"}
            k_fresh_rw_0_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogramFull-old.vpr@159.11--159.210) [38566]"}
            k_fresh_rw_0_6 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogramFull-old.vpr@159.11--159.210) [38567]"}
            HasDirectPerm(oldMask, Seq#Index(matrix, k_fresh_rw_0_6), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_fresh_rw_0_3: int ::
      { Seq#Index(matrix, k_fresh_rw_0_3) }
      Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_3) && k_fresh_rw_0_3 mod step < N ==> PostHeap[Seq#Index(matrix, k_fresh_rw_0_3), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_3), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_93(diz, P, hist) -- testHistogramFull-old.vpr@161.3--161.34
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__loop_main_93 might not hold. Assertion diz != null might not hold. (testHistogramFull-old.vpr@161.3--161.34) [38568]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_93 might not hold. Assertion P <= |hist| might not hold. (testHistogramFull-old.vpr@161.3--161.34) [38569]"}
        P_1 <= Seq#Length(hist);
      if (*) {
        if (k_10_2 >= 0 && (k_10_2 < Seq#Length(hist) && (j_8 >= 0 && (j_8 < Seq#Length(hist) && k_10_2 != j_8)))) {
          assert {:msg "  The precondition of method Ref__loop_main_93 might not hold. Assertion hist[k] != hist[j] might not hold. (testHistogramFull-old.vpr@161.3--161.34) [38570]"}
            Seq#Index(hist, k_10_2) != Seq#Index(hist, j_8);
        }
        assume false;
      }
      assume (forall k_11_1_1: int, j_9_1_1: int ::
        { Seq#Index(hist, k_11_1_1), Seq#Index(hist, j_9_1_1) }
        k_11_1_1 >= 0 && (k_11_1_1 < Seq#Length(hist) && (j_9_1_1 >= 0 && (j_9_1_1 < Seq#Length(hist) && k_11_1_1 != j_9_1_1))) ==> Seq#Index(hist, k_11_1_1) != Seq#Index(hist, j_9_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver hist[k] is injective
        assert {:msg "  The precondition of method Ref__loop_main_93 might not hold. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@161.3--161.34) [38571]"}
          (forall k_12_2: int, k_12_3: int ::
          { neverTriggered29(k_12_2), neverTriggered29(k_12_3) }
          (((k_12_2 != k_12_3 && Seq#Contains(Seq#Range(0, P_1), k_12_2)) && Seq#Contains(Seq#Range(0, P_1), k_12_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_12_2) != Seq#Index(hist, k_12_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_93 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@161.3--161.34) [38572]"}
          (forall k_12_2: int ::
          { Seq#Index(hist, k_12_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_12_2) } { Seq#Contains(Seq#Range(0, P_1), k_12_2) } { Seq#Index(hist, k_12_2) }
          Seq#Contains(Seq#Range(0, P_1), k_12_2) ==> Mask[Seq#Index(hist, k_12_2), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver hist[k]
        assume (forall k_12_2: int ::
          { Seq#Index(hist, k_12_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_12_2) } { Seq#Contains(Seq#Range(0, P_1), k_12_2) } { Seq#Index(hist, k_12_2) }
          Seq#Contains(Seq#Range(0, P_1), k_12_2) && NoPerm < FullPerm ==> qpRange29(Seq#Index(hist, k_12_2)) && invRecv29(Seq#Index(hist, k_12_2)) == k_12_2
        );
        assume (forall o_4: Ref ::
          { invRecv29(o_4) }
          Seq#Contains(Seq#Range(0, P_1), invRecv29(o_4)) && (NoPerm < FullPerm && qpRange29(o_4)) ==> Seq#Index(hist, invRecv29(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (Seq#Contains(Seq#Range(0, P_1), invRecv29(o_4)) && (NoPerm < FullPerm && qpRange29(o_4)) ==> Seq#Index(hist, invRecv29(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, P_1), invRecv29(o_4)) && (NoPerm < FullPerm && qpRange29(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@161.3--161.34) [38573]"}
        (forall k_13: int, k_13_1: int ::
        
        (((k_13 != k_13_1 && Seq#Contains(Seq#Range(0, P_1), k_13)) && Seq#Contains(Seq#Range(0, P_1), k_13_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_13) != Seq#Index(hist, k_13_1)
      );
      
      // -- Define Inverse Function
        assume (forall k_13: int ::
          { Seq#Index(hist, k_13) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_13) } { Seq#Contains(Seq#Range(0, P_1), k_13) } { Seq#Index(hist, k_13) }
          Seq#Contains(Seq#Range(0, P_1), k_13) && NoPerm < FullPerm ==> qpRange30(Seq#Index(hist, k_13)) && invRecv30(Seq#Index(hist, k_13)) == k_13
        );
        assume (forall o_4: Ref ::
          { invRecv30(o_4) }
          (Seq#Contains(Seq#Range(0, P_1), invRecv30(o_4)) && NoPerm < FullPerm) && qpRange30(o_4) ==> Seq#Index(hist, invRecv30(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_13: int ::
          { Seq#Index(hist, k_13) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_13) } { Seq#Contains(Seq#Range(0, P_1), k_13) } { Seq#Index(hist, k_13) }
          Seq#Contains(Seq#Range(0, P_1), k_13) ==> Seq#Index(hist, k_13) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((Seq#Contains(Seq#Range(0, P_1), invRecv30(o_4)) && NoPerm < FullPerm) && qpRange30(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv30(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv30(o_4)) && NoPerm < FullPerm) && qpRange30(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall k_14: int ::
        { Seq#ContainsTrigger(Seq#Range(0, P_1), k_14) } { Seq#Contains(Seq#Range(0, P_1), k_14) } { Seq#Index(hist, k_14) }
        Seq#Contains(Seq#Range(0, P_1), k_14) ==> Heap[Seq#Index(hist, k_14), Ref__Integer_value] == 0
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__loop_main_113(diz, N, M, step, hist, matrix, P) -- testHistogramFull-old.vpr@162.3--162.55
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion diz != null might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38574]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion M > 0 might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38575]"}
        M > 0;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion N > 0 might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38576]"}
        N > 0;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion step >= N might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38577]"}
        step >= N;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion P > 0 might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38578]"}
        P_1 > 0;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion P <= |hist| might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38579]"}
        P_1 <= Seq#Length(hist);
      if (*) {
        if (k_15_1 >= 0 && (k_15_1 < Seq#Length(hist) && (j_10_2 >= 0 && (j_10_2 < Seq#Length(hist) && k_15_1 != j_10_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion hist[k] != hist[j] might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38580]"}
            Seq#Index(hist, k_15_1) != Seq#Index(hist, j_10_2);
        }
        assume false;
      }
      assume (forall k_16_1_1: int, j_11_1: int ::
        { Seq#Index(hist, k_16_1_1), Seq#Index(hist, j_11_1) }
        k_16_1_1 >= 0 && (k_16_1_1 < Seq#Length(hist) && (j_11_1 >= 0 && (j_11_1 < Seq#Length(hist) && k_16_1_1 != j_11_1))) ==> Seq#Index(hist, k_16_1_1) != Seq#Index(hist, j_11_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver hist[k] is injective
        assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@162.3--162.55) [38581]"}
          (forall k_17_2: int, k_17_3: int ::
          { neverTriggered31(k_17_2), neverTriggered31(k_17_3) }
          (((k_17_2 != k_17_3 && Seq#Contains(Seq#Range(0, P_1), k_17_2)) && Seq#Contains(Seq#Range(0, P_1), k_17_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_17_2) != Seq#Index(hist, k_17_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogramFull-old.vpr@162.3--162.55) [38582]"}
          (forall k_17_2: int ::
          { Seq#Index(hist, k_17_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_17_2) } { Seq#Contains(Seq#Range(0, P_1), k_17_2) } { Seq#Index(hist, k_17_2) }
          Seq#Contains(Seq#Range(0, P_1), k_17_2) ==> Mask[Seq#Index(hist, k_17_2), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver hist[k]
        assume (forall k_17_2: int ::
          { Seq#Index(hist, k_17_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_17_2) } { Seq#Contains(Seq#Range(0, P_1), k_17_2) } { Seq#Index(hist, k_17_2) }
          Seq#Contains(Seq#Range(0, P_1), k_17_2) && NoPerm < FullPerm ==> qpRange31(Seq#Index(hist, k_17_2)) && invRecv31(Seq#Index(hist, k_17_2)) == k_17_2
        );
        assume (forall o_4: Ref ::
          { invRecv31(o_4) }
          Seq#Contains(Seq#Range(0, P_1), invRecv31(o_4)) && (NoPerm < FullPerm && qpRange31(o_4)) ==> Seq#Index(hist, invRecv31(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (Seq#Contains(Seq#Range(0, P_1), invRecv31(o_4)) && (NoPerm < FullPerm && qpRange31(o_4)) ==> Seq#Index(hist, invRecv31(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, P_1), invRecv31(o_4)) && (NoPerm < FullPerm && qpRange31(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion N <= step might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38583]"}
        N <= step;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion M * step <= |matrix| might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38584]"}
        M * step <= Seq#Length(matrix);
      if (*) {
        if (k_18_1 >= 0 && (k_18_1 < Seq#Length(matrix) && (j_12_2 >= 0 && (j_12_2 < Seq#Length(matrix) && k_18_1 != j_12_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion matrix[k] != matrix[j] might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38585]"}
            Seq#Index(matrix, k_18_1) != Seq#Index(matrix, j_12_2);
        }
        assume false;
      }
      assume (forall k_19_1_1: int, j_13_1: int ::
        { Seq#Index(matrix, k_19_1_1), Seq#Index(matrix, j_13_1) }
        k_19_1_1 >= 0 && (k_19_1_1 < Seq#Length(matrix) && (j_13_1 >= 0 && (j_13_1 < Seq#Length(matrix) && k_19_1_1 != j_13_1))) ==> Seq#Index(matrix, k_19_1_1) != Seq#Index(matrix, j_13_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Fraction 1 / 4 might be negative. (testHistogramFull-old.vpr@162.3--162.55) [38586]"}
          (forall j_14_1: int ::
          { Seq#Index(matrix, j_14_1) } { Seq#Index(matrix, j_14_1) }
          (Seq#Contains(Seq#Range(0, M * step), j_14_1) && j_14_1 mod step < N) && dummyFunction(Heap[Seq#Index(matrix, j_14_1), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
        );
      
      // -- check if receiver matrix[j] is injective
        assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@162.3--162.55) [38587]"}
          (forall j_14_1: int, j_14_2: int ::
          { neverTriggered32(j_14_1), neverTriggered32(j_14_2) }
          (((j_14_1 != j_14_2 && (Seq#Contains(Seq#Range(0, M * step), j_14_1) && j_14_1 mod step < N)) && (Seq#Contains(Seq#Range(0, M * step), j_14_2) && j_14_2 mod step < N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_14_1) != Seq#Index(matrix, j_14_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (testHistogramFull-old.vpr@162.3--162.55) [38588]"}
          (forall j_14_1: int ::
          { Seq#Index(matrix, j_14_1) } { Seq#Index(matrix, j_14_1) }
          Seq#Contains(Seq#Range(0, M * step), j_14_1) && j_14_1 mod step < N ==> Mask[Seq#Index(matrix, j_14_1), Ref__Integer_value] >= 1 / 4
        );
      
      // -- assumptions for inverse of receiver matrix[j]
        assume (forall j_14_1: int ::
          { Seq#Index(matrix, j_14_1) } { Seq#Index(matrix, j_14_1) }
          (Seq#Contains(Seq#Range(0, M * step), j_14_1) && j_14_1 mod step < N) && NoPerm < 1 / 4 ==> qpRange32(Seq#Index(matrix, j_14_1)) && invRecv32(Seq#Index(matrix, j_14_1)) == j_14_1
        );
        assume (forall o_4: Ref ::
          { invRecv32(o_4) }
          (Seq#Contains(Seq#Range(0, M * step), invRecv32(o_4)) && invRecv32(o_4) mod step < N) && (NoPerm < 1 / 4 && qpRange32(o_4)) ==> Seq#Index(matrix, invRecv32(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((Seq#Contains(Seq#Range(0, M * step), invRecv32(o_4)) && invRecv32(o_4) mod step < N) && (NoPerm < 1 / 4 && qpRange32(o_4)) ==> Seq#Index(matrix, invRecv32(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!((Seq#Contains(Seq#Range(0, M * step), invRecv32(o_4)) && invRecv32(o_4) mod step < N) && (NoPerm < 1 / 4 && qpRange32(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion N <= step might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38589]"}
        N <= step;
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_6_1) && k_fresh_rw_0_6_1 mod step < N) {
          assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)) might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38590]"}
            Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_6_1), Ref__Integer_value]);
        }
        assume false;
      }
      assume (forall k_fresh_rw_0_7_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_7_1), Ref__Integer_value]) } { Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_7_1), Ref__Integer_value]) }
        Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_7_1) && k_fresh_rw_0_7_1 mod step < N ==> Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_7_1), Ref__Integer_value])
      );
      if (*) {
        if (k_20_1 >= 0 && (k_20_1 < Seq#Length(hist) && (j_15_1 >= 0 && (j_15_1 < Seq#Length(hist) && k_20_1 != j_15_1)))) {
          assert {:msg "  The precondition of method Ref__loop_main_113 might not hold. Assertion hist[k] != hist[j] might not hold. (testHistogramFull-old.vpr@162.3--162.55) [38591]"}
            Seq#Index(hist, k_20_1) != Seq#Index(hist, j_15_1);
        }
        assume false;
      }
      assume (forall k_21_1_1: int, j_16_1: int ::
        { Seq#Index(hist, k_21_1_1), Seq#Index(hist, j_16_1) }
        k_21_1_1 >= 0 && (k_21_1_1 < Seq#Length(hist) && (j_16_1 >= 0 && (j_16_1 < Seq#Length(hist) && k_21_1_1 != j_16_1))) ==> Seq#Index(hist, k_21_1_1) != Seq#Index(hist, j_16_1)
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume M > 0;
      assume N > 0;
      assume step >= N;
      assume P_1 > 0;
      assume N <= step;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@162.3--162.55) [38592]"}
        (forall j_17_1: int, j_17_2: int ::
        
        (((j_17_1 != j_17_2 && (Seq#Contains(Seq#Range(0, M * step), j_17_1) && j_17_1 mod step < N)) && (Seq#Contains(Seq#Range(0, M * step), j_17_2) && j_17_2 mod step < N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_17_1) != Seq#Index(matrix, j_17_2)
      );
      
      // -- Define Inverse Function
        assume (forall j_17_1: int ::
          { Seq#Index(matrix, j_17_1) } { Seq#Index(matrix, j_17_1) }
          (Seq#Contains(Seq#Range(0, M * step), j_17_1) && j_17_1 mod step < N) && NoPerm < 1 / 4 ==> qpRange33(Seq#Index(matrix, j_17_1)) && invRecv33(Seq#Index(matrix, j_17_1)) == j_17_1
        );
        assume (forall o_4: Ref ::
          { invRecv33(o_4) }
          ((Seq#Contains(Seq#Range(0, M * step), invRecv33(o_4)) && invRecv33(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange33(o_4) ==> Seq#Index(matrix, invRecv33(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (testHistogramFull-old.vpr@162.3--162.55) [38593]"}
        (forall j_17_1: int ::
        { Seq#Index(matrix, j_17_1) } { Seq#Index(matrix, j_17_1) }
        Seq#Contains(Seq#Range(0, M * step), j_17_1) && j_17_1 mod step < N ==> 1 / 4 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall j_17_1: int ::
          { Seq#Index(matrix, j_17_1) } { Seq#Index(matrix, j_17_1) }
          (Seq#Contains(Seq#Range(0, M * step), j_17_1) && j_17_1 mod step < N) && 1 / 4 > NoPerm ==> Seq#Index(matrix, j_17_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((Seq#Contains(Seq#Range(0, M * step), invRecv33(o_4)) && invRecv33(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange33(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix, invRecv33(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!(((Seq#Contains(Seq#Range(0, M * step), invRecv33(o_4)) && invRecv33(o_4) mod step < N) && NoPerm < 1 / 4) && qpRange33(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@162.3--162.55) [38594]"}
        (forall k_22_2: int, k_22_3: int ::
        
        (((k_22_2 != k_22_3 && Seq#Contains(Seq#Range(0, P_1), k_22_2)) && Seq#Contains(Seq#Range(0, P_1), k_22_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_22_2) != Seq#Index(hist, k_22_3)
      );
      
      // -- Define Inverse Function
        assume (forall k_22_2: int ::
          { Seq#Index(hist, k_22_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_22_2) } { Seq#Contains(Seq#Range(0, P_1), k_22_2) } { Seq#Index(hist, k_22_2) }
          Seq#Contains(Seq#Range(0, P_1), k_22_2) && NoPerm < FullPerm ==> qpRange34(Seq#Index(hist, k_22_2)) && invRecv34(Seq#Index(hist, k_22_2)) == k_22_2
        );
        assume (forall o_4: Ref ::
          { invRecv34(o_4) }
          (Seq#Contains(Seq#Range(0, P_1), invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> Seq#Index(hist, invRecv34(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_22_2: int ::
          { Seq#Index(hist, k_22_2) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_22_2) } { Seq#Contains(Seq#Range(0, P_1), k_22_2) } { Seq#Index(hist, k_22_2) }
          Seq#Contains(Seq#Range(0, P_1), k_22_2) ==> Seq#Index(hist, k_22_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((Seq#Contains(Seq#Range(0, P_1), invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(hist, invRecv34(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, P_1), invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall k_23_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, P_1), k_23_1) } { Seq#Contains(Seq#Range(0, P_1), k_23_1) } { Seq#Index(hist, k_23_1) }
        Seq#Contains(Seq#Range(0, P_1), k_23_1) ==> Heap[Seq#Index(hist, k_23_1), Ref__Integer_value] == PreCallHeap[Seq#Index(hist, k_23_1), Ref__Integer_value] + count_square(Heap, 0, 0, N, step, 0, M * step, matrix, k_23_1)
      );
      assume N <= step;
      assume (forall k_fresh_rw_0_8: int ::
        { Seq#Index(matrix, k_fresh_rw_0_8) }
        Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_8) && k_fresh_rw_0_8 mod step < N ==> Heap[Seq#Index(matrix, k_fresh_rw_0_8), Ref__Integer_value] == PreCallHeap[Seq#Index(matrix, k_fresh_rw_0_8), Ref__Integer_value]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion M > 0 might not hold. (testHistogramFull-old.vpr@154.11--154.55) [38595]"}
      M > 0;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion N > 0 might not hold. (testHistogramFull-old.vpr@154.11--154.55) [38596]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion step >= N might not hold. (testHistogramFull-old.vpr@154.11--154.55) [38597]"}
      step >= N;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion P > 0 might not hold. (testHistogramFull-old.vpr@154.11--154.55) [38598]"}
      P_1 > 0;
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion N <= step might not hold. (testHistogramFull-old.vpr@155.11--155.20) [38599]"}
      N <= step;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__histogram might not hold. Fraction 1 / 2 might be negative. (testHistogramFull-old.vpr@156.12--156.116) [38600]"}
        (forall j1_4_1: int ::
        { Seq#Index(matrix, j1_4_1) } { Seq#Index(matrix, j1_4_1) }
        (Seq#Contains(Seq#Range(0, M * step), j1_4_1) && j1_4_1 mod step < N) && dummyFunction(Heap[Seq#Index(matrix, j1_4_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver matrix[j1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@156.12--156.116) [38601]"}
        (forall j1_4_1: int, j1_4_2: int ::
        { neverTriggered27(j1_4_1), neverTriggered27(j1_4_2) }
        (((j1_4_1 != j1_4_2 && (Seq#Contains(Seq#Range(0, M * step), j1_4_1) && j1_4_1 mod step < N)) && (Seq#Contains(Seq#Range(0, M * step), j1_4_2) && j1_4_2 mod step < N)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix, j1_4_1) != Seq#Index(matrix, j1_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__histogram might not hold. There might be insufficient permission to access matrix[j1].Ref__Integer_value (testHistogramFull-old.vpr@156.12--156.116) [38602]"}
        (forall j1_4_1: int ::
        { Seq#Index(matrix, j1_4_1) } { Seq#Index(matrix, j1_4_1) }
        Seq#Contains(Seq#Range(0, M * step), j1_4_1) && j1_4_1 mod step < N ==> Mask[Seq#Index(matrix, j1_4_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver matrix[j1]
      assume (forall j1_4_1: int ::
        { Seq#Index(matrix, j1_4_1) } { Seq#Index(matrix, j1_4_1) }
        (Seq#Contains(Seq#Range(0, M * step), j1_4_1) && j1_4_1 mod step < N) && NoPerm < 1 / 2 ==> qpRange27(Seq#Index(matrix, j1_4_1)) && invRecv27(Seq#Index(matrix, j1_4_1)) == j1_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv27(o_4) }
        (Seq#Contains(Seq#Range(0, M * step), invRecv27(o_4)) && invRecv27(o_4) mod step < N) && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> Seq#Index(matrix, invRecv27(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, M * step), invRecv27(o_4)) && invRecv27(o_4) mod step < N) && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> Seq#Index(matrix, invRecv27(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((Seq#Contains(Seq#Range(0, M * step), invRecv27(o_4)) && invRecv27(o_4) mod step < N) && (NoPerm < 1 / 2 && qpRange27(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[i1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogramFull-old.vpr@157.12--157.88) [38603]"}
        (forall i1_4_1: int, i1_4_2: int ::
        { neverTriggered28(i1_4_1), neverTriggered28(i1_4_2) }
        (((i1_4_1 != i1_4_2 && Seq#Contains(Seq#Range(0, P_1), i1_4_1)) && Seq#Contains(Seq#Range(0, P_1), i1_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_4_1) != Seq#Index(hist, i1_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__histogram might not hold. There might be insufficient permission to access hist[i1].Ref__Integer_value (testHistogramFull-old.vpr@157.12--157.88) [38604]"}
        (forall i1_4_1: int ::
        { Seq#Index(hist, i1_4_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), i1_4_1) } { Seq#Contains(Seq#Range(0, P_1), i1_4_1) } { Seq#Index(hist, i1_4_1) }
        Seq#Contains(Seq#Range(0, P_1), i1_4_1) ==> Mask[Seq#Index(hist, i1_4_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[i1]
      assume (forall i1_4_1: int ::
        { Seq#Index(hist, i1_4_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), i1_4_1) } { Seq#Contains(Seq#Range(0, P_1), i1_4_1) } { Seq#Index(hist, i1_4_1) }
        Seq#Contains(Seq#Range(0, P_1), i1_4_1) && NoPerm < FullPerm ==> qpRange28(Seq#Index(hist, i1_4_1)) && invRecv28(Seq#Index(hist, i1_4_1)) == i1_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv28(o_4) }
        Seq#Contains(Seq#Range(0, P_1), invRecv28(o_4)) && (NoPerm < FullPerm && qpRange28(o_4)) ==> Seq#Index(hist, invRecv28(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, P_1), invRecv28(o_4)) && (NoPerm < FullPerm && qpRange28(o_4)) ==> Seq#Index(hist, invRecv28(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, P_1), invRecv28(o_4)) && (NoPerm < FullPerm && qpRange28(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, P_1), k_8)) {
        assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k) might not hold. (testHistogramFull-old.vpr@158.12--158.130) [38605]"}
          Heap[Seq#Index(hist, k_8), Ref__Integer_value] == count_square(Heap, 0, 0, N, step, 0, M * step, matrix, k_8);
      }
      assume false;
    }
    assume (forall k_9_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_9_1) } { Seq#Contains(Seq#Range(0, P_1), k_9_1) } { Seq#Index(hist, k_9_1) }
      Seq#Contains(Seq#Range(0, P_1), k_9_1) ==> Heap[Seq#Index(hist, k_9_1), Ref__Integer_value] == count_square(Heap, 0, 0, N, step, 0, M * step, matrix, k_9_1)
    );
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion N <= step might not hold. (testHistogramFull-old.vpr@159.11--159.210) [38606]"}
      N <= step;
    if (*) {
      if (Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_4) && k_fresh_rw_0_4 mod step < N) {
        assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value) might not hold. (testHistogramFull-old.vpr@159.11--159.210) [38607]"}
          Heap[Seq#Index(matrix, k_fresh_rw_0_4), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_4), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall k_fresh_rw_0_5_1: int ::
      { Seq#Index(matrix, k_fresh_rw_0_5_1) }
      Seq#Contains(Seq#Range(0, M * step), k_fresh_rw_0_5_1) && k_fresh_rw_0_5_1 mod step < N ==> Heap[Seq#Index(matrix, k_fresh_rw_0_5_1), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_5_1), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}