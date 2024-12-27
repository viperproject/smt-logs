// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:18:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_v2_pvl.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_v2_pvl-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_34: Ref, f_40: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_34, f_40] }
  Heap[o_34, $allocated] ==> Heap[Heap[o_34, f_40], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_18: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_18] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_18) ==> Heap[o_13, f_18] == ExhaleHeap[o_13, f_18]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12), ExhaleHeap[null, PredicateMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> Heap[null, PredicateMaskField(pm_f_12)] == ExhaleHeap[null, PredicateMaskField(pm_f_12)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, PredicateMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12), ExhaleHeap[null, WandMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> Heap[null, WandMaskField(pm_f_12)] == ExhaleHeap[null, WandMaskField(pm_f_12)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, WandMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_34: Ref, f_36: (Field A B), v: B ::
  { Heap[o_34, f_36:=v] }
  succHeap(Heap, Heap[o_34, f_36:=v])
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
function  neverTriggered2(tid_3: int): bool;
function  neverTriggered3(tid_5: int): bool;
function  neverTriggered4(tid_7: int): bool;
function  neverTriggered5(tid_9: int): bool;
function  neverTriggered6(tid_11: int): bool;
function  neverTriggered7(tid_13: int): bool;
function  neverTriggered8(tid_14: int): bool;
function  neverTriggered9(tid_15: int): bool;
function  neverTriggered10(tid_16: int): bool;
function  neverTriggered11(tid_17: int): bool;
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
  var __flatten_9: Ref;
  var __flatten_10: Ref;
  var __flatten_12: Ref;
  var __last_barrier: int;
  var __flatten_3: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var __flatten_1: int;
  var __flatten_7: int;
  var __flatten_11: int;
  
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@21.12--21.34) [58683]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@23.12--23.34) [58684]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@25.12--25.34) [58685]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@26.12--26.58) [58686]"}
        HasDirectPerm(Mask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@26.12--26.58) [58687]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@26.12--26.58) [58688]"}
        tid < Seq#Length(Heap[diz, Ref__a]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__a], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@27.12--27.58) [58689]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@27.12--27.58) [58690]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@27.12--27.58) [58691]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__b], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@28.12--28.58) [58692]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@28.12--28.58) [58693]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@28.12--28.58) [58694]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@28.12--28.58) [58695]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@29.12--29.50) [58696]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@29.12--29.50) [58697]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@29.12--29.50) [58698]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@29.12--29.50) [58699]"}
        HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value);
    assume Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@36.11--36.33) [58700]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@38.11--38.33) [58701]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@40.11--40.33) [58702]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@41.11--41.40) [58703]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@41.11--41.40) [58704]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@42.11--42.40) [58705]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@42.11--42.40) [58706]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@43.11--43.40) [58707]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@43.11--43.40) [58708]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@44.11--44.57) [58709]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@44.11--44.57) [58710]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@44.11--44.57) [58711]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@44.11--44.57) [58712]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@45.11--45.49) [58713]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@45.11--45.49) [58714]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@45.11--45.49) [58715]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@45.11--45.49) [58716]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] > 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@46.11--46.57) [58717]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@46.11--46.57) [58718]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@46.11--46.57) [58719]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@46.11--46.57) [58720]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@47.11--47.49) [58721]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@47.11--47.49) [58722]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@47.11--47.49) [58723]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@47.11--47.49) [58724]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@48.11--48.57) [58725]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@48.11--48.57) [58726]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@48.11--48.57) [58727]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@48.11--48.57) [58728]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@49.11--49.49) [58729]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@49.11--49.49) [58730]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@49.11--49.49) [58731]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@49.11--49.49) [58732]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] > 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_2, $allocated];
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_6, $allocated];
    assume Heap[__flatten_8, $allocated];
    assume Heap[__flatten_9, $allocated];
    assume Heap[__flatten_10, $allocated];
    assume Heap[__flatten_12, $allocated];
  
  // -- Translating statement: __last_barrier := 0 -- test_kernel_example_v2_pvl.vpr@63.3--63.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := diz.Ref__b[tid] -- test_kernel_example_v2_pvl.vpr@64.3--64.33
    
    // -- Check definedness of diz.Ref__b[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@64.3--64.33) [58733]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@64.3--64.33) [58734]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@64.3--64.33) [58735]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    __flatten_2 := Seq#Index(Heap[diz, Ref__b], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := diz.Ref__c[tid] -- test_kernel_example_v2_pvl.vpr@65.3--65.33
    
    // -- Check definedness of diz.Ref__c[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@65.3--65.33) [58736]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@65.3--65.33) [58737]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@65.3--65.33) [58738]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
    __flatten_4 := Seq#Index(Heap[diz, Ref__c], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := __flatten_4.Ref__Integer_value -- test_kernel_example_v2_pvl.vpr@66.3--66.48
    
    // -- Check definedness of __flatten_4.Ref__Integer_value
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_kernel_example_v2_pvl.vpr@66.3--66.48) [58739]"}
        HasDirectPerm(Mask, __flatten_4, Ref__Integer_value);
    __flatten_3 := Heap[__flatten_4, Ref__Integer_value];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2.Ref__Integer_value := __flatten_3 -- test_kernel_example_v2_pvl.vpr@67.3--67.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_2.Ref__Integer_value (test_kernel_example_v2_pvl.vpr@67.3--67.48) [58740]"}
      FullPerm == Mask[__flatten_2, Ref__Integer_value];
    Heap := Heap[__flatten_2, Ref__Integer_value:=__flatten_3];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := Ref__main_barrier(diz, current_thread_id, tcount, gsize, tid,
  //   gid, lid, 1, __last_barrier) -- test_kernel_example_v2_pvl.vpr@68.3--68.108
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion diz != null might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58741]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion current_thread_id >= 0 might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58742]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion false || __last_barrier == 0 might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58743]"}
        __last_barrier == 0;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58744]"}
        0 <= tid;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion tid < tcount might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58745]"}
        tid < tcount;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion tid == lid might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58746]"}
        tid == lid;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58747]"}
        tcount == gsize;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion gid == 0 might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58748]"}
        gid == 0;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58749]"}
        Mask[diz, Ref__a] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[diz, Ref__a];
      Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58750]"}
        Seq#Length(Heap[diz, Ref__a]) == tcount;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58751]"}
        Mask[diz, Ref__b] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[diz, Ref__b];
      Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58752]"}
        Seq#Length(Heap[diz, Ref__b]) == tcount;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58753]"}
        Mask[diz, Ref__c] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[diz, Ref__c];
      Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58754]"}
        Seq#Length(Heap[diz, Ref__c]) == tcount;
      if (__last_barrier == 1) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58755]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
        perm := 1 / 4;
        assert {:msg "  The precondition of method Ref__main_barrier might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58756]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58757]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
        perm := 1 / 4;
        assert {:msg "  The precondition of method Ref__main_barrier might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58758]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58759]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
        if (tid > 0) {
          perm := 1 / 4;
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58760]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid - 1].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58761]"}
              perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] - perm];
        }
      }
      if (__last_barrier == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58762]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58763]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
        perm := 1 / 4;
        assert {:msg "  The precondition of method Ref__main_barrier might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58764]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58765]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
      }
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58766]"}
        Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] > 0;
      assert {:msg "  The precondition of method Ref__main_barrier might not hold. Assertion diz.Ref__c[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58767]"}
        Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
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
        perm := FullPerm;
        assume Seq#Index(Heap[diz, Ref__a], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := 1 / 4;
        assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58768]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := 1 / 4;
        assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58769]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        if (tid > 0) {
          perm := 1 / 4;
          assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58770]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid - 1) != null;
          Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
        }
      }
      if (__flatten_1 == 0) {
        perm := FullPerm;
        assume Seq#Index(Heap[diz, Ref__a], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, Ref__b], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := 1 / 4;
        assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@68.3--68.108) [58771]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      assume __flatten_1 == 1;
      assume Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] > 0;
      if (tid > 0) {
        assume Heap[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] > 0;
      }
      assume Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __last_barrier := __flatten_1 -- test_kernel_example_v2_pvl.vpr@69.3--69.32
    __last_barrier := __flatten_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (tid > 0) -- test_kernel_example_v2_pvl.vpr@70.3--81.4
    if (tid > 0) {
      
      // -- Translating statement: __flatten_6 := diz.Ref__a[tid] -- test_kernel_example_v2_pvl.vpr@71.5--71.35
        
        // -- Check definedness of diz.Ref__a[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@71.5--71.35) [58772]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@71.5--71.35) [58773]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@71.5--71.35) [58774]"}
            tid < Seq#Length(Heap[diz, Ref__a]);
        __flatten_6 := Seq#Index(Heap[diz, Ref__a], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_8 := diz.Ref__b[tid - 1] -- test_kernel_example_v2_pvl.vpr@72.5--72.39
        
        // -- Check definedness of diz.Ref__b[tid - 1]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@72.5--72.39) [58775]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@72.5--72.39) [58776]"}
            tid - 1 >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@72.5--72.39) [58777]"}
            tid - 1 < Seq#Length(Heap[diz, Ref__b]);
        __flatten_8 := Seq#Index(Heap[diz, Ref__b], tid - 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9 := diz.Ref__b[tid] -- test_kernel_example_v2_pvl.vpr@73.5--73.35
        
        // -- Check definedness of diz.Ref__b[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@73.5--73.35) [58778]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@73.5--73.35) [58779]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@73.5--73.35) [58780]"}
            tid < Seq#Length(Heap[diz, Ref__b]);
        __flatten_9 := Seq#Index(Heap[diz, Ref__b], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_7 := __flatten_8.Ref__Integer_value +
  //   __flatten_9.Ref__Integer_value -- test_kernel_example_v2_pvl.vpr@74.5--74.83
        
        // -- Check definedness of __flatten_8.Ref__Integer_value + __flatten_9.Ref__Integer_value
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (test_kernel_example_v2_pvl.vpr@74.5--74.83) [58781]"}
            HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_9.Ref__Integer_value (test_kernel_example_v2_pvl.vpr@74.5--74.83) [58782]"}
            HasDirectPerm(Mask, __flatten_9, Ref__Integer_value);
        __flatten_7 := Heap[__flatten_8, Ref__Integer_value] + Heap[__flatten_9, Ref__Integer_value];
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_6.Ref__Integer_value := __flatten_7 -- test_kernel_example_v2_pvl.vpr@75.5--75.50
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (test_kernel_example_v2_pvl.vpr@75.5--75.50) [58783]"}
          FullPerm == Mask[__flatten_6, Ref__Integer_value];
        Heap := Heap[__flatten_6, Ref__Integer_value:=__flatten_7];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: __flatten_10 := diz.Ref__a[tid] -- test_kernel_example_v2_pvl.vpr@77.5--77.36
        
        // -- Check definedness of diz.Ref__a[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@77.5--77.36) [58784]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@77.5--77.36) [58785]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@77.5--77.36) [58786]"}
            tid < Seq#Length(Heap[diz, Ref__a]);
        __flatten_10 := Seq#Index(Heap[diz, Ref__a], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_12 := diz.Ref__b[tid] -- test_kernel_example_v2_pvl.vpr@78.5--78.36
        
        // -- Check definedness of diz.Ref__b[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@78.5--78.36) [58787]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@78.5--78.36) [58788]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@78.5--78.36) [58789]"}
            tid < Seq#Length(Heap[diz, Ref__b]);
        __flatten_12 := Seq#Index(Heap[diz, Ref__b], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_11 := __flatten_12.Ref__Integer_value -- test_kernel_example_v2_pvl.vpr@79.5--79.52
        
        // -- Check definedness of __flatten_12.Ref__Integer_value
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_12.Ref__Integer_value (test_kernel_example_v2_pvl.vpr@79.5--79.52) [58790]"}
            HasDirectPerm(Mask, __flatten_12, Ref__Integer_value);
        __flatten_11 := Heap[__flatten_12, Ref__Integer_value];
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_10.Ref__Integer_value := __flatten_11 -- test_kernel_example_v2_pvl.vpr@80.5--80.52
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_10.Ref__Integer_value (test_kernel_example_v2_pvl.vpr@80.5--80.52) [58791]"}
          FullPerm == Mask[__flatten_10, Ref__Integer_value];
        Heap := Heap[__flatten_10, Ref__Integer_value:=__flatten_11];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion 0 <= tid might not hold. (test_kernel_example_v2_pvl.vpr@30.11--30.19) [58792]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid < tcount might not hold. (test_kernel_example_v2_pvl.vpr@31.11--31.23) [58793]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid == lid might not hold. (test_kernel_example_v2_pvl.vpr@32.11--32.21) [58794]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tcount == gsize might not hold. (test_kernel_example_v2_pvl.vpr@33.11--33.26) [58795]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion gid == 0 might not hold. (test_kernel_example_v2_pvl.vpr@34.11--34.19) [58796]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@35.11--35.36) [58797]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@36.11--36.33) [58798]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@37.11--37.36) [58799]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@38.11--38.33) [58800]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@39.11--39.36) [58801]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@40.11--40.33) [58802]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_kernel_example_v2_pvl.vpr@41.11--41.40) [58803]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_kernel_example_v2_pvl.vpr@42.11--42.40) [58804]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_kernel_example_v2_pvl.vpr@43.11--43.40) [58805]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@44.11--44.57) [58806]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@44.11--44.57) [58807]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@45.11--45.49) [58808]"}
      Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] > 0;
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@46.11--46.57) [58809]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@46.11--46.57) [58810]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@47.11--47.49) [58811]"}
      Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@48.11--48.57) [58812]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@48.11--48.57) [58813]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@49.11--49.49) [58814]"}
      Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@94.12--94.34) [58815]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@96.12--96.34) [58816]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@98.12--98.34) [58817]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    if (last_barrier == 1) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58818]"}
          HasDirectPerm(Mask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58819]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58820]"}
          tid < Seq#Length(Heap[diz, Ref__a]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, Ref__a], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58821]"}
          HasDirectPerm(Mask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58822]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58823]"}
          tid < Seq#Length(Heap[diz, Ref__b]);
      perm := 1 / 4;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58824]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58825]"}
          HasDirectPerm(Mask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58826]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58827]"}
          tid < Seq#Length(Heap[diz, Ref__c]);
      perm := 1 / 4;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58828]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      if (tid > 0) {
        
        // -- Check definedness of acc(diz.Ref__b[tid - 1].Ref__Integer_value, 1 / 4)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58829]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58830]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58831]"}
            tid - 1 < Seq#Length(Heap[diz, Ref__b]);
        perm := 1 / 4;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@99.12--99.252) [58832]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid - 1) != null;
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
    }
    assume state(Heap, Mask);
    if (last_barrier == 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58833]"}
          HasDirectPerm(Mask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58834]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58835]"}
          tid < Seq#Length(Heap[diz, Ref__a]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, Ref__a], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58836]"}
          HasDirectPerm(Mask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58837]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58838]"}
          tid < Seq#Length(Heap[diz, Ref__b]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, Ref__b], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58839]"}
          HasDirectPerm(Mask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58840]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58841]"}
          tid < Seq#Length(Heap[diz, Ref__c]);
      perm := 1 / 4;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@100.12--100.182) [58842]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      
      // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value > 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@101.12--101.76) [58843]"}
          HasDirectPerm(Mask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@101.12--101.76) [58844]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@101.12--101.76) [58845]"}
          tid < Seq#Length(Heap[diz, Ref__b]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@101.12--101.76) [58846]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value);
      assume Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      
      // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value > 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@102.12--102.76) [58847]"}
          HasDirectPerm(Mask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@102.12--102.76) [58848]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@102.12--102.76) [58849]"}
          tid < Seq#Length(Heap[diz, Ref__c]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@102.12--102.76) [58850]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value);
      assume Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@109.11--109.33) [58851]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@111.11--111.33) [58852]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@113.11--113.33) [58853]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@114.11--114.40) [58854]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@114.11--114.40) [58855]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@115.11--115.40) [58856]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@115.11--115.40) [58857]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@116.11--116.40) [58858]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@116.11--116.40) [58859]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    if (sys__result == 1) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58860]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58861]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58862]"}
          tid < Seq#Length(PostHeap[diz, Ref__a]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, Ref__a], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58863]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58864]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58865]"}
          tid < Seq#Length(PostHeap[diz, Ref__b]);
      perm := 1 / 4;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58866]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58867]"}
          HasDirectPerm(PostMask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58868]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58869]"}
          tid < Seq#Length(PostHeap[diz, Ref__c]);
      perm := 1 / 4;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58870]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      if (tid > 0) {
        
        // -- Check definedness of acc(diz.Ref__b[tid - 1].Ref__Integer_value, 1 / 4)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58871]"}
            HasDirectPerm(PostMask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58872]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58873]"}
            tid - 1 < Seq#Length(PostHeap[diz, Ref__b]);
        perm := 1 / 4;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58874]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid - 1) != null;
        PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value] + perm];
        assume state(PostHeap, PostMask);
      }
    }
    assume state(PostHeap, PostMask);
    if (sys__result == 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58875]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58876]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58877]"}
          tid < Seq#Length(PostHeap[diz, Ref__a]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, Ref__a], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58878]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58879]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58880]"}
          tid < Seq#Length(PostHeap[diz, Ref__b]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, Ref__b], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58881]"}
          HasDirectPerm(PostMask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58882]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58883]"}
          tid < Seq#Length(PostHeap[diz, Ref__c]);
      perm := 1 / 4;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58884]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume sys__result == this_barrier;
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      
      // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value > 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@120.11--120.75) [58885]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@120.11--120.75) [58886]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@120.11--120.75) [58887]"}
          tid < Seq#Length(PostHeap[diz, Ref__b]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@120.11--120.75) [58888]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      if (tid > 0) {
        
        // -- Check definedness of diz.Ref__b[tid - 1].Ref__Integer_value > 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@121.11--121.93) [58889]"}
            HasDirectPerm(PostMask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@121.11--121.93) [58890]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@121.11--121.93) [58891]"}
            tid - 1 < Seq#Length(PostHeap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid - 1].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@121.11--121.93) [58892]"}
            HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value);
        assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value] > 0;
      }
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      
      // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value > 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@122.11--122.75) [58893]"}
          HasDirectPerm(PostMask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@122.11--122.75) [58894]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@122.11--122.75) [58895]"}
          tid < Seq#Length(PostHeap[diz, Ref__c]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@122.11--122.75) [58896]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] > 0;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_kernel_example_v2_pvl.vpr@124.3--124.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_kernel_example_v2_pvl.vpr@103.11--103.19) [58897]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion tid < tcount might not hold. (test_kernel_example_v2_pvl.vpr@104.11--104.23) [58898]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion tid == lid might not hold. (test_kernel_example_v2_pvl.vpr@105.11--105.21) [58899]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_kernel_example_v2_pvl.vpr@106.11--106.26) [58900]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion gid == 0 might not hold. (test_kernel_example_v2_pvl.vpr@107.11--107.19) [58901]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@108.11--108.36) [58902]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@109.11--109.33) [58903]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@110.11--110.36) [58904]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@111.11--111.33) [58905]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@112.11--112.36) [58906]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@113.11--113.33) [58907]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_kernel_example_v2_pvl.vpr@114.11--114.40) [58908]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_kernel_example_v2_pvl.vpr@115.11--115.40) [58909]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_kernel_example_v2_pvl.vpr@116.11--116.40) [58910]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    if (sys__result == 1) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58911]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
      perm := 1 / 4;
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58912]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58913]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
      perm := 1 / 4;
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58914]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58915]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
      if (tid > 0) {
        perm := 1 / 4;
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58916]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid - 1].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@117.11--117.250) [58917]"}
            perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] - perm];
      }
    }
    if (sys__result == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58918]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58919]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
      perm := 1 / 4;
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58920]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@118.11--118.180) [58921]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion sys__result == this_barrier might not hold. (test_kernel_example_v2_pvl.vpr@119.11--119.38) [58922]"}
      sys__result == this_barrier;
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@120.11--120.75) [58923]"}
        Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    }
    if (this_barrier == 1) {
      if (tid > 0) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__b[tid - 1].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@121.11--121.93) [58924]"}
          Heap[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] > 0;
      }
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__c[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@122.11--122.75) [58925]"}
        Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
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
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var j: int;
  var i_4: int;
  var j_6: int;
  var tid_2: int;
  var QPMask: MaskType;
  var tid_4: int;
  var tid_6: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_8: int;
  var tid_10: int;
  var tid_12: int;
  var tid_18: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@133.12--133.34) [58926]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@135.12--135.34) [58927]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@137.12--137.34) [58928]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
      if (*) {
        if (i_14 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@138.12--138.136) [58929]"}
            HasDirectPerm(Mask, diz, Ref__a);
          if (i_14 < Seq#Length(Heap[diz, Ref__a])) {
            if (j_5 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@138.12--138.136) [58930]"}
                HasDirectPerm(Mask, diz, Ref__a);
            }
          }
        }
        if (i_14 >= 0 && (i_14 < Seq#Length(Heap[diz, Ref__a]) && (j_5 >= 0 && (j_5 < Seq#Length(Heap[diz, Ref__a]) && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@138.12--138.136) [58931]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@138.12--138.136) [58932]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@138.12--138.136) [58933]"}
            i_14 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@138.12--138.136) [58934]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@138.12--138.136) [58935]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@138.12--138.136) [58936]"}
            j_5 < Seq#Length(Heap[diz, Ref__a]);
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
        if (i_2 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@139.12--139.136) [58937]"}
            HasDirectPerm(Mask, diz, Ref__b);
          if (i_2 < Seq#Length(Heap[diz, Ref__b])) {
            if (j >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@139.12--139.136) [58938]"}
                HasDirectPerm(Mask, diz, Ref__b);
            }
          }
        }
        if (i_2 >= 0 && (i_2 < Seq#Length(Heap[diz, Ref__b]) && (j >= 0 && (j < Seq#Length(Heap[diz, Ref__b]) && i_2 != j)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@139.12--139.136) [58939]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@139.12--139.136) [58940]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@139.12--139.136) [58941]"}
            i_2 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@139.12--139.136) [58942]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@139.12--139.136) [58943]"}
            j >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@139.12--139.136) [58944]"}
            j < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, Ref__b], i_3), Seq#Index(Heap[diz, Ref__b], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, Ref__b]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, Ref__b]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, Ref__b], i_3) != Seq#Index(Heap[diz, Ref__b], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
      if (*) {
        if (i_4 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@140.12--140.136) [58945]"}
            HasDirectPerm(Mask, diz, Ref__c);
          if (i_4 < Seq#Length(Heap[diz, Ref__c])) {
            if (j_6 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@140.12--140.136) [58946]"}
                HasDirectPerm(Mask, diz, Ref__c);
            }
          }
        }
        if (i_4 >= 0 && (i_4 < Seq#Length(Heap[diz, Ref__c]) && (j_6 >= 0 && (j_6 < Seq#Length(Heap[diz, Ref__c]) && i_4 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@140.12--140.136) [58947]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@140.12--140.136) [58948]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@140.12--140.136) [58949]"}
            i_4 < Seq#Length(Heap[diz, Ref__c]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@140.12--140.136) [58950]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@140.12--140.136) [58951]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@140.12--140.136) [58952]"}
            j_6 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    assume (forall i_5: int, j_5_1: int ::
      { Seq#Index(Heap[diz, Ref__c], i_5), Seq#Index(Heap[diz, Ref__c], j_5_1) }
      i_5 >= 0 && (i_5 < Seq#Length(Heap[diz, Ref__c]) && (j_5_1 >= 0 && (j_5_1 < Seq#Length(Heap[diz, Ref__c]) && i_5 != j_5_1))) ==> Seq#Index(Heap[diz, Ref__c], i_5) != Seq#Index(Heap[diz, Ref__c], j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__a[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__a[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_2 && tid_2 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@141.13--141.110) [58953]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@141.13--141.110) [58954]"}
            tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@141.13--141.110) [58955]"}
            tid_2 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@141.13--141.110) [58956]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < gsize)) && (0 <= tid_1_1 && tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], tid_1) != Seq#Index(Heap[diz, Ref__a], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_1) } { Seq#Index(Heap[diz, Ref__a], tid_1) }
        (0 <= tid_1 && tid_1 < gsize) && NoPerm < FullPerm ==> qpRange1(Seq#Index(Heap[diz, Ref__a], tid_1)) && invRecv1(Seq#Index(Heap[diz, Ref__a], tid_1)) == tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(Heap[diz, Ref__a], invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_1) } { Seq#Index(Heap[diz, Ref__a], tid_1) }
        0 <= tid_1 && tid_1 < gsize ==> Seq#Index(Heap[diz, Ref__a], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], invRecv1(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__b[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__b[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_4 && tid_4 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@142.13--142.110) [58957]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@142.13--142.110) [58958]"}
            tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@142.13--142.110) [58959]"}
            tid_4 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@142.13--142.110) [58960]"}
      (forall tid_3: int, tid_3_1: int ::
      
      (((tid_3 != tid_3_1 && (0 <= tid_3 && tid_3 < gsize)) && (0 <= tid_3_1 && tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__b], tid_3) != Seq#Index(Heap[diz, Ref__b], tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_3) } { Seq#Index(Heap[diz, Ref__b], tid_3) }
        (0 <= tid_3 && tid_3 < gsize) && NoPerm < FullPerm ==> qpRange2(Seq#Index(Heap[diz, Ref__b], tid_3)) && invRecv2(Seq#Index(Heap[diz, Ref__b], tid_3)) == tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(Heap[diz, Ref__b], invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_3) } { Seq#Index(Heap[diz, Ref__b], tid_3) }
        0 <= tid_3 && tid_3 < gsize ==> Seq#Index(Heap[diz, Ref__b], tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__b], invRecv2(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__c[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= tid_6 && tid_6 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@143.13--143.110) [58961]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@143.13--143.110) [58962]"}
            tid_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@143.13--143.110) [58963]"}
            tid_6 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@143.13--143.110) [58964]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize)) && (0 <= tid_5_1 && tid_5_1 < gsize)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__c], tid_5) != Seq#Index(Heap[diz, Ref__c], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_5) } { Seq#Index(Heap[diz, Ref__c], tid_5) }
        (0 <= tid_5 && tid_5 < gsize) && NoPerm < 1 / 4 ==> qpRange3(Seq#Index(Heap[diz, Ref__c], tid_5)) && invRecv3(Seq#Index(Heap[diz, Ref__c], tid_5)) == tid_5
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize) && NoPerm < 1 / 4) && qpRange3(o_4) ==> Seq#Index(Heap[diz, Ref__c], invRecv3(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@143.13--143.110) [58965]"}
      (forall tid_5: int ::
      { Seq#Index(Heap[diz, Ref__c], tid_5) } { Seq#Index(Heap[diz, Ref__c], tid_5) }
      0 <= tid_5 && tid_5 < gsize ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_5) } { Seq#Index(Heap[diz, Ref__c], tid_5) }
        (0 <= tid_5 && tid_5 < gsize) && 1 / 4 > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize) && NoPerm < 1 / 4) && qpRange3(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__c], invRecv3(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize) && NoPerm < 1 / 4) && qpRange3(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@147.11--147.33) [58966]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@149.11--149.33) [58967]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@151.11--151.33) [58968]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@152.11--152.40) [58969]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@152.11--152.40) [58970]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@153.11--153.40) [58971]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@153.11--153.40) [58972]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@154.11--154.40) [58973]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@154.11--154.40) [58974]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__a[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__a[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_8 && tid_8 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@155.12--155.109) [58975]"}
            HasDirectPerm(PostMask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@155.12--155.109) [58976]"}
            tid_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@155.12--155.109) [58977]"}
            tid_8 < Seq#Length(PostHeap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@155.12--155.109) [58978]"}
      (forall tid_7: int, tid_7_1: int ::
      
      (((tid_7 != tid_7_1 && (0 <= tid_7 && tid_7 < gsize)) && (0 <= tid_7_1 && tid_7_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid_7) != Seq#Index(PostHeap[diz, Ref__a], tid_7_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_7: int ::
        { Seq#Index(PostHeap[diz, Ref__a], tid_7) } { Seq#Index(PostHeap[diz, Ref__a], tid_7) }
        (0 <= tid_7 && tid_7 < gsize) && NoPerm < FullPerm ==> qpRange4(Seq#Index(PostHeap[diz, Ref__a], tid_7)) && invRecv4(Seq#Index(PostHeap[diz, Ref__a], tid_7)) == tid_7
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(PostHeap[diz, Ref__a], invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_7: int ::
        { Seq#Index(PostHeap[diz, Ref__a], tid_7) } { Seq#Index(PostHeap[diz, Ref__a], tid_7) }
        0 <= tid_7 && tid_7 < gsize ==> Seq#Index(PostHeap[diz, Ref__a], tid_7) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, Ref__a], invRecv4(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__b[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= tid_10 && tid_10 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@156.12--156.109) [58979]"}
            HasDirectPerm(PostMask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@156.12--156.109) [58980]"}
            tid_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@156.12--156.109) [58981]"}
            tid_10 < Seq#Length(PostHeap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@156.12--156.109) [58982]"}
      (forall tid_9: int, tid_9_1: int ::
      
      (((tid_9 != tid_9_1 && (0 <= tid_9 && tid_9 < gsize)) && (0 <= tid_9_1 && tid_9_1 < gsize)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(PostHeap[diz, Ref__b], tid_9) != Seq#Index(PostHeap[diz, Ref__b], tid_9_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_9: int ::
        { Seq#Index(PostHeap[diz, Ref__b], tid_9) } { Seq#Index(PostHeap[diz, Ref__b], tid_9) }
        (0 <= tid_9 && tid_9 < gsize) && NoPerm < 1 / 4 ==> qpRange5(Seq#Index(PostHeap[diz, Ref__b], tid_9)) && invRecv5(Seq#Index(PostHeap[diz, Ref__b], tid_9)) == tid_9
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        ((0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && NoPerm < 1 / 4) && qpRange5(o_4) ==> Seq#Index(PostHeap[diz, Ref__b], invRecv5(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@156.12--156.109) [58983]"}
      (forall tid_9: int ::
      { Seq#Index(PostHeap[diz, Ref__b], tid_9) } { Seq#Index(PostHeap[diz, Ref__b], tid_9) }
      0 <= tid_9 && tid_9 < gsize ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_9: int ::
        { Seq#Index(PostHeap[diz, Ref__b], tid_9) } { Seq#Index(PostHeap[diz, Ref__b], tid_9) }
        (0 <= tid_9 && tid_9 < gsize) && 1 / 4 > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid_9) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && NoPerm < 1 / 4) && qpRange5(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(PostHeap[diz, Ref__b], invRecv5(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && NoPerm < 1 / 4) && qpRange5(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__c[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= tid_12 && tid_12 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@157.12--157.109) [58984]"}
            HasDirectPerm(PostMask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@157.12--157.109) [58985]"}
            tid_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@157.12--157.109) [58986]"}
            tid_12 < Seq#Length(PostHeap[diz, Ref__c]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@157.12--157.109) [58987]"}
      (forall tid_11: int, tid_11_1: int ::
      
      (((tid_11 != tid_11_1 && (0 <= tid_11 && tid_11 < gsize)) && (0 <= tid_11_1 && tid_11_1 < gsize)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(PostHeap[diz, Ref__c], tid_11) != Seq#Index(PostHeap[diz, Ref__c], tid_11_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_11: int ::
        { Seq#Index(PostHeap[diz, Ref__c], tid_11) } { Seq#Index(PostHeap[diz, Ref__c], tid_11) }
        (0 <= tid_11 && tid_11 < gsize) && NoPerm < 1 / 4 ==> qpRange6(Seq#Index(PostHeap[diz, Ref__c], tid_11)) && invRecv6(Seq#Index(PostHeap[diz, Ref__c], tid_11)) == tid_11
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((0 <= invRecv6(o_4) && invRecv6(o_4) < gsize) && NoPerm < 1 / 4) && qpRange6(o_4) ==> Seq#Index(PostHeap[diz, Ref__c], invRecv6(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@157.12--157.109) [58988]"}
      (forall tid_11: int ::
      { Seq#Index(PostHeap[diz, Ref__c], tid_11) } { Seq#Index(PostHeap[diz, Ref__c], tid_11) }
      0 <= tid_11 && tid_11 < gsize ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_11: int ::
        { Seq#Index(PostHeap[diz, Ref__c], tid_11) } { Seq#Index(PostHeap[diz, Ref__c], tid_11) }
        (0 <= tid_11 && tid_11 < gsize) && 1 / 4 > NoPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid_11) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv6(o_4) && invRecv6(o_4) < gsize) && NoPerm < 1 / 4) && qpRange6(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(PostHeap[diz, Ref__c], invRecv6(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < gsize) && NoPerm < 1 / 4) && qpRange6(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__b[tid] } (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1 ==> acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= tid_18 && tid_18 < gsize - 1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@158.12--158.132) [58989]"}
            HasDirectPerm(PostMask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@158.12--158.132) [58990]"}
            tid_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@158.12--158.132) [58991]"}
            tid_18 < Seq#Length(PostHeap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@158.12--158.132) [58992]"}
      (forall tid_13: int, tid_13_1: int ::
      
      (((tid_13 != tid_13_1 && (0 <= tid_13 && tid_13 < gsize - 1)) && (0 <= tid_13_1 && tid_13_1 < gsize - 1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(PostHeap[diz, Ref__b], tid_13) != Seq#Index(PostHeap[diz, Ref__b], tid_13_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_13: int ::
        { Seq#Index(PostHeap[diz, Ref__b], tid_13) } { Seq#Index(PostHeap[diz, Ref__b], tid_13) }
        (0 <= tid_13 && tid_13 < gsize - 1) && NoPerm < 1 / 4 ==> qpRange7(Seq#Index(PostHeap[diz, Ref__b], tid_13)) && invRecv7(Seq#Index(PostHeap[diz, Ref__b], tid_13)) == tid_13
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        ((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize - 1) && NoPerm < 1 / 4) && qpRange7(o_4) ==> Seq#Index(PostHeap[diz, Ref__b], invRecv7(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@158.12--158.132) [58993]"}
      (forall tid_13: int ::
      { Seq#Index(PostHeap[diz, Ref__b], tid_13) } { Seq#Index(PostHeap[diz, Ref__b], tid_13) }
      0 <= tid_13 && tid_13 < gsize - 1 ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_13: int ::
        { Seq#Index(PostHeap[diz, Ref__b], tid_13) } { Seq#Index(PostHeap[diz, Ref__b], tid_13) }
        (0 <= tid_13 && tid_13 < gsize - 1) && 1 / 4 > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid_13) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize - 1) && NoPerm < 1 / 4) && qpRange7(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(PostHeap[diz, Ref__b], invRecv7(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize - 1) && NoPerm < 1 / 4) && qpRange7(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (test_kernel_example_v2_pvl.vpr@144.11--144.26) [58994]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (test_kernel_example_v2_pvl.vpr@145.11--145.19) [58995]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@146.11--146.36) [58996]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@147.11--147.33) [58997]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@148.11--148.36) [58998]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@149.11--149.33) [58999]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@150.11--150.36) [59000]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@151.11--151.33) [59001]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_kernel_example_v2_pvl.vpr@152.11--152.40) [59002]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_kernel_example_v2_pvl.vpr@153.11--153.40) [59003]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_kernel_example_v2_pvl.vpr@154.11--154.40) [59004]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.Ref__a[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@155.12--155.109) [59005]"}
        (forall tid_14: int, tid_14_1: int ::
        { neverTriggered8(tid_14), neverTriggered8(tid_14_1) }
        (((tid_14 != tid_14_1 && (0 <= tid_14 && tid_14 < gsize)) && (0 <= tid_14_1 && tid_14_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], tid_14) != Seq#Index(Heap[diz, Ref__a], tid_14_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@155.12--155.109) [59006]"}
        (forall tid_14: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_14) } { Seq#Index(Heap[diz, Ref__a], tid_14) }
        0 <= tid_14 && tid_14 < gsize ==> Mask[Seq#Index(Heap[diz, Ref__a], tid_14), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.Ref__a[tid]
      assume (forall tid_14: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_14) } { Seq#Index(Heap[diz, Ref__a], tid_14) }
        (0 <= tid_14 && tid_14 < gsize) && NoPerm < FullPerm ==> qpRange8(Seq#Index(Heap[diz, Ref__a], tid_14)) && invRecv8(Seq#Index(Heap[diz, Ref__a], tid_14)) == tid_14
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && (NoPerm < FullPerm && qpRange8(o_4)) ==> Seq#Index(Heap[diz, Ref__a], invRecv8(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && (NoPerm < FullPerm && qpRange8(o_4)) ==> Seq#Index(Heap[diz, Ref__a], invRecv8(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && (NoPerm < FullPerm && qpRange8(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@156.12--156.109) [59007]"}
        (forall tid_15: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_15) } { Seq#Index(Heap[diz, Ref__b], tid_15) }
        (0 <= tid_15 && tid_15 < gsize) && dummyFunction(Heap[Seq#Index(Heap[diz, Ref__b], tid_15), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver diz.Ref__b[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@156.12--156.109) [59008]"}
        (forall tid_15: int, tid_15_1: int ::
        { neverTriggered9(tid_15), neverTriggered9(tid_15_1) }
        (((tid_15 != tid_15_1 && (0 <= tid_15 && tid_15 < gsize)) && (0 <= tid_15_1 && tid_15_1 < gsize)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__b], tid_15) != Seq#Index(Heap[diz, Ref__b], tid_15_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@156.12--156.109) [59009]"}
        (forall tid_15: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_15) } { Seq#Index(Heap[diz, Ref__b], tid_15) }
        0 <= tid_15 && tid_15 < gsize ==> Mask[Seq#Index(Heap[diz, Ref__b], tid_15), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver diz.Ref__b[tid]
      assume (forall tid_15: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_15) } { Seq#Index(Heap[diz, Ref__b], tid_15) }
        (0 <= tid_15 && tid_15 < gsize) && NoPerm < 1 / 4 ==> qpRange9(Seq#Index(Heap[diz, Ref__b], tid_15)) && invRecv9(Seq#Index(Heap[diz, Ref__b], tid_15)) == tid_15
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && (NoPerm < 1 / 4 && qpRange9(o_4)) ==> Seq#Index(Heap[diz, Ref__b], invRecv9(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && (NoPerm < 1 / 4 && qpRange9(o_4)) ==> Seq#Index(Heap[diz, Ref__b], invRecv9(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && (NoPerm < 1 / 4 && qpRange9(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@157.12--157.109) [59010]"}
        (forall tid_16: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_16) } { Seq#Index(Heap[diz, Ref__c], tid_16) }
        (0 <= tid_16 && tid_16 < gsize) && dummyFunction(Heap[Seq#Index(Heap[diz, Ref__c], tid_16), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver diz.Ref__c[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@157.12--157.109) [59011]"}
        (forall tid_16: int, tid_16_1: int ::
        { neverTriggered10(tid_16), neverTriggered10(tid_16_1) }
        (((tid_16 != tid_16_1 && (0 <= tid_16 && tid_16 < gsize)) && (0 <= tid_16_1 && tid_16_1 < gsize)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__c], tid_16) != Seq#Index(Heap[diz, Ref__c], tid_16_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@157.12--157.109) [59012]"}
        (forall tid_16: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_16) } { Seq#Index(Heap[diz, Ref__c], tid_16) }
        0 <= tid_16 && tid_16 < gsize ==> Mask[Seq#Index(Heap[diz, Ref__c], tid_16), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver diz.Ref__c[tid]
      assume (forall tid_16: int ::
        { Seq#Index(Heap[diz, Ref__c], tid_16) } { Seq#Index(Heap[diz, Ref__c], tid_16) }
        (0 <= tid_16 && tid_16 < gsize) && NoPerm < 1 / 4 ==> qpRange10(Seq#Index(Heap[diz, Ref__c], tid_16)) && invRecv10(Seq#Index(Heap[diz, Ref__c], tid_16)) == tid_16
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && (NoPerm < 1 / 4 && qpRange10(o_4)) ==> Seq#Index(Heap[diz, Ref__c], invRecv10(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && (NoPerm < 1 / 4 && qpRange10(o_4)) ==> Seq#Index(Heap[diz, Ref__c], invRecv10(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && (NoPerm < 1 / 4 && qpRange10(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@158.12--158.132) [59013]"}
        (forall tid_17: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_17) } { Seq#Index(Heap[diz, Ref__b], tid_17) }
        (0 <= tid_17 && tid_17 < gsize - 1) && dummyFunction(Heap[Seq#Index(Heap[diz, Ref__b], tid_17), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver diz.Ref__b[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@158.12--158.132) [59014]"}
        (forall tid_17: int, tid_17_1: int ::
        { neverTriggered11(tid_17), neverTriggered11(tid_17_1) }
        (((tid_17 != tid_17_1 && (0 <= tid_17 && tid_17 < gsize - 1)) && (0 <= tid_17_1 && tid_17_1 < gsize - 1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__b], tid_17) != Seq#Index(Heap[diz, Ref__b], tid_17_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@158.12--158.132) [59015]"}
        (forall tid_17: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_17) } { Seq#Index(Heap[diz, Ref__b], tid_17) }
        0 <= tid_17 && tid_17 < gsize - 1 ==> Mask[Seq#Index(Heap[diz, Ref__b], tid_17), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver diz.Ref__b[tid]
      assume (forall tid_17: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_17) } { Seq#Index(Heap[diz, Ref__b], tid_17) }
        (0 <= tid_17 && tid_17 < gsize - 1) && NoPerm < 1 / 4 ==> qpRange11(Seq#Index(Heap[diz, Ref__b], tid_17)) && invRecv11(Seq#Index(Heap[diz, Ref__b], tid_17)) == tid_17
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (0 <= invRecv11(o_4) && invRecv11(o_4) < gsize - 1) && (NoPerm < 1 / 4 && qpRange11(o_4)) ==> Seq#Index(Heap[diz, Ref__b], invRecv11(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < gsize - 1) && (NoPerm < 1 / 4 && qpRange11(o_4)) ==> Seq#Index(Heap[diz, Ref__b], invRecv11(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv11(o_4) && invRecv11(o_4) < gsize - 1) && (NoPerm < 1 / 4 && qpRange11(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
}

// ==================================================
// Translation of method Ref__main_post_check_1
// ==================================================

procedure Ref__main_post_check_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_16: int;
  var j_18: int;
  var i_18: int;
  var j_21: int;
  var i_13: int;
  var j_12: int;
  var _x_tid: int;
  var QPMask: MaskType;
  var _x_tid_2: int;
  var _x_tid_4: int;
  var _x_tid_6: int;
  var _x_tid_16: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@171.12--171.34) [59016]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@173.12--173.34) [59017]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@175.12--175.34) [59018]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
      if (*) {
        if (i_16 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@176.12--176.136) [59019]"}
            HasDirectPerm(Mask, diz, Ref__a);
          if (i_16 < Seq#Length(Heap[diz, Ref__a])) {
            if (j_18 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@176.12--176.136) [59020]"}
                HasDirectPerm(Mask, diz, Ref__a);
            }
          }
        }
        if (i_16 >= 0 && (i_16 < Seq#Length(Heap[diz, Ref__a]) && (j_18 >= 0 && (j_18 < Seq#Length(Heap[diz, Ref__a]) && i_16 != j_18)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@176.12--176.136) [59021]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@176.12--176.136) [59022]"}
            i_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@176.12--176.136) [59023]"}
            i_16 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@176.12--176.136) [59024]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@176.12--176.136) [59025]"}
            j_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@176.12--176.136) [59026]"}
            j_18 < Seq#Length(Heap[diz, Ref__a]);
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
        if (i_18 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@177.12--177.136) [59027]"}
            HasDirectPerm(Mask, diz, Ref__b);
          if (i_18 < Seq#Length(Heap[diz, Ref__b])) {
            if (j_21 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@177.12--177.136) [59028]"}
                HasDirectPerm(Mask, diz, Ref__b);
            }
          }
        }
        if (i_18 >= 0 && (i_18 < Seq#Length(Heap[diz, Ref__b]) && (j_21 >= 0 && (j_21 < Seq#Length(Heap[diz, Ref__b]) && i_18 != j_21)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@177.12--177.136) [59029]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@177.12--177.136) [59030]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@177.12--177.136) [59031]"}
            i_18 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@177.12--177.136) [59032]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@177.12--177.136) [59033]"}
            j_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@177.12--177.136) [59034]"}
            j_21 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, Ref__b], i_3), Seq#Index(Heap[diz, Ref__b], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, Ref__b]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, Ref__b]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, Ref__b], i_3) != Seq#Index(Heap[diz, Ref__b], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
      if (*) {
        if (i_13 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@178.12--178.136) [59035]"}
            HasDirectPerm(Mask, diz, Ref__c);
          if (i_13 < Seq#Length(Heap[diz, Ref__c])) {
            if (j_12 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@178.12--178.136) [59036]"}
                HasDirectPerm(Mask, diz, Ref__c);
            }
          }
        }
        if (i_13 >= 0 && (i_13 < Seq#Length(Heap[diz, Ref__c]) && (j_12 >= 0 && (j_12 < Seq#Length(Heap[diz, Ref__c]) && i_13 != j_12)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@178.12--178.136) [59037]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@178.12--178.136) [59038]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@178.12--178.136) [59039]"}
            i_13 < Seq#Length(Heap[diz, Ref__c]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@178.12--178.136) [59040]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@178.12--178.136) [59041]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@178.12--178.136) [59042]"}
            j_12 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    assume (forall i_5: int, j_5_1: int ::
      { Seq#Index(Heap[diz, Ref__c], i_5), Seq#Index(Heap[diz, Ref__c], j_5_1) }
      i_5 >= 0 && (i_5 < Seq#Length(Heap[diz, Ref__c]) && (j_5_1 >= 0 && (j_5_1 < Seq#Length(Heap[diz, Ref__c]) && i_5 != j_5_1))) ==> Seq#Index(Heap[diz, Ref__c], i_5) != Seq#Index(Heap[diz, Ref__c], j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__a[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__a[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid && _x_tid < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@179.13--179.122) [59043]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@179.13--179.122) [59044]"}
            _x_tid >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@179.13--179.122) [59045]"}
            _x_tid < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[_x_tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@179.13--179.122) [59046]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], _x_tid_1) != Seq#Index(Heap[diz, Ref__a], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], _x_tid_1) } { Seq#Index(Heap[diz, Ref__a], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange12(Seq#Index(Heap[diz, Ref__a], _x_tid_1)) && invRecv12(Seq#Index(Heap[diz, Ref__a], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((0 <= invRecv12(o_4) && invRecv12(o_4) < gsize) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(Heap[diz, Ref__a], invRecv12(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], _x_tid_1) } { Seq#Index(Heap[diz, Ref__a], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, Ref__a], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv12(o_4) && invRecv12(o_4) < gsize) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], invRecv12(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv12(o_4) && invRecv12(o_4) < gsize) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__b[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__b[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_2 && _x_tid_2 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@180.13--180.122) [59047]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@180.13--180.122) [59048]"}
            _x_tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@180.13--180.122) [59049]"}
            _x_tid_2 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[_x_tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@180.13--180.122) [59050]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__b], _x_tid_3) != Seq#Index(Heap[diz, Ref__b], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < FullPerm ==> qpRange13(Seq#Index(Heap[diz, Ref__b], _x_tid_3)) && invRecv13(Seq#Index(Heap[diz, Ref__b], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < gsize) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(Heap[diz, Ref__b], invRecv13(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
        0 <= _x_tid_3 && _x_tid_3 < gsize ==> Seq#Index(Heap[diz, Ref__b], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv13(o_4) && invRecv13(o_4) < gsize) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__b], invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < gsize) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__c[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__c[_x_tid].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= _x_tid_4 && _x_tid_4 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@181.13--181.122) [59051]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@181.13--181.122) [59052]"}
            _x_tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@181.13--181.122) [59053]"}
            _x_tid_4 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[_x_tid].Ref__Integer_value might not be injective. (test_kernel_example_v2_pvl.vpr@181.13--181.122) [59054]"}
      (forall _x_tid_5: int, _x_tid_5_1: int ::
      
      (((_x_tid_5 != _x_tid_5_1 && (0 <= _x_tid_5 && _x_tid_5 < gsize)) && (0 <= _x_tid_5_1 && _x_tid_5_1 < gsize)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__c], _x_tid_5) != Seq#Index(Heap[diz, Ref__c], _x_tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
        (0 <= _x_tid_5 && _x_tid_5 < gsize) && NoPerm < 1 / 4 ==> qpRange14(Seq#Index(Heap[diz, Ref__c], _x_tid_5)) && invRecv14(Seq#Index(Heap[diz, Ref__c], _x_tid_5)) == _x_tid_5
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < gsize) && NoPerm < 1 / 4) && qpRange14(o_4) ==> Seq#Index(Heap[diz, Ref__c], invRecv14(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@181.13--181.122) [59055]"}
      (forall _x_tid_5: int ::
      { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
      0 <= _x_tid_5 && _x_tid_5 < gsize ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
        (0 <= _x_tid_5 && _x_tid_5 < gsize) && 1 / 4 > NoPerm ==> Seq#Index(Heap[diz, Ref__c], _x_tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv14(o_4) && invRecv14(o_4) < gsize) && NoPerm < 1 / 4) && qpRange14(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__c], invRecv14(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv14(o_4) && invRecv14(o_4) < gsize) && NoPerm < 1 / 4) && qpRange14(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__b[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> diz.Ref__b[_x_tid].Ref__Integer_value > 0)
      if (*) {
        if (0 <= _x_tid_6 && _x_tid_6 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@182.13--182.116) [59056]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@182.13--182.116) [59057]"}
            _x_tid_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@182.13--182.116) [59058]"}
            _x_tid_6 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[_x_tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@182.13--182.116) [59059]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__b], _x_tid_6), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall _x_tid_7: int ::
      { Seq#Index(Heap[diz, Ref__b], _x_tid_7) }
      0 <= _x_tid_7 && _x_tid_7 < gsize ==> Heap[Seq#Index(Heap[diz, Ref__b], _x_tid_7), Ref__Integer_value] > 0
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__c[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> diz.Ref__c[_x_tid].Ref__Integer_value > 0)
      if (*) {
        if (0 <= _x_tid_16 && _x_tid_16 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@183.13--183.116) [59060]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@183.13--183.116) [59061]"}
            _x_tid_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@183.13--183.116) [59062]"}
            _x_tid_16 < Seq#Length(Heap[diz, Ref__c]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[_x_tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@183.13--183.116) [59063]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__c], _x_tid_16), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall _x_tid_9_1: int ::
      { Seq#Index(Heap[diz, Ref__c], _x_tid_9_1) }
      0 <= _x_tid_9_1 && _x_tid_9_1 < gsize ==> Heap[Seq#Index(Heap[diz, Ref__c], _x_tid_9_1), Ref__Integer_value] > 0
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@190.11--190.33) [59064]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@192.11--192.33) [59065]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@194.11--194.33) [59066]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@195.11--195.40) [59067]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@195.11--195.40) [59068]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@196.11--196.40) [59069]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@196.11--196.40) [59070]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@197.11--197.40) [59071]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@197.11--197.40) [59072]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@198.11--198.57) [59073]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v2_pvl.vpr@198.11--198.57) [59074]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v2_pvl.vpr@198.11--198.57) [59075]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, Ref__a], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@199.11--199.57) [59076]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@199.11--199.57) [59077]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@199.11--199.57) [59078]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@199.11--199.57) [59079]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@200.11--200.57) [59080]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@200.11--200.57) [59081]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@200.11--200.57) [59082]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@200.11--200.57) [59083]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.Ref__b[tid - 1].Ref__Integer_value, 1 / 4)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@201.11--201.75) [59084]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@201.11--201.75) [59085]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@201.11--201.75) [59086]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__b]);
      perm := 1 / 4;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@201.11--201.75) [59087]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid - 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@202.11--202.49) [59088]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@202.11--202.49) [59089]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@202.11--202.49) [59090]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@202.11--202.49) [59091]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of diz.Ref__b[tid - 1].Ref__Integer_value > 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@203.11--203.69) [59092]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v2_pvl.vpr@203.11--203.69) [59093]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v2_pvl.vpr@203.11--203.69) [59094]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__b]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid - 1].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@203.11--203.69) [59095]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value] > 0;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@204.11--204.49) [59096]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v2_pvl.vpr@204.11--204.49) [59097]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v2_pvl.vpr@204.11--204.49) [59098]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@204.11--204.49) [59099]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] > 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (test_kernel_example_v2_pvl.vpr@184.11--184.19) [59100]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tid < tcount might not hold. (test_kernel_example_v2_pvl.vpr@185.11--185.23) [59101]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tid == lid might not hold. (test_kernel_example_v2_pvl.vpr@186.11--186.21) [59102]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (test_kernel_example_v2_pvl.vpr@187.11--187.26) [59103]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion gid == 0 might not hold. (test_kernel_example_v2_pvl.vpr@188.11--188.19) [59104]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v2_pvl.vpr@189.11--189.36) [59105]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@190.11--190.33) [59106]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v2_pvl.vpr@191.11--191.36) [59107]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@192.11--192.33) [59108]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v2_pvl.vpr@193.11--193.36) [59109]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_kernel_example_v2_pvl.vpr@194.11--194.33) [59110]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_kernel_example_v2_pvl.vpr@195.11--195.40) [59111]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_kernel_example_v2_pvl.vpr@196.11--196.40) [59112]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_kernel_example_v2_pvl.vpr@197.11--197.40) [59113]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@198.11--198.57) [59114]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@199.11--199.57) [59115]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@199.11--199.57) [59116]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@200.11--200.57) [59117]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@200.11--200.57) [59118]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    if (tid > 0) {
      perm := 1 / 4;
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v2_pvl.vpr@201.11--201.75) [59119]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__b[tid - 1].Ref__Integer_value (test_kernel_example_v2_pvl.vpr@201.11--201.75) [59120]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@202.11--202.49) [59121]"}
      Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    if (tid > 0) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__b[tid - 1].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@203.11--203.69) [59122]"}
        Heap[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] > 0;
    }
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__c[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v2_pvl.vpr@204.11--204.49) [59123]"}
      Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}