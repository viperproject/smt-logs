// 
// Translation of Viper program.
// 
// Date:         2025-01-13 17:55:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram-old.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram-old-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_13: Ref, f_18: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_13, f_18] }
  Heap[o_13, $allocated] ==> Heap[Heap[o_13, f_18], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_14: Ref, f_19: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_14, f_19] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_14, f_19) ==> Heap[o_14, f_19] == ExhaleHeap[o_14, f_19]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6), ExhaleHeap[null, PredicateMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> Heap[null, PredicateMaskField(pm_f_6)] == ExhaleHeap[null, PredicateMaskField(pm_f_6)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_6, f_19] }
    Heap[null, PredicateMaskField(pm_f_6)][o2_6, f_19] ==> Heap[o2_6, f_19] == ExhaleHeap[o2_6, f_19]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6), ExhaleHeap[null, WandMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> Heap[null, WandMaskField(pm_f_6)] == ExhaleHeap[null, WandMaskField(pm_f_6)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_6, f_19] }
    Heap[null, WandMaskField(pm_f_6)][o2_6, f_19] ==> Heap[o2_6, f_19] == ExhaleHeap[o2_6, f_19]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_14: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_14, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_14, $allocated] ==> ExhaleHeap[o_14, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_13: Ref, f_13: (Field A B), v: B ::
  { Heap[o_13, f_13:=v] }
  succHeap(Heap, Heap[o_13, f_13:=v])
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

function  neverTriggered1(k_4_1: int): bool;
function  neverTriggered2(k_5: int): bool;
function  neverTriggered3(k_4_1: int): bool;
function  neverTriggered4(k_5: int): bool;
function  neverTriggered5(k_4_1: int): bool;
function  neverTriggered6(k_5: int): bool;
function  neverTriggered7(k_4_1: int): bool;
function  neverTriggered8(k_5: int): bool;
function  neverTriggered9(k_1_1: int): bool;
function  neverTriggered10(k_3: int): bool;
function  neverTriggered11(k_6: int): bool;
function  neverTriggered12(k_1_1: int): bool;
function  neverTriggered13(j_1: int): bool;
function  neverTriggered14(j_3_1: int): bool;
function  neverTriggered15(k_3: int): bool;
function  neverTriggered16(k$0: int): bool;
function  neverTriggered17(j_4_1: int): bool;
function  neverTriggered18(k_6: int): bool;
function  neverTriggered19(k_1_1: int): bool;
function  neverTriggered20(k_5: int): bool;
function  neverTriggered21(k_8: int): bool;
function  neverTriggered22(j1_1: int): bool;
function  neverTriggered23(i1_1_1: int): bool;
function  neverTriggered24(j1_3: int): bool;
function  neverTriggered25(i1_3: int): bool;
function  neverTriggered26(k$0: int): bool;
function  neverTriggered27(j1_4_1: int): bool;
function  neverTriggered28(i1_4_1: int): bool;
function  neverTriggered29(k_4_1: int): bool;
function  neverTriggered30(k_5: int): bool;
function  neverTriggered31(k_7_1: int): bool;
function  neverTriggered32(j_9: int): bool;
function  neverTriggered33(j_1: int): bool;
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
// - height 5: count_list
// - height 4: sum_list
// - height 3: count_array
// - height 2: sum_array
// - height 1: count_square
// - height 0: sum_square
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram-old.vpr@7.1--12.2) [54099]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram-old.vpr@7.1--12.2) [54100]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (testHistogram-old.vpr@11.21--11.44) [54101]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (testHistogram-old.vpr@11.21--11.44) [54102]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (testHistogram-old.vpr@11.21--11.44) [54103]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> 0 <= lo && (lo <= i && i <= hi) ==> sum_array(Heap, i, lo, hi, ar) == (if i < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] + sum_array'(Heap, i + 1, lo, hi, ar) else 0)
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
    assume 0 <= lo;
    assume lo <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [lo..hi)) } { ar[k] } (k in [lo..hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (Seq#Contains(Seq#Range(lo, hi), k_1)) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram-old.vpr@16.13--16.89) [54104]"}
            k_1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram-old.vpr@16.13--16.89) [54105]"}
            k_1 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@16.13--16.89) [54106]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && Seq#Contains(Seq#Range(lo, hi), k_4_1)) && Seq#Contains(Seq#Range(lo, hi), k_4_2)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_4_1) } { Seq#Contains(Seq#Range(lo, hi), k_4_1) } { Seq#Index(ar, k_4_1) }
        Seq#Contains(Seq#Range(lo, hi), k_4_1) ==> qpRange1(Seq#Index(ar, k_4_1)) && invRecv1(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        Seq#Contains(Seq#Range(lo, hi), invRecv1(o_4)) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_4_1) } { Seq#Contains(Seq#Range(lo, hi), k_4_1) } { Seq#Index(ar, k_4_1) }
        Seq#Contains(Seq#Range(lo, hi), k_4_1) ==> Seq#Index(ar, k_4_1) != null
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram-old.vpr@14.1--19.2) [54107]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram-old.vpr@14.1--19.2) [54108]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogram-old.vpr@14.1--19.2) [54109]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (testHistogram-old.vpr@18.40--18.68) [54110]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (testHistogram-old.vpr@18.40--18.68) [54111]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (testHistogram-old.vpr@18.40--18.68) [54112]"}
            i + 1 <= hi;
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram-old.vpr@18.40--18.68) [54113]"}
            (forall k_5: int ::
            
            Seq#Contains(Seq#Range(lo, hi), k_5) ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            Seq#Contains(Seq#Range(lo, hi), k_5) ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (testHistogram-old.vpr@18.40--18.68) [54114]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_5) } { Seq#Contains(Seq#Range(lo, hi), k_5) } { Seq#Index(ar, k_5) }
              Seq#Contains(Seq#Range(lo, hi), k_5) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@18.40--18.68) [54115]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered2(k_5), neverTriggered2(k_5_1) }
              (((k_5 != k_5_1 && Seq#Contains(Seq#Range(lo, hi), k_5)) && Seq#Contains(Seq#Range(lo, hi), k_5_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram-old.vpr@18.40--18.68) [54116]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_5) } { Seq#Contains(Seq#Range(lo, hi), k_5) } { Seq#Index(ar, k_5) }
              Seq#Contains(Seq#Range(lo, hi), k_5) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#ContainsTrigger(Seq#Range(lo, hi), k_5) } { Seq#Contains(Seq#Range(lo, hi), k_5) } { Seq#Index(ar, k_5) }
              Seq#Contains(Seq#Range(lo, hi), k_5) && NoPerm < wildcard ==> qpRange2(Seq#Index(ar, k_5)) && invRecv2(Seq#Index(ar, k_5)) == k_5
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax)) ==> sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) == (if i < vmax then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] else 0) + sum_square'(Heap, i + 1, lo, hi, step, vmin, vmax, ar) else 0)
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
  var k_2: int;
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
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_2) {
          if (k_2 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogram-old.vpr@24.13--24.136) [54117]"}
              step != 0;
            if (lo <= k_2 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogram-old.vpr@24.13--24.136) [54118]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_2 && (k_2 < vmax && (lo <= k_2 mod step && k_2 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram-old.vpr@24.13--24.136) [54119]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram-old.vpr@24.13--24.136) [54120]"}
            k_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@24.13--24.136) [54121]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)))) && (vmin <= k_4_2 && (k_4_2 < vmax && (lo <= k_4_2 mod step && k_4_2 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> qpRange3(Seq#Index(ar, k_4_1)) && invRecv3(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4) ==> Seq#Index(ar, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> Seq#Index(ar, k_4_1) != null
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogram-old.vpr@21.1--27.2) [54122]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogram-old.vpr@21.1--27.2) [54123]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram-old.vpr@21.1--27.2) [54124]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram-old.vpr@21.1--27.2) [54125]"}
            i < Seq#Length(ar);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogram-old.vpr@21.1--27.2) [54126]"}
            HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (testHistogram-old.vpr@26.85--26.130) [54127]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (testHistogram-old.vpr@26.85--26.130) [54128]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (testHistogram-old.vpr@26.85--26.130) [54129]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (testHistogram-old.vpr@26.85--26.130) [54130]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (testHistogram-old.vpr@26.85--26.130) [54131]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (testHistogram-old.vpr@26.85--26.130) [54132]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (testHistogram-old.vpr@26.85--26.130) [54133]"}
            i + 1 <= vmax;
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram-old.vpr@26.85--26.130) [54134]"}
            (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (testHistogram-old.vpr@26.85--26.130) [54135]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@26.85--26.130) [54136]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered4(k_5), neverTriggered4(k_5_1) }
              (((k_5 != k_5_1 && (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)))) && (vmin <= k_5_1 && (k_5_1 < vmax && (lo <= k_5_1 mod step && k_5_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram-old.vpr@26.85--26.130) [54137]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && NoPerm < wildcard ==> qpRange4(Seq#Index(ar, k_5)) && invRecv4(Seq#Index(ar, k_5)) == k_5
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
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> (0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax)) ==> count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == (if i < vmax then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square'(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2) else 0)
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
  var k_4: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
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
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_4) {
          if (k_4 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogram-old.vpr@32.13--32.136) [54138]"}
              step != 0;
            if (lo <= k_4 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testHistogram-old.vpr@32.13--32.136) [54139]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_4 && (k_4 < vmax && (lo <= k_4 mod step && k_4 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram-old.vpr@32.13--32.136) [54140]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram-old.vpr@32.13--32.136) [54141]"}
            k_4 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@32.13--32.136) [54142]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)))) && (vmin <= k_4_2 && (k_4_2 < vmax && (lo <= k_4_2 mod step && k_4_2 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> qpRange5(Seq#Index(ar, k_4_1)) && invRecv5(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> Seq#Index(ar, k_4_1) != null
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogram-old.vpr@29.1--35.2) [54143]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testHistogram-old.vpr@29.1--35.2) [54144]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram-old.vpr@29.1--35.2) [54145]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram-old.vpr@29.1--35.2) [54146]"}
              i < Seq#Length(ar);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogram-old.vpr@29.1--35.2) [54147]"}
              HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (testHistogram-old.vpr@34.97--34.147) [54148]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (testHistogram-old.vpr@34.97--34.147) [54149]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (testHistogram-old.vpr@34.97--34.147) [54150]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testHistogram-old.vpr@34.97--34.147) [54151]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (testHistogram-old.vpr@34.97--34.147) [54152]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (testHistogram-old.vpr@34.97--34.147) [54153]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (testHistogram-old.vpr@34.97--34.147) [54154]"}
            i + 1 <= vmax;
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram-old.vpr@34.97--34.147) [54155]"}
            (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testHistogram-old.vpr@34.97--34.147) [54156]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@34.97--34.147) [54157]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered6(k_5), neverTriggered6(k_5_1) }
              (((k_5 != k_5_1 && (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)))) && (vmin <= k_5_1 && (k_5_1 < vmax && (lo <= k_5_1 mod step && k_5_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram-old.vpr@34.97--34.147) [54158]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && NoPerm < wildcard ==> qpRange6(Seq#Index(ar, k_5)) && invRecv6(Seq#Index(ar, k_5)) == k_5
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
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram-old.vpr@37.1--42.2) [54159]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram-old.vpr@37.1--42.2) [54160]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (testHistogram-old.vpr@41.36--41.64) [54161]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (testHistogram-old.vpr@41.36--41.64) [54162]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (testHistogram-old.vpr@41.36--41.64) [54163]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> 0 <= i && i <= hi ==> count_array(Heap, i, hi, ar, v_2) == (if i < hi then (if Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array'(Heap, i + 1, hi, ar, v_2) else 0)
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
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..hi)) } { ar[k] } (k in [0..hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (Seq#Contains(Seq#Range(0, hi), k_7)) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testHistogram-old.vpr@46.13--46.88) [54164]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testHistogram-old.vpr@46.13--46.88) [54165]"}
            k_7 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@46.13--46.88) [54166]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && Seq#Contains(Seq#Range(0, hi), k_4_1)) && Seq#Contains(Seq#Range(0, hi), k_4_2)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_4_1) } { Seq#Contains(Seq#Range(0, hi), k_4_1) } { Seq#Index(ar, k_4_1) }
        Seq#Contains(Seq#Range(0, hi), k_4_1) ==> qpRange7(Seq#Index(ar, k_4_1)) && invRecv7(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        Seq#Contains(Seq#Range(0, hi), invRecv7(o_4)) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_4_1) } { Seq#Contains(Seq#Range(0, hi), k_4_1) } { Seq#Index(ar, k_4_1) }
        Seq#Contains(Seq#Range(0, hi), k_4_1) ==> Seq#Index(ar, k_4_1) != null
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testHistogram-old.vpr@44.1--49.2) [54167]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testHistogram-old.vpr@44.1--49.2) [54168]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testHistogram-old.vpr@44.1--49.2) [54169]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (testHistogram-old.vpr@48.55--48.84) [54170]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (testHistogram-old.vpr@48.55--48.84) [54171]"}
            i + 1 <= hi;
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram-old.vpr@48.55--48.84) [54172]"}
            (forall k_5: int ::
            
            Seq#Contains(Seq#Range(0, hi), k_5) ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            Seq#Contains(Seq#Range(0, hi), k_5) ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testHistogram-old.vpr@48.55--48.84) [54173]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_5) } { Seq#Contains(Seq#Range(0, hi), k_5) } { Seq#Index(ar, k_5) }
              Seq#Contains(Seq#Range(0, hi), k_5) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@48.55--48.84) [54174]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered8(k_5), neverTriggered8(k_5_1) }
              (((k_5 != k_5_1 && Seq#Contains(Seq#Range(0, hi), k_5)) && Seq#Contains(Seq#Range(0, hi), k_5_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testHistogram-old.vpr@48.55--48.84) [54175]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_5) } { Seq#Contains(Seq#Range(0, hi), k_5) } { Seq#Index(ar, k_5) }
              Seq#Contains(Seq#Range(0, hi), k_5) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#ContainsTrigger(Seq#Range(0, hi), k_5) } { Seq#Contains(Seq#Range(0, hi), k_5) } { Seq#Index(ar, k_5) }
              Seq#Contains(Seq#Range(0, hi), k_5) && NoPerm < wildcard ==> qpRange8(Seq#Index(ar, k_5)) && invRecv8(Seq#Index(ar, k_5)) == k_5
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
// Translation of method Ref__loop_main_84
// ==================================================

procedure Ref__loop_main_84(diz: Ref, P_1: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_10: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_12: int;
  var k_15: int;
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
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_10)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@53.13--53.86) [54176]"}
            k_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@53.13--53.86) [54177]"}
            k_10 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@53.13--53.86) [54178]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && Seq#Contains(Seq#Range(0, P_1), k_1_1)) && Seq#Contains(Seq#Range(0, P_1), k_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_1_1) != Seq#Index(hist, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(hist, k_1_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_1_1) } { Seq#Index(hist, k_1_1) }
        Seq#Contains(Seq#Range(0, P_1), k_1_1) && NoPerm < FullPerm ==> qpRange9(Seq#Index(hist, k_1_1)) && invRecv9(Seq#Index(hist, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(hist, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(hist, k_1_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_1_1) } { Seq#Index(hist, k_1_1) }
        Seq#Contains(Seq#Range(0, P_1), k_1_1) ==> Seq#Index(hist, k_1_1) != null
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_12)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@54.12--54.85) [54179]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@54.12--54.85) [54180]"}
            k_12 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@54.12--54.85) [54181]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && Seq#Contains(Seq#Range(0, P_1), k_3)) && Seq#Contains(Seq#Range(0, P_1), k_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) && NoPerm < FullPerm ==> qpRange10(Seq#Index(hist, k_3)) && invRecv10(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> Seq#Index(hist, invRecv10(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) ==> Seq#Index(hist, k_3) != null
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
        if (Seq#Contains(Seq#Range(0, P_1), k_15)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@55.12--55.80) [54182]"}
            k_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@55.12--55.80) [54183]"}
            k_15 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@55.12--55.80) [54184]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_15), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_5: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
      Seq#Contains(Seq#Range(0, P_1), k_5) ==> PostHeap[Seq#Index(hist, k_5), Ref__Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistogram-old.vpr@57.3--57.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@54.12--54.85) [54185]"}
        (forall k_6: int, k_6_1: int ::
        { neverTriggered11(k_6), neverTriggered11(k_6_1) }
        (((k_6 != k_6_1 && Seq#Contains(Seq#Range(0, P_1), k_6)) && Seq#Contains(Seq#Range(0, P_1), k_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_6) != Seq#Index(hist, k_6_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_84 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@54.12--54.85) [54186]"}
        (forall k_6: int ::
        { Seq#Index(hist, k_6) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_6) } { Seq#Contains(Seq#Range(0, P_1), k_6) } { Seq#Index(hist, k_6) }
        Seq#Contains(Seq#Range(0, P_1), k_6) ==> Mask[Seq#Index(hist, k_6), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_6: int ::
        { Seq#Index(hist, k_6) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_6) } { Seq#Contains(Seq#Range(0, P_1), k_6) } { Seq#Index(hist, k_6) }
        Seq#Contains(Seq#Range(0, P_1), k_6) && NoPerm < FullPerm ==> qpRange11(Seq#Index(hist, k_6)) && invRecv11(Seq#Index(hist, k_6)) == k_6
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
      if (Seq#Contains(Seq#Range(0, P_1), k_7_1)) {
        assert {:msg "  Postcondition of Ref__loop_main_84 might not hold. Assertion hist[k].Ref__Integer_value == 0 might not hold. (testHistogram-old.vpr@55.12--55.80) [54187]"}
          Heap[Seq#Index(hist, k_7_1), Ref__Integer_value] == 0;
      }
      assume false;
    }
    assume (forall k_8_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_8_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_8_1_1) } { Seq#Index(hist, k_8_1_1) }
      Seq#Contains(Seq#Range(0, P_1), k_8_1_1) ==> Heap[Seq#Index(hist, k_8_1_1), Ref__Integer_value] == 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_84
// ==================================================

procedure Ref__loop_body_84(diz: Ref, k: int, P_1: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_3: Ref;
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
    assume Seq#Contains(Seq#Range(0, P_1), k);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(hist[k].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@63.12--63.50) [54188]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@63.12--63.50) [54189]"}
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
    assume Seq#Contains(Seq#Range(0, P_1), k);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(hist[k].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@65.11--65.49) [54190]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@65.11--65.49) [54191]"}
        k < Seq#Length(hist);
    perm := FullPerm;
    assume Seq#Index(hist, k) != null;
    PostMask := PostMask[Seq#Index(hist, k), Ref__Integer_value:=PostMask[Seq#Index(hist, k), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of hist[k].Ref__Integer_value == 0
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@66.11--66.42) [54192]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@66.11--66.42) [54193]"}
        k < Seq#Length(hist);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@66.11--66.42) [54194]"}
        HasDirectPerm(PostMask, Seq#Index(hist, k), Ref__Integer_value);
    assume PostHeap[Seq#Index(hist, k), Ref__Integer_value] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_3, $allocated];
  
  // -- Translating statement: __flatten_3 := hist[k] -- testHistogram-old.vpr@69.3--69.25
    
    // -- Check definedness of hist[k]
      assert {:msg "  Assignment might fail. Index hist[k] into hist might be negative. (testHistogram-old.vpr@69.3--69.25) [54195]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@69.3--69.25) [54196]"}
        k < Seq#Length(hist);
    __flatten_3 := Seq#Index(hist, k);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3.Ref__Integer_value := 0 -- testHistogram-old.vpr@70.3--70.38
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_3.Ref__Integer_value (testHistogram-old.vpr@70.3--70.38) [54197]"}
      FullPerm == Mask[__flatten_3, Ref__Integer_value];
    Heap := Heap[__flatten_3, Ref__Integer_value:=0];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_84 might not hold. Assertion (k in [0..P)) might not hold. (testHistogram-old.vpr@64.12--64.23) [54198]"}
      Seq#Contains(Seq#Range(0, P_1), k);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_84 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@65.11--65.49) [54199]"}
        perm <= Mask[Seq#Index(hist, k), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(hist, k), Ref__Integer_value:=Mask[Seq#Index(hist, k), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_84 might not hold. Assertion hist[k].Ref__Integer_value == 0 might not hold. (testHistogram-old.vpr@66.11--66.42) [54200]"}
      Heap[Seq#Index(hist, k), Ref__Integer_value] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_main_104
// ==================================================

procedure Ref__loop_main_104(diz: Ref, P_1: int, N: int, M: int, matrix: (Seq Ref), hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_16: int;
  var QPMask: MaskType;
  var j_11: int;
  var k_fresh_rw_0_7: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_18: int;
  var k_20: int;
  var k_21: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
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
    assume M > 0;
    assume N > 0;
    assume P_1 > 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_16)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@76.13--76.86) [54201]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@76.13--76.86) [54202]"}
            k_16 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@76.13--76.86) [54203]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && Seq#Contains(Seq#Range(0, P_1), k_1_1)) && Seq#Contains(Seq#Range(0, P_1), k_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_1_1) != Seq#Index(hist, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(hist, k_1_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_1_1) } { Seq#Index(hist, k_1_1) }
        Seq#Contains(Seq#Range(0, P_1), k_1_1) && NoPerm < FullPerm ==> qpRange12(Seq#Index(hist, k_1_1)) && invRecv12(Seq#Index(hist, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(hist, invRecv12(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(hist, k_1_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_1_1) } { Seq#Index(hist, k_1_1) }
        Seq#Contains(Seq#Range(0, P_1), k_1_1) ==> Seq#Index(hist, k_1_1) != null
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
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } (j in [0..M * N)) ==> acc(matrix[j].Ref__Integer_value, 1 / 4))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * N), j_11)) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogram-old.vpr@77.13--77.92) [54204]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogram-old.vpr@77.13--77.92) [54205]"}
            j_11 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram-old.vpr@77.13--77.92) [54206]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, M * N), j_1)) && Seq#Contains(Seq#Range(0, M * N), j_1_1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_1) != Seq#Index(matrix, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
        Seq#Contains(Seq#Range(0, M * N), j_1) && NoPerm < 1 / 4 ==> qpRange13(Seq#Index(matrix, j_1)) && invRecv13(Seq#Index(matrix, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Seq#Contains(Seq#Range(0, M * N), invRecv13(o_4)) && NoPerm < 1 / 4) && qpRange13(o_4) ==> Seq#Index(matrix, invRecv13(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogram-old.vpr@77.13--77.92) [54207]"}
      (forall j_1: int ::
      { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
      Seq#Contains(Seq#Range(0, M * N), j_1) ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
        Seq#Contains(Seq#Range(0, M * N), j_1) && 1 / 4 > NoPerm ==> Seq#Index(matrix, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, M * N), invRecv13(o_4)) && NoPerm < 1 / 4) && qpRange13(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix, invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!((Seq#Contains(Seq#Range(0, M * N), invRecv13(o_4)) && NoPerm < 1 / 4) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N <= N;
    
    // -- Check definedness of (forall k_fresh_rw_0: Int :: { (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)) } (k_fresh_rw_0 in [0..M * N)) && k_fresh_rw_0 % N < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_7)) {
          assert {:msg "  Contract might not be well-formed. Divisor N might be zero. (testHistogram-old.vpr@78.12--78.164) [54208]"}
            N != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_7) && k_fresh_rw_0_7 mod N < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogram-old.vpr@78.12--78.164) [54209]"}
            k_fresh_rw_0_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogram-old.vpr@78.12--78.164) [54210]"}
            k_fresh_rw_0_7 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogram-old.vpr@78.12--78.164) [54211]"}
            HasDirectPerm(Mask, Seq#Index(matrix, k_fresh_rw_0_7), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_fresh_rw_0_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_1), Ref__Integer_value]) } { Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_1), Ref__Integer_value]) }
      Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_1) && k_fresh_rw_0_1 mod N < N ==> Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_1), Ref__Integer_value])
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
    assume M > 0;
    assume N > 0;
    assume P_1 > 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } (j in [0..M * N)) ==> acc(matrix[j].Ref__Integer_value, 1 / 4))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * N), j_18)) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (testHistogram-old.vpr@80.12--80.91) [54212]"}
            j_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (testHistogram-old.vpr@80.12--80.91) [54213]"}
            j_18 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram-old.vpr@80.12--80.91) [54214]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && Seq#Contains(Seq#Range(0, M * N), j_3_1)) && Seq#Contains(Seq#Range(0, M * N), j_3_2)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_3_1) != Seq#Index(matrix, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(matrix, j_3_1) } { Seq#Index(matrix, j_3_1) }
        Seq#Contains(Seq#Range(0, M * N), j_3_1) && NoPerm < 1 / 4 ==> qpRange14(Seq#Index(matrix, j_3_1)) && invRecv14(Seq#Index(matrix, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (Seq#Contains(Seq#Range(0, M * N), invRecv14(o_4)) && NoPerm < 1 / 4) && qpRange14(o_4) ==> Seq#Index(matrix, invRecv14(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogram-old.vpr@80.12--80.91) [54215]"}
      (forall j_3_1: int ::
      { Seq#Index(matrix, j_3_1) } { Seq#Index(matrix, j_3_1) }
      Seq#Contains(Seq#Range(0, M * N), j_3_1) ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(matrix, j_3_1) } { Seq#Index(matrix, j_3_1) }
        Seq#Contains(Seq#Range(0, M * N), j_3_1) && 1 / 4 > NoPerm ==> Seq#Index(matrix, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, M * N), invRecv14(o_4)) && NoPerm < 1 / 4) && qpRange14(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix, invRecv14(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 4) && (!((Seq#Contains(Seq#Range(0, M * N), invRecv14(o_4)) && NoPerm < 1 / 4) && qpRange14(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
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
        if (Seq#Contains(Seq#Range(0, P_1), k_20)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@81.12--81.85) [54216]"}
            k_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@81.12--81.85) [54217]"}
            k_20 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@81.12--81.85) [54218]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && Seq#Contains(Seq#Range(0, P_1), k_3)) && Seq#Contains(Seq#Range(0, P_1), k_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_3) != Seq#Index(hist, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) && NoPerm < FullPerm ==> qpRange15(Seq#Index(hist, k_3)) && invRecv15(Seq#Index(hist, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(hist, invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(hist, k_3) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
        Seq#Contains(Seq#Range(0, P_1), k_3) ==> Seq#Index(hist, k_3) != null
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
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { old(hist[k]) } (k in [0..P)) ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_21)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@82.12--82.145) [54219]"}
            k_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@82.12--82.145) [54220]"}
            k_21 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@82.12--82.145) [54221]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_21), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@82.12--82.145) [54222]"}
            k_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@82.12--82.145) [54223]"}
            k_21 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@82.12--82.145) [54224]"}
            HasDirectPerm(oldMask, Seq#Index(hist, k_21), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= M * N might not hold. (testHistogram-old.vpr@82.112--82.144) [54225]"}
              0 <= M * N;
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogram-old.vpr@82.112--82.144) [54226]"}
              (forall k$0: int ::
              
              Seq#Contains(Seq#Range(0, M * N), k$0) ==> PostMask[Seq#Index(matrix, k$0), Ref__Integer_value] > NoPerm
            );
            assume (forall k$0: int ::
              
              Seq#Contains(Seq#Range(0, M * N), k$0) ==> wildcard < PostMask[Seq#Index(matrix, k$0), Ref__Integer_value]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testHistogram-old.vpr@82.112--82.144) [54227]"}
                (forall k$0: int ::
                { Seq#Index(matrix, k$0) } { Seq#Index(matrix, k$0) }
                Seq#Contains(Seq#Range(0, M * N), k$0) && dummyFunction(PostHeap[Seq#Index(matrix, k$0), Ref__Integer_value]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver matrix[k$0] is injective
              assert {:msg "  Precondition of function count_array might not hold. Quantified resource matrix[k$0].Ref__Integer_value might not be injective. (testHistogram-old.vpr@82.112--82.144) [54228]"}
                (forall k$0: int, k$0_1: int ::
                { neverTriggered16(k$0), neverTriggered16(k$0_1) }
                (((k$0 != k$0_1 && Seq#Contains(Seq#Range(0, M * N), k$0)) && Seq#Contains(Seq#Range(0, M * N), k$0_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(matrix, k$0) != Seq#Index(matrix, k$0_1)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogram-old.vpr@82.112--82.144) [54229]"}
                (forall k$0: int ::
                { Seq#Index(matrix, k$0) } { Seq#Index(matrix, k$0) }
                Seq#Contains(Seq#Range(0, M * N), k$0) ==> wildcard > NoPerm ==> PostMask[Seq#Index(matrix, k$0), Ref__Integer_value] > NoPerm
              );
            
            // -- assumptions for inverse of receiver matrix[k$0]
              assume (forall k$0: int ::
                { Seq#Index(matrix, k$0) } { Seq#Index(matrix, k$0) }
                Seq#Contains(Seq#Range(0, M * N), k$0) && NoPerm < wildcard ==> qpRange16(Seq#Index(matrix, k$0)) && invRecv16(Seq#Index(matrix, k$0)) == k$0
              );
              assume (forall o_4: Ref ::
                { invRecv16(o_4) }
                Seq#Contains(Seq#Range(0, M * N), invRecv16(o_4)) && (NoPerm < wildcard && qpRange16(o_4)) ==> Seq#Index(matrix, invRecv16(o_4)) == o_4
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
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
      Seq#Contains(Seq#Range(0, P_1), k_5) ==> PostHeap[Seq#Index(hist, k_5), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_5), Ref__Integer_value] + count_array(PostHeap, 0, M * N, matrix, k_5)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistogram-old.vpr@84.3--84.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_main_104 might not hold. Assertion M > 0 might not hold. (testHistogram-old.vpr@79.11--79.40) [54230]"}
      M > 0;
    assert {:msg "  Postcondition of Ref__loop_main_104 might not hold. Assertion N > 0 might not hold. (testHistogram-old.vpr@79.11--79.40) [54231]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__loop_main_104 might not hold. Assertion P > 0 might not hold. (testHistogram-old.vpr@79.11--79.40) [54232]"}
      P_1 > 0;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_104 might not hold. Fraction 1 / 4 might be negative. (testHistogram-old.vpr@80.12--80.91) [54233]"}
        (forall j_4_1: int ::
        { Seq#Index(matrix, j_4_1) } { Seq#Index(matrix, j_4_1) }
        Seq#Contains(Seq#Range(0, M * N), j_4_1) && dummyFunction(Heap[Seq#Index(matrix, j_4_1), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver matrix[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram-old.vpr@80.12--80.91) [54234]"}
        (forall j_4_1: int, j_4_2: int ::
        { neverTriggered17(j_4_1), neverTriggered17(j_4_2) }
        (((j_4_1 != j_4_2 && Seq#Contains(Seq#Range(0, M * N), j_4_1)) && Seq#Contains(Seq#Range(0, M * N), j_4_2)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_4_1) != Seq#Index(matrix, j_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_104 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (testHistogram-old.vpr@80.12--80.91) [54235]"}
        (forall j_4_1: int ::
        { Seq#Index(matrix, j_4_1) } { Seq#Index(matrix, j_4_1) }
        Seq#Contains(Seq#Range(0, M * N), j_4_1) ==> Mask[Seq#Index(matrix, j_4_1), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver matrix[j]
      assume (forall j_4_1: int ::
        { Seq#Index(matrix, j_4_1) } { Seq#Index(matrix, j_4_1) }
        Seq#Contains(Seq#Range(0, M * N), j_4_1) && NoPerm < 1 / 4 ==> qpRange17(Seq#Index(matrix, j_4_1)) && invRecv17(Seq#Index(matrix, j_4_1)) == j_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        Seq#Contains(Seq#Range(0, M * N), invRecv17(o_4)) && (NoPerm < 1 / 4 && qpRange17(o_4)) ==> Seq#Index(matrix, invRecv17(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, M * N), invRecv17(o_4)) && (NoPerm < 1 / 4 && qpRange17(o_4)) ==> Seq#Index(matrix, invRecv17(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!(Seq#Contains(Seq#Range(0, M * N), invRecv17(o_4)) && (NoPerm < 1 / 4 && qpRange17(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@81.12--81.85) [54236]"}
        (forall k_6: int, k_6_1: int ::
        { neverTriggered18(k_6), neverTriggered18(k_6_1) }
        (((k_6 != k_6_1 && Seq#Contains(Seq#Range(0, P_1), k_6)) && Seq#Contains(Seq#Range(0, P_1), k_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_6) != Seq#Index(hist, k_6_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_104 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@81.12--81.85) [54237]"}
        (forall k_6: int ::
        { Seq#Index(hist, k_6) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_6) } { Seq#Contains(Seq#Range(0, P_1), k_6) } { Seq#Index(hist, k_6) }
        Seq#Contains(Seq#Range(0, P_1), k_6) ==> Mask[Seq#Index(hist, k_6), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_6: int ::
        { Seq#Index(hist, k_6) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_6) } { Seq#Contains(Seq#Range(0, P_1), k_6) } { Seq#Index(hist, k_6) }
        Seq#Contains(Seq#Range(0, P_1), k_6) && NoPerm < FullPerm ==> qpRange18(Seq#Index(hist, k_6)) && invRecv18(Seq#Index(hist, k_6)) == k_6
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
      if (Seq#Contains(Seq#Range(0, P_1), k_7_1)) {
        assert {:msg "  Postcondition of Ref__loop_main_104 might not hold. Assertion hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k) might not hold. (testHistogram-old.vpr@82.12--82.145) [54238]"}
          Heap[Seq#Index(hist, k_7_1), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_7_1), Ref__Integer_value] + count_array(Heap, 0, M * N, matrix, k_7_1);
      }
      assume false;
    }
    assume (forall k_8_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_8_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_8_1_1) } { Seq#Index(hist, k_8_1_1) }
      Seq#Contains(Seq#Range(0, P_1), k_8_1_1) ==> Heap[Seq#Index(hist, k_8_1_1), Ref__Integer_value] == oldHeap[Seq#Index(hist, k_8_1_1), Ref__Integer_value] + count_array(Heap, 0, M * N, matrix, k_8_1_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_104
// ==================================================

procedure Ref__loop_body_104(diz: Ref, matrix: (Seq Ref), j_9: int, i: int, P_1: int, hist: (Seq Ref), N: int, M: int) returns ()
  modifies Heap, Mask;
{
  var k_30: int;
  var QPMask: MaskType;
  var k_31: int;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_32: int;
  var k_22: int;
  var __flatten_4: Ref;
  var __flatten_5: Ref;
  var __flatten_7: Ref;
  var __flatten_8: Ref;
  var __flatten_6: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    assume M > 0;
    assume N > 0;
    assume P_1 > 0;
    assume state(Heap, Mask);
    assume Seq#Contains(Seq#Range(0, M), i);
    assume Seq#Contains(Seq#Range(0, N), j_9);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_30)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@91.13--91.86) [54239]"}
            k_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@91.13--91.86) [54240]"}
            k_30 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@91.13--91.86) [54241]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && Seq#Contains(Seq#Range(0, P_1), k_1_1)) && Seq#Contains(Seq#Range(0, P_1), k_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_1_1) != Seq#Index(hist, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(hist, k_1_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_1_1) } { Seq#Index(hist, k_1_1) }
        Seq#Contains(Seq#Range(0, P_1), k_1_1) && NoPerm < FullPerm ==> qpRange19(Seq#Index(hist, k_1_1)) && invRecv19(Seq#Index(hist, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> Seq#Index(hist, invRecv19(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(hist, k_1_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_1_1) } { Seq#Index(hist, k_1_1) }
        Seq#Contains(Seq#Range(0, P_1), k_1_1) ==> Seq#Index(hist, k_1_1) != null
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
        if (Seq#Contains(Seq#Range(0, P_1), k_31)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@92.13--92.81) [54242]"}
            k_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@92.13--92.81) [54243]"}
            k_31 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@92.13--92.81) [54244]"}
            HasDirectPerm(Mask, Seq#Index(hist, k_31), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_3: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3) } { Seq#Contains(Seq#Range(0, P_1), k_3) } { Seq#Index(hist, k_3) }
      Seq#Contains(Seq#Range(0, P_1), k_3) ==> Heap[Seq#Index(hist, k_3), Ref__Integer_value] == 0
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(matrix[i * N + j].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. Index matrix[i * N + j] into matrix might be negative. (testHistogram-old.vpr@93.12--93.60) [54245]"}
        i * N + j_9 >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[i * N + j] into matrix might exceed sequence length. (testHistogram-old.vpr@93.12--93.60) [54246]"}
        i * N + j_9 < Seq#Length(matrix);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogram-old.vpr@93.12--93.60) [54247]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(matrix, i * N + j_9) != null;
    Mask := Mask[Seq#Index(matrix, i * N + j_9), Ref__Integer_value:=Mask[Seq#Index(matrix, i * N + j_9), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (matrix[i * N + j].Ref__Integer_value in [0..P))
      assert {:msg "  Contract might not be well-formed. Index matrix[i * N + j] into matrix might be negative. (testHistogram-old.vpr@94.13--94.59) [54248]"}
        i * N + j_9 >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[i * N + j] into matrix might exceed sequence length. (testHistogram-old.vpr@94.13--94.59) [54249]"}
        i * N + j_9 < Seq#Length(matrix);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[i * N + j].Ref__Integer_value (testHistogram-old.vpr@94.13--94.59) [54250]"}
        HasDirectPerm(Mask, Seq#Index(matrix, i * N + j_9), Ref__Integer_value);
    assume Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, i * N + j_9), Ref__Integer_value]);
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
    assume M > 0;
    assume N > 0;
    assume P_1 > 0;
    assume state(PostHeap, PostMask);
    assume Seq#Contains(Seq#Range(0, M), i);
    assume Seq#Contains(Seq#Range(0, N), j_9);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(matrix[i * N + j].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. Index matrix[i * N + j] into matrix might be negative. (testHistogram-old.vpr@97.11--97.59) [54251]"}
        i * N + j_9 >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[i * N + j] into matrix might exceed sequence length. (testHistogram-old.vpr@97.11--97.59) [54252]"}
        i * N + j_9 < Seq#Length(matrix);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testHistogram-old.vpr@97.11--97.59) [54253]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(matrix, i * N + j_9) != null;
    PostMask := PostMask[Seq#Index(matrix, i * N + j_9), Ref__Integer_value:=PostMask[Seq#Index(matrix, i * N + j_9), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> acc(hist[k].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_32)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@98.12--98.85) [54254]"}
            k_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@98.12--98.85) [54255]"}
            k_32 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@98.12--98.85) [54256]"}
      (forall k_5: int, k_5_1: int ::
      
      (((k_5 != k_5_1 && Seq#Contains(Seq#Range(0, P_1), k_5)) && Seq#Contains(Seq#Range(0, P_1), k_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_5) != Seq#Index(hist, k_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_5: int ::
        { Seq#Index(hist, k_5) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
        Seq#Contains(Seq#Range(0, P_1), k_5) && NoPerm < FullPerm ==> qpRange20(Seq#Index(hist, k_5)) && invRecv20(Seq#Index(hist, k_5)) == k_5
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (Seq#Contains(Seq#Range(0, P_1), invRecv20(o_4)) && NoPerm < FullPerm) && qpRange20(o_4) ==> Seq#Index(hist, invRecv20(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_5: int ::
        { Seq#Index(hist, k_5) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
        Seq#Contains(Seq#Range(0, P_1), k_5) ==> Seq#Index(hist, k_5) != null
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
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == (matrix[i * N + j].Ref__Integer_value == k ? 1 : 0))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_22)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@99.12--99.130) [54257]"}
            k_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@99.12--99.130) [54258]"}
            k_22 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@99.12--99.130) [54259]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_22), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index matrix[i * N + j] into matrix might be negative. (testHistogram-old.vpr@99.12--99.130) [54260]"}
            i * N + j_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[i * N + j] into matrix might exceed sequence length. (testHistogram-old.vpr@99.12--99.130) [54261]"}
            i * N + j_9 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[i * N + j].Ref__Integer_value (testHistogram-old.vpr@99.12--99.130) [54262]"}
            HasDirectPerm(PostMask, Seq#Index(matrix, i * N + j_9), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_7_1) } { Seq#Contains(Seq#Range(0, P_1), k_7_1) } { Seq#Index(hist, k_7_1) }
      Seq#Contains(Seq#Range(0, P_1), k_7_1) ==> PostHeap[Seq#Index(hist, k_7_1), Ref__Integer_value] == (if PostHeap[Seq#Index(matrix, i * N + j_9), Ref__Integer_value] == k_7_1 then 1 else 0)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_5, $allocated];
    assume Heap[__flatten_7, $allocated];
    assume Heap[__flatten_8, $allocated];
  
  // -- Translating statement: __flatten_4 := matrix[i * N + j] -- testHistogram-old.vpr@106.3--106.35
    
    // -- Check definedness of matrix[i * N + j]
      assert {:msg "  Assignment might fail. Index matrix[i * N + j] into matrix might be negative. (testHistogram-old.vpr@106.3--106.35) [54263]"}
        i * N + j_9 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[i * N + j] into matrix might exceed sequence length. (testHistogram-old.vpr@106.3--106.35) [54264]"}
        i * N + j_9 < Seq#Length(matrix);
    __flatten_4 := Seq#Index(matrix, i * N + j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := hist[__flatten_4.Ref__Integer_value] -- testHistogram-old.vpr@107.3--107.54
    
    // -- Check definedness of hist[__flatten_4.Ref__Integer_value]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (testHistogram-old.vpr@107.3--107.54) [54265]"}
        HasDirectPerm(Mask, __flatten_4, Ref__Integer_value);
      assert {:msg "  Assignment might fail. Index hist[__flatten_4.Ref__Integer_value] into hist might be negative. (testHistogram-old.vpr@107.3--107.54) [54266]"}
        Heap[__flatten_4, Ref__Integer_value] >= 0;
      assert {:msg "  Assignment might fail. Index hist[__flatten_4.Ref__Integer_value] into hist might exceed sequence length. (testHistogram-old.vpr@107.3--107.54) [54267]"}
        Heap[__flatten_4, Ref__Integer_value] < Seq#Length(hist);
    __flatten_5 := Seq#Index(hist, Heap[__flatten_4, Ref__Integer_value]);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := matrix[i * N + j] -- testHistogram-old.vpr@108.3--108.35
    
    // -- Check definedness of matrix[i * N + j]
      assert {:msg "  Assignment might fail. Index matrix[i * N + j] into matrix might be negative. (testHistogram-old.vpr@108.3--108.35) [54268]"}
        i * N + j_9 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[i * N + j] into matrix might exceed sequence length. (testHistogram-old.vpr@108.3--108.35) [54269]"}
        i * N + j_9 < Seq#Length(matrix);
    __flatten_7 := Seq#Index(matrix, i * N + j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := hist[__flatten_7.Ref__Integer_value] -- testHistogram-old.vpr@109.3--109.54
    
    // -- Check definedness of hist[__flatten_7.Ref__Integer_value]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_7.Ref__Integer_value (testHistogram-old.vpr@109.3--109.54) [54270]"}
        HasDirectPerm(Mask, __flatten_7, Ref__Integer_value);
      assert {:msg "  Assignment might fail. Index hist[__flatten_7.Ref__Integer_value] into hist might be negative. (testHistogram-old.vpr@109.3--109.54) [54271]"}
        Heap[__flatten_7, Ref__Integer_value] >= 0;
      assert {:msg "  Assignment might fail. Index hist[__flatten_7.Ref__Integer_value] into hist might exceed sequence length. (testHistogram-old.vpr@109.3--109.54) [54272]"}
        Heap[__flatten_7, Ref__Integer_value] < Seq#Length(hist);
    __flatten_8 := Seq#Index(hist, Heap[__flatten_7, Ref__Integer_value]);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := __flatten_8.Ref__Integer_value + 1 -- testHistogram-old.vpr@110.3--110.52
    
    // -- Check definedness of __flatten_8.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (testHistogram-old.vpr@110.3--110.52) [54273]"}
        HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
    __flatten_6 := Heap[__flatten_8, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5.Ref__Integer_value := __flatten_6 -- testHistogram-old.vpr@111.3--111.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_5.Ref__Integer_value (testHistogram-old.vpr@111.3--111.48) [54274]"}
      FullPerm == Mask[__flatten_5, Ref__Integer_value];
    Heap := Heap[__flatten_5, Ref__Integer_value:=__flatten_6];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. Assertion M > 0 might not hold. (testHistogram-old.vpr@95.11--95.40) [54275]"}
      M > 0;
    assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. Assertion N > 0 might not hold. (testHistogram-old.vpr@95.11--95.40) [54276]"}
      N > 0;
    assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. Assertion P > 0 might not hold. (testHistogram-old.vpr@95.11--95.40) [54277]"}
      P_1 > 0;
    assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. Assertion (i in [0..M)) might not hold. (testHistogram-old.vpr@96.11--96.41) [54278]"}
      Seq#Contains(Seq#Range(0, M), i);
    assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. Assertion (j in [0..N)) might not hold. (testHistogram-old.vpr@96.11--96.41) [54279]"}
      Seq#Contains(Seq#Range(0, N), j_9);
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. Fraction 1 / 4 might be negative. (testHistogram-old.vpr@97.11--97.59) [54280]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. There might be insufficient permission to access matrix[i * N + j].Ref__Integer_value (testHistogram-old.vpr@97.11--97.59) [54281]"}
        perm <= Mask[Seq#Index(matrix, i * N + j_9), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(matrix, i * N + j_9), Ref__Integer_value:=Mask[Seq#Index(matrix, i * N + j_9), Ref__Integer_value] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver hist[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@98.12--98.85) [54282]"}
        (forall k_8: int, k_8_1: int ::
        { neverTriggered21(k_8), neverTriggered21(k_8_1) }
        (((k_8 != k_8_1 && Seq#Contains(Seq#Range(0, P_1), k_8)) && Seq#Contains(Seq#Range(0, P_1), k_8_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_8) != Seq#Index(hist, k_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@98.12--98.85) [54283]"}
        (forall k_8: int ::
        { Seq#Index(hist, k_8) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_8) } { Seq#Contains(Seq#Range(0, P_1), k_8) } { Seq#Index(hist, k_8) }
        Seq#Contains(Seq#Range(0, P_1), k_8) ==> Mask[Seq#Index(hist, k_8), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver hist[k]
      assume (forall k_8: int ::
        { Seq#Index(hist, k_8) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_8) } { Seq#Contains(Seq#Range(0, P_1), k_8) } { Seq#Index(hist, k_8) }
        Seq#Contains(Seq#Range(0, P_1), k_8) && NoPerm < FullPerm ==> qpRange21(Seq#Index(hist, k_8)) && invRecv21(Seq#Index(hist, k_8)) == k_8
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
      if (Seq#Contains(Seq#Range(0, P_1), k_9)) {
        assert {:msg "  Postcondition of Ref__loop_body_104 might not hold. Assertion hist[k].Ref__Integer_value == (matrix[i * N + j].Ref__Integer_value == k ? 1 : 0) might not hold. (testHistogram-old.vpr@99.12--99.130) [54284]"}
          Heap[Seq#Index(hist, k_9), Ref__Integer_value] == (if Heap[Seq#Index(matrix, i * N + j_9), Ref__Integer_value] == k_9 then 1 else 0);
      }
      assume false;
    }
    assume (forall k_10_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_10_1) } { Seq#Contains(Seq#Range(0, P_1), k_10_1) } { Seq#Index(hist, k_10_1) }
      Seq#Contains(Seq#Range(0, P_1), k_10_1) ==> Heap[Seq#Index(hist, k_10_1), Ref__Integer_value] == (if Heap[Seq#Index(matrix, i * N + j_9), Ref__Integer_value] == k_10_1 then 1 else 0)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__histogram
// ==================================================

procedure Ref__histogram(diz: Ref, M: int, N: int, matrix: (Seq Ref), P_1: int, hist: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j1_17: int;
  var QPMask: MaskType;
  var k_fresh_rw_0_9: int;
  var i1_14: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j1_2: int;
  var i1_2: int;
  var k_28: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var k_fresh_rw_0_10: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var k_fresh_rw_0_6_1: int;
  var k_2_1: int;
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
    assume P_1 > 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } (j1 in [0..M * N)) ==> acc(matrix[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * N), j1_17)) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (testHistogram-old.vpr@117.13--117.95) [54285]"}
            j1_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (testHistogram-old.vpr@117.13--117.95) [54286]"}
            j1_17 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogram-old.vpr@117.13--117.95) [54287]"}
      (forall j1_1: int, j1_1_1: int ::
      
      (((j1_1 != j1_1_1 && Seq#Contains(Seq#Range(0, M * N), j1_1)) && Seq#Contains(Seq#Range(0, M * N), j1_1_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix, j1_1) != Seq#Index(matrix, j1_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_1: int ::
        { Seq#Index(matrix, j1_1) } { Seq#Index(matrix, j1_1) }
        Seq#Contains(Seq#Range(0, M * N), j1_1) && NoPerm < 1 / 2 ==> qpRange22(Seq#Index(matrix, j1_1)) && invRecv22(Seq#Index(matrix, j1_1)) == j1_1
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        (Seq#Contains(Seq#Range(0, M * N), invRecv22(o_4)) && NoPerm < 1 / 2) && qpRange22(o_4) ==> Seq#Index(matrix, invRecv22(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistogram-old.vpr@117.13--117.95) [54288]"}
      (forall j1_1: int ::
      { Seq#Index(matrix, j1_1) } { Seq#Index(matrix, j1_1) }
      Seq#Contains(Seq#Range(0, M * N), j1_1) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_1: int ::
        { Seq#Index(matrix, j1_1) } { Seq#Index(matrix, j1_1) }
        Seq#Contains(Seq#Range(0, M * N), j1_1) && 1 / 2 > NoPerm ==> Seq#Index(matrix, j1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, M * N), invRecv22(o_4)) && NoPerm < 1 / 2) && qpRange22(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(matrix, invRecv22(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, M * N), invRecv22(o_4)) && NoPerm < 1 / 2) && qpRange22(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N <= N;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k_fresh_rw_0: Int :: { matrix[k_fresh_rw_0] } (k_fresh_rw_0 in [0..M * N)) && k_fresh_rw_0 % N < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_9)) {
          assert {:msg "  Contract might not be well-formed. Divisor N might be zero. (testHistogram-old.vpr@119.13--122.56) [54289]"}
            N != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_9) && k_fresh_rw_0_9 mod N < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogram-old.vpr@119.13--122.56) [54290]"}
            k_fresh_rw_0_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogram-old.vpr@119.13--122.56) [54291]"}
            k_fresh_rw_0_9 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogram-old.vpr@119.13--122.56) [54292]"}
            HasDirectPerm(Mask, Seq#Index(matrix, k_fresh_rw_0_9), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_fresh_rw_0_1: int ::
      { Seq#Index(matrix, k_fresh_rw_0_1) }
      Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_1) && k_fresh_rw_0_1 mod N < N ==> Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_1), Ref__Integer_value])
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int :: { (i1 in [0..P)) } { hist[i1] } (i1 in [0..P)) ==> acc(hist[i1].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), i1_14)) {
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might be negative. (testHistogram-old.vpr@123.13--123.89) [54293]"}
            i1_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might exceed sequence length. (testHistogram-old.vpr@123.13--123.89) [54294]"}
            i1_14 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogram-old.vpr@123.13--123.89) [54295]"}
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } (j1 in [0..M * N)) ==> acc(matrix[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * N), j1_2)) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (testHistogram-old.vpr@124.12--124.94) [54296]"}
            j1_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (testHistogram-old.vpr@124.12--124.94) [54297]"}
            j1_2 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogram-old.vpr@124.12--124.94) [54298]"}
      (forall j1_3: int, j1_3_1: int ::
      
      (((j1_3 != j1_3_1 && Seq#Contains(Seq#Range(0, M * N), j1_3)) && Seq#Contains(Seq#Range(0, M * N), j1_3_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix, j1_3) != Seq#Index(matrix, j1_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_3: int ::
        { Seq#Index(matrix, j1_3) } { Seq#Index(matrix, j1_3) }
        Seq#Contains(Seq#Range(0, M * N), j1_3) && NoPerm < 1 / 2 ==> qpRange24(Seq#Index(matrix, j1_3)) && invRecv24(Seq#Index(matrix, j1_3)) == j1_3
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        (Seq#Contains(Seq#Range(0, M * N), invRecv24(o_4)) && NoPerm < 1 / 2) && qpRange24(o_4) ==> Seq#Index(matrix, invRecv24(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testHistogram-old.vpr@124.12--124.94) [54299]"}
      (forall j1_3: int ::
      { Seq#Index(matrix, j1_3) } { Seq#Index(matrix, j1_3) }
      Seq#Contains(Seq#Range(0, M * N), j1_3) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_3: int ::
        { Seq#Index(matrix, j1_3) } { Seq#Index(matrix, j1_3) }
        Seq#Contains(Seq#Range(0, M * N), j1_3) && 1 / 2 > NoPerm ==> Seq#Index(matrix, j1_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, M * N), invRecv24(o_4)) && NoPerm < 1 / 2) && qpRange24(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(matrix, invRecv24(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, M * N), invRecv24(o_4)) && NoPerm < 1 / 2) && qpRange24(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
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
        if (Seq#Contains(Seq#Range(0, P_1), i1_2)) {
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might be negative. (testHistogram-old.vpr@125.12--125.88) [54300]"}
            i1_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[i1] into hist might exceed sequence length. (testHistogram-old.vpr@125.12--125.88) [54301]"}
            i1_2 < Seq#Length(hist);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogram-old.vpr@125.12--125.88) [54302]"}
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
    
    // -- Check definedness of (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k))
      if (*) {
        if (Seq#Contains(Seq#Range(0, P_1), k_28)) {
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might be negative. (testHistogram-old.vpr@126.12--126.111) [54303]"}
            k_28 >= 0;
          assert {:msg "  Contract might not be well-formed. Index hist[k] into hist might exceed sequence length. (testHistogram-old.vpr@126.12--126.111) [54304]"}
            k_28 < Seq#Length(hist);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@126.12--126.111) [54305]"}
            HasDirectPerm(PostMask, Seq#Index(hist, k_28), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= M * N might not hold. (testHistogram-old.vpr@126.78--126.110) [54306]"}
              0 <= M * N;
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogram-old.vpr@126.78--126.110) [54307]"}
              (forall k$0: int ::
              
              Seq#Contains(Seq#Range(0, M * N), k$0) ==> PostMask[Seq#Index(matrix, k$0), Ref__Integer_value] > NoPerm
            );
            assume (forall k$0: int ::
              
              Seq#Contains(Seq#Range(0, M * N), k$0) ==> wildcard < PostMask[Seq#Index(matrix, k$0), Ref__Integer_value]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testHistogram-old.vpr@126.78--126.110) [54308]"}
                (forall k$0: int ::
                { Seq#Index(matrix, k$0) } { Seq#Index(matrix, k$0) }
                Seq#Contains(Seq#Range(0, M * N), k$0) && dummyFunction(PostHeap[Seq#Index(matrix, k$0), Ref__Integer_value]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver matrix[k$0] is injective
              assert {:msg "  Precondition of function count_array might not hold. Quantified resource matrix[k$0].Ref__Integer_value might not be injective. (testHistogram-old.vpr@126.78--126.110) [54309]"}
                (forall k$0: int, k$0_1: int ::
                { neverTriggered26(k$0), neverTriggered26(k$0_1) }
                (((k$0 != k$0_1 && Seq#Contains(Seq#Range(0, M * N), k$0)) && Seq#Contains(Seq#Range(0, M * N), k$0_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(matrix, k$0) != Seq#Index(matrix, k$0_1)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access matrix[k$0].Ref__Integer_value (testHistogram-old.vpr@126.78--126.110) [54310]"}
                (forall k$0: int ::
                { Seq#Index(matrix, k$0) } { Seq#Index(matrix, k$0) }
                Seq#Contains(Seq#Range(0, M * N), k$0) ==> wildcard > NoPerm ==> PostMask[Seq#Index(matrix, k$0), Ref__Integer_value] > NoPerm
              );
            
            // -- assumptions for inverse of receiver matrix[k$0]
              assume (forall k$0: int ::
                { Seq#Index(matrix, k$0) } { Seq#Index(matrix, k$0) }
                Seq#Contains(Seq#Range(0, M * N), k$0) && NoPerm < wildcard ==> qpRange26(Seq#Index(matrix, k$0)) && invRecv26(Seq#Index(matrix, k$0)) == k$0
              );
              assume (forall o_4: Ref ::
                { invRecv26(o_4) }
                Seq#Contains(Seq#Range(0, M * N), invRecv26(o_4)) && (NoPerm < wildcard && qpRange26(o_4)) ==> Seq#Index(matrix, invRecv26(o_4)) == o_4
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
    assume (forall k_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_1_1) } { Seq#Index(hist, k_1_1) }
      Seq#Contains(Seq#Range(0, P_1), k_1_1) ==> PostHeap[Seq#Index(hist, k_1_1), Ref__Integer_value] == count_array(PostHeap, 0, M * N, matrix, k_1_1)
    );
    assume state(PostHeap, PostMask);
    assume N <= N;
    
    // -- Check definedness of (forall k_fresh_rw_0: Int :: { old(matrix[k_fresh_rw_0]) } (k_fresh_rw_0 in [0..M * N)) && k_fresh_rw_0 % N < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value))
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_10)) {
          assert {:msg "  Contract might not be well-formed. Divisor N might be zero. (testHistogram-old.vpr@127.11--127.201) [54311]"}
            N != 0;
        }
        if (Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_10) && k_fresh_rw_0_10 mod N < N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogram-old.vpr@127.11--127.201) [54312]"}
            k_fresh_rw_0_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogram-old.vpr@127.11--127.201) [54313]"}
            k_fresh_rw_0_10 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogram-old.vpr@127.11--127.201) [54314]"}
            HasDirectPerm(PostMask, Seq#Index(matrix, k_fresh_rw_0_10), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might be negative. (testHistogram-old.vpr@127.11--127.201) [54315]"}
            k_fresh_rw_0_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[k_fresh_rw_0] into matrix might exceed sequence length. (testHistogram-old.vpr@127.11--127.201) [54316]"}
            k_fresh_rw_0_10 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[k_fresh_rw_0].Ref__Integer_value (testHistogram-old.vpr@127.11--127.201) [54317]"}
            HasDirectPerm(oldMask, Seq#Index(matrix, k_fresh_rw_0_10), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_fresh_rw_0_3: int ::
      { Seq#Index(matrix, k_fresh_rw_0_3) }
      Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_3) && k_fresh_rw_0_3 mod N < N ==> PostHeap[Seq#Index(matrix, k_fresh_rw_0_3), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_3), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_84(diz, P, hist) -- testHistogram-old.vpr@129.3--129.34
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_84 might not hold. Assertion diz != null might not hold. (testHistogram-old.vpr@129.3--129.34) [54318]"}
        diz != null;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver hist[k] is injective
        assert {:msg "  The precondition of method Ref__loop_main_84 might not hold. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@129.3--129.34) [54319]"}
          (forall k_4_1: int, k_4_2: int ::
          { neverTriggered29(k_4_1), neverTriggered29(k_4_2) }
          (((k_4_1 != k_4_2 && Seq#Contains(Seq#Range(0, P_1), k_4_1)) && Seq#Contains(Seq#Range(0, P_1), k_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_4_1) != Seq#Index(hist, k_4_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_84 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@129.3--129.34) [54320]"}
          (forall k_4_1: int ::
          { Seq#Index(hist, k_4_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_4_1) } { Seq#Contains(Seq#Range(0, P_1), k_4_1) } { Seq#Index(hist, k_4_1) }
          Seq#Contains(Seq#Range(0, P_1), k_4_1) ==> Mask[Seq#Index(hist, k_4_1), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver hist[k]
        assume (forall k_4_1: int ::
          { Seq#Index(hist, k_4_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_4_1) } { Seq#Contains(Seq#Range(0, P_1), k_4_1) } { Seq#Index(hist, k_4_1) }
          Seq#Contains(Seq#Range(0, P_1), k_4_1) && NoPerm < FullPerm ==> qpRange29(Seq#Index(hist, k_4_1)) && invRecv29(Seq#Index(hist, k_4_1)) == k_4_1
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
      assert {:msg "  Method call might fail. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@129.3--129.34) [54321]"}
        (forall k_5: int, k_5_1: int ::
        
        (((k_5 != k_5_1 && Seq#Contains(Seq#Range(0, P_1), k_5)) && Seq#Contains(Seq#Range(0, P_1), k_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_5) != Seq#Index(hist, k_5_1)
      );
      
      // -- Define Inverse Function
        assume (forall k_5: int ::
          { Seq#Index(hist, k_5) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
          Seq#Contains(Seq#Range(0, P_1), k_5) && NoPerm < FullPerm ==> qpRange30(Seq#Index(hist, k_5)) && invRecv30(Seq#Index(hist, k_5)) == k_5
        );
        assume (forall o_4: Ref ::
          { invRecv30(o_4) }
          (Seq#Contains(Seq#Range(0, P_1), invRecv30(o_4)) && NoPerm < FullPerm) && qpRange30(o_4) ==> Seq#Index(hist, invRecv30(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_5: int ::
          { Seq#Index(hist, k_5) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_5) } { Seq#Contains(Seq#Range(0, P_1), k_5) } { Seq#Index(hist, k_5) }
          Seq#Contains(Seq#Range(0, P_1), k_5) ==> Seq#Index(hist, k_5) != null
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
      assume (forall k_6: int ::
        { Seq#ContainsTrigger(Seq#Range(0, P_1), k_6) } { Seq#Contains(Seq#Range(0, P_1), k_6) } { Seq#Index(hist, k_6) }
        Seq#Contains(Seq#Range(0, P_1), k_6) ==> Heap[Seq#Index(hist, k_6), Ref__Integer_value] == 0
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__loop_main_104(diz, P, N, M, matrix, hist) -- testHistogram-old.vpr@130.3--130.49
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Assertion diz != null might not hold. (testHistogram-old.vpr@130.3--130.49) [54322]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Assertion M > 0 might not hold. (testHistogram-old.vpr@130.3--130.49) [54323]"}
        M > 0;
      assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Assertion N > 0 might not hold. (testHistogram-old.vpr@130.3--130.49) [54324]"}
        N > 0;
      assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Assertion P > 0 might not hold. (testHistogram-old.vpr@130.3--130.49) [54325]"}
        P_1 > 0;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver hist[k] is injective
        assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@130.3--130.49) [54326]"}
          (forall k_7_1: int, k_7_2: int ::
          { neverTriggered31(k_7_1), neverTriggered31(k_7_2) }
          (((k_7_1 != k_7_2 && Seq#Contains(Seq#Range(0, P_1), k_7_1)) && Seq#Contains(Seq#Range(0, P_1), k_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_7_1) != Seq#Index(hist, k_7_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. There might be insufficient permission to access hist[k].Ref__Integer_value (testHistogram-old.vpr@130.3--130.49) [54327]"}
          (forall k_7_1: int ::
          { Seq#Index(hist, k_7_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_7_1) } { Seq#Contains(Seq#Range(0, P_1), k_7_1) } { Seq#Index(hist, k_7_1) }
          Seq#Contains(Seq#Range(0, P_1), k_7_1) ==> Mask[Seq#Index(hist, k_7_1), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver hist[k]
        assume (forall k_7_1: int ::
          { Seq#Index(hist, k_7_1) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_7_1) } { Seq#Contains(Seq#Range(0, P_1), k_7_1) } { Seq#Index(hist, k_7_1) }
          Seq#Contains(Seq#Range(0, P_1), k_7_1) && NoPerm < FullPerm ==> qpRange31(Seq#Index(hist, k_7_1)) && invRecv31(Seq#Index(hist, k_7_1)) == k_7_1
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
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Fraction 1 / 4 might be negative. (testHistogram-old.vpr@130.3--130.49) [54328]"}
          (forall j_9: int ::
          { Seq#Index(matrix, j_9) } { Seq#Index(matrix, j_9) }
          Seq#Contains(Seq#Range(0, M * N), j_9) && dummyFunction(Heap[Seq#Index(matrix, j_9), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
        );
      
      // -- check if receiver matrix[j] is injective
        assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram-old.vpr@130.3--130.49) [54329]"}
          (forall j_9: int, j_26: int ::
          { neverTriggered32(j_9), neverTriggered32(j_26) }
          (((j_9 != j_26 && Seq#Contains(Seq#Range(0, M * N), j_9)) && Seq#Contains(Seq#Range(0, M * N), j_26)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_9) != Seq#Index(matrix, j_26)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (testHistogram-old.vpr@130.3--130.49) [54330]"}
          (forall j_9: int ::
          { Seq#Index(matrix, j_9) } { Seq#Index(matrix, j_9) }
          Seq#Contains(Seq#Range(0, M * N), j_9) ==> Mask[Seq#Index(matrix, j_9), Ref__Integer_value] >= 1 / 4
        );
      
      // -- assumptions for inverse of receiver matrix[j]
        assume (forall j_9: int ::
          { Seq#Index(matrix, j_9) } { Seq#Index(matrix, j_9) }
          Seq#Contains(Seq#Range(0, M * N), j_9) && NoPerm < 1 / 4 ==> qpRange32(Seq#Index(matrix, j_9)) && invRecv32(Seq#Index(matrix, j_9)) == j_9
        );
        assume (forall o_4: Ref ::
          { invRecv32(o_4) }
          Seq#Contains(Seq#Range(0, M * N), invRecv32(o_4)) && (NoPerm < 1 / 4 && qpRange32(o_4)) ==> Seq#Index(matrix, invRecv32(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (Seq#Contains(Seq#Range(0, M * N), invRecv32(o_4)) && (NoPerm < 1 / 4 && qpRange32(o_4)) ==> Seq#Index(matrix, invRecv32(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!(Seq#Contains(Seq#Range(0, M * N), invRecv32(o_4)) && (NoPerm < 1 / 4 && qpRange32(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Assertion N <= N might not hold. (testHistogram-old.vpr@130.3--130.49) [54331]"}
        N <= N;
      if (*) {
        if (Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_6_1) && k_fresh_rw_0_6_1 mod N < N) {
          assert {:msg "  The precondition of method Ref__loop_main_104 might not hold. Assertion (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)) might not hold. (testHistogram-old.vpr@130.3--130.49) [54332]"}
            Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_6_1), Ref__Integer_value]);
        }
        assume false;
      }
      assume (forall k_fresh_rw_0_7_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_7_1), Ref__Integer_value]) } { Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_7_1), Ref__Integer_value]) }
        Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_7_1) && k_fresh_rw_0_7_1 mod N < N ==> Seq#Contains(Seq#Range(0, P_1), Heap[Seq#Index(matrix, k_fresh_rw_0_7_1), Ref__Integer_value])
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume M > 0;
      assume N > 0;
      assume P_1 > 0;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource matrix[j].Ref__Integer_value might not be injective. (testHistogram-old.vpr@130.3--130.49) [54333]"}
        (forall j_1: int, j_1_1: int ::
        
        (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, M * N), j_1)) && Seq#Contains(Seq#Range(0, M * N), j_1_1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(matrix, j_1) != Seq#Index(matrix, j_1_1)
      );
      
      // -- Define Inverse Function
        assume (forall j_1: int ::
          { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
          Seq#Contains(Seq#Range(0, M * N), j_1) && NoPerm < 1 / 4 ==> qpRange33(Seq#Index(matrix, j_1)) && invRecv33(Seq#Index(matrix, j_1)) == j_1
        );
        assume (forall o_4: Ref ::
          { invRecv33(o_4) }
          (Seq#Contains(Seq#Range(0, M * N), invRecv33(o_4)) && NoPerm < 1 / 4) && qpRange33(o_4) ==> Seq#Index(matrix, invRecv33(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (testHistogram-old.vpr@130.3--130.49) [54334]"}
        (forall j_1: int ::
        { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
        Seq#Contains(Seq#Range(0, M * N), j_1) ==> 1 / 4 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall j_1: int ::
          { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
          Seq#Contains(Seq#Range(0, M * N), j_1) && 1 / 4 > NoPerm ==> Seq#Index(matrix, j_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((Seq#Contains(Seq#Range(0, M * N), invRecv33(o_4)) && NoPerm < 1 / 4) && qpRange33(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(matrix, invRecv33(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!((Seq#Contains(Seq#Range(0, M * N), invRecv33(o_4)) && NoPerm < 1 / 4) && qpRange33(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource hist[k].Ref__Integer_value might not be injective. (testHistogram-old.vpr@130.3--130.49) [54335]"}
        (forall k_8: int, k_8_1: int ::
        
        (((k_8 != k_8_1 && Seq#Contains(Seq#Range(0, P_1), k_8)) && Seq#Contains(Seq#Range(0, P_1), k_8_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, k_8) != Seq#Index(hist, k_8_1)
      );
      
      // -- Define Inverse Function
        assume (forall k_8: int ::
          { Seq#Index(hist, k_8) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_8) } { Seq#Contains(Seq#Range(0, P_1), k_8) } { Seq#Index(hist, k_8) }
          Seq#Contains(Seq#Range(0, P_1), k_8) && NoPerm < FullPerm ==> qpRange34(Seq#Index(hist, k_8)) && invRecv34(Seq#Index(hist, k_8)) == k_8
        );
        assume (forall o_4: Ref ::
          { invRecv34(o_4) }
          (Seq#Contains(Seq#Range(0, P_1), invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> Seq#Index(hist, invRecv34(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_8: int ::
          { Seq#Index(hist, k_8) } { Seq#ContainsTrigger(Seq#Range(0, P_1), k_8) } { Seq#Contains(Seq#Range(0, P_1), k_8) } { Seq#Index(hist, k_8) }
          Seq#Contains(Seq#Range(0, P_1), k_8) ==> Seq#Index(hist, k_8) != null
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
      assume (forall k_9: int ::
        { Seq#ContainsTrigger(Seq#Range(0, P_1), k_9) } { Seq#Contains(Seq#Range(0, P_1), k_9) } { Seq#Index(hist, k_9) }
        Seq#Contains(Seq#Range(0, P_1), k_9) ==> Heap[Seq#Index(hist, k_9), Ref__Integer_value] == PreCallHeap[Seq#Index(hist, k_9), Ref__Integer_value] + count_array(Heap, 0, M * N, matrix, k_9)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__histogram might not hold. Fraction 1 / 2 might be negative. (testHistogram-old.vpr@124.12--124.94) [54336]"}
        (forall j1_4_1: int ::
        { Seq#Index(matrix, j1_4_1) } { Seq#Index(matrix, j1_4_1) }
        Seq#Contains(Seq#Range(0, M * N), j1_4_1) && dummyFunction(Heap[Seq#Index(matrix, j1_4_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver matrix[j1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (testHistogram-old.vpr@124.12--124.94) [54337]"}
        (forall j1_4_1: int, j1_4_2: int ::
        { neverTriggered27(j1_4_1), neverTriggered27(j1_4_2) }
        (((j1_4_1 != j1_4_2 && Seq#Contains(Seq#Range(0, M * N), j1_4_1)) && Seq#Contains(Seq#Range(0, M * N), j1_4_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(matrix, j1_4_1) != Seq#Index(matrix, j1_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__histogram might not hold. There might be insufficient permission to access matrix[j1].Ref__Integer_value (testHistogram-old.vpr@124.12--124.94) [54338]"}
        (forall j1_4_1: int ::
        { Seq#Index(matrix, j1_4_1) } { Seq#Index(matrix, j1_4_1) }
        Seq#Contains(Seq#Range(0, M * N), j1_4_1) ==> Mask[Seq#Index(matrix, j1_4_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver matrix[j1]
      assume (forall j1_4_1: int ::
        { Seq#Index(matrix, j1_4_1) } { Seq#Index(matrix, j1_4_1) }
        Seq#Contains(Seq#Range(0, M * N), j1_4_1) && NoPerm < 1 / 2 ==> qpRange27(Seq#Index(matrix, j1_4_1)) && invRecv27(Seq#Index(matrix, j1_4_1)) == j1_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv27(o_4) }
        Seq#Contains(Seq#Range(0, M * N), invRecv27(o_4)) && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> Seq#Index(matrix, invRecv27(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, M * N), invRecv27(o_4)) && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> Seq#Index(matrix, invRecv27(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, M * N), invRecv27(o_4)) && (NoPerm < 1 / 2 && qpRange27(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
      assert {:msg "  Contract might not be well-formed. Quantified resource hist[i1].Ref__Integer_value might not be injective. (testHistogram-old.vpr@125.12--125.88) [54339]"}
        (forall i1_4_1: int, i1_4_2: int ::
        { neverTriggered28(i1_4_1), neverTriggered28(i1_4_2) }
        (((i1_4_1 != i1_4_2 && Seq#Contains(Seq#Range(0, P_1), i1_4_1)) && Seq#Contains(Seq#Range(0, P_1), i1_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(hist, i1_4_1) != Seq#Index(hist, i1_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__histogram might not hold. There might be insufficient permission to access hist[i1].Ref__Integer_value (testHistogram-old.vpr@125.12--125.88) [54340]"}
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
      if (Seq#Contains(Seq#Range(0, P_1), k_2_1)) {
        assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k) might not hold. (testHistogram-old.vpr@126.12--126.111) [54341]"}
          Heap[Seq#Index(hist, k_2_1), Ref__Integer_value] == count_array(Heap, 0, M * N, matrix, k_2_1);
      }
      assume false;
    }
    assume (forall k_3_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, P_1), k_3_1_1) } { Seq#Contains(Seq#Range(0, P_1), k_3_1_1) } { Seq#Index(hist, k_3_1_1) }
      Seq#Contains(Seq#Range(0, P_1), k_3_1_1) ==> Heap[Seq#Index(hist, k_3_1_1), Ref__Integer_value] == count_array(Heap, 0, M * N, matrix, k_3_1_1)
    );
    assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion N <= N might not hold. (testHistogram-old.vpr@127.11--127.201) [54342]"}
      N <= N;
    if (*) {
      if (Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_4) && k_fresh_rw_0_4 mod N < N) {
        assert {:msg "  Postcondition of Ref__histogram might not hold. Assertion matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value) might not hold. (testHistogram-old.vpr@127.11--127.201) [54343]"}
          Heap[Seq#Index(matrix, k_fresh_rw_0_4), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_4), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall k_fresh_rw_0_5_1: int ::
      { Seq#Index(matrix, k_fresh_rw_0_5_1) }
      Seq#Contains(Seq#Range(0, M * N), k_fresh_rw_0_5_1) && k_fresh_rw_0_5_1 mod N < N ==> Heap[Seq#Index(matrix, k_fresh_rw_0_5_1), Ref__Integer_value] == oldHeap[Seq#Index(matrix, k_fresh_rw_0_5_1), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}