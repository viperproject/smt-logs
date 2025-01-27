// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:39:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/snapshots1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/snapshots1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_23: Ref, f_15: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_23, f_15] }
  Heap[o_23, $allocated] ==> Heap[Heap[o_23, f_15], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_52: Ref, f_63: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_52, f_63] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_52, f_63) ==> Heap[o_52, f_63] == ExhaleHeap[o_52, f_63]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_24), ExhaleHeap[null, PredicateMaskField(pm_f_24)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsPredicateField(pm_f_24) ==> Heap[null, PredicateMaskField(pm_f_24)] == ExhaleHeap[null, PredicateMaskField(pm_f_24)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_24) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsPredicateField(pm_f_24) ==> (forall <A, B> o2_24: Ref, f_63: (Field A B) ::
    { ExhaleHeap[o2_24, f_63] }
    Heap[null, PredicateMaskField(pm_f_24)][o2_24, f_63] ==> Heap[o2_24, f_63] == ExhaleHeap[o2_24, f_63]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_24), ExhaleHeap[null, WandMaskField(pm_f_24)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsWandField(pm_f_24) ==> Heap[null, WandMaskField(pm_f_24)] == ExhaleHeap[null, WandMaskField(pm_f_24)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_24) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsWandField(pm_f_24) ==> (forall <A, B> o2_24: Ref, f_63: (Field A B) ::
    { ExhaleHeap[o2_24, f_63] }
    Heap[null, WandMaskField(pm_f_24)][o2_24, f_63] ==> Heap[o2_24, f_63] == ExhaleHeap[o2_24, f_63]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_52: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_52, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_52, $allocated] ==> ExhaleHeap[o_52, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_23: Ref, f_65: (Field A B), v: B ::
  { Heap[o_23, f_65:=v] }
  succHeap(Heap, Heap[o_23, f_65:=v])
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

function  neverTriggered1(i_4_1: int): bool;
function  neverTriggered2(i: int): bool;
function  neverTriggered3(i_2: int): bool;
function  neverTriggered4(i_1: int): bool;
function  neverTriggered5(i_2: int): bool;
function  neverTriggered6(i_3_2: int): bool;
function  neverTriggered7(i_4_1: int): bool;
function  neverTriggered8(i_5_1: int): bool;
function  neverTriggered9(i: int): bool;
function  neverTriggered10(i_1: int): bool;
function  neverTriggered11(i_1: int): bool;
function  neverTriggered12(i_2: int): bool;
function  neverTriggered13(i_4_1: int): bool;
function  neverTriggered14(i_5_1: int): bool;
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

// Function heights (higher height means its body is available earlier):
// - height 1: fun1
// - height 0: fun2
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

// ==================================================
// Translation of function fun1
// ==================================================

// Uninterpreted function definitions
function  fun1(Heap: HeapType, xs: (Seq Ref)): int;
function  fun1'(Heap: HeapType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun1(Heap, xs) }
  fun1(Heap, xs) == fun1'(Heap, xs) && dummyFunction(fun1#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun1'(Heap, xs) }
  dummyFunction(fun1#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun1(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> 5 < Seq#Length(xs) && (forall i1_9: int, i2: int ::
    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Index(xs, i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Index(xs, i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2), Seq#Index(xs, i1_9) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2), Seq#Index(xs, i1_9) } { Seq#Index(xs, i1_9), Seq#Index(xs, i2) }
    Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) && i1_9 != i2) ==> Seq#Index(xs, i1_9) != Seq#Index(xs, i2)
  ) ==> fun1(Heap, xs) == Heap[Seq#Index(xs, 0), f_7]
);

// Framing axioms
function  fun1#frame(frame: FrameType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun1'(Heap, xs) }
  state(Heap, Mask) ==> fun1'(Heap, xs) == fun1#frame(FrameFragment(fun1#condqp1(Heap, xs)), xs)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write)) in function fun1
// ==================================================

function  fun1#condqp1(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun1#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun1#condqp1(Heap2Heap, xs), fun1#condqp1(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Seq#Contains(Seq#Range(0, Seq#Length(xs)), sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs), fun1#condqp1(Heap1Heap, xs))) && NoPerm < FullPerm <==> Seq#Contains(Seq#Range(0, Seq#Length(xs)), sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs), fun1#condqp1(Heap1Heap, xs))) && NoPerm < FullPerm) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs), fun1#condqp1(Heap1Heap, xs))) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs), fun1#condqp1(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs), fun1#condqp1(Heap1Heap, xs))), f_7]) ==> fun1#condqp1(Heap2Heap, xs) == fun1#condqp1(Heap1Heap, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun1#trigger(frame: FrameType, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun1#triggerStateless(xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun1#definedness(xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var i1_10: int;
  var i2_12: int;
  var i_3: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 5 < Seq#Length(xs);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|xs|)), (i2 in [0..|xs|)) } { (i1 in [0..|xs|)), xs[i2] } { (i2 in [0..|xs|)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..|xs|)) && ((i2 in [0..|xs|)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_10) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_12) && i1_10 != i2_12)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (snapshots1.vpr@8.12--8.106) [185607]"}
            i1_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (snapshots1.vpr@8.12--8.106) [185608]"}
            i1_10 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (snapshots1.vpr@8.12--8.106) [185609]"}
            i2_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (snapshots1.vpr@8.12--8.106) [185610]"}
            i2_12 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_3_1: int, i2_3_2: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#Index(xs, i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#Index(xs, i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_2), Seq#Index(xs, i1_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_2), Seq#Index(xs, i1_3_1) } { Seq#Index(xs, i1_3_1), Seq#Index(xs, i2_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_2) && i1_3_1 != i2_3_2) ==> Seq#Index(xs, i1_3_1) != Seq#Index(xs, i2_3_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (snapshots1.vpr@9.12--9.60) [185611]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (snapshots1.vpr@9.12--9.60) [185612]"}
            i_3 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@9.12--9.60) [185613]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_4_1) != Seq#Index(xs, i_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { Seq#Index(xs, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Index(xs, i_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, i_4_1)) && invRecv1(Seq#Index(xs, i_4_1)) == i_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> Seq#Index(xs, invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { Seq#Index(xs, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Index(xs, i_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) ==> Seq#Index(xs, i_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[0].f
      assert {:msg "  Function might not be well-formed. Index xs[0] into xs might exceed sequence length. (snapshots1.vpr@6.1--10.12) [185614]"}
        0 < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[0].f (snapshots1.vpr@6.1--10.12) [185615]"}
        HasDirectPerm(Mask, Seq#Index(xs, 0), f_7);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, 0), f_7];
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, xs: (Seq Ref)): int;
function  fun2'(Heap: HeapType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun2(Heap, xs) }
  fun2(Heap, xs) == fun2'(Heap, xs) && dummyFunction(fun2#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun2'(Heap, xs) }
  dummyFunction(fun2#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun2(Heap, xs) } { state(Heap, Mask), fun2#triggerStateless(xs), P#trigger(Heap, P(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun2(Heap, xs) == Heap[Seq#Index(xs, 0), f_7]
);

