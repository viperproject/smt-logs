// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_auto.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_auto-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_36: Ref, f_50: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_36, f_50] }
  Heap[o_36, $allocated] ==> Heap[Heap[o_36, f_50], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_37: Ref, f_18: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_37, f_18] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_37, f_18) ==> Heap[o_37, f_18] == ExhaleHeap[o_37, f_18]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_17), ExhaleHeap[null, PredicateMaskField(pm_f_17)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsPredicateField(pm_f_17) ==> Heap[null, PredicateMaskField(pm_f_17)] == ExhaleHeap[null, PredicateMaskField(pm_f_17)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_17) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsPredicateField(pm_f_17) ==> (forall <A, B> o2_17: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_17, f_18] }
    Heap[null, PredicateMaskField(pm_f_17)][o2_17, f_18] ==> Heap[o2_17, f_18] == ExhaleHeap[o2_17, f_18]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_17), ExhaleHeap[null, WandMaskField(pm_f_17)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsWandField(pm_f_17) ==> Heap[null, WandMaskField(pm_f_17)] == ExhaleHeap[null, WandMaskField(pm_f_17)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_17) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsWandField(pm_f_17) ==> (forall <A, B> o2_17: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_17, f_18] }
    Heap[null, WandMaskField(pm_f_17)][o2_17, f_18] ==> Heap[o2_17, f_18] == ExhaleHeap[o2_17, f_18]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_37: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_37, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_37, $allocated] ==> ExhaleHeap[o_37, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_36: Ref, f_29: (Field A B), v: B ::
  { Heap[o_36, f_29:=v] }
  succHeap(Heap, Heap[o_36, f_29:=v])
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
function  neverTriggered5(tid_8_1: int): bool;
function  neverTriggered6(tid_9_1: int): bool;
function  neverTriggered7(tid_1: int): bool;
function  neverTriggered8(tid_3_1: int): bool;
function  neverTriggered9(tid_5: int): bool;
function  neverTriggered10(tid_7_2: int): bool;
function  neverTriggered11(tid_8_1: int): bool;
function  neverTriggered12(tid_9_1: int): bool;
function  neverTriggered13(_x_tid_1: int): bool;
function  neverTriggered14(_x_tid_3: int): bool;
function  neverTriggered15(_x_tid_1: int): bool;
function  neverTriggered16(_x_tid_3: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: demo__bin
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

const unique demo__ar: Field NormalField (Seq Ref);
axiom !IsPredicateField(demo__ar);
axiom !IsWandField(demo__ar);
const unique demo__tmp: Field NormalField (Seq Ref);
axiom !IsPredicateField(demo__tmp);
axiom !IsWandField(demo__tmp);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of function demo__bin
// ==================================================

// Uninterpreted function definitions
function  demo__bin(Heap: HeapType, N: int, k: int): int;
function  demo__bin'(Heap: HeapType, N: int, k: int): int;
axiom (forall Heap: HeapType, N: int, k: int ::
  { demo__bin(Heap, N, k) }
  demo__bin(Heap, N, k) == demo__bin'(Heap, N, k) && dummyFunction(demo__bin#triggerStateless(N, k))
);
axiom (forall Heap: HeapType, N: int, k: int ::
  { demo__bin'(Heap, N, k) }
  dummyFunction(demo__bin#triggerStateless(N, k))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, N: int, k: int ::
  { state(Heap, Mask), demo__bin(Heap, N, k) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (N >= 0 && 0 <= k) && k <= N ==> demo__bin(Heap, N, k) == (if k == 0 || (k == N || N <= 0) then 1 else demo__bin'(Heap, N - 1, k - 1) + demo__bin'(Heap, N - 1, k))
);

// Framing axioms
function  demo__bin#frame(frame: FrameType, N: int, k: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, N: int, k: int ::
  { state(Heap, Mask), demo__bin'(Heap, N, k) }
  state(Heap, Mask) ==> demo__bin'(Heap, N, k) == demo__bin#frame(EmptyFrame, N, k)
);

// Trigger function (controlling recursive postconditions)
function  demo__bin#trigger(frame: FrameType, N: int, k: int): bool;

// State-independent trigger function
function  demo__bin#triggerStateless(N: int, k: int): int;

// Check contract well-formedness and postcondition
procedure demo__bin#definedness(N: int, k: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume N >= 0;
    assume state(Heap, Mask);
    assume 0 <= k;
    assume state(Heap, Mask);
    assume k <= N;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (k == 0 || (k == N || N <= 0) ? 1 : demo__bin(N - 1, k - 1) + demo__bin(N - 1, k))
      if (k == 0 || (k == N || N <= 0)) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_auto.vpr@15.43--15.66) [128979]"}
            N - 1 >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= k - 1 might not hold. (test_binomial_auto.vpr@15.43--15.66) [128980]"}
            0 <= k - 1;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion k - 1 <= N - 1 might not hold. (test_binomial_auto.vpr@15.43--15.66) [128981]"}
            k - 1 <= N - 1;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume demo__bin#trigger(EmptyFrame, N - 1, k - 1);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_auto.vpr@15.69--15.88) [128982]"}
            N - 1 >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= k might not hold. (test_binomial_auto.vpr@15.69--15.88) [128983]"}
            0 <= k;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion k <= N - 1 might not hold. (test_binomial_auto.vpr@15.69--15.88) [128984]"}
            k <= N - 1;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume demo__bin#trigger(EmptyFrame, N - 1, k);
        }
      }
  
  // -- Translate function body
    Result := (if k == 0 || (k == N || N <= 0) then 1 else demo__bin(Heap, N - 1, k - 1) + demo__bin(Heap, N - 1, k));
}

// ==================================================
// Translation of method demo__main_main
// ==================================================

procedure demo__main_main(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var __flatten_3: Ref;
  var __flatten_5: Ref;
  var __flatten_7: Ref;
  var __flatten_9: Ref;
  var __flatten_11: Ref;
  var __flatten_12: Ref;
  var __last_barrier: int;
  var N: int;
  var __flatten_4: int;
  var ExhaleHeap: HeapType;
  var __flatten_10: int;
  var __flatten_6: int;
  var __flatten_1: int;
  var __flatten_2: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
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
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@27.12--27.35) [128985]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@29.12--29.36) [128986]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@31.12--31.60) [128987]"}
        HasDirectPerm(Mask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@31.12--31.60) [128988]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@31.12--31.60) [128989]"}
        tid < Seq#Length(Heap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, demo__ar], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@32.12--32.61) [128990]"}
        HasDirectPerm(Mask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@32.12--32.61) [128991]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@32.12--32.61) [128992]"}
        tid < Seq#Length(Heap[diz, demo__tmp]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
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
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@39.11--39.34) [128993]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@41.11--41.35) [128994]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@42.11--42.44) [128995]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@42.11--42.44) [128996]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@43.11--43.46) [128997]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@43.11--43.46) [128998]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@45.11--45.59) [128999]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@45.11--45.59) [129000]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@45.11--45.59) [129001]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(gsize - 1, tid)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@46.11--46.76) [129002]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@46.11--46.76) [129003]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@46.11--46.76) [129004]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@46.11--46.76) [129005]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion gsize - 1 >= 0 might not hold. (test_binomial_auto.vpr@46.51--46.76) [129006]"}
          gsize - 1 >= 0;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@46.51--46.76) [129007]"}
          0 <= tid;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= gsize - 1 might not hold. (test_binomial_auto.vpr@46.51--46.76) [129008]"}
          tid <= gsize - 1;
        // Stop execution
        assume false;
      }
    assume PostHeap[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(PostHeap, gsize - 1, tid);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_3, $allocated];
    assume Heap[__flatten_5, $allocated];
    assume Heap[__flatten_7, $allocated];
    assume Heap[__flatten_9, $allocated];
    assume Heap[__flatten_11, $allocated];
    assume Heap[__flatten_12, $allocated];
  
  // -- Translating statement: __last_barrier := 0 -- test_binomial_auto.vpr@61.3--61.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: N := 1 -- test_binomial_auto.vpr@62.3--62.9
    N := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := diz.demo__ar[tid] -- test_binomial_auto.vpr@63.3--63.35
    
    // -- Check definedness of diz.demo__ar[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@63.3--63.35) [129009]"}
        HasDirectPerm(Mask, diz, demo__ar);
      assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@63.3--63.35) [129010]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@63.3--63.35) [129011]"}
        tid < Seq#Length(Heap[diz, demo__ar]);
    __flatten_3 := Seq#Index(Heap[diz, demo__ar], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := 1 -- test_binomial_auto.vpr@64.3--64.19
    __flatten_4 := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3.Ref__Integer_value := __flatten_4 -- test_binomial_auto.vpr@65.3--65.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_3.Ref__Integer_value (test_binomial_auto.vpr@65.3--65.48) [129012]"}
      FullPerm == Mask[__flatten_3, Ref__Integer_value];
    Heap := Heap[__flatten_3, Ref__Integer_value:=__flatten_4];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (N < gsize - 1) -- test_binomial_auto.vpr@66.3--103.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= tid might not hold on entry. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@67.15--67.23) [129013]"}
          0 <= tid;
        assert {:msg "  Loop invariant tid < tcount might not hold on entry. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@68.15--68.27) [129014]"}
          tid < tcount;
        assert {:msg "  Loop invariant tid == lid might not hold on entry. Assertion tid == lid might not hold. (test_binomial_auto.vpr@69.15--69.25) [129015]"}
          tid == lid;
        assert {:msg "  Loop invariant tcount == gsize might not hold on entry. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@70.15--70.30) [129016]"}
          tcount == gsize;
        assert {:msg "  Loop invariant gid == 0 might not hold on entry. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@71.15--71.23) [129017]"}
          gid == 0;
        assert {:msg "  Loop invariant acc(diz.demo__ar, wildcard) might not hold on entry. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@72.15--72.42) [129018]"}
          Mask[diz, demo__ar] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__ar];
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__ar| == gsize might not hold on entry. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@73.15--73.38) [129019]"}
          Seq#Length(Heap[diz, demo__ar]) == gsize;
        assert {:msg "  Loop invariant acc(diz.demo__tmp, wildcard) might not hold on entry. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@74.15--74.43) [129020]"}
          Mask[diz, demo__tmp] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__tmp];
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__tmp| == gsize might not hold on entry. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@75.15--75.39) [129021]"}
          Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assert {:msg "  Loop invariant false || (__last_barrier == 0 || __last_barrier == 2) might not hold on entry. Assertion false || (__last_barrier == 0 || __last_barrier == 2) might not hold. (test_binomial_auto.vpr@76.15--76.70) [129022]"}
          __last_barrier == 0 || __last_barrier == 2;
        if (__last_barrier == 2) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 2 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@77.15--77.142) [129023]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 2 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@77.15--77.142) [129024]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        }
        if (__last_barrier == 1) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 1 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && (tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)) might not hold on entry. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@78.15--78.162) [129025]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          if (tid > 0) {
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant __last_barrier == 1 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && (tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)) might not hold on entry. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@78.15--78.162) [129026]"}
                perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
            }
            Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
          }
        }
        if (__last_barrier == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@79.15--79.142) [129027]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@79.15--79.142) [129028]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        }
        assert {:msg "  Loop invariant gsize > 1 might not hold on entry. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@80.15--80.24) [129029]"}
          gsize > 1;
        assert {:msg "  Loop invariant 0 < N might not hold on entry. Assertion 0 < N might not hold. (test_binomial_auto.vpr@81.15--81.20) [129030]"}
          0 < N;
        assert {:msg "  Loop invariant N < gsize might not hold on entry. Assertion N < gsize might not hold. (test_binomial_auto.vpr@82.15--82.24) [129031]"}
          N < gsize;
        assert {:msg "  Loop invariant diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold on entry. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@83.15--83.88) [129032]"}
          Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc __last_barrier, __flatten_10, __flatten_12, __flatten_11, __flatten_9, N, __flatten_6, __flatten_7, __flatten_5, __flatten_1, __flatten_2;
      assume Heap[__flatten_12, $allocated];
      assume Heap[__flatten_11, $allocated];
      assume Heap[__flatten_9, $allocated];
      assume Heap[__flatten_7, $allocated];
      assume Heap[__flatten_5, $allocated];
    
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
        assume diz != null;
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of |diz.demo__ar| == gsize
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@73.15--73.38) [129033]"}
            HasDirectPerm(Mask, diz, demo__ar);
        assume Seq#Length(Heap[diz, demo__ar]) == gsize;
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of |diz.demo__tmp| == gsize
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@75.15--75.39) [129034]"}
            HasDirectPerm(Mask, diz, demo__tmp);
        assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assume state(Heap, Mask);
        assume __last_barrier == 0 || __last_barrier == 2;
        assume state(Heap, Mask);
        if (__last_barrier == 2) {
          
          // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@77.15--77.142) [129035]"}
              HasDirectPerm(Mask, diz, demo__ar);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@77.15--77.142) [129036]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@77.15--77.142) [129037]"}
              tid < Seq#Length(Heap[diz, demo__ar]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          
          // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@77.15--77.142) [129038]"}
              HasDirectPerm(Mask, diz, demo__tmp);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@77.15--77.142) [129039]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@77.15--77.142) [129040]"}
              tid < Seq#Length(Heap[diz, demo__tmp]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        if (__last_barrier == 1) {
          
          // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@78.15--78.162) [129041]"}
              HasDirectPerm(Mask, diz, demo__ar);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@78.15--78.162) [129042]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@78.15--78.162) [129043]"}
              tid < Seq#Length(Heap[diz, demo__ar]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          if (tid > 0) {
            
            // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@78.15--78.162) [129044]"}
                HasDirectPerm(Mask, diz, demo__tmp);
              assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@78.15--78.162) [129045]"}
                tid - 1 >= 0;
              assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@78.15--78.162) [129046]"}
                tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
            perm := FullPerm;
            assume Seq#Index(Heap[diz, demo__tmp], tid - 1) != null;
            Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
            assume state(Heap, Mask);
          }
        }
        assume state(Heap, Mask);
        if (__last_barrier == 0) {
          
          // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@79.15--79.142) [129047]"}
              HasDirectPerm(Mask, diz, demo__ar);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@79.15--79.142) [129048]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@79.15--79.142) [129049]"}
              tid < Seq#Length(Heap[diz, demo__ar]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          
          // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@79.15--79.142) [129050]"}
              HasDirectPerm(Mask, diz, demo__tmp);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@79.15--79.142) [129051]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@79.15--79.142) [129052]"}
              tid < Seq#Length(Heap[diz, demo__tmp]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume gsize > 1;
        assume state(Heap, Mask);
        assume 0 < N;
        assume state(Heap, Mask);
        assume N < gsize;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@83.15--83.88) [129053]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@83.15--83.88) [129054]"}
            tid >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@83.15--83.88) [129055]"}
            tid < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@83.15--83.88) [129056]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
          if (tid < N) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@83.66--83.83) [129057]"}
                N >= 0;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@83.66--83.83) [129058]"}
                0 <= tid;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@83.66--83.83) [129059]"}
                tid <= N;
              // Stop execution
              assume false;
            }
          }
        assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
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
        assume diz != null;
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
        assume state(Heap, Mask);
        assume Seq#Length(Heap[diz, demo__ar]) == gsize;
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
        assume state(Heap, Mask);
        assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assume __last_barrier == 0 || __last_barrier == 2;
        if (__last_barrier == 2) {
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
        }
        if (__last_barrier == 1) {
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          if (tid > 0) {
            perm := FullPerm;
            assume Seq#Index(Heap[diz, demo__tmp], tid - 1) != null;
            Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
            assume state(Heap, Mask);
          }
        }
        if (__last_barrier == 0) {
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
        }
        assume gsize > 1;
        assume 0 < N;
        assume N < gsize;
        assume state(Heap, Mask);
        assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
        assume state(Heap, Mask);
        // Check and assume guard
        assume N < gsize - 1;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: __flatten_5 := diz.demo__tmp[tid] -- test_binomial_auto.vpr@85.5--85.38
            
            // -- Check definedness of diz.demo__tmp[tid]
              assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@85.5--85.38) [129060]"}
                HasDirectPerm(Mask, diz, demo__tmp);
              assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@85.5--85.38) [129061]"}
                tid >= 0;
              assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@85.5--85.38) [129062]"}
                tid < Seq#Length(Heap[diz, demo__tmp]);
            __flatten_5 := Seq#Index(Heap[diz, demo__tmp], tid);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_7 := diz.demo__ar[tid] -- test_binomial_auto.vpr@86.5--86.37
            
            // -- Check definedness of diz.demo__ar[tid]
              assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@86.5--86.37) [129063]"}
                HasDirectPerm(Mask, diz, demo__ar);
              assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@86.5--86.37) [129064]"}
                tid >= 0;
              assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@86.5--86.37) [129065]"}
                tid < Seq#Length(Heap[diz, demo__ar]);
            __flatten_7 := Seq#Index(Heap[diz, demo__ar], tid);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_6 := __flatten_7.Ref__Integer_value -- test_binomial_auto.vpr@87.5--87.50
            
            // -- Check definedness of __flatten_7.Ref__Integer_value
              assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_7.Ref__Integer_value (test_binomial_auto.vpr@87.5--87.50) [129066]"}
                HasDirectPerm(Mask, __flatten_7, Ref__Integer_value);
            __flatten_6 := Heap[__flatten_7, Ref__Integer_value];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_5.Ref__Integer_value := __flatten_6 -- test_binomial_auto.vpr@88.5--88.50
            assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_5.Ref__Integer_value (test_binomial_auto.vpr@88.5--88.50) [129067]"}
              FullPerm == Mask[__flatten_5, Ref__Integer_value];
            Heap := Heap[__flatten_5, Ref__Integer_value:=__flatten_6];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_1 := demo__main_barrier(diz, current_thread_id, tcount, gsize, tid,
  //   gid, lid, 1, __last_barrier, N) -- test_binomial_auto.vpr@89.5--89.114
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz != null might not hold. (test_binomial_auto.vpr@89.5--89.114) [129068]"}
                diz != null;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion current_thread_id >= 0 might not hold. (test_binomial_auto.vpr@89.5--89.114) [129069]"}
                current_thread_id >= 0;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion false || (__last_barrier == 0 || __last_barrier == 2) might not hold. (test_binomial_auto.vpr@89.5--89.114) [129070]"}
                __last_barrier == 0 || __last_barrier == 2;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@89.5--89.114) [129071]"}
                0 <= tid;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@89.5--89.114) [129072]"}
                tid < tcount;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@89.5--89.114) [129073]"}
                tid == lid;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@89.5--89.114) [129074]"}
                tcount == gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@89.5--89.114) [129075]"}
                gid == 0;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@89.5--89.114) [129076]"}
                Mask[diz, demo__ar] > NoPerm;
              havoc wildcard;
              assume wildcard < Mask[diz, demo__ar];
              Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@89.5--89.114) [129077]"}
                Seq#Length(Heap[diz, demo__ar]) == gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@89.5--89.114) [129078]"}
                Mask[diz, demo__tmp] > NoPerm;
              havoc wildcard;
              assume wildcard < Mask[diz, demo__tmp];
              Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@89.5--89.114) [129079]"}
                Seq#Length(Heap[diz, demo__tmp]) == gsize;
              if (__last_barrier == 2) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [129080]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [129081]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
              }
              if (__last_barrier == 1) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [129082]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                if (tid > 0) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [129083]"}
                      perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
                  }
                  Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
                }
              }
              if (__last_barrier == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [129084]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [129085]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
              }
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@89.5--89.114) [129086]"}
                gsize > 1;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@89.5--89.114) [129087]"}
                0 < N;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@89.5--89.114) [129088]"}
                N < gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@89.5--89.114) [129089]"}
                Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz.demo__tmp[tid].Ref__Integer_value == diz.demo__ar[tid].Ref__Integer_value might not hold. (test_binomial_auto.vpr@89.5--89.114) [129090]"}
                Heap[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] == Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
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
              Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
              assume state(Heap, Mask);
              assume Seq#Length(Heap[diz, demo__ar]) == gsize;
              havoc wildcard;
              perm := wildcard;
              assume diz != null;
              Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
              assume state(Heap, Mask);
              assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
              assume Seq#Equal(Heap[diz, demo__ar], PreCallHeap[diz, demo__ar]);
              assume Seq#Equal(Heap[diz, demo__tmp], PreCallHeap[diz, demo__tmp]);
              if (__flatten_1 == 2) {
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__ar], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
              }
              if (__flatten_1 == 1) {
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__ar], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
                if (tid > 0) {
                  perm := FullPerm;
                  assume Seq#Index(Heap[diz, demo__tmp], tid - 1) != null;
                  Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
                  assume state(Heap, Mask);
                }
              }
              if (__flatten_1 == 0) {
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__ar], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
              }
              assume __flatten_1 == 1;
              assume gsize > 1;
              assume 0 < N;
              assume N < gsize;
              if (0 < tid && tid <= N) {
                assume state(Heap, Mask);
                assume Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N, tid - 1);
              }
              assume state(Heap, Mask);
              assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: __last_barrier := __flatten_1 -- test_binomial_auto.vpr@90.5--90.34
            __last_barrier := __flatten_1;
            assume state(Heap, Mask);
          
          // -- Translating statement: N := N + 1 -- test_binomial_auto.vpr@91.5--91.15
            N := N + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: if (0 < tid && tid < N) -- test_binomial_auto.vpr@92.5--100.6
            if (0 < tid && tid < N) {
              
              // -- Translating statement: assert diz.demo__tmp[tid - 1].Ref__Integer_value ==
  //   demo__bin(N - 1, tid - 1) &&
  //   diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid) -- test_binomial_auto.vpr@93.7--93.153
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                
                // -- Check definedness of diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N - 1, tid - 1)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@93.14--93.153) [129091]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__tmp);
                  assert {:msg "  Assert might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@93.14--93.153) [129092]"}
                    tid - 1 >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@93.14--93.153) [129093]"}
                    tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@93.14--93.153) [129094]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_auto.vpr@93.60--93.85) [129095]"}
                      N - 1 >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_auto.vpr@93.60--93.85) [129096]"}
                      0 <= tid - 1;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N - 1 might not hold. (test_binomial_auto.vpr@93.60--93.85) [129097]"}
                      tid - 1 <= N - 1;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N - 1, tid - 1) might not hold. (test_binomial_auto.vpr@93.14--93.153) [129098]"}
                  Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N - 1, tid - 1);
                
                // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@93.14--93.153) [129099]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__ar);
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@93.14--93.153) [129100]"}
                    tid >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@93.14--93.153) [129101]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@93.14--93.153) [129102]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_auto.vpr@93.131--93.152) [129103]"}
                      N - 1 >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@93.131--93.152) [129104]"}
                      0 <= tid;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N - 1 might not hold. (test_binomial_auto.vpr@93.131--93.152) [129105]"}
                      tid <= N - 1;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid) might not hold. (test_binomial_auto.vpr@93.14--93.153) [129106]"}
                  Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(Heap, N - 1, tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_9 := diz.demo__ar[tid] -- test_binomial_auto.vpr@94.7--94.39
                
                // -- Check definedness of diz.demo__ar[tid]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@94.7--94.39) [129107]"}
                    HasDirectPerm(Mask, diz, demo__ar);
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@94.7--94.39) [129108]"}
                    tid >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@94.7--94.39) [129109]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                __flatten_9 := Seq#Index(Heap[diz, demo__ar], tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_11 := diz.demo__tmp[tid - 1] -- test_binomial_auto.vpr@95.7--95.45
                
                // -- Check definedness of diz.demo__tmp[tid - 1]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@95.7--95.45) [129110]"}
                    HasDirectPerm(Mask, diz, demo__tmp);
                  assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@95.7--95.45) [129111]"}
                    tid - 1 >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@95.7--95.45) [129112]"}
                    tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
                __flatten_11 := Seq#Index(Heap[diz, demo__tmp], tid - 1);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_12 := diz.demo__ar[tid] -- test_binomial_auto.vpr@96.7--96.40
                
                // -- Check definedness of diz.demo__ar[tid]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@96.7--96.40) [129113]"}
                    HasDirectPerm(Mask, diz, demo__ar);
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@96.7--96.40) [129114]"}
                    tid >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@96.7--96.40) [129115]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                __flatten_12 := Seq#Index(Heap[diz, demo__ar], tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_10 := __flatten_11.Ref__Integer_value +
  //   __flatten_12.Ref__Integer_value -- test_binomial_auto.vpr@97.7--97.88
                
                // -- Check definedness of __flatten_11.Ref__Integer_value + __flatten_12.Ref__Integer_value
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_11.Ref__Integer_value (test_binomial_auto.vpr@97.7--97.88) [129116]"}
                    HasDirectPerm(Mask, __flatten_11, Ref__Integer_value);
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_12.Ref__Integer_value (test_binomial_auto.vpr@97.7--97.88) [129117]"}
                    HasDirectPerm(Mask, __flatten_12, Ref__Integer_value);
                __flatten_10 := Heap[__flatten_11, Ref__Integer_value] + Heap[__flatten_12, Ref__Integer_value];
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_9.Ref__Integer_value := __flatten_10 -- test_binomial_auto.vpr@98.7--98.53
                assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_9.Ref__Integer_value (test_binomial_auto.vpr@98.7--98.53) [129118]"}
                  FullPerm == Mask[__flatten_9, Ref__Integer_value];
                Heap := Heap[__flatten_9, Ref__Integer_value:=__flatten_10];
                assume state(Heap, Mask);
              
              // -- Translating statement: assert diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid) -- test_binomial_auto.vpr@99.7--99.71
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                
                // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@99.14--99.71) [129119]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__ar);
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@99.14--99.71) [129120]"}
                    tid >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@99.14--99.71) [129121]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@99.14--99.71) [129122]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@99.54--99.71) [129123]"}
                      N >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@99.54--99.71) [129124]"}
                      0 <= tid;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@99.54--99.71) [129125]"}
                      tid <= N;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid) might not hold. (test_binomial_auto.vpr@99.14--99.71) [129126]"}
                  Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(Heap, N, tid);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_2 := demo__main_barrier(diz, current_thread_id, tcount, gsize, tid,
  //   gid, lid, 2, __last_barrier, N) -- test_binomial_auto.vpr@101.5--101.114
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz != null might not hold. (test_binomial_auto.vpr@101.5--101.114) [129127]"}
                diz != null;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion current_thread_id >= 0 might not hold. (test_binomial_auto.vpr@101.5--101.114) [129128]"}
                current_thread_id >= 0;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion false || __last_barrier == 1 might not hold. (test_binomial_auto.vpr@101.5--101.114) [129129]"}
                __last_barrier == 1;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@101.5--101.114) [129130]"}
                0 <= tid;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@101.5--101.114) [129131]"}
                tid < tcount;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@101.5--101.114) [129132]"}
                tid == lid;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@101.5--101.114) [129133]"}
                tcount == gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@101.5--101.114) [129134]"}
                gid == 0;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@101.5--101.114) [129135]"}
                Mask[diz, demo__ar] > NoPerm;
              havoc wildcard;
              assume wildcard < Mask[diz, demo__ar];
              Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@101.5--101.114) [129136]"}
                Seq#Length(Heap[diz, demo__ar]) == gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@101.5--101.114) [129137]"}
                Mask[diz, demo__tmp] > NoPerm;
              havoc wildcard;
              assume wildcard < Mask[diz, demo__tmp];
              Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@101.5--101.114) [129138]"}
                Seq#Length(Heap[diz, demo__tmp]) == gsize;
              if (__last_barrier == 2) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [129139]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [129140]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
              }
              if (__last_barrier == 1) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [129141]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                if (tid > 0) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [129142]"}
                      perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
                  }
                  Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
                }
              }
              if (__last_barrier == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [129143]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [129144]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
              }
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@101.5--101.114) [129145]"}
                gsize > 1;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@101.5--101.114) [129146]"}
                0 < N;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@101.5--101.114) [129147]"}
                N < gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@101.5--101.114) [129148]"}
                Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Havocing target variables
              havoc __flatten_2;
            
            // -- Inhaling postcondition
              assume 0 <= tid;
              assume tid < tcount;
              assume tid == lid;
              assume tcount == gsize;
              assume gid == 0;
              havoc wildcard;
              perm := wildcard;
              assume diz != null;
              Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
              assume state(Heap, Mask);
              assume Seq#Length(Heap[diz, demo__ar]) == gsize;
              havoc wildcard;
              perm := wildcard;
              assume diz != null;
              Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
              assume state(Heap, Mask);
              assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
              assume Seq#Equal(Heap[diz, demo__ar], PreCallHeap[diz, demo__ar]);
              assume Seq#Equal(Heap[diz, demo__tmp], PreCallHeap[diz, demo__tmp]);
              if (__flatten_2 == 2) {
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__ar], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
              }
              if (__flatten_2 == 1) {
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__ar], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
                if (tid > 0) {
                  perm := FullPerm;
                  assume Seq#Index(Heap[diz, demo__tmp], tid - 1) != null;
                  Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
                  assume state(Heap, Mask);
                }
              }
              if (__flatten_2 == 0) {
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__ar], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
                assume state(Heap, Mask);
              }
              assume __flatten_2 == 2;
              assume gsize > 1;
              assume 0 < N;
              assume N < gsize;
              assume state(Heap, Mask);
              assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: __last_barrier := __flatten_2 -- test_binomial_auto.vpr@102.5--102.34
            __last_barrier := __flatten_2;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= tid might not be preserved. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@67.15--67.23) [129149]"}
          0 <= tid;
        assert {:msg "  Loop invariant tid < tcount might not be preserved. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@68.15--68.27) [129150]"}
          tid < tcount;
        assert {:msg "  Loop invariant tid == lid might not be preserved. Assertion tid == lid might not hold. (test_binomial_auto.vpr@69.15--69.25) [129151]"}
          tid == lid;
        assert {:msg "  Loop invariant tcount == gsize might not be preserved. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@70.15--70.30) [129152]"}
          tcount == gsize;
        assert {:msg "  Loop invariant gid == 0 might not be preserved. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@71.15--71.23) [129153]"}
          gid == 0;
        assert {:msg "  Loop invariant acc(diz.demo__ar, wildcard) might not be preserved. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@72.15--72.42) [129154]"}
          Mask[diz, demo__ar] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__ar];
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__ar| == gsize might not be preserved. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@73.15--73.38) [129155]"}
          Seq#Length(Heap[diz, demo__ar]) == gsize;
        assert {:msg "  Loop invariant acc(diz.demo__tmp, wildcard) might not be preserved. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@74.15--74.43) [129156]"}
          Mask[diz, demo__tmp] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__tmp];
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__tmp| == gsize might not be preserved. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@75.15--75.39) [129157]"}
          Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assert {:msg "  Loop invariant false || (__last_barrier == 0 || __last_barrier == 2) might not be preserved. Assertion false || (__last_barrier == 0 || __last_barrier == 2) might not hold. (test_binomial_auto.vpr@76.15--76.70) [129158]"}
          __last_barrier == 0 || __last_barrier == 2;
        if (__last_barrier == 2) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 2 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@77.15--77.142) [129159]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 2 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@77.15--77.142) [129160]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        }
        if (__last_barrier == 1) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 1 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && (tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)) might not be preserved. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@78.15--78.162) [129161]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          if (tid > 0) {
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant __last_barrier == 1 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && (tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)) might not be preserved. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@78.15--78.162) [129162]"}
                perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
            }
            Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
          }
        }
        if (__last_barrier == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@79.15--79.142) [129163]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@79.15--79.142) [129164]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        }
        assert {:msg "  Loop invariant gsize > 1 might not be preserved. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@80.15--80.24) [129165]"}
          gsize > 1;
        assert {:msg "  Loop invariant 0 < N might not be preserved. Assertion 0 < N might not hold. (test_binomial_auto.vpr@81.15--81.20) [129166]"}
          0 < N;
        assert {:msg "  Loop invariant N < gsize might not be preserved. Assertion N < gsize might not hold. (test_binomial_auto.vpr@82.15--82.24) [129167]"}
          N < gsize;
        assert {:msg "  Loop invariant diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not be preserved. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@83.15--83.88) [129168]"}
          Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(N < gsize - 1);
      assume state(Heap, Mask);
      assume 0 <= tid;
      assume tid < tcount;
      assume tid == lid;
      assume tcount == gsize;
      assume gid == 0;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[diz, demo__ar]) == gsize;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
      assume __last_barrier == 0 || __last_barrier == 2;
      if (__last_barrier == 2) {
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__ar], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      if (__last_barrier == 1) {
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__ar], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        if (tid > 0) {
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__tmp], tid - 1) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
        }
      }
      if (__last_barrier == 0) {
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__ar], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      assume gsize > 1;
      assume 0 < N;
      assume N < gsize;
      assume state(Heap, Mask);
      assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@33.11--33.19) [129169]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@34.11--34.23) [129170]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@35.11--35.21) [129171]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@36.11--36.26) [129172]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@37.11--37.19) [129173]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@38.11--38.38) [129174]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@39.11--39.34) [129175]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@40.11--40.39) [129176]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@41.11--41.35) [129177]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@42.11--42.44) [129178]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@43.11--43.46) [129179]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@44.11--44.20) [129180]"}
      gsize > 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@45.11--45.59) [129181]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(gsize - 1, tid) might not hold. (test_binomial_auto.vpr@46.11--46.76) [129182]"}
      Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(Heap, gsize - 1, tid);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method demo__main_barrier
