// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:43:58
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/trigger-z3-bug.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/trigger-z3-bug-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_17] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref, f_56: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, f_56] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_43, f_56) ==> Heap[o_43, f_56] == ExhaleHeap[o_43, f_56]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_56: (Field A B) ::
    { ExhaleHeap[o2_21, f_56] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_56] ==> Heap[o2_21, f_56] == ExhaleHeap[o2_21, f_56]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_56: (Field A B) ::
    { ExhaleHeap[o2_21, f_56] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_56] ==> Heap[o2_21, f_56] == ExhaleHeap[o2_21, f_56]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_43, $allocated] ==> ExhaleHeap[o_43, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_57: (Field A B), v: B ::
  { Heap[o_11, f_57:=v] }
  succHeap(Heap, Heap[o_11, f_57:=v])
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

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_3_2: int): bool;
function  neverTriggered3(i_6_2: int): bool;
function  neverTriggered4(i_9_1: int): bool;
function  neverTriggered5(i_13_1: int): bool;
function  neverTriggered6(i_16_1: int): bool;
function  neverTriggered7(i_18_1: int): bool;
function  neverTriggered8(i_21_1: int): bool;
function  neverTriggered9(i_23_1: int): bool;
function  neverTriggered10(i_28: int): bool;
function  neverTriggered11(i_1: int): bool;
function  neverTriggered12(i_7_1: int): bool;
function  neverTriggered13(i_12_1: int): bool;
function  neverTriggered14(i_1: int): bool;
function  neverTriggered15(tid_1: int): bool;
function  neverTriggered16(i_3_2: int): bool;
function  neverTriggered17(i_4_1: int): bool;
function  neverTriggered18(i_1: int): bool;
function  neverTriggered19(_x_tid_1: int): bool;
function  neverTriggered20(i_7_1: int): bool;
function  neverTriggered21(i_12_1: int): bool;
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

const unique src: Field NormalField (Seq Ref);
axiom !IsPredicateField(src);
axiom !IsWandField(src);
const unique dst: Field NormalField (Seq Ref);
axiom !IsPredicateField(dst);
axiom !IsWandField(dst);
const unique Integer_value: Field NormalField int;
axiom !IsPredicateField(Integer_value);
axiom !IsWandField(Integer_value);

// ==================================================
// Translation of method main_main
// ==================================================

