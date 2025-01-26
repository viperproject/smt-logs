// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_pvl.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_pvl-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_47: Ref, f_65: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_47, f_65] }
  Heap[o_47, $allocated] ==> Heap[Heap[o_47, f_65], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_36: Ref, f_50: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_36, f_50] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_36, f_50) ==> Heap[o_36, f_50] == ExhaleHeap[o_36, f_50]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_50: (Field A B) ::
    { ExhaleHeap[o2_28, f_50] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_50] ==> Heap[o2_28, f_50] == ExhaleHeap[o2_28, f_50]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_50: (Field A B) ::
    { ExhaleHeap[o2_28, f_50] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_50] ==> Heap[o2_28, f_50] == ExhaleHeap[o2_28, f_50]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_36: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_36, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_36, $allocated] ==> ExhaleHeap[o_36, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_47: Ref, f_20: (Field A B), v: B ::
  { Heap[o_47, f_20:=v] }
  succHeap(Heap, Heap[o_47, f_20:=v])
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

function  neverTriggered1(tid_1: int): bool;
function  neverTriggered2(tid_3_1: int): bool;
function  neverTriggered3(tid_5: int): bool;
function  neverTriggered4(tid_7_2: int): bool;
function  neverTriggered5(tid_9_1: int): bool;
function  neverTriggered6(tid_11_1: int): bool;
function  neverTriggered7(tid_13_1: int): bool;
function  neverTriggered8(tid_14_1: int): bool;
function  neverTriggered9(tid_15_1: int): bool;
function  neverTriggered10(tid_16_1: int): bool;
function  neverTriggered11(tid_17_1: int): bool;
function  neverTriggered12(_x_tid_1: int): bool;
function  neverTriggered13(_x_tid_3: int): bool;
function  neverTriggered14(_x_tid_5: int): bool;
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

const unique Ref__a: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__a);
axiom !IsWandField(Ref__a);
const unique Ref__b: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__b);
axiom !IsWandField(Ref__b);
const unique Ref__c: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__c);
axiom !IsWandField(Ref__c);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of method Ref__main_main
// ==================================================

