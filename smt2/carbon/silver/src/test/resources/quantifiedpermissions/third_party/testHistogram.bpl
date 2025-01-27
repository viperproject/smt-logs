// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:36:46
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_143: Ref, f_57: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_143, f_57] }
  Heap[o_143, $allocated] ==> Heap[Heap[o_143, f_57], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_144: Ref, f_75: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_144, f_75] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_144, f_75) ==> Heap[o_144, f_75] == ExhaleHeap[o_144, f_75]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_52), ExhaleHeap[null, PredicateMaskField(pm_f_52)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsPredicateField(pm_f_52) ==> Heap[null, PredicateMaskField(pm_f_52)] == ExhaleHeap[null, PredicateMaskField(pm_f_52)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_52) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsPredicateField(pm_f_52) ==> (forall <A, B> o2_53: Ref, f_75: (Field A B) ::
    { ExhaleHeap[o2_53, f_75] }
    Heap[null, PredicateMaskField(pm_f_52)][o2_53, f_75] ==> Heap[o2_53, f_75] == ExhaleHeap[o2_53, f_75]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_52), ExhaleHeap[null, WandMaskField(pm_f_52)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsWandField(pm_f_52) ==> Heap[null, WandMaskField(pm_f_52)] == ExhaleHeap[null, WandMaskField(pm_f_52)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_52) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsWandField(pm_f_52) ==> (forall <A, B> o2_53: Ref, f_75: (Field A B) ::
    { ExhaleHeap[o2_53, f_75] }
    Heap[null, WandMaskField(pm_f_52)][o2_53, f_75] ==> Heap[o2_53, f_75] == ExhaleHeap[o2_53, f_75]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_144: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_144, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_144, $allocated] ==> ExhaleHeap[o_144, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_143: Ref, f_27: (Field A B), v: B ::
  { Heap[o_143, f_27:=v] }
  succHeap(Heap, Heap[o_143, f_27:=v])
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
function  neverTriggered13(j_5: int): bool;
function  neverTriggered14(j_11_1: int): bool;
function  neverTriggered15(k_7_1: int): bool;
function  neverTriggered16(k$0_2: int): bool;
function  neverTriggered17(j_14_2: int): bool;
function  neverTriggered18(k_10: int): bool;
function  neverTriggered19(k_3: int): bool;
function  neverTriggered20(k_7_1: int): bool;
function  neverTriggered21(k_10: int): bool;
function  neverTriggered22(j1_1: int): bool;
function  neverTriggered23(i1_3_1: int): bool;
function  neverTriggered24(j1_5_1: int): bool;
function  neverTriggered25(i1_5_2: int): bool;
function  neverTriggered26(k$0_2: int): bool;
function  neverTriggered27(j1_8: int): bool;
function  neverTriggered28(i1_8_1: int): bool;
function  neverTriggered29(k_10: int): bool;
function  neverTriggered30(k_11: int): bool;
function  neverTriggered31(k_15: int): bool;
function  neverTriggered32(j_12_2: int): bool;
function  neverTriggered33(j_17_2: int): bool;
function  neverTriggered34(k_18: int): bool;
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
// - height 4: sum_array
// - height 3: count_array
// - height 2: sum_square
// - height 1: Ref__multidim_index_2
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
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (testHistogram.vpr@16.11--16.28) [166672]"}
        N1 != 0;
    assume Result mod N1 == i1_9;
    assume state(Heap, Mask);
    
    // -- Check definedness of result % N1 < N0
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (testHistogram.vpr@17.11--17.27) [166673]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram.vpr@20.1--25.2) [166674]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram.vpr@20.1--25.2) [166675]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (testHistogram.vpr@24.21--24.44) [166676]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (testHistogram.vpr@24.21--24.44) [166677]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (testHistogram.vpr@24.21--24.44) [166678]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar_1)) && (forall j: int, k: int ::
    { Seq#Index(ar_1, j), Seq#Index(ar_1, k) }
    0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> Seq#Index(ar_1, j) != Seq#Index(ar_1, k)
  ) ==> sum_array(Heap, i, lo, hi, ar_1) == (if i < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] + sum_array'(Heap, i + 1, lo, hi, ar_1) else 0)
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
  var j_14: int;
  var k_16: int;
  var k_6: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_14 && (j_14 < hi && (0 <= k_16 && (k_16 < hi && j_14 != k_16)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testHistogram.vpr@30.12--30.102) [166679]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testHistogram.vpr@30.12--30.102) [166680]"}
            j_14 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram.vpr@30.12--30.102) [166681]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram.vpr@30.12--30.102) [166682]"}
            k_16 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_6_2: int ::
      { Seq#Index(ar_1, j_3), Seq#Index(ar_1, k_6_2) }
      0 <= j_3 && (j_3 < hi && (0 <= k_6_2 && (k_6_2 < hi && j_3 != k_6_2))) ==> Seq#Index(ar_1, j_3) != Seq#Index(ar_1, k_6_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (lo <= k_6 && k_6 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram.vpr@31.13--31.95) [166683]"}
            k_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram.vpr@31.13--31.95) [166684]"}
            k_6 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram.vpr@31.13--31.95) [166685]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (lo <= k_8 && k_8 < hi)) && (lo <= k_8_1 && k_8_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_8) != Seq#Index(ar_1, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        lo <= k_8 && k_8 < hi ==> qpRange1(Seq#Index(ar_1, k_8)) && invRecv1(Seq#Index(ar_1, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (lo <= invRecv1(o_9) && invRecv1(o_9) < hi) && qpRange1(o_9) ==> Seq#Index(ar_1, invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        lo <= k_8 && k_8 < hi ==> Seq#Index(ar_1, k_8) != null
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram.vpr@27.1--34.2) [166686]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram.vpr@27.1--34.2) [166687]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogram.vpr@27.1--34.2) [166688]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (testHistogram.vpr@33.40--33.68) [166689]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (testHistogram.vpr@33.40--33.68) [166690]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (testHistogram.vpr@33.40--33.68) [166691]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (testHistogram.vpr@33.40--33.68) [166692]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9_1 && (k_9_1 < hi && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[j] != ar[k] might not hold. (testHistogram.vpr@33.40--33.68) [166693]"}
                Seq#Index(ar_1, j_4_1) != Seq#Index(ar_1, k_9_1);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar_1, j_5_1_1), Seq#Index(ar_1, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < hi && (0 <= k_10_1 && (k_10_1 < hi && j_5_1_1 != k_10_1))) ==> Seq#Index(ar_1, j_5_1_1) != Seq#Index(ar_1, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram.vpr@33.40--33.68) [166694]"}
            (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (testHistogram.vpr@33.40--33.68) [166695]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (lo <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram.vpr@33.40--33.68) [166696]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && (lo <= k_11 && k_11 < hi)) && (lo <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram.vpr@33.40--33.68) [166697]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              lo <= k_11 && k_11 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (lo <= k_11 && k_11 < hi) && NoPerm < wildcard ==> qpRange2(Seq#Index(ar_1, k_11)) && invRecv2(Seq#Index(ar_1, k_11)) == k_11
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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1))) && vmax_1 <= Seq#Length(ar_1)) && (forall j: int, k: int ::
    { Seq#Index(ar_1, j), Seq#Index(ar_1, k) }
    0 <= j && (j < Seq#Length(ar_1) && (0 <= k && (k < Seq#Length(ar_1) && j != k))) ==> Seq#Index(ar_1, j) != Seq#Index(ar_1, k)
  ) ==> sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == (if i < vmax_1 then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] else 0) + sum_square'(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1) else 0)
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
  var j_12: int;
  var k_19: int;
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
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
    assume vmax_1 <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_12 && (j_12 < Seq#Length(ar_1) && (0 <= k_19 && (k_19 < Seq#Length(ar_1) && j_12 != k_19)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testHistogram.vpr@40.12--40.106) [166698]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testHistogram.vpr@40.12--40.106) [166699]"}
            j_12 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram.vpr@40.12--40.106) [166700]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram.vpr@40.12--40.106) [166701]"}
            k_19 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_6_2: int ::
      { Seq#Index(ar_1, j_3), Seq#Index(ar_1, k_6_2) }
      0 <= j_3 && (j_3 < Seq#Length(ar_1) && (0 <= k_6_2 && (k_6_2 < Seq#Length(ar_1) && j_3 != k_6_2))) ==> Seq#Index(ar_1, j_3) != Seq#Index(ar_1, k_6_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_7) {
          if (k_7 < vmax_1) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogram.vpr@41.13--41.136) [166702]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogram.vpr@41.13--41.136) [166703]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax_1 && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram.vpr@41.13--41.136) [166704]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram.vpr@41.13--41.136) [166705]"}
            k_7 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram.vpr@41.13--41.136) [166706]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)))) && (vmin <= k_8_1 && (k_8_1 < vmax_1 && (lo <= k_8_1 mod step && k_8_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_8) != Seq#Index(ar_1, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)) ==> qpRange3(Seq#Index(ar_1, k_8)) && invRecv3(Seq#Index(ar_1, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (vmin <= invRecv3(o_9) && (invRecv3(o_9) < vmax_1 && (lo <= invRecv3(o_9) mod step && invRecv3(o_9) mod step < hi))) && qpRange3(o_9) ==> Seq#Index(ar_1, invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)) ==> Seq#Index(ar_1, k_8) != null
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogram.vpr@36.1--44.2) [166707]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogram.vpr@36.1--44.2) [166708]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram.vpr@36.1--44.2) [166709]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram.vpr@36.1--44.2) [166710]"}
            i < Seq#Length(ar_1);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogram.vpr@36.1--44.2) [166711]"}
            HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (testHistogram.vpr@43.85--43.130) [166712]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (testHistogram.vpr@43.85--43.130) [166713]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (testHistogram.vpr@43.85--43.130) [166714]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (testHistogram.vpr@43.85--43.130) [166715]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (testHistogram.vpr@43.85--43.130) [166716]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (testHistogram.vpr@43.85--43.130) [166717]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (testHistogram.vpr@43.85--43.130) [166718]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (testHistogram.vpr@43.85--43.130) [166719]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < Seq#Length(ar_1) && (0 <= k_9_1 && (k_9_1 < Seq#Length(ar_1) && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[j] != ar[k] might not hold. (testHistogram.vpr@43.85--43.130) [166720]"}
                Seq#Index(ar_1, j_4_1) != Seq#Index(ar_1, k_9_1);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar_1, j_5_1_1), Seq#Index(ar_1, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < Seq#Length(ar_1) && (0 <= k_10_1 && (k_10_1 < Seq#Length(ar_1) && j_5_1_1 != k_10_1))) ==> Seq#Index(ar_1, j_5_1_1) != Seq#Index(ar_1, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram.vpr@43.85--43.130) [166721]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (testHistogram.vpr@43.85--43.130) [166722]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram.vpr@43.85--43.130) [166723]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram.vpr@43.85--43.130) [166724]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && NoPerm < wildcard ==> qpRange4(Seq#Index(ar_1, k_11)) && invRecv4(Seq#Index(ar_1, k_11)) == k_11
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1))) && vmax_1 <= Seq#Length(ar_1)) && (forall j: int, k: int ::
    { Seq#Index(ar_1, j), Seq#Index(ar_1, k) }
    0 <= j && (j < vmax_1 && (0 <= k && (k < vmax_1 && j != k))) ==> Seq#Index(ar_1, j) != Seq#Index(ar_1, k)
  ) ==> count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == (if i < vmax_1 then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square'(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2) else 0)
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
  var j_2: int;
  var k_4: int;
  var k_14: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9_1: int;
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
    assume i <= vmax_1;
    assume state(Heap, Mask);
    assume vmax_1 <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < max && (0 <= k && (k < max && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_2 && (j_2 < vmax_1 && (0 <= k_4 && (k_4 < vmax_1 && j_2 != k_4)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testHistogram.vpr@50.12--50.104) [166725]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testHistogram.vpr@50.12--50.104) [166726]"}
            j_2 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram.vpr@50.12--50.104) [166727]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram.vpr@50.12--50.104) [166728]"}
            k_4 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_6_2: int ::
      { Seq#Index(ar_1, j_3), Seq#Index(ar_1, k_6_2) }
      0 <= j_3 && (j_3 < vmax_1 && (0 <= k_6_2 && (k_6_2 < vmax_1 && j_3 != k_6_2))) ==> Seq#Index(ar_1, j_3) != Seq#Index(ar_1, k_6_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_14) {
          if (k_14 < vmax_1) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogram.vpr@51.13--51.136) [166729]"}
              step != 0;
            if (lo <= k_14 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogram.vpr@51.13--51.136) [166730]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_14 && (k_14 < vmax_1 && (lo <= k_14 mod step && k_14 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram.vpr@51.13--51.136) [166731]"}
            k_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram.vpr@51.13--51.136) [166732]"}
            k_14 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram.vpr@51.13--51.136) [166733]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)))) && (vmin <= k_8_1 && (k_8_1 < vmax_1 && (lo <= k_8_1 mod step && k_8_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_8) != Seq#Index(ar_1, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)) ==> qpRange5(Seq#Index(ar_1, k_8)) && invRecv5(Seq#Index(ar_1, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (vmin <= invRecv5(o_9) && (invRecv5(o_9) < vmax_1 && (lo <= invRecv5(o_9) mod step && invRecv5(o_9) mod step < hi))) && qpRange5(o_9) ==> Seq#Index(ar_1, invRecv5(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)) ==> Seq#Index(ar_1, k_8) != null
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogram.vpr@46.1--54.2) [166734]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogram.vpr@46.1--54.2) [166735]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram.vpr@46.1--54.2) [166736]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram.vpr@46.1--54.2) [166737]"}
              i < Seq#Length(ar_1);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogram.vpr@46.1--54.2) [166738]"}
              HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (testHistogram.vpr@53.97--53.147) [166739]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (testHistogram.vpr@53.97--53.147) [166740]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (testHistogram.vpr@53.97--53.147) [166741]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testHistogram.vpr@53.97--53.147) [166742]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (testHistogram.vpr@53.97--53.147) [166743]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (testHistogram.vpr@53.97--53.147) [166744]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (testHistogram.vpr@53.97--53.147) [166745]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (testHistogram.vpr@53.97--53.147) [166746]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax_1 && (0 <= k_9_1 && (k_9_1 < vmax_1 && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[j] != ar[k] might not hold. (testHistogram.vpr@53.97--53.147) [166747]"}
                Seq#Index(ar_1, j_4_1) != Seq#Index(ar_1, k_9_1);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar_1, j_5_1_1), Seq#Index(ar_1, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < vmax_1 && (0 <= k_10_1 && (k_10_1 < vmax_1 && j_5_1_1 != k_10_1))) ==> Seq#Index(ar_1, j_5_1_1) != Seq#Index(ar_1, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram.vpr@53.97--53.147) [166748]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testHistogram.vpr@53.97--53.147) [166749]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram.vpr@53.97--53.147) [166750]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram.vpr@53.97--53.147) [166751]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && NoPerm < wildcard ==> qpRange6(Seq#Index(ar_1, k_11)) && invRecv6(Seq#Index(ar_1, k_11)) == k_11
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram.vpr@56.1--61.2) [166752]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram.vpr@56.1--61.2) [166753]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (testHistogram.vpr@60.36--60.64) [166754]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (testHistogram.vpr@60.36--60.64) [166755]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (testHistogram.vpr@60.36--60.64) [166756]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar_1)) && (forall j: int, k: int ::
    { Seq#Index(ar_1, j), Seq#Index(ar_1, k) }
    0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> Seq#Index(ar_1, j) != Seq#Index(ar_1, k)
  ) ==> count_array(Heap, i, hi, ar_1, v_2) == (if i < hi then (if Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array'(Heap, i + 1, hi, ar_1, v_2) else 0)
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
  var j_4: int;
  var k_9: int;
  var k_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_4 && (j_4 < hi && (0 <= k_9 && (k_9 < hi && j_4 != k_9)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testHistogram.vpr@66.12--66.102) [166757]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testHistogram.vpr@66.12--66.102) [166758]"}
            j_4 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram.vpr@66.12--66.102) [166759]"}
            k_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram.vpr@66.12--66.102) [166760]"}
            k_9 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_6_2: int ::
      { Seq#Index(ar_1, j_3), Seq#Index(ar_1, k_6_2) }
      0 <= j_3 && (j_3 < hi && (0 <= k_6_2 && (k_6_2 < hi && j_3 != k_6_2))) ==> Seq#Index(ar_1, j_3) != Seq#Index(ar_1, k_6_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (0 <= k_2 && k_2 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram.vpr@67.13--67.94) [166761]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram.vpr@67.13--67.94) [166762]"}
            k_2 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram.vpr@67.13--67.94) [166763]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (0 <= k_8 && k_8 < hi)) && (0 <= k_8_1 && k_8_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_8) != Seq#Index(ar_1, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        0 <= k_8 && k_8 < hi ==> qpRange7(Seq#Index(ar_1, k_8)) && invRecv7(Seq#Index(ar_1, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (0 <= invRecv7(o_9) && invRecv7(o_9) < hi) && qpRange7(o_9) ==> Seq#Index(ar_1, invRecv7(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        0 <= k_8 && k_8 < hi ==> Seq#Index(ar_1, k_8) != null
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram.vpr@63.1--70.2) [166764]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram.vpr@63.1--70.2) [166765]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogram.vpr@63.1--70.2) [166766]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (testHistogram.vpr@69.55--69.84) [166767]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (testHistogram.vpr@69.55--69.84) [166768]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (testHistogram.vpr@69.55--69.84) [166769]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9_1 && (k_9_1 < hi && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[j] != ar[k] might not hold. (testHistogram.vpr@69.55--69.84) [166770]"}
                Seq#Index(ar_1, j_4_1) != Seq#Index(ar_1, k_9_1);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar_1, j_5_1_1), Seq#Index(ar_1, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < hi && (0 <= k_10_1 && (k_10_1 < hi && j_5_1_1 != k_10_1))) ==> Seq#Index(ar_1, j_5_1_1) != Seq#Index(ar_1, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram.vpr@69.55--69.84) [166771]"}
            (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testHistogram.vpr@69.55--69.84) [166772]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (0 <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram.vpr@69.55--69.84) [166773]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && (0 <= k_11 && k_11 < hi)) && (0 <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram.vpr@69.55--69.84) [166774]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              0 <= k_11 && k_11 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (0 <= k_11 && k_11 < hi) && NoPerm < wildcard ==> qpRange8(Seq#Index(ar_1, k_11)) && invRecv8(Seq#Index(ar_1, k_11)) == k_11
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
// Translation of method Ref__loop_main_76
// ==================================================

procedure Ref__loop_main_76(diz: Ref, current_thread_id: int, P_2: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_6: int;
  var k_25: int;
  var k_22: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_29: int;
  var k_20: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    assume P_2 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { hist[j], hist[k] } 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k])
      if (*) {
        if (0 <= j_6 && (j_6 < P_2 && (0 <= k_25 && (k_25 < P_2 && j_6 != k_25)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might be negative. (testHistogram.vpr@76.12--76.104) [166775]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might exceed sequence length. (testHistogram.vpr@76.12--76.104) [166776]"}
            j_6 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@76.12--76.104) [166777]"}
            k_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@76.12--76.104) [166778]"}
            k_25 < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(hist, j_1), Seq#Index(hist, k_1) }
      0 <= j_1 && (j_1 < P_2 && (0 <= k_1 && (k_1 < P_2 && j_1 != k_1))) ==> Seq#Index(hist, j_1) != Seq#Index(hist, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_22 && k_22 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@77.13--77.92) [166779]"}
            k_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@77.13--77.92) [166780]"}
            k_22 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@77.13--77.92) [166781]"}
      (forall k_3: int, k_3_2: int ::
      
      (((k_3 != k_3_2 && (0 <= k_3 && k_3 < P_2)) && (0 <= k_3_2 && k_3_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        (0 <= k_3 && k_3 < P_2) && NoPerm < FullPerm ==> qpRange9(Seq#Index(hist, k_3)) && invRecv9(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < P_2) && NoPerm < FullPerm) && qpRange9(o_9) ==> Seq#Index(hist, invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        0 <= k_3 && k_3 < P_2 ==> Seq#Index(hist, k_3) != null
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
        if (0 <= k_29 && k_29 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@78.12--78.91) [166782]"}
            k_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@78.12--78.91) [166783]"}
            k_29 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@78.12--78.91) [166784]"}
      (forall k_5: int, k_5_1: int ::
      
      (((k_5 != k_5_1 && (0 <= k_5 && k_5 < P_2)) && (0 <= k_5_1 && k_5_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_5) != Seq#Index(hist, k_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_5: int ::
        { Seq#Index(hist, k_5) } { Seq#Index(hist, k_5) }
        (0 <= k_5 && k_5 < P_2) && NoPerm < FullPerm ==> qpRange10(Seq#Index(hist, k_5)) && invRecv10(Seq#Index(hist, k_5)) == k_5
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < P_2) && NoPerm < FullPerm) && qpRange10(o_9) ==> Seq#Index(hist, invRecv10(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_5: int ::
        { Seq#Index(hist, k_5) } { Seq#Index(hist, k_5) }
        0 <= k_5 && k_5 < P_2 ==> Seq#Index(hist, k_5) != null
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
        if (0 <= k_20 && k_20 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@79.12--79.86) [166785]"}
            k_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@79.12--79.86) [166786]"}
            k_20 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@79.12--79.86) [166787]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_20), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_7_1: int ::
      { Seq#Index(hist, k_7_1) }
      0 <= k_7_1 && k_7_1 < P_2 ==> PostHeap[Seq#Index(hist, k_7_1), Ref__Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistogram.vpr@81.3--81.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@78.12--78.91) [166788]"}
        (forall k_8: int, k_8_1: int ::
        { neverTriggered11(k_8), neverTriggered11(k_8_1) }
        (((k_8 != k_8_1 && (0 <= k_8 && k_8 < P_2)) && (0 <= k_8_1 && k_8_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_8) != Seq#Index(hist, k_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_76 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@78.12--78.91) [166789]"}
        (forall k_8: int ::
        { Seq#Index(hist, k_8) } { Seq#Index(hist, k_8) }
        0 <= k_8 && k_8 < P_2 ==> Mask[Seq#Index(hist, k_8), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_8: int ::
        { Seq#Index(hist, k_8) } { Seq#Index(hist, k_8) }
        (0 <= k_8 && k_8 < P_2) && NoPerm < FullPerm ==> qpRange11(Seq#Index(hist, k_8)) && invRecv11(Seq#Index(hist, k_8)) == k_8
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
      if (0 <= k_9_1 && k_9_1 < P_2) {
        assert {:msg "  Postcondition of Ref__loop_main_76 might not hold. Assertion hist[k].Ref__Integer_value == 0 might not hold. (testHistogram.vpr@79.12--79.86) [166790]"}
          Heap[Seq#Index(hist, k_9_1), Ref__Integer_value] == 0;
      }
      assume false;
    }
    assume (forall k_10_1: int ::
      { Seq#Index(hist, k_10_1) }
      0 <= k_10_1 && k_10_1 < P_2 ==> Heap[Seq#Index(hist, k_10_1), Ref__Integer_value] == 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_76
// ==================================================

procedure Ref__loop_body_76(diz: Ref, current_thread_id: int, k: int, P_2: int, hist: (Seq Ref)) returns ()
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
    assume P_2 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(hist[k].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@89.12--89.50) [166791]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@89.12--89.50) [166792]"}
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
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@91.11--91.49) [166793]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@91.11--91.49) [166794]"}
        k < Seq#Length(hist);
    perm := FullPerm;
    assume Seq#Index(hist, k) != null;
    PostMask := PostMask[Seq#Index(hist, k), Ref__Integer_value:=PostMask[Seq#Index(hist, k), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of hist[k].Ref__Integer_value == 0
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@92.11--92.42) [166795]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@92.11--92.42) [166796]"}
        k < Seq#Length(hist);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@92.11--92.42) [166797]"}
        HasDirectPerm(PostMask, Seq#Index(hist, k), Ref__Integer_value);
    assume PostHeap[Seq#Index(hist, k), Ref__Integer_value] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_4, $allocated];
  
  // -- Translating statement: __flatten_4 := hist[k] -- testHistogram.vpr@96.3--96.25
    
    // -- Check definedness of hist[k]
      assert {:msg "  Assignment might fail. Index hist[k] into hist might be negative. (testHistogram.vpr@96.3--96.25) [166798]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@96.3--96.25) [166799]"}
        k < Seq#Length(hist);
    __flatten_4 := Seq#Index(hist, k);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := 0 -- testHistogram.vpr@97.3--97.19
    __flatten_5 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4.Ref__Integer_value := __flatten_5 -- testHistogram.vpr@98.3--98.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (testHistogram.vpr@98.3--98.48) [166800]"}
      FullPerm == Mask[__flatten_4, Ref__Integer_value];
    Heap := Heap[__flatten_4, Ref__Integer_value:=__flatten_5];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_76 might not hold. Assertion 0 <= k might not hold. (testHistogram.vpr@90.11--90.30) [166801]"}
      0 <= k;
    assert {:msg "  Postcondition of Ref__loop_body_76 might not hold. Assertion k < P might not hold. (testHistogram.vpr@90.11--90.30) [166802]"}
      k < P_2;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_76 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@91.11--91.49) [166803]"}
        perm <= Mask[Seq#Index(hist, k), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(hist, k), Ref__Integer_value:=Mask[Seq#Index(hist, k), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_76 might not hold. Assertion hist[k].Ref__Integer_value == 0 might not hold. (testHistogram.vpr@92.11--92.42) [166804]"}
      Heap[Seq#Index(hist, k), Ref__Integer_value] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_main_96
// ==================================================

procedure Ref__loop_main_96(diz: Ref, current_thread_id: int, P_2: int, N: int, M_1: int, matrix_1: (Seq Ref), hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_22: int;
  var k_31: int;
  var k_23: int;
  var QPMask: MaskType;
  var j_23: int;
  var k_24: int;
  var j_19: int;
  var i_23: int;
  var j_24: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_24: int;
  var j_20: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_25: int;
  var k_30: int;
  var k_27: int;
  var j_12_2: int;
  var k$0: int;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var k_11: int;
  
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
    assume M_1 > 0;
    assume N > 0;
    assume P_2 > 0;
    assume state(Heap, Mask);
    assume P_2 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { hist[j], hist[k] } 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k])
      if (*) {
        if (0 <= j_22 && (j_22 < P_2 && (0 <= k_31 && (k_31 < P_2 && j_22 != k_31)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might be negative. (testHistogram.vpr@106.12--106.104) [166805]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might exceed sequence length. (testHistogram.vpr@106.12--106.104) [166806]"}
            j_22 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@106.12--106.104) [166807]"}
            k_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@106.12--106.104) [166808]"}
            k_31 < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(hist, j_1), Seq#Index(hist, k_1) }
      0 <= j_1 && (j_1 < P_2 && (0 <= k_1 && (k_1 < P_2 && j_1 != k_1))) ==> Seq#Index(hist, j_1) != Seq#Index(hist, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_23 && k_23 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@107.13--107.92) [166809]"}
            k_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@107.13--107.92) [166810]"}
            k_23 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@107.13--107.92) [166811]"}
      (forall k_3: int, k_3_2: int ::
      
      (((k_3 != k_3_2 && (0 <= k_3 && k_3 < P_2)) && (0 <= k_3_2 && k_3_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        (0 <= k_3 && k_3 < P_2) && NoPerm < FullPerm ==> qpRange12(Seq#Index(hist, k_3)) && invRecv12(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < P_2) && NoPerm < FullPerm) && qpRange12(o_9) ==> Seq#Index(hist, invRecv12(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        0 <= k_3 && k_3 < P_2 ==> Seq#Index(hist, k_3) != null
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
    assume M_1 * N <= Seq#Length(matrix_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { matrix[j], matrix[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k])
      if (*) {
        if (0 <= j_23 && (j_23 < M_1 * N && (0 <= k_24 && (k_24 < M_1 * N && j_23 != k_24)))) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogram.vpr@109.12--109.112) [166812]"}
            j_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogram.vpr@109.12--109.112) [166813]"}
            j_23 < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might be negative. (testHistogram.vpr@109.12--109.112) [166814]"}
            k_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might exceed sequence length. (testHistogram.vpr@109.12--109.112) [166815]"}
            k_24 < Seq#Length(matrix_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_5: int ::
      { Seq#Index(matrix_1, j_3), Seq#Index(matrix_1, k_5) }
      0 <= j_3 && (j_3 < M_1 * N && (0 <= k_5 && (k_5 < M_1 * N && j_3 != k_5))) ==> Seq#Index(matrix_1, j_3) != Seq#Index(matrix_1, k_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } 0 <= j && j < M * N ==> acc(matrix[j].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= j_19 && j_19 < M_1 * N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogram.vpr@110.13--110.98) [166816]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogram.vpr@110.13--110.98) [166817]"}
            j_19 < Seq#Length(matrix_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram.vpr@110.13--110.98) [166818]"}
      (forall j_5: int, j_5_1: int ::
      
      (((j_5 != j_5_1 && (0 <= j_5 && j_5 < M_1 * N)) && (0 <= j_5_1 && j_5_1 < M_1 * N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix_1, j_5) != Seq#Index(matrix_1, j_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_5: int ::
        { Seq#Index(matrix_1, j_5) } { Seq#Index(matrix_1, j_5) }
        (0 <= j_5 && j_5 < M_1 * N) && NoPerm < 1 / 4 ==> qpRange13(Seq#Index(matrix_1, j_5)) && invRecv13(Seq#Index(matrix_1, j_5)) == j_5
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((0 <= invRecv13(o_9) && invRecv13(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange13(o_9) ==> Seq#Index(matrix_1, invRecv13(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogram.vpr@110.13--110.98) [166819]"}
      (forall j_5: int ::
      { Seq#Index(matrix_1, j_5) } { Seq#Index(matrix_1, j_5) }
      0 <= j_5 && j_5 < M_1 * N ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5: int ::
        { Seq#Index(matrix_1, j_5) } { Seq#Index(matrix_1, j_5) }
        (0 <= j_5 && j_5 < M_1 * N) && 1 / 4 > NoPerm ==> Seq#Index(matrix_1, j_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv13(o_9) && invRecv13(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange13(o_9) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix_1, invRecv13(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv13(o_9) && invRecv13(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange13(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { Ref__multidim_index_2(M, N, i, j) } 0 <= i && (i < M && (0 <= j && j < N)) ==> Ref__multidim_index_2(M, N, i, j) < |matrix|)
      if (*) {
        if (0 <= i_23 && (i_23 < M_1 && (0 <= j_24 && j_24 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@111.85--111.118) [166820]"}
              0 <= i_23;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@111.85--111.118) [166821]"}
              i_23 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@111.85--111.118) [166822]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@111.85--111.118) [166823]"}
              0 <= j_24;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@111.85--111.118) [166824]"}
              j_24 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@111.85--111.118) [166825]"}
              0 <= N;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int, j_7_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_1, j_7_1) }
      0 <= i_1 && (i_1 < M_1 && (0 <= j_7_1 && j_7_1 < N)) ==> Ref__multidim_index_2(Heap, M_1, N, i_1, j_7_1) < Seq#Length(matrix_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { matrix[Ref__multidim_index_2(M, N, i, j)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P)
      if (*) {
        if (0 <= i_24 && (i_24 < M_1 && (0 <= j_20 && j_20 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@112.98--112.131) [166826]"}
              0 <= i_24;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@112.98--112.131) [166827]"}
              i_24 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@112.98--112.131) [166828]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@112.98--112.131) [166829]"}
              0 <= j_20;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@112.98--112.131) [166830]"}
              j_20 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@112.98--112.131) [166831]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (testHistogram.vpr@112.13--112.222) [166832]"}
            Ref__multidim_index_2(Heap, M_1, N, i_24, j_20) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (testHistogram.vpr@112.13--112.222) [166833]"}
            Ref__multidim_index_2(Heap, M_1, N, i_24, j_20) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testHistogram.vpr@112.13--112.222) [166834]"}
            HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_24, j_20)), Ref__Integer_value);
          if (0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_24, j_20)), Ref__Integer_value]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@112.164--112.197) [166835]"}
                0 <= i_24;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@112.164--112.197) [166836]"}
                i_24 < M_1;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@112.164--112.197) [166837]"}
                0 <= M_1;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@112.164--112.197) [166838]"}
                0 <= j_20;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@112.164--112.197) [166839]"}
                j_20 < N;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@112.164--112.197) [166840]"}
                0 <= N;
              // Stop execution
              assume false;
            }
            assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (testHistogram.vpr@112.13--112.222) [166841]"}
              Ref__multidim_index_2(Heap, M_1, N, i_24, j_20) >= 0;
            assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (testHistogram.vpr@112.13--112.222) [166842]"}
              Ref__multidim_index_2(Heap, M_1, N, i_24, j_20) < Seq#Length(matrix_1);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testHistogram.vpr@112.13--112.222) [166843]"}
              HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_24, j_20)), Ref__Integer_value);
          }
        }
        assume false;
      }
    assume (forall i_3_2: int, j_9_1: int ::
      { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_3_2, j_9_1)) }
      0 <= i_3_2 && (i_3_2 < M_1 && (0 <= j_9_1 && j_9_1 < N)) ==> 0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_3_2, j_9_1)), Ref__Integer_value] && Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_3_2, j_9_1)), Ref__Integer_value] < P_2
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
    assume M_1 > 0;
    assume N > 0;
    assume P_2 > 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } 0 <= j && j < M * N ==> acc(matrix[j].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= j_25 && j_25 < M_1 * N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogram.vpr@114.12--114.97) [166844]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogram.vpr@114.12--114.97) [166845]"}
            j_25 < Seq#Length(matrix_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram.vpr@114.12--114.97) [166846]"}
      (forall j_11_1: int, j_11_2: int ::
      
      (((j_11_1 != j_11_2 && (0 <= j_11_1 && j_11_1 < M_1 * N)) && (0 <= j_11_2 && j_11_2 < M_1 * N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix_1, j_11_1) != Seq#Index(matrix_1, j_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_11_1: int ::
        { Seq#Index(matrix_1, j_11_1) } { Seq#Index(matrix_1, j_11_1) }
        (0 <= j_11_1 && j_11_1 < M_1 * N) && NoPerm < 1 / 4 ==> qpRange14(Seq#Index(matrix_1, j_11_1)) && invRecv14(Seq#Index(matrix_1, j_11_1)) == j_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        ((0 <= invRecv14(o_9) && invRecv14(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange14(o_9) ==> Seq#Index(matrix_1, invRecv14(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogram.vpr@114.12--114.97) [166847]"}
      (forall j_11_1: int ::
      { Seq#Index(matrix_1, j_11_1) } { Seq#Index(matrix_1, j_11_1) }
      0 <= j_11_1 && j_11_1 < M_1 * N ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_11_1: int ::
        { Seq#Index(matrix_1, j_11_1) } { Seq#Index(matrix_1, j_11_1) }
        (0 <= j_11_1 && j_11_1 < M_1 * N) && 1 / 4 > NoPerm ==> Seq#Index(matrix_1, j_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv14(o_9) && invRecv14(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange14(o_9) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix_1, invRecv14(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv14(o_9) && invRecv14(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange14(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_30 && k_30 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@115.12--115.91) [166848]"}
            k_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@115.12--115.91) [166849]"}
            k_30 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@115.12--115.91) [166850]"}
      (forall k_7_1: int, k_7_2: int ::
      
      (((k_7_1 != k_7_2 && (0 <= k_7_1 && k_7_1 < P_2)) && (0 <= k_7_2 && k_7_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_7_1) != Seq#Index(hist, k_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_7_1: int ::
        { Seq#Index(hist, k_7_1) } { Seq#Index(hist, k_7_1) }
        (0 <= k_7_1 && k_7_1 < P_2) && NoPerm < FullPerm ==> qpRange15(Seq#Index(hist, k_7_1)) && invRecv15(Seq#Index(hist, k_7_1)) == k_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        ((0 <= invRecv15(o_9) && invRecv15(o_9) < P_2) && NoPerm < FullPerm) && qpRange15(o_9) ==> Seq#Index(hist, invRecv15(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_7_1: int ::
        { Seq#Index(hist, k_7_1) } { Seq#Index(hist, k_7_1) }
        0 <= k_7_1 && k_7_1 < P_2 ==> Seq#Index(hist, k_7_1) != null
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
    
    // -- Check definedness of (forall k: Int :: { old(hist[k]) } 0 <= k && k < P ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k))
      if (*) {
        if (0 <= k_27 && k_27 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@116.12--116.151) [166851]"}
            k_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@116.12--116.151) [166852]"}
            k_27 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@116.12--116.151) [166853]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_27), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@116.12--116.151) [166854]"}
            k_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@116.12--116.151) [166855]"}
            k_27 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@116.12--116.151) [166856]"}
            HasDirectPerm(oldMask, Seq#Index(hist, k_27), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= M * N might not hold. (testHistogram.vpr@116.118--116.150) [166857]"}
              0 <= M_1 * N;
            assert {:msg "  Precondition of function count_array might not hold. Assertion M * N <= |matrix| might not hold. (testHistogram.vpr@116.118--116.150) [166858]"}
              M_1 * N <= Seq#Length(matrix_1);
            if (*) {
              if (0 <= j_12_2 && (j_12_2 < M_1 * N && (0 <= k$0 && (k$0 < M_1 * N && j_12_2 != k$0)))) {
                assert {:msg "  Precondition of function count_array might not hold. Assertion matrix[j] != matrix[k$0] might not hold. (testHistogram.vpr@116.118--116.150) [166859]"}
                  Seq#Index(matrix_1, j_12_2) != Seq#Index(matrix_1, k$0);
              }
              assume false;
            }
            assume (forall j_13_1: int, k$0_1_1_1: int ::
              { Seq#Index(matrix_1, j_13_1), Seq#Index(matrix_1, k$0_1_1_1) }
              0 <= j_13_1 && (j_13_1 < M_1 * N && (0 <= k$0_1_1_1 && (k$0_1_1_1 < M_1 * N && j_13_1 != k$0_1_1_1))) ==> Seq#Index(matrix_1, j_13_1) != Seq#Index(matrix_1, k$0_1_1_1)
            );
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogram.vpr@116.118--116.150) [166860]"}
              (forall k$0_2: int ::
              
              0 <= k$0_2 && k$0_2 < M_1 * N ==> PostMask[Seq#Index(matrix_1, k$0_2), Ref__Integer_value] > NoPerm
            );
            assume (forall k$0_2: int ::
              
              0 <= k$0_2 && k$0_2 < M_1 * N ==> wildcard < PostMask[Seq#Index(matrix_1, k$0_2), Ref__Integer_value]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testHistogram.vpr@116.118--116.150) [166861]"}
                (forall k$0_2: int ::
                { Seq#Index(matrix_1, k$0_2) } { Seq#Index(matrix_1, k$0_2) }
                (0 <= k$0_2 && k$0_2 < M_1 * N) && dummyFunction(PostHeap[Seq#Index(matrix_1, k$0_2), Ref__Integer_value]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver matrix[k$0] is injective
              assert {:msg "  Precondition of function count_array might not hold. Quantified resource matrix[k$0].Ref__Integer_value might not be injective. (testHistogram.vpr@116.118--116.150) [166862]"}
                (forall k$0_2: int, k$0_2_1: int ::
                { neverTriggered16(k$0_2), neverTriggered16(k$0_2_1) }
                (((k$0_2 != k$0_2_1 && (0 <= k$0_2 && k$0_2 < M_1 * N)) && (0 <= k$0_2_1 && k$0_2_1 < M_1 * N)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(matrix_1, k$0_2) != Seq#Index(matrix_1, k$0_2_1)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogram.vpr@116.118--116.150) [166863]"}
                (forall k$0_2: int ::
                { Seq#Index(matrix_1, k$0_2) } { Seq#Index(matrix_1, k$0_2) }
                0 <= k$0_2 && k$0_2 < M_1 * N ==> wildcard > NoPerm ==> PostMask[Seq#Index(matrix_1, k$0_2), Ref__Integer_value] > NoPerm
              );
            
            // -- assumptions for inverse of receiver matrix[k$0]
              assume (forall k$0_2: int ::
                { Seq#Index(matrix_1, k$0_2) } { Seq#Index(matrix_1, k$0_2) }
                (0 <= k$0_2 && k$0_2 < M_1 * N) && NoPerm < wildcard ==> qpRange16(Seq#Index(matrix_1, k$0_2)) && invRecv16(Seq#Index(matrix_1, k$0_2)) == k$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv16(o_9) }
                (0 <= invRecv16(o_9) && invRecv16(o_9) < M_1 * N) && (NoPerm < wildcard && qpRange16(o_9)) ==> Seq#Index(matrix_1, invRecv16(o_9)) == o_9
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
    assume (forall k_9_1: int ::
      { Seq#Index(hist, k_9_1) }
      0 <= k_9_1 && k_9_1 < P_2 ==> PostHeap[Seq#Index(hist, k_9_1), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_9_1), Ref__Integer_value] + count_array(PostHeap, 0, M_1 * N, matrix_1, k_9_1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistogram.vpr@118.3--118.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_main_96 might not hold. Assertion M > 0 might not hold. (testHistogram.vpr@113.11--113.40) [166864]"}
      M_1 > 0;
    assert {:msg "  Postcondition of Ref__loop_main_96 might not hold. Assertion N > 0 might not hold. (testHistogram.vpr@113.11--113.40) [166865]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__loop_main_96 might not hold. Assertion P > 0 might not hold. (testHistogram.vpr@113.11--113.40) [166866]"}
      P_2 > 0;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_96 might not hold. Fraction 1 / 4 might be negative. (testHistogram.vpr@114.12--114.97) [166867]"}
        (forall j_14_2: int ::
        { Seq#Index(matrix_1, j_14_2) } { Seq#Index(matrix_1, j_14_2) }
        (0 <= j_14_2 && j_14_2 < M_1 * N) && dummyFunction(Heap[Seq#Index(matrix_1, j_14_2), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver matrix[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram.vpr@114.12--114.97) [166868]"}
        (forall j_14_2: int, j_14_3: int ::
        { neverTriggered17(j_14_2), neverTriggered17(j_14_3) }
        (((j_14_2 != j_14_3 && (0 <= j_14_2 && j_14_2 < M_1 * N)) && (0 <= j_14_3 && j_14_3 < M_1 * N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix_1, j_14_2) != Seq#Index(matrix_1, j_14_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_96 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (testHistogram.vpr@114.12--114.97) [166869]"}
        (forall j_14_2: int ::
        { Seq#Index(matrix_1, j_14_2) } { Seq#Index(matrix_1, j_14_2) }
        0 <= j_14_2 && j_14_2 < M_1 * N ==> Mask[Seq#Index(matrix_1, j_14_2), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver matrix[j]
      assume (forall j_14_2: int ::
        { Seq#Index(matrix_1, j_14_2) } { Seq#Index(matrix_1, j_14_2) }
        (0 <= j_14_2 && j_14_2 < M_1 * N) && NoPerm < 1 / 4 ==> qpRange17(Seq#Index(matrix_1, j_14_2)) && invRecv17(Seq#Index(matrix_1, j_14_2)) == j_14_2
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        (0 <= invRecv17(o_9) && invRecv17(o_9) < M_1 * N) && (NoPerm < 1 / 4 && qpRange17(o_9)) ==> Seq#Index(matrix_1, invRecv17(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv17(o_9) && invRecv17(o_9) < M_1 * N) && (NoPerm < 1 / 4 && qpRange17(o_9)) ==> Seq#Index(matrix_1, invRecv17(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv17(o_9) && invRecv17(o_9) < M_1 * N) && (NoPerm < 1 / 4 && qpRange17(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@115.12--115.91) [166870]"}
        (forall k_10: int, k_10_2: int ::
        { neverTriggered18(k_10), neverTriggered18(k_10_2) }
        (((k_10 != k_10_2 && (0 <= k_10 && k_10 < P_2)) && (0 <= k_10_2 && k_10_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_10) != Seq#Index(hist, k_10_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_96 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@115.12--115.91) [166871]"}
        (forall k_10: int ::
        { Seq#Index(hist, k_10) } { Seq#Index(hist, k_10) }
        0 <= k_10 && k_10 < P_2 ==> Mask[Seq#Index(hist, k_10), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_10: int ::
        { Seq#Index(hist, k_10) } { Seq#Index(hist, k_10) }
        (0 <= k_10 && k_10 < P_2) && NoPerm < FullPerm ==> qpRange18(Seq#Index(hist, k_10)) && invRecv18(Seq#Index(hist, k_10)) == k_10
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
      if (0 <= k_11 && k_11 < P_2) {
        assert {:msg "  Postcondition of Ref__loop_main_96 might not hold. Assertion hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k) might not hold. (testHistogram.vpr@116.12--116.151) [166872]"}
          Heap[Seq#Index(hist, k_11), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_11), Ref__Integer_value] + count_array(Heap, 0, M_1 * N, matrix_1, k_11);
      }
      assume false;
    }
    assume (forall k_12_1: int ::
      { Seq#Index(hist, k_12_1) }
      0 <= k_12_1 && k_12_1 < P_2 ==> Heap[Seq#Index(hist, k_12_1), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_12_1), Ref__Integer_value] + count_array(Heap, 0, M_1 * N, matrix_1, k_12_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_96
// ==================================================

procedure Ref__loop_body_96(diz: Ref, current_thread_id: int, matrix_1: (Seq Ref), j: int, i: int, P_2: int, hist: (Seq Ref), N: int, M_1: int) returns ()
  modifies Heap, Mask;
{
  var j1_20: int;
  var k_42: int;
  var k_28: int;
  var QPMask: MaskType;
  var k_33: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_36: int;
  var k_34: int;
  var __flatten_7: Ref;
  var __flatten_8: Ref;
  var __flatten_10: Ref;
  var __flatten_11: Ref;
  var __flatten_6: int;
  var __flatten_1: int;
  var __flatten_9: int;
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
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume M_1 > 0;
    assume N > 0;
    assume P_2 > 0;
    assume state(Heap, Mask);
    assume 0 <= i;
    assume i < M_1;
    assume 0 <= j;
    assume j < N;
    assume state(Heap, Mask);
    assume P_2 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, k: Int :: { hist[j1], hist[k] } 0 <= j1 && (j1 < P && (0 <= k && (k < P && j1 != k))) ==> hist[j1] != hist[k])
      if (*) {
        if (0 <= j1_20 && (j1_20 < P_2 && (0 <= k_42 && (k_42 < P_2 && j1_20 != k_42)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[j1] into hist might be negative. (testHistogram.vpr@127.12--127.109) [166873]"}
            j1_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[j1] into hist might exceed sequence length. (testHistogram.vpr@127.12--127.109) [166874]"}
            j1_20 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@127.12--127.109) [166875]"}
            k_42 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@127.12--127.109) [166876]"}
            k_42 < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall j1_1: int, k_1: int ::
      { Seq#Index(hist, j1_1), Seq#Index(hist, k_1) }
      0 <= j1_1 && (j1_1 < P_2 && (0 <= k_1 && (k_1 < P_2 && j1_1 != k_1))) ==> Seq#Index(hist, j1_1) != Seq#Index(hist, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_28 && k_28 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@128.13--128.92) [166877]"}
            k_28 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@128.13--128.92) [166878]"}
            k_28 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@128.13--128.92) [166879]"}
      (forall k_3: int, k_3_2: int ::
      
      (((k_3 != k_3_2 && (0 <= k_3 && k_3 < P_2)) && (0 <= k_3_2 && k_3_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        (0 <= k_3 && k_3 < P_2) && NoPerm < FullPerm ==> qpRange19(Seq#Index(hist, k_3)) && invRecv19(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        ((0 <= invRecv19(o_9) && invRecv19(o_9) < P_2) && NoPerm < FullPerm) && qpRange19(o_9) ==> Seq#Index(hist, invRecv19(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#Index(hist, k_3) }
        0 <= k_3 && k_3 < P_2 ==> Seq#Index(hist, k_3) != null
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
        if (0 <= k_33 && k_33 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@129.13--129.87) [166880]"}
            k_33 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@129.13--129.87) [166881]"}
            k_33 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@129.13--129.87) [166882]"}
            HasDirectPerm(Mask, Seq#Index(hist, k_33), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_5: int ::
      { Seq#Index(hist, k_5) }
      0 <= k_5 && k_5 < P_2 ==> Heap[Seq#Index(hist, k_5), Ref__Integer_value] == 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Ref__multidim_index_2(M, N, i, j) < |matrix|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@130.12--130.45) [166883]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@130.12--130.45) [166884]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@130.12--130.45) [166885]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@130.12--130.45) [166886]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@130.12--130.45) [166887]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@130.12--130.45) [166888]"}
          0 <= N;
        // Stop execution
        assume false;
      }
    assume Ref__multidim_index_2(Heap, M_1, N, i, j) < Seq#Length(matrix_1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value, 1 / 4)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@131.23--131.56) [166889]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@131.23--131.56) [166890]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@131.23--131.56) [166891]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@131.23--131.56) [166892]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@131.23--131.56) [166893]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@131.23--131.56) [166894]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (testHistogram.vpr@131.12--131.84) [166895]"}
        Ref__multidim_index_2(Heap, M_1, N, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (testHistogram.vpr@131.12--131.84) [166896]"}
        Ref__multidim_index_2(Heap, M_1, N, i, j) < Seq#Length(matrix_1);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogram.vpr@131.12--131.84) [166897]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)) != null;
    Mask := Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value:=Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@132.25--132.58) [166898]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@132.25--132.58) [166899]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@132.25--132.58) [166900]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@132.25--132.58) [166901]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@132.25--132.58) [166902]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@132.25--132.58) [166903]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (testHistogram.vpr@132.12--132.149) [166904]"}
        Ref__multidim_index_2(Heap, M_1, N, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (testHistogram.vpr@132.12--132.149) [166905]"}
        Ref__multidim_index_2(Heap, M_1, N, i, j) < Seq#Length(matrix_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testHistogram.vpr@132.12--132.149) [166906]"}
        HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value);
    assume 0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value];
    assume state(Heap, Mask);
    
    // -- Check definedness of matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@132.91--132.124) [166907]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@132.91--132.124) [166908]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@132.91--132.124) [166909]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@132.91--132.124) [166910]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@132.91--132.124) [166911]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@132.91--132.124) [166912]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (testHistogram.vpr@132.12--132.149) [166913]"}
        Ref__multidim_index_2(Heap, M_1, N, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (testHistogram.vpr@132.12--132.149) [166914]"}
        Ref__multidim_index_2(Heap, M_1, N, i, j) < Seq#Length(matrix_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testHistogram.vpr@132.12--132.149) [166915]"}
        HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value);
    assume Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value] < P_2;
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
    assume M_1 > 0;
    assume N > 0;
    assume P_2 > 0;
    assume state(PostHeap, PostMask);
    assume 0 <= i;
    assume i < M_1;
    assume 0 <= j;
    assume j < N;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value, 1 / 4)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@135.22--135.55) [166916]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@135.22--135.55) [166917]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@135.22--135.55) [166918]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@135.22--135.55) [166919]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@135.22--135.55) [166920]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@135.22--135.55) [166921]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (testHistogram.vpr@135.11--135.83) [166922]"}
        Ref__multidim_index_2(PostHeap, M_1, N, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (testHistogram.vpr@135.11--135.83) [166923]"}
        Ref__multidim_index_2(PostHeap, M_1, N, i, j) < Seq#Length(matrix_1);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogram.vpr@135.11--135.83) [166924]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, N, i, j)) != null;
    PostMask := PostMask[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, N, i, j)), Ref__Integer_value:=PostMask[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, N, i, j)), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (0 <= k_36 && k_36 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@136.12--136.91) [166925]"}
            k_36 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@136.12--136.91) [166926]"}
            k_36 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@136.12--136.91) [166927]"}
      (forall k_7_1: int, k_7_2: int ::
      
      (((k_7_1 != k_7_2 && (0 <= k_7_1 && k_7_1 < P_2)) && (0 <= k_7_2 && k_7_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_7_1) != Seq#Index(hist, k_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_7_1: int ::
        { Seq#Index(hist, k_7_1) } { Seq#Index(hist, k_7_1) }
        (0 <= k_7_1 && k_7_1 < P_2) && NoPerm < FullPerm ==> qpRange20(Seq#Index(hist, k_7_1)) && invRecv20(Seq#Index(hist, k_7_1)) == k_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        ((0 <= invRecv20(o_9) && invRecv20(o_9) < P_2) && NoPerm < FullPerm) && qpRange20(o_9) ==> Seq#Index(hist, invRecv20(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_7_1: int ::
        { Seq#Index(hist, k_7_1) } { Seq#Index(hist, k_7_1) }
        0 <= k_7_1 && k_7_1 < P_2 ==> Seq#Index(hist, k_7_1) != null
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
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0))
      if (*) {
        if (0 <= k_34 && k_34 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@137.12--137.160) [166928]"}
            k_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@137.12--137.160) [166929]"}
            k_34 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@137.12--137.160) [166930]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_34), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@137.92--137.125) [166931]"}
              0 <= i;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@137.92--137.125) [166932]"}
              i < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@137.92--137.125) [166933]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@137.92--137.125) [166934]"}
              0 <= j;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@137.92--137.125) [166935]"}
              j < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@137.92--137.125) [166936]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (testHistogram.vpr@137.12--137.160) [166937]"}
            Ref__multidim_index_2(PostHeap, M_1, N, i, j) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (testHistogram.vpr@137.12--137.160) [166938]"}
            Ref__multidim_index_2(PostHeap, M_1, N, i, j) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testHistogram.vpr@137.12--137.160) [166939]"}
            HasDirectPerm(PostMask, Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, N, i, j)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_9_1: int ::
      { Seq#Index(hist, k_9_1) }
      0 <= k_9_1 && k_9_1 < P_2 ==> PostHeap[Seq#Index(hist, k_9_1), Ref__Integer_value] == (if PostHeap[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, N, i, j)), Ref__Integer_value] == k_9_1 then 1 else 0)
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
  
  // -- Translating statement: __flatten_6 := Ref__multidim_index_2(M, N, i, j) -- testHistogram.vpr@146.3--146.51
    
    // -- Check definedness of Ref__multidim_index_2(M, N, i, j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@146.18--146.51) [166940]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testHistogram.vpr@146.18--146.51) [166941]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@146.18--146.51) [166942]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@146.18--146.51) [166943]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testHistogram.vpr@146.18--146.51) [166944]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@146.18--146.51) [166945]"}
          0 <= N;
        // Stop execution
        assume false;
      }
    __flatten_6 := Ref__multidim_index_2(Heap, M_1, N, i, j);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := __flatten_6 -- testHistogram.vpr@147.3--147.29
    __flatten_1 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := matrix[__flatten_1] -- testHistogram.vpr@148.3--148.37
    
    // -- Check definedness of matrix[__flatten_1]
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might be negative. (testHistogram.vpr@148.3--148.37) [166946]"}
        __flatten_1 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might exceed sequence length. (testHistogram.vpr@148.3--148.37) [166947]"}
        __flatten_1 < Seq#Length(matrix_1);
    __flatten_8 := Seq#Index(matrix_1, __flatten_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := hist[__flatten_8.Ref__Integer_value] -- testHistogram.vpr@149.3--149.54
    
    // -- Check definedness of hist[__flatten_8.Ref__Integer_value]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (testHistogram.vpr@149.3--149.54) [166948]"}
        HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
      assert {:msg "  Assignment might fail. Index hist[__flatten_8.Ref__Integer_value] into hist might be negative. (testHistogram.vpr@149.3--149.54) [166949]"}
        Heap[__flatten_8, Ref__Integer_value] >= 0;
      assert {:msg "  Assignment might fail. Index hist[__flatten_8.Ref__Integer_value] into hist might exceed sequence length. (testHistogram.vpr@149.3--149.54) [166950]"}
        Heap[__flatten_8, Ref__Integer_value] < Seq#Length(hist);
    __flatten_7 := Seq#Index(hist, Heap[__flatten_8, Ref__Integer_value]);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := matrix[__flatten_1] -- testHistogram.vpr@150.3--150.38
    
    // -- Check definedness of matrix[__flatten_1]
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might be negative. (testHistogram.vpr@150.3--150.38) [166951]"}
        __flatten_1 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might exceed sequence length. (testHistogram.vpr@150.3--150.38) [166952]"}
        __flatten_1 < Seq#Length(matrix_1);
    __flatten_11 := Seq#Index(matrix_1, __flatten_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_10 := hist[__flatten_11.Ref__Integer_value] -- testHistogram.vpr@151.3--151.56
    
    // -- Check definedness of hist[__flatten_11.Ref__Integer_value]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_11.Ref__Integer_value (testHistogram.vpr@151.3--151.56) [166953]"}
        HasDirectPerm(Mask, __flatten_11, Ref__Integer_value);
      assert {:msg "  Assignment might fail. Index hist[__flatten_11.Ref__Integer_value] into hist might be negative. (testHistogram.vpr@151.3--151.56) [166954]"}
        Heap[__flatten_11, Ref__Integer_value] >= 0;
      assert {:msg "  Assignment might fail. Index hist[__flatten_11.Ref__Integer_value] into hist might exceed sequence length. (testHistogram.vpr@151.3--151.56) [166955]"}
        Heap[__flatten_11, Ref__Integer_value] < Seq#Length(hist);
    __flatten_10 := Seq#Index(hist, Heap[__flatten_11, Ref__Integer_value]);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_9 := __flatten_10.Ref__Integer_value + 1 -- testHistogram.vpr@152.3--152.53
    
    // -- Check definedness of __flatten_10.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_10.Ref__Integer_value (testHistogram.vpr@152.3--152.53) [166956]"}
        HasDirectPerm(Mask, __flatten_10, Ref__Integer_value);
    __flatten_9 := Heap[__flatten_10, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7.Ref__Integer_value := __flatten_9 -- testHistogram.vpr@153.3--153.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_7.Ref__Integer_value (testHistogram.vpr@153.3--153.48) [166957]"}
      FullPerm == Mask[__flatten_7, Ref__Integer_value];
    Heap := Heap[__flatten_7, Ref__Integer_value:=__flatten_9];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Assertion M > 0 might not hold. (testHistogram.vpr@133.11--133.40) [166958]"}
      M_1 > 0;
    assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Assertion N > 0 might not hold. (testHistogram.vpr@133.11--133.40) [166959]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Assertion P > 0 might not hold. (testHistogram.vpr@133.11--133.40) [166960]"}
      P_2 > 0;
    assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Assertion 0 <= i might not hold. (testHistogram.vpr@134.11--134.55) [166961]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Assertion i < M might not hold. (testHistogram.vpr@134.11--134.55) [166962]"}
      i < M_1;
    assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Assertion 0 <= j might not hold. (testHistogram.vpr@134.11--134.55) [166963]"}
      0 <= j;
    assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Assertion j < N might not hold. (testHistogram.vpr@134.11--134.55) [166964]"}
      j < N;
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Fraction 1 / 4 might be negative. (testHistogram.vpr@135.11--135.83) [166965]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testHistogram.vpr@135.11--135.83) [166966]"}
        perm <= Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value:=Mask[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@136.12--136.91) [166967]"}
        (forall k_10: int, k_10_2: int ::
        { neverTriggered21(k_10), neverTriggered21(k_10_2) }
        (((k_10 != k_10_2 && (0 <= k_10 && k_10 < P_2)) && (0 <= k_10_2 && k_10_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_10) != Seq#Index(hist, k_10_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@136.12--136.91) [166968]"}
        (forall k_10: int ::
        { Seq#Index(hist, k_10) } { Seq#Index(hist, k_10) }
        0 <= k_10 && k_10 < P_2 ==> Mask[Seq#Index(hist, k_10), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_10: int ::
        { Seq#Index(hist, k_10) } { Seq#Index(hist, k_10) }
        (0 <= k_10 && k_10 < P_2) && NoPerm < FullPerm ==> qpRange21(Seq#Index(hist, k_10)) && invRecv21(Seq#Index(hist, k_10)) == k_10
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
      if (0 <= k_11 && k_11 < P_2) {
        assert {:msg "  Postcondition of Ref__loop_body_96 might not hold. Assertion hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0) might not hold. (testHistogram.vpr@137.12--137.160) [166969]"}
          Heap[Seq#Index(hist, k_11), Ref__Integer_value] == (if Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value] == k_11 then 1 else 0);
      }
      assume false;
    }
    assume (forall k_12_1: int ::
      { Seq#Index(hist, k_12_1) }
      0 <= k_12_1 && k_12_1 < P_2 ==> Heap[Seq#Index(hist, k_12_1), Ref__Integer_value] == (if Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value] == k_12_1 then 1 else 0)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__histogram
// ==================================================

procedure Ref__histogram(diz: Ref, current_thread_id: int, M_1: int, N: int, matrix_1: (Seq Ref), P_2: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_40: int;
  var k_38: int;
  var j1_21: int;
  var QPMask: MaskType;
  var i1_20: int;
  var j1_14: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_41: int;
  var k_43: int;
  var i1_21: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j1_22: int;
  var i1_13: int;
  var k_44: int;
  var j_4_1: int;
  var k$0: int;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var i1_14: int;
  var j1_23: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var j_6_2: int;
  var k_8: int;
  var j_8_2: int;
  var k_13: int;
  var j_10_2: int;
  var k_16_2: int;
  var i: int;
  var j_13_2: int;
  var i_2: int;
  var j_15_2: int;
  var k_6_2: int;
  var i1_9_2: int;
  var j1_9: int;
  
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
    assume M_1 > 0;
    assume N > 0;
    assume P_2 > 0;
    assume state(Heap, Mask);
    assume M_1 * N <= Seq#Length(matrix_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { matrix[j], matrix[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k])
      if (*) {
        if (0 <= j_40 && (j_40 < M_1 * N && (0 <= k_38 && (k_38 < M_1 * N && j_40 != k_38)))) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogram.vpr@161.12--161.112) [166970]"}
            j_40 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogram.vpr@161.12--161.112) [166971]"}
            j_40 < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might be negative. (testHistogram.vpr@161.12--161.112) [166972]"}
            k_38 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k] into matrix might exceed sequence length. (testHistogram.vpr@161.12--161.112) [166973]"}
            k_38 < Seq#Length(matrix_1);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(matrix_1, j_1), Seq#Index(matrix_1, k_1) }
      0 <= j_1 && (j_1 < M_1 * N && (0 <= k_1 && (k_1 < M_1 * N && j_1 != k_1))) ==> Seq#Index(matrix_1, j_1) != Seq#Index(matrix_1, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } 0 <= j1 && j1 < M * N ==> acc(matrix[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= j1_21 && j1_21 < M_1 * N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (testHistogram.vpr@162.13--162.102) [166974]"}
            j1_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (testHistogram.vpr@162.13--162.102) [166975]"}
            j1_21 < Seq#Length(matrix_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogram.vpr@162.13--162.102) [166976]"}
      (forall j1_1: int, j1_1_1: int ::
      
      (((j1_1 != j1_1_1 && (0 <= j1_1 && j1_1 < M_1 * N)) && (0 <= j1_1_1 && j1_1_1 < M_1 * N)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix_1, j1_1) != Seq#Index(matrix_1, j1_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_1: int ::
        { Seq#Index(matrix_1, j1_1) } { Seq#Index(matrix_1, j1_1) }
        (0 <= j1_1 && j1_1 < M_1 * N) && NoPerm < 1 / 2 ==> qpRange22(Seq#Index(matrix_1, j1_1)) && invRecv22(Seq#Index(matrix_1, j1_1)) == j1_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        ((0 <= invRecv22(o_9) && invRecv22(o_9) < M_1 * N) && NoPerm < 1 / 2) && qpRange22(o_9) ==> Seq#Index(matrix_1, invRecv22(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistogram.vpr@162.13--162.102) [166977]"}
      (forall j1_1: int ::
      { Seq#Index(matrix_1, j1_1) } { Seq#Index(matrix_1, j1_1) }
      0 <= j1_1 && j1_1 < M_1 * N ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_1: int ::
        { Seq#Index(matrix_1, j1_1) } { Seq#Index(matrix_1, j1_1) }
        (0 <= j1_1 && j1_1 < M_1 * N) && 1 / 2 > NoPerm ==> Seq#Index(matrix_1, j1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv22(o_9) && invRecv22(o_9) < M_1 * N) && NoPerm < 1 / 2) && qpRange22(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(matrix_1, invRecv22(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv22(o_9) && invRecv22(o_9) < M_1 * N) && NoPerm < 1 / 2) && qpRange22(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, j1: Int :: { matrix[Ref__multidim_index_2(M, N, i1, j1)] } 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value < P)
      if (*) {
        if (0 <= i1_20 && (i1_20 < M_1 && (0 <= j1_14 && j1_14 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i1 might not hold. (testHistogram.vpr@163.104--163.139) [166978]"}
              0 <= i1_20;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i1 < M might not hold. (testHistogram.vpr@163.104--163.139) [166979]"}
              i1_20 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@163.104--163.139) [166980]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j1 might not hold. (testHistogram.vpr@163.104--163.139) [166981]"}
              0 <= j1_14;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j1 < N might not hold. (testHistogram.vpr@163.104--163.139) [166982]"}
              j1_14 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@163.104--163.139) [166983]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i1, j1)] into matrix might be negative. (testHistogram.vpr@163.13--163.232) [166984]"}
            Ref__multidim_index_2(Heap, M_1, N, i1_20, j1_14) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i1, j1)] into matrix might exceed sequence length. (testHistogram.vpr@163.13--163.232) [166985]"}
            Ref__multidim_index_2(Heap, M_1, N, i1_20, j1_14) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value (testHistogram.vpr@163.13--163.232) [166986]"}
            HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i1_20, j1_14)), Ref__Integer_value);
          if (0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i1_20, j1_14)), Ref__Integer_value]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i1 might not hold. (testHistogram.vpr@163.172--163.207) [166987]"}
                0 <= i1_20;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i1 < M might not hold. (testHistogram.vpr@163.172--163.207) [166988]"}
                i1_20 < M_1;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@163.172--163.207) [166989]"}
                0 <= M_1;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j1 might not hold. (testHistogram.vpr@163.172--163.207) [166990]"}
                0 <= j1_14;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j1 < N might not hold. (testHistogram.vpr@163.172--163.207) [166991]"}
                j1_14 < N;
              assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@163.172--163.207) [166992]"}
                0 <= N;
              // Stop execution
              assume false;
            }
            assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i1, j1)] into matrix might be negative. (testHistogram.vpr@163.13--163.232) [166993]"}
              Ref__multidim_index_2(Heap, M_1, N, i1_20, j1_14) >= 0;
            assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i1, j1)] into matrix might exceed sequence length. (testHistogram.vpr@163.13--163.232) [166994]"}
              Ref__multidim_index_2(Heap, M_1, N, i1_20, j1_14) < Seq#Length(matrix_1);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value (testHistogram.vpr@163.13--163.232) [166995]"}
              HasDirectPerm(Mask, Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i1_20, j1_14)), Ref__Integer_value);
          }
        }
        assume false;
      }
    assume (forall i1_1: int, j1_3_1: int ::
      { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i1_1, j1_3_1)) }
      0 <= i1_1 && (i1_1 < M_1 && (0 <= j1_3_1 && j1_3_1 < N)) ==> 0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i1_1, j1_3_1)), Ref__Integer_value] && Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i1_1, j1_3_1)), Ref__Integer_value] < P_2
    );
    assume state(Heap, Mask);
    assume P_2 <= Seq#Length(hist);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { hist[j], hist[k] } 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k])
      if (*) {
        if (0 <= j_41 && (j_41 < P_2 && (0 <= k_43 && (k_43 < P_2 && j_41 != k_43)))) {
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might be negative. (testHistogram.vpr@165.12--165.104) [166996]"}
            j_41 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[j] into hist might exceed sequence length. (testHistogram.vpr@165.12--165.104) [166997]"}
            j_41 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@165.12--165.104) [166998]"}
            k_43 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@165.12--165.104) [166999]"}
            k_43 < Seq#Length(hist);
        }
        assume false;
      }
    assume (forall j_3: int, k_3: int ::
      { Seq#Index(hist, j_3), Seq#Index(hist, k_3) }
      0 <= j_3 && (j_3 < P_2 && (0 <= k_3 && (k_3 < P_2 && j_3 != k_3))) ==> Seq#Index(hist, j_3) != Seq#Index(hist, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int :: { hist[i1] } 0 <= i1 && i1 < P ==> acc(hist[i1].Ref__Integer_value, write))
      if (*) {
        if (0 <= i1_21 && i1_21 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might be negative. (testHistogram.vpr@166.13--166.96) [167000]"}
            i1_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might exceed sequence length. (testHistogram.vpr@166.13--166.96) [167001]"}
            i1_21 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogram.vpr@166.13--166.96) [167002]"}
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
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } 0 <= j1 && j1 < M * N ==> acc(matrix[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= j1_22 && j1_22 < M_1 * N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (testHistogram.vpr@167.12--167.101) [167003]"}
            j1_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (testHistogram.vpr@167.12--167.101) [167004]"}
            j1_22 < Seq#Length(matrix_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogram.vpr@167.12--167.101) [167005]"}
      (forall j1_5_1: int, j1_5_2: int ::
      
      (((j1_5_1 != j1_5_2 && (0 <= j1_5_1 && j1_5_1 < M_1 * N)) && (0 <= j1_5_2 && j1_5_2 < M_1 * N)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix_1, j1_5_1) != Seq#Index(matrix_1, j1_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j1_5_1: int ::
        { Seq#Index(matrix_1, j1_5_1) } { Seq#Index(matrix_1, j1_5_1) }
        (0 <= j1_5_1 && j1_5_1 < M_1 * N) && NoPerm < 1 / 2 ==> qpRange24(Seq#Index(matrix_1, j1_5_1)) && invRecv24(Seq#Index(matrix_1, j1_5_1)) == j1_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        ((0 <= invRecv24(o_9) && invRecv24(o_9) < M_1 * N) && NoPerm < 1 / 2) && qpRange24(o_9) ==> Seq#Index(matrix_1, invRecv24(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistogram.vpr@167.12--167.101) [167006]"}
      (forall j1_5_1: int ::
      { Seq#Index(matrix_1, j1_5_1) } { Seq#Index(matrix_1, j1_5_1) }
      0 <= j1_5_1 && j1_5_1 < M_1 * N ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_5_1: int ::
        { Seq#Index(matrix_1, j1_5_1) } { Seq#Index(matrix_1, j1_5_1) }
        (0 <= j1_5_1 && j1_5_1 < M_1 * N) && 1 / 2 > NoPerm ==> Seq#Index(matrix_1, j1_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv24(o_9) && invRecv24(o_9) < M_1 * N) && NoPerm < 1 / 2) && qpRange24(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(matrix_1, invRecv24(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv24(o_9) && invRecv24(o_9) < M_1 * N) && NoPerm < 1 / 2) && qpRange24(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i1: Int :: { hist[i1] } 0 <= i1 && i1 < P ==> acc(hist[i1].Ref__Integer_value, write))
      if (*) {
        if (0 <= i1_13 && i1_13 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might be negative. (testHistogram.vpr@168.12--168.95) [167007]"}
            i1_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might exceed sequence length. (testHistogram.vpr@168.12--168.95) [167008]"}
            i1_13 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogram.vpr@168.12--168.95) [167009]"}
      (forall i1_5_2: int, i1_5_3: int ::
      
      (((i1_5_2 != i1_5_3 && (0 <= i1_5_2 && i1_5_2 < P_2)) && (0 <= i1_5_3 && i1_5_3 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_5_2) != Seq#Index(hist, i1_5_3)
    );
    
    // -- Define Inverse Function
      assume (forall i1_5_2: int ::
        { Seq#Index(hist, i1_5_2) } { Seq#Index(hist, i1_5_2) }
        (0 <= i1_5_2 && i1_5_2 < P_2) && NoPerm < FullPerm ==> qpRange25(Seq#Index(hist, i1_5_2)) && invRecv25(Seq#Index(hist, i1_5_2)) == i1_5_2
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        ((0 <= invRecv25(o_9) && invRecv25(o_9) < P_2) && NoPerm < FullPerm) && qpRange25(o_9) ==> Seq#Index(hist, invRecv25(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i1_5_2: int ::
        { Seq#Index(hist, i1_5_2) } { Seq#Index(hist, i1_5_2) }
        0 <= i1_5_2 && i1_5_2 < P_2 ==> Seq#Index(hist, i1_5_2) != null
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
    
    // -- Check definedness of (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k))
      if (*) {
        if (0 <= k_44 && k_44 < P_2) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram.vpr@170.12--170.117) [167010]"}
            k_44 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram.vpr@170.12--170.117) [167011]"}
            k_44 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@170.12--170.117) [167012]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_44), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= M * N might not hold. (testHistogram.vpr@170.84--170.116) [167013]"}
              0 <= M_1 * N;
            assert {:msg "  Precondition of function count_array might not hold. Assertion M * N <= |matrix| might not hold. (testHistogram.vpr@170.84--170.116) [167014]"}
              M_1 * N <= Seq#Length(matrix_1);
            if (*) {
              if (0 <= j_4_1 && (j_4_1 < M_1 * N && (0 <= k$0 && (k$0 < M_1 * N && j_4_1 != k$0)))) {
                assert {:msg "  Precondition of function count_array might not hold. Assertion matrix[j] != matrix[k$0] might not hold. (testHistogram.vpr@170.84--170.116) [167015]"}
                  Seq#Index(matrix_1, j_4_1) != Seq#Index(matrix_1, k$0);
              }
              assume false;
            }
            assume (forall j_5_1_1: int, k$0_1_1_1: int ::
              { Seq#Index(matrix_1, j_5_1_1), Seq#Index(matrix_1, k$0_1_1_1) }
              0 <= j_5_1_1 && (j_5_1_1 < M_1 * N && (0 <= k$0_1_1_1 && (k$0_1_1_1 < M_1 * N && j_5_1_1 != k$0_1_1_1))) ==> Seq#Index(matrix_1, j_5_1_1) != Seq#Index(matrix_1, k$0_1_1_1)
            );
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogram.vpr@170.84--170.116) [167016]"}
              (forall k$0_2: int ::
              
              0 <= k$0_2 && k$0_2 < M_1 * N ==> PostMask[Seq#Index(matrix_1, k$0_2), Ref__Integer_value] > NoPerm
            );
            assume (forall k$0_2: int ::
              
              0 <= k$0_2 && k$0_2 < M_1 * N ==> wildcard < PostMask[Seq#Index(matrix_1, k$0_2), Ref__Integer_value]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testHistogram.vpr@170.84--170.116) [167017]"}
                (forall k$0_2: int ::
                { Seq#Index(matrix_1, k$0_2) } { Seq#Index(matrix_1, k$0_2) }
                (0 <= k$0_2 && k$0_2 < M_1 * N) && dummyFunction(PostHeap[Seq#Index(matrix_1, k$0_2), Ref__Integer_value]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver matrix[k$0] is injective
              assert {:msg "  Precondition of function count_array might not hold. Quantified resource matrix[k$0].Ref__Integer_value might not be injective. (testHistogram.vpr@170.84--170.116) [167018]"}
                (forall k$0_2: int, k$0_2_1: int ::
                { neverTriggered26(k$0_2), neverTriggered26(k$0_2_1) }
                (((k$0_2 != k$0_2_1 && (0 <= k$0_2 && k$0_2 < M_1 * N)) && (0 <= k$0_2_1 && k$0_2_1 < M_1 * N)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(matrix_1, k$0_2) != Seq#Index(matrix_1, k$0_2_1)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogram.vpr@170.84--170.116) [167019]"}
                (forall k$0_2: int ::
                { Seq#Index(matrix_1, k$0_2) } { Seq#Index(matrix_1, k$0_2) }
                0 <= k$0_2 && k$0_2 < M_1 * N ==> wildcard > NoPerm ==> PostMask[Seq#Index(matrix_1, k$0_2), Ref__Integer_value] > NoPerm
              );
            
            // -- assumptions for inverse of receiver matrix[k$0]
              assume (forall k$0_2: int ::
                { Seq#Index(matrix_1, k$0_2) } { Seq#Index(matrix_1, k$0_2) }
                (0 <= k$0_2 && k$0_2 < M_1 * N) && NoPerm < wildcard ==> qpRange26(Seq#Index(matrix_1, k$0_2)) && invRecv26(Seq#Index(matrix_1, k$0_2)) == k$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv26(o_9) }
                (0 <= invRecv26(o_9) && invRecv26(o_9) < M_1 * N) && (NoPerm < wildcard && qpRange26(o_9)) ==> Seq#Index(matrix_1, invRecv26(o_9)) == o_9
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
      0 <= k_5 && k_5 < P_2 ==> PostHeap[Seq#Index(hist, k_5), Ref__Integer_value] == count_array(PostHeap, 0, M_1 * N, matrix_1, k_5)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i1: Int, j1: Int :: { old(Ref__multidim_index_2(M, N, i1, j1)) } { old(matrix[Ref__multidim_index_2(M, N, i1, j1)]) } 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value))
      if (*) {
        if (0 <= i1_14 && (i1_14 < M_1 && (0 <= j1_23 && j1_23 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i1 might not hold. (testHistogram.vpr@171.98--171.133) [167020]"}
              0 <= i1_14;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i1 < M might not hold. (testHistogram.vpr@171.98--171.133) [167021]"}
              i1_14 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@171.98--171.133) [167022]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j1 might not hold. (testHistogram.vpr@171.98--171.133) [167023]"}
              0 <= j1_23;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j1 < N might not hold. (testHistogram.vpr@171.98--171.133) [167024]"}
              j1_23 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@171.98--171.133) [167025]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i1, j1)] into matrix might be negative. (testHistogram.vpr@171.12--171.225) [167026]"}
            Ref__multidim_index_2(PostHeap, M_1, N, i1_14, j1_23) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i1, j1)] into matrix might exceed sequence length. (testHistogram.vpr@171.12--171.225) [167027]"}
            Ref__multidim_index_2(PostHeap, M_1, N, i1_14, j1_23) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value (testHistogram.vpr@171.12--171.225) [167028]"}
            HasDirectPerm(PostMask, Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, N, i1_14, j1_23)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i1 might not hold. (testHistogram.vpr@171.168--171.203) [167029]"}
              0 <= i1_14;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i1 < M might not hold. (testHistogram.vpr@171.168--171.203) [167030]"}
              i1_14 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testHistogram.vpr@171.168--171.203) [167031]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j1 might not hold. (testHistogram.vpr@171.168--171.203) [167032]"}
              0 <= j1_23;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j1 < N might not hold. (testHistogram.vpr@171.168--171.203) [167033]"}
              j1_23 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testHistogram.vpr@171.168--171.203) [167034]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i1, j1)] into matrix might be negative. (testHistogram.vpr@171.12--171.225) [167035]"}
            Ref__multidim_index_2(oldHeap, M_1, N, i1_14, j1_23) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i1, j1)] into matrix might exceed sequence length. (testHistogram.vpr@171.12--171.225) [167036]"}
            Ref__multidim_index_2(oldHeap, M_1, N, i1_14, j1_23) < Seq#Length(matrix_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value (testHistogram.vpr@171.12--171.225) [167037]"}
            HasDirectPerm(oldMask, Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, N, i1_14, j1_23)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i1_7_2: int, j1_7_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i1_7_2, j1_7_1) } { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i1_7_2, j1_7_1)) }
      0 <= i1_7_2 && (i1_7_2 < M_1 && (0 <= j1_7_1 && j1_7_1 < N)) ==> PostHeap[Seq#Index(matrix_1, Ref__multidim_index_2(PostHeap, M_1, N, i1_7_2, j1_7_1)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, N, i1_7_2, j1_7_1)), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_76(diz, current_thread_id, P, hist) -- testHistogram.vpr@173.3--173.53
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_76 might not hold. Assertion diz != null might not hold. (testHistogram.vpr@173.3--173.53) [167038]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_76 might not hold. Assertion current_thread_id >= 0 might not hold. (testHistogram.vpr@173.3--173.53) [167039]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__loop_main_76 might not hold. Assertion P <= |hist| might not hold. (testHistogram.vpr@173.3--173.53) [167040]"}
        P_2 <= Seq#Length(hist);
      if (*) {
        if (0 <= j_6_2 && (j_6_2 < P_2 && (0 <= k_8 && (k_8 < P_2 && j_6_2 != k_8)))) {
          assert {:msg "  The precondition of method Ref__loop_main_76 might not hold. Assertion hist[j] != hist[k] might not hold. (testHistogram.vpr@173.3--173.53) [167041]"}
            Seq#Index(hist, j_6_2) != Seq#Index(hist, k_8);
        }
        assume false;
      }
      assume (forall j_7_1_1: int, k_9_1_1: int ::
        { Seq#Index(hist, j_7_1_1), Seq#Index(hist, k_9_1_1) }
        0 <= j_7_1_1 && (j_7_1_1 < P_2 && (0 <= k_9_1_1 && (k_9_1_1 < P_2 && j_7_1_1 != k_9_1_1))) ==> Seq#Index(hist, j_7_1_1) != Seq#Index(hist, k_9_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver hist[k] is injective
        assert {:msg "  The precondition of method Ref__loop_main_76 might not hold. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@173.3--173.53) [167042]"}
          (forall k_10: int, k_10_2: int ::
          { neverTriggered29(k_10), neverTriggered29(k_10_2) }
          (((k_10 != k_10_2 && (0 <= k_10 && k_10 < P_2)) && (0 <= k_10_2 && k_10_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_10) != Seq#Index(hist, k_10_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_76 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@173.3--173.53) [167043]"}
          (forall k_10: int ::
          { Seq#Index(hist, k_10) } { Seq#Index(hist, k_10) }
          0 <= k_10 && k_10 < P_2 ==> Mask[Seq#Index(hist, k_10), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver hist[k]
        assume (forall k_10: int ::
          { Seq#Index(hist, k_10) } { Seq#Index(hist, k_10) }
          (0 <= k_10 && k_10 < P_2) && NoPerm < FullPerm ==> qpRange29(Seq#Index(hist, k_10)) && invRecv29(Seq#Index(hist, k_10)) == k_10
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
      assert {:msg "  Method call might fail. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@173.3--173.53) [167044]"}
        (forall k_11: int, k_11_1: int ::
        
        (((k_11 != k_11_1 && (0 <= k_11 && k_11 < P_2)) && (0 <= k_11_1 && k_11_1 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_11) != Seq#Index(hist, k_11_1)
      );
      
      // -- Define Inverse Function
        assume (forall k_11: int ::
          { Seq#Index(hist, k_11) } { Seq#Index(hist, k_11) }
          (0 <= k_11 && k_11 < P_2) && NoPerm < FullPerm ==> qpRange30(Seq#Index(hist, k_11)) && invRecv30(Seq#Index(hist, k_11)) == k_11
        );
        assume (forall o_9: Ref ::
          { invRecv30(o_9) }
          ((0 <= invRecv30(o_9) && invRecv30(o_9) < P_2) && NoPerm < FullPerm) && qpRange30(o_9) ==> Seq#Index(hist, invRecv30(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_11: int ::
          { Seq#Index(hist, k_11) } { Seq#Index(hist, k_11) }
          0 <= k_11 && k_11 < P_2 ==> Seq#Index(hist, k_11) != null
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
      assume (forall k_12: int ::
        { Seq#Index(hist, k_12) }
        0 <= k_12 && k_12 < P_2 ==> Heap[Seq#Index(hist, k_12), Ref__Integer_value] == 0
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__loop_main_96(diz, current_thread_id, P, N, M, matrix, hist) -- testHistogram.vpr@174.3--174.67
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion diz != null might not hold. (testHistogram.vpr@174.3--174.67) [167045]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion current_thread_id >= 0 might not hold. (testHistogram.vpr@174.3--174.67) [167046]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion M > 0 might not hold. (testHistogram.vpr@174.3--174.67) [167047]"}
        M_1 > 0;
      assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion N > 0 might not hold. (testHistogram.vpr@174.3--174.67) [167048]"}
        N > 0;
      assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion P > 0 might not hold. (testHistogram.vpr@174.3--174.67) [167049]"}
        P_2 > 0;
      assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion P <= |hist| might not hold. (testHistogram.vpr@174.3--174.67) [167050]"}
        P_2 <= Seq#Length(hist);
      if (*) {
        if (0 <= j_8_2 && (j_8_2 < P_2 && (0 <= k_13 && (k_13 < P_2 && j_8_2 != k_13)))) {
          assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion hist[j] != hist[k] might not hold. (testHistogram.vpr@174.3--174.67) [167051]"}
            Seq#Index(hist, j_8_2) != Seq#Index(hist, k_13);
        }
        assume false;
      }
      assume (forall j_9_1_1: int, k_14_1: int ::
        { Seq#Index(hist, j_9_1_1), Seq#Index(hist, k_14_1) }
        0 <= j_9_1_1 && (j_9_1_1 < P_2 && (0 <= k_14_1 && (k_14_1 < P_2 && j_9_1_1 != k_14_1))) ==> Seq#Index(hist, j_9_1_1) != Seq#Index(hist, k_14_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver hist[k] is injective
        assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@174.3--174.67) [167052]"}
          (forall k_15: int, k_15_2: int ::
          { neverTriggered31(k_15), neverTriggered31(k_15_2) }
          (((k_15 != k_15_2 && (0 <= k_15 && k_15 < P_2)) && (0 <= k_15_2 && k_15_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_15) != Seq#Index(hist, k_15_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram.vpr@174.3--174.67) [167053]"}
          (forall k_15: int ::
          { Seq#Index(hist, k_15) } { Seq#Index(hist, k_15) }
          0 <= k_15 && k_15 < P_2 ==> Mask[Seq#Index(hist, k_15), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver hist[k]
        assume (forall k_15: int ::
          { Seq#Index(hist, k_15) } { Seq#Index(hist, k_15) }
          (0 <= k_15 && k_15 < P_2) && NoPerm < FullPerm ==> qpRange31(Seq#Index(hist, k_15)) && invRecv31(Seq#Index(hist, k_15)) == k_15
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
      assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion M * N <= |matrix| might not hold. (testHistogram.vpr@174.3--174.67) [167054]"}
        M_1 * N <= Seq#Length(matrix_1);
      if (*) {
        if (0 <= j_10_2 && (j_10_2 < M_1 * N && (0 <= k_16_2 && (k_16_2 < M_1 * N && j_10_2 != k_16_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion matrix[j] != matrix[k] might not hold. (testHistogram.vpr@174.3--174.67) [167055]"}
            Seq#Index(matrix_1, j_10_2) != Seq#Index(matrix_1, k_16_2);
        }
        assume false;
      }
      assume (forall j_11_1_1: int, k_17_1: int ::
        { Seq#Index(matrix_1, j_11_1_1), Seq#Index(matrix_1, k_17_1) }
        0 <= j_11_1_1 && (j_11_1_1 < M_1 * N && (0 <= k_17_1 && (k_17_1 < M_1 * N && j_11_1_1 != k_17_1))) ==> Seq#Index(matrix_1, j_11_1_1) != Seq#Index(matrix_1, k_17_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Fraction 1 / 4 might be negative. (testHistogram.vpr@174.3--174.67) [167056]"}
          (forall j_12_2: int ::
          { Seq#Index(matrix_1, j_12_2) } { Seq#Index(matrix_1, j_12_2) }
          (0 <= j_12_2 && j_12_2 < M_1 * N) && dummyFunction(Heap[Seq#Index(matrix_1, j_12_2), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
        );
      
      // -- check if receiver matrix[j] is injective
        assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram.vpr@174.3--174.67) [167057]"}
          (forall j_12_2: int, j_12_3: int ::
          { neverTriggered32(j_12_2), neverTriggered32(j_12_3) }
          (((j_12_2 != j_12_3 && (0 <= j_12_2 && j_12_2 < M_1 * N)) && (0 <= j_12_3 && j_12_3 < M_1 * N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix_1, j_12_2) != Seq#Index(matrix_1, j_12_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (testHistogram.vpr@174.3--174.67) [167058]"}
          (forall j_12_2: int ::
          { Seq#Index(matrix_1, j_12_2) } { Seq#Index(matrix_1, j_12_2) }
          0 <= j_12_2 && j_12_2 < M_1 * N ==> Mask[Seq#Index(matrix_1, j_12_2), Ref__Integer_value] >= 1 / 4
        );
      
      // -- assumptions for inverse of receiver matrix[j]
        assume (forall j_12_2: int ::
          { Seq#Index(matrix_1, j_12_2) } { Seq#Index(matrix_1, j_12_2) }
          (0 <= j_12_2 && j_12_2 < M_1 * N) && NoPerm < 1 / 4 ==> qpRange32(Seq#Index(matrix_1, j_12_2)) && invRecv32(Seq#Index(matrix_1, j_12_2)) == j_12_2
        );
        assume (forall o_9: Ref ::
          { invRecv32(o_9) }
          (0 <= invRecv32(o_9) && invRecv32(o_9) < M_1 * N) && (NoPerm < 1 / 4 && qpRange32(o_9)) ==> Seq#Index(matrix_1, invRecv32(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv32(o_9) && invRecv32(o_9) < M_1 * N) && (NoPerm < 1 / 4 && qpRange32(o_9)) ==> Seq#Index(matrix_1, invRecv32(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv32(o_9) && invRecv32(o_9) < M_1 * N) && (NoPerm < 1 / 4 && qpRange32(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (0 <= i && (i < M_1 && (0 <= j_13_2 && j_13_2 < N))) {
          assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion Ref__multidim_index_2(M, N, i, j) < |matrix| might not hold. (testHistogram.vpr@174.3--174.67) [167059]"}
            Ref__multidim_index_2(Heap, M_1, N, i, j_13_2) < Seq#Length(matrix_1);
        }
        assume false;
      }
      assume (forall i_1_1_1: int, j_14_1: int ::
        { Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_1_1_1, j_14_1) }
        0 <= i_1_1_1 && (i_1_1_1 < M_1 && (0 <= j_14_1 && j_14_1 < N)) ==> Ref__multidim_index_2(Heap, M_1, N, i_1_1_1, j_14_1) < Seq#Length(matrix_1)
      );
      if (*) {
        if (0 <= i_2 && (i_2 < M_1 && (0 <= j_15_2 && j_15_2 < N))) {
          assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value might not hold. (testHistogram.vpr@174.3--174.67) [167060]"}
            0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_2, j_15_2)), Ref__Integer_value];
          assert {:msg "  The precondition of method Ref__loop_main_96 might not hold. Assertion matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P might not hold. (testHistogram.vpr@174.3--174.67) [167061]"}
            Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_2, j_15_2)), Ref__Integer_value] < P_2;
        }
        assume false;
      }
      assume (forall i_3_1: int, j_16_1_1: int ::
        { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_3_1, j_16_1_1)) }
        0 <= i_3_1 && (i_3_1 < M_1 && (0 <= j_16_1_1 && j_16_1_1 < N)) ==> 0 <= Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_3_1, j_16_1_1)), Ref__Integer_value] && Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i_3_1, j_16_1_1)), Ref__Integer_value] < P_2
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume M_1 > 0;
      assume N > 0;
      assume P_2 > 0;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram.vpr@174.3--174.67) [167062]"}
        (forall j_17_2: int, j_17_3: int ::
        
        (((j_17_2 != j_17_3 && (0 <= j_17_2 && j_17_2 < M_1 * N)) && (0 <= j_17_3 && j_17_3 < M_1 * N)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix_1, j_17_2) != Seq#Index(matrix_1, j_17_3)
      );
      
      // -- Define Inverse Function
        assume (forall j_17_2: int ::
          { Seq#Index(matrix_1, j_17_2) } { Seq#Index(matrix_1, j_17_2) }
          (0 <= j_17_2 && j_17_2 < M_1 * N) && NoPerm < 1 / 4 ==> qpRange33(Seq#Index(matrix_1, j_17_2)) && invRecv33(Seq#Index(matrix_1, j_17_2)) == j_17_2
        );
        assume (forall o_9: Ref ::
          { invRecv33(o_9) }
          ((0 <= invRecv33(o_9) && invRecv33(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange33(o_9) ==> Seq#Index(matrix_1, invRecv33(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (testHistogram.vpr@174.3--174.67) [167063]"}
        (forall j_17_2: int ::
        { Seq#Index(matrix_1, j_17_2) } { Seq#Index(matrix_1, j_17_2) }
        0 <= j_17_2 && j_17_2 < M_1 * N ==> 1 / 4 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall j_17_2: int ::
          { Seq#Index(matrix_1, j_17_2) } { Seq#Index(matrix_1, j_17_2) }
          (0 <= j_17_2 && j_17_2 < M_1 * N) && 1 / 4 > NoPerm ==> Seq#Index(matrix_1, j_17_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv33(o_9) && invRecv33(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange33(o_9) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix_1, invRecv33(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv33(o_9) && invRecv33(o_9) < M_1 * N) && NoPerm < 1 / 4) && qpRange33(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram.vpr@174.3--174.67) [167064]"}
        (forall k_18: int, k_18_2: int ::
        
        (((k_18 != k_18_2 && (0 <= k_18 && k_18 < P_2)) && (0 <= k_18_2 && k_18_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_18) != Seq#Index(hist, k_18_2)
      );
      
      // -- Define Inverse Function
        assume (forall k_18: int ::
          { Seq#Index(hist, k_18) } { Seq#Index(hist, k_18) }
          (0 <= k_18 && k_18 < P_2) && NoPerm < FullPerm ==> qpRange34(Seq#Index(hist, k_18)) && invRecv34(Seq#Index(hist, k_18)) == k_18
        );
        assume (forall o_9: Ref ::
          { invRecv34(o_9) }
          ((0 <= invRecv34(o_9) && invRecv34(o_9) < P_2) && NoPerm < FullPerm) && qpRange34(o_9) ==> Seq#Index(hist, invRecv34(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_18: int ::
          { Seq#Index(hist, k_18) } { Seq#Index(hist, k_18) }
          0 <= k_18 && k_18 < P_2 ==> Seq#Index(hist, k_18) != null
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
      assume (forall k_19_1: int ::
        { Seq#Index(hist, k_19_1) }
        0 <= k_19_1 && k_19_1 < P_2 ==> Heap[Seq#Index(hist, k_19_1), Ref__Integer_value] == PreCallHeap[Seq#Index(hist, k_19_1), Ref__Integer_value] + count_array(Heap, 0, M_1 * N, matrix_1, k_19_1)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__histogram might not hold. Fraction 1 / 2 might be negative. (testHistogram.vpr@167.12--167.101) [167065]"}
        (forall j1_8: int ::
        { Seq#Index(matrix_1, j1_8) } { Seq#Index(matrix_1, j1_8) }
        (0 <= j1_8 && j1_8 < M_1 * N) && dummyFunction(Heap[Seq#Index(matrix_1, j1_8), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver matrix[j1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogram.vpr@167.12--167.101) [167066]"}
        (forall j1_8: int, j1_8_1: int ::
        { neverTriggered27(j1_8), neverTriggered27(j1_8_1) }
        (((j1_8 != j1_8_1 && (0 <= j1_8 && j1_8 < M_1 * N)) && (0 <= j1_8_1 && j1_8_1 < M_1 * N)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix_1, j1_8) != Seq#Index(matrix_1, j1_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__histogram might not hold. There might be insufficient permission to access matrix[j1].Ref__Integer_value (testHistogram.vpr@167.12--167.101) [167067]"}
        (forall j1_8: int ::
        { Seq#Index(matrix_1, j1_8) } { Seq#Index(matrix_1, j1_8) }
        0 <= j1_8 && j1_8 < M_1 * N ==> Mask[Seq#Index(matrix_1, j1_8), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver matrix[j1]
      assume (forall j1_8: int ::
        { Seq#Index(matrix_1, j1_8) } { Seq#Index(matrix_1, j1_8) }
        (0 <= j1_8 && j1_8 < M_1 * N) && NoPerm < 1 / 2 ==> qpRange27(Seq#Index(matrix_1, j1_8)) && invRecv27(Seq#Index(matrix_1, j1_8)) == j1_8
      );
      assume (forall o_9: Ref ::
        { invRecv27(o_9) }
        (0 <= invRecv27(o_9) && invRecv27(o_9) < M_1 * N) && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> Seq#Index(matrix_1, invRecv27(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv27(o_9) && invRecv27(o_9) < M_1 * N) && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> Seq#Index(matrix_1, invRecv27(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv27(o_9) && invRecv27(o_9) < M_1 * N) && (NoPerm < 1 / 2 && qpRange27(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[i1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogram.vpr@168.12--168.95) [167068]"}
        (forall i1_8_1: int, i1_8_2: int ::
        { neverTriggered28(i1_8_1), neverTriggered28(i1_8_2) }
        (((i1_8_1 != i1_8_2 && (0 <= i1_8_1 && i1_8_1 < P_2)) && (0 <= i1_8_2 && i1_8_2 < P_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_8_1) != Seq#Index(hist, i1_8_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__histogram might not hold. There might be insufficient permission to access hist[i1].Ref__Integer_value (testHistogram.vpr@168.12--168.95) [167069]"}
        (forall i1_8_1: int ::
        { Seq#Index(hist, i1_8_1) } { Seq#Index(hist, i1_8_1) }
        0 <= i1_8_1 && i1_8_1 < P_2 ==> Mask[Seq#Index(hist, i1_8_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[i1]
      assume (forall i1_8_1: int ::
        { Seq#Index(hist, i1_8_1) } { Seq#Index(hist, i1_8_1) }
        (0 <= i1_8_1 && i1_8_1 < P_2) && NoPerm < FullPerm ==> qpRange28(Seq#Index(hist, i1_8_1)) && invRecv28(Seq#Index(hist, i1_8_1)) == i1_8_1
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
      if (0 <= k_6_2 && k_6_2 < P_2) {
        assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k) might not hold. (testHistogram.vpr@170.12--170.117) [167070]"}
          Heap[Seq#Index(hist, k_6_2), Ref__Integer_value] == count_array(Heap, 0, M_1 * N, matrix_1, k_6_2);
      }
      assume false;
    }
    assume (forall k_7_1_1: int ::
      { Seq#Index(hist, k_7_1_1) }
      0 <= k_7_1_1 && k_7_1_1 < P_2 ==> Heap[Seq#Index(hist, k_7_1_1), Ref__Integer_value] == count_array(Heap, 0, M_1 * N, matrix_1, k_7_1_1)
    );
    if (*) {
      if (0 <= i1_9_2 && (i1_9_2 < M_1 && (0 <= j1_9 && j1_9 < N))) {
        assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value) might not hold. (testHistogram.vpr@171.12--171.225) [167071]"}
          Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i1_9_2, j1_9)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, N, i1_9_2, j1_9)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i1_10_1_1: int, j1_10_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i1_10_1_1, j1_10_1) } { Seq#Index(matrix_1, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i1_10_1_1, j1_10_1)) }
      0 <= i1_10_1_1 && (i1_10_1_1 < M_1 && (0 <= j1_10_1 && j1_10_1 < N)) ==> Heap[Seq#Index(matrix_1, Ref__multidim_index_2(Heap, M_1, N, i1_10_1_1, j1_10_1)), Ref__Integer_value] == oldHeap[Seq#Index(matrix_1, Ref__multidim_index_2(oldHeap, M_1, N, i1_10_1_1, j1_10_1)), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}