procedure main_main(this: Ref, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ix_9: int;
  var jx_9: int;
  var i_3: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ix_10: int;
  var jx_10: int;
  var i_14: int;
  var i_5: int;
  var __last_barrier: int;
  var half: int;
  var offset_1: int;
  var k: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_6_1: int;
  var jx_6_1: int;
  var i_10_1: int;
  var ExhaleHeap: HeapType;
  var ix_12: int;
  var jx_12: int;
  var i_7: int;
  var i_21: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var ix_11_1: int;
  var jx_11_1: int;
  var i_19_1: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_last_barrier: int;
  var ix_14: int;
  var jx_14: int;
  var i_24_1: int;
  var i_26_1: int;
  var i_8: int;
  var i_32: int;
  var i_19: int;
  var i_35: int;
  var ix_4: int;
  var jx_4: int;
  var i_7_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume tid == lid;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, src:=Mask[this, src] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@21.12--21.31) [121565]"}
        HasDirectPerm(Mask, this, src);
    assume Seq#Length(Heap[this, src]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, dst:=Mask[this, dst] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@23.12--23.31) [121566]"}
        HasDirectPerm(Mask, this, dst);
    assume Seq#Length(Heap[this, dst]) == gsize;
    assume state(Heap, Mask);
    assume 4 <= gsize;
    assume state(Heap, Mask);
    assume gsize mod 4 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
      if (*) {
        if (ix_9 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@26.12--26.140) [121567]"}
            HasDirectPerm(Mask, this, src);
          if (ix_9 < Seq#Length(Heap[this, src])) {
            if (jx_9 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@26.12--26.140) [121568]"}
                HasDirectPerm(Mask, this, src);
            }
          }
        }
        if (ix_9 >= 0 && (ix_9 < Seq#Length(Heap[this, src]) && (jx_9 >= 0 && (jx_9 < Seq#Length(Heap[this, src]) && ix_9 != jx_9)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@26.12--26.140) [121569]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@26.12--26.140) [121570]"}
            ix_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@26.12--26.140) [121571]"}
            ix_9 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@26.12--26.140) [121572]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@26.12--26.140) [121573]"}
            jx_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@26.12--26.140) [121574]"}
            jx_9 < Seq#Length(Heap[this, src]);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(Heap[this, src], ix_1), Seq#Index(Heap[this, src], jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(Heap[this, src]) && (jx_1 >= 0 && (jx_1 < Seq#Length(Heap[this, src]) && ix_1 != jx_1))) ==> Seq#Index(Heap[this, src], ix_1) != Seq#Index(Heap[this, src], jx_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_3)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@27.13--27.93) [121575]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@27.13--27.93) [121576]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@27.13--27.93) [121577]"}
            i_3 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@27.13--27.93) [121578]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@27.13--27.93) [121579]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, gsize), i_1)) && Seq#Contains(Seq#Range(0, gsize), i_1_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_1) != Seq#Index(Heap[this, src], i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
        Seq#Contains(Seq#Range(0, gsize), i_1) && NoPerm < 1 / gsize ==> qpRange1(Seq#Index(Heap[this, src], i_1)) && invRecv1(Seq#Index(Heap[this, src], i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv1(o_9)) && NoPerm < 1 / gsize) && qpRange1(o_9) ==> Seq#Index(Heap[this, src], invRecv1(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@27.13--27.93) [121580]"}
      (forall i_1: int ::
      { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
      Seq#Contains(Seq#Range(0, gsize), i_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
        Seq#Contains(Seq#Range(0, gsize), i_1) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv1(o_9)) && NoPerm < 1 / gsize) && qpRange1(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv1(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv1(o_9)) && NoPerm < 1 / gsize) && qpRange1(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.dst[tid].Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@28.12--28.51) [121581]"}
        HasDirectPerm(Mask, this, dst);
      assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@28.12--28.51) [121582]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@28.12--28.51) [121583]"}
        tid < Seq#Length(Heap[this, dst]);
    perm := FullPerm;
    assume Seq#Index(Heap[this, dst], tid) != null;
    Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume tid == lid;
    assume state(PostHeap, PostMask);
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, src:=PostMask[this, src] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@35.11--35.30) [121584]"}
        HasDirectPerm(PostMask, this, src);
    assume Seq#Length(PostHeap[this, src]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, dst:=PostMask[this, dst] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@37.11--37.30) [121585]"}
        HasDirectPerm(PostMask, this, dst);
    assume Seq#Length(PostHeap[this, dst]) == gsize;
    assume state(PostHeap, PostMask);
    assume 4 <= gsize;
    assume state(PostHeap, PostMask);
    assume gsize mod 4 == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
      if (*) {
        if (ix_10 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@40.11--40.139) [121586]"}
            HasDirectPerm(PostMask, this, src);
          if (ix_10 < Seq#Length(PostHeap[this, src])) {
            if (jx_10 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@40.11--40.139) [121587]"}
                HasDirectPerm(PostMask, this, src);
            }
          }
        }
        if (ix_10 >= 0 && (ix_10 < Seq#Length(PostHeap[this, src]) && (jx_10 >= 0 && (jx_10 < Seq#Length(PostHeap[this, src]) && ix_10 != jx_10)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@40.11--40.139) [121588]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@40.11--40.139) [121589]"}
            ix_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@40.11--40.139) [121590]"}
            ix_10 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@40.11--40.139) [121591]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@40.11--40.139) [121592]"}
            jx_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@40.11--40.139) [121593]"}
            jx_10 < Seq#Length(PostHeap[this, src]);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(PostHeap[this, src], ix_3), Seq#Index(PostHeap[this, src], jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(PostHeap[this, src]) && (jx_3 >= 0 && (jx_3 < Seq#Length(PostHeap[this, src]) && ix_3 != jx_3))) ==> Seq#Index(PostHeap[this, src], ix_3) != Seq#Index(PostHeap[this, src], jx_3)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_14)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@41.12--41.92) [121594]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@41.12--41.92) [121595]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@41.12--41.92) [121596]"}
            i_14 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@41.12--41.92) [121597]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@41.12--41.92) [121598]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, gsize), i_3_2)) && Seq#Contains(Seq#Range(0, gsize), i_3_3)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], i_3_2) != Seq#Index(PostHeap[this, src], i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(PostHeap[this, src], i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3_2) } { Seq#Contains(Seq#Range(0, gsize), i_3_2) } { Seq#Index(PostHeap[this, src], i_3_2) }
        Seq#Contains(Seq#Range(0, gsize), i_3_2) && NoPerm < 1 / gsize ==> qpRange2(Seq#Index(PostHeap[this, src], i_3_2)) && invRecv2(Seq#Index(PostHeap[this, src], i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv2(o_9)) && NoPerm < 1 / gsize) && qpRange2(o_9) ==> Seq#Index(PostHeap[this, src], invRecv2(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@41.12--41.92) [121599]"}
      (forall i_3_2: int ::
      { Seq#Index(PostHeap[this, src], i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3_2) } { Seq#Contains(Seq#Range(0, gsize), i_3_2) } { Seq#Index(PostHeap[this, src], i_3_2) }
      Seq#Contains(Seq#Range(0, gsize), i_3_2) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(PostHeap[this, src], i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3_2) } { Seq#Contains(Seq#Range(0, gsize), i_3_2) } { Seq#Index(PostHeap[this, src], i_3_2) }
        Seq#Contains(Seq#Range(0, gsize), i_3_2) && 1 / gsize > NoPerm ==> Seq#Index(PostHeap[this, src], i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv2(o_9)) && NoPerm < 1 / gsize) && qpRange2(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], invRecv2(o_9)) == o_9) && QPMask[o_9, Integer_value] == PostMask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv2(o_9)) && NoPerm < 1 / gsize) && qpRange2(o_9)) ==> QPMask[o_9, Integer_value] == PostMask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.src == old(this.src)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@42.11--42.36) [121600]"}
        HasDirectPerm(PostMask, this, src);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@42.11--42.36) [121601]"}
        HasDirectPerm(oldMask, this, src);
    assume Seq#Equal(PostHeap[this, src], oldHeap[this, src]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.dst == old(this.dst)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@43.11--43.36) [121602]"}
        HasDirectPerm(PostMask, this, dst);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@43.11--43.36) [121603]"}
        HasDirectPerm(oldMask, this, dst);
    assume Seq#Equal(PostHeap[this, dst], oldHeap[this, dst]);
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of acc(this.dst[0].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@44.11--44.63) [121604]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@44.11--44.63) [121605]"}
          0 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 0) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < tcount ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (0 <= i_5 && i_5 < tcount) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@45.12--45.134) [121606]"}
              HasDirectPerm(PostMask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@45.12--45.134) [121607]"}
              0 < Seq#Length(PostHeap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@45.12--45.134) [121608]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 0), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@45.12--45.134) [121609]"}
              HasDirectPerm(PostMask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@45.12--45.134) [121610]"}
              i_5 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@45.12--45.134) [121611]"}
              i_5 < Seq#Length(PostHeap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@45.12--45.134) [121612]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_5), Integer_value);
          }
          assume false;
        }
      assume (forall i_5_1: int ::
        { Seq#Index(PostHeap[this, src], i_5_1) }
        0 <= i_5_1 && i_5_1 < tcount ==> PostHeap[Seq#Index(PostHeap[this, dst], 0), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_5_1), Integer_value]
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __last_barrier := 0 -- trigger-z3-bug.vpr@51.3--51.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: half := gsize \ 2 -- trigger-z3-bug.vpr@52.3--52.20
    half := gsize div 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: offset := (tid == 0 ? 0 : half) -- trigger-z3-bug.vpr@53.3--53.34
    offset_1 := (if tid == 0 then 0 else half);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (tid < 2) -- trigger-z3-bug.vpr@54.3--85.4
    if (tid < 2) {
      
      // -- Translating statement: this.dst[tid].Integer_value := this.src[tid].Integer_value -- trigger-z3-bug.vpr@55.5--55.63
        
        // -- Check definedness of this.dst[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@55.5--55.63) [121613]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Assignment might fail. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@55.5--55.63) [121614]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@55.5--55.63) [121615]"}
            tid < Seq#Length(Heap[this, dst]);
        
        // -- Check definedness of this.src[tid].Integer_value
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@55.5--55.63) [121616]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Assignment might fail. Index this.src[tid] into this.src might be negative. (trigger-z3-bug.vpr@55.5--55.63) [121617]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index this.src[tid] into this.src might exceed sequence length. (trigger-z3-bug.vpr@55.5--55.63) [121618]"}
            tid < Seq#Length(Heap[this, src]);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.src[tid].Integer_value (trigger-z3-bug.vpr@55.5--55.63) [121619]"}
            HasDirectPerm(Mask, Seq#Index(Heap[this, src], tid), Integer_value);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@55.5--55.63) [121620]"}
          FullPerm == Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
        Heap := Heap[Seq#Index(Heap[this, dst], tid), Integer_value:=Heap[Seq#Index(Heap[this, src], tid), Integer_value]];
        assume state(Heap, Mask);
      
      // -- Translating statement: k := 1 -- trigger-z3-bug.vpr@56.5--56.11
        k := 1;
        assume state(Heap, Mask);
      
      // -- Translating statement: while (k < half) -- trigger-z3-bug.vpr@57.5--84.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Loop invariant 0 <= tid might not hold on entry. Assertion 0 <= tid might not hold. (trigger-z3-bug.vpr@58.17--58.25) [121621]"}
              0 <= tid;
            assert {:msg "  Loop invariant tid < tcount might not hold on entry. Assertion tid < tcount might not hold. (trigger-z3-bug.vpr@59.17--59.29) [121622]"}
              tid < tcount;
            assert {:msg "  Loop invariant tid == lid might not hold on entry. Assertion tid == lid might not hold. (trigger-z3-bug.vpr@60.17--60.27) [121623]"}
              tid == lid;
            assert {:msg "  Loop invariant tcount == gsize might not hold on entry. Assertion tcount == gsize might not hold. (trigger-z3-bug.vpr@61.17--61.32) [121624]"}
              tcount == gsize;
            assert {:msg "  Loop invariant gid == 0 might not hold on entry. Assertion gid == 0 might not hold. (trigger-z3-bug.vpr@62.17--62.25) [121625]"}
              gid == 0;
            assert {:msg "  Loop invariant acc(this.src, wildcard) might not hold on entry. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@63.17--63.40) [121626]"}
              Mask[this, src] > NoPerm;
            havoc wildcard;
            assume wildcard < Mask[this, src];
            Mask := Mask[this, src:=Mask[this, src] - wildcard];
            assert {:msg "  Loop invariant |this.src| == gsize might not hold on entry. Assertion |this.src| == gsize might not hold. (trigger-z3-bug.vpr@64.17--64.36) [121627]"}
              Seq#Length(Heap[this, src]) == gsize;
            assert {:msg "  Loop invariant acc(this.dst, wildcard) might not hold on entry. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@65.17--65.40) [121628]"}
              Mask[this, dst] > NoPerm;
            havoc wildcard;
            assume wildcard < Mask[this, dst];
            Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
            assert {:msg "  Loop invariant |this.dst| == gsize might not hold on entry. Assertion |this.dst| == gsize might not hold. (trigger-z3-bug.vpr@66.17--66.36) [121629]"}
              Seq#Length(Heap[this, dst]) == gsize;
            assert {:msg "  Loop invariant 4 <= gsize might not hold on entry. Assertion 4 <= gsize might not hold. (trigger-z3-bug.vpr@67.17--67.27) [121630]"}
              4 <= gsize;
            assert {:msg "  Loop invariant gsize % 4 == 0 might not hold on entry. Assertion gsize % 4 == 0 might not hold. (trigger-z3-bug.vpr@68.17--68.31) [121631]"}
              gsize mod 4 == 0;
            if (*) {
              if (ix_6_1 >= 0 && (ix_6_1 < Seq#Length(Heap[this, src]) && (jx_6_1 >= 0 && (jx_6_1 < Seq#Length(Heap[this, src]) && ix_6_1 != jx_6_1)))) {
                assert {:msg "  Loop invariant (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx]) might not hold on entry. Assertion this.src[ix] != this.src[jx] might not hold. (trigger-z3-bug.vpr@69.17--69.145) [121632]"}
                  Seq#Index(Heap[this, src], ix_6_1) != Seq#Index(Heap[this, src], jx_6_1);
              }
              assume false;
            }
            assume (forall ix_7_1: int, jx_7_1: int ::
              { Seq#Index(Heap[this, src], ix_7_1), Seq#Index(Heap[this, src], jx_7_1) }
              ix_7_1 >= 0 && (ix_7_1 < Seq#Length(Heap[this, src]) && (jx_7_1 >= 0 && (jx_7_1 < Seq#Length(Heap[this, src]) && ix_7_1 != jx_7_1))) ==> Seq#Index(Heap[this, src], ix_7_1) != Seq#Index(Heap[this, src], jx_7_1)
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not hold on entry. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@70.18--70.98) [121633]"}
                (forall i_9_1: int ::
                { Seq#Index(Heap[this, src], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_9_1) } { Seq#Contains(Seq#Range(0, gsize), i_9_1) } { Seq#Index(Heap[this, src], i_9_1) }
                Seq#Contains(Seq#Range(0, gsize), i_9_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_9_1), Integer_value]) ==> 1 / gsize >= NoPerm
              );
            
            // -- check if receiver this.src[i] is injective
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not hold on entry. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@70.18--70.98) [121634]"}
                (forall i_9_1: int, i_9_2: int ::
                { neverTriggered4(i_9_1), neverTriggered4(i_9_2) }
                (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, gsize), i_9_1)) && Seq#Contains(Seq#Range(0, gsize), i_9_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_9_1) != Seq#Index(Heap[this, src], i_9_2)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not hold on entry. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@70.18--70.98) [121635]"}
                (forall i_9_1: int ::
                { Seq#Index(Heap[this, src], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_9_1) } { Seq#Contains(Seq#Range(0, gsize), i_9_1) } { Seq#Index(Heap[this, src], i_9_1) }
                Seq#Contains(Seq#Range(0, gsize), i_9_1) ==> Mask[Seq#Index(Heap[this, src], i_9_1), Integer_value] >= 1 / gsize
              );
            
            // -- assumptions for inverse of receiver this.src[i]
              assume (forall i_9_1: int ::
                { Seq#Index(Heap[this, src], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_9_1) } { Seq#Contains(Seq#Range(0, gsize), i_9_1) } { Seq#Index(Heap[this, src], i_9_1) }
                Seq#Contains(Seq#Range(0, gsize), i_9_1) && NoPerm < 1 / gsize ==> qpRange4(Seq#Index(Heap[this, src], i_9_1)) && invRecv4(Seq#Index(Heap[this, src], i_9_1)) == i_9_1
              );
              assume (forall o_9: Ref ::
                { invRecv4(o_9) }
                Seq#Contains(Seq#Range(0, gsize), invRecv4(o_9)) && (NoPerm < 1 / gsize && qpRange4(o_9)) ==> Seq#Index(Heap[this, src], invRecv4(o_9)) == o_9
              );
            
            // -- assume permission updates for field Integer_value
              assume (forall o_9: Ref ::
                { QPMask[o_9, Integer_value] }
                (Seq#Contains(Seq#Range(0, gsize), invRecv4(o_9)) && (NoPerm < 1 / gsize && qpRange4(o_9)) ==> Seq#Index(Heap[this, src], invRecv4(o_9)) == o_9 && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv4(o_9)) && (NoPerm < 1 / gsize && qpRange4(o_9))) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { QPMask[o_9, f_5] }
                f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            assert {:msg "  Loop invariant false || __last_barrier == 0 might not hold on entry. Assertion false || __last_barrier == 0 might not hold. (trigger-z3-bug.vpr@71.17--71.47) [121636]"}
              __last_barrier == 0;
            if (__last_barrier == 1) {
              if (tid == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant __last_barrier == 1 ==> (tid == 0 ==> acc(this.dst[0].Integer_value, write)) && (tid == 0 ==> acc(this.dst[1].Integer_value, write)) might not hold on entry. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@72.17--72.155) [121637]"}
                    perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
              }
              if (tid == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant __last_barrier == 1 ==> (tid == 0 ==> acc(this.dst[0].Integer_value, write)) && (tid == 0 ==> acc(this.dst[1].Integer_value, write)) might not hold on entry. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@72.17--72.155) [121638]"}
                    perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
              }
            }
            if (__last_barrier == 0) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(this.dst[tid].Integer_value, write) might not hold on entry. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@73.17--73.82) [121639]"}
                  perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
              }
              Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
            }
            assert {:msg "  Loop invariant 0 < k && k <= half might not hold on entry. Assertion 0 < k might not hold. (trigger-z3-bug.vpr@74.17--74.39) [121640]"}
              0 < k;
            assert {:msg "  Loop invariant 0 < k && k <= half might not hold on entry. Assertion k <= half might not hold. (trigger-z3-bug.vpr@74.17--74.39) [121641]"}
              k <= half;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(this.dst[tid].Integer_value, write) might not hold on entry. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@76.17--76.56) [121642]"}
                perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
            }
            Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
            if (*) {
              if (0 <= i_10_1 && i_10_1 < k) {
                assert {:msg "  Loop invariant (forall i: Int ::0 <= i && i < k ==> this.dst[tid].Integer_value >= this.src[tid * half + i].Integer_value) might not hold on entry. Assertion this.dst[tid].Integer_value >= this.src[tid * half + i].Integer_value might not hold. (trigger-z3-bug.vpr@77.18--77.130) [121643]"}
                  Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], tid * half + i_10_1), Integer_value];
              }
              assume false;
            }
            assume (forall i_11_1_1: int ::
              
              0 <= i_11_1_1 && i_11_1_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], tid * half + i_11_1_1), Integer_value]
            );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc k;
        
        // -- Check definedness of invariant
          if (*) {
            assume 0 <= tid;
            assume state(Heap, Mask);
            assume tid < tcount;
            assume state(Heap, Mask);
            assume tid == lid;
            assume state(Heap, Mask);
            assume tcount == gsize;
            assume state(Heap, Mask);
            assume gid == 0;
            assume state(Heap, Mask);
            havoc wildcard;
            perm := wildcard;
            assume this != null;
            Mask := Mask[this, src:=Mask[this, src] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of |this.src| == gsize
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@64.17--64.36) [121644]"}
                HasDirectPerm(Mask, this, src);
            assume Seq#Length(Heap[this, src]) == gsize;
            assume state(Heap, Mask);
            havoc wildcard;
            perm := wildcard;
            assume this != null;
            Mask := Mask[this, dst:=Mask[this, dst] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of |this.dst| == gsize
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@66.17--66.36) [121645]"}
                HasDirectPerm(Mask, this, dst);
            assume Seq#Length(Heap[this, dst]) == gsize;
            assume state(Heap, Mask);
            assume 4 <= gsize;
            assume state(Heap, Mask);
            assume gsize mod 4 == 0;
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
              if (*) {
                if (ix_12 >= 0) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@69.17--69.145) [121646]"}
                    HasDirectPerm(Mask, this, src);
                  if (ix_12 < Seq#Length(Heap[this, src])) {
                    if (jx_12 >= 0) {
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@69.17--69.145) [121647]"}
                        HasDirectPerm(Mask, this, src);
                    }
                  }
                }
                if (ix_12 >= 0 && (ix_12 < Seq#Length(Heap[this, src]) && (jx_12 >= 0 && (jx_12 < Seq#Length(Heap[this, src]) && ix_12 != jx_12)))) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@69.17--69.145) [121648]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@69.17--69.145) [121649]"}
                    ix_12 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@69.17--69.145) [121650]"}
                    ix_12 < Seq#Length(Heap[this, src]);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@69.17--69.145) [121651]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@69.17--69.145) [121652]"}
                    jx_12 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@69.17--69.145) [121653]"}
                    jx_12 < Seq#Length(Heap[this, src]);
                }
                assume false;
              }
            assume (forall ix_9_1: int, jx_9_1: int ::
              { Seq#Index(Heap[this, src], ix_9_1), Seq#Index(Heap[this, src], jx_9_1) }
              ix_9_1 >= 0 && (ix_9_1 < Seq#Length(Heap[this, src]) && (jx_9_1 >= 0 && (jx_9_1 < Seq#Length(Heap[this, src]) && ix_9_1 != jx_9_1))) ==> Seq#Index(Heap[this, src], ix_9_1) != Seq#Index(Heap[this, src], jx_9_1)
            );
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
              if (*) {
                if (Seq#Contains(Seq#Range(0, gsize), i_7)) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@70.18--70.98) [121654]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@70.18--70.98) [121655]"}
                    i_7 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@70.18--70.98) [121656]"}
                    i_7 < Seq#Length(Heap[this, src]);
                  assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@70.18--70.98) [121657]"}
                    gsize != 0;
                }
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@70.18--70.98) [121658]"}
              (forall i_13_1: int, i_13_2: int ::
              
              (((i_13_1 != i_13_2 && Seq#Contains(Seq#Range(0, gsize), i_13_1)) && Seq#Contains(Seq#Range(0, gsize), i_13_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_13_1) != Seq#Index(Heap[this, src], i_13_2)
            );
            
            // -- Define Inverse Function
              assume (forall i_13_1: int ::
                { Seq#Index(Heap[this, src], i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_13_1) } { Seq#Contains(Seq#Range(0, gsize), i_13_1) } { Seq#Index(Heap[this, src], i_13_1) }
                Seq#Contains(Seq#Range(0, gsize), i_13_1) && NoPerm < 1 / gsize ==> qpRange5(Seq#Index(Heap[this, src], i_13_1)) && invRecv5(Seq#Index(Heap[this, src], i_13_1)) == i_13_1
              );
              assume (forall o_9: Ref ::
                { invRecv5(o_9) }
                (Seq#Contains(Seq#Range(0, gsize), invRecv5(o_9)) && NoPerm < 1 / gsize) && qpRange5(o_9) ==> Seq#Index(Heap[this, src], invRecv5(o_9)) == o_9
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@70.18--70.98) [121659]"}
              (forall i_13_1: int ::
              { Seq#Index(Heap[this, src], i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_13_1) } { Seq#Contains(Seq#Range(0, gsize), i_13_1) } { Seq#Index(Heap[this, src], i_13_1) }
              Seq#Contains(Seq#Range(0, gsize), i_13_1) ==> 1 / gsize >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall i_13_1: int ::
                { Seq#Index(Heap[this, src], i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_13_1) } { Seq#Contains(Seq#Range(0, gsize), i_13_1) } { Seq#Index(Heap[this, src], i_13_1) }
                Seq#Contains(Seq#Range(0, gsize), i_13_1) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_13_1) != null
              );
            
            // -- Define permissions
              assume (forall o_9: Ref ::
                { QPMask[o_9, Integer_value] }
                ((Seq#Contains(Seq#Range(0, gsize), invRecv5(o_9)) && NoPerm < 1 / gsize) && qpRange5(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv5(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv5(o_9)) && NoPerm < 1 / gsize) && qpRange5(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
              );
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume __last_barrier == 0;
            assume state(Heap, Mask);
            if (__last_barrier == 1) {
              if (tid == 0) {
                
                // -- Check definedness of acc(this.dst[0].Integer_value, write)
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@72.17--72.155) [121660]"}
                    HasDirectPerm(Mask, this, dst);
                  assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@72.17--72.155) [121661]"}
                    0 < Seq#Length(Heap[this, dst]);
                perm := FullPerm;
                assume Seq#Index(Heap[this, dst], 0) != null;
                Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
                assume state(Heap, Mask);
              }
              if (tid == 0) {
                
                // -- Check definedness of acc(this.dst[1].Integer_value, write)
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@72.17--72.155) [121662]"}
                    HasDirectPerm(Mask, this, dst);
                  assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@72.17--72.155) [121663]"}
                    1 < Seq#Length(Heap[this, dst]);
                perm := FullPerm;
                assume Seq#Index(Heap[this, dst], 1) != null;
                Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
                assume state(Heap, Mask);
              }
            }
            assume state(Heap, Mask);
            if (__last_barrier == 0) {
              
              // -- Check definedness of acc(this.dst[tid].Integer_value, write)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@73.17--73.82) [121664]"}
                  HasDirectPerm(Mask, this, dst);
                assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@73.17--73.82) [121665]"}
                  tid >= 0;
                assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@73.17--73.82) [121666]"}
                  tid < Seq#Length(Heap[this, dst]);
              perm := FullPerm;
              assume Seq#Index(Heap[this, dst], tid) != null;
              Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume 0 < k;
            assume k <= half;
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(this.dst[tid].Integer_value, write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@76.17--76.56) [121667]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@76.17--76.56) [121668]"}
                tid >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@76.17--76.56) [121669]"}
                tid < Seq#Length(Heap[this, dst]);
            perm := FullPerm;
            assume Seq#Index(Heap[this, dst], tid) != null;
            Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall i: Int ::0 <= i && i < k ==> this.dst[tid].Integer_value >= this.src[tid * half + i].Integer_value)
              if (*) {
                if (0 <= i_21 && i_21 < k) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@77.18--77.130) [121670]"}
                    HasDirectPerm(Mask, this, dst);
                  assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@77.18--77.130) [121671]"}
                    tid >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@77.18--77.130) [121672]"}
                    tid < Seq#Length(Heap[this, dst]);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@77.18--77.130) [121673]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[this, dst], tid), Integer_value);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@77.18--77.130) [121674]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Contract might not be well-formed. Index this.src[tid * half + i] into this.src might be negative. (trigger-z3-bug.vpr@77.18--77.130) [121675]"}
                    tid * half + i_21 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.src[tid * half + i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@77.18--77.130) [121676]"}
                    tid * half + i_21 < Seq#Length(Heap[this, src]);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[tid * half + i].Integer_value (trigger-z3-bug.vpr@77.18--77.130) [121677]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[this, src], tid * half + i_21), Integer_value);
                }
                assume false;
              }
            assume (forall i_15_1: int ::
              
              0 <= i_15_1 && i_15_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], tid * half + i_15_1), Integer_value]
            );
            assume state(Heap, Mask);
            assume false;
          }
        
        // -- Check the loop body
          if (*) {
            // Reset state
            loopHeap := Heap;
            loopMask := Mask;
            Mask := ZeroMask;
            assume state(Heap, Mask);
            // Inhale invariant
            assume 0 <= tid;
            assume tid < tcount;
            assume tid == lid;
            assume tcount == gsize;
            assume gid == 0;
            havoc wildcard;
            perm := wildcard;
            assume this != null;
            Mask := Mask[this, src:=Mask[this, src] + perm];
            assume state(Heap, Mask);
            assume Seq#Length(Heap[this, src]) == gsize;
            havoc wildcard;
            perm := wildcard;
            assume this != null;
            Mask := Mask[this, dst:=Mask[this, dst] + perm];
            assume state(Heap, Mask);
            assume Seq#Length(Heap[this, dst]) == gsize;
            assume 4 <= gsize;
            assume gsize mod 4 == 0;
            assume (forall ix_10_1: int, jx_10_1: int ::
              { Seq#Index(Heap[this, src], ix_10_1), Seq#Index(Heap[this, src], jx_10_1) }
              ix_10_1 >= 0 && (ix_10_1 < Seq#Length(Heap[this, src]) && (jx_10_1 >= 0 && (jx_10_1 < Seq#Length(Heap[this, src]) && ix_10_1 != jx_10_1))) ==> Seq#Index(Heap[this, src], ix_10_1) != Seq#Index(Heap[this, src], jx_10_1)
            );
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@70.18--70.98) [121678]"}
              (forall i_16_1: int, i_16_2: int ::
              
              (((i_16_1 != i_16_2 && Seq#Contains(Seq#Range(0, gsize), i_16_1)) && Seq#Contains(Seq#Range(0, gsize), i_16_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_16_1) != Seq#Index(Heap[this, src], i_16_2)
            );
            
            // -- Define Inverse Function
              assume (forall i_16_1: int ::
                { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
                Seq#Contains(Seq#Range(0, gsize), i_16_1) && NoPerm < 1 / gsize ==> qpRange6(Seq#Index(Heap[this, src], i_16_1)) && invRecv6(Seq#Index(Heap[this, src], i_16_1)) == i_16_1
              );
              assume (forall o_9: Ref ::
                { invRecv6(o_9) }
                (Seq#Contains(Seq#Range(0, gsize), invRecv6(o_9)) && NoPerm < 1 / gsize) && qpRange6(o_9) ==> Seq#Index(Heap[this, src], invRecv6(o_9)) == o_9
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  While statement might fail. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@70.18--70.98) [121679]"}
              (forall i_16_1: int ::
              { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
              Seq#Contains(Seq#Range(0, gsize), i_16_1) ==> 1 / gsize >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall i_16_1: int ::
                { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
                Seq#Contains(Seq#Range(0, gsize), i_16_1) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_16_1) != null
              );
            
            // -- Define permissions
              assume (forall o_9: Ref ::
                { QPMask[o_9, Integer_value] }
                ((Seq#Contains(Seq#Range(0, gsize), invRecv6(o_9)) && NoPerm < 1 / gsize) && qpRange6(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv6(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv6(o_9)) && NoPerm < 1 / gsize) && qpRange6(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
              );
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume __last_barrier == 0;
            if (__last_barrier == 1) {
              if (tid == 0) {
                perm := FullPerm;
                assume Seq#Index(Heap[this, dst], 0) != null;
                Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
                assume state(Heap, Mask);
              }
              if (tid == 0) {
                perm := FullPerm;
                assume Seq#Index(Heap[this, dst], 1) != null;
                Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
                assume state(Heap, Mask);
              }
            }
            if (__last_barrier == 0) {
              perm := FullPerm;
              assume Seq#Index(Heap[this, dst], tid) != null;
              Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
              assume state(Heap, Mask);
            }
            assume 0 < k;
            assume k <= half;
            perm := FullPerm;
            assume Seq#Index(Heap[this, dst], tid) != null;
            Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
            assume state(Heap, Mask);
            assume (forall i_17_1: int ::
              
              0 <= i_17_1 && i_17_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], tid * half + i_17_1), Integer_value]
            );
            assume state(Heap, Mask);
            // Check and assume guard
            assume k < half;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: assert 0 <= offset + k && offset + k < gsize -- trigger-z3-bug.vpr@79.7--79.55
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Assert might fail. Assertion 0 <= offset + k might not hold. (trigger-z3-bug.vpr@79.14--79.55) [121680]"}
                  0 <= offset_1 + k;
                assert {:msg "  Assert might fail. Assertion offset + k < gsize might not hold. (trigger-z3-bug.vpr@79.14--79.55) [121681]"}
                  offset_1 + k < gsize;
                assume state(Heap, Mask);
              
              // -- Translating statement: if (this.dst[tid].Integer_value < this.src[offset + k].Integer_value) -- trigger-z3-bug.vpr@80.7--82.8
                
                // -- Check definedness of this.dst[tid].Integer_value < this.src[offset + k].Integer_value
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@80.11--80.75) [121682]"}
                    HasDirectPerm(Mask, this, dst);
                  assert {:msg "  Conditional statement might fail. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@80.11--80.75) [121683]"}
                    tid >= 0;
                  assert {:msg "  Conditional statement might fail. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@80.11--80.75) [121684]"}
                    tid < Seq#Length(Heap[this, dst]);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@80.11--80.75) [121685]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[this, dst], tid), Integer_value);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@80.11--80.75) [121686]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Conditional statement might fail. Index this.src[offset + k] into this.src might be negative. (trigger-z3-bug.vpr@80.11--80.75) [121687]"}
                    offset_1 + k >= 0;
                  assert {:msg "  Conditional statement might fail. Index this.src[offset + k] into this.src might exceed sequence length. (trigger-z3-bug.vpr@80.11--80.75) [121688]"}
                    offset_1 + k < Seq#Length(Heap[this, src]);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.src[offset + k].Integer_value (trigger-z3-bug.vpr@80.11--80.75) [121689]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[this, src], offset_1 + k), Integer_value);
                if (Heap[Seq#Index(Heap[this, dst], tid), Integer_value] < Heap[Seq#Index(Heap[this, src], offset_1 + k), Integer_value]) {
                  
                  // -- Translating statement: this.dst[tid].Integer_value := this.src[offset + k].Integer_value -- trigger-z3-bug.vpr@81.9--81.74
                    
                    // -- Check definedness of this.dst[tid]
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@81.9--81.74) [121690]"}
                        HasDirectPerm(Mask, this, dst);
                      assert {:msg "  Assignment might fail. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@81.9--81.74) [121691]"}
                        tid >= 0;
                      assert {:msg "  Assignment might fail. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@81.9--81.74) [121692]"}
                        tid < Seq#Length(Heap[this, dst]);
                    
                    // -- Check definedness of this.src[offset + k].Integer_value
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@81.9--81.74) [121693]"}
                        HasDirectPerm(Mask, this, src);
                      assert {:msg "  Assignment might fail. Index this.src[offset + k] into this.src might be negative. (trigger-z3-bug.vpr@81.9--81.74) [121694]"}
                        offset_1 + k >= 0;
                      assert {:msg "  Assignment might fail. Index this.src[offset + k] into this.src might exceed sequence length. (trigger-z3-bug.vpr@81.9--81.74) [121695]"}
                        offset_1 + k < Seq#Length(Heap[this, src]);
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.src[offset + k].Integer_value (trigger-z3-bug.vpr@81.9--81.74) [121696]"}
                        HasDirectPerm(Mask, Seq#Index(Heap[this, src], offset_1 + k), Integer_value);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@81.9--81.74) [121697]"}
                      FullPerm == Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
                    Heap := Heap[Seq#Index(Heap[this, dst], tid), Integer_value:=Heap[Seq#Index(Heap[this, src], offset_1 + k), Integer_value]];
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
              
              // -- Translating statement: k := k + 1 -- trigger-z3-bug.vpr@83.7--83.17
                k := k + 1;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Loop invariant 0 <= tid might not be preserved. Assertion 0 <= tid might not hold. (trigger-z3-bug.vpr@58.17--58.25) [121698]"}
              0 <= tid;
            assert {:msg "  Loop invariant tid < tcount might not be preserved. Assertion tid < tcount might not hold. (trigger-z3-bug.vpr@59.17--59.29) [121699]"}
              tid < tcount;
            assert {:msg "  Loop invariant tid == lid might not be preserved. Assertion tid == lid might not hold. (trigger-z3-bug.vpr@60.17--60.27) [121700]"}
              tid == lid;
            assert {:msg "  Loop invariant tcount == gsize might not be preserved. Assertion tcount == gsize might not hold. (trigger-z3-bug.vpr@61.17--61.32) [121701]"}
              tcount == gsize;
            assert {:msg "  Loop invariant gid == 0 might not be preserved. Assertion gid == 0 might not hold. (trigger-z3-bug.vpr@62.17--62.25) [121702]"}
              gid == 0;
            assert {:msg "  Loop invariant acc(this.src, wildcard) might not be preserved. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@63.17--63.40) [121703]"}
              Mask[this, src] > NoPerm;
            havoc wildcard;
            assume wildcard < Mask[this, src];
            Mask := Mask[this, src:=Mask[this, src] - wildcard];
            assert {:msg "  Loop invariant |this.src| == gsize might not be preserved. Assertion |this.src| == gsize might not hold. (trigger-z3-bug.vpr@64.17--64.36) [121704]"}
              Seq#Length(Heap[this, src]) == gsize;
            assert {:msg "  Loop invariant acc(this.dst, wildcard) might not be preserved. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@65.17--65.40) [121705]"}
              Mask[this, dst] > NoPerm;
            havoc wildcard;
            assume wildcard < Mask[this, dst];
            Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
            assert {:msg "  Loop invariant |this.dst| == gsize might not be preserved. Assertion |this.dst| == gsize might not hold. (trigger-z3-bug.vpr@66.17--66.36) [121706]"}
              Seq#Length(Heap[this, dst]) == gsize;
            assert {:msg "  Loop invariant 4 <= gsize might not be preserved. Assertion 4 <= gsize might not hold. (trigger-z3-bug.vpr@67.17--67.27) [121707]"}
              4 <= gsize;
            assert {:msg "  Loop invariant gsize % 4 == 0 might not be preserved. Assertion gsize % 4 == 0 might not hold. (trigger-z3-bug.vpr@68.17--68.31) [121708]"}
              gsize mod 4 == 0;
            if (*) {
              if (ix_11_1 >= 0 && (ix_11_1 < Seq#Length(Heap[this, src]) && (jx_11_1 >= 0 && (jx_11_1 < Seq#Length(Heap[this, src]) && ix_11_1 != jx_11_1)))) {
                assert {:msg "  Loop invariant (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx]) might not be preserved. Assertion this.src[ix] != this.src[jx] might not hold. (trigger-z3-bug.vpr@69.17--69.145) [121709]"}
                  Seq#Index(Heap[this, src], ix_11_1) != Seq#Index(Heap[this, src], jx_11_1);
              }
              assume false;
            }
            assume (forall ix_12_1: int, jx_12_1: int ::
              { Seq#Index(Heap[this, src], ix_12_1), Seq#Index(Heap[this, src], jx_12_1) }
              ix_12_1 >= 0 && (ix_12_1 < Seq#Length(Heap[this, src]) && (jx_12_1 >= 0 && (jx_12_1 < Seq#Length(Heap[this, src]) && ix_12_1 != jx_12_1))) ==> Seq#Index(Heap[this, src], ix_12_1) != Seq#Index(Heap[this, src], jx_12_1)
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not be preserved. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@70.18--70.98) [121710]"}
                (forall i_18_1: int ::
                { Seq#Index(Heap[this, src], i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_18_1) } { Seq#Contains(Seq#Range(0, gsize), i_18_1) } { Seq#Index(Heap[this, src], i_18_1) }
                Seq#Contains(Seq#Range(0, gsize), i_18_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_18_1), Integer_value]) ==> 1 / gsize >= NoPerm
              );
            
            // -- check if receiver this.src[i] is injective
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not be preserved. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@70.18--70.98) [121711]"}
                (forall i_18_1: int, i_18_2: int ::
                { neverTriggered7(i_18_1), neverTriggered7(i_18_2) }
                (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(0, gsize), i_18_1)) && Seq#Contains(Seq#Range(0, gsize), i_18_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_18_1) != Seq#Index(Heap[this, src], i_18_2)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not be preserved. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@70.18--70.98) [121712]"}
                (forall i_18_1: int ::
                { Seq#Index(Heap[this, src], i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_18_1) } { Seq#Contains(Seq#Range(0, gsize), i_18_1) } { Seq#Index(Heap[this, src], i_18_1) }
                Seq#Contains(Seq#Range(0, gsize), i_18_1) ==> Mask[Seq#Index(Heap[this, src], i_18_1), Integer_value] >= 1 / gsize
              );
            
            // -- assumptions for inverse of receiver this.src[i]
              assume (forall i_18_1: int ::
                { Seq#Index(Heap[this, src], i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_18_1) } { Seq#Contains(Seq#Range(0, gsize), i_18_1) } { Seq#Index(Heap[this, src], i_18_1) }
                Seq#Contains(Seq#Range(0, gsize), i_18_1) && NoPerm < 1 / gsize ==> qpRange7(Seq#Index(Heap[this, src], i_18_1)) && invRecv7(Seq#Index(Heap[this, src], i_18_1)) == i_18_1
              );
              assume (forall o_9: Ref ::
                { invRecv7(o_9) }
                Seq#Contains(Seq#Range(0, gsize), invRecv7(o_9)) && (NoPerm < 1 / gsize && qpRange7(o_9)) ==> Seq#Index(Heap[this, src], invRecv7(o_9)) == o_9
              );
            
            // -- assume permission updates for field Integer_value
              assume (forall o_9: Ref ::
                { QPMask[o_9, Integer_value] }
                (Seq#Contains(Seq#Range(0, gsize), invRecv7(o_9)) && (NoPerm < 1 / gsize && qpRange7(o_9)) ==> Seq#Index(Heap[this, src], invRecv7(o_9)) == o_9 && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv7(o_9)) && (NoPerm < 1 / gsize && qpRange7(o_9))) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { QPMask[o_9, f_5] }
                f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            assert {:msg "  Loop invariant false || __last_barrier == 0 might not be preserved. Assertion false || __last_barrier == 0 might not hold. (trigger-z3-bug.vpr@71.17--71.47) [121713]"}
              __last_barrier == 0;
            if (__last_barrier == 1) {
              if (tid == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant __last_barrier == 1 ==> (tid == 0 ==> acc(this.dst[0].Integer_value, write)) && (tid == 0 ==> acc(this.dst[1].Integer_value, write)) might not be preserved. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@72.17--72.155) [121714]"}
                    perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
              }
              if (tid == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant __last_barrier == 1 ==> (tid == 0 ==> acc(this.dst[0].Integer_value, write)) && (tid == 0 ==> acc(this.dst[1].Integer_value, write)) might not be preserved. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@72.17--72.155) [121715]"}
                    perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
              }
            }
            if (__last_barrier == 0) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(this.dst[tid].Integer_value, write) might not be preserved. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@73.17--73.82) [121716]"}
                  perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
              }
              Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
            }
            assert {:msg "  Loop invariant 0 < k && k <= half might not be preserved. Assertion 0 < k might not hold. (trigger-z3-bug.vpr@74.17--74.39) [121717]"}
              0 < k;
            assert {:msg "  Loop invariant 0 < k && k <= half might not be preserved. Assertion k <= half might not hold. (trigger-z3-bug.vpr@74.17--74.39) [121718]"}
              k <= half;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(this.dst[tid].Integer_value, write) might not be preserved. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@76.17--76.56) [121719]"}
                perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
            }
            Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
            if (*) {
              if (0 <= i_19_1 && i_19_1 < k) {
                assert {:msg "  Loop invariant (forall i: Int ::0 <= i && i < k ==> this.dst[tid].Integer_value >= this.src[tid * half + i].Integer_value) might not be preserved. Assertion this.dst[tid].Integer_value >= this.src[tid * half + i].Integer_value might not hold. (trigger-z3-bug.vpr@77.18--77.130) [121720]"}
                  Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], tid * half + i_19_1), Integer_value];
              }
              assume false;
            }
            assume (forall i_20_1: int ::
              
              0 <= i_20_1 && i_20_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], tid * half + i_20_1), Integer_value]
            );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(k < half);
          assume state(Heap, Mask);
          assume 0 <= tid;
          assume tid < tcount;
          assume tid == lid;
          assume tcount == gsize;
          assume gid == 0;
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          Mask := Mask[this, src:=Mask[this, src] + perm];
          assume state(Heap, Mask);
          assume Seq#Length(Heap[this, src]) == gsize;
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          Mask := Mask[this, dst:=Mask[this, dst] + perm];
          assume state(Heap, Mask);
          assume Seq#Length(Heap[this, dst]) == gsize;
          assume 4 <= gsize;
          assume gsize mod 4 == 0;
          assume (forall ix_13: int, jx_13: int ::
            { Seq#Index(Heap[this, src], ix_13), Seq#Index(Heap[this, src], jx_13) }
            ix_13 >= 0 && (ix_13 < Seq#Length(Heap[this, src]) && (jx_13 >= 0 && (jx_13 < Seq#Length(Heap[this, src]) && ix_13 != jx_13))) ==> Seq#Index(Heap[this, src], ix_13) != Seq#Index(Heap[this, src], jx_13)
          );
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@70.18--70.98) [121721]"}
            (forall i_21_1: int, i_21_2: int ::
            
            (((i_21_1 != i_21_2 && Seq#Contains(Seq#Range(0, gsize), i_21_1)) && Seq#Contains(Seq#Range(0, gsize), i_21_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_21_1) != Seq#Index(Heap[this, src], i_21_2)
          );
          
          // -- Define Inverse Function
            assume (forall i_21_1: int ::
              { Seq#Index(Heap[this, src], i_21_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_21_1) } { Seq#Contains(Seq#Range(0, gsize), i_21_1) } { Seq#Index(Heap[this, src], i_21_1) }
              Seq#Contains(Seq#Range(0, gsize), i_21_1) && NoPerm < 1 / gsize ==> qpRange8(Seq#Index(Heap[this, src], i_21_1)) && invRecv8(Seq#Index(Heap[this, src], i_21_1)) == i_21_1
            );
            assume (forall o_9: Ref ::
              { invRecv8(o_9) }
              (Seq#Contains(Seq#Range(0, gsize), invRecv8(o_9)) && NoPerm < 1 / gsize) && qpRange8(o_9) ==> Seq#Index(Heap[this, src], invRecv8(o_9)) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  While statement might fail. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@70.18--70.98) [121722]"}
            (forall i_21_1: int ::
            { Seq#Index(Heap[this, src], i_21_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_21_1) } { Seq#Contains(Seq#Range(0, gsize), i_21_1) } { Seq#Index(Heap[this, src], i_21_1) }
            Seq#Contains(Seq#Range(0, gsize), i_21_1) ==> 1 / gsize >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall i_21_1: int ::
              { Seq#Index(Heap[this, src], i_21_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_21_1) } { Seq#Contains(Seq#Range(0, gsize), i_21_1) } { Seq#Index(Heap[this, src], i_21_1) }
              Seq#Contains(Seq#Range(0, gsize), i_21_1) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_21_1) != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, Integer_value] }
              ((Seq#Contains(Seq#Range(0, gsize), invRecv8(o_9)) && NoPerm < 1 / gsize) && qpRange8(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv8(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv8(o_9)) && NoPerm < 1 / gsize) && qpRange8(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume __last_barrier == 0;
          if (__last_barrier == 1) {
            if (tid == 0) {
              perm := FullPerm;
              assume Seq#Index(Heap[this, dst], 0) != null;
              Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
              assume state(Heap, Mask);
            }
            if (tid == 0) {
              perm := FullPerm;
              assume Seq#Index(Heap[this, dst], 1) != null;
              Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
              assume state(Heap, Mask);
            }
          }
          if (__last_barrier == 0) {
            perm := FullPerm;
            assume Seq#Index(Heap[this, dst], tid) != null;
            Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
            assume state(Heap, Mask);
          }
          assume 0 < k;
          assume k <= half;
          perm := FullPerm;
          assume Seq#Index(Heap[this, dst], tid) != null;
          Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
          assume state(Heap, Mask);
          assume (forall i_22_1: int ::
            
            0 <= i_22_1 && i_22_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], tid * half + i_22_1), Integer_value]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- trigger-z3-bug.vpr@86.3--86.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true -- trigger-z3-bug.vpr@87.3--87.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
  
  // -- Translating statement: __last_barrier := main_barrier(this, tcount, gsize, tid, gid, lid, 1, __last_barrier,
  //   k, half, offset) -- trigger-z3-bug.vpr@88.3--88.105
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_last_barrier := __last_barrier;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion false || __last_barrier == 0 might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121724]"}
        arg_last_barrier == 0;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion 0 <= tid might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121725]"}
        0 <= tid;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion tid < tcount might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121726]"}
        tid < tcount;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion tid == lid might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121727]"}
        tid == lid;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion tcount == gsize might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121728]"}
        tcount == gsize;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion gid == 0 might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121729]"}
        gid == 0;
      assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@88.3--88.105) [121730]"}
        Mask[this, src] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[this, src];
      Mask := Mask[this, src:=Mask[this, src] - wildcard];
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion |this.src| == gsize might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121731]"}
        Seq#Length(Heap[this, src]) == gsize;
      assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@88.3--88.105) [121732]"}
        Mask[this, dst] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[this, dst];
      Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion |this.dst| == gsize might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121733]"}
        Seq#Length(Heap[this, dst]) == gsize;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion 4 <= gsize might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121734]"}
        4 <= gsize;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion gsize % 4 == 0 might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121735]"}
        gsize mod 4 == 0;
      if (*) {
        if (ix_14 >= 0 && (ix_14 < Seq#Length(Heap[this, src]) && (jx_14 >= 0 && (jx_14 < Seq#Length(Heap[this, src]) && ix_14 != jx_14)))) {
          assert {:msg "  The precondition of method main_barrier might not hold. Assertion this.src[ix] != this.src[jx] might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121736]"}
            Seq#Index(Heap[this, src], ix_14) != Seq#Index(Heap[this, src], jx_14);
        }
        assume false;
      }
      assume (forall ix_15_1: int, jx_15_1: int ::
        { Seq#Index(Heap[this, src], ix_15_1), Seq#Index(Heap[this, src], jx_15_1) }
        ix_15_1 >= 0 && (ix_15_1 < Seq#Length(Heap[this, src]) && (jx_15_1 >= 0 && (jx_15_1 < Seq#Length(Heap[this, src]) && ix_15_1 != jx_15_1))) ==> Seq#Index(Heap[this, src], ix_15_1) != Seq#Index(Heap[this, src], jx_15_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method main_barrier might not hold. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@88.3--88.105) [121737]"}
          (forall i_23_1: int ::
          { Seq#Index(Heap[this, src], i_23_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_23_1) } { Seq#Contains(Seq#Range(0, gsize), i_23_1) } { Seq#Index(Heap[this, src], i_23_1) }
          Seq#Contains(Seq#Range(0, gsize), i_23_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_23_1), Integer_value]) ==> 1 / gsize >= NoPerm
        );
      
      // -- check if receiver this.src[i] is injective
        assert {:msg "  The precondition of method main_barrier might not hold. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@88.3--88.105) [121738]"}
          (forall i_23_1: int, i_23_2: int ::
          { neverTriggered9(i_23_1), neverTriggered9(i_23_2) }
          (((i_23_1 != i_23_2 && Seq#Contains(Seq#Range(0, gsize), i_23_1)) && Seq#Contains(Seq#Range(0, gsize), i_23_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_23_1) != Seq#Index(Heap[this, src], i_23_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@88.3--88.105) [121739]"}
          (forall i_23_1: int ::
          { Seq#Index(Heap[this, src], i_23_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_23_1) } { Seq#Contains(Seq#Range(0, gsize), i_23_1) } { Seq#Index(Heap[this, src], i_23_1) }
          Seq#Contains(Seq#Range(0, gsize), i_23_1) ==> Mask[Seq#Index(Heap[this, src], i_23_1), Integer_value] >= 1 / gsize
        );
      
      // -- assumptions for inverse of receiver this.src[i]
        assume (forall i_23_1: int ::
          { Seq#Index(Heap[this, src], i_23_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_23_1) } { Seq#Contains(Seq#Range(0, gsize), i_23_1) } { Seq#Index(Heap[this, src], i_23_1) }
          Seq#Contains(Seq#Range(0, gsize), i_23_1) && NoPerm < 1 / gsize ==> qpRange9(Seq#Index(Heap[this, src], i_23_1)) && invRecv9(Seq#Index(Heap[this, src], i_23_1)) == i_23_1
        );
        assume (forall o_9: Ref ::
          { invRecv9(o_9) }
          Seq#Contains(Seq#Range(0, gsize), invRecv9(o_9)) && (NoPerm < 1 / gsize && qpRange9(o_9)) ==> Seq#Index(Heap[this, src], invRecv9(o_9)) == o_9
        );
      
      // -- assume permission updates for field Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Integer_value] }
          (Seq#Contains(Seq#Range(0, gsize), invRecv9(o_9)) && (NoPerm < 1 / gsize && qpRange9(o_9)) ==> Seq#Index(Heap[this, src], invRecv9(o_9)) == o_9 && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv9(o_9)) && (NoPerm < 1 / gsize && qpRange9(o_9))) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (arg_last_barrier == 1) {
        if (tid == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@88.3--88.105) [121740]"}
              perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
        }
        if (tid == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@88.3--88.105) [121741]"}
              perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
        }
      }
      if (arg_last_barrier == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@88.3--88.105) [121742]"}
            perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
      }
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion half + half == gsize might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121743]"}
        half + half == gsize;
      if (tid == 0) {
        if (*) {
          if (0 <= i_24_1 && i_24_1 < half) {
            assert {:msg "  The precondition of method main_barrier might not hold. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121744]"}
              Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_24_1), Integer_value];
          }
          assume false;
        }
        assume (forall i_25_1_1: int ::
          { Seq#Index(Heap[this, src], i_25_1_1) }
          0 <= i_25_1_1 && i_25_1_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_25_1_1), Integer_value]
        );
      }
      if (tid == 1) {
        if (*) {
          if (half <= i_26_1 && i_26_1 < gsize) {
            assert {:msg "  The precondition of method main_barrier might not hold. Assertion this.dst[1].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@88.3--88.105) [121745]"}
              Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_26_1), Integer_value];
          }
          assume false;
        }
        assume (forall i_27_1: int ::
          { Seq#Index(Heap[this, src], i_27_1) }
          half <= i_27_1 && i_27_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_27_1), Integer_value]
        );
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc __last_barrier;
    
    // -- Inhaling postcondition
      assume 0 <= tid;
      assume tid < tcount;
      assume tid == lid;
      assume tcount == gsize;
      assume gid == 0;
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      Mask := Mask[this, src:=Mask[this, src] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[this, src]) == gsize;
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      Mask := Mask[this, dst:=Mask[this, dst] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[this, dst]) == gsize;
      assume 4 <= gsize;
      assume gsize mod 4 == 0;
      assume (forall ix_16: int, jx_16: int ::
        { Seq#Index(Heap[this, src], ix_16), Seq#Index(Heap[this, src], jx_16) }
        ix_16 >= 0 && (ix_16 < Seq#Length(Heap[this, src]) && (jx_16 >= 0 && (jx_16 < Seq#Length(Heap[this, src]) && ix_16 != jx_16))) ==> Seq#Index(Heap[this, src], ix_16) != Seq#Index(Heap[this, src], jx_16)
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@88.3--88.105) [121746]"}
        (forall i_28: int, i_28_2: int ::
        
        (((i_28 != i_28_2 && Seq#Contains(Seq#Range(0, gsize), i_28)) && Seq#Contains(Seq#Range(0, gsize), i_28_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_28) != Seq#Index(Heap[this, src], i_28_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_28: int ::
          { Seq#Index(Heap[this, src], i_28) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_28) } { Seq#Contains(Seq#Range(0, gsize), i_28) } { Seq#Index(Heap[this, src], i_28) }
          Seq#Contains(Seq#Range(0, gsize), i_28) && NoPerm < 1 / gsize ==> qpRange10(Seq#Index(Heap[this, src], i_28)) && invRecv10(Seq#Index(Heap[this, src], i_28)) == i_28
        );
        assume (forall o_9: Ref ::
          { invRecv10(o_9) }
          (Seq#Contains(Seq#Range(0, gsize), invRecv10(o_9)) && NoPerm < 1 / gsize) && qpRange10(o_9) ==> Seq#Index(Heap[this, src], invRecv10(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@88.3--88.105) [121747]"}
        (forall i_28: int ::
        { Seq#Index(Heap[this, src], i_28) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_28) } { Seq#Contains(Seq#Range(0, gsize), i_28) } { Seq#Index(Heap[this, src], i_28) }
        Seq#Contains(Seq#Range(0, gsize), i_28) ==> 1 / gsize >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_28: int ::
          { Seq#Index(Heap[this, src], i_28) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_28) } { Seq#Contains(Seq#Range(0, gsize), i_28) } { Seq#Index(Heap[this, src], i_28) }
          Seq#Contains(Seq#Range(0, gsize), i_28) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_28) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Integer_value] }
          ((Seq#Contains(Seq#Range(0, gsize), invRecv10(o_9)) && NoPerm < 1 / gsize) && qpRange10(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv10(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv10(o_9)) && NoPerm < 1 / gsize) && qpRange10(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[this, src], PreCallHeap[this, src]);
      assume Seq#Equal(Heap[this, dst], PreCallHeap[this, dst]);
      if (__last_barrier == 1) {
        if (tid == 0) {
          perm := FullPerm;
          assume Seq#Index(Heap[this, dst], 0) != null;
          Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
          assume state(Heap, Mask);
        }
        if (tid == 0) {
          perm := FullPerm;
          assume Seq#Index(Heap[this, dst], 1) != null;
          Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
          assume state(Heap, Mask);
        }
      }
      if (__last_barrier == 0) {
        perm := FullPerm;
        assume Seq#Index(Heap[this, dst], tid) != null;
        Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
        assume state(Heap, Mask);
      }
      assume __last_barrier == 1;
      if (tid == 0) {
        assume (forall i_29: int ::
          { Seq#Index(Heap[this, src], i_29) }
          0 <= i_29 && i_29 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_29), Integer_value]
        );
      }
      if (tid == 0) {
        assume (forall i_30: int ::
          { Seq#Index(Heap[this, src], i_30) }
          half <= i_30 && i_30 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_30), Integer_value]
        );
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tid == 0 ==>
  //   (forall i: Int ::
  //     { this.src[i] }
  //     0 <= i && i < half ==>
  //     this.dst[0].Integer_value >= this.src[i].Integer_value) -- trigger-z3-bug.vpr@89.3--89.127
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (0 <= i_8 && i_8 < half) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@89.10--89.127) [121748]"}
              HasDirectPerm(ExhaleWellDef0Mask, this, dst);
            assert {:msg "  Assert might fail. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@89.10--89.127) [121749]"}
              0 < Seq#Length(Heap[this, dst]);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@89.10--89.127) [121750]"}
              HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, dst], 0), Integer_value);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@89.10--89.127) [121751]"}
              HasDirectPerm(ExhaleWellDef0Mask, this, src);
            assert {:msg "  Assert might fail. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@89.10--89.127) [121752]"}
              i_8 >= 0;
            assert {:msg "  Assert might fail. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@89.10--89.127) [121753]"}
              i_8 < Seq#Length(Heap[this, src]);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@89.10--89.127) [121754]"}
              HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, src], i_8), Integer_value);
          }
          assume false;
        }
      if (*) {
        if (0 <= i_32 && i_32 < half) {
          assert {:msg "  Assert might fail. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@89.10--89.127) [121755]"}
            Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_32), Integer_value];
        }
        assume false;
      }
      assume (forall i_33_1: int ::
        { Seq#Index(Heap[this, src], i_33_1) }
        0 <= i_33_1 && i_33_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_33_1), Integer_value]
      );
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tid == 0 ==>
  //   (forall i: Int ::
  //     { this.src[i] }
  //     half <= i && i < gsize ==>
  //     this.dst[1].Integer_value >= this.src[i].Integer_value) -- trigger-z3-bug.vpr@90.3--90.131
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (half <= i_19 && i_19 < gsize) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@90.10--90.131) [121756]"}
              HasDirectPerm(ExhaleWellDef0Mask, this, dst);
            assert {:msg "  Assert might fail. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@90.10--90.131) [121757]"}
              1 < Seq#Length(Heap[this, dst]);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@90.10--90.131) [121758]"}
              HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@90.10--90.131) [121759]"}
              HasDirectPerm(ExhaleWellDef0Mask, this, src);
            assert {:msg "  Assert might fail. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@90.10--90.131) [121760]"}
              i_19 >= 0;
            assert {:msg "  Assert might fail. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@90.10--90.131) [121761]"}
              i_19 < Seq#Length(Heap[this, src]);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@90.10--90.131) [121762]"}
              HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, src], i_19), Integer_value);
          }
          assume false;
        }
      if (*) {
        if (half <= i_35 && i_35 < gsize) {
          assert {:msg "  Assert might fail. Assertion this.dst[1].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@90.10--90.131) [121763]"}
            Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_35), Integer_value];
        }
        assume false;
      }
      assume (forall i_36_1: int ::
        { Seq#Index(Heap[this, src], i_36_1) }
        half <= i_36_1 && i_36_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_36_1), Integer_value]
      );
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (tid == 0) -- trigger-z3-bug.vpr@91.3--95.4
    if (tid == 0) {
      
      // -- Translating statement: if (this.dst[1].Integer_value > this.dst[0].Integer_value) -- trigger-z3-bug.vpr@92.5--94.6
        
        // -- Check definedness of this.dst[1].Integer_value > this.dst[0].Integer_value
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@92.9--92.62) [121764]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Conditional statement might fail. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@92.9--92.62) [121765]"}
            1 < Seq#Length(Heap[this, dst]);
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@92.9--92.62) [121766]"}
            HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@92.9--92.62) [121767]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Conditional statement might fail. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@92.9--92.62) [121768]"}
            0 < Seq#Length(Heap[this, dst]);
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@92.9--92.62) [121769]"}
            HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 0), Integer_value);
        if (Heap[Seq#Index(Heap[this, dst], 1), Integer_value] > Heap[Seq#Index(Heap[this, dst], 0), Integer_value]) {
          
          // -- Translating statement: this.dst[0].Integer_value := this.dst[1].Integer_value -- trigger-z3-bug.vpr@93.7--93.61
            
            // -- Check definedness of this.dst[0]
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@93.7--93.61) [121770]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Assignment might fail. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@93.7--93.61) [121771]"}
                0 < Seq#Length(Heap[this, dst]);
            
            // -- Check definedness of this.dst[1].Integer_value
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@93.7--93.61) [121772]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Assignment might fail. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@93.7--93.61) [121773]"}
                1 < Seq#Length(Heap[this, dst]);
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@93.7--93.61) [121774]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@93.7--93.61) [121775]"}
              FullPerm == Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
            Heap := Heap[Seq#Index(Heap[this, dst], 0), Integer_value:=Heap[Seq#Index(Heap[this, dst], 1), Integer_value]];
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main_main might not hold. Assertion 0 <= tid might not hold. (trigger-z3-bug.vpr@29.11--29.19) [121776]"}
      0 <= tid;
    assert {:msg "  Postcondition of main_main might not hold. Assertion tid < tcount might not hold. (trigger-z3-bug.vpr@30.11--30.23) [121777]"}
      tid < tcount;
    assert {:msg "  Postcondition of main_main might not hold. Assertion tid == lid might not hold. (trigger-z3-bug.vpr@31.11--31.21) [121778]"}
      tid == lid;
    assert {:msg "  Postcondition of main_main might not hold. Assertion tcount == gsize might not hold. (trigger-z3-bug.vpr@32.11--32.26) [121779]"}
      tcount == gsize;
    assert {:msg "  Postcondition of main_main might not hold. Assertion gid == 0 might not hold. (trigger-z3-bug.vpr@33.11--33.19) [121780]"}
      gid == 0;
    assert {:msg "  Postcondition of main_main might not hold. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@34.11--34.34) [121781]"}
      Mask[this, src] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, src];
    Mask := Mask[this, src:=Mask[this, src] - wildcard];
    assert {:msg "  Postcondition of main_main might not hold. Assertion |this.src| == gsize might not hold. (trigger-z3-bug.vpr@35.11--35.30) [121782]"}
      Seq#Length(Heap[this, src]) == gsize;
    assert {:msg "  Postcondition of main_main might not hold. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@36.11--36.34) [121783]"}
      Mask[this, dst] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, dst];
    Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
    assert {:msg "  Postcondition of main_main might not hold. Assertion |this.dst| == gsize might not hold. (trigger-z3-bug.vpr@37.11--37.30) [121784]"}
      Seq#Length(Heap[this, dst]) == gsize;
    assert {:msg "  Postcondition of main_main might not hold. Assertion 4 <= gsize might not hold. (trigger-z3-bug.vpr@38.11--38.21) [121785]"}
      4 <= gsize;
    assert {:msg "  Postcondition of main_main might not hold. Assertion gsize % 4 == 0 might not hold. (trigger-z3-bug.vpr@39.11--39.25) [121786]"}
      gsize mod 4 == 0;
    if (*) {
      if (ix_4 >= 0 && (ix_4 < Seq#Length(Heap[this, src]) && (jx_4 >= 0 && (jx_4 < Seq#Length(Heap[this, src]) && ix_4 != jx_4)))) {
        assert {:msg "  Postcondition of main_main might not hold. Assertion this.src[ix] != this.src[jx] might not hold. (trigger-z3-bug.vpr@40.11--40.139) [121787]"}
          Seq#Index(Heap[this, src], ix_4) != Seq#Index(Heap[this, src], jx_4);
      }
      assume false;
    }
    assume (forall ix_5_1: int, jx_5_1: int ::
      { Seq#Index(Heap[this, src], ix_5_1), Seq#Index(Heap[this, src], jx_5_1) }
      ix_5_1 >= 0 && (ix_5_1 < Seq#Length(Heap[this, src]) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(Heap[this, src]) && ix_5_1 != jx_5_1))) ==> Seq#Index(Heap[this, src], ix_5_1) != Seq#Index(Heap[this, src], jx_5_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of main_main might not hold. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@41.12--41.92) [121788]"}
        (forall i_6_2: int ::
        { Seq#Index(Heap[this, src], i_6_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_6_2) } { Seq#Contains(Seq#Range(0, gsize), i_6_2) } { Seq#Index(Heap[this, src], i_6_2) }
        Seq#Contains(Seq#Range(0, gsize), i_6_2) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_6_2), Integer_value]) ==> 1 / gsize >= NoPerm
      );
    
    // -- check if receiver this.src[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@41.12--41.92) [121789]"}
        (forall i_6_2: int, i_6_3: int ::
        { neverTriggered3(i_6_2), neverTriggered3(i_6_3) }
        (((i_6_2 != i_6_3 && Seq#Contains(Seq#Range(0, gsize), i_6_2)) && Seq#Contains(Seq#Range(0, gsize), i_6_3)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_6_2) != Seq#Index(Heap[this, src], i_6_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of main_main might not hold. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@41.12--41.92) [121790]"}
        (forall i_6_2: int ::
        { Seq#Index(Heap[this, src], i_6_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_6_2) } { Seq#Contains(Seq#Range(0, gsize), i_6_2) } { Seq#Index(Heap[this, src], i_6_2) }
        Seq#Contains(Seq#Range(0, gsize), i_6_2) ==> Mask[Seq#Index(Heap[this, src], i_6_2), Integer_value] >= 1 / gsize
      );
    
    // -- assumptions for inverse of receiver this.src[i]
      assume (forall i_6_2: int ::
        { Seq#Index(Heap[this, src], i_6_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_6_2) } { Seq#Contains(Seq#Range(0, gsize), i_6_2) } { Seq#Index(Heap[this, src], i_6_2) }
        Seq#Contains(Seq#Range(0, gsize), i_6_2) && NoPerm < 1 / gsize ==> qpRange3(Seq#Index(Heap[this, src], i_6_2)) && invRecv3(Seq#Index(Heap[this, src], i_6_2)) == i_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        Seq#Contains(Seq#Range(0, gsize), invRecv3(o_9)) && (NoPerm < 1 / gsize && qpRange3(o_9)) ==> Seq#Index(Heap[this, src], invRecv3(o_9)) == o_9
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        (Seq#Contains(Seq#Range(0, gsize), invRecv3(o_9)) && (NoPerm < 1 / gsize && qpRange3(o_9)) ==> Seq#Index(Heap[this, src], invRecv3(o_9)) == o_9 && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv3(o_9)) && (NoPerm < 1 / gsize && qpRange3(o_9))) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of main_main might not hold. Assertion this.src == old(this.src) might not hold. (trigger-z3-bug.vpr@42.11--42.36) [121791]"}
      Seq#Equal(Heap[this, src], oldHeap[this, src]);
    assert {:msg "  Postcondition of main_main might not hold. Assertion this.dst == old(this.dst) might not hold. (trigger-z3-bug.vpr@43.11--43.36) [121792]"}
      Seq#Equal(Heap[this, dst], oldHeap[this, dst]);
    if (tid == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_main might not hold. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@44.11--44.63) [121793]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
    }
    if (tid == 0) {
      if (*) {
        if (0 <= i_7_1 && i_7_1 < tcount) {
          assert {:msg "  Postcondition of main_main might not hold. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@45.12--45.134) [121794]"}
            Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_7_1), Integer_value];
        }
        assume false;
      }
      assume (forall i_8_1_1: int ::
        { Seq#Index(Heap[this, src], i_8_1_1) }
        0 <= i_8_1_1 && i_8_1_1 < tcount ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_8_1_1), Integer_value]
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method main_barrier
// ==================================================

procedure main_barrier(this: Ref, tcount: int, gsize: int, tid: int, gid: int, lid: int, this_barrier: int, last_barrier: int, k: int, half: int, offset_1: int) returns (sys__result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ix_15: int;
  var jx_15: int;
  var i_10: int;
  var QPMask: MaskType;
  var i_17: int;
  var i_11: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ix_17: int;
  var jx_17: int;
  var i_13: int;
  var i_23: int;
  var i_24: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_4: int;
  var jx_4: int;
  var i_13_1: int;
  var i_15_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    if (this_barrier == 1) {
      assume last_barrier == 0;
    }
    assume state(Heap, Mask);
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume tid == lid;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, src:=Mask[this, src] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@106.12--106.31) [121795]"}
        HasDirectPerm(Mask, this, src);
    assume Seq#Length(Heap[this, src]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, dst:=Mask[this, dst] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@108.12--108.31) [121796]"}
        HasDirectPerm(Mask, this, dst);
    assume Seq#Length(Heap[this, dst]) == gsize;
    assume state(Heap, Mask);
    assume 4 <= gsize;
    assume state(Heap, Mask);
    assume gsize mod 4 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
      if (*) {
        if (ix_15 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@111.12--111.140) [121797]"}
            HasDirectPerm(Mask, this, src);
          if (ix_15 < Seq#Length(Heap[this, src])) {
            if (jx_15 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@111.12--111.140) [121798]"}
                HasDirectPerm(Mask, this, src);
            }
          }
        }
        if (ix_15 >= 0 && (ix_15 < Seq#Length(Heap[this, src]) && (jx_15 >= 0 && (jx_15 < Seq#Length(Heap[this, src]) && ix_15 != jx_15)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@111.12--111.140) [121799]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@111.12--111.140) [121800]"}
            ix_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@111.12--111.140) [121801]"}
            ix_15 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@111.12--111.140) [121802]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@111.12--111.140) [121803]"}
            jx_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@111.12--111.140) [121804]"}
            jx_15 < Seq#Length(Heap[this, src]);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(Heap[this, src], ix_1), Seq#Index(Heap[this, src], jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(Heap[this, src]) && (jx_1 >= 0 && (jx_1 < Seq#Length(Heap[this, src]) && ix_1 != jx_1))) ==> Seq#Index(Heap[this, src], ix_1) != Seq#Index(Heap[this, src], jx_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_10)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@112.13--112.93) [121805]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@112.13--112.93) [121806]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@112.13--112.93) [121807]"}
            i_10 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@112.13--112.93) [121808]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@112.13--112.93) [121809]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, gsize), i_1)) && Seq#Contains(Seq#Range(0, gsize), i_1_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_1) != Seq#Index(Heap[this, src], i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
        Seq#Contains(Seq#Range(0, gsize), i_1) && NoPerm < 1 / gsize ==> qpRange11(Seq#Index(Heap[this, src], i_1)) && invRecv11(Seq#Index(Heap[this, src], i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv11(o_9)) && NoPerm < 1 / gsize) && qpRange11(o_9) ==> Seq#Index(Heap[this, src], invRecv11(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@112.13--112.93) [121810]"}
      (forall i_1: int ::
      { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
      Seq#Contains(Seq#Range(0, gsize), i_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
        Seq#Contains(Seq#Range(0, gsize), i_1) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv11(o_9)) && NoPerm < 1 / gsize) && qpRange11(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv11(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv11(o_9)) && NoPerm < 1 / gsize) && qpRange11(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (last_barrier == 1) {
      if (tid == 0) {
        
        // -- Check definedness of acc(this.dst[0].Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@113.12--113.148) [121811]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@113.12--113.148) [121812]"}
            0 < Seq#Length(Heap[this, dst]);
        perm := FullPerm;
        assume Seq#Index(Heap[this, dst], 0) != null;
        Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
        assume state(Heap, Mask);
      }
      if (tid == 0) {
        
        // -- Check definedness of acc(this.dst[1].Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@113.12--113.148) [121813]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@113.12--113.148) [121814]"}
            1 < Seq#Length(Heap[this, dst]);
        perm := FullPerm;
        assume Seq#Index(Heap[this, dst], 1) != null;
        Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
        assume state(Heap, Mask);
      }
    }
    assume state(Heap, Mask);
    if (last_barrier == 0) {
      
      // -- Check definedness of acc(this.dst[tid].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@114.12--114.75) [121815]"}
          HasDirectPerm(Mask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@114.12--114.75) [121816]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@114.12--114.75) [121817]"}
          tid < Seq#Length(Heap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(Heap[this, dst], tid) != null;
      Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      assume half + half == gsize;
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      if (tid == 0) {
        
        // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
          if (*) {
            if (0 <= i_17 && i_17 < half) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@116.12--116.153) [121818]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@116.12--116.153) [121819]"}
                0 < Seq#Length(Heap[this, dst]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@116.12--116.153) [121820]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 0), Integer_value);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@116.12--116.153) [121821]"}
                HasDirectPerm(Mask, this, src);
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@116.12--116.153) [121822]"}
                i_17 >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@116.12--116.153) [121823]"}
                i_17 < Seq#Length(Heap[this, src]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@116.12--116.153) [121824]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, src], i_17), Integer_value);
            }
            assume false;
          }
        assume (forall i_3_2: int ::
          { Seq#Index(Heap[this, src], i_3_2) }
          0 <= i_3_2 && i_3_2 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_3_2), Integer_value]
        );
      }
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      if (tid == 1) {
        
        // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
          if (*) {
            if (half <= i_11 && i_11 < gsize) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@117.12--117.157) [121825]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@117.12--117.157) [121826]"}
                1 < Seq#Length(Heap[this, dst]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@117.12--117.157) [121827]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@117.12--117.157) [121828]"}
                HasDirectPerm(Mask, this, src);
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@117.12--117.157) [121829]"}
                i_11 >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@117.12--117.157) [121830]"}
                i_11 < Seq#Length(Heap[this, src]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@117.12--117.157) [121831]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, src], i_11), Integer_value);
            }
            assume false;
          }
        assume (forall i_5_1: int ::
          { Seq#Index(Heap[this, src], i_5_1) }
          half <= i_5_1 && i_5_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_5_1), Integer_value]
        );
      }
    }
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume tid == lid;
    assume state(PostHeap, PostMask);
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, src:=PostMask[this, src] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@124.11--124.30) [121832]"}
        HasDirectPerm(PostMask, this, src);
    assume Seq#Length(PostHeap[this, src]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, dst:=PostMask[this, dst] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@126.11--126.30) [121833]"}
        HasDirectPerm(PostMask, this, dst);
    assume Seq#Length(PostHeap[this, dst]) == gsize;
    assume state(PostHeap, PostMask);
    assume 4 <= gsize;
    assume state(PostHeap, PostMask);
    assume gsize mod 4 == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
      if (*) {
        if (ix_17 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@129.11--129.139) [121834]"}
            HasDirectPerm(PostMask, this, src);
          if (ix_17 < Seq#Length(PostHeap[this, src])) {
            if (jx_17 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@129.11--129.139) [121835]"}
                HasDirectPerm(PostMask, this, src);
            }
          }
        }
        if (ix_17 >= 0 && (ix_17 < Seq#Length(PostHeap[this, src]) && (jx_17 >= 0 && (jx_17 < Seq#Length(PostHeap[this, src]) && ix_17 != jx_17)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@129.11--129.139) [121836]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@129.11--129.139) [121837]"}
            ix_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@129.11--129.139) [121838]"}
            ix_17 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@129.11--129.139) [121839]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@129.11--129.139) [121840]"}
            jx_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@129.11--129.139) [121841]"}
            jx_17 < Seq#Length(PostHeap[this, src]);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(PostHeap[this, src], ix_3), Seq#Index(PostHeap[this, src], jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(PostHeap[this, src]) && (jx_3 >= 0 && (jx_3 < Seq#Length(PostHeap[this, src]) && ix_3 != jx_3))) ==> Seq#Index(PostHeap[this, src], ix_3) != Seq#Index(PostHeap[this, src], jx_3)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_13)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@130.12--130.92) [121842]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@130.12--130.92) [121843]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@130.12--130.92) [121844]"}
            i_13 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@130.12--130.92) [121845]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@130.12--130.92) [121846]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, gsize), i_7_1)) && Seq#Contains(Seq#Range(0, gsize), i_7_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], i_7_1) != Seq#Index(PostHeap[this, src], i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
        Seq#Contains(Seq#Range(0, gsize), i_7_1) && NoPerm < 1 / gsize ==> qpRange12(Seq#Index(PostHeap[this, src], i_7_1)) && invRecv12(Seq#Index(PostHeap[this, src], i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv12(o_9)) && NoPerm < 1 / gsize) && qpRange12(o_9) ==> Seq#Index(PostHeap[this, src], invRecv12(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@130.12--130.92) [121847]"}
      (forall i_7_1: int ::
      { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
      Seq#Contains(Seq#Range(0, gsize), i_7_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
        Seq#Contains(Seq#Range(0, gsize), i_7_1) && 1 / gsize > NoPerm ==> Seq#Index(PostHeap[this, src], i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv12(o_9)) && NoPerm < 1 / gsize) && qpRange12(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], invRecv12(o_9)) == o_9) && QPMask[o_9, Integer_value] == PostMask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv12(o_9)) && NoPerm < 1 / gsize) && qpRange12(o_9)) ==> QPMask[o_9, Integer_value] == PostMask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.src == old(this.src)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@131.11--131.36) [121848]"}
        HasDirectPerm(PostMask, this, src);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@131.11--131.36) [121849]"}
        HasDirectPerm(oldMask, this, src);
    assume Seq#Equal(PostHeap[this, src], oldHeap[this, src]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.dst == old(this.dst)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@132.11--132.36) [121850]"}
        HasDirectPerm(PostMask, this, dst);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@132.11--132.36) [121851]"}
        HasDirectPerm(oldMask, this, dst);
    assume Seq#Equal(PostHeap[this, dst], oldHeap[this, dst]);
    assume state(PostHeap, PostMask);
    if (sys__result == 1) {
      if (tid == 0) {
        
        // -- Check definedness of acc(this.dst[0].Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@133.11--133.146) [121852]"}
            HasDirectPerm(PostMask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@133.11--133.146) [121853]"}
            0 < Seq#Length(PostHeap[this, dst]);
        perm := FullPerm;
        assume Seq#Index(PostHeap[this, dst], 0) != null;
        PostMask := PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value] + perm];
        assume state(PostHeap, PostMask);
      }
      if (tid == 0) {
        
        // -- Check definedness of acc(this.dst[1].Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@133.11--133.146) [121854]"}
            HasDirectPerm(PostMask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@133.11--133.146) [121855]"}
            1 < Seq#Length(PostHeap[this, dst]);
        perm := FullPerm;
        assume Seq#Index(PostHeap[this, dst], 1) != null;
        PostMask := PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value] + perm];
        assume state(PostHeap, PostMask);
      }
    }
    assume state(PostHeap, PostMask);
    if (sys__result == 0) {
      
      // -- Check definedness of acc(this.dst[tid].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@134.11--134.73) [121856]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@134.11--134.73) [121857]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@134.11--134.73) [121858]"}
          tid < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], tid), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], tid), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume sys__result == this_barrier;
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      if (tid == 0) {
        
        // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
          if (*) {
            if (0 <= i_23 && i_23 < half) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@136.11--136.152) [121859]"}
                HasDirectPerm(PostMask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@136.11--136.152) [121860]"}
                0 < Seq#Length(PostHeap[this, dst]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@136.11--136.152) [121861]"}
                HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 0), Integer_value);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@136.11--136.152) [121862]"}
                HasDirectPerm(PostMask, this, src);
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@136.11--136.152) [121863]"}
                i_23 >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@136.11--136.152) [121864]"}
                i_23 < Seq#Length(PostHeap[this, src]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@136.11--136.152) [121865]"}
                HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_23), Integer_value);
            }
            assume false;
          }
        assume (forall i_9_1: int ::
          { Seq#Index(PostHeap[this, src], i_9_1) }
          0 <= i_9_1 && i_9_1 < half ==> PostHeap[Seq#Index(PostHeap[this, dst], 0), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_9_1), Integer_value]
        );
      }
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      if (tid == 0) {
        
        // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
          if (*) {
            if (half <= i_24 && i_24 < gsize) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@137.11--137.156) [121866]"}
                HasDirectPerm(PostMask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@137.11--137.156) [121867]"}
                1 < Seq#Length(PostHeap[this, dst]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@137.11--137.156) [121868]"}
                HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 1), Integer_value);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@137.11--137.156) [121869]"}
                HasDirectPerm(PostMask, this, src);
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@137.11--137.156) [121870]"}
                i_24 >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@137.11--137.156) [121871]"}
                i_24 < Seq#Length(PostHeap[this, src]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@137.11--137.156) [121872]"}
                HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_24), Integer_value);
            }
            assume false;
          }
        assume (forall i_11_1: int ::
          { Seq#Index(PostHeap[this, src], i_11_1) }
          half <= i_11_1 && i_11_1 < gsize ==> PostHeap[Seq#Index(PostHeap[this, dst], 1), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_11_1), Integer_value]
        );
      }
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- trigger-z3-bug.vpr@139.3--139.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion 0 <= tid might not hold. (trigger-z3-bug.vpr@118.11--118.19) [121873]"}
      0 <= tid;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion tid < tcount might not hold. (trigger-z3-bug.vpr@119.11--119.23) [121874]"}
      tid < tcount;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion tid == lid might not hold. (trigger-z3-bug.vpr@120.11--120.21) [121875]"}
      tid == lid;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion tcount == gsize might not hold. (trigger-z3-bug.vpr@121.11--121.26) [121876]"}
      tcount == gsize;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion gid == 0 might not hold. (trigger-z3-bug.vpr@122.11--122.19) [121877]"}
      gid == 0;
    assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@123.11--123.34) [121878]"}
      Mask[this, src] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, src];
    Mask := Mask[this, src:=Mask[this, src] - wildcard];
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion |this.src| == gsize might not hold. (trigger-z3-bug.vpr@124.11--124.30) [121879]"}
      Seq#Length(Heap[this, src]) == gsize;
    assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@125.11--125.34) [121880]"}
      Mask[this, dst] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, dst];
    Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion |this.dst| == gsize might not hold. (trigger-z3-bug.vpr@126.11--126.30) [121881]"}
      Seq#Length(Heap[this, dst]) == gsize;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion 4 <= gsize might not hold. (trigger-z3-bug.vpr@127.11--127.21) [121882]"}
      4 <= gsize;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion gsize % 4 == 0 might not hold. (trigger-z3-bug.vpr@128.11--128.25) [121883]"}
      gsize mod 4 == 0;
    if (*) {
      if (ix_4 >= 0 && (ix_4 < Seq#Length(Heap[this, src]) && (jx_4 >= 0 && (jx_4 < Seq#Length(Heap[this, src]) && ix_4 != jx_4)))) {
        assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.src[ix] != this.src[jx] might not hold. (trigger-z3-bug.vpr@129.11--129.139) [121884]"}
          Seq#Index(Heap[this, src], ix_4) != Seq#Index(Heap[this, src], jx_4);
      }
      assume false;
    }
    assume (forall ix_5_1: int, jx_5_1: int ::
      { Seq#Index(Heap[this, src], ix_5_1), Seq#Index(Heap[this, src], jx_5_1) }
      ix_5_1 >= 0 && (ix_5_1 < Seq#Length(Heap[this, src]) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(Heap[this, src]) && ix_5_1 != jx_5_1))) ==> Seq#Index(Heap[this, src], ix_5_1) != Seq#Index(Heap[this, src], jx_5_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of main_barrier might not hold. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@130.12--130.92) [121885]"}
        (forall i_12_1: int ::
        { Seq#Index(Heap[this, src], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_12_1) } { Seq#Contains(Seq#Range(0, gsize), i_12_1) } { Seq#Index(Heap[this, src], i_12_1) }
        Seq#Contains(Seq#Range(0, gsize), i_12_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_12_1), Integer_value]) ==> 1 / gsize >= NoPerm
      );
    
    // -- check if receiver this.src[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@130.12--130.92) [121886]"}
        (forall i_12_1: int, i_12_2: int ::
        { neverTriggered13(i_12_1), neverTriggered13(i_12_2) }
        (((i_12_1 != i_12_2 && Seq#Contains(Seq#Range(0, gsize), i_12_1)) && Seq#Contains(Seq#Range(0, gsize), i_12_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_12_1) != Seq#Index(Heap[this, src], i_12_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@130.12--130.92) [121887]"}
        (forall i_12_1: int ::
        { Seq#Index(Heap[this, src], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_12_1) } { Seq#Contains(Seq#Range(0, gsize), i_12_1) } { Seq#Index(Heap[this, src], i_12_1) }
        Seq#Contains(Seq#Range(0, gsize), i_12_1) ==> Mask[Seq#Index(Heap[this, src], i_12_1), Integer_value] >= 1 / gsize
      );
    
    // -- assumptions for inverse of receiver this.src[i]
      assume (forall i_12_1: int ::
        { Seq#Index(Heap[this, src], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_12_1) } { Seq#Contains(Seq#Range(0, gsize), i_12_1) } { Seq#Index(Heap[this, src], i_12_1) }
        Seq#Contains(Seq#Range(0, gsize), i_12_1) && NoPerm < 1 / gsize ==> qpRange13(Seq#Index(Heap[this, src], i_12_1)) && invRecv13(Seq#Index(Heap[this, src], i_12_1)) == i_12_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        Seq#Contains(Seq#Range(0, gsize), invRecv13(o_9)) && (NoPerm < 1 / gsize && qpRange13(o_9)) ==> Seq#Index(Heap[this, src], invRecv13(o_9)) == o_9
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        (Seq#Contains(Seq#Range(0, gsize), invRecv13(o_9)) && (NoPerm < 1 / gsize && qpRange13(o_9)) ==> Seq#Index(Heap[this, src], invRecv13(o_9)) == o_9 && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv13(o_9)) && (NoPerm < 1 / gsize && qpRange13(o_9))) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.src == old(this.src) might not hold. (trigger-z3-bug.vpr@131.11--131.36) [121888]"}
      Seq#Equal(Heap[this, src], oldHeap[this, src]);
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.dst == old(this.dst) might not hold. (trigger-z3-bug.vpr@132.11--132.36) [121889]"}
      Seq#Equal(Heap[this, dst], oldHeap[this, dst]);
    if (sys__result == 1) {
      if (tid == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@133.11--133.146) [121890]"}
            perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
      }
      if (tid == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@133.11--133.146) [121891]"}
            perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
      }
    }
    if (sys__result == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.dst[tid].Integer_value (trigger-z3-bug.vpr@134.11--134.73) [121892]"}
          perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
    }
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion sys__result == this_barrier might not hold. (trigger-z3-bug.vpr@135.11--135.38) [121893]"}
      sys__result == this_barrier;
    if (this_barrier == 1) {
      if (tid == 0) {
        if (*) {
          if (0 <= i_13_1 && i_13_1 < half) {
            assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@136.11--136.152) [121894]"}
              Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_13_1), Integer_value];
          }
          assume false;
        }
        assume (forall i_14_1_1: int ::
          { Seq#Index(Heap[this, src], i_14_1_1) }
          0 <= i_14_1_1 && i_14_1_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_14_1_1), Integer_value]
        );
      }
    }
    if (this_barrier == 1) {
      if (tid == 0) {
        if (*) {
          if (half <= i_15_1 && i_15_1 < gsize) {
            assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.dst[1].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@137.11--137.156) [121895]"}
              Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_15_1), Integer_value];
          }
          assume false;
        }
        assume (forall i_16_1_1: int ::
          { Seq#Index(Heap[this, src], i_16_1_1) }
          half <= i_16_1_1 && i_16_1_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_16_1_1), Integer_value]
        );
      }
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method main_resources_of_1
// ==================================================

procedure main_resources_of_1(this: Ref, tcount: int, gsize: int, gid: int, k: int, half: int, offset_1: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ix_2: int;
  var jx_2: int;
  var i_27: int;
  var QPMask: MaskType;
  var ix_18: int;
  var jx_18: int;
  var tid_9: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ix_19: int;
  var jx_19: int;
  var i_53: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_6_1: int;
  var jx_6_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, src:=Mask[this, src] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@146.12--146.31) [121896]"}
        HasDirectPerm(Mask, this, src);
    assume Seq#Length(Heap[this, src]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, dst:=Mask[this, dst] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@148.12--148.31) [121897]"}
        HasDirectPerm(Mask, this, dst);
    assume Seq#Length(Heap[this, dst]) == gsize;
    assume state(Heap, Mask);
    assume 4 <= gsize;
    assume state(Heap, Mask);
    assume gsize mod 4 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
      if (*) {
        if (ix_2 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@151.12--151.140) [121898]"}
            HasDirectPerm(Mask, this, src);
          if (ix_2 < Seq#Length(Heap[this, src])) {
            if (jx_2 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@151.12--151.140) [121899]"}
                HasDirectPerm(Mask, this, src);
            }
          }
        }
        if (ix_2 >= 0 && (ix_2 < Seq#Length(Heap[this, src]) && (jx_2 >= 0 && (jx_2 < Seq#Length(Heap[this, src]) && ix_2 != jx_2)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@151.12--151.140) [121900]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@151.12--151.140) [121901]"}
            ix_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@151.12--151.140) [121902]"}
            ix_2 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@151.12--151.140) [121903]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@151.12--151.140) [121904]"}
            jx_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@151.12--151.140) [121905]"}
            jx_2 < Seq#Length(Heap[this, src]);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(Heap[this, src], ix_1), Seq#Index(Heap[this, src], jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(Heap[this, src]) && (jx_1 >= 0 && (jx_1 < Seq#Length(Heap[this, src]) && ix_1 != jx_1))) ==> Seq#Index(Heap[this, src], ix_1) != Seq#Index(Heap[this, src], jx_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_27)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@152.13--152.93) [121906]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@152.13--152.93) [121907]"}
            i_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@152.13--152.93) [121908]"}
            i_27 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@152.13--152.93) [121909]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@152.13--152.93) [121910]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, gsize), i_1)) && Seq#Contains(Seq#Range(0, gsize), i_1_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_1) != Seq#Index(Heap[this, src], i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
        Seq#Contains(Seq#Range(0, gsize), i_1) && NoPerm < 1 / gsize ==> qpRange14(Seq#Index(Heap[this, src], i_1)) && invRecv14(Seq#Index(Heap[this, src], i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv14(o_9)) && NoPerm < 1 / gsize) && qpRange14(o_9) ==> Seq#Index(Heap[this, src], invRecv14(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@152.13--152.93) [121911]"}
      (forall i_1: int ::
      { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
      Seq#Contains(Seq#Range(0, gsize), i_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
        Seq#Contains(Seq#Range(0, gsize), i_1) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv14(o_9)) && NoPerm < 1 / gsize) && qpRange14(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv14(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv14(o_9)) && NoPerm < 1 / gsize) && qpRange14(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.dst[ix], this.dst[jx] } ix >= 0 && (ix < |this.dst| && (jx >= 0 && (jx < |this.dst| && ix != jx))) ==> this.dst[ix] != this.dst[jx])
      if (*) {
        if (ix_18 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@153.12--153.140) [121912]"}
            HasDirectPerm(Mask, this, dst);
          if (ix_18 < Seq#Length(Heap[this, dst])) {
            if (jx_18 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@153.12--153.140) [121913]"}
                HasDirectPerm(Mask, this, dst);
            }
          }
        }
        if (ix_18 >= 0 && (ix_18 < Seq#Length(Heap[this, dst]) && (jx_18 >= 0 && (jx_18 < Seq#Length(Heap[this, dst]) && ix_18 != jx_18)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@153.12--153.140) [121914]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[ix] into this.dst might be negative. (trigger-z3-bug.vpr@153.12--153.140) [121915]"}
            ix_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[ix] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@153.12--153.140) [121916]"}
            ix_18 < Seq#Length(Heap[this, dst]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@153.12--153.140) [121917]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[jx] into this.dst might be negative. (trigger-z3-bug.vpr@153.12--153.140) [121918]"}
            jx_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[jx] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@153.12--153.140) [121919]"}
            jx_18 < Seq#Length(Heap[this, dst]);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(Heap[this, dst], ix_3), Seq#Index(Heap[this, dst], jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(Heap[this, dst]) && (jx_3 >= 0 && (jx_3 < Seq#Length(Heap[this, dst]) && ix_3 != jx_3))) ==> Seq#Index(Heap[this, dst], ix_3) != Seq#Index(Heap[this, dst], jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { this.dst[tid] } (tid in [gid * gsize..gsize)) ==> acc(this.dst[tid].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(gid * gsize, gsize), tid_9)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@154.13--154.105) [121920]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (trigger-z3-bug.vpr@154.13--154.105) [121921]"}
            tid_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@154.13--154.105) [121922]"}
            tid_9 < Seq#Length(Heap[this, dst]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.dst[tid].Integer_value might not be injective. (trigger-z3-bug.vpr@154.13--154.105) [121923]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && Seq#Contains(Seq#Range(gid * gsize, gsize), tid_1)) && Seq#Contains(Seq#Range(gid * gsize, gsize), tid_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[this, dst], tid_1) != Seq#Index(Heap[this, dst], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[this, dst], tid_1) } { Seq#Index(Heap[this, dst], tid_1) }
        Seq#Contains(Seq#Range(gid * gsize, gsize), tid_1) && NoPerm < FullPerm ==> qpRange15(Seq#Index(Heap[this, dst], tid_1)) && invRecv15(Seq#Index(Heap[this, dst], tid_1)) == tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        (Seq#Contains(Seq#Range(gid * gsize, gsize), invRecv15(o_9)) && NoPerm < FullPerm) && qpRange15(o_9) ==> Seq#Index(Heap[this, dst], invRecv15(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[this, dst], tid_1) } { Seq#Index(Heap[this, dst], tid_1) }
        Seq#Contains(Seq#Range(gid * gsize, gsize), tid_1) ==> Seq#Index(Heap[this, dst], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(gid * gsize, gsize), invRecv15(o_9)) && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[this, dst], invRecv15(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(gid * gsize, gsize), invRecv15(o_9)) && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, src:=PostMask[this, src] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@158.11--158.30) [121924]"}
        HasDirectPerm(PostMask, this, src);
    assume Seq#Length(PostHeap[this, src]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, dst:=PostMask[this, dst] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@160.11--160.30) [121925]"}
        HasDirectPerm(PostMask, this, dst);
    assume Seq#Length(PostHeap[this, dst]) == gsize;
    assume state(PostHeap, PostMask);
    assume 4 <= gsize;
    assume state(PostHeap, PostMask);
    assume gsize mod 4 == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
      if (*) {
        if (ix_19 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@163.11--163.139) [121926]"}
            HasDirectPerm(PostMask, this, src);
          if (ix_19 < Seq#Length(PostHeap[this, src])) {
            if (jx_19 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@163.11--163.139) [121927]"}
                HasDirectPerm(PostMask, this, src);
            }
          }
        }
        if (ix_19 >= 0 && (ix_19 < Seq#Length(PostHeap[this, src]) && (jx_19 >= 0 && (jx_19 < Seq#Length(PostHeap[this, src]) && ix_19 != jx_19)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@163.11--163.139) [121928]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@163.11--163.139) [121929]"}
            ix_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@163.11--163.139) [121930]"}
            ix_19 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@163.11--163.139) [121931]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@163.11--163.139) [121932]"}
            jx_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@163.11--163.139) [121933]"}
            jx_19 < Seq#Length(PostHeap[this, src]);
        }
        assume false;
      }
    assume (forall ix_5_2: int, jx_5_2: int ::
      { Seq#Index(PostHeap[this, src], ix_5_2), Seq#Index(PostHeap[this, src], jx_5_2) }
      ix_5_2 >= 0 && (ix_5_2 < Seq#Length(PostHeap[this, src]) && (jx_5_2 >= 0 && (jx_5_2 < Seq#Length(PostHeap[this, src]) && ix_5_2 != jx_5_2))) ==> Seq#Index(PostHeap[this, src], ix_5_2) != Seq#Index(PostHeap[this, src], jx_5_2)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_53)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@164.12--164.92) [121934]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@164.12--164.92) [121935]"}
            i_53 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@164.12--164.92) [121936]"}
            i_53 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@164.12--164.92) [121937]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@164.12--164.92) [121938]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, gsize), i_3_2)) && Seq#Contains(Seq#Range(0, gsize), i_3_3)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], i_3_2) != Seq#Index(PostHeap[this, src], i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(PostHeap[this, src], i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3_2) } { Seq#Contains(Seq#Range(0, gsize), i_3_2) } { Seq#Index(PostHeap[this, src], i_3_2) }
        Seq#Contains(Seq#Range(0, gsize), i_3_2) && NoPerm < 1 / gsize ==> qpRange16(Seq#Index(PostHeap[this, src], i_3_2)) && invRecv16(Seq#Index(PostHeap[this, src], i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv16(o_9)) && NoPerm < 1 / gsize) && qpRange16(o_9) ==> Seq#Index(PostHeap[this, src], invRecv16(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@164.12--164.92) [121939]"}
      (forall i_3_2: int ::
      { Seq#Index(PostHeap[this, src], i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3_2) } { Seq#Contains(Seq#Range(0, gsize), i_3_2) } { Seq#Index(PostHeap[this, src], i_3_2) }
      Seq#Contains(Seq#Range(0, gsize), i_3_2) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(PostHeap[this, src], i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3_2) } { Seq#Contains(Seq#Range(0, gsize), i_3_2) } { Seq#Index(PostHeap[this, src], i_3_2) }
        Seq#Contains(Seq#Range(0, gsize), i_3_2) && 1 / gsize > NoPerm ==> Seq#Index(PostHeap[this, src], i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv16(o_9)) && NoPerm < 1 / gsize) && qpRange16(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], invRecv16(o_9)) == o_9) && QPMask[o_9, Integer_value] == PostMask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv16(o_9)) && NoPerm < 1 / gsize) && qpRange16(o_9)) ==> QPMask[o_9, Integer_value] == PostMask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.src == old(this.src)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@165.11--165.36) [121940]"}
        HasDirectPerm(PostMask, this, src);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@165.11--165.36) [121941]"}
        HasDirectPerm(oldMask, this, src);
    assume Seq#Equal(PostHeap[this, src], oldHeap[this, src]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.dst == old(this.dst)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@166.11--166.36) [121942]"}
        HasDirectPerm(PostMask, this, dst);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@166.11--166.36) [121943]"}
        HasDirectPerm(oldMask, this, dst);
    assume Seq#Equal(PostHeap[this, dst], oldHeap[this, dst]);
    assume state(PostHeap, PostMask);
    if (gid * gsize <= 0 && 0 < gsize) {
      
      // -- Check definedness of acc(this.dst[0].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@167.11--167.86) [121944]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@167.11--167.86) [121945]"}
          0 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 0) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (gid * gsize <= 0 && 0 < gsize) {
      
      // -- Check definedness of acc(this.dst[1].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@168.11--168.86) [121946]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@168.11--168.86) [121947]"}
          1 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (trigger-z3-bug.vpr@155.11--155.26) [121948]"}
      tcount == gsize;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (trigger-z3-bug.vpr@156.11--156.19) [121949]"}
      gid == 0;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@157.11--157.34) [121950]"}
      Mask[this, src] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, src];
    Mask := Mask[this, src:=Mask[this, src] - wildcard];
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion |this.src| == gsize might not hold. (trigger-z3-bug.vpr@158.11--158.30) [121951]"}
      Seq#Length(Heap[this, src]) == gsize;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@159.11--159.34) [121952]"}
      Mask[this, dst] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, dst];
    Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion |this.dst| == gsize might not hold. (trigger-z3-bug.vpr@160.11--160.30) [121953]"}
      Seq#Length(Heap[this, dst]) == gsize;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion 4 <= gsize might not hold. (trigger-z3-bug.vpr@161.11--161.21) [121954]"}
      4 <= gsize;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion gsize % 4 == 0 might not hold. (trigger-z3-bug.vpr@162.11--162.25) [121955]"}
      gsize mod 4 == 0;
    if (*) {
      if (ix_6_1 >= 0 && (ix_6_1 < Seq#Length(Heap[this, src]) && (jx_6_1 >= 0 && (jx_6_1 < Seq#Length(Heap[this, src]) && ix_6_1 != jx_6_1)))) {
        assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion this.src[ix] != this.src[jx] might not hold. (trigger-z3-bug.vpr@163.11--163.139) [121956]"}
          Seq#Index(Heap[this, src], ix_6_1) != Seq#Index(Heap[this, src], jx_6_1);
      }
      assume false;
    }
    assume (forall ix_7_1: int, jx_7_1: int ::
      { Seq#Index(Heap[this, src], ix_7_1), Seq#Index(Heap[this, src], jx_7_1) }
      ix_7_1 >= 0 && (ix_7_1 < Seq#Length(Heap[this, src]) && (jx_7_1 >= 0 && (jx_7_1 < Seq#Length(Heap[this, src]) && ix_7_1 != jx_7_1))) ==> Seq#Index(Heap[this, src], ix_7_1) != Seq#Index(Heap[this, src], jx_7_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of main_resources_of_1 might not hold. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@164.12--164.92) [121957]"}
        (forall i_4_1: int ::
        { Seq#Index(Heap[this, src], i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_4_1) } { Seq#Contains(Seq#Range(0, gsize), i_4_1) } { Seq#Index(Heap[this, src], i_4_1) }
        Seq#Contains(Seq#Range(0, gsize), i_4_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_4_1), Integer_value]) ==> 1 / gsize >= NoPerm
      );
    
    // -- check if receiver this.src[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@164.12--164.92) [121958]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered17(i_4_1), neverTriggered17(i_4_2) }
        (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, gsize), i_4_1)) && Seq#Contains(Seq#Range(0, gsize), i_4_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_4_1) != Seq#Index(Heap[this, src], i_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@164.12--164.92) [121959]"}
        (forall i_4_1: int ::
        { Seq#Index(Heap[this, src], i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_4_1) } { Seq#Contains(Seq#Range(0, gsize), i_4_1) } { Seq#Index(Heap[this, src], i_4_1) }
        Seq#Contains(Seq#Range(0, gsize), i_4_1) ==> Mask[Seq#Index(Heap[this, src], i_4_1), Integer_value] >= 1 / gsize
      );
    
    // -- assumptions for inverse of receiver this.src[i]
      assume (forall i_4_1: int ::
        { Seq#Index(Heap[this, src], i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_4_1) } { Seq#Contains(Seq#Range(0, gsize), i_4_1) } { Seq#Index(Heap[this, src], i_4_1) }
        Seq#Contains(Seq#Range(0, gsize), i_4_1) && NoPerm < 1 / gsize ==> qpRange17(Seq#Index(Heap[this, src], i_4_1)) && invRecv17(Seq#Index(Heap[this, src], i_4_1)) == i_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        Seq#Contains(Seq#Range(0, gsize), invRecv17(o_9)) && (NoPerm < 1 / gsize && qpRange17(o_9)) ==> Seq#Index(Heap[this, src], invRecv17(o_9)) == o_9
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        (Seq#Contains(Seq#Range(0, gsize), invRecv17(o_9)) && (NoPerm < 1 / gsize && qpRange17(o_9)) ==> Seq#Index(Heap[this, src], invRecv17(o_9)) == o_9 && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv17(o_9)) && (NoPerm < 1 / gsize && qpRange17(o_9))) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion this.src == old(this.src) might not hold. (trigger-z3-bug.vpr@165.11--165.36) [121960]"}
      Seq#Equal(Heap[this, src], oldHeap[this, src]);
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion this.dst == old(this.dst) might not hold. (trigger-z3-bug.vpr@166.11--166.36) [121961]"}
      Seq#Equal(Heap[this, dst], oldHeap[this, dst]);
    if (gid * gsize <= 0 && 0 < gsize) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@167.11--167.86) [121962]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
    }
    if (gid * gsize <= 0 && 0 < gsize) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@168.11--168.86) [121963]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method main_post_check_1
// ==================================================

procedure main_post_check_1(this: Ref, tcount: int, gsize: int, tid: int, gid: int, lid: int, k: int, half: int, offset_1: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ix_20: int;
  var jx_20: int;
  var i_55: int;
  var QPMask: MaskType;
  var ix_21: int;
  var jx_21: int;
  var _x_tid_8: int;
  var i_66: int;
  var i_67: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ix_22: int;
  var jx_22: int;
  var i_68: int;
  var i_69: int;
  var i_70: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_6_1: int;
  var jx_6_1: int;
  var i_13_1: int;
  var i_15_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume tid == lid;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, src:=Mask[this, src] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@179.12--179.31) [121964]"}
        HasDirectPerm(Mask, this, src);
    assume Seq#Length(Heap[this, src]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, dst:=Mask[this, dst] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@181.12--181.31) [121965]"}
        HasDirectPerm(Mask, this, dst);
    assume Seq#Length(Heap[this, dst]) == gsize;
    assume state(Heap, Mask);
    assume 4 <= gsize;
    assume state(Heap, Mask);
    assume gsize mod 4 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
      if (*) {
        if (ix_20 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@184.12--184.140) [121966]"}
            HasDirectPerm(Mask, this, src);
          if (ix_20 < Seq#Length(Heap[this, src])) {
            if (jx_20 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@184.12--184.140) [121967]"}
                HasDirectPerm(Mask, this, src);
            }
          }
        }
        if (ix_20 >= 0 && (ix_20 < Seq#Length(Heap[this, src]) && (jx_20 >= 0 && (jx_20 < Seq#Length(Heap[this, src]) && ix_20 != jx_20)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@184.12--184.140) [121968]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@184.12--184.140) [121969]"}
            ix_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@184.12--184.140) [121970]"}
            ix_20 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@184.12--184.140) [121971]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@184.12--184.140) [121972]"}
            jx_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@184.12--184.140) [121973]"}
            jx_20 < Seq#Length(Heap[this, src]);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(Heap[this, src], ix_1), Seq#Index(Heap[this, src], jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(Heap[this, src]) && (jx_1 >= 0 && (jx_1 < Seq#Length(Heap[this, src]) && ix_1 != jx_1))) ==> Seq#Index(Heap[this, src], ix_1) != Seq#Index(Heap[this, src], jx_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_55)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@185.13--185.93) [121974]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@185.13--185.93) [121975]"}
            i_55 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@185.13--185.93) [121976]"}
            i_55 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@185.13--185.93) [121977]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@185.13--185.93) [121978]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, gsize), i_1)) && Seq#Contains(Seq#Range(0, gsize), i_1_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_1) != Seq#Index(Heap[this, src], i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
        Seq#Contains(Seq#Range(0, gsize), i_1) && NoPerm < 1 / gsize ==> qpRange18(Seq#Index(Heap[this, src], i_1)) && invRecv18(Seq#Index(Heap[this, src], i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv18(o_9)) && NoPerm < 1 / gsize) && qpRange18(o_9) ==> Seq#Index(Heap[this, src], invRecv18(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@185.13--185.93) [121979]"}
      (forall i_1: int ::
      { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
      Seq#Contains(Seq#Range(0, gsize), i_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(Heap[this, src], i_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_1) } { Seq#Contains(Seq#Range(0, gsize), i_1) } { Seq#Index(Heap[this, src], i_1) }
        Seq#Contains(Seq#Range(0, gsize), i_1) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv18(o_9)) && NoPerm < 1 / gsize) && qpRange18(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv18(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv18(o_9)) && NoPerm < 1 / gsize) && qpRange18(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.dst[ix], this.dst[jx] } ix >= 0 && (ix < |this.dst| && (jx >= 0 && (jx < |this.dst| && ix != jx))) ==> this.dst[ix] != this.dst[jx])
      if (*) {
        if (ix_21 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@186.12--186.140) [121980]"}
            HasDirectPerm(Mask, this, dst);
          if (ix_21 < Seq#Length(Heap[this, dst])) {
            if (jx_21 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@186.12--186.140) [121981]"}
                HasDirectPerm(Mask, this, dst);
            }
          }
        }
        if (ix_21 >= 0 && (ix_21 < Seq#Length(Heap[this, dst]) && (jx_21 >= 0 && (jx_21 < Seq#Length(Heap[this, dst]) && ix_21 != jx_21)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@186.12--186.140) [121982]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[ix] into this.dst might be negative. (trigger-z3-bug.vpr@186.12--186.140) [121983]"}
            ix_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[ix] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@186.12--186.140) [121984]"}
            ix_21 < Seq#Length(Heap[this, dst]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@186.12--186.140) [121985]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[jx] into this.dst might be negative. (trigger-z3-bug.vpr@186.12--186.140) [121986]"}
            jx_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[jx] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@186.12--186.140) [121987]"}
            jx_21 < Seq#Length(Heap[this, dst]);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(Heap[this, dst], ix_3), Seq#Index(Heap[this, dst], jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(Heap[this, dst]) && (jx_3 >= 0 && (jx_3 < Seq#Length(Heap[this, dst]) && ix_3 != jx_3))) ==> Seq#Index(Heap[this, dst], ix_3) != Seq#Index(Heap[this, dst], jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { (_x_tid in [0..gsize)) } { this.dst[_x_tid] } (_x_tid in [0..gsize)) ==> acc(this.dst[_x_tid].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), _x_tid_8)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@187.13--187.104) [121988]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[_x_tid] into this.dst might be negative. (trigger-z3-bug.vpr@187.13--187.104) [121989]"}
            _x_tid_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[_x_tid] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@187.13--187.104) [121990]"}
            _x_tid_8 < Seq#Length(Heap[this, dst]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.dst[_x_tid].Integer_value might not be injective. (trigger-z3-bug.vpr@187.13--187.104) [121991]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && Seq#Contains(Seq#Range(0, gsize), _x_tid_1)) && Seq#Contains(Seq#Range(0, gsize), _x_tid_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[this, dst], _x_tid_1) != Seq#Index(Heap[this, dst], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[this, dst], _x_tid_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), _x_tid_1) } { Seq#Contains(Seq#Range(0, gsize), _x_tid_1) } { Seq#Index(Heap[this, dst], _x_tid_1) }
        Seq#Contains(Seq#Range(0, gsize), _x_tid_1) && NoPerm < FullPerm ==> qpRange19(Seq#Index(Heap[this, dst], _x_tid_1)) && invRecv19(Seq#Index(Heap[this, dst], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv19(o_9)) && NoPerm < FullPerm) && qpRange19(o_9) ==> Seq#Index(Heap[this, dst], invRecv19(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[this, dst], _x_tid_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), _x_tid_1) } { Seq#Contains(Seq#Range(0, gsize), _x_tid_1) } { Seq#Index(Heap[this, dst], _x_tid_1) }
        Seq#Contains(Seq#Range(0, gsize), _x_tid_1) ==> Seq#Index(Heap[this, dst], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv19(o_9)) && NoPerm < FullPerm) && qpRange19(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[this, dst], invRecv19(o_9)) == o_9) && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv19(o_9)) && NoPerm < FullPerm) && qpRange19(o_9)) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume half + half == gsize;
    assume state(Heap, Mask);
    if (0 < gsize) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (0 <= i_66 && i_66 < half) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@189.12--189.142) [121992]"}
              HasDirectPerm(Mask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@189.12--189.142) [121993]"}
              0 < Seq#Length(Heap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@189.12--189.142) [121994]"}
              HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 0), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@189.12--189.142) [121995]"}
              HasDirectPerm(Mask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@189.12--189.142) [121996]"}
              i_66 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@189.12--189.142) [121997]"}
              i_66 < Seq#Length(Heap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@189.12--189.142) [121998]"}
              HasDirectPerm(Mask, Seq#Index(Heap[this, src], i_66), Integer_value);
          }
          assume false;
        }
      assume (forall i_3_2: int ::
        { Seq#Index(Heap[this, src], i_3_2) }
        0 <= i_3_2 && i_3_2 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_3_2), Integer_value]
      );
    }
    assume state(Heap, Mask);
    if (1 < gsize) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (half <= i_67 && i_67 < gsize) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@190.12--190.146) [121999]"}
              HasDirectPerm(Mask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@190.12--190.146) [122000]"}
              1 < Seq#Length(Heap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@190.12--190.146) [122001]"}
              HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@190.12--190.146) [122002]"}
              HasDirectPerm(Mask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@190.12--190.146) [122003]"}
              i_67 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@190.12--190.146) [122004]"}
              i_67 < Seq#Length(Heap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@190.12--190.146) [122005]"}
              HasDirectPerm(Mask, Seq#Index(Heap[this, src], i_67), Integer_value);
          }
          assume false;
        }
      assume (forall i_5_1: int ::
        { Seq#Index(Heap[this, src], i_5_1) }
        half <= i_5_1 && i_5_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_5_1), Integer_value]
      );
    }
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume tid == lid;
    assume state(PostHeap, PostMask);
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, src:=PostMask[this, src] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@197.11--197.30) [122006]"}
        HasDirectPerm(PostMask, this, src);
    assume Seq#Length(PostHeap[this, src]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, dst:=PostMask[this, dst] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@199.11--199.30) [122007]"}
        HasDirectPerm(PostMask, this, dst);
    assume Seq#Length(PostHeap[this, dst]) == gsize;
    assume state(PostHeap, PostMask);
    assume 4 <= gsize;
    assume state(PostHeap, PostMask);
    assume gsize mod 4 == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { this.src[ix], this.src[jx] } ix >= 0 && (ix < |this.src| && (jx >= 0 && (jx < |this.src| && ix != jx))) ==> this.src[ix] != this.src[jx])
      if (*) {
        if (ix_22 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@202.11--202.139) [122008]"}
            HasDirectPerm(PostMask, this, src);
          if (ix_22 < Seq#Length(PostHeap[this, src])) {
            if (jx_22 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@202.11--202.139) [122009]"}
                HasDirectPerm(PostMask, this, src);
            }
          }
        }
        if (ix_22 >= 0 && (ix_22 < Seq#Length(PostHeap[this, src]) && (jx_22 >= 0 && (jx_22 < Seq#Length(PostHeap[this, src]) && ix_22 != jx_22)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@202.11--202.139) [122010]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might be negative. (trigger-z3-bug.vpr@202.11--202.139) [122011]"}
            ix_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[ix] into this.src might exceed sequence length. (trigger-z3-bug.vpr@202.11--202.139) [122012]"}
            ix_22 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@202.11--202.139) [122013]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might be negative. (trigger-z3-bug.vpr@202.11--202.139) [122014]"}
            jx_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[jx] into this.src might exceed sequence length. (trigger-z3-bug.vpr@202.11--202.139) [122015]"}
            jx_22 < Seq#Length(PostHeap[this, src]);
        }
        assume false;
      }
    assume (forall ix_5_2: int, jx_5_2: int ::
      { Seq#Index(PostHeap[this, src], ix_5_2), Seq#Index(PostHeap[this, src], jx_5_2) }
      ix_5_2 >= 0 && (ix_5_2 < Seq#Length(PostHeap[this, src]) && (jx_5_2 >= 0 && (jx_5_2 < Seq#Length(PostHeap[this, src]) && ix_5_2 != jx_5_2))) ==> Seq#Index(PostHeap[this, src], ix_5_2) != Seq#Index(PostHeap[this, src], jx_5_2)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_68)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@203.12--203.92) [122016]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@203.12--203.92) [122017]"}
            i_68 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@203.12--203.92) [122018]"}
            i_68 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (trigger-z3-bug.vpr@203.12--203.92) [122019]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@203.12--203.92) [122020]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, gsize), i_7_1)) && Seq#Contains(Seq#Range(0, gsize), i_7_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], i_7_1) != Seq#Index(PostHeap[this, src], i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
        Seq#Contains(Seq#Range(0, gsize), i_7_1) && NoPerm < 1 / gsize ==> qpRange20(Seq#Index(PostHeap[this, src], i_7_1)) && invRecv20(Seq#Index(PostHeap[this, src], i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv20(o_9)) && NoPerm < 1 / gsize) && qpRange20(o_9) ==> Seq#Index(PostHeap[this, src], invRecv20(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@203.12--203.92) [122021]"}
      (forall i_7_1: int ::
      { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
      Seq#Contains(Seq#Range(0, gsize), i_7_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
        Seq#Contains(Seq#Range(0, gsize), i_7_1) && 1 / gsize > NoPerm ==> Seq#Index(PostHeap[this, src], i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv20(o_9)) && NoPerm < 1 / gsize) && qpRange20(o_9) ==> (NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], invRecv20(o_9)) == o_9) && QPMask[o_9, Integer_value] == PostMask[o_9, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv20(o_9)) && NoPerm < 1 / gsize) && qpRange20(o_9)) ==> QPMask[o_9, Integer_value] == PostMask[o_9, Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.src == old(this.src)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@204.11--204.36) [122022]"}
        HasDirectPerm(PostMask, this, src);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@204.11--204.36) [122023]"}
        HasDirectPerm(oldMask, this, src);
    assume Seq#Equal(PostHeap[this, src], oldHeap[this, src]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.dst == old(this.dst)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@205.11--205.36) [122024]"}
        HasDirectPerm(PostMask, this, dst);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@205.11--205.36) [122025]"}
        HasDirectPerm(oldMask, this, dst);
    assume Seq#Equal(PostHeap[this, dst], oldHeap[this, dst]);
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of acc(this.dst[0].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@206.11--206.63) [122026]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@206.11--206.63) [122027]"}
          0 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 0) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of acc(this.dst[1].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@207.11--207.63) [122028]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@207.11--207.63) [122029]"}
          1 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (0 <= i_69 && i_69 < half) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@208.11--208.128) [122030]"}
              HasDirectPerm(PostMask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@208.11--208.128) [122031]"}
              0 < Seq#Length(PostHeap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@208.11--208.128) [122032]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 0), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@208.11--208.128) [122033]"}
              HasDirectPerm(PostMask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@208.11--208.128) [122034]"}
              i_69 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@208.11--208.128) [122035]"}
              i_69 < Seq#Length(PostHeap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@208.11--208.128) [122036]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_69), Integer_value);
          }
          assume false;
        }
      assume (forall i_9_1: int ::
        { Seq#Index(PostHeap[this, src], i_9_1) }
        0 <= i_9_1 && i_9_1 < half ==> PostHeap[Seq#Index(PostHeap[this, dst], 0), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_9_1), Integer_value]
      );
    }
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (half <= i_70 && i_70 < gsize) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@209.11--209.132) [122037]"}
              HasDirectPerm(PostMask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (trigger-z3-bug.vpr@209.11--209.132) [122038]"}
              1 < Seq#Length(PostHeap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@209.11--209.132) [122039]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 1), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@209.11--209.132) [122040]"}
              HasDirectPerm(PostMask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (trigger-z3-bug.vpr@209.11--209.132) [122041]"}
              i_70 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (trigger-z3-bug.vpr@209.11--209.132) [122042]"}
              i_70 < Seq#Length(PostHeap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@209.11--209.132) [122043]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_70), Integer_value);
          }
          assume false;
        }
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[this, src], i_11_1) }
        half <= i_11_1 && i_11_1 < gsize ==> PostHeap[Seq#Index(PostHeap[this, dst], 1), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_11_1), Integer_value]
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (trigger-z3-bug.vpr@191.11--191.19) [122044]"}
      0 <= tid;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion tid < tcount might not hold. (trigger-z3-bug.vpr@192.11--192.23) [122045]"}
      tid < tcount;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion tid == lid might not hold. (trigger-z3-bug.vpr@193.11--193.21) [122046]"}
      tid == lid;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (trigger-z3-bug.vpr@194.11--194.26) [122047]"}
      tcount == gsize;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion gid == 0 might not hold. (trigger-z3-bug.vpr@195.11--195.19) [122048]"}
      gid == 0;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.src (trigger-z3-bug.vpr@196.11--196.34) [122049]"}
      Mask[this, src] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, src];
    Mask := Mask[this, src:=Mask[this, src] - wildcard];
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion |this.src| == gsize might not hold. (trigger-z3-bug.vpr@197.11--197.30) [122050]"}
      Seq#Length(Heap[this, src]) == gsize;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.dst (trigger-z3-bug.vpr@198.11--198.34) [122051]"}
      Mask[this, dst] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, dst];
    Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion |this.dst| == gsize might not hold. (trigger-z3-bug.vpr@199.11--199.30) [122052]"}
      Seq#Length(Heap[this, dst]) == gsize;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion 4 <= gsize might not hold. (trigger-z3-bug.vpr@200.11--200.21) [122053]"}
      4 <= gsize;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion gsize % 4 == 0 might not hold. (trigger-z3-bug.vpr@201.11--201.25) [122054]"}
      gsize mod 4 == 0;
    if (*) {
      if (ix_6_1 >= 0 && (ix_6_1 < Seq#Length(Heap[this, src]) && (jx_6_1 >= 0 && (jx_6_1 < Seq#Length(Heap[this, src]) && ix_6_1 != jx_6_1)))) {
        assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.src[ix] != this.src[jx] might not hold. (trigger-z3-bug.vpr@202.11--202.139) [122055]"}
          Seq#Index(Heap[this, src], ix_6_1) != Seq#Index(Heap[this, src], jx_6_1);
      }
      assume false;
    }
    assume (forall ix_7_1: int, jx_7_1: int ::
      { Seq#Index(Heap[this, src], ix_7_1), Seq#Index(Heap[this, src], jx_7_1) }
      ix_7_1 >= 0 && (ix_7_1 < Seq#Length(Heap[this, src]) && (jx_7_1 >= 0 && (jx_7_1 < Seq#Length(Heap[this, src]) && ix_7_1 != jx_7_1))) ==> Seq#Index(Heap[this, src], ix_7_1) != Seq#Index(Heap[this, src], jx_7_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of main_post_check_1 might not hold. Fraction 1 / gsize might be negative. (trigger-z3-bug.vpr@203.12--203.92) [122056]"}
        (forall i_12_1: int ::
        { Seq#Index(Heap[this, src], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_12_1) } { Seq#Contains(Seq#Range(0, gsize), i_12_1) } { Seq#Index(Heap[this, src], i_12_1) }
        Seq#Contains(Seq#Range(0, gsize), i_12_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_12_1), Integer_value]) ==> 1 / gsize >= NoPerm
      );
    
    // -- check if receiver this.src[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (trigger-z3-bug.vpr@203.12--203.92) [122057]"}
        (forall i_12_1: int, i_12_2: int ::
        { neverTriggered21(i_12_1), neverTriggered21(i_12_2) }
        (((i_12_1 != i_12_2 && Seq#Contains(Seq#Range(0, gsize), i_12_1)) && Seq#Contains(Seq#Range(0, gsize), i_12_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_12_1) != Seq#Index(Heap[this, src], i_12_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.src[i].Integer_value (trigger-z3-bug.vpr@203.12--203.92) [122058]"}
        (forall i_12_1: int ::
        { Seq#Index(Heap[this, src], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_12_1) } { Seq#Contains(Seq#Range(0, gsize), i_12_1) } { Seq#Index(Heap[this, src], i_12_1) }
        Seq#Contains(Seq#Range(0, gsize), i_12_1) ==> Mask[Seq#Index(Heap[this, src], i_12_1), Integer_value] >= 1 / gsize
      );
    
    // -- assumptions for inverse of receiver this.src[i]
      assume (forall i_12_1: int ::
        { Seq#Index(Heap[this, src], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_12_1) } { Seq#Contains(Seq#Range(0, gsize), i_12_1) } { Seq#Index(Heap[this, src], i_12_1) }
        Seq#Contains(Seq#Range(0, gsize), i_12_1) && NoPerm < 1 / gsize ==> qpRange21(Seq#Index(Heap[this, src], i_12_1)) && invRecv21(Seq#Index(Heap[this, src], i_12_1)) == i_12_1
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        Seq#Contains(Seq#Range(0, gsize), invRecv21(o_9)) && (NoPerm < 1 / gsize && qpRange21(o_9)) ==> Seq#Index(Heap[this, src], invRecv21(o_9)) == o_9
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Integer_value] }
        (Seq#Contains(Seq#Range(0, gsize), invRecv21(o_9)) && (NoPerm < 1 / gsize && qpRange21(o_9)) ==> Seq#Index(Heap[this, src], invRecv21(o_9)) == o_9 && QPMask[o_9, Integer_value] == Mask[o_9, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv21(o_9)) && (NoPerm < 1 / gsize && qpRange21(o_9))) ==> QPMask[o_9, Integer_value] == Mask[o_9, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.src == old(this.src) might not hold. (trigger-z3-bug.vpr@204.11--204.36) [122059]"}
      Seq#Equal(Heap[this, src], oldHeap[this, src]);
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.dst == old(this.dst) might not hold. (trigger-z3-bug.vpr@205.11--205.36) [122060]"}
      Seq#Equal(Heap[this, dst], oldHeap[this, dst]);
    if (tid == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.dst[0].Integer_value (trigger-z3-bug.vpr@206.11--206.63) [122061]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
    }
    if (tid == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.dst[1].Integer_value (trigger-z3-bug.vpr@207.11--207.63) [122062]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
    }
    if (tid == 0) {
      if (*) {
        if (0 <= i_13_1 && i_13_1 < half) {
          assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@208.11--208.128) [122063]"}
            Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_13_1), Integer_value];
        }
        assume false;
      }
      assume (forall i_14_1_1: int ::
        { Seq#Index(Heap[this, src], i_14_1_1) }
        0 <= i_14_1_1 && i_14_1_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_14_1_1), Integer_value]
      );
    }
    if (tid == 0) {
      if (*) {
        if (half <= i_15_1 && i_15_1 < gsize) {
          assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.dst[1].Integer_value >= this.src[i].Integer_value might not hold. (trigger-z3-bug.vpr@209.11--209.132) [122064]"}
            Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_15_1), Integer_value];
        }
        assume false;
      }
      assume (forall i_16_1_1: int ::
        { Seq#Index(Heap[this, src], i_16_1_1) }
        half <= i_16_1_1 && i_16_1_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_16_1_1), Integer_value]
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}