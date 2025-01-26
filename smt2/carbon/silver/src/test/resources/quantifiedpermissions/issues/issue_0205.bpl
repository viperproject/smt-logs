// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:14
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
axiom (forall o_12: Ref, f_19: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_19] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_19], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_20: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_20] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_20) ==> Heap[o_13, f_20] == ExhaleHeap[o_13, f_20]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_21: (Field A B), v: B ::
  { Heap[o_12, f_21:=v] }
  succHeap(Heap, Heap[o_12, f_21:=v])
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

function  neverTriggered1(j_3: int): bool;
function  neverTriggered2(j_3: int): bool;
function  neverTriggered3(j_3: int): bool;
function  neverTriggered4(j_3: int): bool;
function  neverTriggered5(j_1: int): bool;
function  neverTriggered6(j_2_2: int): bool;
function  neverTriggered7(j_3: int): bool;
function  neverTriggered8(j_4_1: int): bool;
function  neverTriggered9(j_5: int): bool;
function  neverTriggered10(j_6_2: int): bool;
function  neverTriggered11(j_7_1: int): bool;
function  neverTriggered12(j_8_2: int): bool;
function  neverTriggered13(j_9_1: int): bool;
function  neverTriggered14(j_10_2: int): bool;
function  neverTriggered15(j_11_1: int): bool;
function  neverTriggered16(j_1: int): bool;
function  neverTriggered17(j_2_2: int): bool;
function  neverTriggered18(j_3: int): bool;
function  neverTriggered19(j_4_1: int): bool;
function  neverTriggered20(j_5: int): bool;
function  neverTriggered21(j_1: int): bool;
function  neverTriggered22(j_2_2: int): bool;
function  neverTriggered23(j_3: int): bool;
function  neverTriggered24(j_4_1: int): bool;
function  neverTriggered25(j_5: int): bool;
function  neverTriggered26(j_1: int): bool;
function  neverTriggered27(j_2_2: int): bool;
function  neverTriggered28(j_3: int): bool;
function  neverTriggered29(j_4_1: int): bool;
function  neverTriggered30(j_5: int): bool;
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
const unique elems_1: Field NormalField (Seq Ref);
axiom !IsPredicateField(elems_1);
axiom !IsWandField(elems_1);

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
    assert {:msg "  Contract might not be well-formed. Fraction (b ? write : none) might be negative. (issue_0205.vpr@14.12--14.38) [169564]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := (if !b_24 then FullPerm else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (!b ? write : none) might be negative. (issue_0205.vpr@15.12--15.39) [169565]"}
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
  var j_14: int;
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
        if (0 <= j_14 && (j_14 < Seq#Length(xs) && j_14 == i)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@30.12--30.81) [169566]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@30.12--30.81) [169567]"}
            j_14 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@30.12--30.81) [169568]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && (j_3 < Seq#Length(xs) && j_3 == i))) && (0 <= j_3_1 && (j_3_1 < Seq#Length(xs) && j_3_1 == i))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_3) != Seq#Index(xs, j_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
        (0 <= j_3 && (j_3 < Seq#Length(xs) && j_3 == i)) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, j_3)) && invRecv1(Seq#Index(xs, j_3)) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && (invRecv1(o_9) < Seq#Length(xs) && invRecv1(o_9) == i)) && NoPerm < FullPerm) && qpRange1(o_9) ==> Seq#Index(xs, invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
        0 <= j_3 && (j_3 < Seq#Length(xs) && j_3 == i) ==> Seq#Index(xs, j_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv1(o_9) && (invRecv1(o_9) < Seq#Length(xs) && invRecv1(o_9) == i)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((0 <= invRecv1(o_9) && (invRecv1(o_9) < Seq#Length(xs) && invRecv1(o_9) == i)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
  var j_15: int;
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
        if (0 <= j_15 && j_15 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@34.12--34.87) [169569]"}
            j_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@34.12--34.87) [169570]"}
            j_15 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@34.12--34.87) [169571]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && j_3 < Seq#Length(xs))) && (0 <= j_3_1 && j_3_1 < Seq#Length(xs))) && NoPerm < (if j_3 == i then FullPerm else NoPerm)) && NoPerm < (if j_3_1 == i then FullPerm else NoPerm) ==> Seq#Index(xs, j_3) != Seq#Index(xs, j_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
        (0 <= j_3 && j_3 < Seq#Length(xs)) && NoPerm < (if j_3 == i then FullPerm else NoPerm) ==> qpRange2(Seq#Index(xs, j_3)) && invRecv2(Seq#Index(xs, j_3)) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && NoPerm < (if invRecv2(o_9) == i then FullPerm else NoPerm)) && qpRange2(o_9) ==> Seq#Index(xs, invRecv2(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction (j == i ? write : none) might be negative. (issue_0205.vpr@34.12--34.87) [169572]"}
      (forall j_3: int ::
      { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
      0 <= j_3 && j_3 < Seq#Length(xs) ==> (if j_3 == i then FullPerm else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
        (0 <= j_3 && j_3 < Seq#Length(xs)) && (if j_3 == i then FullPerm else NoPerm) > NoPerm ==> Seq#Index(xs, j_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && NoPerm < (if invRecv2(o_9) == i then FullPerm else NoPerm)) && qpRange2(o_9) ==> (NoPerm < (if invRecv2(o_9) == i then FullPerm else NoPerm) ==> Seq#Index(xs, invRecv2(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (if invRecv2(o_9) == i then FullPerm else NoPerm)) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && NoPerm < (if invRecv2(o_9) == i then FullPerm else NoPerm)) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
  state(Heap, Mask) ==> fun03qp'(Heap, x, i) == fun03qp#frame(CombineFrames(FrameFragment(Heap[x, elems_1]), FrameFragment(fun03qp#condqp3(Heap, x, i))), x, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { x.elems[j] } 0 <= j && (j < |x.elems| && j == i) ==> acc(x.elems[j].f, write)) in function fun03qp
// ==================================================

function  fun03qp#condqp3(Heap: HeapType, x_1_1_1: Ref, i_1_1_1: int): int;
function  sk_fun03qp#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, i: int ::
  { fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) && (sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) < Seq#Length(Heap2Heap[x, elems_1]) && sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) == i)) && NoPerm < FullPerm <==> (0 <= sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) && (sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) < Seq#Length(Heap1Heap[x, elems_1]) && sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) == i)) && NoPerm < FullPerm) && ((0 <= sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) && (sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) < Seq#Length(Heap2Heap[x, elems_1]) && sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i)) == i)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(Heap2Heap[x, elems_1], sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i))), f_7] == Heap1Heap[Seq#Index(Heap1Heap[x, elems_1], sk_fun03qp#condqp3(fun03qp#condqp3(Heap2Heap, x, i), fun03qp#condqp3(Heap1Heap, x, i))), f_7]) ==> fun03qp#condqp3(Heap2Heap, x, i) == fun03qp#condqp3(Heap1Heap, x, i)
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
  var j_12: int;
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
    Mask := Mask[x, elems_1:=Mask[x, elems_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    
    // -- Check definedness of i < |x.elems|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@38.12--38.35) [169573]"}
        HasDirectPerm(Mask, x, elems_1);
    assume i < Seq#Length(Heap[x, elems_1]);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { x.elems[j] } 0 <= j && (j < |x.elems| && j == i) ==> acc(x.elems[j].f, write))
      if (*) {
        if (0 <= j_12) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@39.12--39.91) [169574]"}
            HasDirectPerm(Mask, x, elems_1);
        }
        if (0 <= j_12 && (j_12 < Seq#Length(Heap[x, elems_1]) && j_12 == i)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@39.12--39.91) [169575]"}
            HasDirectPerm(Mask, x, elems_1);
          assert {:msg "  Contract might not be well-formed. Index x.elems[j] into x.elems might be negative. (issue_0205.vpr@39.12--39.91) [169576]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index x.elems[j] into x.elems might exceed sequence length. (issue_0205.vpr@39.12--39.91) [169577]"}
            j_12 < Seq#Length(Heap[x, elems_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@39.12--39.91) [169578]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && (j_3 < Seq#Length(Heap[x, elems_1]) && j_3 == i))) && (0 <= j_3_1 && (j_3_1 < Seq#Length(Heap[x, elems_1]) && j_3_1 == i))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, elems_1], j_3) != Seq#Index(Heap[x, elems_1], j_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Seq#Index(Heap[x, elems_1], j_3) } { Seq#Index(Heap[x, elems_1], j_3) }
        (0 <= j_3 && (j_3 < Seq#Length(Heap[x, elems_1]) && j_3 == i)) && NoPerm < FullPerm ==> qpRange3(Seq#Index(Heap[x, elems_1], j_3)) && invRecv3(Seq#Index(Heap[x, elems_1], j_3)) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((0 <= invRecv3(o_9) && (invRecv3(o_9) < Seq#Length(Heap[x, elems_1]) && invRecv3(o_9) == i)) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(Heap[x, elems_1], invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Seq#Index(Heap[x, elems_1], j_3) } { Seq#Index(Heap[x, elems_1], j_3) }
        0 <= j_3 && (j_3 < Seq#Length(Heap[x, elems_1]) && j_3 == i) ==> Seq#Index(Heap[x, elems_1], j_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv3(o_9) && (invRecv3(o_9) < Seq#Length(Heap[x, elems_1]) && invRecv3(o_9) == i)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[x, elems_1], invRecv3(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((0 <= invRecv3(o_9) && (invRecv3(o_9) < Seq#Length(Heap[x, elems_1]) && invRecv3(o_9) == i)) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
  state(Heap, Mask) ==> fun04qp'(Heap, x, i) == fun04qp#frame(CombineFrames(FrameFragment(Heap[x, elems_1]), FrameFragment(fun04qp#condqp4(Heap, x, i))), x, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { x.elems[j] } 0 <= j && j < |x.elems| ==> acc(x.elems[j].f, (j == i ? write : none))) in function fun04qp
// ==================================================

function  fun04qp#condqp4(Heap: HeapType, x_1_1_1: Ref, i_1_1_1: int): int;
function  sk_fun04qp#condqp4(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, i: int ::
  { fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) && sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) < Seq#Length(Heap2Heap[x, elems_1])) && NoPerm < (if sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) == i then FullPerm else NoPerm) <==> (0 <= sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) && sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) < Seq#Length(Heap1Heap[x, elems_1])) && NoPerm < (if sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) == i then FullPerm else NoPerm)) && ((0 <= sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) && sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) < Seq#Length(Heap2Heap[x, elems_1])) && NoPerm < (if sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i)) == i then FullPerm else NoPerm) ==> Heap2Heap[Seq#Index(Heap2Heap[x, elems_1], sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i))), f_7] == Heap1Heap[Seq#Index(Heap1Heap[x, elems_1], sk_fun04qp#condqp4(fun04qp#condqp4(Heap2Heap, x, i), fun04qp#condqp4(Heap1Heap, x, i))), f_7]) ==> fun04qp#condqp4(Heap2Heap, x, i) == fun04qp#condqp4(Heap1Heap, x, i)
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
  var j_13: int;
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
    Mask := Mask[x, elems_1:=Mask[x, elems_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    
    // -- Check definedness of i < |x.elems|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@43.12--43.35) [169579]"}
        HasDirectPerm(Mask, x, elems_1);
    assume i < Seq#Length(Heap[x, elems_1]);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { x.elems[j] } 0 <= j && j < |x.elems| ==> acc(x.elems[j].f, (j == i ? write : none)))
      if (*) {
        if (0 <= j_13) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@44.12--44.97) [169580]"}
            HasDirectPerm(Mask, x, elems_1);
        }
        if (0 <= j_13 && j_13 < Seq#Length(Heap[x, elems_1])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@44.12--44.97) [169581]"}
            HasDirectPerm(Mask, x, elems_1);
          assert {:msg "  Contract might not be well-formed. Index x.elems[j] into x.elems might be negative. (issue_0205.vpr@44.12--44.97) [169582]"}
            j_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index x.elems[j] into x.elems might exceed sequence length. (issue_0205.vpr@44.12--44.97) [169583]"}
            j_13 < Seq#Length(Heap[x, elems_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@44.12--44.97) [169584]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && j_3 < Seq#Length(Heap[x, elems_1]))) && (0 <= j_3_1 && j_3_1 < Seq#Length(Heap[x, elems_1]))) && NoPerm < (if j_3 == i then FullPerm else NoPerm)) && NoPerm < (if j_3_1 == i then FullPerm else NoPerm) ==> Seq#Index(Heap[x, elems_1], j_3) != Seq#Index(Heap[x, elems_1], j_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Seq#Index(Heap[x, elems_1], j_3) } { Seq#Index(Heap[x, elems_1], j_3) }
        (0 <= j_3 && j_3 < Seq#Length(Heap[x, elems_1])) && NoPerm < (if j_3 == i then FullPerm else NoPerm) ==> qpRange4(Seq#Index(Heap[x, elems_1], j_3)) && invRecv4(Seq#Index(Heap[x, elems_1], j_3)) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(Heap[x, elems_1])) && NoPerm < (if invRecv4(o_9) == i then FullPerm else NoPerm)) && qpRange4(o_9) ==> Seq#Index(Heap[x, elems_1], invRecv4(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction (j == i ? write : none) might be negative. (issue_0205.vpr@44.12--44.97) [169585]"}
      (forall j_3: int ::
      { Seq#Index(Heap[x, elems_1], j_3) } { Seq#Index(Heap[x, elems_1], j_3) }
      0 <= j_3 && j_3 < Seq#Length(Heap[x, elems_1]) ==> (if j_3 == i then FullPerm else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Seq#Index(Heap[x, elems_1], j_3) } { Seq#Index(Heap[x, elems_1], j_3) }
        (0 <= j_3 && j_3 < Seq#Length(Heap[x, elems_1])) && (if j_3 == i then FullPerm else NoPerm) > NoPerm ==> Seq#Index(Heap[x, elems_1], j_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(Heap[x, elems_1])) && NoPerm < (if invRecv4(o_9) == i then FullPerm else NoPerm)) && qpRange4(o_9) ==> (NoPerm < (if invRecv4(o_9) == i then FullPerm else NoPerm) ==> Seq#Index(Heap[x, elems_1], invRecv4(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (if invRecv4(o_9) == i then FullPerm else NoPerm)) && (!(((0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(Heap[x, elems_1])) && NoPerm < (if invRecv4(o_9) == i then FullPerm else NoPerm)) && qpRange4(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: y.f := 0 -- issue_0205.vpr@20.3--20.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (issue_0205.vpr@20.3--20.11) [169586]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(x, y, true) == old(fun01(x, y, true)) -- issue_0205.vpr@22.3--22.53
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun01(x, y, true) == old(fun01(x, y, true))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (issue_0205.vpr@22.10--22.27) [169587]"}
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (issue_0205.vpr@22.35--22.52) [169588]"}
          NoPerm < perm ==> NoPerm < oldMask[x, f_7];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x, y, true) == old(fun01(x, y, true)) might not hold. (issue_0205.vpr@22.10--22.53) [169589]"}
      fun01(Heap, x, y, true) == fun01(oldHeap, x, y, true);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(x, y, true) == old(fun02(x, y, true)) -- issue_0205.vpr@23.3--23.53
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun02(x, y, true) == old(fun02(x, y, true))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (true ? write : none) might be negative. (issue_0205.vpr@23.10--23.27) [169590]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (issue_0205.vpr@23.10--23.27) [169591]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (!true ? write : none) might be negative. (issue_0205.vpr@23.10--23.27) [169592]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access y.f (issue_0205.vpr@23.10--23.27) [169593]"}
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (true ? write : none) might be negative. (issue_0205.vpr@23.35--23.52) [169594]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (issue_0205.vpr@23.35--23.52) [169595]"}
          NoPerm < perm ==> NoPerm < oldMask[x, f_7];
        perm := NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (!true ? write : none) might be negative. (issue_0205.vpr@23.35--23.52) [169596]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access y.f (issue_0205.vpr@23.35--23.52) [169597]"}
          NoPerm < perm ==> NoPerm < oldMask[y, f_7];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(x, y, true) == old(fun02(x, y, true)) might not hold. (issue_0205.vpr@23.10--23.53) [169598]"}
      fun02(Heap, x, y, true) == fun02(oldHeap, x, y, true);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Seq Ref), i1_9: int, i2: int, x: Ref) returns ()
  modifies Heap, Mask;
{
  var j1_24: int;
  var j2_9: int;
  var j_16: int;
  var QPMask: MaskType;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i1_9;
    assume i1_9 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume 0 <= i2;
    assume i2 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume i1_9 != i2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|xs|)), (j2 in [0..|xs|)) } { (j1 in [0..|xs|)), xs[j2] } { (j2 in [0..|xs|)), xs[j1] } { xs[j1], xs[j2] } (j1 in [0..|xs|)) && ((j2 in [0..|xs|)) && j1 != j2) ==> xs[j1] != xs[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_24) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_9) && j1_24 != j2_9)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might be negative. (issue_0205.vpr@51.12--51.106) [169599]"}
            j1_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might exceed sequence length. (issue_0205.vpr@51.12--51.106) [169600]"}
            j1_24 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might be negative. (issue_0205.vpr@51.12--51.106) [169601]"}
            j2_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might exceed sequence length. (issue_0205.vpr@51.12--51.106) [169602]"}
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
        if (0 <= j_16 && j_16 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@52.12--52.71) [169603]"}
            j_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@52.12--52.71) [169604]"}
            j_16 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@52.12--52.71) [169605]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Seq#Length(xs))) && (0 <= j_1_1 && j_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange5(Seq#Index(xs, j_1)) && invRecv5(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        ((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange5(o_9) ==> Seq#Index(xs, invRecv5(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < Seq#Length(xs) ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv5(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems_1:=Mask[x, elems_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.elems == xs
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@53.12--53.41) [169606]"}
        HasDirectPerm(Mask, x, elems_1);
    assume Seq#Equal(Heap[x, elems_1], xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: xs[i1].f := 0 -- issue_0205.vpr@55.3--55.16
    
    // -- Check definedness of xs[i1]
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might be negative. (issue_0205.vpr@55.3--55.16) [169607]"}
        i1_9 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might exceed sequence length. (issue_0205.vpr@55.3--55.16) [169608]"}
        i1_9 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i1].f (issue_0205.vpr@55.3--55.16) [169609]"}
      FullPerm == Mask[Seq#Index(xs, i1_9), f_7];
    Heap := Heap[Seq#Index(xs, i1_9), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01qp(xs, i2) == old(fun01qp(xs, i2)) -- issue_0205.vpr@57.3--57.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun01qp(xs, i2) == old(fun01qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@57.10--57.25) [169610]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@57.10--57.25) [169611]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun01qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@57.10--57.25) [169612]"}
            (forall j_2_2: int, j_2_3: int ::
            { neverTriggered6(j_2_2), neverTriggered6(j_2_3) }
            (((j_2_2 != j_2_3 && (0 <= j_2_2 && (j_2_2 < Seq#Length(xs) && j_2_2 == i2))) && (0 <= j_2_3 && (j_2_3 < Seq#Length(xs) && j_2_3 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_2_2) != Seq#Index(xs, j_2_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@57.10--57.25) [169613]"}
            (forall j_2_2: int ::
            { Seq#Index(xs, j_2_2) } { Seq#Index(xs, j_2_2) }
            0 <= j_2_2 && (j_2_2 < Seq#Length(xs) && j_2_2 == i2) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_2_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_2_2: int ::
            { Seq#Index(xs, j_2_2) } { Seq#Index(xs, j_2_2) }
            (0 <= j_2_2 && (j_2_2 < Seq#Length(xs) && j_2_2 == i2)) && NoPerm < FullPerm ==> qpRange6(Seq#Index(xs, j_2_2)) && invRecv6(Seq#Index(xs, j_2_2)) == j_2_2
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            (0 <= invRecv6(o_9) && (invRecv6(o_9) < Seq#Length(xs) && invRecv6(o_9) == i2)) && (NoPerm < FullPerm && qpRange6(o_9)) ==> Seq#Index(xs, invRecv6(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@57.33--57.48) [169614]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@57.33--57.48) [169615]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun01qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@57.33--57.48) [169616]"}
            (forall j_3: int, j_3_1: int ::
            { neverTriggered7(j_3), neverTriggered7(j_3_1) }
            (((j_3 != j_3_1 && (0 <= j_3 && (j_3 < Seq#Length(xs) && j_3 == i2))) && (0 <= j_3_1 && (j_3_1 < Seq#Length(xs) && j_3_1 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_3) != Seq#Index(xs, j_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@57.33--57.48) [169617]"}
            (forall j_3: int ::
            { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
            0 <= j_3 && (j_3 < Seq#Length(xs) && j_3 == i2) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(xs, j_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_3: int ::
            { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
            (0 <= j_3 && (j_3 < Seq#Length(xs) && j_3 == i2)) && NoPerm < FullPerm ==> qpRange7(Seq#Index(xs, j_3)) && invRecv7(Seq#Index(xs, j_3)) == j_3
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            (0 <= invRecv7(o_9) && (invRecv7(o_9) < Seq#Length(xs) && invRecv7(o_9) == i2)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> Seq#Index(xs, invRecv7(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01qp(xs, i2) == old(fun01qp(xs, i2)) might not hold. (issue_0205.vpr@57.10--57.49) [169618]"}
      fun01qp(Heap, xs, i2) == fun01qp(oldHeap, xs, i2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02qp(xs, i2) == old(fun02qp(xs, i2)) -- issue_0205.vpr@58.3--58.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun02qp(xs, i2) == old(fun02qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@58.10--58.25) [169619]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@58.10--58.25) [169620]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@58.10--58.25) [169621]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(xs, j_4_1), f_7]) ==> (if j_4_1 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@58.10--58.25) [169622]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered8(j_4_1), neverTriggered8(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < Seq#Length(xs))) && (0 <= j_4_2 && j_4_2 < Seq#Length(xs))) && NoPerm < (if j_4_1 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_4_2 == i2 then FullPerm else NoPerm) ==> Seq#Index(xs, j_4_1) != Seq#Index(xs, j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@58.10--58.25) [169623]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            0 <= j_4_1 && j_4_1 < Seq#Length(xs) ==> (if j_4_1 == i2 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && NoPerm < (if j_4_1 == i2 then FullPerm else NoPerm) ==> qpRange8(Seq#Index(xs, j_4_1)) && invRecv8(Seq#Index(xs, j_4_1)) == j_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv8(o_9) }
            (0 <= invRecv8(o_9) && invRecv8(o_9) < Seq#Length(xs)) && (NoPerm < (if invRecv8(o_9) == i2 then FullPerm else NoPerm) && qpRange8(o_9)) ==> Seq#Index(xs, invRecv8(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@58.33--58.48) [169624]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@58.33--58.48) [169625]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@58.33--58.48) [169626]"}
            (forall j_5: int ::
            { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
            (0 <= j_5 && j_5 < Seq#Length(xs)) && dummyFunction(oldHeap[Seq#Index(xs, j_5), f_7]) ==> (if j_5 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@58.33--58.48) [169627]"}
            (forall j_5: int, j_5_1: int ::
            { neverTriggered9(j_5), neverTriggered9(j_5_1) }
            (((j_5 != j_5_1 && (0 <= j_5 && j_5 < Seq#Length(xs))) && (0 <= j_5_1 && j_5_1 < Seq#Length(xs))) && NoPerm < (if j_5 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_5_1 == i2 then FullPerm else NoPerm) ==> Seq#Index(xs, j_5) != Seq#Index(xs, j_5_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@58.33--58.48) [169628]"}
            (forall j_5: int ::
            { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
            0 <= j_5 && j_5 < Seq#Length(xs) ==> (if j_5 == i2 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(xs, j_5), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_5: int ::
            { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
            (0 <= j_5 && j_5 < Seq#Length(xs)) && NoPerm < (if j_5 == i2 then FullPerm else NoPerm) ==> qpRange9(Seq#Index(xs, j_5)) && invRecv9(Seq#Index(xs, j_5)) == j_5
          );
          assume (forall o_9: Ref ::
            { invRecv9(o_9) }
            (0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(xs)) && (NoPerm < (if invRecv9(o_9) == i2 then FullPerm else NoPerm) && qpRange9(o_9)) ==> Seq#Index(xs, invRecv9(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02qp(xs, i2) == old(fun02qp(xs, i2)) might not hold. (issue_0205.vpr@58.10--58.49) [169629]"}
      fun02qp(Heap, xs, i2) == fun02qp(oldHeap, xs, i2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun03qp(x, i2) == old(fun03qp(x, i2)) -- issue_0205.vpr@60.3--60.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun03qp(x, i2) == old(fun03qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@60.10--60.24) [169630]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems_1];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@60.10--60.24) [169631]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@60.10--60.24) [169632]"}
          i2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@60.10--60.24) [169633]"}
            (forall j_6_2: int, j_6_3: int ::
            { neverTriggered10(j_6_2), neverTriggered10(j_6_3) }
            (((j_6_2 != j_6_3 && (0 <= j_6_2 && (j_6_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_6_2 == i2))) && (0 <= j_6_3 && (j_6_3 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_6_3 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_2) != Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@60.10--60.24) [169634]"}
            (forall j_6_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_2) }
            0 <= j_6_2 && (j_6_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_6_2 == i2) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_6_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_2) }
            (0 <= j_6_2 && (j_6_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_6_2 == i2)) && NoPerm < FullPerm ==> qpRange10(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_2)) && invRecv10(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_6_2)) == j_6_2
          );
          assume (forall o_9: Ref ::
            { invRecv10(o_9) }
            (0 <= invRecv10(o_9) && (invRecv10(o_9) < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && invRecv10(o_9) == i2)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], invRecv10(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@60.32--60.46) [169635]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems_1];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@60.32--60.46) [169636]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@60.32--60.46) [169637]"}
          i2 < Seq#Length(oldHeap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@60.32--60.46) [169638]"}
            (forall j_7_1: int, j_7_2: int ::
            { neverTriggered11(j_7_1), neverTriggered11(j_7_2) }
            (((j_7_1 != j_7_2 && (0 <= j_7_1 && (j_7_1 < Seq#Length(oldHeap[x, elems_1]) && j_7_1 == i2))) && (0 <= j_7_2 && (j_7_2 < Seq#Length(oldHeap[x, elems_1]) && j_7_2 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(oldHeap[x, elems_1], j_7_1) != Seq#Index(oldHeap[x, elems_1], j_7_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@60.32--60.46) [169639]"}
            (forall j_7_1: int ::
            { Seq#Index(oldHeap[x, elems_1], j_7_1) } { Seq#Index(oldHeap[x, elems_1], j_7_1) }
            0 <= j_7_1 && (j_7_1 < Seq#Length(oldHeap[x, elems_1]) && j_7_1 == i2) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems_1], j_7_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_7_1: int ::
            { Seq#Index(oldHeap[x, elems_1], j_7_1) } { Seq#Index(oldHeap[x, elems_1], j_7_1) }
            (0 <= j_7_1 && (j_7_1 < Seq#Length(oldHeap[x, elems_1]) && j_7_1 == i2)) && NoPerm < FullPerm ==> qpRange11(Seq#Index(oldHeap[x, elems_1], j_7_1)) && invRecv11(Seq#Index(oldHeap[x, elems_1], j_7_1)) == j_7_1
          );
          assume (forall o_9: Ref ::
            { invRecv11(o_9) }
            (0 <= invRecv11(o_9) && (invRecv11(o_9) < Seq#Length(oldHeap[x, elems_1]) && invRecv11(o_9) == i2)) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(oldHeap[x, elems_1], invRecv11(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun03qp(x, i2) == old(fun03qp(x, i2)) might not hold. (issue_0205.vpr@60.10--60.47) [169640]"}
      fun03qp(Heap, x, i2) == fun03qp(oldHeap, x, i2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun04qp(x, i2) == old(fun04qp(x, i2)) -- issue_0205.vpr@61.3--61.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun04qp(x, i2) == old(fun04qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@61.10--61.24) [169641]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems_1];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@61.10--61.24) [169642]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@61.10--61.24) [169643]"}
          i2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@61.10--61.24) [169644]"}
            (forall j_8_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2) }
            (0 <= j_8_2 && j_8_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2), f_7]) ==> (if j_8_2 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@61.10--61.24) [169645]"}
            (forall j_8_2: int, j_8_3: int ::
            { neverTriggered12(j_8_2), neverTriggered12(j_8_3) }
            (((j_8_2 != j_8_3 && (0 <= j_8_2 && j_8_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]))) && (0 <= j_8_3 && j_8_3 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]))) && NoPerm < (if j_8_2 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_8_3 == i2 then FullPerm else NoPerm) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2) != Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@61.10--61.24) [169646]"}
            (forall j_8_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2) }
            0 <= j_8_2 && j_8_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) ==> (if j_8_2 == i2 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_8_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2) }
            (0 <= j_8_2 && j_8_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && NoPerm < (if j_8_2 == i2 then FullPerm else NoPerm) ==> qpRange12(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2)) && invRecv12(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_8_2)) == j_8_2
          );
          assume (forall o_9: Ref ::
            { invRecv12(o_9) }
            (0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && (NoPerm < (if invRecv12(o_9) == i2 then FullPerm else NoPerm) && qpRange12(o_9)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], invRecv12(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@61.32--61.46) [169647]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems_1];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@61.32--61.46) [169648]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@61.32--61.46) [169649]"}
          i2 < Seq#Length(oldHeap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@61.32--61.46) [169650]"}
            (forall j_9_1: int ::
            { Seq#Index(oldHeap[x, elems_1], j_9_1) } { Seq#Index(oldHeap[x, elems_1], j_9_1) }
            (0 <= j_9_1 && j_9_1 < Seq#Length(oldHeap[x, elems_1])) && dummyFunction(oldHeap[Seq#Index(oldHeap[x, elems_1], j_9_1), f_7]) ==> (if j_9_1 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@61.32--61.46) [169651]"}
            (forall j_9_1: int, j_9_2: int ::
            { neverTriggered13(j_9_1), neverTriggered13(j_9_2) }
            (((j_9_1 != j_9_2 && (0 <= j_9_1 && j_9_1 < Seq#Length(oldHeap[x, elems_1]))) && (0 <= j_9_2 && j_9_2 < Seq#Length(oldHeap[x, elems_1]))) && NoPerm < (if j_9_1 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_9_2 == i2 then FullPerm else NoPerm) ==> Seq#Index(oldHeap[x, elems_1], j_9_1) != Seq#Index(oldHeap[x, elems_1], j_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@61.32--61.46) [169652]"}
            (forall j_9_1: int ::
            { Seq#Index(oldHeap[x, elems_1], j_9_1) } { Seq#Index(oldHeap[x, elems_1], j_9_1) }
            0 <= j_9_1 && j_9_1 < Seq#Length(oldHeap[x, elems_1]) ==> (if j_9_1 == i2 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems_1], j_9_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_9_1: int ::
            { Seq#Index(oldHeap[x, elems_1], j_9_1) } { Seq#Index(oldHeap[x, elems_1], j_9_1) }
            (0 <= j_9_1 && j_9_1 < Seq#Length(oldHeap[x, elems_1])) && NoPerm < (if j_9_1 == i2 then FullPerm else NoPerm) ==> qpRange13(Seq#Index(oldHeap[x, elems_1], j_9_1)) && invRecv13(Seq#Index(oldHeap[x, elems_1], j_9_1)) == j_9_1
          );
          assume (forall o_9: Ref ::
            { invRecv13(o_9) }
            (0 <= invRecv13(o_9) && invRecv13(o_9) < Seq#Length(oldHeap[x, elems_1])) && (NoPerm < (if invRecv13(o_9) == i2 then FullPerm else NoPerm) && qpRange13(o_9)) ==> Seq#Index(oldHeap[x, elems_1], invRecv13(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun04qp(x, i2) == old(fun04qp(x, i2)) might not hold. (issue_0205.vpr@61.10--61.47) [169653]"}
      fun04qp(Heap, x, i2) == fun04qp(oldHeap, x, i2);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i2].f := 0 -- issue_0205.vpr@63.3--63.16
    
    // -- Check definedness of xs[i2]
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might be negative. (issue_0205.vpr@63.3--63.16) [169654]"}
        i2 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might exceed sequence length. (issue_0205.vpr@63.3--63.16) [169655]"}
        i2 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i2].f (issue_0205.vpr@63.3--63.16) [169656]"}
      FullPerm == Mask[Seq#Index(xs, i2), f_7];
    Heap := Heap[Seq#Index(xs, i2), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01qp(xs, i2) == old(fun01qp(xs, i2)) -- issue_0205.vpr@66.3--66.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun01qp(xs, i2) == old(fun01qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@66.10--66.25) [169657]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@66.10--66.25) [169658]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun01qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@66.10--66.25) [169659]"}
            (forall j_10_2: int, j_10_3: int ::
            { neverTriggered14(j_10_2), neverTriggered14(j_10_3) }
            (((j_10_2 != j_10_3 && (0 <= j_10_2 && (j_10_2 < Seq#Length(xs) && j_10_2 == i2))) && (0 <= j_10_3 && (j_10_3 < Seq#Length(xs) && j_10_3 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_10_2) != Seq#Index(xs, j_10_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@66.10--66.25) [169660]"}
            (forall j_10_2: int ::
            { Seq#Index(xs, j_10_2) } { Seq#Index(xs, j_10_2) }
            0 <= j_10_2 && (j_10_2 < Seq#Length(xs) && j_10_2 == i2) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_10_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_10_2: int ::
            { Seq#Index(xs, j_10_2) } { Seq#Index(xs, j_10_2) }
            (0 <= j_10_2 && (j_10_2 < Seq#Length(xs) && j_10_2 == i2)) && NoPerm < FullPerm ==> qpRange14(Seq#Index(xs, j_10_2)) && invRecv14(Seq#Index(xs, j_10_2)) == j_10_2
          );
          assume (forall o_9: Ref ::
            { invRecv14(o_9) }
            (0 <= invRecv14(o_9) && (invRecv14(o_9) < Seq#Length(xs) && invRecv14(o_9) == i2)) && (NoPerm < FullPerm && qpRange14(o_9)) ==> Seq#Index(xs, invRecv14(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@66.33--66.48) [169661]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun01qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@66.33--66.48) [169662]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun01qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@66.33--66.48) [169663]"}
            (forall j_11_1: int, j_11_2: int ::
            { neverTriggered15(j_11_1), neverTriggered15(j_11_2) }
            (((j_11_1 != j_11_2 && (0 <= j_11_1 && (j_11_1 < Seq#Length(xs) && j_11_1 == i2))) && (0 <= j_11_2 && (j_11_2 < Seq#Length(xs) && j_11_2 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_11_1) != Seq#Index(xs, j_11_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@66.33--66.48) [169664]"}
            (forall j_11_1: int ::
            { Seq#Index(xs, j_11_1) } { Seq#Index(xs, j_11_1) }
            0 <= j_11_1 && (j_11_1 < Seq#Length(xs) && j_11_1 == i2) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(xs, j_11_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_11_1: int ::
            { Seq#Index(xs, j_11_1) } { Seq#Index(xs, j_11_1) }
            (0 <= j_11_1 && (j_11_1 < Seq#Length(xs) && j_11_1 == i2)) && NoPerm < FullPerm ==> qpRange15(Seq#Index(xs, j_11_1)) && invRecv15(Seq#Index(xs, j_11_1)) == j_11_1
          );
          assume (forall o_9: Ref ::
            { invRecv15(o_9) }
            (0 <= invRecv15(o_9) && (invRecv15(o_9) < Seq#Length(xs) && invRecv15(o_9) == i2)) && (NoPerm < FullPerm && qpRange15(o_9)) ==> Seq#Index(xs, invRecv15(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01qp(xs, i2) == old(fun01qp(xs, i2)) might not hold. (issue_0205.vpr@66.10--66.49) [169665]"}
      fun01qp(Heap, xs, i2) == fun01qp(oldHeap, xs, i2);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(xs: (Seq Ref), i1_9: int, i2: int, x: Ref) returns ()
  modifies Heap, Mask;
{
  var j1_25: int;
  var j2_10: int;
  var j_17: int;
  var QPMask: MaskType;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i1_9;
    assume i1_9 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume 0 <= i2;
    assume i2 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume i1_9 != i2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|xs|)), (j2 in [0..|xs|)) } { (j1 in [0..|xs|)), xs[j2] } { (j2 in [0..|xs|)), xs[j1] } { xs[j1], xs[j2] } (j1 in [0..|xs|)) && ((j2 in [0..|xs|)) && j1 != j2) ==> xs[j1] != xs[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_25) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_10) && j1_25 != j2_10)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might be negative. (issue_0205.vpr@75.12--75.106) [169666]"}
            j1_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might exceed sequence length. (issue_0205.vpr@75.12--75.106) [169667]"}
            j1_25 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might be negative. (issue_0205.vpr@75.12--75.106) [169668]"}
            j2_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might exceed sequence length. (issue_0205.vpr@75.12--75.106) [169669]"}
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
        if (0 <= j_17 && j_17 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@76.12--76.71) [169670]"}
            j_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@76.12--76.71) [169671]"}
            j_17 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@76.12--76.71) [169672]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Seq#Length(xs))) && (0 <= j_1_1 && j_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange16(Seq#Index(xs, j_1)) && invRecv16(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        ((0 <= invRecv16(o_9) && invRecv16(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange16(o_9) ==> Seq#Index(xs, invRecv16(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < Seq#Length(xs) ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv16(o_9) && invRecv16(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange16(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv16(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((0 <= invRecv16(o_9) && invRecv16(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange16(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems_1:=Mask[x, elems_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.elems == xs
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@77.12--77.41) [169673]"}
        HasDirectPerm(Mask, x, elems_1);
    assume Seq#Equal(Heap[x, elems_1], xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: xs[i1].f := 0 -- issue_0205.vpr@79.3--79.16
    
    // -- Check definedness of xs[i1]
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might be negative. (issue_0205.vpr@79.3--79.16) [169674]"}
        i1_9 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might exceed sequence length. (issue_0205.vpr@79.3--79.16) [169675]"}
        i1_9 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i1].f (issue_0205.vpr@79.3--79.16) [169676]"}
      FullPerm == Mask[Seq#Index(xs, i1_9), f_7];
    Heap := Heap[Seq#Index(xs, i1_9), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02qp(xs, i2) == old(fun02qp(xs, i2)) -- issue_0205.vpr@81.3--81.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun02qp(xs, i2) == old(fun02qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@81.10--81.25) [169677]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@81.10--81.25) [169678]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@81.10--81.25) [169679]"}
            (forall j_2_2: int ::
            { Seq#Index(xs, j_2_2) } { Seq#Index(xs, j_2_2) }
            (0 <= j_2_2 && j_2_2 < Seq#Length(xs)) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(xs, j_2_2), f_7]) ==> (if j_2_2 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@81.10--81.25) [169680]"}
            (forall j_2_2: int, j_2_3: int ::
            { neverTriggered17(j_2_2), neverTriggered17(j_2_3) }
            (((j_2_2 != j_2_3 && (0 <= j_2_2 && j_2_2 < Seq#Length(xs))) && (0 <= j_2_3 && j_2_3 < Seq#Length(xs))) && NoPerm < (if j_2_2 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_2_3 == i2 then FullPerm else NoPerm) ==> Seq#Index(xs, j_2_2) != Seq#Index(xs, j_2_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@81.10--81.25) [169681]"}
            (forall j_2_2: int ::
            { Seq#Index(xs, j_2_2) } { Seq#Index(xs, j_2_2) }
            0 <= j_2_2 && j_2_2 < Seq#Length(xs) ==> (if j_2_2 == i2 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_2_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_2_2: int ::
            { Seq#Index(xs, j_2_2) } { Seq#Index(xs, j_2_2) }
            (0 <= j_2_2 && j_2_2 < Seq#Length(xs)) && NoPerm < (if j_2_2 == i2 then FullPerm else NoPerm) ==> qpRange17(Seq#Index(xs, j_2_2)) && invRecv17(Seq#Index(xs, j_2_2)) == j_2_2
          );
          assume (forall o_9: Ref ::
            { invRecv17(o_9) }
            (0 <= invRecv17(o_9) && invRecv17(o_9) < Seq#Length(xs)) && (NoPerm < (if invRecv17(o_9) == i2 then FullPerm else NoPerm) && qpRange17(o_9)) ==> Seq#Index(xs, invRecv17(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@81.33--81.48) [169682]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@81.33--81.48) [169683]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@81.33--81.48) [169684]"}
            (forall j_3: int ::
            { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
            (0 <= j_3 && j_3 < Seq#Length(xs)) && dummyFunction(oldHeap[Seq#Index(xs, j_3), f_7]) ==> (if j_3 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@81.33--81.48) [169685]"}
            (forall j_3: int, j_3_1: int ::
            { neverTriggered18(j_3), neverTriggered18(j_3_1) }
            (((j_3 != j_3_1 && (0 <= j_3 && j_3 < Seq#Length(xs))) && (0 <= j_3_1 && j_3_1 < Seq#Length(xs))) && NoPerm < (if j_3 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_3_1 == i2 then FullPerm else NoPerm) ==> Seq#Index(xs, j_3) != Seq#Index(xs, j_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@81.33--81.48) [169686]"}
            (forall j_3: int ::
            { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
            0 <= j_3 && j_3 < Seq#Length(xs) ==> (if j_3 == i2 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(xs, j_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_3: int ::
            { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
            (0 <= j_3 && j_3 < Seq#Length(xs)) && NoPerm < (if j_3 == i2 then FullPerm else NoPerm) ==> qpRange18(Seq#Index(xs, j_3)) && invRecv18(Seq#Index(xs, j_3)) == j_3
          );
          assume (forall o_9: Ref ::
            { invRecv18(o_9) }
            (0 <= invRecv18(o_9) && invRecv18(o_9) < Seq#Length(xs)) && (NoPerm < (if invRecv18(o_9) == i2 then FullPerm else NoPerm) && qpRange18(o_9)) ==> Seq#Index(xs, invRecv18(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02qp(xs, i2) == old(fun02qp(xs, i2)) might not hold. (issue_0205.vpr@81.10--81.49) [169687]"}
      fun02qp(Heap, xs, i2) == fun02qp(oldHeap, xs, i2);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i2].f := 0 -- issue_0205.vpr@83.3--83.16
    
    // -- Check definedness of xs[i2]
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might be negative. (issue_0205.vpr@83.3--83.16) [169688]"}
        i2 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might exceed sequence length. (issue_0205.vpr@83.3--83.16) [169689]"}
        i2 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i2].f (issue_0205.vpr@83.3--83.16) [169690]"}
      FullPerm == Mask[Seq#Index(xs, i2), f_7];
    Heap := Heap[Seq#Index(xs, i2), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02qp(xs, i2) == old(fun02qp(xs, i2)) -- issue_0205.vpr@86.3--86.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun02qp(xs, i2) == old(fun02qp(xs, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@86.10--86.25) [169691]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@86.10--86.25) [169692]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@86.10--86.25) [169693]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(xs, j_4_1), f_7]) ==> (if j_4_1 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@86.10--86.25) [169694]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered19(j_4_1), neverTriggered19(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < Seq#Length(xs))) && (0 <= j_4_2 && j_4_2 < Seq#Length(xs))) && NoPerm < (if j_4_1 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_4_2 == i2 then FullPerm else NoPerm) ==> Seq#Index(xs, j_4_1) != Seq#Index(xs, j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@86.10--86.25) [169695]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            0 <= j_4_1 && j_4_1 < Seq#Length(xs) ==> (if j_4_1 == i2 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && NoPerm < (if j_4_1 == i2 then FullPerm else NoPerm) ==> qpRange19(Seq#Index(xs, j_4_1)) && invRecv19(Seq#Index(xs, j_4_1)) == j_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv19(o_9) }
            (0 <= invRecv19(o_9) && invRecv19(o_9) < Seq#Length(xs)) && (NoPerm < (if invRecv19(o_9) == i2 then FullPerm else NoPerm) && qpRange19(o_9)) ==> Seq#Index(xs, invRecv19(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@86.33--86.48) [169696]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun02qp might not hold. Assertion i2 < |xs| might not hold. (issue_0205.vpr@86.33--86.48) [169697]"}
          i2 < Seq#Length(xs);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun02qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@86.33--86.48) [169698]"}
            (forall j_5: int ::
            { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
            (0 <= j_5 && j_5 < Seq#Length(xs)) && dummyFunction(oldHeap[Seq#Index(xs, j_5), f_7]) ==> (if j_5 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun02qp might not hold. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@86.33--86.48) [169699]"}
            (forall j_5: int, j_5_1: int ::
            { neverTriggered20(j_5), neverTriggered20(j_5_1) }
            (((j_5 != j_5_1 && (0 <= j_5 && j_5 < Seq#Length(xs))) && (0 <= j_5_1 && j_5_1 < Seq#Length(xs))) && NoPerm < (if j_5 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_5_1 == i2 then FullPerm else NoPerm) ==> Seq#Index(xs, j_5) != Seq#Index(xs, j_5_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02qp might not hold. There might be insufficient permission to access xs[j].f (issue_0205.vpr@86.33--86.48) [169700]"}
            (forall j_5: int ::
            { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
            0 <= j_5 && j_5 < Seq#Length(xs) ==> (if j_5 == i2 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(xs, j_5), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_5: int ::
            { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
            (0 <= j_5 && j_5 < Seq#Length(xs)) && NoPerm < (if j_5 == i2 then FullPerm else NoPerm) ==> qpRange20(Seq#Index(xs, j_5)) && invRecv20(Seq#Index(xs, j_5)) == j_5
          );
          assume (forall o_9: Ref ::
            { invRecv20(o_9) }
            (0 <= invRecv20(o_9) && invRecv20(o_9) < Seq#Length(xs)) && (NoPerm < (if invRecv20(o_9) == i2 then FullPerm else NoPerm) && qpRange20(o_9)) ==> Seq#Index(xs, invRecv20(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02qp(xs, i2) == old(fun02qp(xs, i2)) might not hold. (issue_0205.vpr@86.10--86.49) [169701]"}
      fun02qp(Heap, xs, i2) == fun02qp(oldHeap, xs, i2);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(xs: (Seq Ref), i1_9: int, i2: int, x: Ref) returns ()
  modifies Heap, Mask;
{
  var j1_26: int;
  var j2_11: int;
  var j_10: int;
  var QPMask: MaskType;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i1_9;
    assume i1_9 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume 0 <= i2;
    assume i2 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume i1_9 != i2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|xs|)), (j2 in [0..|xs|)) } { (j1 in [0..|xs|)), xs[j2] } { (j2 in [0..|xs|)), xs[j1] } { xs[j1], xs[j2] } (j1 in [0..|xs|)) && ((j2 in [0..|xs|)) && j1 != j2) ==> xs[j1] != xs[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_26) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_11) && j1_26 != j2_11)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might be negative. (issue_0205.vpr@95.12--95.106) [169702]"}
            j1_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might exceed sequence length. (issue_0205.vpr@95.12--95.106) [169703]"}
            j1_26 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might be negative. (issue_0205.vpr@95.12--95.106) [169704]"}
            j2_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might exceed sequence length. (issue_0205.vpr@95.12--95.106) [169705]"}
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
        if (0 <= j_10 && j_10 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@96.12--96.71) [169706]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@96.12--96.71) [169707]"}
            j_10 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@96.12--96.71) [169708]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Seq#Length(xs))) && (0 <= j_1_1 && j_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange21(Seq#Index(xs, j_1)) && invRecv21(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        ((0 <= invRecv21(o_9) && invRecv21(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange21(o_9) ==> Seq#Index(xs, invRecv21(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < Seq#Length(xs) ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv21(o_9) && invRecv21(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange21(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv21(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((0 <= invRecv21(o_9) && invRecv21(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange21(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems_1:=Mask[x, elems_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.elems == xs
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@97.12--97.41) [169709]"}
        HasDirectPerm(Mask, x, elems_1);
    assume Seq#Equal(Heap[x, elems_1], xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: xs[i1].f := 0 -- issue_0205.vpr@99.3--99.16
    
    // -- Check definedness of xs[i1]
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might be negative. (issue_0205.vpr@99.3--99.16) [169710]"}
        i1_9 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might exceed sequence length. (issue_0205.vpr@99.3--99.16) [169711]"}
        i1_9 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i1].f (issue_0205.vpr@99.3--99.16) [169712]"}
      FullPerm == Mask[Seq#Index(xs, i1_9), f_7];
    Heap := Heap[Seq#Index(xs, i1_9), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun03qp(x, i2) == old(fun03qp(x, i2)) -- issue_0205.vpr@101.3--101.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun03qp(x, i2) == old(fun03qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@101.10--101.24) [169713]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems_1];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@101.10--101.24) [169714]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@101.10--101.24) [169715]"}
          i2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@101.10--101.24) [169716]"}
            (forall j_2_2: int, j_2_3: int ::
            { neverTriggered22(j_2_2), neverTriggered22(j_2_3) }
            (((j_2_2 != j_2_3 && (0 <= j_2_2 && (j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_2_2 == i2))) && (0 <= j_2_3 && (j_2_3 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_2_3 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) != Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@101.10--101.24) [169717]"}
            (forall j_2_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) }
            0 <= j_2_2 && (j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_2_2 == i2) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_2_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) }
            (0 <= j_2_2 && (j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_2_2 == i2)) && NoPerm < FullPerm ==> qpRange22(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2)) && invRecv22(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2)) == j_2_2
          );
          assume (forall o_9: Ref ::
            { invRecv22(o_9) }
            (0 <= invRecv22(o_9) && (invRecv22(o_9) < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && invRecv22(o_9) == i2)) && (NoPerm < FullPerm && qpRange22(o_9)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], invRecv22(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@101.32--101.46) [169718]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems_1];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@101.32--101.46) [169719]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@101.32--101.46) [169720]"}
          i2 < Seq#Length(oldHeap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@101.32--101.46) [169721]"}
            (forall j_3: int, j_3_1: int ::
            { neverTriggered23(j_3), neverTriggered23(j_3_1) }
            (((j_3 != j_3_1 && (0 <= j_3 && (j_3 < Seq#Length(oldHeap[x, elems_1]) && j_3 == i2))) && (0 <= j_3_1 && (j_3_1 < Seq#Length(oldHeap[x, elems_1]) && j_3_1 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(oldHeap[x, elems_1], j_3) != Seq#Index(oldHeap[x, elems_1], j_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@101.32--101.46) [169722]"}
            (forall j_3: int ::
            { Seq#Index(oldHeap[x, elems_1], j_3) } { Seq#Index(oldHeap[x, elems_1], j_3) }
            0 <= j_3 && (j_3 < Seq#Length(oldHeap[x, elems_1]) && j_3 == i2) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems_1], j_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_3: int ::
            { Seq#Index(oldHeap[x, elems_1], j_3) } { Seq#Index(oldHeap[x, elems_1], j_3) }
            (0 <= j_3 && (j_3 < Seq#Length(oldHeap[x, elems_1]) && j_3 == i2)) && NoPerm < FullPerm ==> qpRange23(Seq#Index(oldHeap[x, elems_1], j_3)) && invRecv23(Seq#Index(oldHeap[x, elems_1], j_3)) == j_3
          );
          assume (forall o_9: Ref ::
            { invRecv23(o_9) }
            (0 <= invRecv23(o_9) && (invRecv23(o_9) < Seq#Length(oldHeap[x, elems_1]) && invRecv23(o_9) == i2)) && (NoPerm < FullPerm && qpRange23(o_9)) ==> Seq#Index(oldHeap[x, elems_1], invRecv23(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun03qp(x, i2) == old(fun03qp(x, i2)) might not hold. (issue_0205.vpr@101.10--101.47) [169723]"}
      fun03qp(Heap, x, i2) == fun03qp(oldHeap, x, i2);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i2].f := 0 -- issue_0205.vpr@103.3--103.16
    
    // -- Check definedness of xs[i2]
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might be negative. (issue_0205.vpr@103.3--103.16) [169724]"}
        i2 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might exceed sequence length. (issue_0205.vpr@103.3--103.16) [169725]"}
        i2 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i2].f (issue_0205.vpr@103.3--103.16) [169726]"}
      FullPerm == Mask[Seq#Index(xs, i2), f_7];
    Heap := Heap[Seq#Index(xs, i2), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun03qp(x, i2) == old(fun03qp(x, i2)) -- issue_0205.vpr@106.3--106.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun03qp(x, i2) == old(fun03qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@106.10--106.24) [169727]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems_1];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@106.10--106.24) [169728]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@106.10--106.24) [169729]"}
          i2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@106.10--106.24) [169730]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered24(j_4_1), neverTriggered24(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && (j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_4_1 == i2))) && (0 <= j_4_2 && (j_4_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_4_2 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) != Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@106.10--106.24) [169731]"}
            (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) }
            0 <= j_4_1 && (j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_4_1 == i2) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) }
            (0 <= j_4_1 && (j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && j_4_1 == i2)) && NoPerm < FullPerm ==> qpRange24(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1)) && invRecv24(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1)) == j_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv24(o_9) }
            (0 <= invRecv24(o_9) && (invRecv24(o_9) < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) && invRecv24(o_9) == i2)) && (NoPerm < FullPerm && qpRange24(o_9)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], invRecv24(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@106.32--106.46) [169732]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems_1];
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@106.32--106.46) [169733]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun03qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@106.32--106.46) [169734]"}
          i2 < Seq#Length(oldHeap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun03qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@106.32--106.46) [169735]"}
            (forall j_5: int, j_5_1: int ::
            { neverTriggered25(j_5), neverTriggered25(j_5_1) }
            (((j_5 != j_5_1 && (0 <= j_5 && (j_5 < Seq#Length(oldHeap[x, elems_1]) && j_5 == i2))) && (0 <= j_5_1 && (j_5_1 < Seq#Length(oldHeap[x, elems_1]) && j_5_1 == i2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(oldHeap[x, elems_1], j_5) != Seq#Index(oldHeap[x, elems_1], j_5_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@106.32--106.46) [169736]"}
            (forall j_5: int ::
            { Seq#Index(oldHeap[x, elems_1], j_5) } { Seq#Index(oldHeap[x, elems_1], j_5) }
            0 <= j_5 && (j_5 < Seq#Length(oldHeap[x, elems_1]) && j_5 == i2) ==> FullPerm > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems_1], j_5), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_5: int ::
            { Seq#Index(oldHeap[x, elems_1], j_5) } { Seq#Index(oldHeap[x, elems_1], j_5) }
            (0 <= j_5 && (j_5 < Seq#Length(oldHeap[x, elems_1]) && j_5 == i2)) && NoPerm < FullPerm ==> qpRange25(Seq#Index(oldHeap[x, elems_1], j_5)) && invRecv25(Seq#Index(oldHeap[x, elems_1], j_5)) == j_5
          );
          assume (forall o_9: Ref ::
            { invRecv25(o_9) }
            (0 <= invRecv25(o_9) && (invRecv25(o_9) < Seq#Length(oldHeap[x, elems_1]) && invRecv25(o_9) == i2)) && (NoPerm < FullPerm && qpRange25(o_9)) ==> Seq#Index(oldHeap[x, elems_1], invRecv25(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun03qp(x, i2) == old(fun03qp(x, i2)) might not hold. (issue_0205.vpr@106.10--106.47) [169737]"}
      fun03qp(Heap, x, i2) == fun03qp(oldHeap, x, i2);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(xs: (Seq Ref), i1_9: int, i2: int, x: Ref) returns ()
  modifies Heap, Mask;
{
  var j1_27: int;
  var j2_12: int;
  var j_8: int;
  var QPMask: MaskType;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i1_9;
    assume i1_9 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume 0 <= i2;
    assume i2 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume i1_9 != i2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|xs|)), (j2 in [0..|xs|)) } { (j1 in [0..|xs|)), xs[j2] } { (j2 in [0..|xs|)), xs[j1] } { xs[j1], xs[j2] } (j1 in [0..|xs|)) && ((j2 in [0..|xs|)) && j1 != j2) ==> xs[j1] != xs[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j1_27) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j2_12) && j1_27 != j2_12)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might be negative. (issue_0205.vpr@115.12--115.106) [169738]"}
            j1_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j1] into xs might exceed sequence length. (issue_0205.vpr@115.12--115.106) [169739]"}
            j1_27 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might be negative. (issue_0205.vpr@115.12--115.106) [169740]"}
            j2_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j2] into xs might exceed sequence length. (issue_0205.vpr@115.12--115.106) [169741]"}
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
        if (0 <= j_8 && j_8 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (issue_0205.vpr@116.12--116.71) [169742]"}
            j_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (issue_0205.vpr@116.12--116.71) [169743]"}
            j_8 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (issue_0205.vpr@116.12--116.71) [169744]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Seq#Length(xs))) && (0 <= j_1_1 && j_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange26(Seq#Index(xs, j_1)) && invRecv26(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_9: Ref ::
        { invRecv26(o_9) }
        ((0 <= invRecv26(o_9) && invRecv26(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange26(o_9) ==> Seq#Index(xs, invRecv26(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < Seq#Length(xs) ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv26(o_9) && invRecv26(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange26(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv26(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((0 <= invRecv26(o_9) && invRecv26(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange26(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, elems_1:=Mask[x, elems_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.elems == xs
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.elems (issue_0205.vpr@117.12--117.41) [169745]"}
        HasDirectPerm(Mask, x, elems_1);
    assume Seq#Equal(Heap[x, elems_1], xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: xs[i1].f := 0 -- issue_0205.vpr@119.3--119.16
    
    // -- Check definedness of xs[i1]
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might be negative. (issue_0205.vpr@119.3--119.16) [169746]"}
        i1_9 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i1] into xs might exceed sequence length. (issue_0205.vpr@119.3--119.16) [169747]"}
        i1_9 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i1].f (issue_0205.vpr@119.3--119.16) [169748]"}
      FullPerm == Mask[Seq#Index(xs, i1_9), f_7];
    Heap := Heap[Seq#Index(xs, i1_9), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun04qp(x, i2) == old(fun04qp(x, i2)) -- issue_0205.vpr@121.3--121.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun04qp(x, i2) == old(fun04qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@121.10--121.24) [169749]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems_1];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@121.10--121.24) [169750]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@121.10--121.24) [169751]"}
          i2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@121.10--121.24) [169752]"}
            (forall j_2_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) }
            (0 <= j_2_2 && j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2), f_7]) ==> (if j_2_2 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@121.10--121.24) [169753]"}
            (forall j_2_2: int, j_2_3: int ::
            { neverTriggered27(j_2_2), neverTriggered27(j_2_3) }
            (((j_2_2 != j_2_3 && (0 <= j_2_2 && j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]))) && (0 <= j_2_3 && j_2_3 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]))) && NoPerm < (if j_2_2 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_2_3 == i2 then FullPerm else NoPerm) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) != Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@121.10--121.24) [169754]"}
            (forall j_2_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) }
            0 <= j_2_2 && j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) ==> (if j_2_2 == i2 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_2_2: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2) }
            (0 <= j_2_2 && j_2_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && NoPerm < (if j_2_2 == i2 then FullPerm else NoPerm) ==> qpRange27(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2)) && invRecv27(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_2_2)) == j_2_2
          );
          assume (forall o_9: Ref ::
            { invRecv27(o_9) }
            (0 <= invRecv27(o_9) && invRecv27(o_9) < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && (NoPerm < (if invRecv27(o_9) == i2 then FullPerm else NoPerm) && qpRange27(o_9)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], invRecv27(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@121.32--121.46) [169755]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems_1];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@121.32--121.46) [169756]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@121.32--121.46) [169757]"}
          i2 < Seq#Length(oldHeap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@121.32--121.46) [169758]"}
            (forall j_3: int ::
            { Seq#Index(oldHeap[x, elems_1], j_3) } { Seq#Index(oldHeap[x, elems_1], j_3) }
            (0 <= j_3 && j_3 < Seq#Length(oldHeap[x, elems_1])) && dummyFunction(oldHeap[Seq#Index(oldHeap[x, elems_1], j_3), f_7]) ==> (if j_3 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@121.32--121.46) [169759]"}
            (forall j_3: int, j_3_1: int ::
            { neverTriggered28(j_3), neverTriggered28(j_3_1) }
            (((j_3 != j_3_1 && (0 <= j_3 && j_3 < Seq#Length(oldHeap[x, elems_1]))) && (0 <= j_3_1 && j_3_1 < Seq#Length(oldHeap[x, elems_1]))) && NoPerm < (if j_3 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_3_1 == i2 then FullPerm else NoPerm) ==> Seq#Index(oldHeap[x, elems_1], j_3) != Seq#Index(oldHeap[x, elems_1], j_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@121.32--121.46) [169760]"}
            (forall j_3: int ::
            { Seq#Index(oldHeap[x, elems_1], j_3) } { Seq#Index(oldHeap[x, elems_1], j_3) }
            0 <= j_3 && j_3 < Seq#Length(oldHeap[x, elems_1]) ==> (if j_3 == i2 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems_1], j_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_3: int ::
            { Seq#Index(oldHeap[x, elems_1], j_3) } { Seq#Index(oldHeap[x, elems_1], j_3) }
            (0 <= j_3 && j_3 < Seq#Length(oldHeap[x, elems_1])) && NoPerm < (if j_3 == i2 then FullPerm else NoPerm) ==> qpRange28(Seq#Index(oldHeap[x, elems_1], j_3)) && invRecv28(Seq#Index(oldHeap[x, elems_1], j_3)) == j_3
          );
          assume (forall o_9: Ref ::
            { invRecv28(o_9) }
            (0 <= invRecv28(o_9) && invRecv28(o_9) < Seq#Length(oldHeap[x, elems_1])) && (NoPerm < (if invRecv28(o_9) == i2 then FullPerm else NoPerm) && qpRange28(o_9)) ==> Seq#Index(oldHeap[x, elems_1], invRecv28(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun04qp(x, i2) == old(fun04qp(x, i2)) might not hold. (issue_0205.vpr@121.10--121.47) [169761]"}
      fun04qp(Heap, x, i2) == fun04qp(oldHeap, x, i2);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i2].f := 0 -- issue_0205.vpr@123.3--123.16
    
    // -- Check definedness of xs[i2]
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might be negative. (issue_0205.vpr@123.3--123.16) [169762]"}
        i2 >= 0;
      assert {:msg "  Assignment might fail. Index xs[i2] into xs might exceed sequence length. (issue_0205.vpr@123.3--123.16) [169763]"}
        i2 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i2].f (issue_0205.vpr@123.3--123.16) [169764]"}
      FullPerm == Mask[Seq#Index(xs, i2), f_7];
    Heap := Heap[Seq#Index(xs, i2), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun04qp(x, i2) == old(fun04qp(x, i2)) -- issue_0205.vpr@126.3--126.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun04qp(x, i2) == old(fun04qp(x, i2))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@126.10--126.24) [169765]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, elems_1];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@126.10--126.24) [169766]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@126.10--126.24) [169767]"}
          i2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@126.10--126.24) [169768]"}
            (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1), f_7]) ==> (if j_4_1 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@126.10--126.24) [169769]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered29(j_4_1), neverTriggered29(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]))) && (0 <= j_4_2 && j_4_2 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]))) && NoPerm < (if j_4_1 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_4_2 == i2 then FullPerm else NoPerm) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) != Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@126.10--126.24) [169770]"}
            (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) }
            0 <= j_4_1 && j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems_1]) ==> (if j_4_1 == i2 then FullPerm else NoPerm) > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_4_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) } { Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && NoPerm < (if j_4_1 == i2 then FullPerm else NoPerm) ==> qpRange29(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1)) && invRecv29(Seq#Index(ExhaleWellDef0Heap[x, elems_1], j_4_1)) == j_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv29(o_9) }
            (0 <= invRecv29(o_9) && invRecv29(o_9) < Seq#Length(ExhaleWellDef0Heap[x, elems_1])) && (NoPerm < (if invRecv29(o_9) == i2 then FullPerm else NoPerm) && qpRange29(o_9)) ==> Seq#Index(ExhaleWellDef0Heap[x, elems_1], invRecv29(o_9)) == o_9
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
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems (issue_0205.vpr@126.32--126.46) [169771]"}
          NoPerm < perm ==> NoPerm < oldMask[x, elems_1];
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion 0 <= i2 might not hold. (issue_0205.vpr@126.32--126.46) [169772]"}
          0 <= i2;
        assert {:msg "  Precondition of function fun04qp might not hold. Assertion i2 < |x.elems| might not hold. (issue_0205.vpr@126.32--126.46) [169773]"}
          i2 < Seq#Length(oldHeap[x, elems_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function fun04qp might not hold. Fraction (j == i2 ? write : none) might be negative. (issue_0205.vpr@126.32--126.46) [169774]"}
            (forall j_5: int ::
            { Seq#Index(oldHeap[x, elems_1], j_5) } { Seq#Index(oldHeap[x, elems_1], j_5) }
            (0 <= j_5 && j_5 < Seq#Length(oldHeap[x, elems_1])) && dummyFunction(oldHeap[Seq#Index(oldHeap[x, elems_1], j_5), f_7]) ==> (if j_5 == i2 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver x.elems[j] is injective
          assert {:msg "  Precondition of function fun04qp might not hold. Quantified resource x.elems[j].f might not be injective. (issue_0205.vpr@126.32--126.46) [169775]"}
            (forall j_5: int, j_5_1: int ::
            { neverTriggered30(j_5), neverTriggered30(j_5_1) }
            (((j_5 != j_5_1 && (0 <= j_5 && j_5 < Seq#Length(oldHeap[x, elems_1]))) && (0 <= j_5_1 && j_5_1 < Seq#Length(oldHeap[x, elems_1]))) && NoPerm < (if j_5 == i2 then FullPerm else NoPerm)) && NoPerm < (if j_5_1 == i2 then FullPerm else NoPerm) ==> Seq#Index(oldHeap[x, elems_1], j_5) != Seq#Index(oldHeap[x, elems_1], j_5_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04qp might not hold. There might be insufficient permission to access x.elems[j].f (issue_0205.vpr@126.32--126.46) [169776]"}
            (forall j_5: int ::
            { Seq#Index(oldHeap[x, elems_1], j_5) } { Seq#Index(oldHeap[x, elems_1], j_5) }
            0 <= j_5 && j_5 < Seq#Length(oldHeap[x, elems_1]) ==> (if j_5 == i2 then FullPerm else NoPerm) > NoPerm ==> oldMask[Seq#Index(oldHeap[x, elems_1], j_5), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x.elems[j]
          assume (forall j_5: int ::
            { Seq#Index(oldHeap[x, elems_1], j_5) } { Seq#Index(oldHeap[x, elems_1], j_5) }
            (0 <= j_5 && j_5 < Seq#Length(oldHeap[x, elems_1])) && NoPerm < (if j_5 == i2 then FullPerm else NoPerm) ==> qpRange30(Seq#Index(oldHeap[x, elems_1], j_5)) && invRecv30(Seq#Index(oldHeap[x, elems_1], j_5)) == j_5
          );
          assume (forall o_9: Ref ::
            { invRecv30(o_9) }
            (0 <= invRecv30(o_9) && invRecv30(o_9) < Seq#Length(oldHeap[x, elems_1])) && (NoPerm < (if invRecv30(o_9) == i2 then FullPerm else NoPerm) && qpRange30(o_9)) ==> Seq#Index(oldHeap[x, elems_1], invRecv30(o_9)) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun04qp(x, i2) == old(fun04qp(x, i2)) might not hold. (issue_0205.vpr@126.10--126.47) [169777]"}
      fun04qp(Heap, x, i2) == fun04qp(oldHeap, x, i2);
    assume state(Heap, Mask);
}