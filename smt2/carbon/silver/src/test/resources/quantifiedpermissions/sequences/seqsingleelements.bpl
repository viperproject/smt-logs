// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:10:23
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_30: Ref, f_35: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_30, f_35] }
  Heap[o_30, $allocated] ==> Heap[Heap[o_30, f_35], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_31: Ref, f_36: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_31, f_36] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_31, f_36) ==> Heap[o_31, f_36] == ExhaleHeap[o_31, f_36]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_11), ExhaleHeap[null, PredicateMaskField(pm_f_11)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsPredicateField(pm_f_11) ==> Heap[null, PredicateMaskField(pm_f_11)] == ExhaleHeap[null, PredicateMaskField(pm_f_11)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_11) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsPredicateField(pm_f_11) ==> (forall <A, B> o2_11: Ref, f_36: (Field A B) ::
    { ExhaleHeap[o2_11, f_36] }
    Heap[null, PredicateMaskField(pm_f_11)][o2_11, f_36] ==> Heap[o2_11, f_36] == ExhaleHeap[o2_11, f_36]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_11), ExhaleHeap[null, WandMaskField(pm_f_11)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsWandField(pm_f_11) ==> Heap[null, WandMaskField(pm_f_11)] == ExhaleHeap[null, WandMaskField(pm_f_11)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_11) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsWandField(pm_f_11) ==> (forall <A, B> o2_11: Ref, f_36: (Field A B) ::
    { ExhaleHeap[o2_11, f_36] }
    Heap[null, WandMaskField(pm_f_11)][o2_11, f_36] ==> Heap[o2_11, f_36] == ExhaleHeap[o2_11, f_36]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_31: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_31, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_31, $allocated] ==> ExhaleHeap[o_31, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_30: Ref, f_37: (Field A B), v: B ::
  { Heap[o_30, f_37:=v] }
  succHeap(Heap, Heap[o_30, f_37:=v])
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

function  neverTriggered1(j_1: int): bool;
function  neverTriggered2(j_3_1: int): bool;
function  neverTriggered3(j_4_1: int): bool;
function  neverTriggered4(j_1: int): bool;
function  neverTriggered5(j_3_1: int): bool;
function  neverTriggered6(j_4_1: int): bool;
function  neverTriggered7(j_1: int): bool;
function  neverTriggered8(j_3_1: int): bool;
function  neverTriggered9(j_4_1: int): bool;
function  neverTriggered10(l_1: int): bool;
function  neverTriggered11(o_1_1: int): bool;
function  neverTriggered12(p_1_1: int): bool;
function  neverTriggered13(q_1_1: int): bool;
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

const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(S: (Seq Ref), a_2: int) returns ()
  modifies Heap, Mask;
{
  var j1_22: int;
  var j2_4: int;
  var j: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_6: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume a_2 < Seq#Length(S);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_22) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_4) && j1_22 != j2_4)) {
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might be negative. (seqsingleelements.vpr@8.12--8.102) [65244]"}
            j1_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might exceed sequence length. (seqsingleelements.vpr@8.12--8.102) [65245]"}
            j1_22 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might be negative. (seqsingleelements.vpr@8.12--8.102) [65246]"}
            j2_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might exceed sequence length. (seqsingleelements.vpr@8.12--8.102) [65247]"}
            j2_4 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Index(S, j1_1), Seq#Index(S, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) && j1_1 != j2_1) ==> Seq#Index(S, j1_1) != Seq#Index(S, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seqsingleelements.vpr@9.12--9.68) [65248]"}
            j >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seqsingleelements.vpr@9.12--9.68) [65249]"}
            j < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@9.12--9.68) [65250]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_1) != Seq#Index(S, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && NoPerm < FullPerm ==> qpRange1(Seq#Index(S, j_1)) && invRecv1(Seq#Index(S, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(S, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) ==> Seq#Index(S, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv1(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_6)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seqsingleelements.vpr@10.11--10.67) [65251]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seqsingleelements.vpr@10.11--10.67) [65252]"}
            j_6 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@10.11--10.67) [65253]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_3_1) != Seq#Index(S, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(S, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(S, j_3_1)) && invRecv2(Seq#Index(S, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(S, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(S, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) ==> Seq#Index(S, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv2(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of S[a].value == 2
      assert {:msg "  Contract might not be well-formed. Index S[a] into S might be negative. (seqsingleelements.vpr@11.11--11.26) [65254]"}
        a_2 >= 0;
      assert {:msg "  Contract might not be well-formed. Index S[a] into S might exceed sequence length. (seqsingleelements.vpr@11.11--11.26) [65255]"}
        a_2 < Seq#Length(S);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[a].value (seqsingleelements.vpr@11.11--11.26) [65256]"}
        HasDirectPerm(PostMask, Seq#Index(S, a_2), value);
    assume PostHeap[Seq#Index(S, a_2), value] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: S[a].value := 2 -- seqsingleelements.vpr@13.3--13.18
    
    // -- Check definedness of S[a]
      assert {:msg "  Assignment might fail. Index S[a] into S might be negative. (seqsingleelements.vpr@13.3--13.18) [65257]"}
        a_2 >= 0;
      assert {:msg "  Assignment might fail. Index S[a] into S might exceed sequence length. (seqsingleelements.vpr@13.3--13.18) [65258]"}
        a_2 < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[a].value (seqsingleelements.vpr@13.3--13.18) [65259]"}
      FullPerm == Mask[Seq#Index(S, a_2), value];
    Heap := Heap[Seq#Index(S, a_2), value:=2];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@10.11--10.67) [65260]"}
        (forall j_4_1: int, j_4_2: int ::
        { neverTriggered3(j_4_1), neverTriggered3(j_4_2) }
        (((j_4_1 != j_4_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_4_1) != Seq#Index(S, j_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access S[j].value (seqsingleelements.vpr@10.11--10.67) [65261]"}
        (forall j_4_1: int ::
        { Seq#Index(S, j_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Index(S, j_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) ==> Mask[Seq#Index(S, j_4_1), value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_4_1: int ::
        { Seq#Index(S, j_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Index(S, j_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(S, j_4_1)) && invRecv3(Seq#Index(S, j_4_1)) == j_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(S, invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(S, invRecv3(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test01 might not hold. Assertion S[a].value == 2 might not hold. (seqsingleelements.vpr@11.11--11.26) [65262]"}
      Heap[Seq#Index(S, a_2), value] == 2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(S: (Seq Ref), a_2: int, b_24: int, c: int) returns ()
  modifies Heap, Mask;
{
  var j1_25: int;
  var j2_8: int;
  var j_7: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_3: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume a_2 < b_24;
    assume b_24 < c;
    assume c < Seq#Length(S);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_25) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_8) && j1_25 != j2_8)) {
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might be negative. (seqsingleelements.vpr@18.12--18.102) [65263]"}
            j1_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might exceed sequence length. (seqsingleelements.vpr@18.12--18.102) [65264]"}
            j1_25 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might be negative. (seqsingleelements.vpr@18.12--18.102) [65265]"}
            j2_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might exceed sequence length. (seqsingleelements.vpr@18.12--18.102) [65266]"}
            j2_8 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Index(S, j1_1), Seq#Index(S, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) && j1_1 != j2_1) ==> Seq#Index(S, j1_1) != Seq#Index(S, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_7)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seqsingleelements.vpr@19.12--19.68) [65267]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seqsingleelements.vpr@19.12--19.68) [65268]"}
            j_7 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@19.12--19.68) [65269]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_1) != Seq#Index(S, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(S, j_1)) && invRecv4(Seq#Index(S, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(S, invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) ==> Seq#Index(S, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv4(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seqsingleelements.vpr@20.11--20.67) [65270]"}
            j_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seqsingleelements.vpr@20.11--20.67) [65271]"}
            j_3 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@20.11--20.67) [65272]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_3_1) != Seq#Index(S, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(S, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) && NoPerm < FullPerm ==> qpRange5(Seq#Index(S, j_3_1)) && invRecv5(Seq#Index(S, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(S, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(S, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) ==> Seq#Index(S, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv5(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of S[a].value == 5
      assert {:msg "  Contract might not be well-formed. Index S[a] into S might be negative. (seqsingleelements.vpr@21.11--21.26) [65273]"}
        a_2 >= 0;
      assert {:msg "  Contract might not be well-formed. Index S[a] into S might exceed sequence length. (seqsingleelements.vpr@21.11--21.26) [65274]"}
        a_2 < Seq#Length(S);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[a].value (seqsingleelements.vpr@21.11--21.26) [65275]"}
        HasDirectPerm(PostMask, Seq#Index(S, a_2), value);
    assume PostHeap[Seq#Index(S, a_2), value] == 5;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of S[b].value == 10
      assert {:msg "  Contract might not be well-formed. Index S[b] into S might be negative. (seqsingleelements.vpr@22.11--22.27) [65276]"}
        b_24 >= 0;
      assert {:msg "  Contract might not be well-formed. Index S[b] into S might exceed sequence length. (seqsingleelements.vpr@22.11--22.27) [65277]"}
        b_24 < Seq#Length(S);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[b].value (seqsingleelements.vpr@22.11--22.27) [65278]"}
        HasDirectPerm(PostMask, Seq#Index(S, b_24), value);
    assume PostHeap[Seq#Index(S, b_24), value] == 10;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of S[c].value == 1
      assert {:msg "  Contract might not be well-formed. Index S[c] into S might be negative. (seqsingleelements.vpr@23.11--23.26) [65279]"}
        c >= 0;
      assert {:msg "  Contract might not be well-formed. Index S[c] into S might exceed sequence length. (seqsingleelements.vpr@23.11--23.26) [65280]"}
        c < Seq#Length(S);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[c].value (seqsingleelements.vpr@23.11--23.26) [65281]"}
        HasDirectPerm(PostMask, Seq#Index(S, c), value);
    assume PostHeap[Seq#Index(S, c), value] == 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: S[a].value := 5 -- seqsingleelements.vpr@25.3--25.18
    
    // -- Check definedness of S[a]
      assert {:msg "  Assignment might fail. Index S[a] into S might be negative. (seqsingleelements.vpr@25.3--25.18) [65282]"}
        a_2 >= 0;
      assert {:msg "  Assignment might fail. Index S[a] into S might exceed sequence length. (seqsingleelements.vpr@25.3--25.18) [65283]"}
        a_2 < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[a].value (seqsingleelements.vpr@25.3--25.18) [65284]"}
      FullPerm == Mask[Seq#Index(S, a_2), value];
    Heap := Heap[Seq#Index(S, a_2), value:=5];
    assume state(Heap, Mask);
  
  // -- Translating statement: S[b].value := 10 -- seqsingleelements.vpr@26.3--26.19
    
    // -- Check definedness of S[b]
      assert {:msg "  Assignment might fail. Index S[b] into S might be negative. (seqsingleelements.vpr@26.3--26.19) [65285]"}
        b_24 >= 0;
      assert {:msg "  Assignment might fail. Index S[b] into S might exceed sequence length. (seqsingleelements.vpr@26.3--26.19) [65286]"}
        b_24 < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[b].value (seqsingleelements.vpr@26.3--26.19) [65287]"}
      FullPerm == Mask[Seq#Index(S, b_24), value];
    Heap := Heap[Seq#Index(S, b_24), value:=10];
    assume state(Heap, Mask);
  
  // -- Translating statement: S[c].value := 1 -- seqsingleelements.vpr@27.3--27.18
    
    // -- Check definedness of S[c]
      assert {:msg "  Assignment might fail. Index S[c] into S might be negative. (seqsingleelements.vpr@27.3--27.18) [65288]"}
        c >= 0;
      assert {:msg "  Assignment might fail. Index S[c] into S might exceed sequence length. (seqsingleelements.vpr@27.3--27.18) [65289]"}
        c < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[c].value (seqsingleelements.vpr@27.3--27.18) [65290]"}
      FullPerm == Mask[Seq#Index(S, c), value];
    Heap := Heap[Seq#Index(S, c), value:=1];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@20.11--20.67) [65291]"}
        (forall j_4_1: int, j_4_2: int ::
        { neverTriggered6(j_4_1), neverTriggered6(j_4_2) }
        (((j_4_1 != j_4_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_4_1) != Seq#Index(S, j_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access S[j].value (seqsingleelements.vpr@20.11--20.67) [65292]"}
        (forall j_4_1: int ::
        { Seq#Index(S, j_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Index(S, j_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) ==> Mask[Seq#Index(S, j_4_1), value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_4_1: int ::
        { Seq#Index(S, j_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Index(S, j_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) && NoPerm < FullPerm ==> qpRange6(Seq#Index(S, j_4_1)) && invRecv6(Seq#Index(S, j_4_1)) == j_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(S, invRecv6(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(S, invRecv6(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test02 might not hold. Assertion S[a].value == 5 might not hold. (seqsingleelements.vpr@21.11--21.26) [65293]"}
      Heap[Seq#Index(S, a_2), value] == 5;
    assert {:msg "  Postcondition of test02 might not hold. Assertion S[b].value == 10 might not hold. (seqsingleelements.vpr@22.11--22.27) [65294]"}
      Heap[Seq#Index(S, b_24), value] == 10;
    assert {:msg "  Postcondition of test02 might not hold. Assertion S[c].value == 1 might not hold. (seqsingleelements.vpr@23.11--23.26) [65295]"}
      Heap[Seq#Index(S, c), value] == 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(S: (Seq Ref), k: int, a_2: int, b_24: int) returns ()
  modifies Heap, Mask;
{
  var j1_26: int;
  var j2_9: int;
  var j_4: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_11: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var l_6: int;
  var ExhaleHeap: HeapType;
  var o_54: int;
  var p_12: int;
  var q_16: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= k;
    assume k < Seq#Length(S);
    assume 0 <= a_2;
    assume a_2 < b_24;
    assume b_24 < Seq#Length(S);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_26) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_9) && j1_26 != j2_9)) {
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might be negative. (seqsingleelements.vpr@32.12--32.102) [65296]"}
            j1_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might exceed sequence length. (seqsingleelements.vpr@32.12--32.102) [65297]"}
            j1_26 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might be negative. (seqsingleelements.vpr@32.12--32.102) [65298]"}
            j2_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might exceed sequence length. (seqsingleelements.vpr@32.12--32.102) [65299]"}
            j2_9 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Index(S, j1_1), Seq#Index(S, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) && j1_1 != j2_1) ==> Seq#Index(S, j1_1) != Seq#Index(S, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seqsingleelements.vpr@33.12--33.68) [65300]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seqsingleelements.vpr@33.12--33.68) [65301]"}
            j_4 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@33.12--33.68) [65302]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_1) != Seq#Index(S, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && NoPerm < FullPerm ==> qpRange7(Seq#Index(S, j_1)) && invRecv7(Seq#Index(S, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> Seq#Index(S, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) ==> Seq#Index(S, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv7(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_11)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seqsingleelements.vpr@34.11--34.67) [65303]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seqsingleelements.vpr@34.11--34.67) [65304]"}
            j_11 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@34.11--34.67) [65305]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_3_1) != Seq#Index(S, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(S, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) && NoPerm < FullPerm ==> qpRange8(Seq#Index(S, j_3_1)) && invRecv8(Seq#Index(S, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(S, invRecv8(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(S, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) ==> Seq#Index(S, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv8(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of S[a].value == 5
      assert {:msg "  Contract might not be well-formed. Index S[a] into S might be negative. (seqsingleelements.vpr@35.11--35.26) [65306]"}
        a_2 >= 0;
      assert {:msg "  Contract might not be well-formed. Index S[a] into S might exceed sequence length. (seqsingleelements.vpr@35.11--35.26) [65307]"}
        a_2 < Seq#Length(S);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[a].value (seqsingleelements.vpr@35.11--35.26) [65308]"}
        HasDirectPerm(PostMask, Seq#Index(S, a_2), value);
    assume PostHeap[Seq#Index(S, a_2), value] == 5;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of S[b].value == 6
      assert {:msg "  Contract might not be well-formed. Index S[b] into S might be negative. (seqsingleelements.vpr@36.11--36.26) [65309]"}
        b_24 >= 0;
      assert {:msg "  Contract might not be well-formed. Index S[b] into S might exceed sequence length. (seqsingleelements.vpr@36.11--36.26) [65310]"}
        b_24 < Seq#Length(S);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[b].value (seqsingleelements.vpr@36.11--36.26) [65311]"}
        HasDirectPerm(PostMask, Seq#Index(S, b_24), value);
    assume PostHeap[Seq#Index(S, b_24), value] == 6;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of S[k].value == 0
      assert {:msg "  Contract might not be well-formed. Index S[k] into S might be negative. (seqsingleelements.vpr@39.11--39.26) [65312]"}
        k >= 0;
      assert {:msg "  Contract might not be well-formed. Index S[k] into S might exceed sequence length. (seqsingleelements.vpr@39.11--39.26) [65313]"}
        k < Seq#Length(S);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[k].value (seqsingleelements.vpr@39.11--39.26) [65314]"}
        HasDirectPerm(PostMask, Seq#Index(S, k), value);
    assume PostHeap[Seq#Index(S, k), value] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: exhale (forall l: Int ::
  //     { (l in [0..k)) }
  //     { S[l] }
  //     (l in [0..k)) ==> acc(S[l].value, 1 / 2)) -- seqsingleelements.vpr@41.3--41.63
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall l: Int :: { (l in [0..k)) } { S[l] } (l in [0..k)) ==> acc(S[l].value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, k), l_6)) {
          assert {:msg "  Exhale might fail. Index S[l] into S might be negative. (seqsingleelements.vpr@41.10--41.63) [65315]"}
            l_6 >= 0;
          assert {:msg "  Exhale might fail. Index S[l] into S might exceed sequence length. (seqsingleelements.vpr@41.10--41.63) [65316]"}
            l_6 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (seqsingleelements.vpr@41.10--41.63) [65317]"}
        (forall l_1: int ::
        { Seq#Index(S, l_1) } { Seq#ContainsTrigger(Seq#Range(0, k), l_1) } { Seq#Contains(Seq#Range(0, k), l_1) } { Seq#Index(S, l_1) }
        Seq#Contains(Seq#Range(0, k), l_1) && dummyFunction(Heap[Seq#Index(S, l_1), value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver S[l] is injective
      assert {:msg "  Exhale might fail. Quantified resource S[l].value might not be injective. (seqsingleelements.vpr@41.10--41.63) [65318]"}
        (forall l_1: int, l_1_2: int ::
        { neverTriggered10(l_1), neverTriggered10(l_1_2) }
        (((l_1 != l_1_2 && Seq#Contains(Seq#Range(0, k), l_1)) && Seq#Contains(Seq#Range(0, k), l_1_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(S, l_1) != Seq#Index(S, l_1_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access S[l].value (seqsingleelements.vpr@41.10--41.63) [65319]"}
        (forall l_1: int ::
        { Seq#Index(S, l_1) } { Seq#ContainsTrigger(Seq#Range(0, k), l_1) } { Seq#Contains(Seq#Range(0, k), l_1) } { Seq#Index(S, l_1) }
        Seq#Contains(Seq#Range(0, k), l_1) ==> Mask[Seq#Index(S, l_1), value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver S[l]
      assume (forall l_1: int ::
        { Seq#Index(S, l_1) } { Seq#ContainsTrigger(Seq#Range(0, k), l_1) } { Seq#Contains(Seq#Range(0, k), l_1) } { Seq#Index(S, l_1) }
        Seq#Contains(Seq#Range(0, k), l_1) && NoPerm < 1 / 2 ==> qpRange10(Seq#Index(S, l_1)) && invRecv10(Seq#Index(S, l_1)) == l_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        Seq#Contains(Seq#Range(0, k), invRecv10(o_4)) && (NoPerm < 1 / 2 && qpRange10(o_4)) ==> Seq#Index(S, invRecv10(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(0, k), invRecv10(o_4)) && (NoPerm < 1 / 2 && qpRange10(o_4)) ==> Seq#Index(S, invRecv10(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, k), invRecv10(o_4)) && (NoPerm < 1 / 2 && qpRange10(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall o: Int ::
  //     { (o in [0..k)) }
  //     { S[o] }
  //     (o in [0..k)) ==> acc(S[o].value, 1 / 2)) -- seqsingleelements.vpr@42.3--42.62
    
    // -- Check definedness of (forall o: Int :: { (o in [0..k)) } { S[o] } (o in [0..k)) ==> acc(S[o].value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, k), o_54)) {
          assert {:msg "  Inhale might fail. Index S[o] into S might be negative. (seqsingleelements.vpr@42.10--42.62) [65320]"}
            o_54 >= 0;
          assert {:msg "  Inhale might fail. Index S[o] into S might exceed sequence length. (seqsingleelements.vpr@42.10--42.62) [65321]"}
            o_54 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource S[o].value might not be injective. (seqsingleelements.vpr@42.10--42.62) [65322]"}
      (forall o_1_1: int, o_1_2: int ::
      
      (((o_1_1 != o_1_2 && Seq#Contains(Seq#Range(0, k), o_1_1)) && Seq#Contains(Seq#Range(0, k), o_1_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(S, o_1_1) != Seq#Index(S, o_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall o_1_1: int ::
        { Seq#Index(S, o_1_1) } { Seq#ContainsTrigger(Seq#Range(0, k), o_1_1) } { Seq#Contains(Seq#Range(0, k), o_1_1) } { Seq#Index(S, o_1_1) }
        Seq#Contains(Seq#Range(0, k), o_1_1) && NoPerm < 1 / 2 ==> qpRange11(Seq#Index(S, o_1_1)) && invRecv11(Seq#Index(S, o_1_1)) == o_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (Seq#Contains(Seq#Range(0, k), invRecv11(o_4)) && NoPerm < 1 / 2) && qpRange11(o_4) ==> Seq#Index(S, invRecv11(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (seqsingleelements.vpr@42.10--42.62) [65323]"}
      (forall o_1_1: int ::
      { Seq#Index(S, o_1_1) } { Seq#ContainsTrigger(Seq#Range(0, k), o_1_1) } { Seq#Contains(Seq#Range(0, k), o_1_1) } { Seq#Index(S, o_1_1) }
      Seq#Contains(Seq#Range(0, k), o_1_1) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall o_1_1: int ::
        { Seq#Index(S, o_1_1) } { Seq#ContainsTrigger(Seq#Range(0, k), o_1_1) } { Seq#Contains(Seq#Range(0, k), o_1_1) } { Seq#Index(S, o_1_1) }
        Seq#Contains(Seq#Range(0, k), o_1_1) && 1 / 2 > NoPerm ==> Seq#Index(S, o_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, k), invRecv11(o_4)) && NoPerm < 1 / 2) && qpRange11(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(S, invRecv11(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, k), invRecv11(o_4)) && NoPerm < 1 / 2) && qpRange11(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall p: Int ::
  //     { (p in [k..|S|)) }
  //     { S[p] }
  //     (p in [k..|S|)) ==> acc(S[p].value, 1 / 2)) -- seqsingleelements.vpr@43.3--43.64
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall p: Int :: { (p in [k..|S|)) } { S[p] } (p in [k..|S|)) ==> acc(S[p].value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(k, Seq#Length(S)), p_12)) {
          assert {:msg "  Exhale might fail. Index S[p] into S might be negative. (seqsingleelements.vpr@43.10--43.64) [65324]"}
            p_12 >= 0;
          assert {:msg "  Exhale might fail. Index S[p] into S might exceed sequence length. (seqsingleelements.vpr@43.10--43.64) [65325]"}
            p_12 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (seqsingleelements.vpr@43.10--43.64) [65326]"}
        (forall p_1_1: int ::
        { Seq#Index(S, p_1_1) } { Seq#ContainsTrigger(Seq#Range(k, Seq#Length(S)), p_1_1) } { Seq#Contains(Seq#Range(k, Seq#Length(S)), p_1_1) } { Seq#Index(S, p_1_1) }
        Seq#Contains(Seq#Range(k, Seq#Length(S)), p_1_1) && dummyFunction(Heap[Seq#Index(S, p_1_1), value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver S[p] is injective
      assert {:msg "  Exhale might fail. Quantified resource S[p].value might not be injective. (seqsingleelements.vpr@43.10--43.64) [65327]"}
        (forall p_1_1: int, p_1_2: int ::
        { neverTriggered12(p_1_1), neverTriggered12(p_1_2) }
        (((p_1_1 != p_1_2 && Seq#Contains(Seq#Range(k, Seq#Length(S)), p_1_1)) && Seq#Contains(Seq#Range(k, Seq#Length(S)), p_1_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(S, p_1_1) != Seq#Index(S, p_1_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access S[p].value (seqsingleelements.vpr@43.10--43.64) [65328]"}
        (forall p_1_1: int ::
        { Seq#Index(S, p_1_1) } { Seq#ContainsTrigger(Seq#Range(k, Seq#Length(S)), p_1_1) } { Seq#Contains(Seq#Range(k, Seq#Length(S)), p_1_1) } { Seq#Index(S, p_1_1) }
        Seq#Contains(Seq#Range(k, Seq#Length(S)), p_1_1) ==> Mask[Seq#Index(S, p_1_1), value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver S[p]
      assume (forall p_1_1: int ::
        { Seq#Index(S, p_1_1) } { Seq#ContainsTrigger(Seq#Range(k, Seq#Length(S)), p_1_1) } { Seq#Contains(Seq#Range(k, Seq#Length(S)), p_1_1) } { Seq#Index(S, p_1_1) }
        Seq#Contains(Seq#Range(k, Seq#Length(S)), p_1_1) && NoPerm < 1 / 2 ==> qpRange12(Seq#Index(S, p_1_1)) && invRecv12(Seq#Index(S, p_1_1)) == p_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        Seq#Contains(Seq#Range(k, Seq#Length(S)), invRecv12(o_4)) && (NoPerm < 1 / 2 && qpRange12(o_4)) ==> Seq#Index(S, invRecv12(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(k, Seq#Length(S)), invRecv12(o_4)) && (NoPerm < 1 / 2 && qpRange12(o_4)) ==> Seq#Index(S, invRecv12(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - 1 / 2) && (!(Seq#Contains(Seq#Range(k, Seq#Length(S)), invRecv12(o_4)) && (NoPerm < 1 / 2 && qpRange12(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall q: Int ::
  //     { (q in [k..|S|)) }
  //     { S[q] }
  //     (q in [k..|S|)) ==> acc(S[q].value, 1 / 2)) -- seqsingleelements.vpr@44.3--44.64
    
    // -- Check definedness of (forall q: Int :: { (q in [k..|S|)) } { S[q] } (q in [k..|S|)) ==> acc(S[q].value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(k, Seq#Length(S)), q_16)) {
          assert {:msg "  Inhale might fail. Index S[q] into S might be negative. (seqsingleelements.vpr@44.10--44.64) [65329]"}
            q_16 >= 0;
          assert {:msg "  Inhale might fail. Index S[q] into S might exceed sequence length. (seqsingleelements.vpr@44.10--44.64) [65330]"}
            q_16 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource S[q].value might not be injective. (seqsingleelements.vpr@44.10--44.64) [65331]"}
      (forall q_1_1: int, q_1_2: int ::
      
      (((q_1_1 != q_1_2 && Seq#Contains(Seq#Range(k, Seq#Length(S)), q_1_1)) && Seq#Contains(Seq#Range(k, Seq#Length(S)), q_1_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(S, q_1_1) != Seq#Index(S, q_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall q_1_1: int ::
        { Seq#Index(S, q_1_1) } { Seq#ContainsTrigger(Seq#Range(k, Seq#Length(S)), q_1_1) } { Seq#Contains(Seq#Range(k, Seq#Length(S)), q_1_1) } { Seq#Index(S, q_1_1) }
        Seq#Contains(Seq#Range(k, Seq#Length(S)), q_1_1) && NoPerm < 1 / 2 ==> qpRange13(Seq#Index(S, q_1_1)) && invRecv13(Seq#Index(S, q_1_1)) == q_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Seq#Contains(Seq#Range(k, Seq#Length(S)), invRecv13(o_4)) && NoPerm < 1 / 2) && qpRange13(o_4) ==> Seq#Index(S, invRecv13(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (seqsingleelements.vpr@44.10--44.64) [65332]"}
      (forall q_1_1: int ::
      { Seq#Index(S, q_1_1) } { Seq#ContainsTrigger(Seq#Range(k, Seq#Length(S)), q_1_1) } { Seq#Contains(Seq#Range(k, Seq#Length(S)), q_1_1) } { Seq#Index(S, q_1_1) }
      Seq#Contains(Seq#Range(k, Seq#Length(S)), q_1_1) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall q_1_1: int ::
        { Seq#Index(S, q_1_1) } { Seq#ContainsTrigger(Seq#Range(k, Seq#Length(S)), q_1_1) } { Seq#Contains(Seq#Range(k, Seq#Length(S)), q_1_1) } { Seq#Index(S, q_1_1) }
        Seq#Contains(Seq#Range(k, Seq#Length(S)), q_1_1) && 1 / 2 > NoPerm ==> Seq#Index(S, q_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(k, Seq#Length(S)), invRecv13(o_4)) && NoPerm < 1 / 2) && qpRange13(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(S, invRecv13(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + 1 / 2) && (!((Seq#Contains(Seq#Range(k, Seq#Length(S)), invRecv13(o_4)) && NoPerm < 1 / 2) && qpRange13(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: S[k].value := 0 -- seqsingleelements.vpr@46.3--46.18
    
    // -- Check definedness of S[k]
      assert {:msg "  Assignment might fail. Index S[k] into S might be negative. (seqsingleelements.vpr@46.3--46.18) [65333]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index S[k] into S might exceed sequence length. (seqsingleelements.vpr@46.3--46.18) [65334]"}
        k < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[k].value (seqsingleelements.vpr@46.3--46.18) [65335]"}
      FullPerm == Mask[Seq#Index(S, k), value];
    Heap := Heap[Seq#Index(S, k), value:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: S[a].value := 5 -- seqsingleelements.vpr@47.3--47.18
    
    // -- Check definedness of S[a]
      assert {:msg "  Assignment might fail. Index S[a] into S might be negative. (seqsingleelements.vpr@47.3--47.18) [65336]"}
        a_2 >= 0;
      assert {:msg "  Assignment might fail. Index S[a] into S might exceed sequence length. (seqsingleelements.vpr@47.3--47.18) [65337]"}
        a_2 < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[a].value (seqsingleelements.vpr@47.3--47.18) [65338]"}
      FullPerm == Mask[Seq#Index(S, a_2), value];
    Heap := Heap[Seq#Index(S, a_2), value:=5];
    assume state(Heap, Mask);
  
  // -- Translating statement: S[b].value := 6 -- seqsingleelements.vpr@48.3--48.18
    
    // -- Check definedness of S[b]
      assert {:msg "  Assignment might fail. Index S[b] into S might be negative. (seqsingleelements.vpr@48.3--48.18) [65339]"}
        b_24 >= 0;
      assert {:msg "  Assignment might fail. Index S[b] into S might exceed sequence length. (seqsingleelements.vpr@48.3--48.18) [65340]"}
        b_24 < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[b].value (seqsingleelements.vpr@48.3--48.18) [65341]"}
      FullPerm == Mask[Seq#Index(S, b_24), value];
    Heap := Heap[Seq#Index(S, b_24), value:=6];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[j].value might not be injective. (seqsingleelements.vpr@34.11--34.67) [65342]"}
        (forall j_4_1: int, j_4_2: int ::
        { neverTriggered9(j_4_1), neverTriggered9(j_4_2) }
        (((j_4_1 != j_4_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_4_1) != Seq#Index(S, j_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test03 might not hold. There might be insufficient permission to access S[j].value (seqsingleelements.vpr@34.11--34.67) [65343]"}
        (forall j_4_1: int ::
        { Seq#Index(S, j_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Index(S, j_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) ==> Mask[Seq#Index(S, j_4_1), value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_4_1: int ::
        { Seq#Index(S, j_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) } { Seq#Index(S, j_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4_1) && NoPerm < FullPerm ==> qpRange9(Seq#Index(S, j_4_1)) && invRecv9(Seq#Index(S, j_4_1)) == j_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(S, invRecv9(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(S, invRecv9(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test03 might not hold. Assertion S[a].value == 5 might not hold. (seqsingleelements.vpr@35.11--35.26) [65344]"}
      Heap[Seq#Index(S, a_2), value] == 5;
    assert {:msg "  Postcondition of test03 might not hold. Assertion S[b].value == 6 might not hold. (seqsingleelements.vpr@36.11--36.26) [65345]"}
      Heap[Seq#Index(S, b_24), value] == 6;
    assert {:msg "  Postcondition of test03 might not hold. Assertion S[k].value == 0 might not hold. (seqsingleelements.vpr@39.11--39.26) [65346]"}
      Heap[Seq#Index(S, k), value] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}