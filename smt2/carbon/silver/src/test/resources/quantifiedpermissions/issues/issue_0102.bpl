// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:17:24
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0102.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0102-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_3: int): bool;
function  neverTriggered3(i_1: int): bool;
function  neverTriggered4(i_3: int): bool;
function  neverTriggered5(i_5: int): bool;
function  neverTriggered6(i_1: int): bool;
function  neverTriggered7(i_3: int): bool;
function  neverTriggered8(i_1: int): bool;
function  neverTriggered9(i_3: int): bool;
function  neverTriggered10(i_6_1: int): bool;
function  neverTriggered11(i_1: int): bool;
function  neverTriggered12(i_2_1: int): bool;
function  neverTriggered13(i_4_1: int): bool;
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);
const unique array: Field NormalField (Seq Ref);
axiom !IsPredicateField(array);
axiom !IsWandField(array);

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(xs: (Seq Ref), n: int, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i1_17: int;
  var i2_7: int;
  var i_2: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_4: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Seq#Length(xs) == n;
    assume state(Heap, Mask);
    assume n > 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..n)), (i2 in [0..n)) }
  //     { (i1 in [0..n)), xs[i2] }
  //     { (i2 in [0..n)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0102.vpr@10.3--10.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } { (i1 in [0..n)), xs[i2] } { (i2 in [0..n)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_17) && (Seq#Contains(Seq#Range(0, n), i2_7) && i1_17 != i2_7)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0102.vpr@10.10--10.98) [75876]"}
            i1_17 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0102.vpr@10.10--10.98) [75877]"}
            i1_17 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0102.vpr@10.10--10.98) [75878]"}
            i2_7 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0102.vpr@10.10--10.98) [75879]"}
            i2_7 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, n), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, n), i1_1_1) && (Seq#Contains(Seq#Range(0, n), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { xs[i] }
  //     (i in [0..n)) ==> acc(xs[i].f, write)) -- issue_0102.vpr@11.3--11.62
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_2)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (issue_0102.vpr@11.10--11.62) [75880]"}
            i_2 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@11.10--11.62) [75881]"}
            i_2 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@11.10--11.62) [75882]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, i_1)) && invRecv1(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(xs, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, n), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { xs[i] }
  //     (i in [0..n)) ==> acc(xs[i].f, write)) -- issue_0102.vpr@12.3--12.62
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_4)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (issue_0102.vpr@12.10--12.62) [75883]"}
            i_4 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@12.10--12.62) [75884]"}
            i_4 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@12.10--12.62) [75886]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered2(i_3), neverTriggered2(i_3_1) }
        (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, n), i_3)) && Seq#Contains(Seq#Range(0, n), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (issue_0102.vpr@12.10--12.62) [75887]"}
        (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) ==> Mask[Seq#Index(xs, i_3), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && NoPerm < FullPerm ==> qpRange2(Seq#Index(xs, i_3)) && invRecv2(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> Seq#Index(xs, invRecv2(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> Seq#Index(xs, invRecv2(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(xs: (Seq Ref), n: int, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i1_23: int;
  var i2_13: int;
  var i_7: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_8: int;
  var ExhaleHeap: HeapType;
  var i_9: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Seq#Length(xs) == n;
    assume state(Heap, Mask);
    assume n > 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..n)), (i2 in [0..n)) }
  //     { (i1 in [0..n)), xs[i2] }
  //     { (i2 in [0..n)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0102.vpr@19.3--19.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } { (i1 in [0..n)), xs[i2] } { (i2 in [0..n)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_23) && (Seq#Contains(Seq#Range(0, n), i2_13) && i1_23 != i2_13)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0102.vpr@19.10--19.98) [75888]"}
            i1_23 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0102.vpr@19.10--19.98) [75889]"}
            i1_23 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0102.vpr@19.10--19.98) [75890]"}
            i2_13 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0102.vpr@19.10--19.98) [75891]"}
            i2_13 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, n), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, n), i1_1_1) && (Seq#Contains(Seq#Range(0, n), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { xs[i] }
  //     (i in [0..n)) ==> acc(xs[i].f, write)) -- issue_0102.vpr@20.3--20.62
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_7)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (issue_0102.vpr@20.10--20.62) [75892]"}
            i_7 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@20.10--20.62) [75893]"}
            i_7 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@20.10--20.62) [75894]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(xs, i_1)) && invRecv3(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(xs, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv3(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, n), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { xs[i] }
  //     (i in [0..n)) ==> acc(xs[i].f, 1 / 2)) -- issue_0102.vpr@21.3--21.60
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_8)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (issue_0102.vpr@21.10--21.60) [75895]"}
            i_8 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@21.10--21.60) [75896]"}
            i_8 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (issue_0102.vpr@21.10--21.60) [75897]"}
        (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && dummyFunction(Heap[Seq#Index(xs, i_3), f_7]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@21.10--21.60) [75898]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered4(i_3), neverTriggered4(i_3_1) }
        (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, n), i_3)) && Seq#Contains(Seq#Range(0, n), i_3_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (issue_0102.vpr@21.10--21.60) [75899]"}
        (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) ==> Mask[Seq#Index(xs, i_3), f_7] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && NoPerm < 1 / 2 ==> qpRange4(Seq#Index(xs, i_3)) && invRecv4(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        Seq#Contains(Seq#Range(0, n), invRecv4(o_4)) && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> Seq#Index(xs, invRecv4(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, n), invRecv4(o_4)) && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> Seq#Index(xs, invRecv4(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, n), invRecv4(o_4)) && (NoPerm < 1 / 2 && qpRange4(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { xs[i] }
  //     (i in [0..n)) ==> acc(xs[i].f, 1 / 2)) -- issue_0102.vpr@22.3--22.60
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_9)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (issue_0102.vpr@22.10--22.60) [75900]"}
            i_9 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@22.10--22.60) [75901]"}
            i_9 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (issue_0102.vpr@22.10--22.60) [75902]"}
        (forall i_5: int ::
        { Seq#Index(xs, i_5) } { Seq#ContainsTrigger(Seq#Range(0, n), i_5) } { Seq#Contains(Seq#Range(0, n), i_5) } { Seq#Index(xs, i_5) }
        Seq#Contains(Seq#Range(0, n), i_5) && dummyFunction(Heap[Seq#Index(xs, i_5), f_7]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@22.10--22.60) [75903]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered5(i_5), neverTriggered5(i_5_1) }
        (((i_5 != i_5_1 && Seq#Contains(Seq#Range(0, n), i_5)) && Seq#Contains(Seq#Range(0, n), i_5_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(xs, i_5) != Seq#Index(xs, i_5_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (issue_0102.vpr@22.10--22.60) [75904]"}
        (forall i_5: int ::
        { Seq#Index(xs, i_5) } { Seq#ContainsTrigger(Seq#Range(0, n), i_5) } { Seq#Contains(Seq#Range(0, n), i_5) } { Seq#Index(xs, i_5) }
        Seq#Contains(Seq#Range(0, n), i_5) ==> Mask[Seq#Index(xs, i_5), f_7] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_5: int ::
        { Seq#Index(xs, i_5) } { Seq#ContainsTrigger(Seq#Range(0, n), i_5) } { Seq#Contains(Seq#Range(0, n), i_5) } { Seq#Index(xs, i_5) }
        Seq#Contains(Seq#Range(0, n), i_5) && NoPerm < 1 / 2 ==> qpRange5(Seq#Index(xs, i_5)) && invRecv5(Seq#Index(xs, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        Seq#Contains(Seq#Range(0, n), invRecv5(o_4)) && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> Seq#Index(xs, invRecv5(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, n), invRecv5(o_4)) && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> Seq#Index(xs, invRecv5(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, n), invRecv5(o_4)) && (NoPerm < 1 / 2 && qpRange5(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i1_24: int;
  var i2_29: int;
  var i_11: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_12: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Seq#Length(xs) == n;
    assume state(Heap, Mask);
    assume n > 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..n)), (i2 in [0..n)) }
  //     { (i1 in [0..n)), xs[i2] }
  //     { (i2 in [0..n)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0102.vpr@29.3--29.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } { (i1 in [0..n)), xs[i2] } { (i2 in [0..n)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_24) && (Seq#Contains(Seq#Range(0, n), i2_29) && i1_24 != i2_29)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0102.vpr@29.10--29.98) [75905]"}
            i1_24 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0102.vpr@29.10--29.98) [75906]"}
            i1_24 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0102.vpr@29.10--29.98) [75907]"}
            i2_29 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0102.vpr@29.10--29.98) [75908]"}
            i2_29 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, n), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, n), i1_1_1) && (Seq#Contains(Seq#Range(0, n), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { xs[i] }
  //     (i in [0..n)) ==> acc(xs[i].f, (i < 2 ? write : 1 / 10))) -- issue_0102.vpr@30.3--30.77
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, (i < 2 ? write : 1 / 10)))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_11)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (issue_0102.vpr@30.10--30.77) [75909]"}
            i_11 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@30.10--30.77) [75910]"}
            i_11 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@30.10--30.77) [75911]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < (if i_1 < 2 then FullPerm else 1 / 10)) && NoPerm < (if i_1_1 < 2 then FullPerm else 1 / 10) ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < (if i_1 < 2 then FullPerm else 1 / 10) ==> qpRange6(Seq#Index(xs, i_1)) && invRecv6(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv6(o_4)) && NoPerm < (if invRecv6(o_4) < 2 then FullPerm else 1 / 10)) && qpRange6(o_4) ==> Seq#Index(xs, invRecv6(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction (i < 2 ? write : 1 / 10) might be negative. (issue_0102.vpr@30.10--30.77) [75912]"}
      (forall i_1: int ::
      { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
      Seq#Contains(Seq#Range(0, n), i_1) ==> (if i_1 < 2 then FullPerm else 1 / 10) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && (if i_1 < 2 then FullPerm else 1 / 10) > NoPerm ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv6(o_4)) && NoPerm < (if invRecv6(o_4) < 2 then FullPerm else 1 / 10)) && qpRange6(o_4) ==> (NoPerm < (if invRecv6(o_4) < 2 then FullPerm else 1 / 10) ==> Seq#Index(xs, invRecv6(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + (if invRecv6(o_4) < 2 then FullPerm else 1 / 10)) && (!((Seq#Contains(Seq#Range(0, n), invRecv6(o_4)) && NoPerm < (if invRecv6(o_4) < 2 then FullPerm else 1 / 10)) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { xs[i] }
  //     (i in [0..n)) ==> acc(xs[i].f, (i < 2 ? write : 1 / 10))) -- issue_0102.vpr@31.3--31.77
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, (i < 2 ? write : 1 / 10)))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_12)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (issue_0102.vpr@31.10--31.77) [75913]"}
            i_12 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@31.10--31.77) [75914]"}
            i_12 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction (i < 2 ? write : 1 / 10) might be negative. (issue_0102.vpr@31.10--31.77) [75915]"}
        (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && dummyFunction(Heap[Seq#Index(xs, i_3), f_7]) ==> (if i_3 < 2 then FullPerm else 1 / 10) >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@31.10--31.77) [75916]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered7(i_3), neverTriggered7(i_3_1) }
        (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, n), i_3)) && Seq#Contains(Seq#Range(0, n), i_3_1)) && NoPerm < (if i_3 < 2 then FullPerm else 1 / 10)) && NoPerm < (if i_3_1 < 2 then FullPerm else 1 / 10) ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (issue_0102.vpr@31.10--31.77) [75917]"}
        (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) ==> Mask[Seq#Index(xs, i_3), f_7] >= (if i_3 < 2 then FullPerm else 1 / 10)
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && NoPerm < (if i_3 < 2 then FullPerm else 1 / 10) ==> qpRange7(Seq#Index(xs, i_3)) && invRecv7(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        Seq#Contains(Seq#Range(0, n), invRecv7(o_4)) && (NoPerm < (if invRecv7(o_4) < 2 then FullPerm else 1 / 10) && qpRange7(o_4)) ==> Seq#Index(xs, invRecv7(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, n), invRecv7(o_4)) && (NoPerm < (if invRecv7(o_4) < 2 then FullPerm else 1 / 10) && qpRange7(o_4)) ==> Seq#Index(xs, invRecv7(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - (if invRecv7(o_4) < 2 then FullPerm else 1 / 10)) && (!(Seq#Contains(Seq#Range(0, n), invRecv7(o_4)) && (NoPerm < (if invRecv7(o_4) < 2 then FullPerm else 1 / 10) && qpRange7(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- issue_0102.vpr@34.3--34.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (issue_0102.vpr@34.10--34.15) [75918]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5(xs: (Seq Ref), n: int, x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var i1_21: int;
  var i2_11: int;
  var i_18: int;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_13: int;
  var i_20: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_7_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Length(xs) == n;
    assume n > 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of xs[0] == x
      assert {:msg "  Contract might not be well-formed. Index xs[0] into xs might exceed sequence length. (issue_0102.vpr@39.12--39.36) [75919]"}
        0 < Seq#Length(xs);
    assume Seq#Index(xs, 0) == x;
    
    // -- Check definedness of xs[1] == y
      assert {:msg "  Contract might not be well-formed. Index xs[1] into xs might exceed sequence length. (issue_0102.vpr@39.12--39.36) [75920]"}
        1 < Seq#Length(xs);
    assume Seq#Index(xs, 1) == y;
    assume state(Heap, Mask);
    perm := 9 / 10;
    assert {:msg "  Contract might not be well-formed. Fraction 9 / 10 might be negative. (issue_0102.vpr@40.12--40.44) [75921]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := 9 / 10;
    assert {:msg "  Contract might not be well-formed. Fraction 9 / 10 might be negative. (issue_0102.vpr@40.12--40.44) [75922]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } { (i1 in [0..n)), xs[i2] } { (i2 in [0..n)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_21) && (Seq#Contains(Seq#Range(0, n), i2_11) && i1_21 != i2_11)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0102.vpr@41.12--41.100) [75923]"}
            i1_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0102.vpr@41.12--41.100) [75924]"}
            i1_21 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0102.vpr@41.12--41.100) [75925]"}
            i2_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0102.vpr@41.12--41.100) [75926]"}
            i2_11 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, n), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, n), i1_1_1) && (Seq#Contains(Seq#Range(0, n), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, 1 / 10))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_18)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0102.vpr@42.12--42.63) [75927]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@42.12--42.63) [75928]"}
            i_18 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@42.12--42.63) [75929]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < 1 / 10) && NoPerm < 1 / 10 ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < 1 / 10 ==> qpRange8(Seq#Index(xs, i_1)) && invRecv8(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv8(o_4)) && NoPerm < 1 / 10) && qpRange8(o_4) ==> Seq#Index(xs, invRecv8(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 10 might be negative. (issue_0102.vpr@42.12--42.63) [75930]"}
      (forall i_1: int ::
      { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
      Seq#Contains(Seq#Range(0, n), i_1) ==> 1 / 10 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && 1 / 10 > NoPerm ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv8(o_4)) && NoPerm < 1 / 10) && qpRange8(o_4) ==> (NoPerm < 1 / 10 ==> Seq#Index(xs, invRecv8(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + 1 / 10) && (!((Seq#Contains(Seq#Range(0, n), invRecv8(o_4)) && NoPerm < 1 / 10) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, (i < 2 ? write : 1 / 10)))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_13)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0102.vpr@44.12--44.79) [75931]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@44.12--44.79) [75932]"}
            i_13 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@44.12--44.79) [75933]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, n), i_3)) && Seq#Contains(Seq#Range(0, n), i_3_1)) && NoPerm < (if i_3 < 2 then FullPerm else 1 / 10)) && NoPerm < (if i_3_1 < 2 then FullPerm else 1 / 10) ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && NoPerm < (if i_3 < 2 then FullPerm else 1 / 10) ==> qpRange9(Seq#Index(xs, i_3)) && invRecv9(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv9(o_4)) && NoPerm < (if invRecv9(o_4) < 2 then FullPerm else 1 / 10)) && qpRange9(o_4) ==> Seq#Index(xs, invRecv9(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction (i < 2 ? write : 1 / 10) might be negative. (issue_0102.vpr@44.12--44.79) [75934]"}
      (forall i_3: int ::
      { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
      Seq#Contains(Seq#Range(0, n), i_3) ==> (if i_3 < 2 then FullPerm else 1 / 10) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && (if i_3 < 2 then FullPerm else 1 / 10) > NoPerm ==> Seq#Index(xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv9(o_4)) && NoPerm < (if invRecv9(o_4) < 2 then FullPerm else 1 / 10)) && qpRange9(o_4) ==> (NoPerm < (if invRecv9(o_4) < 2 then FullPerm else 1 / 10) ==> Seq#Index(xs, invRecv9(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + (if invRecv9(o_4) < 2 then FullPerm else 1 / 10)) && (!((Seq#Contains(Seq#Range(0, n), invRecv9(o_4)) && NoPerm < (if invRecv9(o_4) < 2 then FullPerm else 1 / 10)) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [2..n)) } { old(xs[i]) } (i in [2..n)) ==> xs[i].f == old(xs[i].f))
      if (*) {
        if (Seq#Contains(Seq#Range(2, n), i_20)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0102.vpr@45.12--45.68) [75935]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@45.12--45.68) [75936]"}
            i_20 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[i].f (issue_0102.vpr@45.12--45.68) [75937]"}
            HasDirectPerm(PostMask, Seq#Index(xs, i_20), f_7);
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0102.vpr@45.12--45.68) [75938]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0102.vpr@45.12--45.68) [75939]"}
            i_20 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[i].f (issue_0102.vpr@45.12--45.68) [75940]"}
            HasDirectPerm(oldMask, Seq#Index(xs, i_20), f_7);
        }
        assume false;
      }
    assume (forall i_5: int ::
      { Seq#ContainsTrigger(Seq#Range(2, n), i_5) } { Seq#Contains(Seq#Range(2, n), i_5) } { Seq#Index(xs, i_5) }
      Seq#Contains(Seq#Range(2, n), i_5) ==> PostHeap[Seq#Index(xs, i_5), f_7] == oldHeap[Seq#Index(xs, i_5), f_7]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of xs[0].f == old(xs[1].f) + 1
      assert {:msg "  Contract might not be well-formed. Index xs[0] into xs might exceed sequence length. (issue_0102.vpr@46.12--46.39) [75941]"}
        0 < Seq#Length(xs);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[0].f (issue_0102.vpr@46.12--46.39) [75942]"}
        HasDirectPerm(PostMask, Seq#Index(xs, 0), f_7);
      assert {:msg "  Contract might not be well-formed. Index xs[1] into xs might exceed sequence length. (issue_0102.vpr@46.12--46.39) [75943]"}
        1 < Seq#Length(xs);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[1].f (issue_0102.vpr@46.12--46.39) [75944]"}
        HasDirectPerm(oldMask, Seq#Index(xs, 1), f_7);
    assume PostHeap[Seq#Index(xs, 0), f_7] == oldHeap[Seq#Index(xs, 1), f_7] + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of xs[1].f == old(xs[1].f) + 2
      assert {:msg "  Contract might not be well-formed. Index xs[1] into xs might exceed sequence length. (issue_0102.vpr@47.12--47.39) [75945]"}
        1 < Seq#Length(xs);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[1].f (issue_0102.vpr@47.12--47.39) [75946]"}
        HasDirectPerm(PostMask, Seq#Index(xs, 1), f_7);
      assert {:msg "  Contract might not be well-formed. Index xs[1] into xs might exceed sequence length. (issue_0102.vpr@47.12--47.39) [75947]"}
        1 < Seq#Length(xs);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[1].f (issue_0102.vpr@47.12--47.39) [75948]"}
        HasDirectPerm(oldMask, Seq#Index(xs, 1), f_7);
    assume PostHeap[Seq#Index(xs, 1), f_7] == oldHeap[Seq#Index(xs, 1), f_7] + 2;
    assume state(PostHeap, PostMask);
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: xs[0].f := y.f + 1 -- issue_0102.vpr@51.3--51.21
    
    // -- Check definedness of xs[0]
      assert {:msg "  Assignment might fail. Index xs[0] into xs might exceed sequence length. (issue_0102.vpr@51.3--51.21) [75949]"}
        0 < Seq#Length(xs);
    
    // -- Check definedness of y.f + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (issue_0102.vpr@51.3--51.21) [75950]"}
        HasDirectPerm(Mask, y, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[0].f (issue_0102.vpr@51.3--51.21) [75951]"}
      FullPerm == Mask[Seq#Index(xs, 0), f_7];
    Heap := Heap[Seq#Index(xs, 0), f_7:=Heap[y, f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[1].f := x.f + 1 -- issue_0102.vpr@52.3--52.21
    
    // -- Check definedness of xs[1]
      assert {:msg "  Assignment might fail. Index xs[1] into xs might exceed sequence length. (issue_0102.vpr@52.3--52.21) [75952]"}
        1 < Seq#Length(xs);
    
    // -- Check definedness of x.f + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (issue_0102.vpr@52.3--52.21) [75953]"}
        HasDirectPerm(Mask, x, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[1].f (issue_0102.vpr@52.3--52.21) [75954]"}
      FullPerm == Mask[Seq#Index(xs, 1), f_7];
    Heap := Heap[Seq#Index(xs, 1), f_7:=Heap[x, f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test5 might not hold. Fraction (i < 2 ? write : 1 / 10) might be negative. (issue_0102.vpr@44.12--44.79) [75955]"}
        (forall i_6_1: int ::
        { Seq#Index(xs, i_6_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_6_1) } { Seq#Contains(Seq#Range(0, n), i_6_1) } { Seq#Index(xs, i_6_1) }
        Seq#Contains(Seq#Range(0, n), i_6_1) && dummyFunction(Heap[Seq#Index(xs, i_6_1), f_7]) ==> (if i_6_1 < 2 then FullPerm else 1 / 10) >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (issue_0102.vpr@44.12--44.79) [75956]"}
        (forall i_6_1: int, i_6_2: int ::
        { neverTriggered10(i_6_1), neverTriggered10(i_6_2) }
        (((i_6_1 != i_6_2 && Seq#Contains(Seq#Range(0, n), i_6_1)) && Seq#Contains(Seq#Range(0, n), i_6_2)) && NoPerm < (if i_6_1 < 2 then FullPerm else 1 / 10)) && NoPerm < (if i_6_2 < 2 then FullPerm else 1 / 10) ==> Seq#Index(xs, i_6_1) != Seq#Index(xs, i_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test5 might not hold. There might be insufficient permission to access xs[i].f (issue_0102.vpr@44.12--44.79) [75957]"}
        (forall i_6_1: int ::
        { Seq#Index(xs, i_6_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_6_1) } { Seq#Contains(Seq#Range(0, n), i_6_1) } { Seq#Index(xs, i_6_1) }
        Seq#Contains(Seq#Range(0, n), i_6_1) ==> Mask[Seq#Index(xs, i_6_1), f_7] >= (if i_6_1 < 2 then FullPerm else 1 / 10)
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_6_1: int ::
        { Seq#Index(xs, i_6_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_6_1) } { Seq#Contains(Seq#Range(0, n), i_6_1) } { Seq#Index(xs, i_6_1) }
        Seq#Contains(Seq#Range(0, n), i_6_1) && NoPerm < (if i_6_1 < 2 then FullPerm else 1 / 10) ==> qpRange10(Seq#Index(xs, i_6_1)) && invRecv10(Seq#Index(xs, i_6_1)) == i_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        Seq#Contains(Seq#Range(0, n), invRecv10(o_4)) && (NoPerm < (if invRecv10(o_4) < 2 then FullPerm else 1 / 10) && qpRange10(o_4)) ==> Seq#Index(xs, invRecv10(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, n), invRecv10(o_4)) && (NoPerm < (if invRecv10(o_4) < 2 then FullPerm else 1 / 10) && qpRange10(o_4)) ==> Seq#Index(xs, invRecv10(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - (if invRecv10(o_4) < 2 then FullPerm else 1 / 10)) && (!(Seq#Contains(Seq#Range(0, n), invRecv10(o_4)) && (NoPerm < (if invRecv10(o_4) < 2 then FullPerm else 1 / 10) && qpRange10(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(2, n), i_7_1)) {
        assert {:msg "  Postcondition of test5 might not hold. Assertion xs[i].f == old(xs[i].f) might not hold. (issue_0102.vpr@45.12--45.68) [75958]"}
          Heap[Seq#Index(xs, i_7_1), f_7] == oldHeap[Seq#Index(xs, i_7_1), f_7];
      }
      assume false;
    }
    assume (forall i_8_1: int ::
      { Seq#ContainsTrigger(Seq#Range(2, n), i_8_1) } { Seq#Contains(Seq#Range(2, n), i_8_1) } { Seq#Index(xs, i_8_1) }
      Seq#Contains(Seq#Range(2, n), i_8_1) ==> Heap[Seq#Index(xs, i_8_1), f_7] == oldHeap[Seq#Index(xs, i_8_1), f_7]
    );
    assert {:msg "  Postcondition of test5 might not hold. Assertion xs[0].f == old(xs[1].f) + 1 might not hold. (issue_0102.vpr@46.12--46.39) [75959]"}
      Heap[Seq#Index(xs, 0), f_7] == oldHeap[Seq#Index(xs, 1), f_7] + 1;
    assert {:msg "  Postcondition of test5 might not hold. Assertion xs[1].f == old(xs[1].f) + 2 might not hold. (issue_0102.vpr@47.12--47.39) [75960]"}
      Heap[Seq#Index(xs, 1), f_7] == oldHeap[Seq#Index(xs, 1), f_7] + 2;
    assert {:msg "  Postcondition of test5 might not hold. Assertion false might not hold. (issue_0102.vpr@49.11--49.16) [75961]"}
      false;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(this: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var i1_22: int;
  var i2_12: int;
  var i_24: int;
  var QPMask: MaskType;
  var r_1: Ref;
  var i1_28: int;
  var i2_17: int;
  var i_30: int;
  var x: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i1_2_1: int;
  var i2_2_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, array:=Mask[this, array] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n > 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.array| == n
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (issue_0102.vpr@61.12--61.29) [75962]"}
        HasDirectPerm(Mask, this, array);
    assume Seq#Length(Heap[this, array]) == n;
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
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, array:=PostMask[this, array] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.array| == n
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (issue_0102.vpr@63.11--63.28) [75963]"}
        HasDirectPerm(PostMask, this, array);
    assume Seq#Length(PostHeap[this, array]) == n;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } { (i1 in [0..n)), this.array[i2] } { (i2 in [0..n)), this.array[i1] } { this.array[i1], this.array[i2] } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> this.array[i1] != this.array[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_22) && (Seq#Contains(Seq#Range(0, n), i2_12) && i1_22 != i2_12)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (issue_0102.vpr@64.11--64.115) [75964]"}
            HasDirectPerm(PostMask, this, array);
          assert {:msg "  Contract might not be well-formed. Index this.array[i1] into this.array might be negative. (issue_0102.vpr@64.11--64.115) [75965]"}
            i1_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.array[i1] into this.array might exceed sequence length. (issue_0102.vpr@64.11--64.115) [75966]"}
            i1_22 < Seq#Length(PostHeap[this, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (issue_0102.vpr@64.11--64.115) [75967]"}
            HasDirectPerm(PostMask, this, array);
          assert {:msg "  Contract might not be well-formed. Index this.array[i2] into this.array might be negative. (issue_0102.vpr@64.11--64.115) [75968]"}
            i2_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.array[i2] into this.array might exceed sequence length. (issue_0102.vpr@64.11--64.115) [75969]"}
            i2_12 < Seq#Length(PostHeap[this, array]);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Index(PostHeap[this, array], i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Index(PostHeap[this, array], i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1), Seq#Index(PostHeap[this, array], i1_1_1) } { Seq#Contains(Seq#Range(0, n), i2_1_1), Seq#Index(PostHeap[this, array], i1_1_1) } { Seq#Index(PostHeap[this, array], i1_1_1), Seq#Index(PostHeap[this, array], i2_1_1) }
      Seq#Contains(Seq#Range(0, n), i1_1_1) && (Seq#Contains(Seq#Range(0, n), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(PostHeap[this, array], i1_1_1) != Seq#Index(PostHeap[this, array], i2_1_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { this.array[i] } (i in [0..n)) ==> acc(this.array[i].value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_24)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (issue_0102.vpr@65.11--65.72) [75970]"}
            HasDirectPerm(PostMask, this, array);
          assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might be negative. (issue_0102.vpr@65.11--65.72) [75971]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might exceed sequence length. (issue_0102.vpr@65.11--65.72) [75972]"}
            i_24 < Seq#Length(PostHeap[this, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.array[i].value might not be injective. (issue_0102.vpr@65.11--65.72) [75973]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(PostHeap[this, array], i_1) != Seq#Index(PostHeap[this, array], i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(PostHeap[this, array], i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(PostHeap[this, array], i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < 1 / 2 ==> qpRange11(Seq#Index(PostHeap[this, array], i_1)) && invRecv11(Seq#Index(PostHeap[this, array], i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv11(o_4)) && NoPerm < 1 / 2) && qpRange11(o_4) ==> Seq#Index(PostHeap[this, array], invRecv11(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (issue_0102.vpr@65.11--65.72) [75974]"}
      (forall i_1: int ::
      { Seq#Index(PostHeap[this, array], i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(PostHeap[this, array], i_1) }
      Seq#Contains(Seq#Range(0, n), i_1) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(PostHeap[this, array], i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(PostHeap[this, array], i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && 1 / 2 > NoPerm ==> Seq#Index(PostHeap[this, array], i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, n), invRecv11(o_4)) && NoPerm < 1 / 2) && qpRange11(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(PostHeap[this, array], invRecv11(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, n), invRecv11(o_4)) && NoPerm < 1 / 2) && qpRange11(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[r_1, $allocated];
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..n)), (i2 in [0..n)) }
  //     { (i1 in [0..n)), this.array[i2] }
  //     { (i2 in [0..n)), this.array[i1] }
  //     { this.array[i1], this.array[i2] }
  //     (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==>
  //     this.array[i1] != this.array[i2]) -- issue_0102.vpr@71.3--71.114
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } { (i1 in [0..n)), this.array[i2] } { (i2 in [0..n)), this.array[i1] } { this.array[i1], this.array[i2] } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> this.array[i1] != this.array[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_28) && (Seq#Contains(Seq#Range(0, n), i2_17) && i1_28 != i2_17)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.array (issue_0102.vpr@71.10--71.114) [75975]"}
            HasDirectPerm(Mask, this, array);
          assert {:msg "  Inhale might fail. Index this.array[i1] into this.array might be negative. (issue_0102.vpr@71.10--71.114) [75976]"}
            i1_28 >= 0;
          assert {:msg "  Inhale might fail. Index this.array[i1] into this.array might exceed sequence length. (issue_0102.vpr@71.10--71.114) [75977]"}
            i1_28 < Seq#Length(Heap[this, array]);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.array (issue_0102.vpr@71.10--71.114) [75978]"}
            HasDirectPerm(Mask, this, array);
          assert {:msg "  Inhale might fail. Index this.array[i2] into this.array might be negative. (issue_0102.vpr@71.10--71.114) [75979]"}
            i2_17 >= 0;
          assert {:msg "  Inhale might fail. Index this.array[i2] into this.array might exceed sequence length. (issue_0102.vpr@71.10--71.114) [75980]"}
            i2_17 < Seq#Length(Heap[this, array]);
        }
        assume false;
      }
    assume (forall i1_5: int, i2_5: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_5), Seq#ContainsTrigger(Seq#Range(0, n), i2_5) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_5), Seq#Contains(Seq#Range(0, n), i2_5) } { Seq#Contains(Seq#Range(0, n), i1_5), Seq#ContainsTrigger(Seq#Range(0, n), i2_5) } { Seq#Contains(Seq#Range(0, n), i1_5), Seq#Contains(Seq#Range(0, n), i2_5) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_5), Seq#Index(Heap[this, array], i2_5) } { Seq#Contains(Seq#Range(0, n), i1_5), Seq#Index(Heap[this, array], i2_5) } { Seq#ContainsTrigger(Seq#Range(0, n), i2_5), Seq#Index(Heap[this, array], i1_5) } { Seq#Contains(Seq#Range(0, n), i2_5), Seq#Index(Heap[this, array], i1_5) } { Seq#Index(Heap[this, array], i1_5), Seq#Index(Heap[this, array], i2_5) }
      Seq#Contains(Seq#Range(0, n), i1_5) && (Seq#Contains(Seq#Range(0, n), i2_5) && i1_5 != i2_5) ==> Seq#Index(Heap[this, array], i1_5) != Seq#Index(Heap[this, array], i2_5)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { this.array[i] }
  //     (i in [0..n)) ==> acc(this.array[i].value, write)) -- issue_0102.vpr@72.3--72.73
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { this.array[i] } (i in [0..n)) ==> acc(this.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_30)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.array (issue_0102.vpr@72.10--72.73) [75981]"}
            HasDirectPerm(Mask, this, array);
          assert {:msg "  Inhale might fail. Index this.array[i] into this.array might be negative. (issue_0102.vpr@72.10--72.73) [75982]"}
            i_30 >= 0;
          assert {:msg "  Inhale might fail. Index this.array[i] into this.array might exceed sequence length. (issue_0102.vpr@72.10--72.73) [75983]"}
            i_30 < Seq#Length(Heap[this, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource this.array[i].value might not be injective. (issue_0102.vpr@72.10--72.73) [75984]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, n), i_4_1)) && Seq#Contains(Seq#Range(0, n), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[this, array], i_4_1) != Seq#Index(Heap[this, array], i_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { Seq#Index(Heap[this, array], i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_4_1) } { Seq#Contains(Seq#Range(0, n), i_4_1) } { Seq#Index(Heap[this, array], i_4_1) }
        Seq#Contains(Seq#Range(0, n), i_4_1) && NoPerm < FullPerm ==> qpRange13(Seq#Index(Heap[this, array], i_4_1)) && invRecv13(Seq#Index(Heap[this, array], i_4_1)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(Heap[this, array], invRecv13(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { Seq#Index(Heap[this, array], i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_4_1) } { Seq#Contains(Seq#Range(0, n), i_4_1) } { Seq#Index(Heap[this, array], i_4_1) }
        Seq#Contains(Seq#Range(0, n), i_4_1) ==> Seq#Index(Heap[this, array], i_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(0, n), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[this, array], invRecv13(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, n), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x := this.array[0].value -- issue_0102.vpr@74.3--74.27
    
    // -- Check definedness of this.array[0].value
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array (issue_0102.vpr@74.3--74.27) [75985]"}
        HasDirectPerm(Mask, this, array);
      assert {:msg "  Assignment might fail. Index this.array[0] into this.array might exceed sequence length. (issue_0102.vpr@74.3--74.27) [75986]"}
        0 < Seq#Length(Heap[this, array]);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array[0].value (issue_0102.vpr@74.3--74.27) [75987]"}
        HasDirectPerm(Mask, Seq#Index(Heap[this, array], 0), value);
    x := Heap[Seq#Index(Heap[this, array], 0), value];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.array[0].value := 1 -- issue_0102.vpr@76.3--76.27
    
    // -- Check definedness of this.array[0]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array (issue_0102.vpr@76.3--76.27) [75988]"}
        HasDirectPerm(Mask, this, array);
      assert {:msg "  Assignment might fail. Index this.array[0] into this.array might exceed sequence length. (issue_0102.vpr@76.3--76.27) [75989]"}
        0 < Seq#Length(Heap[this, array]);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array[0].value (issue_0102.vpr@76.3--76.27) [75990]"}
      FullPerm == Mask[Seq#Index(Heap[this, array], 0), value];
    Heap := Heap[Seq#Index(Heap[this, array], 0), value:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale r == this.array[1] -- issue_0102.vpr@79.3--79.28
    
    // -- Check definedness of r == this.array[1]
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.array (issue_0102.vpr@79.10--79.28) [75991]"}
        HasDirectPerm(Mask, this, array);
      assert {:msg "  Inhale might fail. Index this.array[1] into this.array might exceed sequence length. (issue_0102.vpr@79.10--79.28) [75992]"}
        1 < Seq#Length(Heap[this, array]);
    assume r_1 == Seq#Index(Heap[this, array], 1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.value := 2 -- issue_0102.vpr@80.3--80.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.value (issue_0102.vpr@80.3--80.15) [75993]"}
      FullPerm == Mask[r_1, value];
    Heap := Heap[r_1, value:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.array[0].value := -1 -- issue_0102.vpr@82.3--82.28
    
    // -- Check definedness of this.array[0]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array (issue_0102.vpr@82.3--82.28) [75994]"}
        HasDirectPerm(Mask, this, array);
      assert {:msg "  Assignment might fail. Index this.array[0] into this.array might exceed sequence length. (issue_0102.vpr@82.3--82.28) [75995]"}
        0 < Seq#Length(Heap[this, array]);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array[0].value (issue_0102.vpr@82.3--82.28) [75996]"}
      FullPerm == Mask[Seq#Index(Heap[this, array], 0), value];
    Heap := Heap[Seq#Index(Heap[this, array], 0), value:=-1];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.array[1].value := -2 -- issue_0102.vpr@83.3--83.28
    
    // -- Check definedness of this.array[1]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array (issue_0102.vpr@83.3--83.28) [75997]"}
        HasDirectPerm(Mask, this, array);
      assert {:msg "  Assignment might fail. Index this.array[1] into this.array might exceed sequence length. (issue_0102.vpr@83.3--83.28) [75998]"}
        1 < Seq#Length(Heap[this, array]);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array[1].value (issue_0102.vpr@83.3--83.28) [75999]"}
      FullPerm == Mask[Seq#Index(Heap[this, array], 1), value];
    Heap := Heap[Seq#Index(Heap[this, array], 1), value:=-2];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.array[2].value := 3 -- issue_0102.vpr@85.3--85.27
    
    // -- Check definedness of this.array[2]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array (issue_0102.vpr@85.3--85.27) [76000]"}
        HasDirectPerm(Mask, this, array);
      assert {:msg "  Assignment might fail. Index this.array[2] into this.array might exceed sequence length. (issue_0102.vpr@85.3--85.27) [76001]"}
        2 < Seq#Length(Heap[this, array]);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array[2].value (issue_0102.vpr@85.3--85.27) [76002]"}
      FullPerm == Mask[Seq#Index(Heap[this, array], 2), value];
    Heap := Heap[Seq#Index(Heap[this, array], 2), value:=3];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of test4 might not hold. There might be insufficient permission to access this.array (issue_0102.vpr@62.11--62.36) [76003]"}
      Mask[this, array] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, array];
    Mask := Mask[this, array:=Mask[this, array] - wildcard];
    assert {:msg "  Postcondition of test4 might not hold. Assertion |this.array| == n might not hold. (issue_0102.vpr@63.11--63.28) [76004]"}
      Seq#Length(Heap[this, array]) == n;
    if (*) {
      if (Seq#Contains(Seq#Range(0, n), i1_2_1) && (Seq#Contains(Seq#Range(0, n), i2_2_1) && i1_2_1 != i2_2_1)) {
        assert {:msg "  Postcondition of test4 might not hold. Assertion this.array[i1] != this.array[i2] might not hold. (issue_0102.vpr@64.11--64.115) [76005]"}
          Seq#Index(Heap[this, array], i1_2_1) != Seq#Index(Heap[this, array], i2_2_1);
      }
      assume false;
    }
    assume (forall i1_3_1_1: int, i2_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_3_1_1), Seq#Contains(Seq#Range(0, n), i2_3_1) } { Seq#Contains(Seq#Range(0, n), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_3_1) } { Seq#Contains(Seq#Range(0, n), i1_3_1_1), Seq#Contains(Seq#Range(0, n), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_3_1_1), Seq#Index(Heap[this, array], i2_3_1) } { Seq#Contains(Seq#Range(0, n), i1_3_1_1), Seq#Index(Heap[this, array], i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i2_3_1), Seq#Index(Heap[this, array], i1_3_1_1) } { Seq#Contains(Seq#Range(0, n), i2_3_1), Seq#Index(Heap[this, array], i1_3_1_1) } { Seq#Index(Heap[this, array], i1_3_1_1), Seq#Index(Heap[this, array], i2_3_1) }
      Seq#Contains(Seq#Range(0, n), i1_3_1_1) && (Seq#Contains(Seq#Range(0, n), i2_3_1) && i1_3_1_1 != i2_3_1) ==> Seq#Index(Heap[this, array], i1_3_1_1) != Seq#Index(Heap[this, array], i2_3_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test4 might not hold. Fraction 1 / 2 might be negative. (issue_0102.vpr@65.11--65.72) [76006]"}
        (forall i_2_1: int ::
        { Seq#Index(Heap[this, array], i_2_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_2_1) } { Seq#Contains(Seq#Range(0, n), i_2_1) } { Seq#Index(Heap[this, array], i_2_1) }
        Seq#Contains(Seq#Range(0, n), i_2_1) && dummyFunction(Heap[Seq#Index(Heap[this, array], i_2_1), value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver this.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.array[i].value might not be injective. (issue_0102.vpr@65.11--65.72) [76007]"}
        (forall i_2_1: int, i_2_2: int ::
        { neverTriggered12(i_2_1), neverTriggered12(i_2_2) }
        (((i_2_1 != i_2_2 && Seq#Contains(Seq#Range(0, n), i_2_1)) && Seq#Contains(Seq#Range(0, n), i_2_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[this, array], i_2_1) != Seq#Index(Heap[this, array], i_2_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test4 might not hold. There might be insufficient permission to access this.array[i].value (issue_0102.vpr@65.11--65.72) [76008]"}
        (forall i_2_1: int ::
        { Seq#Index(Heap[this, array], i_2_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_2_1) } { Seq#Contains(Seq#Range(0, n), i_2_1) } { Seq#Index(Heap[this, array], i_2_1) }
        Seq#Contains(Seq#Range(0, n), i_2_1) ==> Mask[Seq#Index(Heap[this, array], i_2_1), value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver this.array[i]
      assume (forall i_2_1: int ::
        { Seq#Index(Heap[this, array], i_2_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_2_1) } { Seq#Contains(Seq#Range(0, n), i_2_1) } { Seq#Index(Heap[this, array], i_2_1) }
        Seq#Contains(Seq#Range(0, n), i_2_1) && NoPerm < 1 / 2 ==> qpRange12(Seq#Index(Heap[this, array], i_2_1)) && invRecv12(Seq#Index(Heap[this, array], i_2_1)) == i_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        Seq#Contains(Seq#Range(0, n), invRecv12(o_4)) && (NoPerm < 1 / 2 && qpRange12(o_4)) ==> Seq#Index(Heap[this, array], invRecv12(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(0, n), invRecv12(o_4)) && (NoPerm < 1 / 2 && qpRange12(o_4)) ==> Seq#Index(Heap[this, array], invRecv12(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, n), invRecv12(o_4)) && (NoPerm < 1 / 2 && qpRange12(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test4 might not hold. Assertion false might not hold. (issue_0102.vpr@67.11--67.16) [76009]"}
      false;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}