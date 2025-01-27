// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:31
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0314d.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0314d-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_4: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_4, f_9] }
  Heap[o_4, $allocated] ==> Heap[Heap[o_4, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_15: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_15] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_15) ==> Heap[o_23, f_15] == ExhaleHeap[o_23, f_15]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10), ExhaleHeap[null, WandMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> Heap[null, WandMaskField(pm_f_10)] == ExhaleHeap[null, WandMaskField(pm_f_10)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_4: Ref, f_25: (Field A B), v: B ::
  { Heap[o_4, f_25:=v] }
  succHeap(Heap, Heap[o_4, f_25:=v])
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

function  neverTriggered1(i_3_2: int): bool;
function  neverTriggered2(i_5_1: int): bool;
function  neverTriggered3(i_7_1: int): bool;
function  neverTriggered4(i_9_1: int): bool;
function  neverTriggered5(i_3_2: int): bool;
function  neverTriggered6(i_5_1: int): bool;
function  neverTriggered7(i_7_1: int): bool;
function  neverTriggered8(i_9_1: int): bool;
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

procedure test01(xs: (Seq Ref), p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i_18: int;
  var j_14: int;
  var i_3: int;
  var QPMask: MaskType;
  var k: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_4: int;
  var ExhaleHeap: HeapType;
  var i_14: int;
  var i_5: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale none < p && p < write -- 0314d.vpr@7.3--7.31
    assume NoPerm < p_1;
    assume p_1 < FullPerm;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- 0314d.vpr@8.3--8.102
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_18 >= 0 && (i_18 < Seq#Length(xs) && (j_14 >= 0 && (j_14 < Seq#Length(xs) && i_18 != j_14)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@8.10--8.102) [57396]"}
            i_18 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@8.10--8.102) [57397]"}
            i_18 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (0314d.vpr@8.10--8.102) [57398]"}
            j_14 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (0314d.vpr@8.10--8.102) [57399]"}
            j_14 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { xs[i].f }
  //     0 <= i && i < |xs| ==> acc(xs[i].f, p)) -- 0314d.vpr@9.3--9.75
    
    // -- Check definedness of (forall i: Int :: { xs[i].f } 0 <= i && i < |xs| ==> acc(xs[i].f, p))
      if (*) {
        if (0 <= i_3 && i_3 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@9.10--9.75) [57400]"}
            i_3 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@9.10--9.75) [57401]"}
            i_3 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (0314d.vpr@9.10--9.75) [57402]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < Seq#Length(xs))) && (0 <= i_3_3 && i_3_3 < Seq#Length(xs))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(xs, i_3_2) != Seq#Index(xs, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Heap[Seq#Index(xs, i_3_2), f_7] }
        (0 <= i_3_2 && i_3_2 < Seq#Length(xs)) && NoPerm < p_1 ==> qpRange1(Seq#Index(xs, i_3_2)) && invRecv1(Seq#Index(xs, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < Seq#Length(xs)) && NoPerm < p_1) && qpRange1(o_9) ==> Seq#Index(xs, invRecv1(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction p might be negative. (0314d.vpr@9.10--9.75) [57403]"}
      (forall i_3_2: int ::
      { Seq#Index(xs, i_3_2) } { Heap[Seq#Index(xs, i_3_2), f_7] }
      0 <= i_3_2 && i_3_2 < Seq#Length(xs) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Heap[Seq#Index(xs, i_3_2), f_7] }
        (0 <= i_3_2 && i_3_2 < Seq#Length(xs)) && p_1 > NoPerm ==> Seq#Index(xs, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv1(o_9) && invRecv1(o_9) < Seq#Length(xs)) && NoPerm < p_1) && qpRange1(o_9) ==> (NoPerm < p_1 ==> Seq#Index(xs, invRecv1(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < Seq#Length(xs)) && NoPerm < p_1) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= k -- 0314d.vpr@12.10--12.16
    assume 0 <= k;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale k < |xs| -- 0314d.vpr@12.20--12.28
    assume k < Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { xs[i].f }
  //     k <= i && i < |xs| ==> acc(xs[i].f, p / 2)) -- 0314d.vpr@14.3--14.77
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { xs[i].f } k <= i && i < |xs| ==> acc(xs[i].f, p / 2))
      if (*) {
        if (k <= i_4 && i_4 < Seq#Length(xs)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@14.10--14.77) [57404]"}
            i_4 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@14.10--14.77) [57405]"}
            i_4 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction p / 2 might be negative. (0314d.vpr@14.10--14.77) [57406]"}
        (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Heap[Seq#Index(xs, i_5_1), f_7] }
        (k <= i_5_1 && i_5_1 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, i_5_1), f_7]) ==> p_1 / 2 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (0314d.vpr@14.10--14.77) [57407]"}
        (forall i_5_1: int, i_5_2: int ::
        { neverTriggered2(i_5_1), neverTriggered2(i_5_2) }
        (((i_5_1 != i_5_2 && (k <= i_5_1 && i_5_1 < Seq#Length(xs))) && (k <= i_5_2 && i_5_2 < Seq#Length(xs))) && NoPerm < p_1 / 2) && NoPerm < p_1 / 2 ==> Seq#Index(xs, i_5_1) != Seq#Index(xs, i_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (0314d.vpr@14.10--14.77) [57408]"}
        (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Heap[Seq#Index(xs, i_5_1), f_7] }
        k <= i_5_1 && i_5_1 < Seq#Length(xs) ==> Mask[Seq#Index(xs, i_5_1), f_7] >= p_1 / 2
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Heap[Seq#Index(xs, i_5_1), f_7] }
        (k <= i_5_1 && i_5_1 < Seq#Length(xs)) && NoPerm < p_1 / 2 ==> qpRange2(Seq#Index(xs, i_5_1)) && invRecv2(Seq#Index(xs, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (k <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && (NoPerm < p_1 / 2 && qpRange2(o_9)) ==> Seq#Index(xs, invRecv2(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((k <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && (NoPerm < p_1 / 2 && qpRange2(o_9)) ==> Seq#Index(xs, invRecv2(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1 / 2) && (!((k <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && (NoPerm < p_1 / 2 && qpRange2(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { xs[i].f }
  //     k <= i && i < |xs| ==> acc(xs[i].f, p / 2)) -- 0314d.vpr@15.3--15.77
    
    // -- Check definedness of (forall i: Int :: { xs[i].f } k <= i && i < |xs| ==> acc(xs[i].f, p / 2))
      if (*) {
        if (k <= i_14 && i_14 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@15.10--15.77) [57409]"}
            i_14 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@15.10--15.77) [57410]"}
            i_14 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (0314d.vpr@15.10--15.77) [57411]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (k <= i_7_1 && i_7_1 < Seq#Length(xs))) && (k <= i_7_2 && i_7_2 < Seq#Length(xs))) && NoPerm < p_1 / 2) && NoPerm < p_1 / 2 ==> Seq#Index(xs, i_7_1) != Seq#Index(xs, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(xs, i_7_1) } { Heap[Seq#Index(xs, i_7_1), f_7] }
        (k <= i_7_1 && i_7_1 < Seq#Length(xs)) && NoPerm < p_1 / 2 ==> qpRange3(Seq#Index(xs, i_7_1)) && invRecv3(Seq#Index(xs, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((k <= invRecv3(o_9) && invRecv3(o_9) < Seq#Length(xs)) && NoPerm < p_1 / 2) && qpRange3(o_9) ==> Seq#Index(xs, invRecv3(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction p / 2 might be negative. (0314d.vpr@15.10--15.77) [57412]"}
      (forall i_7_1: int ::
      { Seq#Index(xs, i_7_1) } { Heap[Seq#Index(xs, i_7_1), f_7] }
      k <= i_7_1 && i_7_1 < Seq#Length(xs) ==> p_1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(xs, i_7_1) } { Heap[Seq#Index(xs, i_7_1), f_7] }
        (k <= i_7_1 && i_7_1 < Seq#Length(xs)) && p_1 / 2 > NoPerm ==> Seq#Index(xs, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((k <= invRecv3(o_9) && invRecv3(o_9) < Seq#Length(xs)) && NoPerm < p_1 / 2) && qpRange3(o_9) ==> (NoPerm < p_1 / 2 ==> Seq#Index(xs, invRecv3(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1 / 2) && (!(((k <= invRecv3(o_9) && invRecv3(o_9) < Seq#Length(xs)) && NoPerm < p_1 / 2) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { xs[i].f }
  //     0 <= i && i < |xs| ==> acc(xs[i].f, p)) -- 0314d.vpr@17.3--17.75
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { xs[i].f } 0 <= i && i < |xs| ==> acc(xs[i].f, p))
      if (*) {
        if (0 <= i_5 && i_5 < Seq#Length(xs)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@17.10--17.75) [57413]"}
            i_5 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@17.10--17.75) [57414]"}
            i_5 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction p might be negative. (0314d.vpr@17.10--17.75) [57415]"}
        (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Heap[Seq#Index(xs, i_9_1), f_7] }
        (0 <= i_9_1 && i_9_1 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, i_9_1), f_7]) ==> p_1 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (0314d.vpr@17.10--17.75) [57416]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered4(i_9_1), neverTriggered4(i_9_2) }
        (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < Seq#Length(xs))) && (0 <= i_9_2 && i_9_2 < Seq#Length(xs))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(xs, i_9_1) != Seq#Index(xs, i_9_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (0314d.vpr@17.10--17.75) [57417]"}
        (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Heap[Seq#Index(xs, i_9_1), f_7] }
        0 <= i_9_1 && i_9_1 < Seq#Length(xs) ==> Mask[Seq#Index(xs, i_9_1), f_7] >= p_1
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Heap[Seq#Index(xs, i_9_1), f_7] }
        (0 <= i_9_1 && i_9_1 < Seq#Length(xs)) && NoPerm < p_1 ==> qpRange4(Seq#Index(xs, i_9_1)) && invRecv4(Seq#Index(xs, i_9_1)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(xs)) && (NoPerm < p_1 && qpRange4(o_9)) ==> Seq#Index(xs, invRecv4(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(xs)) && (NoPerm < p_1 && qpRange4(o_9)) ==> Seq#Index(xs, invRecv4(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1) && (!((0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(xs)) && (NoPerm < p_1 && qpRange4(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Seq Ref), p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i_15: int;
  var j_16: int;
  var i_7: int;
  var QPMask: MaskType;
  var k: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_21: int;
  var ExhaleHeap: HeapType;
  var i_8: int;
  var i_19: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale none < p && p < write -- 0314d.vpr@21.3--21.31
    assume NoPerm < p_1;
    assume p_1 < FullPerm;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- 0314d.vpr@22.3--22.102
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_15 >= 0 && (i_15 < Seq#Length(xs) && (j_16 >= 0 && (j_16 < Seq#Length(xs) && i_15 != j_16)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@22.10--22.102) [57418]"}
            i_15 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@22.10--22.102) [57419]"}
            i_15 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (0314d.vpr@22.10--22.102) [57420]"}
            j_16 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (0314d.vpr@22.10--22.102) [57421]"}
            j_16 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, p)) -- 0314d.vpr@23.3--23.73
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, p))
      if (*) {
        if (0 <= i_7 && i_7 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@23.10--23.73) [57422]"}
            i_7 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@23.10--23.73) [57423]"}
            i_7 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (0314d.vpr@23.10--23.73) [57424]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < Seq#Length(xs))) && (0 <= i_3_3 && i_3_3 < Seq#Length(xs))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(xs, i_3_2) != Seq#Index(xs, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Seq#Index(xs, i_3_2) }
        (0 <= i_3_2 && i_3_2 < Seq#Length(xs)) && NoPerm < p_1 ==> qpRange5(Seq#Index(xs, i_3_2)) && invRecv5(Seq#Index(xs, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        ((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < p_1) && qpRange5(o_9) ==> Seq#Index(xs, invRecv5(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction p might be negative. (0314d.vpr@23.10--23.73) [57425]"}
      (forall i_3_2: int ::
      { Seq#Index(xs, i_3_2) } { Seq#Index(xs, i_3_2) }
      0 <= i_3_2 && i_3_2 < Seq#Length(xs) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Seq#Index(xs, i_3_2) }
        (0 <= i_3_2 && i_3_2 < Seq#Length(xs)) && p_1 > NoPerm ==> Seq#Index(xs, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < p_1) && qpRange5(o_9) ==> (NoPerm < p_1 ==> Seq#Index(xs, invRecv5(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!(((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < p_1) && qpRange5(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= k -- 0314d.vpr@26.10--26.16
    assume 0 <= k;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale k < |xs| -- 0314d.vpr@26.20--26.28
    assume k < Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { xs[i] }
  //     k <= i && i < |xs| ==> acc(xs[i].f, p / 2)) -- 0314d.vpr@28.3--28.75
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { xs[i] } k <= i && i < |xs| ==> acc(xs[i].f, p / 2))
      if (*) {
        if (k <= i_21 && i_21 < Seq#Length(xs)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@28.10--28.75) [57426]"}
            i_21 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@28.10--28.75) [57427]"}
            i_21 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction p / 2 might be negative. (0314d.vpr@28.10--28.75) [57428]"}
        (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Seq#Index(xs, i_5_1) }
        (k <= i_5_1 && i_5_1 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, i_5_1), f_7]) ==> p_1 / 2 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (0314d.vpr@28.10--28.75) [57429]"}
        (forall i_5_1: int, i_5_2: int ::
        { neverTriggered6(i_5_1), neverTriggered6(i_5_2) }
        (((i_5_1 != i_5_2 && (k <= i_5_1 && i_5_1 < Seq#Length(xs))) && (k <= i_5_2 && i_5_2 < Seq#Length(xs))) && NoPerm < p_1 / 2) && NoPerm < p_1 / 2 ==> Seq#Index(xs, i_5_1) != Seq#Index(xs, i_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (0314d.vpr@28.10--28.75) [57430]"}
        (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Seq#Index(xs, i_5_1) }
        k <= i_5_1 && i_5_1 < Seq#Length(xs) ==> Mask[Seq#Index(xs, i_5_1), f_7] >= p_1 / 2
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Seq#Index(xs, i_5_1) }
        (k <= i_5_1 && i_5_1 < Seq#Length(xs)) && NoPerm < p_1 / 2 ==> qpRange6(Seq#Index(xs, i_5_1)) && invRecv6(Seq#Index(xs, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (k <= invRecv6(o_9) && invRecv6(o_9) < Seq#Length(xs)) && (NoPerm < p_1 / 2 && qpRange6(o_9)) ==> Seq#Index(xs, invRecv6(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((k <= invRecv6(o_9) && invRecv6(o_9) < Seq#Length(xs)) && (NoPerm < p_1 / 2 && qpRange6(o_9)) ==> Seq#Index(xs, invRecv6(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1 / 2) && (!((k <= invRecv6(o_9) && invRecv6(o_9) < Seq#Length(xs)) && (NoPerm < p_1 / 2 && qpRange6(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { xs[i] }
  //     k <= i && i < |xs| ==> acc(xs[i].f, p / 2)) -- 0314d.vpr@29.3--29.75
    
    // -- Check definedness of (forall i: Int :: { xs[i] } k <= i && i < |xs| ==> acc(xs[i].f, p / 2))
      if (*) {
        if (k <= i_8 && i_8 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@29.10--29.75) [57431]"}
            i_8 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@29.10--29.75) [57432]"}
            i_8 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (0314d.vpr@29.10--29.75) [57433]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (k <= i_7_1 && i_7_1 < Seq#Length(xs))) && (k <= i_7_2 && i_7_2 < Seq#Length(xs))) && NoPerm < p_1 / 2) && NoPerm < p_1 / 2 ==> Seq#Index(xs, i_7_1) != Seq#Index(xs, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(xs, i_7_1) } { Seq#Index(xs, i_7_1) }
        (k <= i_7_1 && i_7_1 < Seq#Length(xs)) && NoPerm < p_1 / 2 ==> qpRange7(Seq#Index(xs, i_7_1)) && invRecv7(Seq#Index(xs, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        ((k <= invRecv7(o_9) && invRecv7(o_9) < Seq#Length(xs)) && NoPerm < p_1 / 2) && qpRange7(o_9) ==> Seq#Index(xs, invRecv7(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction p / 2 might be negative. (0314d.vpr@29.10--29.75) [57434]"}
      (forall i_7_1: int ::
      { Seq#Index(xs, i_7_1) } { Seq#Index(xs, i_7_1) }
      k <= i_7_1 && i_7_1 < Seq#Length(xs) ==> p_1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(xs, i_7_1) } { Seq#Index(xs, i_7_1) }
        (k <= i_7_1 && i_7_1 < Seq#Length(xs)) && p_1 / 2 > NoPerm ==> Seq#Index(xs, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((k <= invRecv7(o_9) && invRecv7(o_9) < Seq#Length(xs)) && NoPerm < p_1 / 2) && qpRange7(o_9) ==> (NoPerm < p_1 / 2 ==> Seq#Index(xs, invRecv7(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1 / 2) && (!(((k <= invRecv7(o_9) && invRecv7(o_9) < Seq#Length(xs)) && NoPerm < p_1 / 2) && qpRange7(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, p)) -- 0314d.vpr@31.3--31.73
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, p))
      if (*) {
        if (0 <= i_19 && i_19 < Seq#Length(xs)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (0314d.vpr@31.10--31.73) [57435]"}
            i_19 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (0314d.vpr@31.10--31.73) [57436]"}
            i_19 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction p might be negative. (0314d.vpr@31.10--31.73) [57437]"}
        (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#Index(xs, i_9_1) }
        (0 <= i_9_1 && i_9_1 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, i_9_1), f_7]) ==> p_1 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (0314d.vpr@31.10--31.73) [57438]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered8(i_9_1), neverTriggered8(i_9_2) }
        (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < Seq#Length(xs))) && (0 <= i_9_2 && i_9_2 < Seq#Length(xs))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(xs, i_9_1) != Seq#Index(xs, i_9_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (0314d.vpr@31.10--31.73) [57439]"}
        (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#Index(xs, i_9_1) }
        0 <= i_9_1 && i_9_1 < Seq#Length(xs) ==> Mask[Seq#Index(xs, i_9_1), f_7] >= p_1
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#Index(xs, i_9_1) }
        (0 <= i_9_1 && i_9_1 < Seq#Length(xs)) && NoPerm < p_1 ==> qpRange8(Seq#Index(xs, i_9_1)) && invRecv8(Seq#Index(xs, i_9_1)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (0 <= invRecv8(o_9) && invRecv8(o_9) < Seq#Length(xs)) && (NoPerm < p_1 && qpRange8(o_9)) ==> Seq#Index(xs, invRecv8(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((0 <= invRecv8(o_9) && invRecv8(o_9) < Seq#Length(xs)) && (NoPerm < p_1 && qpRange8(o_9)) ==> Seq#Index(xs, invRecv8(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1) && (!((0 <= invRecv8(o_9) && invRecv8(o_9) < Seq#Length(xs)) && (NoPerm < p_1 && qpRange8(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
}