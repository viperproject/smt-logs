// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:57
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/exhale.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/exhale-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(x_1: Ref): bool;
function  neverTriggered2(x_4_2: Ref): bool;
function  neverTriggered3(x_6: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_4_2: Ref): bool;
function  neverTriggered6(x_6: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_4_2: Ref): bool;
function  neverTriggered9(x_1: Ref): bool;
function  neverTriggered10(x_1: Ref): bool;
function  neverTriggered11(x_1: Ref): bool;
function  neverTriggered12(x_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(a_2: Ref): Ref;
function  invRecv2(a_1_1: Ref): Ref;
function  invRecv3(a_2_2: Ref): Ref;
function  invRecv4(a_2: Ref): Ref;
function  invRecv5(a_1_1: Ref): Ref;
function  invRecv6(a_2_2: Ref): Ref;
function  invRecv7(a_2: Ref): Ref;
function  invRecv8(a_1_1: Ref): Ref;
function  invRecv9(a_2: Ref): Ref;
function  invRecv10(a_2: Ref): Ref;
function  invRecv11(a_2: Ref): Ref;
function  invRecv12(a_2: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(a_2: Ref): bool;
function  qpRange2(a_1_1: Ref): bool;
function  qpRange3(a_2_2: Ref): bool;
function  qpRange4(a_2: Ref): bool;
function  qpRange5(a_1_1: Ref): bool;
function  qpRange6(a_2_2: Ref): bool;
function  qpRange7(a_2: Ref): bool;
function  qpRange8(a_1_1: Ref): bool;
function  qpRange9(a_2: Ref): bool;
function  qpRange10(a_2: Ref): bool;
function  qpRange11(a_2: Ref): bool;
function  qpRange12(a_2: Ref): bool;

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
// Translation of predicate pred1
// ==================================================

type PredicateType_pred1;
function  pred1(a_2: Ref): Field PredicateType_pred1 FrameType;
function  pred1#sm(a_2: Ref): Field PredicateType_pred1 PMaskType;
axiom (forall a_2: Ref ::
  { PredicateMaskField(pred1(a_2)) }
  PredicateMaskField(pred1(a_2)) == pred1#sm(a_2)
);
axiom (forall a_2: Ref ::
  { pred1(a_2) }
  IsPredicateField(pred1(a_2))
);
axiom (forall a_2: Ref ::
  { pred1(a_2) }
  getPredWandId(pred1(a_2)) == 0
);
function  pred1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: Ref, a2: Ref ::
  { pred1(a_2), pred1(a2) }
  pred1(a_2) == pred1(a2) ==> a_2 == a2
);
axiom (forall a_2: Ref, a2: Ref ::
  { pred1#sm(a_2), pred1#sm(a2) }
  pred1#sm(a_2) == pred1#sm(a2) ==> a_2 == a2
);

axiom (forall Heap: HeapType, a_2: Ref ::
  { pred1#trigger(Heap, pred1(a_2)) }
  pred1#everUsed(pred1(a_2))
);

procedure pred1#definedness(a_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[a_2, $allocated];
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate pred2
// ==================================================

type PredicateType_pred2;
function  pred2(a_2: Ref, p_1: Perm): Field PredicateType_pred2 FrameType;
function  pred2#sm(a_2: Ref, p_1: Perm): Field PredicateType_pred2 PMaskType;
axiom (forall a_2: Ref, p_1: Perm ::
  { PredicateMaskField(pred2(a_2, p_1)) }
  PredicateMaskField(pred2(a_2, p_1)) == pred2#sm(a_2, p_1)
);
axiom (forall a_2: Ref, p_1: Perm ::
  { pred2(a_2, p_1) }
  IsPredicateField(pred2(a_2, p_1))
);
axiom (forall a_2: Ref, p_1: Perm ::
  { pred2(a_2, p_1) }
  getPredWandId(pred2(a_2, p_1)) == 1
);
function  pred2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: Ref, p_1: Perm, a2: Ref, p2_1: Perm ::
  { pred2(a_2, p_1), pred2(a2, p2_1) }
  pred2(a_2, p_1) == pred2(a2, p2_1) ==> a_2 == a2 && p_1 == p2_1
);
axiom (forall a_2: Ref, p_1: Perm, a2: Ref, p2_1: Perm ::
  { pred2#sm(a_2, p_1), pred2#sm(a2, p2_1) }
  pred2#sm(a_2, p_1) == pred2#sm(a2, p2_1) ==> a_2 == a2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, a_2: Ref, p_1: Perm ::
  { pred2#trigger(Heap, pred2(a_2, p_1)) }
  pred2#everUsed(pred2(a_2, p_1))
);

procedure pred2#definedness(a_2: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[a_2, $allocated];
    assume NoPerm <= p_1;
    perm := p_1;
    assert {:msg "  Predicate might not be well-formed. Fraction p might be negative. (exhale.vpr@10.1--12.2) [203247]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> a_2 != null;
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, pred1(x):=Mask[null, pred1(x)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, pred1(x):=PostMask[null, pred1(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(pred1(x), write) -- exhale.vpr@18.3--18.18
    assume pred1#trigger(Heap, pred1(x));
    assume Heap[null, pred1(x)] == FrameFragment(Heap[x, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(x) might fail. There might be insufficient permission to access pred1(x) (exhale.vpr@18.3--18.18) [203250]"}
        perm <= Mask[null, pred1(x)];
    }
    Mask := Mask[null, pred1(x):=Mask[null, pred1(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(x))) {
        havoc newVersion;
        Heap := Heap[null, pred1(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x != null -- exhale.vpr@19.3--19.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion x != null might not hold. (exhale.vpr@19.10--19.19) [203252]"}
      x != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pred1(x), write) -- exhale.vpr@20.3--20.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pred1(x) might fail. There might be insufficient permission to access x.f (exhale.vpr@20.3--20.16) [203255]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, pred1(x):=Mask[null, pred1(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pred1#trigger(Heap, pred1(x));
    assume Heap[null, pred1(x)] == FrameFragment(Heap[x, f_7]);
    if (!HasDirectPerm(Mask, null, pred1(x))) {
      Heap := Heap[null, pred1#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pred1(x):=freshVersion];
    }
    Heap := Heap[null, pred1#sm(x):=Heap[null, pred1#sm(x)][x, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access pred1(x) (exhale.vpr@16.11--16.24) [203257]"}
        perm <= Mask[null, pred1(x)];
    }
    Mask := Mask[null, pred1(x):=Mask[null, pred1(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test01_qp
// ==================================================

procedure test01_qp(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, y);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@25.13--25.55) [203258]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered1(x_1), neverTriggered1(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred1(x_1)] } { Mask[null, pred1(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv1(x_1) == x_1 && qpRange1(x_1)
      );
      assume (forall a_2: Ref ::
        { invRecv1(a_2) }
        (Seq#Contains(xs, invRecv1(a_2)) && NoPerm < FullPerm) && qpRange1(a_2) ==> invRecv1(a_2) == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv1(a_2)) && NoPerm < FullPerm) && qpRange1(a_2) ==> (NoPerm < FullPerm ==> invRecv1(a_2) == a_2) && QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv1(a_2)) && NoPerm < FullPerm) && qpRange1(a_2)) ==> QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)]
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@26.13--26.55) [203259]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered2(x_4_2), neverTriggered2(x_4_3) }
        (((x_4_2 != x_4_3 && Seq#Contains(xs, x_4_2)) && Seq#Contains(xs, x_4_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
      );
    
    // -- Define Inverse Function
      assume (forall x_4_2: Ref ::
        { PostHeap[null, pred1(x_4_2)] } { PostMask[null, pred1(x_4_2)] } { Seq#ContainsTrigger(xs, x_4_2) } { Seq#Contains(xs, x_4_2) }
        Seq#Contains(xs, x_4_2) && NoPerm < FullPerm ==> invRecv2(x_4_2) == x_4_2 && qpRange2(x_4_2)
      );
      assume (forall a_1_1: Ref ::
        { invRecv2(a_1_1) }
        (Seq#Contains(xs, invRecv2(a_1_1)) && NoPerm < FullPerm) && qpRange2(a_1_1) ==> invRecv2(a_1_1) == a_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        (Seq#Contains(xs, invRecv2(a_1_1)) && NoPerm < FullPerm) && qpRange2(a_1_1) ==> (NoPerm < FullPerm ==> invRecv2(a_1_1) == a_1_1) && QPMask[null, pred1(a_1_1)] == PostMask[null, pred1(a_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        !((Seq#Contains(xs, invRecv2(a_1_1)) && NoPerm < FullPerm) && qpRange2(a_1_1)) ==> QPMask[null, pred1(a_1_1)] == PostMask[null, pred1(a_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@28.4--28.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@28.4--28.19) [203262]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y != null -- exhale.vpr@29.4--29.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion y != null might not hold. (exhale.vpr@29.11--29.20) [203264]"}
      y != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pred1(y), write) -- exhale.vpr@30.4--30.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pred1(y) might fail. There might be insufficient permission to access y.f (exhale.vpr@30.4--30.17) [203267]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    if (!HasDirectPerm(Mask, null, pred1(y))) {
      Heap := Heap[null, pred1#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pred1(y):=freshVersion];
    }
    Heap := Heap[null, pred1#sm(y):=Heap[null, pred1#sm(y)][y, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@26.13--26.55) [203269]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered3(x_6), neverTriggered3(x_6_1) }
        (((x_6 != x_6_1 && Seq#Contains(xs, x_6)) && Seq#Contains(xs, x_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01_qp might not hold. There might be insufficient permission to access pred1(x) (exhale.vpr@26.13--26.55) [203270]"}
        (forall x_6: Ref ::
        { Heap[null, pred1(x_6)] } { Mask[null, pred1(x_6)] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) ==> Mask[null, pred1(x_6)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred1(x), write)
      assume (forall x_6: Ref ::
        { Heap[null, pred1(x_6)] } { Mask[null, pred1(x_6)] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) && NoPerm < FullPerm ==> invRecv3(x_6) == x_6 && qpRange3(x_6)
      );
      assume (forall a_2_2: Ref ::
        { invRecv3(a_2_2) }
        (Seq#Contains(xs, invRecv3(a_2_2)) && NoPerm < FullPerm) && qpRange3(a_2_2) ==> invRecv3(a_2_2) == a_2_2
      );
    
    // -- assume permission updates
      assume (forall a_2_2: Ref ::
        { QPMask[null, pred1(a_2_2)] }
        (Seq#Contains(xs, invRecv3(a_2_2)) && NoPerm < FullPerm) && qpRange3(a_2_2) ==> invRecv3(a_2_2) == a_2_2 && QPMask[null, pred1(a_2_2)] == Mask[null, pred1(a_2_2)] - FullPerm
      );
      assume (forall a_2_2: Ref ::
        { QPMask[null, pred1(a_2_2)] }
        !((Seq#Contains(xs, invRecv3(a_2_2)) && NoPerm < FullPerm) && qpRange3(a_2_2)) ==> QPMask[null, pred1(a_2_2)] == Mask[null, pred1(a_2_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02_qp
// ==================================================

procedure test02_qp(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, y);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@35.13--35.55) [203271]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered4(x_1), neverTriggered4(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred1(x_1)] } { Mask[null, pred1(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv4(x_1) == x_1 && qpRange4(x_1)
      );
      assume (forall a_2: Ref ::
        { invRecv4(a_2) }
        (Seq#Contains(xs, invRecv4(a_2)) && NoPerm < FullPerm) && qpRange4(a_2) ==> invRecv4(a_2) == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv4(a_2)) && NoPerm < FullPerm) && qpRange4(a_2) ==> (NoPerm < FullPerm ==> invRecv4(a_2) == a_2) && QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv4(a_2)) && NoPerm < FullPerm) && qpRange4(a_2)) ==> QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)]
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && x != y ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@36.13--36.63) [203272]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered5(x_4_2), neverTriggered5(x_4_3) }
        (((x_4_2 != x_4_3 && (Seq#Contains(xs, x_4_2) && x_4_2 != y)) && (Seq#Contains(xs, x_4_3) && x_4_3 != y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
      );
    
    // -- Define Inverse Function
      assume (forall x_4_2: Ref ::
        { PostHeap[null, pred1(x_4_2)] } { PostMask[null, pred1(x_4_2)] } { Seq#ContainsTrigger(xs, x_4_2) } { Seq#Contains(xs, x_4_2) }
        (Seq#Contains(xs, x_4_2) && x_4_2 != y) && NoPerm < FullPerm ==> invRecv5(x_4_2) == x_4_2 && qpRange5(x_4_2)
      );
      assume (forall a_1_1: Ref ::
        { invRecv5(a_1_1) }
        ((Seq#Contains(xs, invRecv5(a_1_1)) && invRecv5(a_1_1) != y) && NoPerm < FullPerm) && qpRange5(a_1_1) ==> invRecv5(a_1_1) == a_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        ((Seq#Contains(xs, invRecv5(a_1_1)) && invRecv5(a_1_1) != y) && NoPerm < FullPerm) && qpRange5(a_1_1) ==> (NoPerm < FullPerm ==> invRecv5(a_1_1) == a_1_1) && QPMask[null, pred1(a_1_1)] == PostMask[null, pred1(a_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        !(((Seq#Contains(xs, invRecv5(a_1_1)) && invRecv5(a_1_1) != y) && NoPerm < FullPerm) && qpRange5(a_1_1)) ==> QPMask[null, pred1(a_1_1)] == PostMask[null, pred1(a_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, pred1(y):=PostMask[null, pred1(y)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@39.4--39.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@39.4--39.19) [203275]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y != null -- exhale.vpr@40.4--40.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion y != null might not hold. (exhale.vpr@40.11--40.20) [203277]"}
      y != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pred1(y), write) -- exhale.vpr@41.4--41.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pred1(y) might fail. There might be insufficient permission to access y.f (exhale.vpr@41.4--41.17) [203280]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    if (!HasDirectPerm(Mask, null, pred1(y))) {
      Heap := Heap[null, pred1#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pred1(y):=freshVersion];
    }
    Heap := Heap[null, pred1#sm(y):=Heap[null, pred1#sm(y)][y, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@36.13--36.63) [203282]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered6(x_6), neverTriggered6(x_6_1) }
        (((x_6 != x_6_1 && (Seq#Contains(xs, x_6) && x_6 != y)) && (Seq#Contains(xs, x_6_1) && x_6_1 != y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02_qp might not hold. There might be insufficient permission to access pred1(x) (exhale.vpr@36.13--36.63) [203283]"}
        (forall x_6: Ref ::
        { Heap[null, pred1(x_6)] } { Mask[null, pred1(x_6)] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) && x_6 != y ==> Mask[null, pred1(x_6)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred1(x), write)
      assume (forall x_6: Ref ::
        { Heap[null, pred1(x_6)] } { Mask[null, pred1(x_6)] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        (Seq#Contains(xs, x_6) && x_6 != y) && NoPerm < FullPerm ==> invRecv6(x_6) == x_6 && qpRange6(x_6)
      );
      assume (forall a_2_2: Ref ::
        { invRecv6(a_2_2) }
        ((Seq#Contains(xs, invRecv6(a_2_2)) && invRecv6(a_2_2) != y) && NoPerm < FullPerm) && qpRange6(a_2_2) ==> invRecv6(a_2_2) == a_2_2
      );
    
    // -- assume permission updates
      assume (forall a_2_2: Ref ::
        { QPMask[null, pred1(a_2_2)] }
        ((Seq#Contains(xs, invRecv6(a_2_2)) && invRecv6(a_2_2) != y) && NoPerm < FullPerm) && qpRange6(a_2_2) ==> invRecv6(a_2_2) == a_2_2 && QPMask[null, pred1(a_2_2)] == Mask[null, pred1(a_2_2)] - FullPerm
      );
      assume (forall a_2_2: Ref ::
        { QPMask[null, pred1(a_2_2)] }
        !(((Seq#Contains(xs, invRecv6(a_2_2)) && invRecv6(a_2_2) != y) && NoPerm < FullPerm) && qpRange6(a_2_2)) ==> QPMask[null, pred1(a_2_2)] == Mask[null, pred1(a_2_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test02_qp might not hold. There might be insufficient permission to access pred1(y) (exhale.vpr@37.13--37.26) [203284]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03_qp
// ==================================================

procedure test03_qp(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, y);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@46.13--46.55) [203285]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered7(x_1), neverTriggered7(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred1(x_1)] } { Mask[null, pred1(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv7(x_1) == x_1 && qpRange7(x_1)
      );
      assume (forall a_2: Ref ::
        { invRecv7(a_2) }
        (Seq#Contains(xs, invRecv7(a_2)) && NoPerm < FullPerm) && qpRange7(a_2) ==> invRecv7(a_2) == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv7(a_2)) && NoPerm < FullPerm) && qpRange7(a_2) ==> (NoPerm < FullPerm ==> invRecv7(a_2) == a_2) && QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv7(a_2)) && NoPerm < FullPerm) && qpRange7(a_2)) ==> QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@48.4--48.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@48.4--48.19) [203288]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y != null -- exhale.vpr@49.4--49.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion y != null might not hold. (exhale.vpr@49.11--49.20) [203290]"}
      y != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pred1(y), write) -- exhale.vpr@50.4--50.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pred1(y) might fail. There might be insufficient permission to access y.f (exhale.vpr@50.4--50.17) [203293]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    if (!HasDirectPerm(Mask, null, pred1(y))) {
      Heap := Heap[null, pred1#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pred1(y):=freshVersion];
    }
    Heap := Heap[null, pred1#sm(y):=Heap[null, pred1#sm(y)][y, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(pred1(y), write) -- exhale.vpr@51.4--51.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@51.11--51.24) [203296]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write)) -- exhale.vpr@54.4--54.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource pred1(x) might not be injective. (exhale.vpr@54.11--54.53) [203298]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered8(x_4_2), neverTriggered8(x_4_3) }
        (((x_4_2 != x_4_3 && Seq#Contains(xs, x_4_2)) && Seq#Contains(xs, x_4_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access pred1(x) (exhale.vpr@54.11--54.53) [203299]"}
        (forall x_4_2: Ref ::
        { Heap[null, pred1(x_4_2)] } { Mask[null, pred1(x_4_2)] } { Seq#ContainsTrigger(xs, x_4_2) } { Seq#Contains(xs, x_4_2) }
        Seq#Contains(xs, x_4_2) ==> Mask[null, pred1(x_4_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred1(x), write)
      assume (forall x_4_2: Ref ::
        { Heap[null, pred1(x_4_2)] } { Mask[null, pred1(x_4_2)] } { Seq#ContainsTrigger(xs, x_4_2) } { Seq#Contains(xs, x_4_2) }
        Seq#Contains(xs, x_4_2) && NoPerm < FullPerm ==> invRecv8(x_4_2) == x_4_2 && qpRange8(x_4_2)
      );
      assume (forall a_1_1: Ref ::
        { invRecv8(a_1_1) }
        (Seq#Contains(xs, invRecv8(a_1_1)) && NoPerm < FullPerm) && qpRange8(a_1_1) ==> invRecv8(a_1_1) == a_1_1
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        (Seq#Contains(xs, invRecv8(a_1_1)) && NoPerm < FullPerm) && qpRange8(a_1_1) ==> invRecv8(a_1_1) == a_1_1 && QPMask[null, pred1(a_1_1)] == Mask[null, pred1(a_1_1)] - FullPerm
      );
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        !((Seq#Contains(xs, invRecv8(a_1_1)) && NoPerm < FullPerm) && qpRange8(a_1_1)) ==> QPMask[null, pred1(a_1_1)] == Mask[null, pred1(a_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04_qp
// ==================================================

procedure test04_qp(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, y);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@59.13--59.55) [203300]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered9(x_1), neverTriggered9(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred1(x_1)] } { Mask[null, pred1(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv9(x_1) == x_1 && qpRange9(x_1)
      );
      assume (forall a_2: Ref ::
        { invRecv9(a_2) }
        (Seq#Contains(xs, invRecv9(a_2)) && NoPerm < FullPerm) && qpRange9(a_2) ==> invRecv9(a_2) == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv9(a_2)) && NoPerm < FullPerm) && qpRange9(a_2) ==> (NoPerm < FullPerm ==> invRecv9(a_2) == a_2) && QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv9(a_2)) && NoPerm < FullPerm) && qpRange9(a_2)) ==> QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@61.4--61.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@61.4--61.19) [203303]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y != null -- exhale.vpr@62.4--62.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion y != null might not hold. (exhale.vpr@62.11--62.20) [203305]"}
      y != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pred1(y), write) -- exhale.vpr@63.4--63.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pred1(y) might fail. There might be insufficient permission to access y.f (exhale.vpr@63.4--63.17) [203308]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    if (!HasDirectPerm(Mask, null, pred1(y))) {
      Heap := Heap[null, pred1#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pred1(y):=freshVersion];
    }
    Heap := Heap[null, pred1#sm(y):=Heap[null, pred1#sm(y)][y, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(pred1(y), write) -- exhale.vpr@64.4--64.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@64.11--64.24) [203311]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@67.4--67.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@67.4--67.19) [203314]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05_qp
// ==================================================

procedure test05_qp(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, y);
    assume state(Heap, Mask);
    assume y != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@73.13--73.55) [203316]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered10(x_1), neverTriggered10(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred1(x_1)] } { Mask[null, pred1(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv10(x_1) == x_1 && qpRange10(x_1)
      );
      assume (forall a_2: Ref ::
        { invRecv10(a_2) }
        (Seq#Contains(xs, invRecv10(a_2)) && NoPerm < FullPerm) && qpRange10(a_2) ==> invRecv10(a_2) == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv10(a_2)) && NoPerm < FullPerm) && qpRange10(a_2) ==> (NoPerm < FullPerm ==> invRecv10(a_2) == a_2) && QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv10(a_2)) && NoPerm < FullPerm) && qpRange10(a_2)) ==> QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@75.4--75.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@75.4--75.19) [203319]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 1 -- exhale.vpr@76.4--76.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (exhale.vpr@76.4--76.12) [203321]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pred1(y), write) -- exhale.vpr@77.4--77.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pred1(y) might fail. There might be insufficient permission to access y.f (exhale.vpr@77.4--77.17) [203324]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    if (!HasDirectPerm(Mask, null, pred1(y))) {
      Heap := Heap[null, pred1#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pred1(y):=freshVersion];
    }
    Heap := Heap[null, pred1#sm(y):=Heap[null, pred1#sm(y)][y, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@78.4--78.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@78.4--78.19) [203328]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.f == 1 -- exhale.vpr@79.4--79.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y.f == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (exhale.vpr@79.11--79.19) [203330]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f == 1 might not hold. (exhale.vpr@79.11--79.19) [203331]"}
      Heap[y, f_7] == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pred1(y), write) -- exhale.vpr@80.4--80.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pred1(y) might fail. There might be insufficient permission to access y.f (exhale.vpr@80.4--80.17) [203334]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    if (!HasDirectPerm(Mask, null, pred1(y))) {
      Heap := Heap[null, pred1#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pred1(y):=freshVersion];
    }
    Heap := Heap[null, pred1#sm(y):=Heap[null, pred1#sm(y)][y, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(pred1(y), write) -- exhale.vpr@81.4--81.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@81.11--81.24) [203337]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@84.4--84.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@84.4--84.19) [203340]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06_qp
// ==================================================

procedure test06_qp(xs: (Seq Ref), y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, y);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@89.13--89.55) [203342]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered11(x_1), neverTriggered11(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred1(x_1)] } { Mask[null, pred1(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv11(x_1) == x_1 && qpRange11(x_1)
      );
      assume (forall a_2: Ref ::
        { invRecv11(a_2) }
        (Seq#Contains(xs, invRecv11(a_2)) && NoPerm < FullPerm) && qpRange11(a_2) ==> invRecv11(a_2) == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv11(a_2)) && NoPerm < FullPerm) && qpRange11(a_2) ==> (NoPerm < FullPerm ==> invRecv11(a_2) == a_2) && QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv11(a_2)) && NoPerm < FullPerm) && qpRange11(a_2)) ==> QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@91.4--91.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@91.4--91.19) [203345]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(pred1(z), write) -- exhale.vpr@93.4--93.19
    assume pred1#trigger(Heap, pred1(z));
    assume Heap[null, pred1(z)] == FrameFragment(Heap[z, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(z) might fail. There might be insufficient permission to access pred1(z) (exhale.vpr@93.4--93.19) [203349]"}
        perm <= Mask[null, pred1(z)];
    }
    Mask := Mask[null, pred1(z):=Mask[null, pred1(z)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(z))) {
        havoc newVersion;
        Heap := Heap[null, pred1(z):=newVersion];
      }
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07_qp
// ==================================================

procedure test07_qp(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, y);
    assume state(Heap, Mask);
    assume y != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(x) might not be injective. (exhale.vpr@100.13--100.55) [203351]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered12(x_1), neverTriggered12(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred1(x_1)] } { Mask[null, pred1(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv12(x_1) == x_1 && qpRange12(x_1)
      );
      assume (forall a_2: Ref ::
        { invRecv12(a_2) }
        (Seq#Contains(xs, invRecv12(a_2)) && NoPerm < FullPerm) && qpRange12(a_2) ==> invRecv12(a_2) == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv12(a_2)) && NoPerm < FullPerm) && qpRange12(a_2) ==> (NoPerm < FullPerm ==> invRecv12(a_2) == a_2) && QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv12(a_2)) && NoPerm < FullPerm) && qpRange12(a_2)) ==> QPMask[null, pred1(a_2)] == Mask[null, pred1(a_2)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@102.4--102.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@102.4--102.19) [203354]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 1 -- exhale.vpr@103.4--103.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (exhale.vpr@103.4--103.12) [203356]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.f == 1 -- exhale.vpr@104.4--104.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y.f == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (exhale.vpr@104.11--104.19) [203357]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f == 1 might not hold. (exhale.vpr@104.11--104.19) [203358]"}
      Heap[y, f_7] == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pred1(y), write) -- exhale.vpr@105.4--105.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pred1(y) might fail. There might be insufficient permission to access y.f (exhale.vpr@105.4--105.17) [203361]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    if (!HasDirectPerm(Mask, null, pred1(y))) {
      Heap := Heap[null, pred1#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pred1(y):=freshVersion];
    }
    Heap := Heap[null, pred1#sm(y):=Heap[null, pred1#sm(y)][y, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(pred1(y), write) -- exhale.vpr@108.4--108.19
    assume pred1#trigger(Heap, pred1(y));
    assume Heap[null, pred1(y)] == FrameFragment(Heap[y, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred1(y) might fail. There might be insufficient permission to access pred1(y) (exhale.vpr@108.4--108.19) [203365]"}
        perm <= Mask[null, pred1(y)];
    }
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred1(y))) {
        havoc newVersion;
        Heap := Heap[null, pred1(y):=newVersion];
      }
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.f == 1 -- exhale.vpr@109.4--109.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y.f == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (exhale.vpr@109.11--109.19) [203367]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f == 1 might not hold. (exhale.vpr@109.11--109.19) [203368]"}
      Heap[y, f_7] == 1;
    assume state(Heap, Mask);
}