// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:17:47
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
axiom (forall o_39: Ref, f_45: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_39, f_45] }
  Heap[o_39, $allocated] ==> Heap[Heap[o_39, f_45], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_50, f_51) ==> Heap[o_50, f_51] == ExhaleHeap[o_50, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25), ExhaleHeap[null, WandMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> Heap[null, WandMaskField(pm_f_25)] == ExhaleHeap[null, WandMaskField(pm_f_25)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_50, $allocated] ==> ExhaleHeap[o_50, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_39: Ref, f_18: (Field A B), v: B ::
  { Heap[o_39, f_18:=v] }
  succHeap(Heap, Heap[o_39, f_18:=v])
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
function  neverTriggered5(tid_8_1: int): bool;
function  neverTriggered6(tid_9: int): bool;
function  neverTriggered7(tid_1: int): bool;
function  neverTriggered8(tid_3: int): bool;
function  neverTriggered9(tid_5: int): bool;
function  neverTriggered10(tid_7: int): bool;
function  neverTriggered11(tid_8_1: int): bool;
function  neverTriggered12(tid_9: int): bool;
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
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_auto.vpr@15.43--15.66) [45668]"}
            N - 1 >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= k - 1 might not hold. (test_binomial_auto.vpr@15.43--15.66) [45669]"}
            0 <= k - 1;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion k - 1 <= N - 1 might not hold. (test_binomial_auto.vpr@15.43--15.66) [45670]"}
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
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_auto.vpr@15.69--15.88) [45671]"}
            N - 1 >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= k might not hold. (test_binomial_auto.vpr@15.69--15.88) [45672]"}
            0 <= k;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion k <= N - 1 might not hold. (test_binomial_auto.vpr@15.69--15.88) [45673]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@27.12--27.35) [45674]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@29.12--29.36) [45675]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@31.12--31.60) [45676]"}
        HasDirectPerm(Mask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@31.12--31.60) [45677]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@31.12--31.60) [45678]"}
        tid < Seq#Length(Heap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, demo__ar], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@32.12--32.61) [45679]"}
        HasDirectPerm(Mask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@32.12--32.61) [45680]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@32.12--32.61) [45681]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@39.11--39.34) [45682]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@41.11--41.35) [45683]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@42.11--42.44) [45684]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@42.11--42.44) [45685]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@43.11--43.46) [45686]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@43.11--43.46) [45687]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@45.11--45.59) [45688]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@45.11--45.59) [45689]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@45.11--45.59) [45690]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(gsize - 1, tid)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@46.11--46.76) [45691]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@46.11--46.76) [45692]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@46.11--46.76) [45693]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@46.11--46.76) [45694]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion gsize - 1 >= 0 might not hold. (test_binomial_auto.vpr@46.51--46.76) [45695]"}
          gsize - 1 >= 0;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@46.51--46.76) [45696]"}
          0 <= tid;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= gsize - 1 might not hold. (test_binomial_auto.vpr@46.51--46.76) [45697]"}
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
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@63.3--63.35) [45698]"}
        HasDirectPerm(Mask, diz, demo__ar);
      assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@63.3--63.35) [45699]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@63.3--63.35) [45700]"}
        tid < Seq#Length(Heap[diz, demo__ar]);
    __flatten_3 := Seq#Index(Heap[diz, demo__ar], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := 1 -- test_binomial_auto.vpr@64.3--64.19
    __flatten_4 := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3.Ref__Integer_value := __flatten_4 -- test_binomial_auto.vpr@65.3--65.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_3.Ref__Integer_value (test_binomial_auto.vpr@65.3--65.48) [45701]"}
      FullPerm == Mask[__flatten_3, Ref__Integer_value];
    Heap := Heap[__flatten_3, Ref__Integer_value:=__flatten_4];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (N < gsize - 1) -- test_binomial_auto.vpr@66.3--103.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= tid might not hold on entry. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@67.15--67.23) [45702]"}
          0 <= tid;
        assert {:msg "  Loop invariant tid < tcount might not hold on entry. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@68.15--68.27) [45703]"}
          tid < tcount;
        assert {:msg "  Loop invariant tid == lid might not hold on entry. Assertion tid == lid might not hold. (test_binomial_auto.vpr@69.15--69.25) [45704]"}
          tid == lid;
        assert {:msg "  Loop invariant tcount == gsize might not hold on entry. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@70.15--70.30) [45705]"}
          tcount == gsize;
        assert {:msg "  Loop invariant gid == 0 might not hold on entry. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@71.15--71.23) [45706]"}
          gid == 0;
        assert {:msg "  Loop invariant acc(diz.demo__ar, wildcard) might not hold on entry. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@72.15--72.42) [45707]"}
          Mask[diz, demo__ar] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__ar];
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__ar| == gsize might not hold on entry. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@73.15--73.38) [45708]"}
          Seq#Length(Heap[diz, demo__ar]) == gsize;
        assert {:msg "  Loop invariant acc(diz.demo__tmp, wildcard) might not hold on entry. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@74.15--74.43) [45709]"}
          Mask[diz, demo__tmp] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__tmp];
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__tmp| == gsize might not hold on entry. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@75.15--75.39) [45710]"}
          Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assert {:msg "  Loop invariant false || (__last_barrier == 0 || __last_barrier == 2) might not hold on entry. Assertion false || (__last_barrier == 0 || __last_barrier == 2) might not hold. (test_binomial_auto.vpr@76.15--76.70) [45711]"}
          __last_barrier == 0 || __last_barrier == 2;
        if (__last_barrier == 2) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 2 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@77.15--77.142) [45712]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 2 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@77.15--77.142) [45713]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        }
        if (__last_barrier == 1) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 1 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && (tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)) might not hold on entry. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@78.15--78.162) [45714]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          if (tid > 0) {
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant __last_barrier == 1 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && (tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)) might not hold on entry. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@78.15--78.162) [45715]"}
                perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
            }
            Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
          }
        }
        if (__last_barrier == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@79.15--79.142) [45716]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@79.15--79.142) [45717]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        }
        assert {:msg "  Loop invariant gsize > 1 might not hold on entry. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@80.15--80.24) [45718]"}
          gsize > 1;
        assert {:msg "  Loop invariant 0 < N might not hold on entry. Assertion 0 < N might not hold. (test_binomial_auto.vpr@81.15--81.20) [45719]"}
          0 < N;
        assert {:msg "  Loop invariant N < gsize might not hold on entry. Assertion N < gsize might not hold. (test_binomial_auto.vpr@82.15--82.24) [45720]"}
          N < gsize;
        assert {:msg "  Loop invariant diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold on entry. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@83.15--83.88) [45721]"}
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@73.15--73.38) [45722]"}
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@75.15--75.39) [45723]"}
            HasDirectPerm(Mask, diz, demo__tmp);
        assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assume state(Heap, Mask);
        assume __last_barrier == 0 || __last_barrier == 2;
        assume state(Heap, Mask);
        if (__last_barrier == 2) {
          
          // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@77.15--77.142) [45724]"}
              HasDirectPerm(Mask, diz, demo__ar);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@77.15--77.142) [45725]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@77.15--77.142) [45726]"}
              tid < Seq#Length(Heap[diz, demo__ar]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          
          // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@77.15--77.142) [45727]"}
              HasDirectPerm(Mask, diz, demo__tmp);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@77.15--77.142) [45728]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@77.15--77.142) [45729]"}
              tid < Seq#Length(Heap[diz, demo__tmp]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        if (__last_barrier == 1) {
          
          // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@78.15--78.162) [45730]"}
              HasDirectPerm(Mask, diz, demo__ar);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@78.15--78.162) [45731]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@78.15--78.162) [45732]"}
              tid < Seq#Length(Heap[diz, demo__ar]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          if (tid > 0) {
            
            // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@78.15--78.162) [45733]"}
                HasDirectPerm(Mask, diz, demo__tmp);
              assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@78.15--78.162) [45734]"}
                tid - 1 >= 0;
              assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@78.15--78.162) [45735]"}
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
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@79.15--79.142) [45736]"}
              HasDirectPerm(Mask, diz, demo__ar);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@79.15--79.142) [45737]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@79.15--79.142) [45738]"}
              tid < Seq#Length(Heap[diz, demo__ar]);
          perm := FullPerm;
          assume Seq#Index(Heap[diz, demo__ar], tid) != null;
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          
          // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@79.15--79.142) [45739]"}
              HasDirectPerm(Mask, diz, demo__tmp);
            assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@79.15--79.142) [45740]"}
              tid >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@79.15--79.142) [45741]"}
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@83.15--83.88) [45742]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@83.15--83.88) [45743]"}
            tid >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@83.15--83.88) [45744]"}
            tid < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@83.15--83.88) [45745]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
          if (tid < N) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@83.66--83.83) [45746]"}
                N >= 0;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@83.66--83.83) [45747]"}
                0 <= tid;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@83.66--83.83) [45748]"}
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
              assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@85.5--85.38) [45749]"}
                HasDirectPerm(Mask, diz, demo__tmp);
              assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@85.5--85.38) [45750]"}
                tid >= 0;
              assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@85.5--85.38) [45751]"}
                tid < Seq#Length(Heap[diz, demo__tmp]);
            __flatten_5 := Seq#Index(Heap[diz, demo__tmp], tid);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_7 := diz.demo__ar[tid] -- test_binomial_auto.vpr@86.5--86.37
            
            // -- Check definedness of diz.demo__ar[tid]
              assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@86.5--86.37) [45752]"}
                HasDirectPerm(Mask, diz, demo__ar);
              assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@86.5--86.37) [45753]"}
                tid >= 0;
              assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@86.5--86.37) [45754]"}
                tid < Seq#Length(Heap[diz, demo__ar]);
            __flatten_7 := Seq#Index(Heap[diz, demo__ar], tid);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_6 := __flatten_7.Ref__Integer_value -- test_binomial_auto.vpr@87.5--87.50
            
            // -- Check definedness of __flatten_7.Ref__Integer_value
              assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_7.Ref__Integer_value (test_binomial_auto.vpr@87.5--87.50) [45755]"}
                HasDirectPerm(Mask, __flatten_7, Ref__Integer_value);
            __flatten_6 := Heap[__flatten_7, Ref__Integer_value];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_5.Ref__Integer_value := __flatten_6 -- test_binomial_auto.vpr@88.5--88.50
            assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_5.Ref__Integer_value (test_binomial_auto.vpr@88.5--88.50) [45756]"}
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
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz != null might not hold. (test_binomial_auto.vpr@89.5--89.114) [45757]"}
                diz != null;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion current_thread_id >= 0 might not hold. (test_binomial_auto.vpr@89.5--89.114) [45758]"}
                current_thread_id >= 0;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion false || (__last_barrier == 0 || __last_barrier == 2) might not hold. (test_binomial_auto.vpr@89.5--89.114) [45759]"}
                __last_barrier == 0 || __last_barrier == 2;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@89.5--89.114) [45760]"}
                0 <= tid;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@89.5--89.114) [45761]"}
                tid < tcount;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@89.5--89.114) [45762]"}
                tid == lid;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@89.5--89.114) [45763]"}
                tcount == gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@89.5--89.114) [45764]"}
                gid == 0;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@89.5--89.114) [45765]"}
                Mask[diz, demo__ar] > NoPerm;
              havoc wildcard;
              assume wildcard < Mask[diz, demo__ar];
              Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@89.5--89.114) [45766]"}
                Seq#Length(Heap[diz, demo__ar]) == gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@89.5--89.114) [45767]"}
                Mask[diz, demo__tmp] > NoPerm;
              havoc wildcard;
              assume wildcard < Mask[diz, demo__tmp];
              Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@89.5--89.114) [45768]"}
                Seq#Length(Heap[diz, demo__tmp]) == gsize;
              if (__last_barrier == 2) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [45769]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [45770]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
              }
              if (__last_barrier == 1) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [45771]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                if (tid > 0) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [45772]"}
                      perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
                  }
                  Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
                }
              }
              if (__last_barrier == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [45773]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@89.5--89.114) [45774]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
              }
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@89.5--89.114) [45775]"}
                gsize > 1;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@89.5--89.114) [45776]"}
                0 < N;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@89.5--89.114) [45777]"}
                N < gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@89.5--89.114) [45778]"}
                Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz.demo__tmp[tid].Ref__Integer_value == diz.demo__ar[tid].Ref__Integer_value might not hold. (test_binomial_auto.vpr@89.5--89.114) [45779]"}
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
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@93.14--93.153) [45780]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__tmp);
                  assert {:msg "  Assert might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@93.14--93.153) [45781]"}
                    tid - 1 >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@93.14--93.153) [45782]"}
                    tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@93.14--93.153) [45783]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_auto.vpr@93.60--93.85) [45784]"}
                      N - 1 >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_auto.vpr@93.60--93.85) [45785]"}
                      0 <= tid - 1;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N - 1 might not hold. (test_binomial_auto.vpr@93.60--93.85) [45786]"}
                      tid - 1 <= N - 1;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N - 1, tid - 1) might not hold. (test_binomial_auto.vpr@93.14--93.153) [45787]"}
                  Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N - 1, tid - 1);
                
                // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@93.14--93.153) [45788]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__ar);
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@93.14--93.153) [45789]"}
                    tid >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@93.14--93.153) [45790]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@93.14--93.153) [45791]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_auto.vpr@93.131--93.152) [45792]"}
                      N - 1 >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@93.131--93.152) [45793]"}
                      0 <= tid;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N - 1 might not hold. (test_binomial_auto.vpr@93.131--93.152) [45794]"}
                      tid <= N - 1;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid) might not hold. (test_binomial_auto.vpr@93.14--93.153) [45795]"}
                  Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(Heap, N - 1, tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_9 := diz.demo__ar[tid] -- test_binomial_auto.vpr@94.7--94.39
                
                // -- Check definedness of diz.demo__ar[tid]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@94.7--94.39) [45796]"}
                    HasDirectPerm(Mask, diz, demo__ar);
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@94.7--94.39) [45797]"}
                    tid >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@94.7--94.39) [45798]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                __flatten_9 := Seq#Index(Heap[diz, demo__ar], tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_11 := diz.demo__tmp[tid - 1] -- test_binomial_auto.vpr@95.7--95.45
                
                // -- Check definedness of diz.demo__tmp[tid - 1]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@95.7--95.45) [45799]"}
                    HasDirectPerm(Mask, diz, demo__tmp);
                  assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@95.7--95.45) [45800]"}
                    tid - 1 >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@95.7--95.45) [45801]"}
                    tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
                __flatten_11 := Seq#Index(Heap[diz, demo__tmp], tid - 1);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_12 := diz.demo__ar[tid] -- test_binomial_auto.vpr@96.7--96.40
                
                // -- Check definedness of diz.demo__ar[tid]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@96.7--96.40) [45802]"}
                    HasDirectPerm(Mask, diz, demo__ar);
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@96.7--96.40) [45803]"}
                    tid >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@96.7--96.40) [45804]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                __flatten_12 := Seq#Index(Heap[diz, demo__ar], tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_10 := __flatten_11.Ref__Integer_value +
  //   __flatten_12.Ref__Integer_value -- test_binomial_auto.vpr@97.7--97.88
                
                // -- Check definedness of __flatten_11.Ref__Integer_value + __flatten_12.Ref__Integer_value
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_11.Ref__Integer_value (test_binomial_auto.vpr@97.7--97.88) [45805]"}
                    HasDirectPerm(Mask, __flatten_11, Ref__Integer_value);
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_12.Ref__Integer_value (test_binomial_auto.vpr@97.7--97.88) [45806]"}
                    HasDirectPerm(Mask, __flatten_12, Ref__Integer_value);
                __flatten_10 := Heap[__flatten_11, Ref__Integer_value] + Heap[__flatten_12, Ref__Integer_value];
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_9.Ref__Integer_value := __flatten_10 -- test_binomial_auto.vpr@98.7--98.53
                assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_9.Ref__Integer_value (test_binomial_auto.vpr@98.7--98.53) [45807]"}
                  FullPerm == Mask[__flatten_9, Ref__Integer_value];
                Heap := Heap[__flatten_9, Ref__Integer_value:=__flatten_10];
                assume state(Heap, Mask);
              
              // -- Translating statement: assert diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid) -- test_binomial_auto.vpr@99.7--99.71
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                
                // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@99.14--99.71) [45808]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__ar);
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@99.14--99.71) [45809]"}
                    tid >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@99.14--99.71) [45810]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@99.14--99.71) [45811]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@99.54--99.71) [45812]"}
                      N >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@99.54--99.71) [45813]"}
                      0 <= tid;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@99.54--99.71) [45814]"}
                      tid <= N;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid) might not hold. (test_binomial_auto.vpr@99.14--99.71) [45815]"}
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
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz != null might not hold. (test_binomial_auto.vpr@101.5--101.114) [45816]"}
                diz != null;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion current_thread_id >= 0 might not hold. (test_binomial_auto.vpr@101.5--101.114) [45817]"}
                current_thread_id >= 0;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion false || __last_barrier == 1 might not hold. (test_binomial_auto.vpr@101.5--101.114) [45818]"}
                __last_barrier == 1;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@101.5--101.114) [45819]"}
                0 <= tid;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@101.5--101.114) [45820]"}
                tid < tcount;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@101.5--101.114) [45821]"}
                tid == lid;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@101.5--101.114) [45822]"}
                tcount == gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@101.5--101.114) [45823]"}
                gid == 0;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@101.5--101.114) [45824]"}
                Mask[diz, demo__ar] > NoPerm;
              havoc wildcard;
              assume wildcard < Mask[diz, demo__ar];
              Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@101.5--101.114) [45825]"}
                Seq#Length(Heap[diz, demo__ar]) == gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@101.5--101.114) [45826]"}
                Mask[diz, demo__tmp] > NoPerm;
              havoc wildcard;
              assume wildcard < Mask[diz, demo__tmp];
              Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@101.5--101.114) [45827]"}
                Seq#Length(Heap[diz, demo__tmp]) == gsize;
              if (__last_barrier == 2) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [45828]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [45829]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
              }
              if (__last_barrier == 1) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [45830]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                if (tid > 0) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [45831]"}
                      perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
                  }
                  Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
                }
              }
              if (__last_barrier == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [45832]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  The precondition of method demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@101.5--101.114) [45833]"}
                    perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
              }
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@101.5--101.114) [45834]"}
                gsize > 1;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@101.5--101.114) [45835]"}
                0 < N;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@101.5--101.114) [45836]"}
                N < gsize;
              assert {:msg "  The precondition of method demo__main_barrier might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@101.5--101.114) [45837]"}
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
        assert {:msg "  Loop invariant 0 <= tid might not be preserved. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@67.15--67.23) [45838]"}
          0 <= tid;
        assert {:msg "  Loop invariant tid < tcount might not be preserved. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@68.15--68.27) [45839]"}
          tid < tcount;
        assert {:msg "  Loop invariant tid == lid might not be preserved. Assertion tid == lid might not hold. (test_binomial_auto.vpr@69.15--69.25) [45840]"}
          tid == lid;
        assert {:msg "  Loop invariant tcount == gsize might not be preserved. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@70.15--70.30) [45841]"}
          tcount == gsize;
        assert {:msg "  Loop invariant gid == 0 might not be preserved. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@71.15--71.23) [45842]"}
          gid == 0;
        assert {:msg "  Loop invariant acc(diz.demo__ar, wildcard) might not be preserved. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@72.15--72.42) [45843]"}
          Mask[diz, demo__ar] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__ar];
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__ar| == gsize might not be preserved. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@73.15--73.38) [45844]"}
          Seq#Length(Heap[diz, demo__ar]) == gsize;
        assert {:msg "  Loop invariant acc(diz.demo__tmp, wildcard) might not be preserved. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@74.15--74.43) [45845]"}
          Mask[diz, demo__tmp] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__tmp];
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__tmp| == gsize might not be preserved. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@75.15--75.39) [45846]"}
          Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assert {:msg "  Loop invariant false || (__last_barrier == 0 || __last_barrier == 2) might not be preserved. Assertion false || (__last_barrier == 0 || __last_barrier == 2) might not hold. (test_binomial_auto.vpr@76.15--76.70) [45847]"}
          __last_barrier == 0 || __last_barrier == 2;
        if (__last_barrier == 2) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 2 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@77.15--77.142) [45848]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 2 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@77.15--77.142) [45849]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        }
        if (__last_barrier == 1) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 1 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && (tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)) might not be preserved. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@78.15--78.162) [45850]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          if (tid > 0) {
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant __last_barrier == 1 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && (tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)) might not be preserved. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@78.15--78.162) [45851]"}
                perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
            }
            Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
          }
        }
        if (__last_barrier == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@79.15--79.142) [45852]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(diz.demo__ar[tid].Ref__Integer_value, write) && acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@79.15--79.142) [45853]"}
              perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        }
        assert {:msg "  Loop invariant gsize > 1 might not be preserved. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@80.15--80.24) [45854]"}
          gsize > 1;
        assert {:msg "  Loop invariant 0 < N might not be preserved. Assertion 0 < N might not hold. (test_binomial_auto.vpr@81.15--81.20) [45855]"}
          0 < N;
        assert {:msg "  Loop invariant N < gsize might not be preserved. Assertion N < gsize might not hold. (test_binomial_auto.vpr@82.15--82.24) [45856]"}
          N < gsize;
        assert {:msg "  Loop invariant diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not be preserved. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@83.15--83.88) [45857]"}
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
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@33.11--33.19) [45858]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@34.11--34.23) [45859]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@35.11--35.21) [45860]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@36.11--36.26) [45861]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@37.11--37.19) [45862]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@38.11--38.38) [45863]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@39.11--39.34) [45864]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@40.11--40.39) [45865]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@41.11--41.35) [45866]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@42.11--42.44) [45867]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@43.11--43.46) [45868]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@44.11--44.20) [45869]"}
      gsize > 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@45.11--45.59) [45870]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(gsize - 1, tid) might not hold. (test_binomial_auto.vpr@46.11--46.76) [45871]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@117.12--117.35) [45872]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@119.12--119.36) [45873]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    if (last_barrier == 2) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@120.12--120.137) [45874]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@120.12--120.137) [45875]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@120.12--120.137) [45876]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__ar], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@120.12--120.137) [45877]"}
          HasDirectPerm(Mask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@120.12--120.137) [45878]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@120.12--120.137) [45879]"}
          tid < Seq#Length(Heap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (last_barrier == 1) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@121.12--121.157) [45880]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@121.12--121.157) [45881]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@121.12--121.157) [45882]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__ar], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      if (tid > 0) {
        
        // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@121.12--121.157) [45883]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@121.12--121.157) [45884]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@121.12--121.157) [45885]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@122.12--122.137) [45886]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@122.12--122.137) [45887]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@122.12--122.137) [45888]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__ar], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@122.12--122.137) [45889]"}
          HasDirectPerm(Mask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@122.12--122.137) [45890]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@122.12--122.137) [45891]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@126.12--126.111) [45892]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@126.12--126.111) [45893]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@126.12--126.111) [45894]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@126.12--126.111) [45895]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
        if (tid < N) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@126.88--126.105) [45896]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@126.88--126.105) [45897]"}
              0 <= tid;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@126.88--126.105) [45898]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@127.12--127.115) [45899]"}
          HasDirectPerm(Mask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@127.12--127.115) [45900]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@127.12--127.115) [45901]"}
          tid < Seq#Length(Heap[diz, demo__tmp]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@127.12--127.115) [45902]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@127.12--127.115) [45903]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@127.12--127.115) [45904]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@127.12--127.115) [45905]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@127.12--127.115) [45906]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@131.12--131.111) [45907]"}
          HasDirectPerm(Mask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@131.12--131.111) [45908]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@131.12--131.111) [45909]"}
          tid < Seq#Length(Heap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@131.12--131.111) [45910]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
        if (tid < N) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@131.88--131.105) [45911]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@131.88--131.105) [45912]"}
              0 <= tid;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@131.88--131.105) [45913]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@138.11--138.34) [45914]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@140.11--140.35) [45915]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@141.11--141.44) [45916]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@141.11--141.44) [45917]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@142.11--142.46) [45918]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@142.11--142.46) [45919]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    if (sys__result == 2) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@143.11--143.135) [45920]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@143.11--143.135) [45921]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@143.11--143.135) [45922]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@143.11--143.135) [45923]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@143.11--143.135) [45924]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@143.11--143.135) [45925]"}
          tid < Seq#Length(PostHeap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__tmp], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (sys__result == 1) {
      
      // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@144.11--144.155) [45926]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@144.11--144.155) [45927]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@144.11--144.155) [45928]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      if (tid > 0) {
        
        // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@144.11--144.155) [45929]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@144.11--144.155) [45930]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@144.11--144.155) [45931]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@145.11--145.135) [45932]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@145.11--145.135) [45933]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@145.11--145.135) [45934]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@145.11--145.135) [45935]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@145.11--145.135) [45936]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@145.11--145.135) [45937]"}
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@150.11--150.131) [45938]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@150.11--150.131) [45939]"}
            tid - 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@150.11--150.131) [45940]"}
            tid - 1 < Seq#Length(PostHeap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@150.11--150.131) [45941]"}
            HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@150.109--150.130) [45942]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_auto.vpr@150.109--150.130) [45943]"}
              0 <= tid - 1;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N might not hold. (test_binomial_auto.vpr@150.109--150.130) [45944]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@151.11--151.110) [45945]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@151.11--151.110) [45946]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@151.11--151.110) [45947]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@151.11--151.110) [45948]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
        if (tid < N) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@151.87--151.104) [45949]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@151.87--151.104) [45950]"}
              0 <= tid;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@151.87--151.104) [45951]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@155.11--155.110) [45952]"}
          HasDirectPerm(PostMask, diz, demo__ar);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@155.11--155.110) [45953]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@155.11--155.110) [45954]"}
          tid < Seq#Length(PostHeap[diz, demo__ar]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@155.11--155.110) [45955]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
        if (tid < N) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@155.87--155.104) [45956]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@155.87--155.104) [45957]"}
              0 <= tid;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@155.87--155.104) [45958]"}
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
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@132.11--132.19) [45959]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@133.11--133.23) [45960]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@134.11--134.21) [45961]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@135.11--135.26) [45962]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@136.11--136.19) [45963]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@137.11--137.38) [45964]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@138.11--138.34) [45965]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@139.11--139.39) [45966]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@140.11--140.35) [45967]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@141.11--141.44) [45968]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@142.11--142.46) [45969]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    if (sys__result == 2) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@143.11--143.135) [45970]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@143.11--143.135) [45971]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
    }
    if (sys__result == 1) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@144.11--144.155) [45972]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
      if (tid > 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@144.11--144.155) [45973]"}
            perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
      }
    }
    if (sys__result == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@145.11--145.135) [45974]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@145.11--145.135) [45975]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion sys__result == this_barrier might not hold. (test_binomial_auto.vpr@146.11--146.38) [45976]"}
      sys__result == this_barrier;
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@147.11--147.46) [45977]"}
        gsize > 1;
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@148.11--148.42) [45978]"}
        0 < N;
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@149.11--149.46) [45979]"}
        N < gsize;
    }
    if (this_barrier == 1) {
      if (0 < tid && tid <= N) {
        assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1) might not hold. (test_binomial_auto.vpr@150.11--150.131) [45980]"}
          Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N, tid - 1);
      }
    }
    if (this_barrier == 1) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@151.11--151.110) [45981]"}
        Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
    }
    if (this_barrier == 2) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@152.11--152.46) [45982]"}
        gsize > 1;
    }
    if (this_barrier == 2) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@153.11--153.42) [45983]"}
        0 < N;
    }
    if (this_barrier == 2) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@154.11--154.46) [45984]"}
        N < gsize;
    }
    if (this_barrier == 2) {
      assert {:msg "  Postcondition of demo__main_barrier might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@155.11--155.110) [45985]"}
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
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var j: int;
  var tid_20: int;
  var QPMask: MaskType;
  var tid_2: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_4: int;
  var tid_6: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@166.12--166.35) [45986]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@168.12--168.36) [45987]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_14 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@170.12--170.144) [45988]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_14 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_5 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@170.12--170.144) [45989]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_14 >= 0 && (i_14 < Seq#Length(Heap[diz, demo__ar]) && (j_5 >= 0 && (j_5 < Seq#Length(Heap[diz, demo__ar]) && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@170.12--170.144) [45990]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_auto.vpr@170.12--170.144) [45991]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@170.12--170.144) [45992]"}
            i_14 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@170.12--170.144) [45993]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_auto.vpr@170.12--170.144) [45994]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@170.12--170.144) [45995]"}
            j_5 < Seq#Length(Heap[diz, demo__ar]);
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
        if (i_2 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@171.12--171.148) [45996]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_2 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@171.12--171.148) [45997]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_2 >= 0 && (i_2 < Seq#Length(Heap[diz, demo__tmp]) && (j >= 0 && (j < Seq#Length(Heap[diz, demo__tmp]) && i_2 != j)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@171.12--171.148) [45998]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@171.12--171.148) [45999]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@171.12--171.148) [46000]"}
            i_2 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@171.12--171.148) [46001]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@171.12--171.148) [46002]"}
            j >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@171.12--171.148) [46003]"}
            j < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3), Seq#Index(Heap[diz, demo__tmp], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, demo__tmp]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, demo__tmp]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, demo__tmp], i_3) != Seq#Index(Heap[diz, demo__tmp], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__ar[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__ar[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_20 && tid_20 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@172.13--172.112) [46004]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@172.13--172.112) [46005]"}
            tid_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@172.13--172.112) [46006]"}
            tid_20 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@172.13--172.112) [46007]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < gsize)) && (0 <= tid_1_1 && tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], tid_1) != Seq#Index(Heap[diz, demo__ar], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_1) } { Seq#Index(Heap[diz, demo__ar], tid_1) }
        (0 <= tid_1 && tid_1 < gsize) && NoPerm < FullPerm ==> qpRange1(Seq#Index(Heap[diz, demo__ar], tid_1)) && invRecv1(Seq#Index(Heap[diz, demo__ar], tid_1)) == tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(Heap[diz, demo__ar], invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_1) } { Seq#Index(Heap[diz, demo__ar], tid_1) }
        0 <= tid_1 && tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv1(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_2 && tid_2 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@173.13--173.113) [46008]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@173.13--173.113) [46009]"}
            tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@173.13--173.113) [46010]"}
            tid_2 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@173.13--173.113) [46011]"}
      (forall tid_3: int, tid_3_1: int ::
      
      (((tid_3 != tid_3_1 && (0 <= tid_3 && tid_3 < gsize)) && (0 <= tid_3_1 && tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_3) != Seq#Index(Heap[diz, demo__tmp], tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_3) } { Seq#Index(Heap[diz, demo__tmp], tid_3) }
        (0 <= tid_3 && tid_3 < gsize) && NoPerm < FullPerm ==> qpRange2(Seq#Index(Heap[diz, demo__tmp], tid_3)) && invRecv2(Seq#Index(Heap[diz, demo__tmp], tid_3)) == tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(Heap[diz, demo__tmp], invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_3) } { Seq#Index(Heap[diz, demo__tmp], tid_3) }
        0 <= tid_3 && tid_3 < gsize ==> Seq#Index(Heap[diz, demo__tmp], tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv2(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@177.11--177.34) [46012]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@179.11--179.35) [46013]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@181.11--181.44) [46014]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@181.11--181.44) [46015]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@182.11--182.46) [46016]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@182.11--182.46) [46017]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__ar[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__ar[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_4 && tid_4 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@183.12--183.111) [46018]"}
            HasDirectPerm(PostMask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@183.12--183.111) [46019]"}
            tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@183.12--183.111) [46020]"}
            tid_4 < Seq#Length(PostHeap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@183.12--183.111) [46021]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize)) && (0 <= tid_5_1 && tid_5_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__ar], tid_5) != Seq#Index(PostHeap[diz, demo__ar], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__ar], tid_5) } { Seq#Index(PostHeap[diz, demo__ar], tid_5) }
        (0 <= tid_5 && tid_5 < gsize) && NoPerm < FullPerm ==> qpRange3(Seq#Index(PostHeap[diz, demo__ar], tid_5)) && invRecv3(Seq#Index(PostHeap[diz, demo__ar], tid_5)) == tid_5
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(PostHeap[diz, demo__ar], invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__ar], tid_5) } { Seq#Index(PostHeap[diz, demo__ar], tid_5) }
        0 <= tid_5 && tid_5 < gsize ==> Seq#Index(PostHeap[diz, demo__ar], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__ar], invRecv3(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1 ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_6 && tid_6 < gsize - 1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@184.12--184.135) [46022]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@184.12--184.135) [46023]"}
            tid_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@184.12--184.135) [46024]"}
            tid_6 < Seq#Length(PostHeap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@184.12--184.135) [46025]"}
      (forall tid_7: int, tid_7_1: int ::
      
      (((tid_7 != tid_7_1 && (0 <= tid_7 && tid_7 < gsize - 1)) && (0 <= tid_7_1 && tid_7_1 < gsize - 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], tid_7) != Seq#Index(PostHeap[diz, demo__tmp], tid_7_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_7: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_7) } { Seq#Index(PostHeap[diz, demo__tmp], tid_7) }
        (0 <= tid_7 && tid_7 < gsize - 1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(PostHeap[diz, demo__tmp], tid_7)) && invRecv4(Seq#Index(PostHeap[diz, demo__tmp], tid_7)) == tid_7
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_7: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_7) } { Seq#Index(PostHeap[diz, demo__tmp], tid_7) }
        0 <= tid_7 && tid_7 < gsize - 1 ==> Seq#Index(PostHeap[diz, demo__tmp], tid_7) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv4(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@174.11--174.26) [46026]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@175.11--175.19) [46027]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@176.11--176.38) [46028]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@177.11--177.34) [46029]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@178.11--178.39) [46030]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@179.11--179.35) [46031]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@180.11--180.20) [46032]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@181.11--181.44) [46033]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@182.11--182.46) [46034]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__ar[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@183.12--183.111) [46035]"}
        (forall tid_8_1: int, tid_8_2: int ::
        { neverTriggered5(tid_8_1), neverTriggered5(tid_8_2) }
        (((tid_8_1 != tid_8_2 && (0 <= tid_8_1 && tid_8_1 < gsize)) && (0 <= tid_8_2 && tid_8_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], tid_8_1) != Seq#Index(Heap[diz, demo__ar], tid_8_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@183.12--183.111) [46036]"}
        (forall tid_8_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_8_1) } { Seq#Index(Heap[diz, demo__ar], tid_8_1) }
        0 <= tid_8_1 && tid_8_1 < gsize ==> Mask[Seq#Index(Heap[diz, demo__ar], tid_8_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__ar[tid]
      assume (forall tid_8_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_8_1) } { Seq#Index(Heap[diz, demo__ar], tid_8_1) }
        (0 <= tid_8_1 && tid_8_1 < gsize) && NoPerm < FullPerm ==> qpRange5(Seq#Index(Heap[diz, demo__ar], tid_8_1)) && invRecv5(Seq#Index(Heap[diz, demo__ar], tid_8_1)) == tid_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && (NoPerm < FullPerm && qpRange5(o_4)) ==> Seq#Index(Heap[diz, demo__ar], invRecv5(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && (NoPerm < FullPerm && qpRange5(o_4)) ==> Seq#Index(Heap[diz, demo__ar], invRecv5(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__tmp[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@184.12--184.135) [46037]"}
        (forall tid_9: int, tid_9_1: int ::
        { neverTriggered6(tid_9), neverTriggered6(tid_9_1) }
        (((tid_9 != tid_9_1 && (0 <= tid_9 && tid_9 < gsize - 1)) && (0 <= tid_9_1 && tid_9_1 < gsize - 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_9) != Seq#Index(Heap[diz, demo__tmp], tid_9_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@184.12--184.135) [46038]"}
        (forall tid_9: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_9) } { Seq#Index(Heap[diz, demo__tmp], tid_9) }
        0 <= tid_9 && tid_9 < gsize - 1 ==> Mask[Seq#Index(Heap[diz, demo__tmp], tid_9), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__tmp[tid]
      assume (forall tid_9: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_9) } { Seq#Index(Heap[diz, demo__tmp], tid_9) }
        (0 <= tid_9 && tid_9 < gsize - 1) && NoPerm < FullPerm ==> qpRange6(Seq#Index(Heap[diz, demo__tmp], tid_9)) && invRecv6(Seq#Index(Heap[diz, demo__tmp], tid_9)) == tid_9
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (0 <= invRecv6(o_4) && invRecv6(o_4) < gsize - 1) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv6(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv6(o_4) && invRecv6(o_4) < gsize - 1) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv6(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv6(o_4) && invRecv6(o_4) < gsize - 1) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
// Translation of method demo__main_resources_of_2
// ==================================================

procedure demo__main_resources_of_2(diz: Ref, current_thread_id: int, tcount: int, gsize: int, gid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_9: int;
  var j_10: int;
  var i_10: int;
  var j_4: int;
  var tid_12: int;
  var QPMask: MaskType;
  var tid_18: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_26: int;
  var tid_27: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@194.12--194.35) [46039]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@196.12--196.36) [46040]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_9 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@198.12--198.144) [46041]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_9 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_10 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@198.12--198.144) [46042]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_9 >= 0 && (i_9 < Seq#Length(Heap[diz, demo__ar]) && (j_10 >= 0 && (j_10 < Seq#Length(Heap[diz, demo__ar]) && i_9 != j_10)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@198.12--198.144) [46043]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_auto.vpr@198.12--198.144) [46044]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@198.12--198.144) [46045]"}
            i_9 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@198.12--198.144) [46046]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_auto.vpr@198.12--198.144) [46047]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@198.12--198.144) [46048]"}
            j_10 < Seq#Length(Heap[diz, demo__ar]);
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
        if (i_10 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@199.12--199.148) [46049]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_10 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_4 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@199.12--199.148) [46050]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_10 >= 0 && (i_10 < Seq#Length(Heap[diz, demo__tmp]) && (j_4 >= 0 && (j_4 < Seq#Length(Heap[diz, demo__tmp]) && i_10 != j_4)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@199.12--199.148) [46051]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@199.12--199.148) [46052]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@199.12--199.148) [46053]"}
            i_10 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@199.12--199.148) [46054]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@199.12--199.148) [46055]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@199.12--199.148) [46056]"}
            j_4 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3), Seq#Index(Heap[diz, demo__tmp], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, demo__tmp]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, demo__tmp]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, demo__tmp], i_3) != Seq#Index(Heap[diz, demo__tmp], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__ar[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__ar[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_12 && tid_12 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@200.13--200.112) [46057]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@200.13--200.112) [46058]"}
            tid_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@200.13--200.112) [46059]"}
            tid_12 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@200.13--200.112) [46060]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < gsize)) && (0 <= tid_1_1 && tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], tid_1) != Seq#Index(Heap[diz, demo__ar], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_1) } { Seq#Index(Heap[diz, demo__ar], tid_1) }
        (0 <= tid_1 && tid_1 < gsize) && NoPerm < FullPerm ==> qpRange7(Seq#Index(Heap[diz, demo__ar], tid_1)) && invRecv7(Seq#Index(Heap[diz, demo__ar], tid_1)) == tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        ((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize) && NoPerm < FullPerm) && qpRange7(o_4) ==> Seq#Index(Heap[diz, demo__ar], invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_1) } { Seq#Index(Heap[diz, demo__ar], tid_1) }
        0 <= tid_1 && tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv7(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_18 && tid_18 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@201.13--201.113) [46061]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@201.13--201.113) [46062]"}
            tid_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@201.13--201.113) [46063]"}
            tid_18 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@201.13--201.113) [46064]"}
      (forall tid_3: int, tid_3_1: int ::
      
      (((tid_3 != tid_3_1 && (0 <= tid_3 && tid_3 < gsize)) && (0 <= tid_3_1 && tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_3) != Seq#Index(Heap[diz, demo__tmp], tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_3) } { Seq#Index(Heap[diz, demo__tmp], tid_3) }
        (0 <= tid_3 && tid_3 < gsize) && NoPerm < FullPerm ==> qpRange8(Seq#Index(Heap[diz, demo__tmp], tid_3)) && invRecv8(Seq#Index(Heap[diz, demo__tmp], tid_3)) == tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(Heap[diz, demo__tmp], invRecv8(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_3) } { Seq#Index(Heap[diz, demo__tmp], tid_3) }
        0 <= tid_3 && tid_3 < gsize ==> Seq#Index(Heap[diz, demo__tmp], tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv8(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@205.11--205.34) [46065]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@207.11--207.35) [46066]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@209.11--209.44) [46067]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@209.11--209.44) [46068]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@210.11--210.46) [46069]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@210.11--210.46) [46070]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__ar[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__ar[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_26 && tid_26 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@211.12--211.111) [46071]"}
            HasDirectPerm(PostMask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@211.12--211.111) [46072]"}
            tid_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@211.12--211.111) [46073]"}
            tid_26 < Seq#Length(PostHeap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@211.12--211.111) [46074]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize)) && (0 <= tid_5_1 && tid_5_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__ar], tid_5) != Seq#Index(PostHeap[diz, demo__ar], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__ar], tid_5) } { Seq#Index(PostHeap[diz, demo__ar], tid_5) }
        (0 <= tid_5 && tid_5 < gsize) && NoPerm < FullPerm ==> qpRange9(Seq#Index(PostHeap[diz, demo__ar], tid_5)) && invRecv9(Seq#Index(PostHeap[diz, demo__ar], tid_5)) == tid_5
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(PostHeap[diz, demo__ar], invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__ar], tid_5) } { Seq#Index(PostHeap[diz, demo__ar], tid_5) }
        0 <= tid_5 && tid_5 < gsize ==> Seq#Index(PostHeap[diz, demo__ar], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__ar], invRecv9(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } 0 <= tid && tid < gsize ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_27 && tid_27 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@212.12--212.112) [46075]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@212.12--212.112) [46076]"}
            tid_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@212.12--212.112) [46077]"}
            tid_27 < Seq#Length(PostHeap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@212.12--212.112) [46078]"}
      (forall tid_7: int, tid_7_1: int ::
      
      (((tid_7 != tid_7_1 && (0 <= tid_7 && tid_7 < gsize)) && (0 <= tid_7_1 && tid_7_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], tid_7) != Seq#Index(PostHeap[diz, demo__tmp], tid_7_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_7: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_7) } { Seq#Index(PostHeap[diz, demo__tmp], tid_7) }
        (0 <= tid_7 && tid_7 < gsize) && NoPerm < FullPerm ==> qpRange10(Seq#Index(PostHeap[diz, demo__tmp], tid_7)) && invRecv10(Seq#Index(PostHeap[diz, demo__tmp], tid_7)) == tid_7
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && NoPerm < FullPerm) && qpRange10(o_4) ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv10(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_7: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_7) } { Seq#Index(PostHeap[diz, demo__tmp], tid_7) }
        0 <= tid_7 && tid_7 < gsize ==> Seq#Index(PostHeap[diz, demo__tmp], tid_7) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv10(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@202.11--202.26) [46079]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@203.11--203.19) [46080]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@204.11--204.38) [46081]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@205.11--205.34) [46082]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@206.11--206.39) [46083]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@207.11--207.35) [46084]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@208.11--208.20) [46085]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@209.11--209.44) [46086]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@210.11--210.46) [46087]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__ar[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@211.12--211.111) [46088]"}
        (forall tid_8_1: int, tid_8_2: int ::
        { neverTriggered11(tid_8_1), neverTriggered11(tid_8_2) }
        (((tid_8_1 != tid_8_2 && (0 <= tid_8_1 && tid_8_1 < gsize)) && (0 <= tid_8_2 && tid_8_2 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], tid_8_1) != Seq#Index(Heap[diz, demo__ar], tid_8_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@211.12--211.111) [46089]"}
        (forall tid_8_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_8_1) } { Seq#Index(Heap[diz, demo__ar], tid_8_1) }
        0 <= tid_8_1 && tid_8_1 < gsize ==> Mask[Seq#Index(Heap[diz, demo__ar], tid_8_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__ar[tid]
      assume (forall tid_8_1: int ::
        { Seq#Index(Heap[diz, demo__ar], tid_8_1) } { Seq#Index(Heap[diz, demo__ar], tid_8_1) }
        (0 <= tid_8_1 && tid_8_1 < gsize) && NoPerm < FullPerm ==> qpRange11(Seq#Index(Heap[diz, demo__ar], tid_8_1)) && invRecv11(Seq#Index(Heap[diz, demo__ar], tid_8_1)) == tid_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (0 <= invRecv11(o_4) && invRecv11(o_4) < gsize) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(Heap[diz, demo__ar], invRecv11(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < gsize) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(Heap[diz, demo__ar], invRecv11(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv11(o_4) && invRecv11(o_4) < gsize) && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__tmp[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@212.12--212.112) [46090]"}
        (forall tid_9: int, tid_9_1: int ::
        { neverTriggered12(tid_9), neverTriggered12(tid_9_1) }
        (((tid_9 != tid_9_1 && (0 <= tid_9 && tid_9 < gsize)) && (0 <= tid_9_1 && tid_9_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_9) != Seq#Index(Heap[diz, demo__tmp], tid_9_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@212.12--212.112) [46091]"}
        (forall tid_9: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_9) } { Seq#Index(Heap[diz, demo__tmp], tid_9) }
        0 <= tid_9 && tid_9 < gsize ==> Mask[Seq#Index(Heap[diz, demo__tmp], tid_9), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__tmp[tid]
      assume (forall tid_9: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_9) } { Seq#Index(Heap[diz, demo__tmp], tid_9) }
        (0 <= tid_9 && tid_9 < gsize) && NoPerm < FullPerm ==> qpRange12(Seq#Index(Heap[diz, demo__tmp], tid_9)) && invRecv12(Seq#Index(Heap[diz, demo__tmp], tid_9)) == tid_9
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (0 <= invRecv12(o_4) && invRecv12(o_4) < gsize) && (NoPerm < FullPerm && qpRange12(o_4)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv12(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv12(o_4) && invRecv12(o_4) < gsize) && (NoPerm < FullPerm && qpRange12(o_4)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv12(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv12(o_4) && invRecv12(o_4) < gsize) && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
// Translation of method demo__main_post_check_1
// ==================================================

procedure demo__main_post_check_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_13: int;
  var j_12: int;
  var i_20: int;
  var j_13: int;
  var _x_tid_2: int;
  var QPMask: MaskType;
  var _x_tid_4: int;
  var _x_tid_6: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var _x_tid_16: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@225.12--225.35) [46092]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@227.12--227.36) [46093]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_13 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@228.12--228.144) [46094]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_13 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_12 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@228.12--228.144) [46095]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_13 >= 0 && (i_13 < Seq#Length(Heap[diz, demo__ar]) && (j_12 >= 0 && (j_12 < Seq#Length(Heap[diz, demo__ar]) && i_13 != j_12)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@228.12--228.144) [46096]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_auto.vpr@228.12--228.144) [46097]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@228.12--228.144) [46098]"}
            i_13 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@228.12--228.144) [46099]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_auto.vpr@228.12--228.144) [46100]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@228.12--228.144) [46101]"}
            j_12 < Seq#Length(Heap[diz, demo__ar]);
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
        if (i_20 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@229.12--229.148) [46102]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_20 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_13 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@229.12--229.148) [46103]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_20 >= 0 && (i_20 < Seq#Length(Heap[diz, demo__tmp]) && (j_13 >= 0 && (j_13 < Seq#Length(Heap[diz, demo__tmp]) && i_20 != j_13)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@229.12--229.148) [46104]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@229.12--229.148) [46105]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@229.12--229.148) [46106]"}
            i_20 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@229.12--229.148) [46107]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@229.12--229.148) [46108]"}
            j_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@229.12--229.148) [46109]"}
            j_13 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3), Seq#Index(Heap[diz, demo__tmp], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, demo__tmp]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, demo__tmp]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, demo__tmp], i_3) != Seq#Index(Heap[diz, demo__tmp], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__ar[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__ar[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_2 && _x_tid_2 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@230.13--230.124) [46110]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@230.13--230.124) [46111]"}
            _x_tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@230.13--230.124) [46112]"}
            _x_tid_2 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[_x_tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@230.13--230.124) [46113]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != Seq#Index(Heap[diz, demo__ar], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange13(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) && invRecv13(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < gsize) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(Heap[diz, demo__ar], invRecv13(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv13(o_4) && invRecv13(o_4) < gsize) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < gsize) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__tmp[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_4 && _x_tid_4 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@231.13--231.125) [46114]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@231.13--231.125) [46115]"}
            _x_tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@231.13--231.125) [46116]"}
            _x_tid_4 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[_x_tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@231.13--231.125) [46117]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != Seq#Index(Heap[diz, demo__tmp], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < FullPerm ==> qpRange14(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) && invRecv14(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < gsize) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(Heap[diz, demo__tmp], invRecv14(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        0 <= _x_tid_3 && _x_tid_3 < gsize ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv14(o_4) && invRecv14(o_4) < gsize) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv14(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv14(o_4) && invRecv14(o_4) < gsize) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
        if (0 <= _x_tid_6 && _x_tid_6 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@235.13--235.157) [46118]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@235.13--235.157) [46119]"}
            _x_tid_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@235.13--235.157) [46120]"}
            _x_tid_6 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[_x_tid].Ref__Integer_value (test_binomial_auto.vpr@235.13--235.157) [46121]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], _x_tid_6), Ref__Integer_value);
          if (_x_tid_6 < N) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@235.131--235.151) [46122]"}
                N >= 0;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= _x_tid might not hold. (test_binomial_auto.vpr@235.131--235.151) [46123]"}
                0 <= _x_tid_6;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion _x_tid <= N might not hold. (test_binomial_auto.vpr@235.131--235.151) [46124]"}
                _x_tid_6 <= N;
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
        if (0 <= _x_tid_16 && _x_tid_16 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@236.13--236.158) [46125]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@236.13--236.158) [46126]"}
            _x_tid_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@236.13--236.158) [46127]"}
            _x_tid_16 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[_x_tid].Ref__Integer_value (test_binomial_auto.vpr@236.13--236.158) [46128]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__tmp], _x_tid_16), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@236.13--236.158) [46129]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@236.13--236.158) [46130]"}
            _x_tid_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@236.13--236.158) [46131]"}
            _x_tid_16 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[_x_tid].Ref__Integer_value (test_binomial_auto.vpr@236.13--236.158) [46132]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], _x_tid_16), Ref__Integer_value);
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@243.11--243.34) [46133]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@245.11--245.35) [46134]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@246.11--246.44) [46135]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@246.11--246.44) [46136]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@247.11--247.46) [46137]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@247.11--247.46) [46138]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@248.11--248.59) [46139]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@248.11--248.59) [46140]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@248.11--248.59) [46141]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@249.11--249.78) [46142]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@249.11--249.78) [46143]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@249.11--249.78) [46144]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@253.11--253.107) [46145]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@253.11--253.107) [46146]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@253.11--253.107) [46147]"}
          tid - 1 < Seq#Length(PostHeap[diz, demo__tmp]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@253.11--253.107) [46148]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@253.85--253.106) [46149]"}
            N >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_auto.vpr@253.85--253.106) [46150]"}
            0 <= tid - 1;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N might not hold. (test_binomial_auto.vpr@253.85--253.106) [46151]"}
            tid - 1 <= N;
          // Stop execution
          assume false;
        }
      assume PostHeap[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(PostHeap, N, tid - 1);
    }
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@254.11--254.84) [46152]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@254.11--254.84) [46153]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@254.11--254.84) [46154]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@254.11--254.84) [46155]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
      if (tid < N) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@254.62--254.79) [46156]"}
            N >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@254.62--254.79) [46157]"}
            0 <= tid;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@254.62--254.79) [46158]"}
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
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@237.11--237.19) [46159]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@238.11--238.23) [46160]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@239.11--239.21) [46161]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@240.11--240.26) [46162]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@241.11--241.19) [46163]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@242.11--242.38) [46164]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@243.11--243.34) [46165]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@244.11--244.39) [46166]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@245.11--245.35) [46167]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@246.11--246.44) [46168]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@247.11--247.46) [46169]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@248.11--248.59) [46170]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
    if (tid > 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_auto.vpr@249.11--249.78) [46171]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@250.11--250.20) [46172]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@251.11--251.16) [46173]"}
      0 < N;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@252.11--252.20) [46174]"}
      N < gsize;
    if (0 < tid && tid <= N) {
      assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1) might not hold. (test_binomial_auto.vpr@253.11--253.107) [46175]"}
        Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N, tid - 1);
    }
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@254.11--254.84) [46176]"}
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
  var i_31: int;
  var j_19: int;
  var i_32: int;
  var j_23: int;
  var _x_tid_17: int;
  var QPMask: MaskType;
  var _x_tid_18: int;
  var _x_tid_19: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@267.12--267.35) [46177]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@269.12--269.36) [46178]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_31 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@270.12--270.144) [46179]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_31 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_19 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@270.12--270.144) [46180]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_31 >= 0 && (i_31 < Seq#Length(Heap[diz, demo__ar]) && (j_19 >= 0 && (j_19 < Seq#Length(Heap[diz, demo__ar]) && i_31 != j_19)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@270.12--270.144) [46181]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_auto.vpr@270.12--270.144) [46182]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@270.12--270.144) [46183]"}
            i_31 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@270.12--270.144) [46184]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_auto.vpr@270.12--270.144) [46185]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@270.12--270.144) [46186]"}
            j_19 < Seq#Length(Heap[diz, demo__ar]);
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
        if (i_32 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@271.12--271.148) [46187]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_32 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_23 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@271.12--271.148) [46188]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_32 >= 0 && (i_32 < Seq#Length(Heap[diz, demo__tmp]) && (j_23 >= 0 && (j_23 < Seq#Length(Heap[diz, demo__tmp]) && i_32 != j_23)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@271.12--271.148) [46189]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@271.12--271.148) [46190]"}
            i_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@271.12--271.148) [46191]"}
            i_32 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@271.12--271.148) [46192]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@271.12--271.148) [46193]"}
            j_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@271.12--271.148) [46194]"}
            j_23 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3), Seq#Index(Heap[diz, demo__tmp], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, demo__tmp]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, demo__tmp]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, demo__tmp], i_3) != Seq#Index(Heap[diz, demo__tmp], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__ar[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__ar[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_17 && _x_tid_17 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@272.13--272.124) [46195]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@272.13--272.124) [46196]"}
            _x_tid_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@272.13--272.124) [46197]"}
            _x_tid_17 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[_x_tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@272.13--272.124) [46198]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != Seq#Index(Heap[diz, demo__ar], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange15(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) && invRecv15(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        ((0 <= invRecv15(o_4) && invRecv15(o_4) < gsize) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(Heap[diz, demo__ar], invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv15(o_4) && invRecv15(o_4) < gsize) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv15(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv15(o_4) && invRecv15(o_4) < gsize) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__tmp[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_18 && _x_tid_18 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@273.13--273.125) [46199]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@273.13--273.125) [46200]"}
            _x_tid_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@273.13--273.125) [46201]"}
            _x_tid_18 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[_x_tid].Ref__Integer_value might not be injective. (test_binomial_auto.vpr@273.13--273.125) [46202]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != Seq#Index(Heap[diz, demo__tmp], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < FullPerm ==> qpRange16(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) && invRecv16(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        ((0 <= invRecv16(o_4) && invRecv16(o_4) < gsize) && NoPerm < FullPerm) && qpRange16(o_4) ==> Seq#Index(Heap[diz, demo__tmp], invRecv16(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        0 <= _x_tid_3 && _x_tid_3 < gsize ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv16(o_4) && invRecv16(o_4) < gsize) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv16(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv16(o_4) && invRecv16(o_4) < gsize) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
        if (0 <= _x_tid_19 && _x_tid_19 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@277.13--277.157) [46203]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@277.13--277.157) [46204]"}
            _x_tid_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@277.13--277.157) [46205]"}
            _x_tid_19 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[_x_tid].Ref__Integer_value (test_binomial_auto.vpr@277.13--277.157) [46206]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], _x_tid_19), Ref__Integer_value);
          if (_x_tid_19 < N) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@277.131--277.151) [46207]"}
                N >= 0;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= _x_tid might not hold. (test_binomial_auto.vpr@277.131--277.151) [46208]"}
                0 <= _x_tid_19;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion _x_tid <= N might not hold. (test_binomial_auto.vpr@277.131--277.151) [46209]"}
                _x_tid_19 <= N;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@284.11--284.34) [46210]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@286.11--286.35) [46211]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@287.11--287.44) [46212]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@287.11--287.44) [46213]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@288.11--288.46) [46214]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@288.11--288.46) [46215]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@289.11--289.59) [46216]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@289.11--289.59) [46217]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@289.11--289.59) [46218]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@290.11--290.60) [46219]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_auto.vpr@290.11--290.60) [46220]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_auto.vpr@290.11--290.60) [46221]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@294.11--294.84) [46222]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_auto.vpr@294.11--294.84) [46223]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_auto.vpr@294.11--294.84) [46224]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@294.11--294.84) [46225]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
      if (tid < N) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_auto.vpr@294.62--294.79) [46226]"}
            N >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@294.62--294.79) [46227]"}
            0 <= tid;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_auto.vpr@294.62--294.79) [46228]"}
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
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion 0 <= tid might not hold. (test_binomial_auto.vpr@278.11--278.19) [46229]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tid < tcount might not hold. (test_binomial_auto.vpr@279.11--279.23) [46230]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tid == lid might not hold. (test_binomial_auto.vpr@280.11--280.21) [46231]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tcount == gsize might not hold. (test_binomial_auto.vpr@281.11--281.26) [46232]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion gid == 0 might not hold. (test_binomial_auto.vpr@282.11--282.19) [46233]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_auto.vpr@283.11--283.38) [46234]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_auto.vpr@284.11--284.34) [46235]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_auto.vpr@285.11--285.39) [46236]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_auto.vpr@286.11--286.35) [46237]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_auto.vpr@287.11--287.44) [46238]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_auto.vpr@288.11--288.46) [46239]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_auto.vpr@289.11--289.59) [46240]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_auto.vpr@290.11--290.60) [46241]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion gsize > 1 might not hold. (test_binomial_auto.vpr@291.11--291.20) [46242]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion 0 < N might not hold. (test_binomial_auto.vpr@292.11--292.16) [46243]"}
      0 < N;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion N < gsize might not hold. (test_binomial_auto.vpr@293.11--293.20) [46244]"}
      N < gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_auto.vpr@294.11--294.84) [46245]"}
      Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}