// Framing axioms
function  fun2#frame(frame: FrameType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun2'(Heap, xs) }
  state(Heap, Mask) ==> fun2'(Heap, xs) == fun2#frame(Heap[null, P(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun2#triggerStateless(xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(xs), write) in xs[0].f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(xs));
      assume UnfoldingHeap[null, P(xs)] == FrameFragment(P#condqp2(UnfoldingHeap, xs));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(xs) (snapshots1.vpr@35.1--37.36) [185616]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(xs)];
      assume 5 < Seq#Length(xs);
      assume (forall i1_9: int, i2: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Index(xs, i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Index(xs, i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2), Seq#Index(xs, i1_9) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2), Seq#Index(xs, i1_9) } { Seq#Index(xs, i1_9), Seq#Index(xs, i2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) && i1_9 != i2) ==> Seq#Index(xs, i1_9) != Seq#Index(xs, i2)
      );
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@35.1--37.36) [185617]"}
        (forall i: int, i_22: int ::
        
        (((i != i_22 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_22)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i) != Seq#Index(xs, i_22)
      );
      
      // -- Define Inverse Function
        assume (forall i: int ::
          { Seq#Index(xs, i) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i) } { Seq#Index(xs, i) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs)), i) && NoPerm < FullPerm ==> qpRange2(Seq#Index(xs, i)) && invRecv2(Seq#Index(xs, i)) == i
        );
        assume (forall o_9: Ref ::
          { invRecv2(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9) ==> Seq#Index(xs, invRecv2(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i: int ::
          { Seq#Index(xs, i) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i) } { Seq#Index(xs, i) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs)), i) ==> Seq#Index(xs, i) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv2(o_9)) == o_9) && QPMask[o_9, f_7] == UnfoldingMask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == UnfoldingMask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. Index xs[0] into xs might exceed sequence length. (snapshots1.vpr@35.1--37.36) [185618]"}
        0 < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[0].f (snapshots1.vpr@35.1--37.36) [185619]"}
        HasDirectPerm(UnfoldingMask, Seq#Index(xs, 0), f_7);
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate P
        havoc newPMask;
        assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
          { newPMask[o_6, f_12] }
          Heap[null, P#sm(xs)][o_6, f_12] ==> newPMask[o_6, f_12]
        );
        assume (forall i_1: int ::
          
          Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) ==> newPMask[Seq#Index(xs, i_1), f_7]
        );
        Heap := Heap[null, P#sm(xs):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, 0), f_7];
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(xs: (Seq Ref)): Field PredicateType_P FrameType;
function  P#sm(xs: (Seq Ref)): Field PredicateType_P PMaskType;
axiom (forall xs: (Seq Ref) ::
  { PredicateMaskField(P(xs)) }
  PredicateMaskField(P(xs)) == P#sm(xs)
);
axiom (forall xs: (Seq Ref) ::
  { P(xs) }
  IsPredicateField(P(xs))
);
axiom (forall xs: (Seq Ref) ::
  { P(xs) }
  getPredWandId(P(xs)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: (Seq Ref), xs2: (Seq Ref) ::
  { P(xs), P(xs2) }
  P(xs) == P(xs2) ==> xs == xs2
);
axiom (forall xs: (Seq Ref), xs2: (Seq Ref) ::
  { P#sm(xs), P#sm(xs2) }
  P#sm(xs) == P#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { P#trigger(Heap, P(xs)) }
  P#everUsed(P(xs))
);

// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write)) in predicate P
// ==================================================

function  P#condqp2(Heap: HeapType, xs_2_1: (Seq Ref)): int;
function  sk_P#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { P#condqp2(Heap2Heap, xs), P#condqp2(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Seq#Contains(Seq#Range(0, Seq#Length(xs)), sk_P#condqp2(P#condqp2(Heap2Heap, xs), P#condqp2(Heap1Heap, xs))) && NoPerm < FullPerm <==> Seq#Contains(Seq#Range(0, Seq#Length(xs)), sk_P#condqp2(P#condqp2(Heap2Heap, xs), P#condqp2(Heap1Heap, xs))) && NoPerm < FullPerm) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), sk_P#condqp2(P#condqp2(Heap2Heap, xs), P#condqp2(Heap1Heap, xs))) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_P#condqp2(P#condqp2(Heap2Heap, xs), P#condqp2(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_P#condqp2(P#condqp2(Heap2Heap, xs), P#condqp2(Heap1Heap, xs))), f_7]) ==> P#condqp2(Heap2Heap, xs) == P#condqp2(Heap1Heap, xs)
);

procedure P#definedness(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i1_11: int;
  var i2_11: int;
  var i_15: int;
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume 5 < Seq#Length(xs);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|xs|)), (i2 in [0..|xs|)) } { (i1 in [0..|xs|)), xs[i2] } { (i2 in [0..|xs|)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..|xs|)) && ((i2 in [0..|xs|)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_11) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_11) && i1_11 != i2_11)) {
          assert {:msg "  Predicate might not be well-formed. Index xs[i1] into xs might be negative. (snapshots1.vpr@29.1--33.2) [185620]"}
            i1_11 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index xs[i1] into xs might exceed sequence length. (snapshots1.vpr@29.1--33.2) [185621]"}
            i1_11 < Seq#Length(xs);
          assert {:msg "  Predicate might not be well-formed. Index xs[i2] into xs might be negative. (snapshots1.vpr@29.1--33.2) [185622]"}
            i2_11 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index xs[i2] into xs might exceed sequence length. (snapshots1.vpr@29.1--33.2) [185623]"}
            i2_11 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Index(xs, i1_1), Seq#Index(xs, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) && i1_1 != i2_1) ==> Seq#Index(xs, i1_1) != Seq#Index(xs, i2_1)
    );
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_15)) {
          assert {:msg "  Predicate might not be well-formed. Index xs[i] into xs might be negative. (snapshots1.vpr@29.1--33.2) [185624]"}
            i_15 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index xs[i] into xs might exceed sequence length. (snapshots1.vpr@29.1--33.2) [185625]"}
            i_15 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@29.1--33.2) [185626]"}
      (forall i_2: int, i_2_2: int ::
      
      (((i_2 != i_2_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_2) != Seq#Index(xs, i_2_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_2: int ::
        { Seq#Index(xs, i_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Index(xs, i_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) && NoPerm < FullPerm ==> qpRange3(Seq#Index(xs, i_2)) && invRecv3(Seq#Index(xs, i_2)) == i_2
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(xs, invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_2: int ::
        { Seq#Index(xs, i_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Index(xs, i_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) ==> Seq#Index(xs, i_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv3(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
// Translation of method test1
// ==================================================

procedure test1_1(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i1_22: int;
  var i2_13: int;
  var i_21: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_2_2: int;
  var i2_2_2: int;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i1_4: int;
  var i2_4: int;
  var i1_6: int;
  var i2_6: int;
  var b_24: int;
  var i1_8_1: int;
  var i2_8_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 5 < Seq#Length(xs);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|xs|)), (i2 in [0..|xs|)) } { (i1 in [0..|xs|)), xs[i2] } { (i2 in [0..|xs|)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..|xs|)) && ((i2 in [0..|xs|)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_22) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_13) && i1_22 != i2_13)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (snapshots1.vpr@14.12--14.106) [185627]"}
            i1_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (snapshots1.vpr@14.12--14.106) [185628]"}
            i1_22 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (snapshots1.vpr@14.12--14.106) [185629]"}
            i2_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (snapshots1.vpr@14.12--14.106) [185630]"}
            i2_13 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Index(xs, i1_1), Seq#Index(xs, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) && i1_1 != i2_1) ==> Seq#Index(xs, i1_1) != Seq#Index(xs, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_21)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (snapshots1.vpr@15.12--15.60) [185631]"}
            i_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (snapshots1.vpr@15.12--15.60) [185632]"}
            i_21 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@15.12--15.60) [185633]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(xs, i_1)) && invRecv4(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9) ==> Seq#Index(xs, invRecv4(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv4(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := fun1(xs) -- snapshots1.vpr@17.3--17.25
    
    // -- Check definedness of fun1(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion 5 < |xs| might not hold. (snapshots1.vpr@17.17--17.25) [185634]"}
          5 < Seq#Length(xs);
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_2_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_2_2) && i1_2_2 != i2_2_2)) {
            assert {:msg "  Precondition of function fun1 might not hold. Assertion xs[i1] != xs[i2] might not hold. (snapshots1.vpr@17.17--17.25) [185635]"}
              Seq#Index(xs, i1_2_2) != Seq#Index(xs, i2_2_2);
          }
          assume false;
        }
        assume (forall i1_3_1_1: int, i2_3_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Index(xs, i1_3_1_1), Seq#Index(xs, i2_3_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_1) && i1_3_1_1 != i2_3_1) ==> Seq#Index(xs, i1_3_1_1) != Seq#Index(xs, i2_3_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@17.17--17.25) [185636]"}
            (forall i_2: int, i_2_2: int ::
            { neverTriggered5(i_2), neverTriggered5(i_2_2) }
            (((i_2 != i_2_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_2) != Seq#Index(xs, i_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access xs[i].f (snapshots1.vpr@17.17--17.25) [185637]"}
            (forall i_2: int ::
            { Seq#Index(xs, i_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Index(xs, i_2) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, i_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_2: int ::
            { Seq#Index(xs, i_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Index(xs, i_2) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) && NoPerm < FullPerm ==> qpRange5(Seq#Index(xs, i_2)) && invRecv5(Seq#Index(xs, i_2)) == i_2
          );
          assume (forall o_9: Ref ::
            { invRecv5(o_9) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv5(o_9)) && (NoPerm < FullPerm && qpRange5(o_9)) ==> Seq#Index(xs, invRecv5(o_9)) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := fun1(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == fun1(xs) -- snapshots1.vpr@18.3--18.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of a == fun1(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion 5 < |xs| might not hold. (snapshots1.vpr@18.15--18.23) [185638]"}
          5 < Seq#Length(xs);
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_4) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_4) && i1_4 != i2_4)) {
            assert {:msg "  Precondition of function fun1 might not hold. Assertion xs[i1] != xs[i2] might not hold. (snapshots1.vpr@18.15--18.23) [185639]"}
              Seq#Index(xs, i1_4) != Seq#Index(xs, i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_5_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_5_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Index(xs, i1_5_1), Seq#Index(xs, i2_5_1_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_5_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(xs, i1_5_1) != Seq#Index(xs, i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@18.15--18.23) [185640]"}
            (forall i_3_2: int, i_3_3: int ::
            { neverTriggered6(i_3_2), neverTriggered6(i_3_3) }
            (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3_2) != Seq#Index(xs, i_3_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access xs[i].f (snapshots1.vpr@18.15--18.23) [185641]"}
            (forall i_3_2: int ::
            { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_3_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_3_2: int ::
            { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) && NoPerm < FullPerm ==> qpRange6(Seq#Index(xs, i_3_2)) && invRecv6(Seq#Index(xs, i_3_2)) == i_3_2
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv6(o_9)) && (NoPerm < FullPerm && qpRange6(o_9)) ==> Seq#Index(xs, invRecv6(o_9)) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a == fun1(xs) might not hold. (snapshots1.vpr@18.10--18.23) [185642]"}
      a_2 == fun1(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[0].f := 0 -- snapshots1.vpr@20.3--20.15
    
    // -- Check definedness of xs[0]
      assert {:msg "  Assignment might fail. Index xs[0] into xs might exceed sequence length. (snapshots1.vpr@20.3--20.15) [185643]"}
        0 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[0].f (snapshots1.vpr@20.3--20.15) [185644]"}
      FullPerm == Mask[Seq#Index(xs, 0), f_7];
    Heap := Heap[Seq#Index(xs, 0), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: b := fun1(xs) -- snapshots1.vpr@22.3--22.25
    
    // -- Check definedness of fun1(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion 5 < |xs| might not hold. (snapshots1.vpr@22.17--22.25) [185645]"}
          5 < Seq#Length(xs);
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_6) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_6) && i1_6 != i2_6)) {
            assert {:msg "  Precondition of function fun1 might not hold. Assertion xs[i1] != xs[i2] might not hold. (snapshots1.vpr@22.17--22.25) [185646]"}
              Seq#Index(xs, i1_6) != Seq#Index(xs, i2_6);
          }
          assume false;
        }
        assume (forall i1_7_1: int, i2_7_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_7_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_7_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_7_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_7_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_7_1), Seq#Index(xs, i2_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_7_1), Seq#Index(xs, i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_7_1), Seq#Index(xs, i1_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_7_1), Seq#Index(xs, i1_7_1) } { Seq#Index(xs, i1_7_1), Seq#Index(xs, i2_7_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_7_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_7_1) && i1_7_1 != i2_7_1) ==> Seq#Index(xs, i1_7_1) != Seq#Index(xs, i2_7_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@22.17--22.25) [185647]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered7(i_4_1), neverTriggered7(i_4_2) }
            (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_4_1) != Seq#Index(xs, i_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access xs[i].f (snapshots1.vpr@22.17--22.25) [185648]"}
            (forall i_4_1: int ::
            { Seq#Index(xs, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Index(xs, i_4_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, i_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_4_1: int ::
            { Seq#Index(xs, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Index(xs, i_4_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) && NoPerm < FullPerm ==> qpRange7(Seq#Index(xs, i_4_1)) && invRecv7(Seq#Index(xs, i_4_1)) == i_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv7(o_9)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> Seq#Index(xs, invRecv7(o_9)) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    b_24 := fun1(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b == fun1(xs) -- snapshots1.vpr@23.3--23.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of b == fun1(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion 5 < |xs| might not hold. (snapshots1.vpr@23.15--23.23) [185649]"}
          5 < Seq#Length(xs);
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_8_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_8_1) && i1_8_1 != i2_8_1)) {
            assert {:msg "  Precondition of function fun1 might not hold. Assertion xs[i1] != xs[i2] might not hold. (snapshots1.vpr@23.15--23.23) [185650]"}
              Seq#Index(xs, i1_8_1) != Seq#Index(xs, i2_8_1);
          }
          assume false;
        }
        assume (forall i1_9_1: int, i2_9_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9_1), Seq#Index(xs, i2_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9_1), Seq#Index(xs, i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_9_1), Seq#Index(xs, i1_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_9_1), Seq#Index(xs, i1_9_1) } { Seq#Index(xs, i1_9_1), Seq#Index(xs, i2_9_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_9_1) && i1_9_1 != i2_9_1) ==> Seq#Index(xs, i1_9_1) != Seq#Index(xs, i2_9_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@23.15--23.23) [185651]"}
            (forall i_5_1: int, i_5_2: int ::
            { neverTriggered8(i_5_1), neverTriggered8(i_5_2) }
            (((i_5_1 != i_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_5_1) != Seq#Index(xs, i_5_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access xs[i].f (snapshots1.vpr@23.15--23.23) [185652]"}
            (forall i_5_1: int ::
            { Seq#Index(xs, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Index(xs, i_5_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_5_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_5_1: int ::
            { Seq#Index(xs, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Index(xs, i_5_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) && NoPerm < FullPerm ==> qpRange8(Seq#Index(xs, i_5_1)) && invRecv8(Seq#Index(xs, i_5_1)) == i_5_1
          );
          assume (forall o_9: Ref ::
            { invRecv8(o_9) }
            Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv8(o_9)) && (NoPerm < FullPerm && qpRange8(o_9)) ==> Seq#Index(xs, invRecv8(o_9)) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion b == fun1(xs) might not hold. (snapshots1.vpr@23.10--23.23) [185653]"}
      b_24 == fun1(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == b -- snapshots1.vpr@26.3--26.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a == b might not hold. (snapshots1.vpr@26.10--26.16) [185654]"}
      a_2 == b_24;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var i1_1: int;
  var i2_1: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var b_24: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := fun2(xs) -- snapshots1.vpr@42.3--42.25
    
    // -- Check definedness of fun2(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs) (snapshots1.vpr@42.17--42.25) [185655]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := fun2(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == fun2(xs) -- snapshots1.vpr@43.3--43.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of a == fun2(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs) (snapshots1.vpr@43.15--43.23) [185656]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a == fun2(xs) might not hold. (snapshots1.vpr@43.10--43.23) [185657]"}
      a_2 == fun2(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(xs), write) -- snapshots1.vpr@45.3--45.20
    assume P#trigger(Heap, P(xs));
    assume Heap[null, P(xs)] == FrameFragment(P#condqp2(Heap, xs));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs) might fail. There might be insufficient permission to access P(xs) (snapshots1.vpr@45.3--45.20) [185660]"}
        perm <= Mask[null, P(xs)];
    }
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs))) {
        havoc newVersion;
        Heap := Heap[null, P(xs):=newVersion];
      }
    assume 5 < Seq#Length(xs);
    assume (forall i1_9: int, i2: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Index(xs, i2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9), Seq#Index(xs, i2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2), Seq#Index(xs, i1_9) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2), Seq#Index(xs, i1_9) } { Seq#Index(xs, i1_9), Seq#Index(xs, i2) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_9) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2) && i1_9 != i2) ==> Seq#Index(xs, i1_9) != Seq#Index(xs, i2)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs) might fail. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@45.3--45.20) [185661]"}
      (forall i: int, i_22: int ::
      
      (((i != i_22 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_22)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i) != Seq#Index(xs, i_22)
    );
    
    // -- Define Inverse Function
      assume (forall i: int ::
        { Seq#Index(xs, i) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i) } { Seq#Index(xs, i) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i) && NoPerm < FullPerm ==> qpRange9(Seq#Index(xs, i)) && invRecv9(Seq#Index(xs, i)) == i
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_9)) && NoPerm < FullPerm) && qpRange9(o_9) ==> Seq#Index(xs, invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i: int ::
        { Seq#Index(xs, i) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i) } { Seq#Index(xs, i) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i) ==> Seq#Index(xs, i) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_9)) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv9(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_9)) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(xs), write) -- snapshots1.vpr@46.3--46.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding P(xs) might fail. Assertion 5 < |xs| might not hold. (snapshots1.vpr@46.3--46.18) [185663]"}
      5 < Seq#Length(xs);
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) && i1_1 != i2_1)) {
        assert {:msg "  Folding P(xs) might fail. Assertion xs[i1] != xs[i2] might not hold. (snapshots1.vpr@46.3--46.18) [185664]"}
          Seq#Index(xs, i1_1) != Seq#Index(xs, i2_1);
      }
      assume false;
    }
    assume (forall i1_2_1: int, i2_2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_2_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_2_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Index(xs, i1_2_1), Seq#Index(xs, i2_2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_2_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_2_1) && i1_2_1 != i2_2_1) ==> Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Folding P(xs) might fail. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@46.3--46.18) [185666]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered10(i_1), neverTriggered10(i_1_1) }
        (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(xs) might fail. There might be insufficient permission to access xs[i].f (snapshots1.vpr@46.3--46.18) [185667]"}
        (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) ==> Mask[Seq#Index(xs, i_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) && NoPerm < FullPerm ==> qpRange10(Seq#Index(xs, i_1)) && invRecv10(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv10(o_9)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> Seq#Index(xs, invRecv10(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv10(o_9)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> Seq#Index(xs, invRecv10(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv10(o_9)) && (NoPerm < FullPerm && qpRange10(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(xs));
    assume Heap[null, P(xs)] == FrameFragment(P#condqp2(Heap, xs));
    if (!HasDirectPerm(Mask, null, P(xs))) {
      Heap := Heap[null, P#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(xs):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
      { newPMask[o_46, f_60] }
      Heap[null, P#sm(xs)][o_46, f_60] ==> newPMask[o_46, f_60]
    );
    assume (forall i_2: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) ==> newPMask[Seq#Index(xs, i_2), f_7]
    );
    Heap := Heap[null, P#sm(xs):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := fun2(xs) -- snapshots1.vpr@48.3--48.25
    
    // -- Check definedness of fun2(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs) (snapshots1.vpr@48.17--48.25) [185669]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    b_24 := fun2(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b == fun2(xs) -- snapshots1.vpr@49.3--49.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of b == fun2(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs) (snapshots1.vpr@49.15--49.23) [185670]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion b == fun2(xs) might not hold. (snapshots1.vpr@49.10--49.23) [185671]"}
      b_24 == fun2(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == b -- snapshots1.vpr@51.3--51.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a == b might not hold. (snapshots1.vpr@51.10--51.16) [185672]"}
      a_2 == b_24;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3_1(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i1_24: int;
  var i2_15: int;
  var i_10: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_2_2: int;
  var i2_2_2: int;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var newVersion: FrameType;
  var i1_5_2: int;
  var i2_5_1: int;
  var b_24: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 5 < Seq#Length(xs);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|xs|)), (i2 in [0..|xs|)) } { (i1 in [0..|xs|)), xs[i2] } { (i2 in [0..|xs|)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..|xs|)) && ((i2 in [0..|xs|)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_24) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_15) && i1_24 != i2_15)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (snapshots1.vpr@56.12--56.106) [185673]"}
            i1_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (snapshots1.vpr@56.12--56.106) [185674]"}
            i1_24 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (snapshots1.vpr@56.12--56.106) [185675]"}
            i2_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (snapshots1.vpr@56.12--56.106) [185676]"}
            i2_15 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Index(xs, i1_1), Seq#Index(xs, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) && i1_1 != i2_1) ==> Seq#Index(xs, i1_1) != Seq#Index(xs, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (snapshots1.vpr@57.12--57.60) [185677]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (snapshots1.vpr@57.12--57.60) [185678]"}
            i_10 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@57.12--57.60) [185679]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) && NoPerm < FullPerm ==> qpRange11(Seq#Index(xs, i_1)) && invRecv11(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9) ==> Seq#Index(xs, invRecv11(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv11(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(P(xs), write) -- snapshots1.vpr@59.3--59.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding P(xs) might fail. Assertion 5 < |xs| might not hold. (snapshots1.vpr@59.3--59.18) [185681]"}
      5 < Seq#Length(xs);
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_2_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_2_2) && i1_2_2 != i2_2_2)) {
        assert {:msg "  Folding P(xs) might fail. Assertion xs[i1] != xs[i2] might not hold. (snapshots1.vpr@59.3--59.18) [185682]"}
          Seq#Index(xs, i1_2_2) != Seq#Index(xs, i2_2_2);
      }
      assume false;
    }
    assume (forall i1_3_1_1: int, i2_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Index(xs, i1_3_1_1), Seq#Index(xs, i2_3_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_1) && i1_3_1_1 != i2_3_1) ==> Seq#Index(xs, i1_3_1_1) != Seq#Index(xs, i2_3_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Folding P(xs) might fail. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@59.3--59.18) [185684]"}
        (forall i_2: int, i_2_2: int ::
        { neverTriggered12(i_2), neverTriggered12(i_2_2) }
        (((i_2 != i_2_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_2) != Seq#Index(xs, i_2_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(xs) might fail. There might be insufficient permission to access xs[i].f (snapshots1.vpr@59.3--59.18) [185685]"}
        (forall i_2: int ::
        { Seq#Index(xs, i_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Index(xs, i_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) ==> Mask[Seq#Index(xs, i_2), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_2: int ::
        { Seq#Index(xs, i_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) } { Seq#Index(xs, i_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2) && NoPerm < FullPerm ==> qpRange12(Seq#Index(xs, i_2)) && invRecv12(Seq#Index(xs, i_2)) == i_2
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv12(o_9)) && (NoPerm < FullPerm && qpRange12(o_9)) ==> Seq#Index(xs, invRecv12(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv12(o_9)) && (NoPerm < FullPerm && qpRange12(o_9)) ==> Seq#Index(xs, invRecv12(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv12(o_9)) && (NoPerm < FullPerm && qpRange12(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(xs));
    assume Heap[null, P(xs)] == FrameFragment(P#condqp2(Heap, xs));
    if (!HasDirectPerm(Mask, null, P(xs))) {
      Heap := Heap[null, P#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(xs):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
      { newPMask[o_14, f_3] }
      Heap[null, P#sm(xs)][o_14, f_3] ==> newPMask[o_14, f_3]
    );
    assume (forall i_3_2: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) ==> newPMask[Seq#Index(xs, i_3_2), f_7]
    );
    Heap := Heap[null, P#sm(xs):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := fun2(xs) -- snapshots1.vpr@61.3--61.25
    
    // -- Check definedness of fun2(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs) (snapshots1.vpr@61.17--61.25) [185687]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := fun2(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == fun2(xs) -- snapshots1.vpr@62.3--62.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of a == fun2(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs) (snapshots1.vpr@62.15--62.23) [185688]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a == fun2(xs) might not hold. (snapshots1.vpr@62.10--62.23) [185689]"}
      a_2 == fun2(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(xs), write) -- snapshots1.vpr@64.3--64.20
    assume P#trigger(Heap, P(xs));
    assume Heap[null, P(xs)] == FrameFragment(P#condqp2(Heap, xs));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs) might fail. There might be insufficient permission to access P(xs) (snapshots1.vpr@64.3--64.20) [185692]"}
        perm <= Mask[null, P(xs)];
    }
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs))) {
        havoc newVersion;
        Heap := Heap[null, P(xs):=newVersion];
      }
    assume 5 < Seq#Length(xs);
    assume (forall i1_4: int, i2_4: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_4), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_4) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_4), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_4) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_4), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_4) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_4), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_4) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_4), Seq#Index(xs, i2_4) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_4), Seq#Index(xs, i2_4) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_4), Seq#Index(xs, i1_4) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_4), Seq#Index(xs, i1_4) } { Seq#Index(xs, i1_4), Seq#Index(xs, i2_4) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_4) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_4) && i1_4 != i2_4) ==> Seq#Index(xs, i1_4) != Seq#Index(xs, i2_4)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs) might fail. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@64.3--64.20) [185693]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_4_1) != Seq#Index(xs, i_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { Seq#Index(xs, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Index(xs, i_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) && NoPerm < FullPerm ==> qpRange13(Seq#Index(xs, i_4_1)) && invRecv13(Seq#Index(xs, i_4_1)) == i_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv13(o_9)) && NoPerm < FullPerm) && qpRange13(o_9) ==> Seq#Index(xs, invRecv13(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { Seq#Index(xs, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) } { Seq#Index(xs, i_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) ==> Seq#Index(xs, i_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv13(o_9)) && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv13(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv13(o_9)) && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(xs), write) -- snapshots1.vpr@65.3--65.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding P(xs) might fail. Assertion 5 < |xs| might not hold. (snapshots1.vpr@65.3--65.18) [185695]"}
      5 < Seq#Length(xs);
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_5_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_5_1) && i1_5_2 != i2_5_1)) {
        assert {:msg "  Folding P(xs) might fail. Assertion xs[i1] != xs[i2] might not hold. (snapshots1.vpr@65.3--65.18) [185696]"}
          Seq#Index(xs, i1_5_2) != Seq#Index(xs, i2_5_1);
      }
      assume false;
    }
    assume (forall i1_6_1: int, i2_6_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_6_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_6_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_6_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_6_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_6_1), Seq#Index(xs, i2_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_6_1), Seq#Index(xs, i2_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_6_1), Seq#Index(xs, i1_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_6_1), Seq#Index(xs, i1_6_1) } { Seq#Index(xs, i1_6_1), Seq#Index(xs, i2_6_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_6_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_6_1) && i1_6_1 != i2_6_1) ==> Seq#Index(xs, i1_6_1) != Seq#Index(xs, i2_6_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Folding P(xs) might fail. Quantified resource xs[i].f might not be injective. (snapshots1.vpr@65.3--65.18) [185698]"}
        (forall i_5_1: int, i_5_2: int ::
        { neverTriggered14(i_5_1), neverTriggered14(i_5_2) }
        (((i_5_1 != i_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_5_1) != Seq#Index(xs, i_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(xs) might fail. There might be insufficient permission to access xs[i].f (snapshots1.vpr@65.3--65.18) [185699]"}
        (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Index(xs, i_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) ==> Mask[Seq#Index(xs, i_5_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Index(xs, i_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) && NoPerm < FullPerm ==> qpRange14(Seq#Index(xs, i_5_1)) && invRecv14(Seq#Index(xs, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv14(o_9)) && (NoPerm < FullPerm && qpRange14(o_9)) ==> Seq#Index(xs, invRecv14(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv14(o_9)) && (NoPerm < FullPerm && qpRange14(o_9)) ==> Seq#Index(xs, invRecv14(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv14(o_9)) && (NoPerm < FullPerm && qpRange14(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(xs));
    assume Heap[null, P(xs)] == FrameFragment(P#condqp2(Heap, xs));
    if (!HasDirectPerm(Mask, null, P(xs))) {
      Heap := Heap[null, P#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(xs):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
      { newPMask[o_3, f_24] }
      Heap[null, P#sm(xs)][o_3, f_24] ==> newPMask[o_3, f_24]
    );
    assume (forall i_6_2: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_2) ==> newPMask[Seq#Index(xs, i_6_2), f_7]
    );
    Heap := Heap[null, P#sm(xs):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := fun2(xs) -- snapshots1.vpr@67.3--67.25
    
    // -- Check definedness of fun2(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs) (snapshots1.vpr@67.17--67.25) [185701]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    b_24 := fun2(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b == fun2(xs) -- snapshots1.vpr@68.3--68.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of b == fun2(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs) (snapshots1.vpr@68.15--68.23) [185702]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion b == fun2(xs) might not hold. (snapshots1.vpr@68.10--68.23) [185703]"}
      b_24 == fun2(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == b -- snapshots1.vpr@70.3--70.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a == b might not hold. (snapshots1.vpr@70.10--70.16) [185704]"}
      a_2 == b_24;
    assume state(Heap, Mask);
}