// ==================================================

procedure demo__main_barrier(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int, this_barrier: int, last_barrier: int, N: int) returns (sys__result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
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
    if (this_barrier == 1) {
      assume last_barrier == 0 || last_barrier == 2;
    }
    assume state(Heap, Mask);
    if (this_barrier == 2) {
      assume last_barrier == 1;
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
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@117.12--117.35) [129183]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@119.12--119.36) [129184]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    if (last_barrier == 2) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@120.12--120.137) [129185]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@120.12--120.137) [129186]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@120.12--120.137) [129187]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__ar], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@120.12--120.137) [129188]"}
          HasDirectPerm(Mask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@120.12--120.137) [129189]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@120.12--120.137) [129190]"}
          tid < Seq#Length(Heap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (last_barrier == 1) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@121.12--121.157) [129191]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@121.12--121.157) [129192]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@121.12--121.157) [129193]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__ar], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      if (tid > 0) {
        
        // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@121.12--121.157) [129194]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@121.12--121.157) [129195]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@121.12--121.157) [129196]"}
            tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__tmp], tid - 1) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
    }
    assume state(Heap, Mask);
    if (last_barrier == 0) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@122.12--122.137) [129197]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@122.12--122.137) [129198]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@122.12--122.137) [129199]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__ar], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@122.12--122.137) [129200]"}
          HasDirectPerm(Mask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@122.12--122.137) [129201]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@122.12--122.137) [129202]"}
          tid < Seq#Length(Heap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      assume gsize > 1;
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      assume 0 < N;
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      assume N < gsize;
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@126.12--126.111) [129203]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@126.12--126.111) [129204]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@126.12--126.111) [129205]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@126.12--126.111) [129206]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
        if (tid < N) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@126.88--126.105) [129207]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@126.88--126.105) [129208]"}
              0 <= tid;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@126.88--126.105) [129209]"}
              tid <= N;
            // Stop execution
            assume false;
          }
        }
      assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      
      // -- Check definedness of diz.demo__tmp[tid].Ref__Integer_value == diz.demo__ar[tid].Ref__Integer_value
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@127.12--127.115) [129210]"}
          HasDirectPerm(Mask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@127.12--127.115) [129211]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@127.12--127.115) [129212]"}
          tid < Seq#Length(Heap[diz, demo__tmp]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@127.12--127.115) [129213]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@127.12--127.115) [129214]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@127.12--127.115) [129215]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@127.12--127.115) [129216]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@127.12--127.115) [129217]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
      assume Heap[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] == Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
    }
    assume state(Heap, Mask);
    if (this_barrier == 2) {
      assume gsize > 1;
    }
    assume state(Heap, Mask);
    if (this_barrier == 2) {
      assume 0 < N;
    }
    assume state(Heap, Mask);
    if (this_barrier == 2) {
      assume N < gsize;
    }
    assume state(Heap, Mask);
    if (this_barrier == 2) {
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@131.12--131.111) [129218]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@131.12--131.111) [129219]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@131.12--131.111) [129220]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@131.12--131.111) [129221]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
        if (tid < N) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@131.88--131.105) [129222]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@131.88--131.105) [129223]"}
              0 <= tid;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@131.88--131.105) [129224]"}
              tid <= N;
            // Stop execution
            assume false;
          }
        }
      assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
    }
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
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@138.11--138.34) [129225]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@140.11--140.35) [129226]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@141.11--141.44) [129227]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@141.11--141.44) [129228]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@142.11--142.46) [129229]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@142.11--142.46) [129230]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    if (sys__result == 2) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@143.11--143.135) [129231]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@143.11--143.135) [129232]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@143.11--143.135) [129233]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@143.11--143.135) [129234]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@143.11--143.135) [129235]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@143.11--143.135) [129236]"}
          tid < Seq#Length(PostHeap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__tmp], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (sys__result == 1) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@144.11--144.155) [129237]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@144.11--144.155) [129238]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@144.11--144.155) [129239]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      if (tid > 0) {
        
        // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@144.11--144.155) [129240]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@144.11--144.155) [129241]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@144.11--144.155) [129242]"}
            tid - 1 < Seq#Length(PostHeap[diz, demo__tmp]);
        perm := FullPerm;
        assume Seq#Index(PostHeap[diz, demo__tmp], tid - 1) != null;
        PostMask := PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
        assume state(PostHeap, PostMask);
      }
    }
    assume state(PostHeap, PostMask);
    if (sys__result == 0) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@145.11--145.135) [129243]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@145.11--145.135) [129244]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@145.11--145.135) [129245]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@145.11--145.135) [129246]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@145.11--145.135) [129247]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@145.11--145.135) [129248]"}
          tid < Seq#Length(PostHeap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__tmp], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume sys__result == this_barrier;
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      assume gsize > 1;
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      assume 0 < N;
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      assume N < gsize;
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      if (0 < tid && tid <= N) {
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@150.11--150.131) [129249]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@150.11--150.131) [129250]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@150.11--150.131) [129251]"}
            tid - 1 < Seq#Length(PostHeap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@150.11--150.131) [129252]"}
            HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@150.109--150.130) [129253]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_auto.vpr@150.109--150.130) [129254]"}
              0 <= tid - 1;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N might not hold. (test_binomial_auto.vpr@150.109--150.130) [129255]"}
              tid - 1 <= N;
            // Stop execution
            assume false;
          }
        assume PostHeap[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(PostHeap, N, tid - 1);
      }
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@151.11--151.110) [129256]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@151.11--151.110) [129257]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@151.11--151.110) [129258]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@151.11--151.110) [129259]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
        if (tid < N) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@151.87--151.104) [129260]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@151.87--151.104) [129261]"}
              0 <= tid;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@151.87--151.104) [129262]"}
              tid <= N;
            // Stop execution
            assume false;
          }
        }
      assume PostHeap[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(PostHeap, N, tid) else 1);
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 2) {
      assume gsize > 1;
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 2) {
      assume 0 < N;
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 2) {
      assume N < gsize;
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 2) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@155.11--155.110) [129263]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@155.11--155.110) [129264]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@155.11--155.110) [129265]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@155.11--155.110) [129266]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
        if (tid < N) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@155.87--155.104) [129267]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@155.87--155.104) [129268]"}
              0 <= tid;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@155.87--155.104) [129269]"}
              tid <= N;
            // Stop execution
            assume false;
          }
        }
      assume PostHeap[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(PostHeap, N, tid) else 1);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_binomial_auto.vpr@157.3--157.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@132.11--132.19) [129270]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@133.11--133.23) [129271]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@134.11--134.21) [129272]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@135.11--135.26) [129273]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@136.11--136.19) [129274]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@137.11--137.38) [129275]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@138.11--138.34) [129276]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@139.11--139.39) [129277]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@140.11--140.35) [129278]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@141.11--141.44) [129279]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@142.11--142.46) [129280]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    if (sys__result == 2) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@143.11--143.135) [129281]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@143.11--143.135) [129282]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
    }
    if (sys__result == 1) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@144.11--144.155) [129283]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
      if (tid > 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@144.11--144.155) [129284]"}
            perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
      }
    }
    if (sys__result == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@145.11--145.135) [129285]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@145.11--145.135) [129286]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion sys__result == this_barrier might not hold. (test_binomial_auto.vpr@146.11--146.38) [129287]"}
      sys__result == this_barrier;
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@147.11--147.46) [129288]"}
        gsize > 1;
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@148.11--148.42) [129289]"}
        0 < N;
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@149.11--149.46) [129290]"}
        N < gsize;
    }
    if (this_barrier == 1) {
      if (0 < tid && tid <= N) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1) might not hold. (test_binomial_auto.vpr@150.11--150.131) [129291]"}
          Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N, tid - 1);
      }
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@151.11--151.110) [129292]"}
        Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
    }
    if (this_barrier == 2) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@152.11--152.46) [129293]"}
        gsize > 1;
    }
    if (this_barrier == 2) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@153.11--153.42) [129294]"}
        0 < N;
    }
    if (this_barrier == 2) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@154.11--154.46) [129295]"}
        N < gsize;
    }
    if (this_barrier == 2) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@155.11--155.110) [129296]"}
        Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method demo__main_resources_of_1
