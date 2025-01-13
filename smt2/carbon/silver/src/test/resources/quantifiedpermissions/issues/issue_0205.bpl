// 
// Translation of Viper program.
// 
// Date:         2025-01-13 17:57:05
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0205.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0205-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> Heap[null, PredicateMaskField(pm_f_16)] == ExhaleHeap[null, PredicateMaskField(pm_f_16)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> Heap[null, WandMaskField(pm_f_16)] == ExhaleHeap[null, WandMaskField(pm_f_16)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_35: (Field A B), v: B ::
  { Heap[o_3, f_35:=v] }
  succHeap(Heap, Heap[o_3, f_35:=v])
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

function  neverTriggered1(j_3_1: int): bool;
function  neverTriggered2(j_3_1: int): bool;
function  neverTriggered3(j_3_1: int): bool;
function  neverTriggered4(j_3_1: int): bool;
function  neverTriggered5(j_1: int): bool;
function  neverTriggered6(j_2_1: int): bool;
function  neverTriggered7(j_3_1: int): bool;
function  neverTriggered8(j_4_1: int): bool;
function  neverTriggered9(j_5_1: int): bool;
function  neverTriggered10(j_6_1: int): bool;
function  neverTriggered11(j_7_1: int): bool;
function  neverTriggered12(j_8: int): bool;
function  neverTriggered13(j_9_1: int): bool;
function  neverTriggered14(j_10_2: int): bool;
function  neverTriggered15(j_11_2: int): bool;
function  neverTriggered16(j_1: int): bool;
function  neverTriggered17(j_2_1: int): bool;
function  neverTriggered18(j_3_1: int): bool;
function  neverTriggered19(j_4_1: int): bool;
function  neverTriggered20(j_5_1: int): bool;
function  neverTriggered21(j_1: int): bool;
function  neverTriggered22(j_2_1: int): bool;
function  neverTriggered23(j_3_1: int): bool;
function  neverTriggered24(j_4_1: int): bool;
function  neverTriggered25(j_5_1: int): bool;
function  neverTriggered26(j_1: int): bool;
function  neverTriggered27(j_2_1: int): bool;
function  neverTriggered28(j_3_1: int): bool;
function  neverTriggered29(j_4_1: int): bool;
function  neverTriggered30(j_5_1: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 5: fun04qp
// - height 4: fun01qp
// - height 3: fun01
// - height 2: fun02qp
// - height 1: fun03qp
// - height 0: fun02
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique elems: Field NormalField (Seq Ref);
axiom !IsPredicateField(elems);
axiom !IsWandField(elems);

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, x: Ref, y: Ref, b_24: bool): int;
function  fun01'(Heap: HeapType, x: Ref, y: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref, b_24: bool ::
  { fun01(Heap, x, y, b_24) }
  fun01(Heap, x, y, b_24) == fun01'(Heap, x, y, b_24) && dummyFunction(fun01#triggerStateless(x, y, b_24))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref, b_24: bool ::
  { fun01'(Heap, x, y, b_24) }
  dummyFunction(fun01#triggerStateless(x, y, b_24))
);

// Framing axioms
function  fun01#frame(frame: FrameType, x: Ref, y: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, b_24: bool ::
  { state(Heap, Mask), fun01'(Heap, x, y, b_24) }
  state(Heap, Mask) ==> fun01'(Heap, x, y, b_24) == fun01#frame(FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[y, f_7]))), x, y, b_24)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, x: Ref, y: Ref, b_24: bool): bool;

// State-independent trigger function
function  fun01#triggerStateless(x: Ref, y: Ref, b_24: bool): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness(x: Ref, y: Ref, b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun02
// ==================================================

// Uninterpreted function definitions
function  fun02(Heap: HeapType, x: Ref, y: Ref, b_24: bool): int;
function  fun02'(Heap: HeapType, x: Ref, y: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref, b_24: bool ::
  { fun02(Heap, x, y, b_24) }
  fun02(Heap, x, y, b_24) == fun02'(Heap, x, y, b_24) && dummyFunction(fun02#triggerStateless(x, y, b_24))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref, b_24: bool ::
  { fun02'(Heap, x, y, b_24) }
  dummyFunction(fun02#triggerStateless(x, y, b_24))
);

// Framing axioms
function  fun02#frame(frame: FrameType, x: Ref, y: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, b_24: bool ::
  { state(Heap, Mask), fun02'(Heap, x, y, b_24) }
  state(Heap, Mask) ==> fun02'(Heap, x, y, b_24) == fun02#frame(CombineFrames(ConditionalFrame((if b_24 then FullPerm else NoPerm), FrameFragment(Heap[x, f_7])), ConditionalFrame((if !b_24 then FullPerm else NoPerm), FrameFragment(Heap[y, f_7]))), x, y, b_24)
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType, x: Ref, y: Ref, b_24: bool): bool;

// State-independent trigger function
function  fun02#triggerStateless(x: Ref, y: Ref, b_24: bool): int;

// Check contract well-formedness and postcondition
procedure fun02#definedness(x: Ref, y: Ref, b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := (if b_24 then FullPerm else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (b ? write : none) might be negative. (issue_0205.vpr@14.12--14.38) [75261]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := (if !b_24 then FullPerm else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (!b ? write : none) might be negative. (issue_0205.vpr@15.12--15.39) [75262]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun01qp
// ==================================================

// Uninterpreted function definitions
function  fun01qp(Heap: HeapType, xs: (Seq Ref), i: int): int;
function  fun01qp'(Heap: HeapType, xs: (Seq Ref), i: int): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun01qp(Heap, xs, i) }
  fun01qp(Heap, xs, i) == fun01qp'(Heap, xs, i) && dummyFunction(fun01qp#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun01qp'(Heap, xs, i) }
  dummyFunction(fun01qp#triggerStateless(xs, i))
);

// Framing axioms
function  fun01qp#frame(frame: FrameType, xs: (Seq Ref), i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), fun01qp'(Heap, xs, i) }
  state(Heap, Mask) ==> fun01qp'(Heap, xs, i) == fun01qp#frame(FrameFragment(fun01qp#condqp1(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 0 <= j && (j < |xs| && j == i) ==> acc(xs[j].f, write)) in function fun01qp
// ==================================================

function  fun01qp#condqp1(Heap: HeapType, xs_1_1: (Seq Ref), i_1_1_1: int): int;
function  sk_fun01qp#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) && (sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) < Seq#Length(xs) && sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) == i)) && NoPerm < FullPerm <==> (0 <= sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) && (sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) < Seq#Length(xs) && sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) == i)) && NoPerm < FullPerm) && ((0 <= sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) && (sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) < Seq#Length(xs) && sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i)) == i)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun01qp#condqp1(fun01qp#condqp1(Heap2Heap, xs, i), fun01qp#condqp1(Heap1Heap, xs, i))), f_7]) ==> fun01qp#condqp1(Heap2Heap, xs, i) == fun01qp#condqp1(Heap1Heap, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  fun01qp#trigger(frame: FrameType, xs: (Seq Ref), i: int): bool;

// State-independent trigger function
function  fun01qp#triggerStateless(xs: (Seq Ref), i: int): int;

// Check contract well-formedness and postcondition
procedure fun01qp#definedness(xs: (Seq Ref), i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var j_5: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i < Seq#Length(xs);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && (j < |xs| && j == i) ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_5 && (j_5 < Seq#Length(xs) && j_5 == i)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@30.12--30.81) [75263]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@30.12--30.81) [75264]"}
            j_5 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@30.12--30.81) [75265]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && (0 <= j_3_1 && (j_3_1 < Seq#Length(xs) && j_3_1 == i))) && (0 <= j_3_2 && (j_3_2 < Seq#Length(xs) && j_3_2 == i))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_3_1) != Seq#Index(xs, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
        (0 <= j_3_1 && (j_3_1 < Seq#Length(xs) && j_3_1 == i)) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, j_3_1)) && invRecv1(Seq#Index(xs, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && (invRecv1(o_4) < Seq#Length(xs) && invRecv1(o_4) == i)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(xs, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
        0 <= j_3_1 && (j_3_1 < Seq#Length(xs) && j_3_1 == i) ==> Seq#Index(xs, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv1(o_4) && (invRecv1(o_4) < Seq#Length(xs) && invRecv1(o_4) == i)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv1(o_4) && (invRecv1(o_4) < Seq#Length(xs) && invRecv1(o_4) == i)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun02qp
// ==================================================

// Uninterpreted function definitions
function  fun02qp(Heap: HeapType, xs: (Seq Ref), i: int): int;
function  fun02qp'(Heap: HeapType, xs: (Seq Ref), i: int): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun02qp(Heap, xs, i) }
  fun02qp(Heap, xs, i) == fun02qp'(Heap, xs, i) && dummyFunction(fun02qp#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun02qp'(Heap, xs, i) }
  dummyFunction(fun02qp#triggerStateless(xs, i))
);

// Framing axioms
function  fun02qp#frame(frame: FrameType, xs: (Seq Ref), i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), fun02qp'(Heap, xs, i) }
  state(Heap, Mask) ==> fun02qp'(Heap, xs, i) == fun02qp#frame(FrameFragment(fun02qp#condqp2(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].f, (j == i ? write : none))) in function fun02qp
// ==================================================

function  fun02qp#condqp2(Heap: HeapType, xs_1_1: (Seq Ref), i_1_1_1: int): int;
function  sk_fun02qp#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) && sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < (if sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) == i then FullPerm else NoPerm) <==> (0 <= sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) && sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < (if sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) == i then FullPerm else NoPerm)) && ((0 <= sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) && sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < (if sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i)) == i then FullPerm else NoPerm) ==> Heap2Heap[Seq#Index(xs, sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun02qp#condqp2(fun02qp#condqp2(Heap2Heap, xs, i), fun02qp#condqp2(Heap1Heap, xs, i))), f_7]) ==> fun02qp#condqp2(Heap2Heap, xs, i) == fun02qp#condqp2(Heap1Heap, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  fun02qp#trigger(frame: FrameType, xs: (Seq Ref), i: int): bool;

// State-independent trigger function
function  fun02qp#triggerStateless(xs: (Seq Ref), i: int): int;

// Check contract well-formedness and postcondition
procedure fun02qp#definedness(xs: (Seq Ref), i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var j: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i < Seq#Length(xs);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].f, (j == i ? write : none)))
      if (*) {
        if (0 <= j && j < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@34.12--34.87) [75266]"}
            j >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@34.12--34.87) [75267]"}
            j < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@34.12--34.87) [75268]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < Seq#Length(xs))) && (0 <= j_3_2 && j_3_2 < Seq#Length(xs))) && NoPerm < (if j_3_1 == i then FullPerm else NoPerm)) && NoPerm < (if j_3_2 == i then FullPerm else NoPerm) ==> Seq#Index(xs, j_3_1) != Seq#Index(xs, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
        (0 <= j_3_1 && j_3_1 < Seq#Length(xs)) && NoPerm < (if j_3_1 == i then FullPerm else NoPerm) ==> qpRange2(Seq#Index(xs, j_3_1)) && invRecv2(Seq#Index(xs, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < (if invRecv2(o_4) == i then FullPerm else NoPerm)) && qpRange2(o_4) ==> Seq#Index(xs, invRecv2(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction (j == i ? write : none) might be negative. (issue_0205.vpr@34.12--34.87) [75269]"}
      (forall j_3_1: int ::
      { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
      0 <= j_3_1 && j_3_1 < Seq#Length(xs) ==> (if j_3_1 == i then FullPerm else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
        (0 <= j_3_1 && j_3_1 < Seq#Length(xs)) && (if j_3_1 == i then FullPerm else NoPerm) > NoPerm ==> Seq#Index(xs, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < (if invRecv2(o_4) == i then FullPerm else NoPerm)) && qpRange2(o_4) ==> (NoPerm < (if invRecv2(o_4) == i then FullPerm else NoPerm) ==> Seq#Index(xs, invRecv2(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + (if invRecv2(o_4) == i then FullPerm else NoPerm)) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < (if invRecv2(o_4) == i then FullPerm else NoPerm)) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun03qp
// ==================================================

// Uninterpreted function definitions
function  fun03qp(Heap: HeapType, x: Ref, i: int): int;
function  fun03qp'(Heap: HeapType, x: Ref, i: int): int;
axiom (forall Heap: HeapType, x: Ref, i: int ::
  { fun03qp(Heap, x, i) }
  fun03qp(Heap, x, i) == fun03qp'(Heap, x, i) && dummyFunction(fun03qp#triggerStateless(x, i))
);
axiom (forall Heap: HeapType, x: Ref, i: int ::
  { fun03qp'(Heap, x, i) }
  dummyFunction(fun03qp#triggerStateless(x, i))
);

// Framing axioms
function  fun03qp#frame(frame: FrameType, x: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, i: int ::
  { state(Heap, Mask), fun03qp'(Heap, x, i) }
  state(Heap, Mask) ==> fun03qp'(Heap, x, i) == fun03qp#frame(CombineFrames(FrameFragment(Heap[x, elems]), FrameFragment(fun03qp#condqp3(Heap, x, i))), x, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { x.elems[j] } 0 <= j && (j < |x.elems| && j == i) ==> acc(x.elems[j].f, write)) in function fun03qp
// ==================================================

function  fun03qp#condqp3(Heap: HeapType, x_1_1_1: Ref, i_1_1_1: int): int;
function  sk_fun03qp#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, i: int ::
  { fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) && (sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) < Seq#Length(Heap2Heap[x, elems]) && sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) == i)) && NoPerm < FullPerm <==> (0 <= sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) && (sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) < Seq#Length(Heap1Heap[x, elems]) && sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) == i)) && NoPerm < FullPerm) && ((0 <= sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) && (sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) < Seq#Length(Heap2Heap[x, elems]) && sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) == i)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(Heap2Heap[x, elems], sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i))), f_7] == Heap1Heap[Seq#Index(Heap1Heap[x, elems], sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i))), f_7]) ==> fun03qp#condqp3(Heap2Heap, x, i) == fun03qp#condqp3(Heap1Heap, x, i)
);

// Trigger function (controlling recursive postconditions)
function  fun03qp#trigger(frame: FrameType, x: Ref, i: int): bool;

// State-independent trigger function
function  fun03qp#triggerStateless(x: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure fun03qp#definedness(x: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var j_6: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems:=Mask[x, elems] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    
    // -- Check definedness of i < |x.elems|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@38.12--38.35) [75270]"}
        HasDirectPerm(Mask, x, elems);
    assume i < Seq#Length(Heap[x, elems]);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { x.elems[j] } 0 <= j && (j < |x.elems| && j == i) ==> acc(x.elems[j].f, write))
      if (*) {
        if (0 <= j_6) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@39.12--39.91) [75271]"}
            HasDirectPerm(Mask, x, elems);
        }
        if (0 <= j_6 && (j_6 < Seq#Length(Heap[x, elems]) && j_6 == i)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@39.12--39.91) [75272]"}
            HasDirectPerm(Mask, x, elems);
          assert {:msg "  Contract might not be well-formed. Index x.elems[j] into x.elems might be negative. (issue_0205.vpr@39.12--39.91) [75273]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index x.elems[j] into x.elems might exceed sequence length. (issue_0205.vpr@39.12--39.91) [75274]"}
            j_6 < Seq#Length(Heap[x, elems]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@39.12--39.91) [75275]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && (0 <= j_3_1 && (j_3_1 < Seq#Length(Heap[x, elems]) && j_3_1 == i))) && (0 <= j_3_2 && (j_3_2 < Seq#Length(Heap[x, elems]) && j_3_2 == i))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, elems], j_3_1) != Seq#Index(Heap[x, elems], j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(Heap[x, elems], j_3_1) } { Seq#Index(Heap[x, elems], j_3_1) }
        (0 <= j_3_1 && (j_3_1 < Seq#Length(Heap[x, elems]) && j_3_1 == i)) && NoPerm < FullPerm ==> qpRange3(Seq#Index(Heap[x, elems], j_3_1)) && invRecv3(Seq#Index(Heap[x, elems], j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && (invRecv3(o_4) < Seq#Length(Heap[x, elems]) && invRecv3(o_4) == i)) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(Heap[x, elems], invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(Heap[x, elems], j_3_1) } { Seq#Index(Heap[x, elems], j_3_1) }
        0 <= j_3_1 && (j_3_1 < Seq#Length(Heap[x, elems]) && j_3_1 == i) ==> Seq#Index(Heap[x, elems], j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv3(o_4) && (invRecv3(o_4) < Seq#Length(Heap[x, elems]) && invRecv3(o_4) == i)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[x, elems], invRecv3(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv3(o_4) && (invRecv3(o_4) < Seq#Length(Heap[x, elems]) && invRecv3(o_4) == i)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun04qp
// ==================================================

// Uninterpreted function definitions
function  fun04qp(Heap: HeapType, x: Ref, i: int): int;
function  fun04qp'(Heap: HeapType, x: Ref, i: int): int;
axiom (forall Heap: HeapType, x: Ref, i: int ::
  { fun04qp(Heap, x, i) }
  fun04qp(Heap, x, i) == fun04qp'(Heap, x, i) && dummyFunction(fun04qp#triggerStateless(x, i))
);
axiom (forall Heap: HeapType, x: Ref, i: int ::
  { fun04qp'(Heap, x, i) }
  dummyFunction(fun04qp#triggerStateless(x, i))
);

// Framing axioms
function  fun04qp#frame(frame: FrameType, x: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, i: int ::
  { state(Heap, Mask), fun04qp'(Heap, x, i) }
  state(Heap, Mask) ==> fun04qp'(Heap, x, i) == fun04qp#frame(CombineFrames(FrameFragment(Heap[x, elems]), FrameFragment(fun04qp#condqp4(Heap, x, i))), x, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { x.elems[j] } 0 <= j && j < |x.elems| ==> acc(x.elems[j].f, (j == i ? write : none))) in function fun04qp
// ==================================================

function  fun04qp#condqp4(Heap: HeapType, x_1_1_1: Ref, i_1_1_1: int): int;
function  sk_fun04qp#condqp4(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, i: int ::
  { fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) && sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) < Seq#Length(Heap2Heap[x, elems])) && NoPerm < (if sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) == i then FullPerm else NoPerm) <==> (0 <= sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) && sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) < Seq#Length(Heap1Heap[x, elems])) && NoPerm < (if sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) == i then FullPerm else NoPerm)) && ((0 <= sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) && sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) < Seq#Length(Heap2Heap[x, elems])) && NoPerm < (if sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) == i then FullPerm else NoPerm) ==> Heap2Heap[Seq#Index(Heap2Heap[x, elems], sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i))), f_7] == Heap1Heap[Seq#Index(Heap1Heap[x, elems], sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i))), f_7]) ==> fun04qp#condqp4(Heap2Heap, x, i) == fun04qp#condqp4(Heap1Heap, x, i)
);

// Trigger function (controlling recursive postconditions)
function  fun04qp#trigger(frame: FrameType, x: Ref, i: int): bool;

// State-independent trigger function
function  fun04qp#triggerStateless(x: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure fun04qp#definedness(x: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var j_2: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems:=Mask[x, elems] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    
    // -- Check definedness of i < |x.elems|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@43.12--43.35) [75276]"}
        HasDirectPerm(Mask, x, elems);
    assume i < Seq#Length(Heap[x, elems]);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { x.elems[j] } 0 <= j && j < |x.elems| ==> acc(x.elems[j].f, (j == i ? write : none)))
      if (*) {
        if (0 <= j_2) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@44.12--44.97) [75277]"}
            HasDirectPerm(Mask, x, elems);
        }
        if (0 <= j_2 && j_2 < Seq#Length(Heap[x, elems])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@44.12--44.97) [75278]"}
            HasDirectPerm(Mask, x, elems);
          assert {:msg "  Contract might not be well-formed. Index x.elems[j] into x.elems might be negative. (issue_0205.vpr@44.12--44.97) [75279]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index x.elems[j] into x.elems might exceed sequence length. (issue_0205.vpr@44.12--44.97) [75280]"}
            j_2 < Seq#Length(Heap[x, elems]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@44.12--44.97) [75281]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < Seq#Length(Heap[x, elems]))) && (0 <= j_3_2 && j_3_2 < Seq#Length(Heap[x, elems]))) && NoPerm < (if j_3_1 == i then FullPerm else NoPerm)) && NoPerm < (if j_3_2 == i then FullPerm else NoPerm) ==> Seq#Index(Heap[x, elems], j_3_1) != Seq#Index(Heap[x, elems], j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(Heap[x, elems], j_3_1) } { Seq#Index(Heap[x, elems], j_3_1) }
        (0 <= j_3_1 && j_3_1 < Seq#Length(Heap[x, elems])) && NoPerm < (if j_3_1 == i then FullPerm else NoPerm) ==> qpRange4(Seq#Index(Heap[x, elems], j_3_1)) && invRecv4(Seq#Index(Heap[x, elems], j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(Heap[x, elems])) && NoPerm < (if invRecv4(o_4) == i then FullPerm else NoPerm)) && qpRange4(o_4) ==> Seq#Index(Heap[x, elems], invRecv4(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction (j == i ? write : none) might be negative. (issue_0205.vpr@44.12--44.97) [75282]"}
      (forall j_3_1: int ::
      { Seq#Index(Heap[x, elems], j_3_1) } { Seq#Index(Heap[x, elems], j_3_1) }
      0 <= j_3_1 && j_3_1 < Seq#Length(Heap[x, elems]) ==> (if j_3_1 == i then FullPerm else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(Heap[x, elems], j_3_1) } { Seq#Index(Heap[x, elems], j_3_1) }
        (0 <= j_3_1 && j_3_1 < Seq#Length(Heap[x, elems])) && (if j_3_1 == i then FullPerm else NoPerm) > NoPerm ==> Seq#Index(Heap[x, elems], j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(Heap[x, elems])) && NoPerm < (if invRecv4(o_4) == i then FullPerm else NoPerm)) && qpRange4(o_4) ==> (NoPerm < (if invRecv4(o_4) == i then FullPerm else NoPerm) ==> Seq#Index(Heap[x, elems], invRecv4(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + (if invRecv4(o_4) == i then FullPerm else NoPerm)) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(Heap[x, elems])) && NoPerm < (if invRecv4(o_4) == i then FullPerm else NoPerm)) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, y: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: y.f := 0 -- issue_0205.vpr@20.3--20.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (issue_0205.vpr@20.3--20.11) [75283]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(x, y, true) == old(fun01(x, y, true)) -- issue_0205.vpr@22.3--22.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01(x, y, true) == old(fun01(x, y, true))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (issue_0205.vpr@22.10--22.27) [75284]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (issue_0205.vpr@22.35--22.52) [75285]"}
          NoPerm < perm ==> NoPerm < oldMask[x, f_7];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x, y, true) == old(fun01(x, y, true)) might not hold. (issue_0205.vpr@22.10--22.53) [75286]"}
      fun01(Heap, x, y, true) == fun01(oldHeap, x, y, true);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(x, y, true) == old(fun02(x, y, true)) -- issue_0205.vpr@23.3--23.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(x, y, true) == old(fun02(x, y, true))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (true ? write : none) might be negative. (issue_0205.vpr@23.10--23.27) [75287]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (issue_0205.vpr@23.10--23.27) [75288]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (!true ? write : none) might be negative. (issue_0205.vpr@23.10--23.27) [75289]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access y.f (issue_0205.vpr@23.10--23.27) [75290]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (true ? write : none) might be negative. (issue_0205.vpr@23.35--23.52) [75291]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (issue_0205.vpr@23.35--23.52) [75292]"}
          NoPerm < perm ==> NoPerm < oldMask[x, f_7];
        perm := NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (!true ? write : none) might be negative. (issue_0205.vpr@23.35--23.52) [75293]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access y.f (issue_0205.vpr@23.35--23.52) [75294]"}
          NoPerm < perm ==> NoPerm < oldMask[y, f_7];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(x, y, true) == old(fun02(x, y, true)) might not hold. (issue_0205.vpr@23.10--23.53) [75295]"}
      fun02(Heap, x, y, true) == fun02(oldHeap, x, y, true);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Seq Ref), i1: int, i2_1: int, x: Ref) returns ()
  modifies Heap, Mask;
{
  var j1_27: int;
  var j2_10: int;
  var j_3: int;
  var QPMask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i1;
    assume i1 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume 0 <= i2_1;
    assume i2_1 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume i1 != i2_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|xs|)), (j2 in [0..|xs|)) } { (j1 in [0..|xs|)), xs[j2] } { (j2 in [0..|xs|)), xs[j1] } { xs[j1], xs[j2] } (j1 in [0..|xs|)) && ((j2 in [0..|xs|)) && j1 != j2) ==> xs[j1] != xs[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_27) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_10) && j1_27 != j2_10)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might be negative. (issue_0205.vpr@51.12--51.106) [75296]"}
            j1_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might exceed sequence length. (issue_0205.vpr@51.12--51.106) [75297]"}
            j1_27 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might be negative. (issue_0205.vpr@51.12--51.106) [75298]"}
            j2_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might exceed sequence length. (issue_0205.vpr@51.12--51.106) [75299]"}
            j2_10 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Index(xs, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Index(xs, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1), Seq#Index(xs, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1), Seq#Index(xs, j1_1) } { Seq#Index(xs, j1_1), Seq#Index(xs, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) && j1_1 != j2_1) ==> Seq#Index(xs, j1_1) != Seq#Index(xs, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_3 && j_3 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@52.12--52.71) [75300]"}
            j_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@52.12--52.71) [75301]"}
            j_3 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@52.12--52.71) [75302]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Seq#Length(xs))) && (0 <= j_1_1 && j_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange5(Seq#Index(xs, j_1)) && invRecv5(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        ((0 <= invRecv5(o_4) && invRecv5(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(xs, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < Seq#Length(xs) ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv5(o_4) && invRecv5(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv5(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems:=Mask[x, elems] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.elems == xs
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@53.12--53.41) [75303]"}
        HasDirectPerm(Mask, x, elems);
    assume Seq#Equal(Heap[x, elems], xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: xs[i1].f := 0 -- issue_0205.vpr@55.3--55.16
    
    // -- Check definedness of xs[i1]
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might be negative. (issue_0205.vpr@55.3--55.16) [75304]"}
        i1 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might exceed sequence length. (issue_0205.vpr@55.3--55.16) [75305]"}
        i1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i1].f (issue_0205.vpr@55.3--55.16) [75306]"}
      FullPerm == Mask[Seq#Index(xs, i1), f_7];
    Heap := Heap[Seq#Index(xs, i1), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01qp(xs, i2) == old(fun01qp(xs, i2)) -- issue_0205.vpr@57.3--57.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01qp(xs, i2) == old(fun01qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@57.10--57.25) [75307]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@57.10--57.25) [75308]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun01qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@57.10--57.25) [75309]"}
            (forall j_2_1: int, j_2_2: int ::
            { neverTriggered6(j_2_1), neverTriggered6(j_2_2) }
            (((j_2_1 != j_2_2 && (0 <= j_2_1 && (j_2_1 < Seq#Length(xs) && j_2_1 == i2_1))) && (0 <= j_2_2 && (j_2_2 < Seq#Length(xs) && j_2_2 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_2_1) != Seq#Index(xs, j_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@57.10--57.25) [75310]"}
            (forall j_2_1: int ::
            { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
            0 <= j_2_1 && (j_2_1 < Seq#Length(xs) && j_2_1 == i2_1) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_2_1: int ::
            { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
            (0 <= j_2_1 && (j_2_1 < Seq#Length(xs) && j_2_1 == i2_1)) && NoPerm < FullPerm ==> qpRange6(Seq#Index(xs, j_2_1)) && invRecv6(Seq#Index(xs, j_2_1)) == j_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            (0 <= invRecv6(o_4) && (invRecv6(o_4) < Seq#Length(xs) && invRecv6(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(xs, invRecv6(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@57.33--57.48) [75311]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@57.33--57.48) [75312]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun01qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@57.33--57.48) [75313]"}
            (forall j_3_1: int, j_3_2: int ::
            { neverTriggered7(j_3_1), neverTriggered7(j_3_2) }
            (((j_3_1 != j_3_2 && (0 <= j_3_1 && (j_3_1 < Seq#Length(xs) && j_3_1 == i2_1))) && (0 <= j_3_2 && (j_3_2 < Seq#Length(xs) && j_3_2 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_3_1) != Seq#Index(xs, j_3_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@57.33--57.48) [75314]"}
            (forall j_3_1: int ::
            { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
            0 <= j_3_1 && (j_3_1 < Seq#Length(xs) && j_3_1 == i2_1) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(xs, j_3_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_3_1: int ::
            { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
            (0 <= j_3_1 && (j_3_1 < Seq#Length(xs) && j_3_1 == i2_1)) && NoPerm < FullPerm ==> qpRange7(Seq#Index(xs, j_3_1)) && invRecv7(Seq#Index(xs, j_3_1)) == j_3_1
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (0 <= invRecv7(o_4) && (invRecv7(o_4) < Seq#Length(xs) && invRecv7(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(xs, invRecv7(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01qp(xs, i2) == old(fun01qp(xs, i2)) might not hold. (issue_0205.vpr@57.10--57.49) [75315]"}
      fun01qp(Heap, xs, i2_1) == fun01qp(oldHeap, xs, i2_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02qp(xs, i2) == old(fun02qp(xs, i2)) -- issue_0205.vpr@58.3--58.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02qp(xs, i2) == old(fun02qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@58.10--58.25) [75316]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@58.10--58.25) [75317]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@58.10--58.25) [75318]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(xs, j_4_1), f_7]) ==> (if j_4_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@58.10--58.25) [75319]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered8(j_4_1), neverTriggered8(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < Seq#Length(xs))) && (0 <= j_4_2 && j_4_2 < Seq#Length(xs))) && NoPerm < (if j_4_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_4_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(xs, j_4_1) != Seq#Index(xs, j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@58.10--58.25) [75320]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            0 <= j_4_1 && j_4_1 < Seq#Length(xs) ==> (if j_4_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && NoPerm < (if j_4_1 == i2_1 then FullPerm else NoPerm) ==> qpRange8(Seq#Index(xs, j_4_1)) && invRecv8(Seq#Index(xs, j_4_1)) == j_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv8(o_4) }
            (0 <= invRecv8(o_4) && invRecv8(o_4) < Seq#Length(xs)) && (NoPerm < (if invRecv8(o_4) == i2_1 then FullPerm else NoPerm) && qpRange8(o_4)) ==> Seq#Index(xs, invRecv8(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@58.33--58.48) [75321]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@58.33--58.48) [75322]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@58.33--58.48) [75323]"}
            (forall j_5_1: int ::
            { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
            (0 <= j_5_1 && j_5_1 < Seq#Length(xs)) && dummyFunction(oldHeap[Seq#Index(xs, j_5_1), f_7]) ==> (if j_5_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@58.33--58.48) [75324]"}
            (forall j_5_1: int, j_5_2: int ::
            { neverTriggered9(j_5_1), neverTriggered9(j_5_2) }
            (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < Seq#Length(xs))) && (0 <= j_5_2 && j_5_2 < Seq#Length(xs))) && NoPerm < (if j_5_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_5_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(xs, j_5_1) != Seq#Index(xs, j_5_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@58.33--58.48) [75325]"}
            (forall j_5_1: int ::
            { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
            0 <= j_5_1 && j_5_1 < Seq#Length(xs) ==> (if j_5_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(xs, j_5_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_5_1: int ::
            { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
            (0 <= j_5_1 && j_5_1 < Seq#Length(xs)) && NoPerm < (if j_5_1 == i2_1 then FullPerm else NoPerm) ==> qpRange9(Seq#Index(xs, j_5_1)) && invRecv9(Seq#Index(xs, j_5_1)) == j_5_1
          );
          assume (forall o_4: Ref ::
            { invRecv9(o_4) }
            (0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(xs)) && (NoPerm < (if invRecv9(o_4) == i2_1 then FullPerm else NoPerm) && qpRange9(o_4)) ==> Seq#Index(xs, invRecv9(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02qp(xs, i2) == old(fun02qp(xs, i2)) might not hold. (issue_0205.vpr@58.10--58.49) [75326]"}
      fun02qp(Heap, xs, i2_1) == fun02qp(oldHeap, xs, i2_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun03qp(x, i2) == old(fun03qp(x, i2)) -- issue_0205.vpr@60.3--60.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun03qp(x, i2) == old(fun03qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@60.10--60.24) [75327]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@60.10--60.24) [75328]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@60.10--60.24) [75329]"}
          i2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@60.10--60.24) [75330]"}
            (forall j_6_1: int, j_6_2: int ::
            { neverTriggered10(j_6_1), neverTriggered10(j_6_2) }
            (((j_6_1 != j_6_2 && (0 <= j_6_1 && (j_6_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_6_1 == i2_1))) && (0 <= j_6_2 && (j_6_2 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_6_2 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_1) != Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@60.10--60.24) [75331]"}
            (forall j_6_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_1) }
            0 <= j_6_1 && (j_6_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_6_1 == i2_1) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_6_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_1) }
            (0 <= j_6_1 && (j_6_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_6_1 == i2_1)) && NoPerm < FullPerm ==> qpRange10(Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_1)) && invRecv10(Seq#Index(ExhaleWellDef0Heap[x, elems], j_6_1)) == j_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            (0 <= invRecv10(o_4) && (invRecv10(o_4) < Seq#Length(ExhaleWellDef0Heap[x, elems]) && invRecv10(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], invRecv10(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@60.32--60.46) [75332]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@60.32--60.46) [75333]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@60.32--60.46) [75334]"}
          i2_1 < Seq#Length(oldHeap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@60.32--60.46) [75335]"}
            (forall j_7_1: int, j_7_2: int ::
            { neverTriggered11(j_7_1), neverTriggered11(j_7_2) }
            (((j_7_1 != j_7_2 && (0 <= j_7_1 && (j_7_1 < Seq#Length(oldHeap[x, elems]) && j_7_1 == i2_1))) && (0 <= j_7_2 && (j_7_2 < Seq#Length(oldHeap[x, elems]) && j_7_2 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(oldHeap[x, elems], j_7_1) != Seq#Index(oldHeap[x, elems], j_7_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@60.32--60.46) [75336]"}
            (forall j_7_1: int ::
            { Seq#Index(oldHeap[x, elems], j_7_1) } { Seq#Index(oldHeap[x, elems], j_7_1) }
            0 <= j_7_1 && (j_7_1 < Seq#Length(oldHeap[x, elems]) && j_7_1 == i2_1) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems], j_7_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_7_1: int ::
            { Seq#Index(oldHeap[x, elems], j_7_1) } { Seq#Index(oldHeap[x, elems], j_7_1) }
            (0 <= j_7_1 && (j_7_1 < Seq#Length(oldHeap[x, elems]) && j_7_1 == i2_1)) && NoPerm < FullPerm ==> qpRange11(Seq#Index(oldHeap[x, elems], j_7_1)) && invRecv11(Seq#Index(oldHeap[x, elems], j_7_1)) == j_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            (0 <= invRecv11(o_4) && (invRecv11(o_4) < Seq#Length(oldHeap[x, elems]) && invRecv11(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(oldHeap[x, elems], invRecv11(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun03qp(x, i2) == old(fun03qp(x, i2)) might not hold. (issue_0205.vpr@60.10--60.47) [75337]"}
      fun03qp(Heap, x, i2_1) == fun03qp(oldHeap, x, i2_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun04qp(x, i2) == old(fun04qp(x, i2)) -- issue_0205.vpr@61.3--61.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun04qp(x, i2) == old(fun04qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@61.10--61.24) [75338]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@61.10--61.24) [75339]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@61.10--61.24) [75340]"}
          i2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@61.10--61.24) [75341]"}
            (forall j_8: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_8) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_8) }
            (0 <= j_8 && j_8 < Seq#Length(ExhaleWellDef0Heap[x, elems])) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(ExhaleWellDef0Heap[x, elems], j_8), f_7]) ==> (if j_8 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@61.10--61.24) [75342]"}
            (forall j_8: int, j_8_1: int ::
            { neverTriggered12(j_8), neverTriggered12(j_8_1) }
            (((j_8 != j_8_1 && (0 <= j_8 && j_8 < Seq#Length(ExhaleWellDef0Heap[x, elems]))) && (0 <= j_8_1 && j_8_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]))) && NoPerm < (if j_8 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_8_1 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], j_8) != Seq#Index(ExhaleWellDef0Heap[x, elems], j_8_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@61.10--61.24) [75343]"}
            (forall j_8: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_8) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_8) }
            0 <= j_8 && j_8 < Seq#Length(ExhaleWellDef0Heap[x, elems]) ==> (if j_8 == i2_1 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems], j_8), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_8: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_8) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_8) }
            (0 <= j_8 && j_8 < Seq#Length(ExhaleWellDef0Heap[x, elems])) && NoPerm < (if j_8 == i2_1 then FullPerm else NoPerm) ==> qpRange12(Seq#Index(ExhaleWellDef0Heap[x, elems], j_8)) && invRecv12(Seq#Index(ExhaleWellDef0Heap[x, elems], j_8)) == j_8
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            (0 <= invRecv12(o_4) && invRecv12(o_4) < Seq#Length(ExhaleWellDef0Heap[x, elems])) && (NoPerm < (if invRecv12(o_4) == i2_1 then FullPerm else NoPerm) && qpRange12(o_4)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], invRecv12(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@61.32--61.46) [75344]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@61.32--61.46) [75345]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@61.32--61.46) [75346]"}
          i2_1 < Seq#Length(oldHeap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@61.32--61.46) [75347]"}
            (forall j_9_1: int ::
            { Seq#Index(oldHeap[x, elems], j_9_1) } { Seq#Index(oldHeap[x, elems], j_9_1) }
            (0 <= j_9_1 && j_9_1 < Seq#Length(oldHeap[x, elems])) && dummyFunction(oldHeap[Seq#Index(oldHeap[x, elems], j_9_1), f_7]) ==> (if j_9_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@61.32--61.46) [75348]"}
            (forall j_9_1: int, j_9_2: int ::
            { neverTriggered13(j_9_1), neverTriggered13(j_9_2) }
            (((j_9_1 != j_9_2 && (0 <= j_9_1 && j_9_1 < Seq#Length(oldHeap[x, elems]))) && (0 <= j_9_2 && j_9_2 < Seq#Length(oldHeap[x, elems]))) && NoPerm < (if j_9_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_9_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(oldHeap[x, elems], j_9_1) != Seq#Index(oldHeap[x, elems], j_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@61.32--61.46) [75349]"}
            (forall j_9_1: int ::
            { Seq#Index(oldHeap[x, elems], j_9_1) } { Seq#Index(oldHeap[x, elems], j_9_1) }
            0 <= j_9_1 && j_9_1 < Seq#Length(oldHeap[x, elems]) ==> (if j_9_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems], j_9_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_9_1: int ::
            { Seq#Index(oldHeap[x, elems], j_9_1) } { Seq#Index(oldHeap[x, elems], j_9_1) }
            (0 <= j_9_1 && j_9_1 < Seq#Length(oldHeap[x, elems])) && NoPerm < (if j_9_1 == i2_1 then FullPerm else NoPerm) ==> qpRange13(Seq#Index(oldHeap[x, elems], j_9_1)) && invRecv13(Seq#Index(oldHeap[x, elems], j_9_1)) == j_9_1
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            (0 <= invRecv13(o_4) && invRecv13(o_4) < Seq#Length(oldHeap[x, elems])) && (NoPerm < (if invRecv13(o_4) == i2_1 then FullPerm else NoPerm) && qpRange13(o_4)) ==> Seq#Index(oldHeap[x, elems], invRecv13(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun04qp(x, i2) == old(fun04qp(x, i2)) might not hold. (issue_0205.vpr@61.10--61.47) [75350]"}
      fun04qp(Heap, x, i2_1) == fun04qp(oldHeap, x, i2_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i2].f := 0 -- issue_0205.vpr@63.3--63.16
    
    // -- Check definedness of xs[i2]
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might be negative. (issue_0205.vpr@63.3--63.16) [75351]"}
        i2_1 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might exceed sequence length. (issue_0205.vpr@63.3--63.16) [75352]"}
        i2_1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i2].f (issue_0205.vpr@63.3--63.16) [75353]"}
      FullPerm == Mask[Seq#Index(xs, i2_1), f_7];
    Heap := Heap[Seq#Index(xs, i2_1), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01qp(xs, i2) == old(fun01qp(xs, i2)) -- issue_0205.vpr@66.3--66.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01qp(xs, i2) == old(fun01qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@66.10--66.25) [75354]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@66.10--66.25) [75355]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun01qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@66.10--66.25) [75356]"}
            (forall j_10_2: int, j_10_3: int ::
            { neverTriggered14(j_10_2), neverTriggered14(j_10_3) }
            (((j_10_2 != j_10_3 && (0 <= j_10_2 && (j_10_2 < Seq#Length(xs) && j_10_2 == i2_1))) && (0 <= j_10_3 && (j_10_3 < Seq#Length(xs) && j_10_3 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_10_2) != Seq#Index(xs, j_10_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@66.10--66.25) [75357]"}
            (forall j_10_2: int ::
            { Seq#Index(xs, j_10_2) } { Seq#Index(xs, j_10_2) }
            0 <= j_10_2 && (j_10_2 < Seq#Length(xs) && j_10_2 == i2_1) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_10_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_10_2: int ::
            { Seq#Index(xs, j_10_2) } { Seq#Index(xs, j_10_2) }
            (0 <= j_10_2 && (j_10_2 < Seq#Length(xs) && j_10_2 == i2_1)) && NoPerm < FullPerm ==> qpRange14(Seq#Index(xs, j_10_2)) && invRecv14(Seq#Index(xs, j_10_2)) == j_10_2
          );
          assume (forall o_4: Ref ::
            { invRecv14(o_4) }
            (0 <= invRecv14(o_4) && (invRecv14(o_4) < Seq#Length(xs) && invRecv14(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange14(o_4)) ==> Seq#Index(xs, invRecv14(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@66.33--66.48) [75358]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@66.33--66.48) [75359]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun01qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@66.33--66.48) [75360]"}
            (forall j_11_2: int, j_11_3: int ::
            { neverTriggered15(j_11_2), neverTriggered15(j_11_3) }
            (((j_11_2 != j_11_3 && (0 <= j_11_2 && (j_11_2 < Seq#Length(xs) && j_11_2 == i2_1))) && (0 <= j_11_3 && (j_11_3 < Seq#Length(xs) && j_11_3 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_11_2) != Seq#Index(xs, j_11_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@66.33--66.48) [75361]"}
            (forall j_11_2: int ::
            { Seq#Index(xs, j_11_2) } { Seq#Index(xs, j_11_2) }
            0 <= j_11_2 && (j_11_2 < Seq#Length(xs) && j_11_2 == i2_1) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(xs, j_11_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_11_2: int ::
            { Seq#Index(xs, j_11_2) } { Seq#Index(xs, j_11_2) }
            (0 <= j_11_2 && (j_11_2 < Seq#Length(xs) && j_11_2 == i2_1)) && NoPerm < FullPerm ==> qpRange15(Seq#Index(xs, j_11_2)) && invRecv15(Seq#Index(xs, j_11_2)) == j_11_2
          );
          assume (forall o_4: Ref ::
            { invRecv15(o_4) }
            (0 <= invRecv15(o_4) && (invRecv15(o_4) < Seq#Length(xs) && invRecv15(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(xs, invRecv15(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01qp(xs, i2) == old(fun01qp(xs, i2)) might not hold. (issue_0205.vpr@66.10--66.49) [75362]"}
      fun01qp(Heap, xs, i2_1) == fun01qp(oldHeap, xs, i2_1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(xs: (Seq Ref), i1: int, i2_1: int, x: Ref) returns ()
  modifies Heap, Mask;
{
  var j1_26: int;
  var j2_9: int;
  var j_4: int;
  var QPMask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i1;
    assume i1 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume 0 <= i2_1;
    assume i2_1 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume i1 != i2_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|xs|)), (j2 in [0..|xs|)) } { (j1 in [0..|xs|)), xs[j2] } { (j2 in [0..|xs|)), xs[j1] } { xs[j1], xs[j2] } (j1 in [0..|xs|)) && ((j2 in [0..|xs|)) && j1 != j2) ==> xs[j1] != xs[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_26) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_9) && j1_26 != j2_9)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might be negative. (issue_0205.vpr@75.12--75.106) [75363]"}
            j1_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might exceed sequence length. (issue_0205.vpr@75.12--75.106) [75364]"}
            j1_26 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might be negative. (issue_0205.vpr@75.12--75.106) [75365]"}
            j2_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might exceed sequence length. (issue_0205.vpr@75.12--75.106) [75366]"}
            j2_9 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Index(xs, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Index(xs, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1), Seq#Index(xs, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1), Seq#Index(xs, j1_1) } { Seq#Index(xs, j1_1), Seq#Index(xs, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) && j1_1 != j2_1) ==> Seq#Index(xs, j1_1) != Seq#Index(xs, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_4 && j_4 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@76.12--76.71) [75367]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@76.12--76.71) [75368]"}
            j_4 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@76.12--76.71) [75369]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Seq#Length(xs))) && (0 <= j_1_1 && j_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange16(Seq#Index(xs, j_1)) && invRecv16(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        ((0 <= invRecv16(o_4) && invRecv16(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange16(o_4) ==> Seq#Index(xs, invRecv16(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < Seq#Length(xs) ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv16(o_4) && invRecv16(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv16(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv16(o_4) && invRecv16(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems:=Mask[x, elems] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.elems == xs
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@77.12--77.41) [75370]"}
        HasDirectPerm(Mask, x, elems);
    assume Seq#Equal(Heap[x, elems], xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: xs[i1].f := 0 -- issue_0205.vpr@79.3--79.16
    
    // -- Check definedness of xs[i1]
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might be negative. (issue_0205.vpr@79.3--79.16) [75371]"}
        i1 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might exceed sequence length. (issue_0205.vpr@79.3--79.16) [75372]"}
        i1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i1].f (issue_0205.vpr@79.3--79.16) [75373]"}
      FullPerm == Mask[Seq#Index(xs, i1), f_7];
    Heap := Heap[Seq#Index(xs, i1), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02qp(xs, i2) == old(fun02qp(xs, i2)) -- issue_0205.vpr@81.3--81.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02qp(xs, i2) == old(fun02qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@81.10--81.25) [75374]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@81.10--81.25) [75375]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@81.10--81.25) [75376]"}
            (forall j_2_1: int ::
            { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
            (0 <= j_2_1 && j_2_1 < Seq#Length(xs)) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(xs, j_2_1), f_7]) ==> (if j_2_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@81.10--81.25) [75377]"}
            (forall j_2_1: int, j_2_2: int ::
            { neverTriggered17(j_2_1), neverTriggered17(j_2_2) }
            (((j_2_1 != j_2_2 && (0 <= j_2_1 && j_2_1 < Seq#Length(xs))) && (0 <= j_2_2 && j_2_2 < Seq#Length(xs))) && NoPerm < (if j_2_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_2_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(xs, j_2_1) != Seq#Index(xs, j_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@81.10--81.25) [75378]"}
            (forall j_2_1: int ::
            { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
            0 <= j_2_1 && j_2_1 < Seq#Length(xs) ==> (if j_2_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_2_1: int ::
            { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
            (0 <= j_2_1 && j_2_1 < Seq#Length(xs)) && NoPerm < (if j_2_1 == i2_1 then FullPerm else NoPerm) ==> qpRange17(Seq#Index(xs, j_2_1)) && invRecv17(Seq#Index(xs, j_2_1)) == j_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv17(o_4) }
            (0 <= invRecv17(o_4) && invRecv17(o_4) < Seq#Length(xs)) && (NoPerm < (if invRecv17(o_4) == i2_1 then FullPerm else NoPerm) && qpRange17(o_4)) ==> Seq#Index(xs, invRecv17(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@81.33--81.48) [75379]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@81.33--81.48) [75380]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@81.33--81.48) [75381]"}
            (forall j_3_1: int ::
            { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
            (0 <= j_3_1 && j_3_1 < Seq#Length(xs)) && dummyFunction(oldHeap[Seq#Index(xs, j_3_1), f_7]) ==> (if j_3_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@81.33--81.48) [75382]"}
            (forall j_3_1: int, j_3_2: int ::
            { neverTriggered18(j_3_1), neverTriggered18(j_3_2) }
            (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < Seq#Length(xs))) && (0 <= j_3_2 && j_3_2 < Seq#Length(xs))) && NoPerm < (if j_3_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_3_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(xs, j_3_1) != Seq#Index(xs, j_3_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@81.33--81.48) [75383]"}
            (forall j_3_1: int ::
            { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
            0 <= j_3_1 && j_3_1 < Seq#Length(xs) ==> (if j_3_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(xs, j_3_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_3_1: int ::
            { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
            (0 <= j_3_1 && j_3_1 < Seq#Length(xs)) && NoPerm < (if j_3_1 == i2_1 then FullPerm else NoPerm) ==> qpRange18(Seq#Index(xs, j_3_1)) && invRecv18(Seq#Index(xs, j_3_1)) == j_3_1
          );
          assume (forall o_4: Ref ::
            { invRecv18(o_4) }
            (0 <= invRecv18(o_4) && invRecv18(o_4) < Seq#Length(xs)) && (NoPerm < (if invRecv18(o_4) == i2_1 then FullPerm else NoPerm) && qpRange18(o_4)) ==> Seq#Index(xs, invRecv18(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02qp(xs, i2) == old(fun02qp(xs, i2)) might not hold. (issue_0205.vpr@81.10--81.49) [75384]"}
      fun02qp(Heap, xs, i2_1) == fun02qp(oldHeap, xs, i2_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i2].f := 0 -- issue_0205.vpr@83.3--83.16
    
    // -- Check definedness of xs[i2]
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might be negative. (issue_0205.vpr@83.3--83.16) [75385]"}
        i2_1 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might exceed sequence length. (issue_0205.vpr@83.3--83.16) [75386]"}
        i2_1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i2].f (issue_0205.vpr@83.3--83.16) [75387]"}
      FullPerm == Mask[Seq#Index(xs, i2_1), f_7];
    Heap := Heap[Seq#Index(xs, i2_1), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02qp(xs, i2) == old(fun02qp(xs, i2)) -- issue_0205.vpr@86.3--86.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02qp(xs, i2) == old(fun02qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@86.10--86.25) [75388]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@86.10--86.25) [75389]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@86.10--86.25) [75390]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(xs, j_4_1), f_7]) ==> (if j_4_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@86.10--86.25) [75391]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered19(j_4_1), neverTriggered19(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < Seq#Length(xs))) && (0 <= j_4_2 && j_4_2 < Seq#Length(xs))) && NoPerm < (if j_4_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_4_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(xs, j_4_1) != Seq#Index(xs, j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@86.10--86.25) [75392]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            0 <= j_4_1 && j_4_1 < Seq#Length(xs) ==> (if j_4_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && NoPerm < (if j_4_1 == i2_1 then FullPerm else NoPerm) ==> qpRange19(Seq#Index(xs, j_4_1)) && invRecv19(Seq#Index(xs, j_4_1)) == j_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv19(o_4) }
            (0 <= invRecv19(o_4) && invRecv19(o_4) < Seq#Length(xs)) && (NoPerm < (if invRecv19(o_4) == i2_1 then FullPerm else NoPerm) && qpRange19(o_4)) ==> Seq#Index(xs, invRecv19(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@86.33--86.48) [75393]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@86.33--86.48) [75394]"}
          i2_1 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@86.33--86.48) [75395]"}
            (forall j_5_1: int ::
            { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
            (0 <= j_5_1 && j_5_1 < Seq#Length(xs)) && dummyFunction(oldHeap[Seq#Index(xs, j_5_1), f_7]) ==> (if j_5_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@86.33--86.48) [75396]"}
            (forall j_5_1: int, j_5_2: int ::
            { neverTriggered20(j_5_1), neverTriggered20(j_5_2) }
            (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < Seq#Length(xs))) && (0 <= j_5_2 && j_5_2 < Seq#Length(xs))) && NoPerm < (if j_5_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_5_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(xs, j_5_1) != Seq#Index(xs, j_5_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@86.33--86.48) [75397]"}
            (forall j_5_1: int ::
            { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
            0 <= j_5_1 && j_5_1 < Seq#Length(xs) ==> (if j_5_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(xs, j_5_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_5_1: int ::
            { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
            (0 <= j_5_1 && j_5_1 < Seq#Length(xs)) && NoPerm < (if j_5_1 == i2_1 then FullPerm else NoPerm) ==> qpRange20(Seq#Index(xs, j_5_1)) && invRecv20(Seq#Index(xs, j_5_1)) == j_5_1
          );
          assume (forall o_4: Ref ::
            { invRecv20(o_4) }
            (0 <= invRecv20(o_4) && invRecv20(o_4) < Seq#Length(xs)) && (NoPerm < (if invRecv20(o_4) == i2_1 then FullPerm else NoPerm) && qpRange20(o_4)) ==> Seq#Index(xs, invRecv20(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02qp(xs, i2) == old(fun02qp(xs, i2)) might not hold. (issue_0205.vpr@86.10--86.49) [75398]"}
      fun02qp(Heap, xs, i2_1) == fun02qp(oldHeap, xs, i2_1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(xs: (Seq Ref), i1: int, i2_1: int, x: Ref) returns ()
  modifies Heap, Mask;
{
  var j1_28: int;
  var j2_11: int;
  var j_25: int;
  var QPMask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i1;
    assume i1 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume 0 <= i2_1;
    assume i2_1 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume i1 != i2_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|xs|)), (j2 in [0..|xs|)) } { (j1 in [0..|xs|)), xs[j2] } { (j2 in [0..|xs|)), xs[j1] } { xs[j1], xs[j2] } (j1 in [0..|xs|)) && ((j2 in [0..|xs|)) && j1 != j2) ==> xs[j1] != xs[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_28) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_11) && j1_28 != j2_11)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might be negative. (issue_0205.vpr@95.12--95.106) [75399]"}
            j1_28 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might exceed sequence length. (issue_0205.vpr@95.12--95.106) [75400]"}
            j1_28 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might be negative. (issue_0205.vpr@95.12--95.106) [75401]"}
            j2_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might exceed sequence length. (issue_0205.vpr@95.12--95.106) [75402]"}
            j2_11 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Index(xs, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Index(xs, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1), Seq#Index(xs, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1), Seq#Index(xs, j1_1) } { Seq#Index(xs, j1_1), Seq#Index(xs, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) && j1_1 != j2_1) ==> Seq#Index(xs, j1_1) != Seq#Index(xs, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_25 && j_25 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@96.12--96.71) [75403]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@96.12--96.71) [75404]"}
            j_25 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@96.12--96.71) [75405]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Seq#Length(xs))) && (0 <= j_1_1 && j_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange21(Seq#Index(xs, j_1)) && invRecv21(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        ((0 <= invRecv21(o_4) && invRecv21(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange21(o_4) ==> Seq#Index(xs, invRecv21(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < Seq#Length(xs) ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv21(o_4) && invRecv21(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv21(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv21(o_4) && invRecv21(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems:=Mask[x, elems] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.elems == xs
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@97.12--97.41) [75406]"}
        HasDirectPerm(Mask, x, elems);
    assume Seq#Equal(Heap[x, elems], xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: xs[i1].f := 0 -- issue_0205.vpr@99.3--99.16
    
    // -- Check definedness of xs[i1]
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might be negative. (issue_0205.vpr@99.3--99.16) [75407]"}
        i1 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might exceed sequence length. (issue_0205.vpr@99.3--99.16) [75408]"}
        i1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i1].f (issue_0205.vpr@99.3--99.16) [75409]"}
      FullPerm == Mask[Seq#Index(xs, i1), f_7];
    Heap := Heap[Seq#Index(xs, i1), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun03qp(x, i2) == old(fun03qp(x, i2)) -- issue_0205.vpr@101.3--101.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun03qp(x, i2) == old(fun03qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@101.10--101.24) [75410]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@101.10--101.24) [75411]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@101.10--101.24) [75412]"}
          i2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@101.10--101.24) [75413]"}
            (forall j_2_1: int, j_2_2: int ::
            { neverTriggered22(j_2_1), neverTriggered22(j_2_2) }
            (((j_2_1 != j_2_2 && (0 <= j_2_1 && (j_2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_2_1 == i2_1))) && (0 <= j_2_2 && (j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_2_2 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) != Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@101.10--101.24) [75414]"}
            (forall j_2_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) }
            0 <= j_2_1 && (j_2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_2_1 == i2_1) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_2_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) }
            (0 <= j_2_1 && (j_2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_2_1 == i2_1)) && NoPerm < FullPerm ==> qpRange22(Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1)) && invRecv22(Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1)) == j_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv22(o_4) }
            (0 <= invRecv22(o_4) && (invRecv22(o_4) < Seq#Length(ExhaleWellDef0Heap[x, elems]) && invRecv22(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange22(o_4)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], invRecv22(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@101.32--101.46) [75415]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@101.32--101.46) [75416]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@101.32--101.46) [75417]"}
          i2_1 < Seq#Length(oldHeap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@101.32--101.46) [75418]"}
            (forall j_3_1: int, j_3_2: int ::
            { neverTriggered23(j_3_1), neverTriggered23(j_3_2) }
            (((j_3_1 != j_3_2 && (0 <= j_3_1 && (j_3_1 < Seq#Length(oldHeap[x, elems]) && j_3_1 == i2_1))) && (0 <= j_3_2 && (j_3_2 < Seq#Length(oldHeap[x, elems]) && j_3_2 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(oldHeap[x, elems], j_3_1) != Seq#Index(oldHeap[x, elems], j_3_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@101.32--101.46) [75419]"}
            (forall j_3_1: int ::
            { Seq#Index(oldHeap[x, elems], j_3_1) } { Seq#Index(oldHeap[x, elems], j_3_1) }
            0 <= j_3_1 && (j_3_1 < Seq#Length(oldHeap[x, elems]) && j_3_1 == i2_1) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems], j_3_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_3_1: int ::
            { Seq#Index(oldHeap[x, elems], j_3_1) } { Seq#Index(oldHeap[x, elems], j_3_1) }
            (0 <= j_3_1 && (j_3_1 < Seq#Length(oldHeap[x, elems]) && j_3_1 == i2_1)) && NoPerm < FullPerm ==> qpRange23(Seq#Index(oldHeap[x, elems], j_3_1)) && invRecv23(Seq#Index(oldHeap[x, elems], j_3_1)) == j_3_1
          );
          assume (forall o_4: Ref ::
            { invRecv23(o_4) }
            (0 <= invRecv23(o_4) && (invRecv23(o_4) < Seq#Length(oldHeap[x, elems]) && invRecv23(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> Seq#Index(oldHeap[x, elems], invRecv23(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun03qp(x, i2) == old(fun03qp(x, i2)) might not hold. (issue_0205.vpr@101.10--101.47) [75420]"}
      fun03qp(Heap, x, i2_1) == fun03qp(oldHeap, x, i2_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i2].f := 0 -- issue_0205.vpr@103.3--103.16
    
    // -- Check definedness of xs[i2]
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might be negative. (issue_0205.vpr@103.3--103.16) [75421]"}
        i2_1 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might exceed sequence length. (issue_0205.vpr@103.3--103.16) [75422]"}
        i2_1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i2].f (issue_0205.vpr@103.3--103.16) [75423]"}
      FullPerm == Mask[Seq#Index(xs, i2_1), f_7];
    Heap := Heap[Seq#Index(xs, i2_1), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun03qp(x, i2) == old(fun03qp(x, i2)) -- issue_0205.vpr@106.3--106.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun03qp(x, i2) == old(fun03qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@106.10--106.24) [75424]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@106.10--106.24) [75425]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@106.10--106.24) [75426]"}
          i2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@106.10--106.24) [75427]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered24(j_4_1), neverTriggered24(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && (j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_4_1 == i2_1))) && (0 <= j_4_2 && (j_4_2 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_4_2 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) != Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@106.10--106.24) [75428]"}
            (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) }
            0 <= j_4_1 && (j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_4_1 == i2_1) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) }
            (0 <= j_4_1 && (j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) && j_4_1 == i2_1)) && NoPerm < FullPerm ==> qpRange24(Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1)) && invRecv24(Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1)) == j_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv24(o_4) }
            (0 <= invRecv24(o_4) && (invRecv24(o_4) < Seq#Length(ExhaleWellDef0Heap[x, elems]) && invRecv24(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange24(o_4)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], invRecv24(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@106.32--106.46) [75429]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@106.32--106.46) [75430]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@106.32--106.46) [75431]"}
          i2_1 < Seq#Length(oldHeap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@106.32--106.46) [75432]"}
            (forall j_5_1: int, j_5_2: int ::
            { neverTriggered25(j_5_1), neverTriggered25(j_5_2) }
            (((j_5_1 != j_5_2 && (0 <= j_5_1 && (j_5_1 < Seq#Length(oldHeap[x, elems]) && j_5_1 == i2_1))) && (0 <= j_5_2 && (j_5_2 < Seq#Length(oldHeap[x, elems]) && j_5_2 == i2_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(oldHeap[x, elems], j_5_1) != Seq#Index(oldHeap[x, elems], j_5_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@106.32--106.46) [75433]"}
            (forall j_5_1: int ::
            { Seq#Index(oldHeap[x, elems], j_5_1) } { Seq#Index(oldHeap[x, elems], j_5_1) }
            0 <= j_5_1 && (j_5_1 < Seq#Length(oldHeap[x, elems]) && j_5_1 == i2_1) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems], j_5_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_5_1: int ::
            { Seq#Index(oldHeap[x, elems], j_5_1) } { Seq#Index(oldHeap[x, elems], j_5_1) }
            (0 <= j_5_1 && (j_5_1 < Seq#Length(oldHeap[x, elems]) && j_5_1 == i2_1)) && NoPerm < FullPerm ==> qpRange25(Seq#Index(oldHeap[x, elems], j_5_1)) && invRecv25(Seq#Index(oldHeap[x, elems], j_5_1)) == j_5_1
          );
          assume (forall o_4: Ref ::
            { invRecv25(o_4) }
            (0 <= invRecv25(o_4) && (invRecv25(o_4) < Seq#Length(oldHeap[x, elems]) && invRecv25(o_4) == i2_1)) && (NoPerm < FullPerm && qpRange25(o_4)) ==> Seq#Index(oldHeap[x, elems], invRecv25(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun03qp(x, i2) == old(fun03qp(x, i2)) might not hold. (issue_0205.vpr@106.10--106.47) [75434]"}
      fun03qp(Heap, x, i2_1) == fun03qp(oldHeap, x, i2_1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(xs: (Seq Ref), i1: int, i2_1: int, x: Ref) returns ()
  modifies Heap, Mask;
{
  var j1_29: int;
  var j2_12: int;
  var j_21: int;
  var QPMask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i1;
    assume i1 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume 0 <= i2_1;
    assume i2_1 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume i1 != i2_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|xs|)), (j2 in [0..|xs|)) } { (j1 in [0..|xs|)), xs[j2] } { (j2 in [0..|xs|)), xs[j1] } { xs[j1], xs[j2] } (j1 in [0..|xs|)) && ((j2 in [0..|xs|)) && j1 != j2) ==> xs[j1] != xs[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_29) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_12) && j1_29 != j2_12)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might be negative. (issue_0205.vpr@115.12--115.106) [75435]"}
            j1_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might exceed sequence length. (issue_0205.vpr@115.12--115.106) [75436]"}
            j1_29 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might be negative. (issue_0205.vpr@115.12--115.106) [75437]"}
            j2_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might exceed sequence length. (issue_0205.vpr@115.12--115.106) [75438]"}
            j2_12 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Index(xs, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1), Seq#Index(xs, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j2_1), Seq#Index(xs, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1), Seq#Index(xs, j1_1) } { Seq#Index(xs, j1_1), Seq#Index(xs, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_1) && j1_1 != j2_1) ==> Seq#Index(xs, j1_1) != Seq#Index(xs, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_21 && j_21 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@116.12--116.71) [75439]"}
            j_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@116.12--116.71) [75440]"}
            j_21 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@116.12--116.71) [75441]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Seq#Length(xs))) && (0 <= j_1_1 && j_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange26(Seq#Index(xs, j_1)) && invRecv26(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        ((0 <= invRecv26(o_4) && invRecv26(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange26(o_4) ==> Seq#Index(xs, invRecv26(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < Seq#Length(xs) ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv26(o_4) && invRecv26(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange26(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv26(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv26(o_4) && invRecv26(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange26(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems:=Mask[x, elems] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.elems == xs
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@117.12--117.41) [75442]"}
        HasDirectPerm(Mask, x, elems);
    assume Seq#Equal(Heap[x, elems], xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: xs[i1].f := 0 -- issue_0205.vpr@119.3--119.16
    
    // -- Check definedness of xs[i1]
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might be negative. (issue_0205.vpr@119.3--119.16) [75443]"}
        i1 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might exceed sequence length. (issue_0205.vpr@119.3--119.16) [75444]"}
        i1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i1].f (issue_0205.vpr@119.3--119.16) [75445]"}
      FullPerm == Mask[Seq#Index(xs, i1), f_7];
    Heap := Heap[Seq#Index(xs, i1), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun04qp(x, i2) == old(fun04qp(x, i2)) -- issue_0205.vpr@121.3--121.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun04qp(x, i2) == old(fun04qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@121.10--121.24) [75446]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@121.10--121.24) [75447]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@121.10--121.24) [75448]"}
          i2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@121.10--121.24) [75449]"}
            (forall j_2_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) }
            (0 <= j_2_1 && j_2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems])) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1), f_7]) ==> (if j_2_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@121.10--121.24) [75450]"}
            (forall j_2_1: int, j_2_2: int ::
            { neverTriggered27(j_2_1), neverTriggered27(j_2_2) }
            (((j_2_1 != j_2_2 && (0 <= j_2_1 && j_2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]))) && (0 <= j_2_2 && j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems]))) && NoPerm < (if j_2_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_2_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) != Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@121.10--121.24) [75451]"}
            (forall j_2_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) }
            0 <= j_2_1 && j_2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) ==> (if j_2_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_2_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1) }
            (0 <= j_2_1 && j_2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems])) && NoPerm < (if j_2_1 == i2_1 then FullPerm else NoPerm) ==> qpRange27(Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1)) && invRecv27(Seq#Index(ExhaleWellDef0Heap[x, elems], j_2_1)) == j_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv27(o_4) }
            (0 <= invRecv27(o_4) && invRecv27(o_4) < Seq#Length(ExhaleWellDef0Heap[x, elems])) && (NoPerm < (if invRecv27(o_4) == i2_1 then FullPerm else NoPerm) && qpRange27(o_4)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], invRecv27(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@121.32--121.46) [75452]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@121.32--121.46) [75453]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@121.32--121.46) [75454]"}
          i2_1 < Seq#Length(oldHeap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@121.32--121.46) [75455]"}
            (forall j_3_1: int ::
            { Seq#Index(oldHeap[x, elems], j_3_1) } { Seq#Index(oldHeap[x, elems], j_3_1) }
            (0 <= j_3_1 && j_3_1 < Seq#Length(oldHeap[x, elems])) && dummyFunction(oldHeap[Seq#Index(oldHeap[x, elems], j_3_1), f_7]) ==> (if j_3_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@121.32--121.46) [75456]"}
            (forall j_3_1: int, j_3_2: int ::
            { neverTriggered28(j_3_1), neverTriggered28(j_3_2) }
            (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < Seq#Length(oldHeap[x, elems]))) && (0 <= j_3_2 && j_3_2 < Seq#Length(oldHeap[x, elems]))) && NoPerm < (if j_3_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_3_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(oldHeap[x, elems], j_3_1) != Seq#Index(oldHeap[x, elems], j_3_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@121.32--121.46) [75457]"}
            (forall j_3_1: int ::
            { Seq#Index(oldHeap[x, elems], j_3_1) } { Seq#Index(oldHeap[x, elems], j_3_1) }
            0 <= j_3_1 && j_3_1 < Seq#Length(oldHeap[x, elems]) ==> (if j_3_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems], j_3_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_3_1: int ::
            { Seq#Index(oldHeap[x, elems], j_3_1) } { Seq#Index(oldHeap[x, elems], j_3_1) }
            (0 <= j_3_1 && j_3_1 < Seq#Length(oldHeap[x, elems])) && NoPerm < (if j_3_1 == i2_1 then FullPerm else NoPerm) ==> qpRange28(Seq#Index(oldHeap[x, elems], j_3_1)) && invRecv28(Seq#Index(oldHeap[x, elems], j_3_1)) == j_3_1
          );
          assume (forall o_4: Ref ::
            { invRecv28(o_4) }
            (0 <= invRecv28(o_4) && invRecv28(o_4) < Seq#Length(oldHeap[x, elems])) && (NoPerm < (if invRecv28(o_4) == i2_1 then FullPerm else NoPerm) && qpRange28(o_4)) ==> Seq#Index(oldHeap[x, elems], invRecv28(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun04qp(x, i2) == old(fun04qp(x, i2)) might not hold. (issue_0205.vpr@121.10--121.47) [75458]"}
      fun04qp(Heap, x, i2_1) == fun04qp(oldHeap, x, i2_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i2].f := 0 -- issue_0205.vpr@123.3--123.16
    
    // -- Check definedness of xs[i2]
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might be negative. (issue_0205.vpr@123.3--123.16) [75459]"}
        i2_1 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might exceed sequence length. (issue_0205.vpr@123.3--123.16) [75460]"}
        i2_1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i2].f (issue_0205.vpr@123.3--123.16) [75461]"}
      FullPerm == Mask[Seq#Index(xs, i2_1), f_7];
    Heap := Heap[Seq#Index(xs, i2_1), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun04qp(x, i2) == old(fun04qp(x, i2)) -- issue_0205.vpr@126.3--126.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun04qp(x, i2) == old(fun04qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@126.10--126.24) [75462]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@126.10--126.24) [75463]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@126.10--126.24) [75464]"}
          i2_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@126.10--126.24) [75465]"}
            (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems])) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1), f_7]) ==> (if j_4_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@126.10--126.24) [75466]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered29(j_4_1), neverTriggered29(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]))) && (0 <= j_4_2 && j_4_2 < Seq#Length(ExhaleWellDef0Heap[x, elems]))) && NoPerm < (if j_4_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_4_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) != Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@126.10--126.24) [75467]"}
            (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) }
            0 <= j_4_1 && j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems]) ==> (if j_4_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems])) && NoPerm < (if j_4_1 == i2_1 then FullPerm else NoPerm) ==> qpRange29(Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1)) && invRecv29(Seq#Index(ExhaleWellDef0Heap[x, elems], j_4_1)) == j_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv29(o_4) }
            (0 <= invRecv29(o_4) && invRecv29(o_4) < Seq#Length(ExhaleWellDef0Heap[x, elems])) && (NoPerm < (if invRecv29(o_4) == i2_1 then FullPerm else NoPerm) && qpRange29(o_4)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems], invRecv29(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@126.32--126.46) [75468]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@126.32--126.46) [75469]"}
          0 <= i2_1;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@126.32--126.46) [75470]"}
          i2_1 < Seq#Length(oldHeap[x, elems]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@126.32--126.46) [75471]"}
            (forall j_5_1: int ::
            { Seq#Index(oldHeap[x, elems], j_5_1) } { Seq#Index(oldHeap[x, elems], j_5_1) }
            (0 <= j_5_1 && j_5_1 < Seq#Length(oldHeap[x, elems])) && dummyFunction(oldHeap[Seq#Index(oldHeap[x, elems], j_5_1), f_7]) ==> (if j_5_1 == i2_1 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@126.32--126.46) [75472]"}
            (forall j_5_1: int, j_5_2: int ::
            { neverTriggered30(j_5_1), neverTriggered30(j_5_2) }
            (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < Seq#Length(oldHeap[x, elems]))) && (0 <= j_5_2 && j_5_2 < Seq#Length(oldHeap[x, elems]))) && NoPerm < (if j_5_1 == i2_1 then FullPerm else NoPerm)) && NoPerm < (if j_5_2 == i2_1 then FullPerm else NoPerm) ==> Seq#Index(oldHeap[x, elems], j_5_1) != Seq#Index(oldHeap[x, elems], j_5_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@126.32--126.46) [75473]"}
            (forall j_5_1: int ::
            { Seq#Index(oldHeap[x, elems], j_5_1) } { Seq#Index(oldHeap[x, elems], j_5_1) }
            0 <= j_5_1 && j_5_1 < Seq#Length(oldHeap[x, elems]) ==> (if j_5_1 == i2_1 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems], j_5_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_5_1: int ::
            { Seq#Index(oldHeap[x, elems], j_5_1) } { Seq#Index(oldHeap[x, elems], j_5_1) }
            (0 <= j_5_1 && j_5_1 < Seq#Length(oldHeap[x, elems])) && NoPerm < (if j_5_1 == i2_1 then FullPerm else NoPerm) ==> qpRange30(Seq#Index(oldHeap[x, elems], j_5_1)) && invRecv30(Seq#Index(oldHeap[x, elems], j_5_1)) == j_5_1
          );
          assume (forall o_4: Ref ::
            { invRecv30(o_4) }
            (0 <= invRecv30(o_4) && invRecv30(o_4) < Seq#Length(oldHeap[x, elems])) && (NoPerm < (if invRecv30(o_4) == i2_1 then FullPerm else NoPerm) && qpRange30(o_4)) ==> Seq#Index(oldHeap[x, elems], invRecv30(o_4)) == o_4
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun04qp(x, i2) == old(fun04qp(x, i2)) might not hold. (issue_0205.vpr@126.10--126.47) [75474]"}
      fun04qp(Heap, x, i2_1) == fun04qp(oldHeap, x, i2_1);
    assume state(Heap, Mask);
}