procedure Ref__main_main(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_2: Ref;
  var __flatten_4: Ref;
  var __flatten_6: Ref;
  var __flatten_8: Ref;
  var __last_barrier: int;
  var __flatten_3: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var __flatten_1: int;
  var __flatten_7: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
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
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@21.12--21.34) [134266]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@23.12--23.34) [134267]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@25.12--25.34) [134268]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@26.12--26.58) [134269]"}
        HasDirectPerm(Mask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@26.12--26.58) [134270]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@26.12--26.58) [134271]"}
        tid < Seq#Length(Heap[diz, Ref__a]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__a], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@27.12--27.58) [134272]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@27.12--27.58) [134273]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@27.12--27.58) [134274]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@27.12--27.58) [134275]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@28.12--28.58) [134276]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@28.12--28.58) [134277]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@28.12--28.58) [134278]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__c], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value == tid
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@29.12--29.53) [134279]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@29.12--29.53) [134280]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@29.12--29.53) [134281]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@29.12--29.53) [134282]"}
        HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value);
    assume Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] == tid;
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@36.11--36.33) [134283]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@38.11--38.33) [134284]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@40.11--40.33) [134285]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@41.11--41.40) [134286]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@41.11--41.40) [134287]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@42.11--42.40) [134288]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@42.11--42.40) [134289]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@43.11--43.40) [134290]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@43.11--43.40) [134291]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@44.11--44.57) [134292]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@44.11--44.57) [134293]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@44.11--44.57) [134294]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@44.11--44.57) [134295]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@45.11--45.57) [134296]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@45.11--45.57) [134297]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@45.11--45.57) [134298]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@45.11--45.57) [134299]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@46.11--46.57) [134300]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@46.11--46.57) [134301]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@46.11--46.57) [134302]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, Ref__c], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value == tid + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@47.11--47.56) [134303]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@47.11--47.56) [134304]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@47.11--47.56) [134305]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@47.11--47.56) [134306]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] == tid + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value == tid
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@48.11--48.52) [134307]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@48.11--48.52) [134308]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@48.11--48.52) [134309]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@48.11--48.52) [134310]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] == tid;
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value == tid + 2
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@49.11--49.72) [134311]"}
          HasDirectPerm(PostMask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@49.11--49.72) [134312]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@49.11--49.72) [134313]"}
          tid < Seq#Length(PostHeap[diz, Ref__c]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@49.11--49.72) [134314]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] == tid + 2;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_2, $allocated];
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_6, $allocated];
    assume Heap[__flatten_8, $allocated];
  
  // -- Translating statement: __last_barrier := 0 -- test_forward_dep_pvl.vpr@59.3--59.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := diz.Ref__a[tid] -- test_forward_dep_pvl.vpr@60.3--60.33
    
    // -- Check definedness of diz.Ref__a[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@60.3--60.33) [134315]"}
        HasDirectPerm(Mask, diz, Ref__a);
      assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@60.3--60.33) [134316]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@60.3--60.33) [134317]"}
        tid < Seq#Length(Heap[diz, Ref__a]);
    __flatten_2 := Seq#Index(Heap[diz, Ref__a], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := diz.Ref__b[tid] -- test_forward_dep_pvl.vpr@61.3--61.33
    
    // -- Check definedness of diz.Ref__b[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@61.3--61.33) [134318]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@61.3--61.33) [134319]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@61.3--61.33) [134320]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    __flatten_4 := Seq#Index(Heap[diz, Ref__b], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := __flatten_4.Ref__Integer_value + 1 -- test_forward_dep_pvl.vpr@62.3--62.52
    
    // -- Check definedness of __flatten_4.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_forward_dep_pvl.vpr@62.3--62.52) [134321]"}
        HasDirectPerm(Mask, __flatten_4, Ref__Integer_value);
    __flatten_3 := Heap[__flatten_4, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2.Ref__Integer_value := __flatten_3 -- test_forward_dep_pvl.vpr@63.3--63.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_2.Ref__Integer_value (test_forward_dep_pvl.vpr@63.3--63.48) [134322]"}
      FullPerm == Mask[__flatten_2, Ref__Integer_value];
    Heap := Heap[__flatten_2, Ref__Integer_value:=__flatten_3];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := Ref__main_barrier(diz, current_thread_id, tcount, gsize, tid,
  //   gid, lid, 1, __last_barrier) -- test_forward_dep_pvl.vpr@64.3--64.108
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion diz != null might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134323]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion current_thread_id >= 0 might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134324]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion false || __last_barrier == 0 might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134325]"}
        __last_barrier == 0;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134326]"}
        0 <= tid;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion tid < tcount might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134327]"}
        tid < tcount;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion tid == lid might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134328]"}
        tid == lid;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134329]"}
        tcount == gsize;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion gid == 0 might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134330]"}
        gid == 0;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@64.3--64.108) [134331]"}
        Mask[diz, Ref__a] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[diz, Ref__a];
      Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134332]"}
        Seq#Length(Heap[diz, Ref__a]) == tcount;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@64.3--64.108) [134333]"}
        Mask[diz, Ref__b] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[diz, Ref__b];
      Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134334]"}
        Seq#Length(Heap[diz, Ref__b]) == tcount;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@64.3--64.108) [134335]"}
        Mask[diz, Ref__c] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[diz, Ref__c];
      Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134336]"}
        Seq#Length(Heap[diz, Ref__c]) == tcount;
      if (__last_barrier == 1) {
        if (tid > 0) {
          perm := 1 / 2;
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@64.3--64.108) [134337]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_pvl.vpr@64.3--64.108) [134338]"}
              perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] - perm];
        }
        perm := 1 / 2;
        assert {:msg "  The precondition of method Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@64.3--64.108) [134339]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@64.3--64.108) [134340]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
        perm := 1 / 2;
        assert {:msg "  The precondition of method Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@64.3--64.108) [134341]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@64.3--64.108) [134342]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@64.3--64.108) [134343]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
      }
      if (__last_barrier == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@64.3--64.108) [134344]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
        perm := 1 / 2;
        assert {:msg "  The precondition of method Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@64.3--64.108) [134345]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@64.3--64.108) [134346]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@64.3--64.108) [134347]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
      }
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion diz.Ref__a[tid].Ref__Integer_value == tid + 1 might not hold. (test_forward_dep_pvl.vpr@64.3--64.108) [134348]"}
        Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == tid + 1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc __flatten_1;
    
    // -- Inhaling postcondition
      assume 0 <= tid;
      assume tid < tcount;
      assume tid == lid;
      assume tcount == gsize;
      assume gid == 0;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[diz, Ref__a]) == tcount;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[diz, Ref__b]) == tcount;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[diz, Ref__c]) == tcount;
      assume Seq#Equal(Heap[diz, Ref__a], PreCallHeap[diz, Ref__a]);
      assume Seq#Equal(Heap[diz, Ref__b], PreCallHeap[diz, Ref__b]);
      assume Seq#Equal(Heap[diz, Ref__c], PreCallHeap[diz, Ref__c]);
      if (__flatten_1 == 1) {
        if (tid > 0) {
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@64.3--64.108) [134349]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__a], tid - 1) != null;
          Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
        }
        perm := 1 / 2;
        assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@64.3--64.108) [134350]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__a], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@64.3--64.108) [134351]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, Ref__c], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      if (__flatten_1 == 0) {
        perm := FullPerm;
        assume Seq#Index(Heap[diz, Ref__a], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@64.3--64.108) [134352]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, Ref__c], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      assume __flatten_1 == 1;
      if (tid > 0) {
        assume Heap[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] == tid;
      }
      assume Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == PreCallHeap[Seq#Index(PreCallHeap[diz, Ref__a], tid), Ref__Integer_value];
      assume Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] == PreCallHeap[Seq#Index(PreCallHeap[diz, Ref__b], tid), Ref__Integer_value];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __last_barrier := __flatten_1 -- test_forward_dep_pvl.vpr@65.3--65.32
    __last_barrier := __flatten_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (tid > 0) -- test_forward_dep_pvl.vpr@66.3--71.4
    if (tid > 0) {
      
      // -- Translating statement: __flatten_6 := diz.Ref__c[tid] -- test_forward_dep_pvl.vpr@67.5--67.35
        
        // -- Check definedness of diz.Ref__c[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@67.5--67.35) [134353]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@67.5--67.35) [134354]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@67.5--67.35) [134355]"}
            tid < Seq#Length(Heap[diz, Ref__c]);
        __flatten_6 := Seq#Index(Heap[diz, Ref__c], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_8 := diz.Ref__a[tid - 1] -- test_forward_dep_pvl.vpr@68.5--68.39
        
        // -- Check definedness of diz.Ref__a[tid - 1]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@68.5--68.39) [134356]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@68.5--68.39) [134357]"}
            tid - 1 >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@68.5--68.39) [134358]"}
            tid - 1 < Seq#Length(Heap[diz, Ref__a]);
        __flatten_8 := Seq#Index(Heap[diz, Ref__a], tid - 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_7 := __flatten_8.Ref__Integer_value + 2 -- test_forward_dep_pvl.vpr@69.5--69.54
        
        // -- Check definedness of __flatten_8.Ref__Integer_value + 2
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (test_forward_dep_pvl.vpr@69.5--69.54) [134359]"}
            HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
        __flatten_7 := Heap[__flatten_8, Ref__Integer_value] + 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_6.Ref__Integer_value := __flatten_7 -- test_forward_dep_pvl.vpr@70.5--70.50
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (test_forward_dep_pvl.vpr@70.5--70.50) [134360]"}
          FullPerm == Mask[__flatten_6, Ref__Integer_value];
        Heap := Heap[__flatten_6, Ref__Integer_value:=__flatten_7];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion 0 <= tid might not hold. (test_forward_dep_pvl.vpr@30.11--30.19) [134361]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid < tcount might not hold. (test_forward_dep_pvl.vpr@31.11--31.23) [134362]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid == lid might not hold. (test_forward_dep_pvl.vpr@32.11--32.21) [134363]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tcount == gsize might not hold. (test_forward_dep_pvl.vpr@33.11--33.26) [134364]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion gid == 0 might not hold. (test_forward_dep_pvl.vpr@34.11--34.19) [134365]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@35.11--35.36) [134366]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_forward_dep_pvl.vpr@36.11--36.33) [134367]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@37.11--37.36) [134368]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_forward_dep_pvl.vpr@38.11--38.33) [134369]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@39.11--39.36) [134370]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_forward_dep_pvl.vpr@40.11--40.33) [134371]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_forward_dep_pvl.vpr@41.11--41.40) [134372]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_forward_dep_pvl.vpr@42.11--42.40) [134373]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_forward_dep_pvl.vpr@43.11--43.40) [134374]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@44.11--44.57) [134375]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@44.11--44.57) [134376]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@45.11--45.57) [134377]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@45.11--45.57) [134378]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@46.11--46.57) [134379]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a[tid].Ref__Integer_value == tid + 1 might not hold. (test_forward_dep_pvl.vpr@47.11--47.56) [134380]"}
      Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == tid + 1;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value == tid might not hold. (test_forward_dep_pvl.vpr@48.11--48.52) [134381]"}
      Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] == tid;
    if (tid > 0) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c[tid].Ref__Integer_value == tid + 2 might not hold. (test_forward_dep_pvl.vpr@49.11--49.72) [134382]"}
        Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] == tid + 2;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__main_barrier
// ==================================================