// ==================================================

procedure demo__main_resources_of_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, gid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_18: int;
  var j_14: int;
  var i_3: int;
  var j_15: int;
  var tid_3: int;
  var QPMask: MaskType;
  var tid_8: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_4: int;
  var tid_12: int;
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
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@166.12--166.35) [129297]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@168.12--168.36) [129298]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_18 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@170.12--170.144) [129299]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_18 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_14 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@170.12--170.144) [129300]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_18 >= 0 && (i_18 < Seq#Length(Heap[diz, demo__ar]) && (j_14 >= 0 && (j_14 < Seq#Length(Heap[diz, demo__ar]) && i_18 != j_14)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@170.12--170.144) [129301]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_auto.vpr@170.12--170.144) [129302]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@170.12--170.144) [129303]"}
            i_18 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@170.12--170.144) [129304]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_auto.vpr@170.12--170.144) [129305]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@170.12--170.144) [129306]"}
            j_14 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, demo__ar], i_1), Seq#Index(Heap[diz, demo__ar], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, demo__ar]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, demo__ar]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, demo__ar], i_1) != Seq#Index(Heap[diz, demo__ar], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
      if (*) {
        if (i_3 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@171.12--171.148) [129307]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_3 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_15 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@171.12--171.148) [129308]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, demo__tmp]) && (j_15 >= 0 && (j_15 < Seq#Length(Heap[diz, demo__tmp]) && i_3 != j_15)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@171.12--171.148) [129309]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@171.12--171.148) [129310]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@171.12--171.148) [129311]"}
            i_3 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@171.12--171.148) [129312]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@171.12--171.148) [129313]"}
            j_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@171.12--171.148) [129314]"}
            j_15 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_3: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3_2), Seq#Index(Heap[diz, demo__tmp], j_3) }
      i_3_2 >= 0 && (i_3_2 < Seq#Length(Heap[diz, demo__tmp]) && (j_3 >= 0 && (j_3 < Seq#Length(Heap[diz, demo__tmp]) && i_3_2 != j_3))) ==> Seq#Index(Heap[diz, demo__tmp], i_3_2) != Seq#Index(Heap[diz, demo__tmp], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__ar[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__ar[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_3 && tid_3 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@172.13--172.112) [129315]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@172.13--172.112) [129316]"}
            tid_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@172.13--172.112) [129317]"}
            tid_3 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@172.13--172.112) [129318]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < gsize)) && (0 <= tid_1_1 && tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], tid_1) != Seq#Index(Heap[diz, demo__ar], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_1) } { Seq#Index(Heap[diz, demo__ar], tid_1) }
        (0 <= tid_1 && tid_1 < gsize) && NoPerm < FullPerm ==> qpRange1(Seq#Index(Heap[diz, demo__ar], tid_1)) && invRecv1(Seq#Index(Heap[diz, demo__ar], tid_1)) == tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < gsize) && NoPerm < FullPerm) && qpRange1(o_9) ==> Seq#Index(Heap[diz, demo__ar], invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_1) } { Seq#Index(Heap[diz, demo__ar], tid_1) }
        0 <= tid_1 && tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv1(o_9) && invRecv1(o_9) < gsize) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv1(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < gsize) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_8 && tid_8 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@173.13--173.113) [129319]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@173.13--173.113) [129320]"}
            tid_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@173.13--173.113) [129321]"}
            tid_8 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@173.13--173.113) [129322]"}
      (forall tid_3_1: int, tid_3_2: int ::
      
      (((tid_3_1 != tid_3_2 && (0 <= tid_3_1 && tid_3_1 < gsize)) && (0 <= tid_3_2 && tid_3_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_3_1) != Seq#Index(Heap[diz, demo__tmp], tid_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall tid_3_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_3_1) } { Seq#Index(Heap[diz, demo__tmp], tid_3_1) }
        (0 <= tid_3_1 && tid_3_1 < gsize) && NoPerm < FullPerm ==> qpRange2(Seq#Index(Heap[diz, demo__tmp], tid_3_1)) && invRecv2(Seq#Index(Heap[diz, demo__tmp], tid_3_1)) == tid_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize) && NoPerm < FullPerm) && qpRange2(o_9) ==> Seq#Index(Heap[diz, demo__tmp], invRecv2(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_3_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_3_1) } { Seq#Index(Heap[diz, demo__tmp], tid_3_1) }
        0 <= tid_3_1 && tid_3_1 < gsize ==> Seq#Index(Heap[diz, demo__tmp], tid_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv2(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
      oldMask := Mask;
      oldHeap := Heap;
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
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@177.11--177.34) [129323]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@179.11--179.35) [129324]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@181.11--181.44) [129325]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@181.11--181.44) [129326]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@182.11--182.46) [129327]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@182.11--182.46) [129328]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__ar[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__ar[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_4 && tid_4 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@183.12--183.111) [129329]"}
            HasDirectPerm(PostMask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@183.12--183.111) [129330]"}
            tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@183.12--183.111) [129331]"}
            tid_4 < Seq#Length(PostHeap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@183.12--183.111) [129332]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize)) && (0 <= tid_5_1 && tid_5_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__ar], tid_5) != Seq#Index(PostHeap[diz, demo__ar], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__ar], tid_5) } { Seq#Index(PostHeap[diz, demo__ar], tid_5) }
        (0 <= tid_5 && tid_5 < gsize) && NoPerm < FullPerm ==> qpRange3(Seq#Index(PostHeap[diz, demo__ar], tid_5)) && invRecv3(Seq#Index(PostHeap[diz, demo__ar], tid_5)) == tid_5
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((0 <= invRecv3(o_9) && invRecv3(o_9) < gsize) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(PostHeap[diz, demo__ar], invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__ar], tid_5) } { Seq#Index(PostHeap[diz, demo__ar], tid_5) }
        0 <= tid_5 && tid_5 < gsize ==> Seq#Index(PostHeap[diz, demo__ar], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv3(o_9) && invRecv3(o_9) < gsize) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__ar], invRecv3(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv3(o_9) && invRecv3(o_9) < gsize) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1 ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_12 && tid_12 < gsize - 1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@184.12--184.135) [129333]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@184.12--184.135) [129334]"}
            tid_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@184.12--184.135) [129335]"}
            tid_12 < Seq#Length(PostHeap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@184.12--184.135) [129336]"}
      (forall tid_7_2: int, tid_7_3: int ::
      
      (((tid_7_2 != tid_7_3 && (0 <= tid_7_2 && tid_7_2 < gsize - 1)) && (0 <= tid_7_3 && tid_7_3 < gsize - 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) != Seq#Index(PostHeap[diz, demo__tmp], tid_7_3)
    );
    
    // -- Define Inverse Function
      assume (forall tid_7_2: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) } { Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) }
        (0 <= tid_7_2 && tid_7_2 < gsize - 1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(PostHeap[diz, demo__tmp], tid_7_2)) && invRecv4(Seq#Index(PostHeap[diz, demo__tmp], tid_7_2)) == tid_7_2
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_9) ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv4(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_7_2: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) } { Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) }
        0 <= tid_7_2 && tid_7_2 < gsize - 1 ==> Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv4(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@174.11--174.26) [129337]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@175.11--175.19) [129338]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@176.11--176.38) [129339]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@177.11--177.34) [129340]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@178.11--178.39) [129341]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@179.11--179.35) [129342]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@180.11--180.20) [129343]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@181.11--181.44) [129344]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@182.11--182.46) [129345]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__ar[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@183.12--183.111) [129346]"}
        (forall tid_8_1: int, tid_8_2: int ::
        { neverTriggered5(tid_8_1), neverTriggered5(tid_8_2) }
        (((tid_8_1 != tid_8_2 && (0 <= tid_8_1 && tid_8_1 < gsize)) && (0 <= tid_8_2 && tid_8_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], tid_8_1) != Seq#Index(Heap[diz, demo__ar], tid_8_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@183.12--183.111) [129347]"}
        (forall tid_8_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_8_1) } { Seq#Index(Heap[diz, demo__ar], tid_8_1) }
        0 <= tid_8_1 && tid_8_1 < gsize ==> Mask[Seq#Index(Heap[diz, demo__ar], tid_8_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__ar[tid]
      assume (forall tid_8_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_8_1) } { Seq#Index(Heap[diz, demo__ar], tid_8_1) }
        (0 <= tid_8_1 && tid_8_1 < gsize) && NoPerm < FullPerm ==> qpRange5(Seq#Index(Heap[diz, demo__ar], tid_8_1)) && invRecv5(Seq#Index(Heap[diz, demo__ar], tid_8_1)) == tid_8_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && (NoPerm < FullPerm && qpRange5(o_9)) ==> Seq#Index(Heap[diz, demo__ar], invRecv5(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && (NoPerm < FullPerm && qpRange5(o_9)) ==> Seq#Index(Heap[diz, demo__ar], invRecv5(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && (NoPerm < FullPerm && qpRange5(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__tmp[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@184.12--184.135) [129348]"}
        (forall tid_9_1: int, tid_9_2: int ::
        { neverTriggered6(tid_9_1), neverTriggered6(tid_9_2) }
        (((tid_9_1 != tid_9_2 && (0 <= tid_9_1 && tid_9_1 < gsize - 1)) && (0 <= tid_9_2 && tid_9_2 < gsize - 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_9_1) != Seq#Index(Heap[diz, demo__tmp], tid_9_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@184.12--184.135) [129349]"}
        (forall tid_9_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_9_1) } { Seq#Index(Heap[diz, demo__tmp], tid_9_1) }
        0 <= tid_9_1 && tid_9_1 < gsize - 1 ==> Mask[Seq#Index(Heap[diz, demo__tmp], tid_9_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__tmp[tid]
      assume (forall tid_9_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_9_1) } { Seq#Index(Heap[diz, demo__tmp], tid_9_1) }
        (0 <= tid_9_1 && tid_9_1 < gsize - 1) && NoPerm < FullPerm ==> qpRange6(Seq#Index(Heap[diz, demo__tmp], tid_9_1)) && invRecv6(Seq#Index(Heap[diz, demo__tmp], tid_9_1)) == tid_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (0 <= invRecv6(o_9) && invRecv6(o_9) < gsize - 1) && (NoPerm < FullPerm && qpRange6(o_9)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv6(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv6(o_9) && invRecv6(o_9) < gsize - 1) && (NoPerm < FullPerm && qpRange6(o_9)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv6(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv6(o_9) && invRecv6(o_9) < gsize - 1) && (NoPerm < FullPerm && qpRange6(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
// Translation of method demo__main_resources_of_2
// ==================================================

procedure demo__main_resources_of_2(diz: Ref, current_thread_id: int, tcount: int, gsize: int, gid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_7: int;
  var j_4: int;
  var i_21: int;
  var j_17: int;
  var tid_13: int;
  var QPMask: MaskType;
  var tid_14: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_15: int;
  var tid_16: int;
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
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@194.12--194.35) [129350]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@196.12--196.36) [129351]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_7 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@198.12--198.144) [129352]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_7 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_4 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@198.12--198.144) [129353]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_7 >= 0 && (i_7 < Seq#Length(Heap[diz, demo__ar]) && (j_4 >= 0 && (j_4 < Seq#Length(Heap[diz, demo__ar]) && i_7 != j_4)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@198.12--198.144) [129354]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_auto.vpr@198.12--198.144) [129355]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@198.12--198.144) [129356]"}
            i_7 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@198.12--198.144) [129357]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_auto.vpr@198.12--198.144) [129358]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@198.12--198.144) [129359]"}
            j_4 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, demo__ar], i_1), Seq#Index(Heap[diz, demo__ar], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, demo__ar]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, demo__ar]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, demo__ar], i_1) != Seq#Index(Heap[diz, demo__ar], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
      if (*) {
        if (i_21 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@199.12--199.148) [129360]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_21 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_17 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@199.12--199.148) [129361]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_21 >= 0 && (i_21 < Seq#Length(Heap[diz, demo__tmp]) && (j_17 >= 0 && (j_17 < Seq#Length(Heap[diz, demo__tmp]) && i_21 != j_17)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@199.12--199.148) [129362]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@199.12--199.148) [129363]"}
            i_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@199.12--199.148) [129364]"}
            i_21 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@199.12--199.148) [129365]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@199.12--199.148) [129366]"}
            j_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@199.12--199.148) [129367]"}
            j_17 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_3: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3_2), Seq#Index(Heap[diz, demo__tmp], j_3) }
      i_3_2 >= 0 && (i_3_2 < Seq#Length(Heap[diz, demo__tmp]) && (j_3 >= 0 && (j_3 < Seq#Length(Heap[diz, demo__tmp]) && i_3_2 != j_3))) ==> Seq#Index(Heap[diz, demo__tmp], i_3_2) != Seq#Index(Heap[diz, demo__tmp], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__ar[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__ar[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_13 && tid_13 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@200.13--200.112) [129368]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@200.13--200.112) [129369]"}
            tid_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@200.13--200.112) [129370]"}
            tid_13 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@200.13--200.112) [129371]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < gsize)) && (0 <= tid_1_1 && tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], tid_1) != Seq#Index(Heap[diz, demo__ar], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_1) } { Seq#Index(Heap[diz, demo__ar], tid_1) }
        (0 <= tid_1 && tid_1 < gsize) && NoPerm < FullPerm ==> qpRange7(Seq#Index(Heap[diz, demo__ar], tid_1)) && invRecv7(Seq#Index(Heap[diz, demo__ar], tid_1)) == tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        ((0 <= invRecv7(o_9) && invRecv7(o_9) < gsize) && NoPerm < FullPerm) && qpRange7(o_9) ==> Seq#Index(Heap[diz, demo__ar], invRecv7(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_1) } { Seq#Index(Heap[diz, demo__ar], tid_1) }
        0 <= tid_1 && tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv7(o_9) && invRecv7(o_9) < gsize) && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv7(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv7(o_9) && invRecv7(o_9) < gsize) && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_14 && tid_14 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@201.13--201.113) [129372]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@201.13--201.113) [129373]"}
            tid_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@201.13--201.113) [129374]"}
            tid_14 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@201.13--201.113) [129375]"}
      (forall tid_3_1: int, tid_3_2: int ::
      
      (((tid_3_1 != tid_3_2 && (0 <= tid_3_1 && tid_3_1 < gsize)) && (0 <= tid_3_2 && tid_3_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_3_1) != Seq#Index(Heap[diz, demo__tmp], tid_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall tid_3_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_3_1) } { Seq#Index(Heap[diz, demo__tmp], tid_3_1) }
        (0 <= tid_3_1 && tid_3_1 < gsize) && NoPerm < FullPerm ==> qpRange8(Seq#Index(Heap[diz, demo__tmp], tid_3_1)) && invRecv8(Seq#Index(Heap[diz, demo__tmp], tid_3_1)) == tid_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        ((0 <= invRecv8(o_9) && invRecv8(o_9) < gsize) && NoPerm < FullPerm) && qpRange8(o_9) ==> Seq#Index(Heap[diz, demo__tmp], invRecv8(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_3_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_3_1) } { Seq#Index(Heap[diz, demo__tmp], tid_3_1) }
        0 <= tid_3_1 && tid_3_1 < gsize ==> Seq#Index(Heap[diz, demo__tmp], tid_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv8(o_9) && invRecv8(o_9) < gsize) && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv8(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv8(o_9) && invRecv8(o_9) < gsize) && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
      oldMask := Mask;
      oldHeap := Heap;
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
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@205.11--205.34) [129376]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@207.11--207.35) [129377]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@209.11--209.44) [129378]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@209.11--209.44) [129379]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@210.11--210.46) [129380]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@210.11--210.46) [129381]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__ar[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__ar[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_15 && tid_15 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@211.12--211.111) [129382]"}
            HasDirectPerm(PostMask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@211.12--211.111) [129383]"}
            tid_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@211.12--211.111) [129384]"}
            tid_15 < Seq#Length(PostHeap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@211.12--211.111) [129385]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize)) && (0 <= tid_5_1 && tid_5_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__ar], tid_5) != Seq#Index(PostHeap[diz, demo__ar], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__ar], tid_5) } { Seq#Index(PostHeap[diz, demo__ar], tid_5) }
        (0 <= tid_5 && tid_5 < gsize) && NoPerm < FullPerm ==> qpRange9(Seq#Index(PostHeap[diz, demo__ar], tid_5)) && invRecv9(Seq#Index(PostHeap[diz, demo__ar], tid_5)) == tid_5
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < gsize) && NoPerm < FullPerm) && qpRange9(o_9) ==> Seq#Index(PostHeap[diz, demo__ar], invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__ar], tid_5) } { Seq#Index(PostHeap[diz, demo__ar], tid_5) }
        0 <= tid_5 && tid_5 < gsize ==> Seq#Index(PostHeap[diz, demo__ar], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv9(o_9) && invRecv9(o_9) < gsize) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__ar], invRecv9(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < gsize) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_16 && tid_16 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@212.12--212.112) [129386]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@212.12--212.112) [129387]"}
            tid_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@212.12--212.112) [129388]"}
            tid_16 < Seq#Length(PostHeap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@212.12--212.112) [129389]"}
      (forall tid_7_2: int, tid_7_3: int ::
      
      (((tid_7_2 != tid_7_3 && (0 <= tid_7_2 && tid_7_2 < gsize)) && (0 <= tid_7_3 && tid_7_3 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) != Seq#Index(PostHeap[diz, demo__tmp], tid_7_3)
    );
    
    // -- Define Inverse Function
      assume (forall tid_7_2: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) } { Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) }
        (0 <= tid_7_2 && tid_7_2 < gsize) && NoPerm < FullPerm ==> qpRange10(Seq#Index(PostHeap[diz, demo__tmp], tid_7_2)) && invRecv10(Seq#Index(PostHeap[diz, demo__tmp], tid_7_2)) == tid_7_2
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < gsize) && NoPerm < FullPerm) && qpRange10(o_9) ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv10(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_7_2: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) } { Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) }
        0 <= tid_7_2 && tid_7_2 < gsize ==> Seq#Index(PostHeap[diz, demo__tmp], tid_7_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv10(o_9) && invRecv10(o_9) < gsize) && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv10(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv10(o_9) && invRecv10(o_9) < gsize) && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@202.11--202.26) [129390]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@203.11--203.19) [129391]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@204.11--204.38) [129392]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@205.11--205.34) [129393]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@206.11--206.39) [129394]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@207.11--207.35) [129395]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@208.11--208.20) [129396]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@209.11--209.44) [129397]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@210.11--210.46) [129398]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__ar[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@211.12--211.111) [129399]"}
        (forall tid_8_1: int, tid_8_2: int ::
        { neverTriggered11(tid_8_1), neverTriggered11(tid_8_2) }
        (((tid_8_1 != tid_8_2 && (0 <= tid_8_1 && tid_8_1 < gsize)) && (0 <= tid_8_2 && tid_8_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], tid_8_1) != Seq#Index(Heap[diz, demo__ar], tid_8_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@211.12--211.111) [129400]"}
        (forall tid_8_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_8_1) } { Seq#Index(Heap[diz, demo__ar], tid_8_1) }
        0 <= tid_8_1 && tid_8_1 < gsize ==> Mask[Seq#Index(Heap[diz, demo__ar], tid_8_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__ar[tid]
      assume (forall tid_8_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_8_1) } { Seq#Index(Heap[diz, demo__ar], tid_8_1) }
        (0 <= tid_8_1 && tid_8_1 < gsize) && NoPerm < FullPerm ==> qpRange11(Seq#Index(Heap[diz, demo__ar], tid_8_1)) && invRecv11(Seq#Index(Heap[diz, demo__ar], tid_8_1)) == tid_8_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (0 <= invRecv11(o_9) && invRecv11(o_9) < gsize) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(Heap[diz, demo__ar], invRecv11(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < gsize) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(Heap[diz, demo__ar], invRecv11(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv11(o_9) && invRecv11(o_9) < gsize) && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__tmp[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@212.12--212.112) [129401]"}
        (forall tid_9_1: int, tid_9_2: int ::
        { neverTriggered12(tid_9_1), neverTriggered12(tid_9_2) }
        (((tid_9_1 != tid_9_2 && (0 <= tid_9_1 && tid_9_1 < gsize)) && (0 <= tid_9_2 && tid_9_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_9_1) != Seq#Index(Heap[diz, demo__tmp], tid_9_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@212.12--212.112) [129402]"}
        (forall tid_9_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_9_1) } { Seq#Index(Heap[diz, demo__tmp], tid_9_1) }
        0 <= tid_9_1 && tid_9_1 < gsize ==> Mask[Seq#Index(Heap[diz, demo__tmp], tid_9_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__tmp[tid]
      assume (forall tid_9_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_9_1) } { Seq#Index(Heap[diz, demo__tmp], tid_9_1) }
        (0 <= tid_9_1 && tid_9_1 < gsize) && NoPerm < FullPerm ==> qpRange12(Seq#Index(Heap[diz, demo__tmp], tid_9_1)) && invRecv12(Seq#Index(Heap[diz, demo__tmp], tid_9_1)) == tid_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        (0 <= invRecv12(o_9) && invRecv12(o_9) < gsize) && (NoPerm < FullPerm && qpRange12(o_9)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv12(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < gsize) && (NoPerm < FullPerm && qpRange12(o_9)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv12(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv12(o_9) && invRecv12(o_9) < gsize) && (NoPerm < FullPerm && qpRange12(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
// Translation of method demo__main_post_check_1
// ==================================================

procedure demo__main_post_check_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_17: int;
  var j_22: int;
  var i_11: int;
  var j_9: int;
  var _x_tid_9: int;
  var QPMask: MaskType;
  var _x_tid_10: int;
  var _x_tid_11: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var _x_tid_12: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
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
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@225.12--225.35) [129403]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@227.12--227.36) [129404]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_17 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@228.12--228.144) [129405]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_17 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_22 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@228.12--228.144) [129406]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_17 >= 0 && (i_17 < Seq#Length(Heap[diz, demo__ar]) && (j_22 >= 0 && (j_22 < Seq#Length(Heap[diz, demo__ar]) && i_17 != j_22)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@228.12--228.144) [129407]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_auto.vpr@228.12--228.144) [129408]"}
            i_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@228.12--228.144) [129409]"}
            i_17 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@228.12--228.144) [129410]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_auto.vpr@228.12--228.144) [129411]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@228.12--228.144) [129412]"}
            j_22 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, demo__ar], i_1), Seq#Index(Heap[diz, demo__ar], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, demo__ar]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, demo__ar]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, demo__ar], i_1) != Seq#Index(Heap[diz, demo__ar], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
      if (*) {
        if (i_11 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@229.12--229.148) [129413]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_11 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_9 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@229.12--229.148) [129414]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_11 >= 0 && (i_11 < Seq#Length(Heap[diz, demo__tmp]) && (j_9 >= 0 && (j_9 < Seq#Length(Heap[diz, demo__tmp]) && i_11 != j_9)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@229.12--229.148) [129415]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@229.12--229.148) [129416]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@229.12--229.148) [129417]"}
            i_11 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@229.12--229.148) [129418]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@229.12--229.148) [129419]"}
            j_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@229.12--229.148) [129420]"}
            j_9 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_3: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3_2), Seq#Index(Heap[diz, demo__tmp], j_3) }
      i_3_2 >= 0 && (i_3_2 < Seq#Length(Heap[diz, demo__tmp]) && (j_3 >= 0 && (j_3 < Seq#Length(Heap[diz, demo__tmp]) && i_3_2 != j_3))) ==> Seq#Index(Heap[diz, demo__tmp], i_3_2) != Seq#Index(Heap[diz, demo__tmp], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__ar[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__ar[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_9 && _x_tid_9 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@230.13--230.124) [129421]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@230.13--230.124) [129422]"}
            _x_tid_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@230.13--230.124) [129423]"}
            _x_tid_9 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[_x_tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@230.13--230.124) [129424]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != Seq#Index(Heap[diz, demo__ar], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange13(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) && invRecv13(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((0 <= invRecv13(o_9) && invRecv13(o_9) < gsize) && NoPerm < FullPerm) && qpRange13(o_9) ==> Seq#Index(Heap[diz, demo__ar], invRecv13(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv13(o_9) && invRecv13(o_9) < gsize) && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv13(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv13(o_9) && invRecv13(o_9) < gsize) && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__tmp[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_10 && _x_tid_10 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@231.13--231.125) [129425]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@231.13--231.125) [129426]"}
            _x_tid_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@231.13--231.125) [129427]"}
            _x_tid_10 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[_x_tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@231.13--231.125) [129428]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != Seq#Index(Heap[diz, demo__tmp], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < FullPerm ==> qpRange14(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) && invRecv14(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        ((0 <= invRecv14(o_9) && invRecv14(o_9) < gsize) && NoPerm < FullPerm) && qpRange14(o_9) ==> Seq#Index(Heap[diz, demo__tmp], invRecv14(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        0 <= _x_tid_3 && _x_tid_3 < gsize ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv14(o_9) && invRecv14(o_9) < gsize) && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv14(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv14(o_9) && invRecv14(o_9) < gsize) && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    assume 0 < N;
    assume state(Heap, Mask);
    assume N < gsize;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__ar[_x_tid] } { demo__bin(N, _x_tid) } 0 <= _x_tid && _x_tid < gsize ==> diz.demo__ar[_x_tid].Ref__Integer_value == (_x_tid < N ? demo__bin(N, _x_tid) : 1))
      if (*) {
        if (0 <= _x_tid_11 && _x_tid_11 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@235.13--235.157) [129429]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@235.13--235.157) [129430]"}
            _x_tid_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@235.13--235.157) [129431]"}
            _x_tid_11 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[_x_tid].Ref__Integer_value (test_binomial_auto.vpr@235.13--235.157) [129432]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], _x_tid_11), Ref__Integer_value);
          if (_x_tid_11 < N) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@235.131--235.151) [129433]"}
                N >= 0;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= _x_tid might not hold. (test_binomial_auto.vpr@235.131--235.151) [129434]"}
                0 <= _x_tid_11;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion _x_tid <= N might not hold. (test_binomial_auto.vpr@235.131--235.151) [129435]"}
                _x_tid_11 <= N;
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    assume (forall _x_tid_5: int ::
      { Seq#Index(Heap[diz, demo__ar], _x_tid_5) } { demo__bin#frame(EmptyFrame, N, _x_tid_5) }
      0 <= _x_tid_5 && _x_tid_5 < gsize ==> Heap[Seq#Index(Heap[diz, demo__ar], _x_tid_5), Ref__Integer_value] == (if _x_tid_5 < N then demo__bin(Heap, N, _x_tid_5) else 1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } { diz.demo__ar[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> diz.demo__tmp[_x_tid].Ref__Integer_value == diz.demo__ar[_x_tid].Ref__Integer_value)
      if (*) {
        if (0 <= _x_tid_12 && _x_tid_12 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@236.13--236.158) [129436]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@236.13--236.158) [129437]"}
            _x_tid_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@236.13--236.158) [129438]"}
            _x_tid_12 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[_x_tid].Ref__Integer_value (test_binomial_auto.vpr@236.13--236.158) [129439]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__tmp], _x_tid_12), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@236.13--236.158) [129440]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@236.13--236.158) [129441]"}
            _x_tid_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@236.13--236.158) [129442]"}
            _x_tid_12 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[_x_tid].Ref__Integer_value (test_binomial_auto.vpr@236.13--236.158) [129443]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], _x_tid_12), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall _x_tid_7: int ::
      { Seq#Index(Heap[diz, demo__tmp], _x_tid_7) } { Seq#Index(Heap[diz, demo__ar], _x_tid_7) }
      0 <= _x_tid_7 && _x_tid_7 < gsize ==> Heap[Seq#Index(Heap[diz, demo__tmp], _x_tid_7), Ref__Integer_value] == Heap[Seq#Index(Heap[diz, demo__ar], _x_tid_7), Ref__Integer_value]
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
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@243.11--243.34) [129444]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@245.11--245.35) [129445]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@246.11--246.44) [129446]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@246.11--246.44) [129447]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@247.11--247.46) [129448]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@247.11--247.46) [129449]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@248.11--248.59) [129450]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@248.11--248.59) [129451]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@248.11--248.59) [129452]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@249.11--249.78) [129453]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@249.11--249.78) [129454]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@249.11--249.78) [129455]"}
          tid - 1 < Seq#Length(PostHeap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__tmp], tid - 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    assume 0 < N;
    assume state(PostHeap, PostMask);
    assume N < gsize;
    assume state(PostHeap, PostMask);
    if (0 < tid && tid <= N) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@253.11--253.107) [129456]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@253.11--253.107) [129457]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@253.11--253.107) [129458]"}
          tid - 1 < Seq#Length(PostHeap[diz, demo__tmp]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@253.11--253.107) [129459]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@253.85--253.106) [129460]"}
            N >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_auto.vpr@253.85--253.106) [129461]"}
            0 <= tid - 1;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N might not hold. (test_binomial_auto.vpr@253.85--253.106) [129462]"}
            tid - 1 <= N;
          // Stop execution
          assume false;
        }
      assume PostHeap[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(PostHeap, N, tid - 1);
    }
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@254.11--254.84) [129463]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@254.11--254.84) [129464]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@254.11--254.84) [129465]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@254.11--254.84) [129466]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
      if (tid < N) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@254.62--254.79) [129467]"}
            N >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@254.62--254.79) [129468]"}
            0 <= tid;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@254.62--254.79) [129469]"}
            tid <= N;
          // Stop execution
          assume false;
        }
      }
    assume PostHeap[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(PostHeap, N, tid) else 1);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@237.11--237.19) [129470]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@238.11--238.23) [129471]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@239.11--239.21) [129472]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@240.11--240.26) [129473]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@241.11--241.19) [129474]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@242.11--242.38) [129475]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@243.11--243.34) [129476]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@244.11--244.39) [129477]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@245.11--245.35) [129478]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@246.11--246.44) [129479]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@247.11--247.46) [129480]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@248.11--248.59) [129481]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
    if (tid > 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@249.11--249.78) [129482]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@250.11--250.20) [129483]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@251.11--251.16) [129484]"}
      0 < N;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@252.11--252.20) [129485]"}
      N < gsize;
    if (0 < tid && tid <= N) {
      assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1) might not hold. (test_binomial_auto.vpr@253.11--253.107) [129486]"}
        Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N, tid - 1);
    }
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@254.11--254.84) [129487]"}
      Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method demo__main_post_check_2
