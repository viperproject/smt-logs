// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:39:24
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/test2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/test2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_13: Ref, f_20: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_13, f_20] }
  Heap[o_13, $allocated] ==> Heap[Heap[o_13, f_20], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref, f_29: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, f_29] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_20, f_29) ==> Heap[o_20, f_29] == ExhaleHeap[o_20, f_29]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37), ExhaleHeap[null, PredicateMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> Heap[null, PredicateMaskField(pm_f_37)] == ExhaleHeap[null, PredicateMaskField(pm_f_37)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, PredicateMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37), ExhaleHeap[null, WandMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> Heap[null, WandMaskField(pm_f_37)] == ExhaleHeap[null, WandMaskField(pm_f_37)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, WandMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_20, $allocated] ==> ExhaleHeap[o_20, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_13: Ref, f_66: (Field A B), v: B ::
  { Heap[o_13, f_66:=v] }
  succHeap(Heap, Heap[o_13, f_66:=v])
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
function  neverTriggered3(i_5_1: int): bool;
function  neverTriggered4(i_7_1: int): bool;
function  neverTriggered5(i_8_1: int): bool;
function  neverTriggered6(i_9_1: int): bool;
function  neverTriggered7(i_1: int): bool;
function  neverTriggered8(i_1: int): bool;
function  neverTriggered9(i_1: int): bool;
function  neverTriggered10(i_5_1: int): bool;
function  neverTriggered11(i_1: int): bool;
function  neverTriggered12(i_5_1: int): bool;
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

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(s_1: (Seq Ref), t_2: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i1_10: int;
  var i2_12: int;
  var i_3: int;
  var QPMask: MaskType;
  var i1_8: int;
  var i2_8: int;
  var i_14: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_5: int;
  var i_15: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|s|)), (i2 in [0..|s|)) } { (i1 in [0..|s|)), s[i2] } { (i2 in [0..|s|)), s[i1] } { s[i1], s[i2] } (i1 in [0..|s|)) && ((i2 in [0..|s|)) && i1 != i2) ==> s[i1] != s[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_10) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_12) && i1_10 != i2_12)) {
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might be negative. (test2.vpr@7.12--7.102) [187015]"}
            i1_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might exceed sequence length. (test2.vpr@7.12--7.102) [187016]"}
            i1_10 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might be negative. (test2.vpr@7.12--7.102) [187017]"}
            i2_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might exceed sequence length. (test2.vpr@7.12--7.102) [187018]"}
            i2_12 < Seq#Length(s_1);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Index(s_1, i1_1), Seq#Index(s_1, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) && i1_1 != i2_1) ==> Seq#Index(s_1, i1_1) != Seq#Index(s_1, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_3)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@8.12--8.58) [187019]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@8.12--8.58) [187020]"}
            i_3 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (test2.vpr@8.12--8.58) [187021]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_1) != Seq#Index(s_1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) && NoPerm < FullPerm ==> qpRange1(Seq#Index(s_1, i_1)) && invRecv1(Seq#Index(s_1, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> Seq#Index(s_1, invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) ==> Seq#Index(s_1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(s_1, invRecv1(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|t|)), (i2 in [0..|t|)) } { (i1 in [0..|t|)), t[i2] } { (i2 in [0..|t|)), t[i1] } { t[i1], t[i2] } (i1 in [0..|t|)) && ((i2 in [0..|t|)) && i1 != i2) ==> t[i1] != t[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i1_8) && (Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i2_8) && i1_8 != i2_8)) {
          assert {:msg "  Contract might not be well-formed. Index t[i1] into t might be negative. (test2.vpr@9.12--9.102) [187022]"}
            i1_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index t[i1] into t might exceed sequence length. (test2.vpr@9.12--9.102) [187023]"}
            i1_8 < Seq#Length(t_2);
          assert {:msg "  Contract might not be well-formed. Index t[i2] into t might be negative. (test2.vpr@9.12--9.102) [187024]"}
            i2_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index t[i2] into t might exceed sequence length. (test2.vpr@9.12--9.102) [187025]"}
            i2_8 < Seq#Length(t_2);
        }
        assume false;
      }
    assume (forall i1_3_1: int, i2_3_2: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i1_3_1), Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i1_3_1), Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i1_3_1), Seq#Index(t_2, i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i1_3_1), Seq#Index(t_2, i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i2_3_2), Seq#Index(t_2, i1_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i2_3_2), Seq#Index(t_2, i1_3_1) } { Seq#Index(t_2, i1_3_1), Seq#Index(t_2, i2_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i1_3_1) && (Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i2_3_2) && i1_3_1 != i2_3_2) ==> Seq#Index(t_2, i1_3_1) != Seq#Index(t_2, i2_3_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|t|)) } { t[i] } (i in [0..|t|)) ==> acc(t[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_14)) {
          assert {:msg "  Contract might not be well-formed. Index t[i] into t might be negative. (test2.vpr@10.12--10.58) [187026]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index t[i] into t might exceed sequence length. (test2.vpr@10.12--10.58) [187027]"}
            i_14 < Seq#Length(t_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource t[i].f might not be injective. (test2.vpr@10.12--10.58) [187028]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(t_2, i_3_2) != Seq#Index(t_2, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(t_2, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_3_2) } { Seq#Index(t_2, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_3_2) && NoPerm < FullPerm ==> qpRange2(Seq#Index(t_2, i_3_2)) && invRecv2(Seq#Index(t_2, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9) ==> Seq#Index(t_2, invRecv2(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(t_2, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_3_2) } { Seq#Index(t_2, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_3_2) ==> Seq#Index(t_2, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(t_2, invRecv2(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|t|)) } { t[i] } (i in [0..|t|)) ==> acc(t[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_5)) {
          assert {:msg "  Contract might not be well-formed. Index t[i] into t might be negative. (test2.vpr@11.12--11.58) [187029]"}
            i_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index t[i] into t might exceed sequence length. (test2.vpr@11.12--11.58) [187030]"}
            i_5 < Seq#Length(t_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource t[i].f might not be injective. (test2.vpr@11.12--11.58) [187031]"}
      (forall i_5_1: int, i_5_2: int ::
      
      (((i_5_1 != i_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(t_2, i_5_1) != Seq#Index(t_2, i_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_5_1: int ::
        { Seq#Index(t_2, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_5_1) } { Seq#Index(t_2, i_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_5_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(t_2, i_5_1)) && invRecv3(Seq#Index(t_2, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(t_2, invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5_1: int ::
        { Seq#Index(t_2, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_5_1) } { Seq#Index(t_2, i_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_5_1) ==> Seq#Index(t_2, i_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(t_2, invRecv3(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_15)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@12.12--12.58) [187032]"}
            i_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@12.12--12.58) [187033]"}
            i_15 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (test2.vpr@12.12--12.58) [187034]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_7_1)) && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_7_1) != Seq#Index(s_1, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(s_1, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_7_1) } { Seq#Index(s_1, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_7_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(s_1, i_7_1)) && invRecv4(Seq#Index(s_1, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9) ==> Seq#Index(s_1, invRecv4(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(s_1, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_7_1) } { Seq#Index(s_1, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_7_1) ==> Seq#Index(s_1, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(s_1, invRecv4(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
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
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver t[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource t[i].f might not be injective. (test2.vpr@11.12--11.58) [187035]"}
        (forall i_8_1: int, i_8_2: int ::
        { neverTriggered5(i_8_1), neverTriggered5(i_8_2) }
        (((i_8_1 != i_8_2 && Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_8_1)) && Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(t_2, i_8_1) != Seq#Index(t_2, i_8_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access t[i].f (test2.vpr@11.12--11.58) [187036]"}
        (forall i_8_1: int ::
        { Seq#Index(t_2, i_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_8_1) } { Seq#Index(t_2, i_8_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_8_1) ==> Mask[Seq#Index(t_2, i_8_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver t[i]
      assume (forall i_8_1: int ::
        { Seq#Index(t_2, i_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(t_2)), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_8_1) } { Seq#Index(t_2, i_8_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(t_2)), i_8_1) && NoPerm < FullPerm ==> qpRange5(Seq#Index(t_2, i_8_1)) && invRecv5(Seq#Index(t_2, i_8_1)) == i_8_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv5(o_9)) && (NoPerm < FullPerm && qpRange5(o_9)) ==> Seq#Index(t_2, invRecv5(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv5(o_9)) && (NoPerm < FullPerm && qpRange5(o_9)) ==> Seq#Index(t_2, invRecv5(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(t_2)), invRecv5(o_9)) && (NoPerm < FullPerm && qpRange5(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver s[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (test2.vpr@12.12--12.58) [187037]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered6(i_9_1), neverTriggered6(i_9_2) }
        (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_9_1)) && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_9_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_9_1) != Seq#Index(s_1, i_9_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access s[i].f (test2.vpr@12.12--12.58) [187038]"}
        (forall i_9_1: int ::
        { Seq#Index(s_1, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_9_1) } { Seq#Index(s_1, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_9_1) ==> Mask[Seq#Index(s_1, i_9_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s[i]
      assume (forall i_9_1: int ::
        { Seq#Index(s_1, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_9_1) } { Seq#Index(s_1, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_9_1) && NoPerm < FullPerm ==> qpRange6(Seq#Index(s_1, i_9_1)) && invRecv6(Seq#Index(s_1, i_9_1)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv6(o_9)) && (NoPerm < FullPerm && qpRange6(o_9)) ==> Seq#Index(s_1, invRecv6(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv6(o_9)) && (NoPerm < FullPerm && qpRange6(o_9)) ==> Seq#Index(s_1, invRecv6(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv6(o_9)) && (NoPerm < FullPerm && qpRange6(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(s_1: (Seq Ref), x: Ref) returns ()
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|s|)), (i2 in [0..|s|)) } { (i1 in [0..|s|)), s[i2] } { (i2 in [0..|s|)), s[i1] } { s[i1], s[i2] } (i1 in [0..|s|)) && ((i2 in [0..|s|)) && i1 != i2) ==> s[i1] != s[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_22) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_13) && i1_22 != i2_13)) {
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might be negative. (test2.vpr@16.12--16.102) [187039]"}
            i1_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might exceed sequence length. (test2.vpr@16.12--16.102) [187040]"}
            i1_22 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might be negative. (test2.vpr@16.12--16.102) [187041]"}
            i2_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might exceed sequence length. (test2.vpr@16.12--16.102) [187042]"}
            i2_13 < Seq#Length(s_1);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Index(s_1, i1_1), Seq#Index(s_1, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) && i1_1 != i2_1) ==> Seq#Index(s_1, i1_1) != Seq#Index(s_1, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_21)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@17.12--17.58) [187043]"}
            i_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@17.12--17.58) [187044]"}
            i_21 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (test2.vpr@17.12--17.58) [187045]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_1) != Seq#Index(s_1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) && NoPerm < FullPerm ==> qpRange7(Seq#Index(s_1, i_1)) && invRecv7(Seq#Index(s_1, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv7(o_9)) && NoPerm < FullPerm) && qpRange7(o_9) ==> Seq#Index(s_1, invRecv7(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) ==> Seq#Index(s_1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv7(o_9)) && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(s_1, invRecv7(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv7(o_9)) && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
  
  // -- Translating statement: assert x.f == old(x.f) -- test2.vpr@20.3--20.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (test2.vpr@20.10--20.25) [187046]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (test2.vpr@20.10--20.25) [187047]"}
        HasDirectPerm(oldMask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (test2.vpr@20.10--20.25) [187048]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(s_1: (Seq Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var i1_23: int;
  var i2_14: int;
  var i_19: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|s|)), (i2 in [0..|s|)) } { (i1 in [0..|s|)), s[i2] } { (i2 in [0..|s|)), s[i1] } { s[i1], s[i2] } (i1 in [0..|s|)) && ((i2 in [0..|s|)) && i1 != i2) ==> s[i1] != s[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_23) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_14) && i1_23 != i2_14)) {
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might be negative. (test2.vpr@24.12--24.102) [187049]"}
            i1_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might exceed sequence length. (test2.vpr@24.12--24.102) [187050]"}
            i1_23 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might be negative. (test2.vpr@24.12--24.102) [187051]"}
            i2_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might exceed sequence length. (test2.vpr@24.12--24.102) [187052]"}
            i2_14 < Seq#Length(s_1);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Index(s_1, i1_1), Seq#Index(s_1, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) && i1_1 != i2_1) ==> Seq#Index(s_1, i1_1) != Seq#Index(s_1, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_19)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@25.12--25.58) [187053]"}
            i_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@25.12--25.58) [187054]"}
            i_19 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (test2.vpr@25.12--25.58) [187055]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_1) != Seq#Index(s_1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) && NoPerm < FullPerm ==> qpRange8(Seq#Index(s_1, i_1)) && invRecv8(Seq#Index(s_1, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9) ==> Seq#Index(s_1, invRecv8(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) ==> Seq#Index(s_1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(s_1, invRecv8(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Contains(s_1, x);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert x.f == old(x.f) -- test2.vpr@28.3--28.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (test2.vpr@28.10--28.25) [187056]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (test2.vpr@28.10--28.25) [187057]"}
        HasDirectPerm(oldMask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (test2.vpr@28.10--28.25) [187058]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(s_1: (Seq Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var i1_24: int;
  var i2_15: int;
  var i_10: int;
  var QPMask: MaskType;
  var i_17: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_11: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|s|)), (i2 in [0..|s|)) } { (i1 in [0..|s|)), s[i2] } { (i2 in [0..|s|)), s[i1] } { s[i1], s[i2] } (i1 in [0..|s|)) && ((i2 in [0..|s|)) && i1 != i2) ==> s[i1] != s[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_24) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_15) && i1_24 != i2_15)) {
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might be negative. (test2.vpr@32.12--32.102) [187059]"}
            i1_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might exceed sequence length. (test2.vpr@32.12--32.102) [187060]"}
            i1_24 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might be negative. (test2.vpr@32.12--32.102) [187061]"}
            i2_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might exceed sequence length. (test2.vpr@32.12--32.102) [187062]"}
            i2_15 < Seq#Length(s_1);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Index(s_1, i1_1), Seq#Index(s_1, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) && i1_1 != i2_1) ==> Seq#Index(s_1, i1_1) != Seq#Index(s_1, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_10)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@33.12--33.58) [187063]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@33.12--33.58) [187064]"}
            i_10 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (test2.vpr@33.12--33.58) [187065]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_1) != Seq#Index(s_1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) && NoPerm < FullPerm ==> qpRange9(Seq#Index(s_1, i_1)) && invRecv9(Seq#Index(s_1, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv9(o_9)) && NoPerm < FullPerm) && qpRange9(o_9) ==> Seq#Index(s_1, invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) ==> Seq#Index(s_1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv9(o_9)) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(s_1, invRecv9(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv9(o_9)) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) && s[i].f > 0 ==> s[i].f > 5)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_17)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@34.12--34.71) [187066]"}
            i_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@34.12--34.71) [187067]"}
            i_17 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s[i].f (test2.vpr@34.12--34.71) [187068]"}
            HasDirectPerm(Mask, Seq#Index(s_1, i_17), f_7);
        }
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_17) && Heap[Seq#Index(s_1, i_17), f_7] > 0) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@34.12--34.71) [187069]"}
            i_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@34.12--34.71) [187070]"}
            i_17 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s[i].f (test2.vpr@34.12--34.71) [187071]"}
            HasDirectPerm(Mask, Seq#Index(s_1, i_17), f_7);
        }
        assume false;
      }
    assume (forall i_3_2: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_3_2) } { Seq#Index(s_1, i_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_3_2) && Heap[Seq#Index(s_1, i_3_2), f_7] > 0 ==> Heap[Seq#Index(s_1, i_3_2), f_7] > 5
    );
    assume state(Heap, Mask);
    assume Seq#Contains(s_1, x);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [0..|s|)) }
  //     { s[i] }
  //     (i in [0..|s|)) && s[i].f > 5 ==> acc(s[i].f, write)) -- test2.vpr@37.3--37.70
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) && s[i].f > 5 ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_11)) {
          assert {:msg "  Exhale might fail. Index s[i] into s might be negative. (test2.vpr@37.10--37.70) [187072]"}
            i_11 >= 0;
          assert {:msg "  Exhale might fail. Index s[i] into s might exceed sequence length. (test2.vpr@37.10--37.70) [187073]"}
            i_11 < Seq#Length(s_1);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access s[i].f (test2.vpr@37.10--37.70) [187074]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(s_1, i_11), f_7);
        }
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_11) && Heap[Seq#Index(s_1, i_11), f_7] > 5) {
          assert {:msg "  Exhale might fail. Index s[i] into s might be negative. (test2.vpr@37.10--37.70) [187075]"}
            i_11 >= 0;
          assert {:msg "  Exhale might fail. Index s[i] into s might exceed sequence length. (test2.vpr@37.10--37.70) [187076]"}
            i_11 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver s[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource s[i].f might not be injective. (test2.vpr@37.10--37.70) [187078]"}
        (forall i_5_1: int, i_5_2: int ::
        { neverTriggered10(i_5_1), neverTriggered10(i_5_2) }
        (((i_5_1 != i_5_2 && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) && Heap[Seq#Index(s_1, i_5_1), f_7] > 5)) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_2) && Heap[Seq#Index(s_1, i_5_2), f_7] > 5)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_5_1) != Seq#Index(s_1, i_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access s[i].f (test2.vpr@37.10--37.70) [187079]"}
        (forall i_5_1: int ::
        { Seq#Index(s_1, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) } { Seq#Index(s_1, i_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) && Heap[Seq#Index(s_1, i_5_1), f_7] > 5 ==> Mask[Seq#Index(s_1, i_5_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s[i]
      assume (forall i_5_1: int ::
        { Seq#Index(s_1, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) } { Seq#Index(s_1, i_5_1) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) && Heap[Seq#Index(s_1, i_5_1), f_7] > 5) && NoPerm < FullPerm ==> qpRange10(Seq#Index(s_1, i_5_1)) && invRecv10(Seq#Index(s_1, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv10(o_9)) && Heap[Seq#Index(s_1, invRecv10(o_9)), f_7] > 5) && (NoPerm < FullPerm && qpRange10(o_9)) ==> Seq#Index(s_1, invRecv10(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv10(o_9)) && Heap[Seq#Index(s_1, invRecv10(o_9)), f_7] > 5) && (NoPerm < FullPerm && qpRange10(o_9)) ==> Seq#Index(s_1, invRecv10(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv10(o_9)) && Heap[Seq#Index(s_1, invRecv10(o_9)), f_7] > 5) && (NoPerm < FullPerm && qpRange10(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == old(x.f) -- test2.vpr@40.3--40.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (test2.vpr@40.10--40.25) [187080]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (test2.vpr@40.10--40.25) [187081]"}
        HasDirectPerm(oldMask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (test2.vpr@40.10--40.25) [187082]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(s_1: (Seq Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var i1_27: int;
  var i2_18: int;
  var i_13: int;
  var QPMask: MaskType;
  var i_23: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var v_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_24: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|s|)), (i2 in [0..|s|)) } { (i1 in [0..|s|)), s[i2] } { (i2 in [0..|s|)), s[i1] } { s[i1], s[i2] } (i1 in [0..|s|)) && ((i2 in [0..|s|)) && i1 != i2) ==> s[i1] != s[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_27) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_18) && i1_27 != i2_18)) {
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might be negative. (test2.vpr@44.12--44.102) [187083]"}
            i1_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might exceed sequence length. (test2.vpr@44.12--44.102) [187084]"}
            i1_27 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might be negative. (test2.vpr@44.12--44.102) [187085]"}
            i2_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i2] into s might exceed sequence length. (test2.vpr@44.12--44.102) [187086]"}
            i2_18 < Seq#Length(s_1);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1), Seq#Index(s_1, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1), Seq#Index(s_1, i1_1) } { Seq#Index(s_1, i1_1), Seq#Index(s_1, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i2_1) && i1_1 != i2_1) ==> Seq#Index(s_1, i1_1) != Seq#Index(s_1, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_13)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@45.12--45.58) [187087]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@45.12--45.58) [187088]"}
            i_13 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (test2.vpr@45.12--45.58) [187089]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_1) != Seq#Index(s_1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) && NoPerm < FullPerm ==> qpRange11(Seq#Index(s_1, i_1)) && invRecv11(Seq#Index(s_1, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9) ==> Seq#Index(s_1, invRecv11(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(s_1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) } { Seq#Index(s_1, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_1) ==> Seq#Index(s_1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(s_1, invRecv11(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) && s[i].f > 0 ==> s[i].f > 5)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_23)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@46.12--46.71) [187090]"}
            i_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@46.12--46.71) [187091]"}
            i_23 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s[i].f (test2.vpr@46.12--46.71) [187092]"}
            HasDirectPerm(Mask, Seq#Index(s_1, i_23), f_7);
        }
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_23) && Heap[Seq#Index(s_1, i_23), f_7] > 0) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (test2.vpr@46.12--46.71) [187093]"}
            i_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (test2.vpr@46.12--46.71) [187094]"}
            i_23 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s[i].f (test2.vpr@46.12--46.71) [187095]"}
            HasDirectPerm(Mask, Seq#Index(s_1, i_23), f_7);
        }
        assume false;
      }
    assume (forall i_3_2: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_3_2) } { Seq#Index(s_1, i_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_3_2) && Heap[Seq#Index(s_1, i_3_2), f_7] > 0 ==> Heap[Seq#Index(s_1, i_3_2), f_7] > 5
    );
    assume state(Heap, Mask);
    assume Seq#Contains(s_1, x);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: v := x.f -- test2.vpr@49.3--49.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (test2.vpr@49.3--49.20) [187096]"}
        HasDirectPerm(Mask, x, f_7);
    v_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [0..|s|)) }
  //     { s[i] }
  //     (i in [0..|s|)) && s[i].f > 5 ==> acc(s[i].f, write)) -- test2.vpr@50.3--50.70
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|s|)) } { s[i] } (i in [0..|s|)) && s[i].f > 5 ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_24)) {
          assert {:msg "  Exhale might fail. Index s[i] into s might be negative. (test2.vpr@50.10--50.70) [187097]"}
            i_24 >= 0;
          assert {:msg "  Exhale might fail. Index s[i] into s might exceed sequence length. (test2.vpr@50.10--50.70) [187098]"}
            i_24 < Seq#Length(s_1);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access s[i].f (test2.vpr@50.10--50.70) [187099]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(s_1, i_24), f_7);
        }
        if (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_24) && Heap[Seq#Index(s_1, i_24), f_7] > 5) {
          assert {:msg "  Exhale might fail. Index s[i] into s might be negative. (test2.vpr@50.10--50.70) [187100]"}
            i_24 >= 0;
          assert {:msg "  Exhale might fail. Index s[i] into s might exceed sequence length. (test2.vpr@50.10--50.70) [187101]"}
            i_24 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver s[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource s[i].f might not be injective. (test2.vpr@50.10--50.70) [187103]"}
        (forall i_5_1: int, i_5_2: int ::
        { neverTriggered12(i_5_1), neverTriggered12(i_5_2) }
        (((i_5_1 != i_5_2 && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) && Heap[Seq#Index(s_1, i_5_1), f_7] > 5)) && (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_2) && Heap[Seq#Index(s_1, i_5_2), f_7] > 5)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_5_1) != Seq#Index(s_1, i_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access s[i].f (test2.vpr@50.10--50.70) [187104]"}
        (forall i_5_1: int ::
        { Seq#Index(s_1, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) } { Seq#Index(s_1, i_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) && Heap[Seq#Index(s_1, i_5_1), f_7] > 5 ==> Mask[Seq#Index(s_1, i_5_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s[i]
      assume (forall i_5_1: int ::
        { Seq#Index(s_1, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(s_1)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) } { Seq#Index(s_1, i_5_1) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), i_5_1) && Heap[Seq#Index(s_1, i_5_1), f_7] > 5) && NoPerm < FullPerm ==> qpRange12(Seq#Index(s_1, i_5_1)) && invRecv12(Seq#Index(s_1, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv12(o_9)) && Heap[Seq#Index(s_1, invRecv12(o_9)), f_7] > 5) && (NoPerm < FullPerm && qpRange12(o_9)) ==> Seq#Index(s_1, invRecv12(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv12(o_9)) && Heap[Seq#Index(s_1, invRecv12(o_9)), f_7] > 5) && (NoPerm < FullPerm && qpRange12(o_9)) ==> Seq#Index(s_1, invRecv12(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(s_1)), invRecv12(o_9)) && Heap[Seq#Index(s_1, invRecv12(o_9)), f_7] > 5) && (NoPerm < FullPerm && qpRange12(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (v <= 0) -- test2.vpr@52.3--54.4
    if (v_2 <= 0) {
      
      // -- Translating statement: assert x.f == old(x.f) -- test2.vpr@53.5--53.27
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of x.f == old(x.f)
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (test2.vpr@53.12--53.27) [187105]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (test2.vpr@53.12--53.27) [187106]"}
            HasDirectPerm(oldMask, x, f_7);
        assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (test2.vpr@53.12--53.27) [187107]"}
          Heap[x, f_7] == oldHeap[x, f_7];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}