procedure Ref__main_barrier(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int, this_barrier: int, last_barrier: int) returns (sys__result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
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
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@84.12--84.34) [134383]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@86.12--86.34) [134384]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@88.12--88.34) [134385]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    if (last_barrier == 1) {
      if (tid > 0) {
        
        // -- Check definedness of acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@89.12--89.252) [134386]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@89.12--89.252) [134387]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@89.12--89.252) [134388]"}
            tid - 1 < Seq#Length(Heap[diz, Ref__a]);
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@89.12--89.252) [134389]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__a], tid - 1) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@89.12--89.252) [134390]"}
          HasDirectPerm(Mask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@89.12--89.252) [134391]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@89.12--89.252) [134392]"}
          tid < Seq#Length(Heap[diz, Ref__a]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@89.12--89.252) [134393]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__a], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@89.12--89.252) [134394]"}
          HasDirectPerm(Mask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@89.12--89.252) [134395]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@89.12--89.252) [134396]"}
          tid < Seq#Length(Heap[diz, Ref__b]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@89.12--89.252) [134397]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@89.12--89.252) [134398]"}
          HasDirectPerm(Mask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@89.12--89.252) [134399]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@89.12--89.252) [134400]"}
          tid < Seq#Length(Heap[diz, Ref__c]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, Ref__c], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (last_barrier == 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@90.12--90.182) [134401]"}
          HasDirectPerm(Mask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@90.12--90.182) [134402]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@90.12--90.182) [134403]"}
          tid < Seq#Length(Heap[diz, Ref__a]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, Ref__a], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@90.12--90.182) [134404]"}
          HasDirectPerm(Mask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@90.12--90.182) [134405]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@90.12--90.182) [134406]"}
          tid < Seq#Length(Heap[diz, Ref__b]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@90.12--90.182) [134407]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@90.12--90.182) [134408]"}
          HasDirectPerm(Mask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@90.12--90.182) [134409]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@90.12--90.182) [134410]"}
          tid < Seq#Length(Heap[diz, Ref__c]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, Ref__c], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      
      // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value == tid + 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@91.12--91.83) [134411]"}
          HasDirectPerm(Mask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@91.12--91.83) [134412]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@91.12--91.83) [134413]"}
          tid < Seq#Length(Heap[diz, Ref__a]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@91.12--91.83) [134414]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value);
      assume Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == tid + 1;
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@98.11--98.33) [134415]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@100.11--100.33) [134416]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@102.11--102.33) [134417]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@103.11--103.40) [134418]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@103.11--103.40) [134419]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@104.11--104.40) [134420]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@104.11--104.40) [134421]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@105.11--105.40) [134422]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@105.11--105.40) [134423]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    if (sys__result == 1) {
      if (tid > 0) {
        
        // -- Check definedness of acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@106.11--106.250) [134424]"}
            HasDirectPerm(PostMask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134425]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@106.11--106.250) [134426]"}
            tid - 1 < Seq#Length(PostHeap[diz, Ref__a]);
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134427]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid - 1) != null;
        PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value] + perm];
        assume state(PostHeap, PostMask);
      }
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@106.11--106.250) [134428]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134429]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@106.11--106.250) [134430]"}
          tid < Seq#Length(PostHeap[diz, Ref__a]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134431]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@106.11--106.250) [134432]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134433]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@106.11--106.250) [134434]"}
          tid < Seq#Length(PostHeap[diz, Ref__b]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134435]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@106.11--106.250) [134436]"}
          HasDirectPerm(PostMask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134437]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@106.11--106.250) [134438]"}
          tid < Seq#Length(PostHeap[diz, Ref__c]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, Ref__c], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (sys__result == 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@107.11--107.180) [134439]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@107.11--107.180) [134440]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@107.11--107.180) [134441]"}
          tid < Seq#Length(PostHeap[diz, Ref__a]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, Ref__a], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@107.11--107.180) [134442]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@107.11--107.180) [134443]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@107.11--107.180) [134444]"}
          tid < Seq#Length(PostHeap[diz, Ref__b]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@107.11--107.180) [134445]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@107.11--107.180) [134446]"}
          HasDirectPerm(PostMask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@107.11--107.180) [134447]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@107.11--107.180) [134448]"}
          tid < Seq#Length(PostHeap[diz, Ref__c]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, Ref__c], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume sys__result == this_barrier;
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      if (tid > 0) {
        
        // -- Check definedness of diz.Ref__a[tid - 1].Ref__Integer_value == tid
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@109.11--109.96) [134449]"}
            HasDirectPerm(PostMask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@109.11--109.96) [134450]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@109.11--109.96) [134451]"}
            tid - 1 < Seq#Length(PostHeap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_pvl.vpr@109.11--109.96) [134452]"}
            HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value);
        assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value] == tid;
      }
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      
      // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value == old(diz.Ref__a[tid].Ref__Integer_value)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@110.11--110.114) [134453]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@110.11--110.114) [134454]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@110.11--110.114) [134455]"}
          tid < Seq#Length(PostHeap[diz, Ref__a]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@110.11--110.114) [134456]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@110.11--110.114) [134457]"}
          HasDirectPerm(oldMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@110.11--110.114) [134458]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@110.11--110.114) [134459]"}
          tid < Seq#Length(oldHeap[diz, Ref__a]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@110.11--110.114) [134460]"}
          HasDirectPerm(oldMask, Seq#Index(oldHeap[diz, Ref__a], tid), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__a], tid), Ref__Integer_value];
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      
      // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value == old(diz.Ref__b[tid].Ref__Integer_value)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@111.11--111.114) [134461]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@111.11--111.114) [134462]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@111.11--111.114) [134463]"}
          tid < Seq#Length(PostHeap[diz, Ref__b]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@111.11--111.114) [134464]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@111.11--111.114) [134465]"}
          HasDirectPerm(oldMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@111.11--111.114) [134466]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@111.11--111.114) [134467]"}
          tid < Seq#Length(oldHeap[diz, Ref__b]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@111.11--111.114) [134468]"}
          HasDirectPerm(oldMask, Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value];
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_forward_dep_pvl.vpr@113.3--113.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_forward_dep_pvl.vpr@92.11--92.19) [134469]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion tid < tcount might not hold. (test_forward_dep_pvl.vpr@93.11--93.23) [134470]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion tid == lid might not hold. (test_forward_dep_pvl.vpr@94.11--94.21) [134471]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_forward_dep_pvl.vpr@95.11--95.26) [134472]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion gid == 0 might not hold. (test_forward_dep_pvl.vpr@96.11--96.19) [134473]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@97.11--97.36) [134474]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_forward_dep_pvl.vpr@98.11--98.33) [134475]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@99.11--99.36) [134476]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_forward_dep_pvl.vpr@100.11--100.33) [134477]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@101.11--101.36) [134478]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_forward_dep_pvl.vpr@102.11--102.33) [134479]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_forward_dep_pvl.vpr@103.11--103.40) [134480]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_forward_dep_pvl.vpr@104.11--104.40) [134481]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_forward_dep_pvl.vpr@105.11--105.40) [134482]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    if (sys__result == 1) {
      if (tid > 0) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134483]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_pvl.vpr@106.11--106.250) [134484]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] - perm];
      }
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134485]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@106.11--106.250) [134486]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@106.11--106.250) [134487]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@106.11--106.250) [134488]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@106.11--106.250) [134489]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    }
    if (sys__result == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@107.11--107.180) [134490]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@107.11--107.180) [134491]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@107.11--107.180) [134492]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@107.11--107.180) [134493]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion sys__result == this_barrier might not hold. (test_forward_dep_pvl.vpr@108.11--108.38) [134494]"}
      sys__result == this_barrier;
    if (this_barrier == 1) {
      if (tid > 0) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__a[tid - 1].Ref__Integer_value == tid might not hold. (test_forward_dep_pvl.vpr@109.11--109.96) [134495]"}
          Heap[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] == tid;
      }
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__a[tid].Ref__Integer_value == old(diz.Ref__a[tid].Ref__Integer_value) might not hold. (test_forward_dep_pvl.vpr@110.11--110.114) [134496]"}
        Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__a], tid), Ref__Integer_value];
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value == old(diz.Ref__b[tid].Ref__Integer_value) might not hold. (test_forward_dep_pvl.vpr@111.11--111.114) [134497]"}
        Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__main_resources_of_1
// ==================================================