// ==================================================

procedure demo__main_post_check_2(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_25: int;
  var j_25: int;
  var i_27: int;
  var j_21: int;
  var _x_tid_13: int;
  var QPMask: MaskType;
  var _x_tid_14: int;
  var _x_tid_15: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
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
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@267.12--267.35) [129488]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@269.12--269.36) [129489]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_25 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@270.12--270.144) [129490]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_25 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_25 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@270.12--270.144) [129491]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_25 >= 0 && (i_25 < Seq#Length(Heap[diz, demo__ar]) && (j_25 >= 0 && (j_25 < Seq#Length(Heap[diz, demo__ar]) && i_25 != j_25)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@270.12--270.144) [129492]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_auto.vpr@270.12--270.144) [129493]"}
            i_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@270.12--270.144) [129494]"}
            i_25 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@270.12--270.144) [129495]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_auto.vpr@270.12--270.144) [129496]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@270.12--270.144) [129497]"}
            j_25 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, demo__ar], i_1), Seq#Index(Heap[diz, demo__ar], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, demo__ar]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, demo__ar]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, demo__ar], i_1) != Seq#Index(Heap[diz, demo__ar], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
      if (*) {
        if (i_27 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@271.12--271.148) [129498]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_27 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_21 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@271.12--271.148) [129499]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_27 >= 0 && (i_27 < Seq#Length(Heap[diz, demo__tmp]) && (j_21 >= 0 && (j_21 < Seq#Length(Heap[diz, demo__tmp]) && i_27 != j_21)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@271.12--271.148) [129500]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@271.12--271.148) [129501]"}
            i_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@271.12--271.148) [129502]"}
            i_27 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@271.12--271.148) [129503]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@271.12--271.148) [129504]"}
            j_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@271.12--271.148) [129505]"}
            j_21 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_3: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3_2), Seq#Index(Heap[diz, demo__tmp], j_3) }
      i_3_2 >= 0 && (i_3_2 < Seq#Length(Heap[diz, demo__tmp]) && (j_3 >= 0 && (j_3 < Seq#Length(Heap[diz, demo__tmp]) && i_3_2 != j_3))) ==> Seq#Index(Heap[diz, demo__tmp], i_3_2) != Seq#Index(Heap[diz, demo__tmp], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__ar[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__ar[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_13 && _x_tid_13 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@272.13--272.124) [129506]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@272.13--272.124) [129507]"}
            _x_tid_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@272.13--272.124) [129508]"}
            _x_tid_13 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[_x_tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@272.13--272.124) [129509]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != Seq#Index(Heap[diz, demo__ar], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange15(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) && invRecv15(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        ((0 <= invRecv15(o_9) && invRecv15(o_9) < gsize) && NoPerm < FullPerm) && qpRange15(o_9) ==> Seq#Index(Heap[diz, demo__ar], invRecv15(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv15(o_9) && invRecv15(o_9) < gsize) && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv15(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv15(o_9) && invRecv15(o_9) < gsize) && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__tmp[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_14 && _x_tid_14 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@273.13--273.125) [129510]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@273.13--273.125) [129511]"}
            _x_tid_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@273.13--273.125) [129512]"}
            _x_tid_14 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[_x_tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@273.13--273.125) [129513]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != Seq#Index(Heap[diz, demo__tmp], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < FullPerm ==> qpRange16(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) && invRecv16(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        ((0 <= invRecv16(o_9) && invRecv16(o_9) < gsize) && NoPerm < FullPerm) && qpRange16(o_9) ==> Seq#Index(Heap[diz, demo__tmp], invRecv16(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        0 <= _x_tid_3 && _x_tid_3 < gsize ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv16(o_9) && invRecv16(o_9) < gsize) && NoPerm < FullPerm) && qpRange16(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv16(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv16(o_9) && invRecv16(o_9) < gsize) && NoPerm < FullPerm) && qpRange16(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    assume 0 < N;
    assume state(Heap, Mask);
    assume N < gsize;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__ar[_x_tid] } { demo__bin(N, _x_tid) } 0 <= _x_tid && _x_tid < gsize ==> diz.demo__ar[_x_tid].Ref__Integer_value == (_x_tid < N ? demo__bin(N, _x_tid) : 1))
      if (*) {
        if (0 <= _x_tid_15 && _x_tid_15 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@277.13--277.157) [129514]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@277.13--277.157) [129515]"}
            _x_tid_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@277.13--277.157) [129516]"}
            _x_tid_15 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[_x_tid].Ref__Integer_value (test_binomial_auto.vpr@277.13--277.157) [129517]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], _x_tid_15), Ref__Integer_value);
          if (_x_tid_15 < N) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@277.131--277.151) [129518]"}
                N >= 0;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= _x_tid might not hold. (test_binomial_auto.vpr@277.131--277.151) [129519]"}
                0 <= _x_tid_15;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion _x_tid <= N might not hold. (test_binomial_auto.vpr@277.131--277.151) [129520]"}
                _x_tid_15 <= N;
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    assume (forall _x_tid_5: int ::
      { Seq#Index(Heap[diz, demo__ar], _x_tid_5) } { demo__bin#frame(EmptyFrame, N, _x_tid_5) }
      0 <= _x_tid_5 && _x_tid_5 < gsize ==> Heap[Seq#Index(Heap[diz, demo__ar], _x_tid_5), Ref__Integer_value] == (if _x_tid_5 < N then demo__bin(Heap, N, _x_tid_5) else 1)
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
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@284.11--284.34) [129521]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@286.11--286.35) [129522]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@287.11--287.44) [129523]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@287.11--287.44) [129524]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@288.11--288.46) [129525]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@288.11--288.46) [129526]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@289.11--289.59) [129527]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@289.11--289.59) [129528]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@289.11--289.59) [129529]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@290.11--290.60) [129530]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@290.11--290.60) [129531]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@290.11--290.60) [129532]"}
        tid < Seq#Length(PostHeap[diz, demo__tmp]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, demo__tmp], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    assume 0 < N;
    assume state(PostHeap, PostMask);
    assume N < gsize;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@294.11--294.84) [129533]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@294.11--294.84) [129534]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@294.11--294.84) [129535]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@294.11--294.84) [129536]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
      if (tid < N) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@294.62--294.79) [129537]"}
            N >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@294.62--294.79) [129538]"}
            0 <= tid;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@294.62--294.79) [129539]"}
            tid <= N;
          // Stop execution
          assume false;
        }
      }
    assume PostHeap[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(PostHeap, N, tid) else 1);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@278.11--278.19) [129540]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@279.11--279.23) [129541]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@280.11--280.21) [129542]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@281.11--281.26) [129543]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@282.11--282.19) [129544]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@283.11--283.38) [129545]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@284.11--284.34) [129546]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@285.11--285.39) [129547]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@286.11--286.35) [129548]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@287.11--287.44) [129549]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@288.11--288.46) [129550]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@289.11--289.59) [129551]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@290.11--290.60) [129552]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@291.11--291.20) [129553]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@292.11--292.16) [129554]"}
      0 < N;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@293.11--293.20) [129555]"}
      N < gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@294.11--294.84) [129556]"}
      Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}