procedure Ref__main_resources_of_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, gid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_18: int;
  var j_14: int;
  var i_3: int;
  var j_15: int;
  var i_4: int;
  var j_12: int;
  var tid_8: int;
  var QPMask: MaskType;
  var tid_4: int;
  var tid_12: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_18: int;
  var tid_7: int;
  var tid_13: int;
  var tid_14: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@122.12--122.34) [134498]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@124.12--124.34) [134499]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@126.12--126.34) [134500]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
      if (*) {
        if (i_18 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@127.12--127.136) [134501]"}
            HasDirectPerm(Mask, diz, Ref__a);
          if (i_18 < Seq#Length(Heap[diz, Ref__a])) {
            if (j_14 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@127.12--127.136) [134502]"}
                HasDirectPerm(Mask, diz, Ref__a);
            }
          }
        }
        if (i_18 >= 0 && (i_18 < Seq#Length(Heap[diz, Ref__a]) && (j_14 >= 0 && (j_14 < Seq#Length(Heap[diz, Ref__a]) && i_18 != j_14)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@127.12--127.136) [134503]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@127.12--127.136) [134504]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@127.12--127.136) [134505]"}
            i_18 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@127.12--127.136) [134506]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@127.12--127.136) [134507]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@127.12--127.136) [134508]"}
            j_14 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, Ref__a], i_1), Seq#Index(Heap[diz, Ref__a], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, Ref__a]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, Ref__a]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, Ref__a], i_1) != Seq#Index(Heap[diz, Ref__a], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__b[i], diz.Ref__b[j] } i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j])
      if (*) {
        if (i_3 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@128.12--128.136) [134509]"}
            HasDirectPerm(Mask, diz, Ref__b);
          if (i_3 < Seq#Length(Heap[diz, Ref__b])) {
            if (j_15 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@128.12--128.136) [134510]"}
                HasDirectPerm(Mask, diz, Ref__b);
            }
          }
        }
        if (i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, Ref__b]) && (j_15 >= 0 && (j_15 < Seq#Length(Heap[diz, Ref__b]) && i_3 != j_15)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@128.12--128.136) [134511]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@128.12--128.136) [134512]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@128.12--128.136) [134513]"}
            i_3 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@128.12--128.136) [134514]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@128.12--128.136) [134515]"}
            j_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@128.12--128.136) [134516]"}
            j_15 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_3: int ::
      { Seq#Index(Heap[diz, Ref__b], i_3_2), Seq#Index(Heap[diz, Ref__b], j_3) }
      i_3_2 >= 0 && (i_3_2 < Seq#Length(Heap[diz, Ref__b]) && (j_3 >= 0 && (j_3 < Seq#Length(Heap[diz, Ref__b]) && i_3_2 != j_3))) ==> Seq#Index(Heap[diz, Ref__b], i_3_2) != Seq#Index(Heap[diz, Ref__b], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
      if (*) {
        if (i_4 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@129.12--129.136) [134517]"}
            HasDirectPerm(Mask, diz, Ref__c);
          if (i_4 < Seq#Length(Heap[diz, Ref__c])) {
            if (j_12 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@129.12--129.136) [134518]"}
                HasDirectPerm(Mask, diz, Ref__c);
            }
          }
        }
        if (i_4 >= 0 && (i_4 < Seq#Length(Heap[diz, Ref__c]) && (j_12 >= 0 && (j_12 < Seq#Length(Heap[diz, Ref__c]) && i_4 != j_12)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@129.12--129.136) [134519]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@129.12--129.136) [134520]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@129.12--129.136) [134521]"}
            i_4 < Seq#Length(Heap[diz, Ref__c]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@129.12--129.136) [134522]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@129.12--129.136) [134523]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@129.12--129.136) [134524]"}
            j_12 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_5: int ::
      { Seq#Index(Heap[diz, Ref__c], i_5_1), Seq#Index(Heap[diz, Ref__c], j_5) }
      i_5_1 >= 0 && (i_5_1 < Seq#Length(Heap[diz, Ref__c]) && (j_5 >= 0 && (j_5 < Seq#Length(Heap[diz, Ref__c]) && i_5_1 != j_5))) ==> Seq#Index(Heap[diz, Ref__c], i_5_1) != Seq#Index(Heap[diz, Ref__c], j_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__a[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__a[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_8 && tid_8 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@130.13--130.110) [134525]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@130.13--130.110) [134526]"}
            tid_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@130.13--130.110) [134527]"}
            tid_8 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@130.13--130.110) [134528]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < gsize)) && (0 <= tid_1_1 && tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], tid_1) != Seq#Index(Heap[diz, Ref__a], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_1) } { Seq#Index(Heap[diz, Ref__a], tid_1) }
        (0 <= tid_1 && tid_1 < gsize) && NoPerm < FullPerm ==> qpRange1(Seq#Index(Heap[diz, Ref__a], tid_1)) && invRecv1(Seq#Index(Heap[diz, Ref__a], tid_1)) == tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < gsize) && NoPerm < FullPerm) && qpRange1(o_9) ==> Seq#Index(Heap[diz, Ref__a], invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_1) } { Seq#Index(Heap[diz, Ref__a], tid_1) }
        0 <= tid_1 && tid_1 < gsize ==> Seq#Index(Heap[diz, Ref__a], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv1(o_9) && invRecv1(o_9) < gsize) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], invRecv1(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < gsize) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__b[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= tid_4 && tid_4 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@131.13--131.110) [134529]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@131.13--131.110) [134530]"}
            tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@131.13--131.110) [134531]"}
            tid_4 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@131.13--131.110) [134532]"}
      (forall tid_3_1: int, tid_3_2: int ::
      
      (((tid_3_1 != tid_3_2 && (0 <= tid_3_1 && tid_3_1 < gsize)) && (0 <= tid_3_2 && tid_3_2 < gsize)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__b], tid_3_1) != Seq#Index(Heap[diz, Ref__b], tid_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall tid_3_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_3_1) } { Seq#Index(Heap[diz, Ref__b], tid_3_1) }
        (0 <= tid_3_1 && tid_3_1 < gsize) && NoPerm < 1 / 2 ==> qpRange2(Seq#Index(Heap[diz, Ref__b], tid_3_1)) && invRecv2(Seq#Index(Heap[diz, Ref__b], tid_3_1)) == tid_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize) && NoPerm < 1 / 2) && qpRange2(o_9) ==> Seq#Index(Heap[diz, Ref__b], invRecv2(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@131.13--131.110) [134533]"}
      (forall tid_3_1: int ::
      { Seq#Index(Heap[diz, Ref__b], tid_3_1) } { Seq#Index(Heap[diz, Ref__b], tid_3_1) }
      0 <= tid_3_1 && tid_3_1 < gsize ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_3_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_3_1) } { Seq#Index(Heap[diz, Ref__b], tid_3_1) }
        (0 <= tid_3_1 && tid_3_1 < gsize) && 1 / 2 > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize) && NoPerm < 1 / 2) && qpRange2(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__b], invRecv2(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize) && NoPerm < 1 / 2) && qpRange2(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__c[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__c[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_12 && tid_12 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@132.13--132.110) [134534]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@132.13--132.110) [134535]"}
            tid_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@132.13--132.110) [134536]"}
            tid_12 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@132.13--132.110) [134537]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize)) && (0 <= tid_5_1 && tid_5_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__c], tid_5) != Seq#Index(Heap[diz, Ref__c], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_5) } { Seq#Index(Heap[diz, Ref__c], tid_5) }
        (0 <= tid_5 && tid_5 < gsize) && NoPerm < FullPerm ==> qpRange3(Seq#Index(Heap[diz, Ref__c], tid_5)) && invRecv3(Seq#Index(Heap[diz, Ref__c], tid_5)) == tid_5
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((0 <= invRecv3(o_9) && invRecv3(o_9) < gsize) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(Heap[diz, Ref__c], invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_5) } { Seq#Index(Heap[diz, Ref__c], tid_5) }
        0 <= tid_5 && tid_5 < gsize ==> Seq#Index(Heap[diz, Ref__c], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv3(o_9) && invRecv3(o_9) < gsize) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__c], invRecv3(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv3(o_9) && invRecv3(o_9) < gsize) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@136.11--136.33) [134538]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@138.11--138.33) [134539]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@140.11--140.33) [134540]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@141.11--141.40) [134541]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@141.11--141.40) [134542]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@142.11--142.40) [134543]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@142.11--142.40) [134544]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@143.11--143.40) [134545]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@143.11--143.40) [134546]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__a[tid] } (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1 ==> acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= tid_18 && tid_18 < gsize - 1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@144.12--144.132) [134547]"}
            HasDirectPerm(PostMask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@144.12--144.132) [134548]"}
            tid_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@144.12--144.132) [134549]"}
            tid_18 < Seq#Length(PostHeap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@144.12--144.132) [134550]"}
      (forall tid_7_2: int, tid_7_3: int ::
      
      (((tid_7_2 != tid_7_3 && (0 <= tid_7_2 && tid_7_2 < gsize - 1)) && (0 <= tid_7_3 && tid_7_3 < gsize - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(PostHeap[diz, Ref__a], tid_7_2) != Seq#Index(PostHeap[diz, Ref__a], tid_7_3)
    );
    
    // -- Define Inverse Function
      assume (forall tid_7_2: int ::
        { Seq#Index(PostHeap[diz, Ref__a], tid_7_2) } { Seq#Index(PostHeap[diz, Ref__a], tid_7_2) }
        (0 <= tid_7_2 && tid_7_2 < gsize - 1) && NoPerm < 1 / 2 ==> qpRange4(Seq#Index(PostHeap[diz, Ref__a], tid_7_2)) && invRecv4(Seq#Index(PostHeap[diz, Ref__a], tid_7_2)) == tid_7_2
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize - 1) && NoPerm < 1 / 2) && qpRange4(o_9) ==> Seq#Index(PostHeap[diz, Ref__a], invRecv4(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@144.12--144.132) [134551]"}
      (forall tid_7_2: int ::
      { Seq#Index(PostHeap[diz, Ref__a], tid_7_2) } { Seq#Index(PostHeap[diz, Ref__a], tid_7_2) }
      0 <= tid_7_2 && tid_7_2 < gsize - 1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_7_2: int ::
        { Seq#Index(PostHeap[diz, Ref__a], tid_7_2) } { Seq#Index(PostHeap[diz, Ref__a], tid_7_2) }
        (0 <= tid_7_2 && tid_7_2 < gsize - 1) && 1 / 2 > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid_7_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize - 1) && NoPerm < 1 / 2) && qpRange4(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(PostHeap[diz, Ref__a], invRecv4(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize - 1) && NoPerm < 1 / 2) && qpRange4(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__a[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= tid_7 && tid_7 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@145.12--145.109) [134552]"}
            HasDirectPerm(PostMask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@145.12--145.109) [134553]"}
            tid_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@145.12--145.109) [134554]"}
            tid_7 < Seq#Length(PostHeap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@145.12--145.109) [134555]"}
      (forall tid_9_1: int, tid_9_2: int ::
      
      (((tid_9_1 != tid_9_2 && (0 <= tid_9_1 && tid_9_1 < gsize)) && (0 <= tid_9_2 && tid_9_2 < gsize)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(PostHeap[diz, Ref__a], tid_9_1) != Seq#Index(PostHeap[diz, Ref__a], tid_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall tid_9_1: int ::
        { Seq#Index(PostHeap[diz, Ref__a], tid_9_1) } { Seq#Index(PostHeap[diz, Ref__a], tid_9_1) }
        (0 <= tid_9_1 && tid_9_1 < gsize) && NoPerm < 1 / 2 ==> qpRange5(Seq#Index(PostHeap[diz, Ref__a], tid_9_1)) && invRecv5(Seq#Index(PostHeap[diz, Ref__a], tid_9_1)) == tid_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        ((0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && NoPerm < 1 / 2) && qpRange5(o_9) ==> Seq#Index(PostHeap[diz, Ref__a], invRecv5(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@145.12--145.109) [134556]"}
      (forall tid_9_1: int ::
      { Seq#Index(PostHeap[diz, Ref__a], tid_9_1) } { Seq#Index(PostHeap[diz, Ref__a], tid_9_1) }
      0 <= tid_9_1 && tid_9_1 < gsize ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_9_1: int ::
        { Seq#Index(PostHeap[diz, Ref__a], tid_9_1) } { Seq#Index(PostHeap[diz, Ref__a], tid_9_1) }
        (0 <= tid_9_1 && tid_9_1 < gsize) && 1 / 2 > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && NoPerm < 1 / 2) && qpRange5(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(PostHeap[diz, Ref__a], invRecv5(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && NoPerm < 1 / 2) && qpRange5(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__b[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= tid_13 && tid_13 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@146.12--146.109) [134557]"}
            HasDirectPerm(PostMask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@146.12--146.109) [134558]"}
            tid_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@146.12--146.109) [134559]"}
            tid_13 < Seq#Length(PostHeap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@146.12--146.109) [134560]"}
      (forall tid_11_1: int, tid_11_2: int ::
      
      (((tid_11_1 != tid_11_2 && (0 <= tid_11_1 && tid_11_1 < gsize)) && (0 <= tid_11_2 && tid_11_2 < gsize)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(PostHeap[diz, Ref__b], tid_11_1) != Seq#Index(PostHeap[diz, Ref__b], tid_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall tid_11_1: int ::
        { Seq#Index(PostHeap[diz, Ref__b], tid_11_1) } { Seq#Index(PostHeap[diz, Ref__b], tid_11_1) }
        (0 <= tid_11_1 && tid_11_1 < gsize) && NoPerm < 1 / 2 ==> qpRange6(Seq#Index(PostHeap[diz, Ref__b], tid_11_1)) && invRecv6(Seq#Index(PostHeap[diz, Ref__b], tid_11_1)) == tid_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        ((0 <= invRecv6(o_9) && invRecv6(o_9) < gsize) && NoPerm < 1 / 2) && qpRange6(o_9) ==> Seq#Index(PostHeap[diz, Ref__b], invRecv6(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@146.12--146.109) [134561]"}
      (forall tid_11_1: int ::
      { Seq#Index(PostHeap[diz, Ref__b], tid_11_1) } { Seq#Index(PostHeap[diz, Ref__b], tid_11_1) }
      0 <= tid_11_1 && tid_11_1 < gsize ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_11_1: int ::
        { Seq#Index(PostHeap[diz, Ref__b], tid_11_1) } { Seq#Index(PostHeap[diz, Ref__b], tid_11_1) }
        (0 <= tid_11_1 && tid_11_1 < gsize) && 1 / 2 > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv6(o_9) && invRecv6(o_9) < gsize) && NoPerm < 1 / 2) && qpRange6(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(PostHeap[diz, Ref__b], invRecv6(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv6(o_9) && invRecv6(o_9) < gsize) && NoPerm < 1 / 2) && qpRange6(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__c[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__c[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_14 && tid_14 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@147.12--147.109) [134562]"}
            HasDirectPerm(PostMask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@147.12--147.109) [134563]"}
            tid_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@147.12--147.109) [134564]"}
            tid_14 < Seq#Length(PostHeap[diz, Ref__c]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@147.12--147.109) [134565]"}
      (forall tid_13_1: int, tid_13_2: int ::
      
      (((tid_13_1 != tid_13_2 && (0 <= tid_13_1 && tid_13_1 < gsize)) && (0 <= tid_13_2 && tid_13_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid_13_1) != Seq#Index(PostHeap[diz, Ref__c], tid_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall tid_13_1: int ::
        { Seq#Index(PostHeap[diz, Ref__c], tid_13_1) } { Seq#Index(PostHeap[diz, Ref__c], tid_13_1) }
        (0 <= tid_13_1 && tid_13_1 < gsize) && NoPerm < FullPerm ==> qpRange7(Seq#Index(PostHeap[diz, Ref__c], tid_13_1)) && invRecv7(Seq#Index(PostHeap[diz, Ref__c], tid_13_1)) == tid_13_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        ((0 <= invRecv7(o_9) && invRecv7(o_9) < gsize) && NoPerm < FullPerm) && qpRange7(o_9) ==> Seq#Index(PostHeap[diz, Ref__c], invRecv7(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_13_1: int ::
        { Seq#Index(PostHeap[diz, Ref__c], tid_13_1) } { Seq#Index(PostHeap[diz, Ref__c], tid_13_1) }
        0 <= tid_13_1 && tid_13_1 < gsize ==> Seq#Index(PostHeap[diz, Ref__c], tid_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv7(o_9) && invRecv7(o_9) < gsize) && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, Ref__c], invRecv7(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv7(o_9) && invRecv7(o_9) < gsize) && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (test_forward_dep_pvl.vpr@133.11--133.26) [134566]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (test_forward_dep_pvl.vpr@134.11--134.19) [134567]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@135.11--135.36) [134568]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_forward_dep_pvl.vpr@136.11--136.33) [134569]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@137.11--137.36) [134570]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_forward_dep_pvl.vpr@138.11--138.33) [134571]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@139.11--139.36) [134572]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_forward_dep_pvl.vpr@140.11--140.33) [134573]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_forward_dep_pvl.vpr@141.11--141.40) [134574]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_forward_dep_pvl.vpr@142.11--142.40) [134575]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_forward_dep_pvl.vpr@143.11--143.40) [134576]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@144.12--144.132) [134577]"}
        (forall tid_14_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_14_1) } { Seq#Index(Heap[diz, Ref__a], tid_14_1) }
        (0 <= tid_14_1 && tid_14_1 < gsize - 1) && dummyFunction(Heap[Seq#Index(Heap[diz, Ref__a], tid_14_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver diz.Ref__a[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@144.12--144.132) [134578]"}
        (forall tid_14_1: int, tid_14_2: int ::
        { neverTriggered8(tid_14_1), neverTriggered8(tid_14_2) }
        (((tid_14_1 != tid_14_2 && (0 <= tid_14_1 && tid_14_1 < gsize - 1)) && (0 <= tid_14_2 && tid_14_2 < gsize - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__a], tid_14_1) != Seq#Index(Heap[diz, Ref__a], tid_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@144.12--144.132) [134579]"}
        (forall tid_14_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_14_1) } { Seq#Index(Heap[diz, Ref__a], tid_14_1) }
        0 <= tid_14_1 && tid_14_1 < gsize - 1 ==> Mask[Seq#Index(Heap[diz, Ref__a], tid_14_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver diz.Ref__a[tid]
      assume (forall tid_14_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_14_1) } { Seq#Index(Heap[diz, Ref__a], tid_14_1) }
        (0 <= tid_14_1 && tid_14_1 < gsize - 1) && NoPerm < 1 / 2 ==> qpRange8(Seq#Index(Heap[diz, Ref__a], tid_14_1)) && invRecv8(Seq#Index(Heap[diz, Ref__a], tid_14_1)) == tid_14_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (0 <= invRecv8(o_9) && invRecv8(o_9) < gsize - 1) && (NoPerm < 1 / 2 && qpRange8(o_9)) ==> Seq#Index(Heap[diz, Ref__a], invRecv8(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv8(o_9) && invRecv8(o_9) < gsize - 1) && (NoPerm < 1 / 2 && qpRange8(o_9)) ==> Seq#Index(Heap[diz, Ref__a], invRecv8(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv8(o_9) && invRecv8(o_9) < gsize - 1) && (NoPerm < 1 / 2 && qpRange8(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@145.12--145.109) [134580]"}
        (forall tid_15_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_15_1) } { Seq#Index(Heap[diz, Ref__a], tid_15_1) }
        (0 <= tid_15_1 && tid_15_1 < gsize) && dummyFunction(Heap[Seq#Index(Heap[diz, Ref__a], tid_15_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver diz.Ref__a[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@145.12--145.109) [134581]"}
        (forall tid_15_1: int, tid_15_2: int ::
        { neverTriggered9(tid_15_1), neverTriggered9(tid_15_2) }
        (((tid_15_1 != tid_15_2 && (0 <= tid_15_1 && tid_15_1 < gsize)) && (0 <= tid_15_2 && tid_15_2 < gsize)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__a], tid_15_1) != Seq#Index(Heap[diz, Ref__a], tid_15_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@145.12--145.109) [134582]"}
        (forall tid_15_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_15_1) } { Seq#Index(Heap[diz, Ref__a], tid_15_1) }
        0 <= tid_15_1 && tid_15_1 < gsize ==> Mask[Seq#Index(Heap[diz, Ref__a], tid_15_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver diz.Ref__a[tid]
      assume (forall tid_15_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_15_1) } { Seq#Index(Heap[diz, Ref__a], tid_15_1) }
        (0 <= tid_15_1 && tid_15_1 < gsize) && NoPerm < 1 / 2 ==> qpRange9(Seq#Index(Heap[diz, Ref__a], tid_15_1)) && invRecv9(Seq#Index(Heap[diz, Ref__a], tid_15_1)) == tid_15_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (0 <= invRecv9(o_9) && invRecv9(o_9) < gsize) && (NoPerm < 1 / 2 && qpRange9(o_9)) ==> Seq#Index(Heap[diz, Ref__a], invRecv9(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < gsize) && (NoPerm < 1 / 2 && qpRange9(o_9)) ==> Seq#Index(Heap[diz, Ref__a], invRecv9(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv9(o_9) && invRecv9(o_9) < gsize) && (NoPerm < 1 / 2 && qpRange9(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@146.12--146.109) [134583]"}
        (forall tid_16_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_16_1) } { Seq#Index(Heap[diz, Ref__b], tid_16_1) }
        (0 <= tid_16_1 && tid_16_1 < gsize) && dummyFunction(Heap[Seq#Index(Heap[diz, Ref__b], tid_16_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver diz.Ref__b[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@146.12--146.109) [134584]"}
        (forall tid_16_1: int, tid_16_2: int ::
        { neverTriggered10(tid_16_1), neverTriggered10(tid_16_2) }
        (((tid_16_1 != tid_16_2 && (0 <= tid_16_1 && tid_16_1 < gsize)) && (0 <= tid_16_2 && tid_16_2 < gsize)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__b], tid_16_1) != Seq#Index(Heap[diz, Ref__b], tid_16_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@146.12--146.109) [134585]"}
        (forall tid_16_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_16_1) } { Seq#Index(Heap[diz, Ref__b], tid_16_1) }
        0 <= tid_16_1 && tid_16_1 < gsize ==> Mask[Seq#Index(Heap[diz, Ref__b], tid_16_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver diz.Ref__b[tid]
      assume (forall tid_16_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_16_1) } { Seq#Index(Heap[diz, Ref__b], tid_16_1) }
        (0 <= tid_16_1 && tid_16_1 < gsize) && NoPerm < 1 / 2 ==> qpRange10(Seq#Index(Heap[diz, Ref__b], tid_16_1)) && invRecv10(Seq#Index(Heap[diz, Ref__b], tid_16_1)) == tid_16_1
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (0 <= invRecv10(o_9) && invRecv10(o_9) < gsize) && (NoPerm < 1 / 2 && qpRange10(o_9)) ==> Seq#Index(Heap[diz, Ref__b], invRecv10(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < gsize) && (NoPerm < 1 / 2 && qpRange10(o_9)) ==> Seq#Index(Heap[diz, Ref__b], invRecv10(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv10(o_9) && invRecv10(o_9) < gsize) && (NoPerm < 1 / 2 && qpRange10(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.Ref__c[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@147.12--147.109) [134586]"}
        (forall tid_17_1: int, tid_17_2: int ::
        { neverTriggered11(tid_17_1), neverTriggered11(tid_17_2) }
        (((tid_17_1 != tid_17_2 && (0 <= tid_17_1 && tid_17_1 < gsize)) && (0 <= tid_17_2 && tid_17_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__c], tid_17_1) != Seq#Index(Heap[diz, Ref__c], tid_17_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@147.12--147.109) [134587]"}
        (forall tid_17_1: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_17_1) } { Seq#Index(Heap[diz, Ref__c], tid_17_1) }
        0 <= tid_17_1 && tid_17_1 < gsize ==> Mask[Seq#Index(Heap[diz, Ref__c], tid_17_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.Ref__c[tid]
      assume (forall tid_17_1: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_17_1) } { Seq#Index(Heap[diz, Ref__c], tid_17_1) }
        (0 <= tid_17_1 && tid_17_1 < gsize) && NoPerm < FullPerm ==> qpRange11(Seq#Index(Heap[diz, Ref__c], tid_17_1)) && invRecv11(Seq#Index(Heap[diz, Ref__c], tid_17_1)) == tid_17_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (0 <= invRecv11(o_9) && invRecv11(o_9) < gsize) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(Heap[diz, Ref__c], invRecv11(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < gsize) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(Heap[diz, Ref__c], invRecv11(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv11(o_9) && invRecv11(o_9) < gsize) && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
}

// ==================================================
// Translation of method Ref__main_post_check_1
// ==================================================

procedure Ref__main_post_check_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_9: int;
  var j_7: int;
  var i_10: int;
  var j_8: int;
  var i_17: int;
  var j_22: int;
  var _x_tid_16: int;
  var QPMask: MaskType;
  var _x_tid_9: int;
  var _x_tid_10: int;
  var _x_tid_11: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
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
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@160.12--160.34) [134588]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@162.12--162.34) [134589]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@164.12--164.34) [134590]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
      if (*) {
        if (i_9 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@165.12--165.136) [134591]"}
            HasDirectPerm(Mask, diz, Ref__a);
          if (i_9 < Seq#Length(Heap[diz, Ref__a])) {
            if (j_7 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@165.12--165.136) [134592]"}
                HasDirectPerm(Mask, diz, Ref__a);
            }
          }
        }
        if (i_9 >= 0 && (i_9 < Seq#Length(Heap[diz, Ref__a]) && (j_7 >= 0 && (j_7 < Seq#Length(Heap[diz, Ref__a]) && i_9 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@165.12--165.136) [134593]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@165.12--165.136) [134594]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@165.12--165.136) [134595]"}
            i_9 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@165.12--165.136) [134596]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@165.12--165.136) [134597]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@165.12--165.136) [134598]"}
            j_7 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, Ref__a], i_1), Seq#Index(Heap[diz, Ref__a], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, Ref__a]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, Ref__a]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, Ref__a], i_1) != Seq#Index(Heap[diz, Ref__a], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__b[i], diz.Ref__b[j] } i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j])
      if (*) {
        if (i_10 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@166.12--166.136) [134599]"}
            HasDirectPerm(Mask, diz, Ref__b);
          if (i_10 < Seq#Length(Heap[diz, Ref__b])) {
            if (j_8 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@166.12--166.136) [134600]"}
                HasDirectPerm(Mask, diz, Ref__b);
            }
          }
        }
        if (i_10 >= 0 && (i_10 < Seq#Length(Heap[diz, Ref__b]) && (j_8 >= 0 && (j_8 < Seq#Length(Heap[diz, Ref__b]) && i_10 != j_8)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@166.12--166.136) [134601]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@166.12--166.136) [134602]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@166.12--166.136) [134603]"}
            i_10 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@166.12--166.136) [134604]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@166.12--166.136) [134605]"}
            j_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@166.12--166.136) [134606]"}
            j_8 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_3: int ::
      { Seq#Index(Heap[diz, Ref__b], i_3_2), Seq#Index(Heap[diz, Ref__b], j_3) }
      i_3_2 >= 0 && (i_3_2 < Seq#Length(Heap[diz, Ref__b]) && (j_3 >= 0 && (j_3 < Seq#Length(Heap[diz, Ref__b]) && i_3_2 != j_3))) ==> Seq#Index(Heap[diz, Ref__b], i_3_2) != Seq#Index(Heap[diz, Ref__b], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
      if (*) {
        if (i_17 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@167.12--167.136) [134607]"}
            HasDirectPerm(Mask, diz, Ref__c);
          if (i_17 < Seq#Length(Heap[diz, Ref__c])) {
            if (j_22 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@167.12--167.136) [134608]"}
                HasDirectPerm(Mask, diz, Ref__c);
            }
          }
        }
        if (i_17 >= 0 && (i_17 < Seq#Length(Heap[diz, Ref__c]) && (j_22 >= 0 && (j_22 < Seq#Length(Heap[diz, Ref__c]) && i_17 != j_22)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@167.12--167.136) [134609]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@167.12--167.136) [134610]"}
            i_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@167.12--167.136) [134611]"}
            i_17 < Seq#Length(Heap[diz, Ref__c]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@167.12--167.136) [134612]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@167.12--167.136) [134613]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@167.12--167.136) [134614]"}
            j_22 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_5: int ::
      { Seq#Index(Heap[diz, Ref__c], i_5_1), Seq#Index(Heap[diz, Ref__c], j_5) }
      i_5_1 >= 0 && (i_5_1 < Seq#Length(Heap[diz, Ref__c]) && (j_5 >= 0 && (j_5 < Seq#Length(Heap[diz, Ref__c]) && i_5_1 != j_5))) ==> Seq#Index(Heap[diz, Ref__c], i_5_1) != Seq#Index(Heap[diz, Ref__c], j_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__a[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__a[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_16 && _x_tid_16 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@168.13--168.122) [134615]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@168.13--168.122) [134616]"}
            _x_tid_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@168.13--168.122) [134617]"}
            _x_tid_16 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[_x_tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@168.13--168.122) [134618]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], _x_tid_1) != Seq#Index(Heap[diz, Ref__a], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], _x_tid_1) } { Seq#Index(Heap[diz, Ref__a], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange12(Seq#Index(Heap[diz, Ref__a], _x_tid_1)) && invRecv12(Seq#Index(Heap[diz, Ref__a], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < gsize) && NoPerm < FullPerm) && qpRange12(o_9) ==> Seq#Index(Heap[diz, Ref__a], invRecv12(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], _x_tid_1) } { Seq#Index(Heap[diz, Ref__a], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, Ref__a], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv12(o_9) && invRecv12(o_9) < gsize) && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], invRecv12(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < gsize) && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__b[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__b[_x_tid].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= _x_tid_9 && _x_tid_9 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@169.13--169.122) [134619]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@169.13--169.122) [134620]"}
            _x_tid_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@169.13--169.122) [134621]"}
            _x_tid_9 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[_x_tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@169.13--169.122) [134622]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__b], _x_tid_3) != Seq#Index(Heap[diz, Ref__b], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < 1 / 2 ==> qpRange13(Seq#Index(Heap[diz, Ref__b], _x_tid_3)) && invRecv13(Seq#Index(Heap[diz, Ref__b], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((0 <= invRecv13(o_9) && invRecv13(o_9) < gsize) && NoPerm < 1 / 2) && qpRange13(o_9) ==> Seq#Index(Heap[diz, Ref__b], invRecv13(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@169.13--169.122) [134623]"}
      (forall _x_tid_3: int ::
      { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
      0 <= _x_tid_3 && _x_tid_3 < gsize ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && 1 / 2 > NoPerm ==> Seq#Index(Heap[diz, Ref__b], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv13(o_9) && invRecv13(o_9) < gsize) && NoPerm < 1 / 2) && qpRange13(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__b], invRecv13(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv13(o_9) && invRecv13(o_9) < gsize) && NoPerm < 1 / 2) && qpRange13(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__c[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__c[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_10 && _x_tid_10 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@170.13--170.122) [134624]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@170.13--170.122) [134625]"}
            _x_tid_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@170.13--170.122) [134626]"}
            _x_tid_10 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[_x_tid].Ref__Integer_value might not be injective. (test_forward_dep_pvl.vpr@170.13--170.122) [134627]"}
      (forall _x_tid_5: int, _x_tid_5_1: int ::
      
      (((_x_tid_5 != _x_tid_5_1 && (0 <= _x_tid_5 && _x_tid_5 < gsize)) && (0 <= _x_tid_5_1 && _x_tid_5_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__c], _x_tid_5) != Seq#Index(Heap[diz, Ref__c], _x_tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
        (0 <= _x_tid_5 && _x_tid_5 < gsize) && NoPerm < FullPerm ==> qpRange14(Seq#Index(Heap[diz, Ref__c], _x_tid_5)) && invRecv14(Seq#Index(Heap[diz, Ref__c], _x_tid_5)) == _x_tid_5
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        ((0 <= invRecv14(o_9) && invRecv14(o_9) < gsize) && NoPerm < FullPerm) && qpRange14(o_9) ==> Seq#Index(Heap[diz, Ref__c], invRecv14(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
        0 <= _x_tid_5 && _x_tid_5 < gsize ==> Seq#Index(Heap[diz, Ref__c], _x_tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv14(o_9) && invRecv14(o_9) < gsize) && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__c], invRecv14(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv14(o_9) && invRecv14(o_9) < gsize) && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__a[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> diz.Ref__a[_x_tid].Ref__Integer_value == _x_tid + 1)
      if (*) {
        if (0 <= _x_tid_11 && _x_tid_11 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@171.13--171.126) [134628]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@171.13--171.126) [134629]"}
            _x_tid_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@171.13--171.126) [134630]"}
            _x_tid_11 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[_x_tid].Ref__Integer_value (test_forward_dep_pvl.vpr@171.13--171.126) [134631]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__a], _x_tid_11), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall _x_tid_7: int ::
      { Seq#Index(Heap[diz, Ref__a], _x_tid_7) }
      0 <= _x_tid_7 && _x_tid_7 < gsize ==> Heap[Seq#Index(Heap[diz, Ref__a], _x_tid_7), Ref__Integer_value] == _x_tid_7 + 1
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@178.11--178.33) [134632]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@180.11--180.33) [134633]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@182.11--182.33) [134634]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@183.11--183.40) [134635]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@183.11--183.40) [134636]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@184.11--184.40) [134637]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@184.11--184.40) [134638]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@185.11--185.40) [134639]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@185.11--185.40) [134640]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@186.11--186.75) [134641]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@186.11--186.75) [134642]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@186.11--186.75) [134643]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__a]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@186.11--186.75) [134644]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid - 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@187.11--187.57) [134645]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@187.11--187.57) [134646]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@187.11--187.57) [134647]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@187.11--187.57) [134648]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@188.11--188.57) [134649]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@188.11--188.57) [134650]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@188.11--188.57) [134651]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@188.11--188.57) [134652]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@189.11--189.57) [134653]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_pvl.vpr@189.11--189.57) [134654]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_pvl.vpr@189.11--189.57) [134655]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, Ref__c], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of diz.Ref__a[tid - 1].Ref__Integer_value == tid
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@190.11--190.72) [134656]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@190.11--190.72) [134657]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@190.11--190.72) [134658]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__a]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_pvl.vpr@190.11--190.72) [134659]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value] == tid;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value == old(diz.Ref__a[tid].Ref__Integer_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@191.11--191.88) [134660]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@191.11--191.88) [134661]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@191.11--191.88) [134662]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@191.11--191.88) [134663]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@191.11--191.88) [134664]"}
        HasDirectPerm(oldMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_pvl.vpr@191.11--191.88) [134665]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_pvl.vpr@191.11--191.88) [134666]"}
        tid < Seq#Length(oldHeap[diz, Ref__a]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@191.11--191.88) [134667]"}
        HasDirectPerm(oldMask, Seq#Index(oldHeap[diz, Ref__a], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__a], tid), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value == old(diz.Ref__b[tid].Ref__Integer_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@192.11--192.88) [134668]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@192.11--192.88) [134669]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@192.11--192.88) [134670]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@192.11--192.88) [134671]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@192.11--192.88) [134672]"}
        HasDirectPerm(oldMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_pvl.vpr@192.11--192.88) [134673]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_pvl.vpr@192.11--192.88) [134674]"}
        tid < Seq#Length(oldHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@192.11--192.88) [134675]"}
        HasDirectPerm(oldMask, Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (test_forward_dep_pvl.vpr@172.11--172.19) [134676]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tid < tcount might not hold. (test_forward_dep_pvl.vpr@173.11--173.23) [134677]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tid == lid might not hold. (test_forward_dep_pvl.vpr@174.11--174.21) [134678]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (test_forward_dep_pvl.vpr@175.11--175.26) [134679]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion gid == 0 might not hold. (test_forward_dep_pvl.vpr@176.11--176.19) [134680]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__a (test_forward_dep_pvl.vpr@177.11--177.36) [134681]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_forward_dep_pvl.vpr@178.11--178.33) [134682]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__b (test_forward_dep_pvl.vpr@179.11--179.36) [134683]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_forward_dep_pvl.vpr@180.11--180.33) [134684]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__c (test_forward_dep_pvl.vpr@181.11--181.36) [134685]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_forward_dep_pvl.vpr@182.11--182.33) [134686]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_forward_dep_pvl.vpr@183.11--183.40) [134687]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_forward_dep_pvl.vpr@184.11--184.40) [134688]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_forward_dep_pvl.vpr@185.11--185.40) [134689]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    if (tid > 0) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@186.11--186.75) [134690]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_pvl.vpr@186.11--186.75) [134691]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] - perm];
    }
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@187.11--187.57) [134692]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@187.11--187.57) [134693]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_pvl.vpr@188.11--188.57) [134694]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@188.11--188.57) [134695]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_pvl.vpr@189.11--189.57) [134696]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    if (tid > 0) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__a[tid - 1].Ref__Integer_value == tid might not hold. (test_forward_dep_pvl.vpr@190.11--190.72) [134697]"}
        Heap[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] == tid;
    }
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__a[tid].Ref__Integer_value == old(diz.Ref__a[tid].Ref__Integer_value) might not hold. (test_forward_dep_pvl.vpr@191.11--191.88) [134698]"}
      Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__a], tid), Ref__Integer_value];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value == old(diz.Ref__b[tid].Ref__Integer_value) might not hold. (test_forward_dep_pvl.vpr@192.11--192.88) [134699]"}
      Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}