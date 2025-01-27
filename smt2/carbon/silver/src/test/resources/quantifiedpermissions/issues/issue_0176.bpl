// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:37:13
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0176.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0176-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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

function  neverTriggered1(j: int): bool;
function  neverTriggered2(j_4_1: int): bool;
function  neverTriggered3(j_7_1: int): bool;
function  neverTriggered4(j_9_1: int): bool;
function  neverTriggered5(j_12_2: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;

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

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method main
// ==================================================

procedure main() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: Ref;
  var v_2: (Seq Ref);
  var res: int;
  var i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_9: int;
  var i2: int;
  var QPMask: MaskType;
  var j_1: int;
  var ExhaleHeap: HeapType;
  var i1_10: int;
  var i2_12: int;
  var j_15: int;
  var j_12: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var freshObj: Ref;
  var i1_5_2: int;
  var i2_5_1: int;
  var j_10_2: int;
  var j_13: int;
  var j_15_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[tmp, $allocated];
  
  // -- Translating statement: v := Seq[Ref]() -- issue_0176.vpr@7.3--7.32
    v_2 := (Seq#Empty(): Seq Ref);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := 0 -- issue_0176.vpr@9.3--9.20
    res := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: i := 0 -- issue_0176.vpr@12.3--12.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < 10) -- issue_0176.vpr@14.3--25.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant i <= 10 might not hold on entry. Assertion i <= 10 might not hold. (issue_0176.vpr@15.15--15.22) [168638]"}
          i <= 10;
        assert {:msg "  Loop invariant |v| == i might not hold on entry. Assertion |v| == i might not hold. (issue_0176.vpr@16.15--16.23) [168639]"}
          Seq#Length(v_2) == i;
        if (*) {
          if (Seq#Contains(Seq#Range(0, i), i1_9) && (Seq#Contains(Seq#Range(0, i), i2) && i1_9 != i2)) {
            assert {:msg "  Loop invariant (forall i1: Int, i2: Int :: { (i1 in [0..i)), (i2 in [0..i)) } { (i1 in [0..i)), v[i2] } { (i2 in [0..i)), v[i1] } { v[i1], v[i2] } (i1 in [0..i)) && ((i2 in [0..i)) && i1 != i2) ==> v[i1] != v[i2]) might not hold on entry. Assertion v[i1] != v[i2] might not hold. (issue_0176.vpr@17.15--17.101) [168640]"}
              Seq#Index(v_2, i1_9) != Seq#Index(v_2, i2);
          }
          assume false;
        }
        assume (forall i1_1_1_1: int, i2_1_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, i), i1_1_1_1), Seq#ContainsTrigger(Seq#Range(0, i), i2_1_1_1) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_1_1_1), Seq#Contains(Seq#Range(0, i), i2_1_1_1) } { Seq#Contains(Seq#Range(0, i), i1_1_1_1), Seq#ContainsTrigger(Seq#Range(0, i), i2_1_1_1) } { Seq#Contains(Seq#Range(0, i), i1_1_1_1), Seq#Contains(Seq#Range(0, i), i2_1_1_1) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_1_1_1), Seq#Index(v_2, i2_1_1_1) } { Seq#Contains(Seq#Range(0, i), i1_1_1_1), Seq#Index(v_2, i2_1_1_1) } { Seq#ContainsTrigger(Seq#Range(0, i), i2_1_1_1), Seq#Index(v_2, i1_1_1_1) } { Seq#Contains(Seq#Range(0, i), i2_1_1_1), Seq#Index(v_2, i1_1_1_1) } { Seq#Index(v_2, i1_1_1_1), Seq#Index(v_2, i2_1_1_1) }
          Seq#Contains(Seq#Range(0, i), i1_1_1_1) && (Seq#Contains(Seq#Range(0, i), i2_1_1_1) && i1_1_1_1 != i2_1_1_1) ==> Seq#Index(v_2, i1_1_1_1) != Seq#Index(v_2, i2_1_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver v[j] is injective
          assert {:msg "  Loop invariant (forall j: Int :: { (j in [0..i)) } { v[j] } (j in [0..i)) ==> acc(v[j].val, write)) might not hold on entry. Quantified resource v[j].val might not be injective. (issue_0176.vpr@18.15--18.60) [168641]"}
            (forall j: int, j_39: int ::
            { neverTriggered1(j), neverTriggered1(j_39) }
            (((j != j_39 && Seq#Contains(Seq#Range(0, i), j)) && Seq#Contains(Seq#Range(0, i), j_39)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(v_2, j) != Seq#Index(v_2, j_39)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall j: Int :: { (j in [0..i)) } { v[j] } (j in [0..i)) ==> acc(v[j].val, write)) might not hold on entry. There might be insufficient permission to access v[j].val (issue_0176.vpr@18.15--18.60) [168642]"}
            (forall j: int ::
            { Seq#Index(v_2, j) } { Seq#ContainsTrigger(Seq#Range(0, i), j) } { Seq#Contains(Seq#Range(0, i), j) } { Seq#Index(v_2, j) }
            Seq#Contains(Seq#Range(0, i), j) ==> Mask[Seq#Index(v_2, j), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver v[j]
          assume (forall j: int ::
            { Seq#Index(v_2, j) } { Seq#ContainsTrigger(Seq#Range(0, i), j) } { Seq#Contains(Seq#Range(0, i), j) } { Seq#Index(v_2, j) }
            Seq#Contains(Seq#Range(0, i), j) && NoPerm < FullPerm ==> qpRange1(Seq#Index(v_2, j)) && invRecv1(Seq#Index(v_2, j)) == j
          );
          assume (forall o_9: Ref ::
            { invRecv1(o_9) }
            Seq#Contains(Seq#Range(0, i), invRecv1(o_9)) && (NoPerm < FullPerm && qpRange1(o_9)) ==> Seq#Index(v_2, invRecv1(o_9)) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (Seq#Contains(Seq#Range(0, i), invRecv1(o_9)) && (NoPerm < FullPerm && qpRange1(o_9)) ==> Seq#Index(v_2, invRecv1(o_9)) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!(Seq#Contains(Seq#Range(0, i), invRecv1(o_9)) && (NoPerm < FullPerm && qpRange1(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (Seq#Contains(Seq#Range(0, i), j_1)) {
            assert {:msg "  Loop invariant (forall j: Int :: { (j in [0..i)) } { v[j] } (j in [0..i)) ==> v[j].val == 1) might not hold on entry. Assertion v[j].val == 1 might not hold. (issue_0176.vpr@19.15--19.60) [168643]"}
              Heap[Seq#Index(v_2, j_1), val] == 1;
          }
          assume false;
        }
        assume (forall j_2_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, i), j_2_1) } { Seq#Contains(Seq#Range(0, i), j_2_1) } { Seq#Index(v_2, j_2_1) }
          Seq#Contains(Seq#Range(0, i), j_2_1) ==> Heap[Seq#Index(v_2, j_2_1), val] == 1
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i, v_2, tmp;
      assume Heap[tmp, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume i <= 10;
        assume state(Heap, Mask);
        assume Seq#Length(v_2) == i;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..i)), (i2 in [0..i)) } { (i1 in [0..i)), v[i2] } { (i2 in [0..i)), v[i1] } { v[i1], v[i2] } (i1 in [0..i)) && ((i2 in [0..i)) && i1 != i2) ==> v[i1] != v[i2])
          if (*) {
            if (Seq#Contains(Seq#Range(0, i), i1_10) && (Seq#Contains(Seq#Range(0, i), i2_12) && i1_10 != i2_12)) {
              assert {:msg "  Contract might not be well-formed. Index v[i1] into v might be negative. (issue_0176.vpr@17.15--17.101) [168644]"}
                i1_10 >= 0;
              assert {:msg "  Contract might not be well-formed. Index v[i1] into v might exceed sequence length. (issue_0176.vpr@17.15--17.101) [168645]"}
                i1_10 < Seq#Length(v_2);
              assert {:msg "  Contract might not be well-formed. Index v[i2] into v might be negative. (issue_0176.vpr@17.15--17.101) [168646]"}
                i2_12 >= 0;
              assert {:msg "  Contract might not be well-formed. Index v[i2] into v might exceed sequence length. (issue_0176.vpr@17.15--17.101) [168647]"}
                i2_12 < Seq#Length(v_2);
            }
            assume false;
          }
        assume (forall i1_3_1: int, i2_3_2: int ::
          { Seq#ContainsTrigger(Seq#Range(0, i), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, i), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_3_1), Seq#Contains(Seq#Range(0, i), i2_3_2) } { Seq#Contains(Seq#Range(0, i), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, i), i2_3_2) } { Seq#Contains(Seq#Range(0, i), i1_3_1), Seq#Contains(Seq#Range(0, i), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_3_1), Seq#Index(v_2, i2_3_2) } { Seq#Contains(Seq#Range(0, i), i1_3_1), Seq#Index(v_2, i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, i), i2_3_2), Seq#Index(v_2, i1_3_1) } { Seq#Contains(Seq#Range(0, i), i2_3_2), Seq#Index(v_2, i1_3_1) } { Seq#Index(v_2, i1_3_1), Seq#Index(v_2, i2_3_2) }
          Seq#Contains(Seq#Range(0, i), i1_3_1) && (Seq#Contains(Seq#Range(0, i), i2_3_2) && i1_3_1 != i2_3_2) ==> Seq#Index(v_2, i1_3_1) != Seq#Index(v_2, i2_3_2)
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall j: Int :: { (j in [0..i)) } { v[j] } (j in [0..i)) ==> acc(v[j].val, write))
          if (*) {
            if (Seq#Contains(Seq#Range(0, i), j_15)) {
              assert {:msg "  Contract might not be well-formed. Index v[j] into v might be negative. (issue_0176.vpr@18.15--18.60) [168648]"}
                j_15 >= 0;
              assert {:msg "  Contract might not be well-formed. Index v[j] into v might exceed sequence length. (issue_0176.vpr@18.15--18.60) [168649]"}
                j_15 < Seq#Length(v_2);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource v[j].val might not be injective. (issue_0176.vpr@18.15--18.60) [168650]"}
          (forall j_4_1: int, j_4_2: int ::
          
          (((j_4_1 != j_4_2 && Seq#Contains(Seq#Range(0, i), j_4_1)) && Seq#Contains(Seq#Range(0, i), j_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(v_2, j_4_1) != Seq#Index(v_2, j_4_2)
        );
        
        // -- Define Inverse Function
          assume (forall j_4_1: int ::
            { Seq#Index(v_2, j_4_1) } { Seq#ContainsTrigger(Seq#Range(0, i), j_4_1) } { Seq#Contains(Seq#Range(0, i), j_4_1) } { Seq#Index(v_2, j_4_1) }
            Seq#Contains(Seq#Range(0, i), j_4_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(v_2, j_4_1)) && invRecv2(Seq#Index(v_2, j_4_1)) == j_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv2(o_9) }
            (Seq#Contains(Seq#Range(0, i), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9) ==> Seq#Index(v_2, invRecv2(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall j_4_1: int ::
            { Seq#Index(v_2, j_4_1) } { Seq#ContainsTrigger(Seq#Range(0, i), j_4_1) } { Seq#Contains(Seq#Range(0, i), j_4_1) } { Seq#Index(v_2, j_4_1) }
            Seq#Contains(Seq#Range(0, i), j_4_1) ==> Seq#Index(v_2, j_4_1) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((Seq#Contains(Seq#Range(0, i), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(v_2, invRecv2(o_9)) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Seq#Contains(Seq#Range(0, i), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall j: Int :: { (j in [0..i)) } { v[j] } (j in [0..i)) ==> v[j].val == 1)
          if (*) {
            if (Seq#Contains(Seq#Range(0, i), j_12)) {
              assert {:msg "  Contract might not be well-formed. Index v[j] into v might be negative. (issue_0176.vpr@19.15--19.60) [168651]"}
                j_12 >= 0;
              assert {:msg "  Contract might not be well-formed. Index v[j] into v might exceed sequence length. (issue_0176.vpr@19.15--19.60) [168652]"}
                j_12 < Seq#Length(v_2);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v[j].val (issue_0176.vpr@19.15--19.60) [168653]"}
                HasDirectPerm(Mask, Seq#Index(v_2, j_12), val);
            }
            assume false;
          }
        assume (forall j_6_2: int ::
          { Seq#ContainsTrigger(Seq#Range(0, i), j_6_2) } { Seq#Contains(Seq#Range(0, i), j_6_2) } { Seq#Index(v_2, j_6_2) }
          Seq#Contains(Seq#Range(0, i), j_6_2) ==> Heap[Seq#Index(v_2, j_6_2), val] == 1
        );
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
        assume i <= 10;
        assume Seq#Length(v_2) == i;
        assume (forall i1_4: int, i2_4: int ::
          { Seq#ContainsTrigger(Seq#Range(0, i), i1_4), Seq#ContainsTrigger(Seq#Range(0, i), i2_4) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_4), Seq#Contains(Seq#Range(0, i), i2_4) } { Seq#Contains(Seq#Range(0, i), i1_4), Seq#ContainsTrigger(Seq#Range(0, i), i2_4) } { Seq#Contains(Seq#Range(0, i), i1_4), Seq#Contains(Seq#Range(0, i), i2_4) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_4), Seq#Index(v_2, i2_4) } { Seq#Contains(Seq#Range(0, i), i1_4), Seq#Index(v_2, i2_4) } { Seq#ContainsTrigger(Seq#Range(0, i), i2_4), Seq#Index(v_2, i1_4) } { Seq#Contains(Seq#Range(0, i), i2_4), Seq#Index(v_2, i1_4) } { Seq#Index(v_2, i1_4), Seq#Index(v_2, i2_4) }
          Seq#Contains(Seq#Range(0, i), i1_4) && (Seq#Contains(Seq#Range(0, i), i2_4) && i1_4 != i2_4) ==> Seq#Index(v_2, i1_4) != Seq#Index(v_2, i2_4)
        );
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource v[j].val might not be injective. (issue_0176.vpr@18.15--18.60) [168654]"}
          (forall j_7_1: int, j_7_2: int ::
          
          (((j_7_1 != j_7_2 && Seq#Contains(Seq#Range(0, i), j_7_1)) && Seq#Contains(Seq#Range(0, i), j_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(v_2, j_7_1) != Seq#Index(v_2, j_7_2)
        );
        
        // -- Define Inverse Function
          assume (forall j_7_1: int ::
            { Seq#Index(v_2, j_7_1) } { Seq#ContainsTrigger(Seq#Range(0, i), j_7_1) } { Seq#Contains(Seq#Range(0, i), j_7_1) } { Seq#Index(v_2, j_7_1) }
            Seq#Contains(Seq#Range(0, i), j_7_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(v_2, j_7_1)) && invRecv3(Seq#Index(v_2, j_7_1)) == j_7_1
          );
          assume (forall o_9: Ref ::
            { invRecv3(o_9) }
            (Seq#Contains(Seq#Range(0, i), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(v_2, invRecv3(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall j_7_1: int ::
            { Seq#Index(v_2, j_7_1) } { Seq#ContainsTrigger(Seq#Range(0, i), j_7_1) } { Seq#Contains(Seq#Range(0, i), j_7_1) } { Seq#Index(v_2, j_7_1) }
            Seq#Contains(Seq#Range(0, i), j_7_1) ==> Seq#Index(v_2, j_7_1) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((Seq#Contains(Seq#Range(0, i), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(v_2, invRecv3(o_9)) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Seq#Contains(Seq#Range(0, i), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall j_8_2: int ::
          { Seq#ContainsTrigger(Seq#Range(0, i), j_8_2) } { Seq#Contains(Seq#Range(0, i), j_8_2) } { Seq#Index(v_2, j_8_2) }
          Seq#Contains(Seq#Range(0, i), j_8_2) ==> Heap[Seq#Index(v_2, j_8_2), val] == 1
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < 10;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: tmp := new(val) -- issue_0176.vpr@21.5--21.20
            havoc freshObj;
            assume freshObj != null && !Heap[freshObj, $allocated];
            Heap := Heap[freshObj, $allocated:=true];
            tmp := freshObj;
            Mask := Mask[tmp, val:=Mask[tmp, val] + FullPerm];
            assume state(Heap, Mask);
          
          // -- Translating statement: tmp.val := 1 -- issue_0176.vpr@22.5--22.17
            assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.val (issue_0176.vpr@22.5--22.17) [168655]"}
              FullPerm == Mask[tmp, val];
            Heap := Heap[tmp, val:=1];
            assume state(Heap, Mask);
          
          // -- Translating statement: v := v ++ Seq(tmp) -- issue_0176.vpr@23.5--23.23
            v_2 := Seq#Append(v_2, Seq#Singleton(tmp));
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i + 1 -- issue_0176.vpr@24.5--24.15
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant i <= 10 might not be preserved. Assertion i <= 10 might not hold. (issue_0176.vpr@15.15--15.22) [168656]"}
          i <= 10;
        assert {:msg "  Loop invariant |v| == i might not be preserved. Assertion |v| == i might not hold. (issue_0176.vpr@16.15--16.23) [168657]"}
          Seq#Length(v_2) == i;
        if (*) {
          if (Seq#Contains(Seq#Range(0, i), i1_5_2) && (Seq#Contains(Seq#Range(0, i), i2_5_1) && i1_5_2 != i2_5_1)) {
            assert {:msg "  Loop invariant (forall i1: Int, i2: Int :: { (i1 in [0..i)), (i2 in [0..i)) } { (i1 in [0..i)), v[i2] } { (i2 in [0..i)), v[i1] } { v[i1], v[i2] } (i1 in [0..i)) && ((i2 in [0..i)) && i1 != i2) ==> v[i1] != v[i2]) might not be preserved. Assertion v[i1] != v[i2] might not hold. (issue_0176.vpr@17.15--17.101) [168658]"}
              Seq#Index(v_2, i1_5_2) != Seq#Index(v_2, i2_5_1);
          }
          assume false;
        }
        assume (forall i1_6_1: int, i2_6_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, i), i1_6_1), Seq#ContainsTrigger(Seq#Range(0, i), i2_6_1) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_6_1), Seq#Contains(Seq#Range(0, i), i2_6_1) } { Seq#Contains(Seq#Range(0, i), i1_6_1), Seq#ContainsTrigger(Seq#Range(0, i), i2_6_1) } { Seq#Contains(Seq#Range(0, i), i1_6_1), Seq#Contains(Seq#Range(0, i), i2_6_1) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_6_1), Seq#Index(v_2, i2_6_1) } { Seq#Contains(Seq#Range(0, i), i1_6_1), Seq#Index(v_2, i2_6_1) } { Seq#ContainsTrigger(Seq#Range(0, i), i2_6_1), Seq#Index(v_2, i1_6_1) } { Seq#Contains(Seq#Range(0, i), i2_6_1), Seq#Index(v_2, i1_6_1) } { Seq#Index(v_2, i1_6_1), Seq#Index(v_2, i2_6_1) }
          Seq#Contains(Seq#Range(0, i), i1_6_1) && (Seq#Contains(Seq#Range(0, i), i2_6_1) && i1_6_1 != i2_6_1) ==> Seq#Index(v_2, i1_6_1) != Seq#Index(v_2, i2_6_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver v[j] is injective
          assert {:msg "  Loop invariant (forall j: Int :: { (j in [0..i)) } { v[j] } (j in [0..i)) ==> acc(v[j].val, write)) might not be preserved. Quantified resource v[j].val might not be injective. (issue_0176.vpr@18.15--18.60) [168659]"}
            (forall j_9_1: int, j_9_2: int ::
            { neverTriggered4(j_9_1), neverTriggered4(j_9_2) }
            (((j_9_1 != j_9_2 && Seq#Contains(Seq#Range(0, i), j_9_1)) && Seq#Contains(Seq#Range(0, i), j_9_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(v_2, j_9_1) != Seq#Index(v_2, j_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall j: Int :: { (j in [0..i)) } { v[j] } (j in [0..i)) ==> acc(v[j].val, write)) might not be preserved. There might be insufficient permission to access v[j].val (issue_0176.vpr@18.15--18.60) [168660]"}
            (forall j_9_1: int ::
            { Seq#Index(v_2, j_9_1) } { Seq#ContainsTrigger(Seq#Range(0, i), j_9_1) } { Seq#Contains(Seq#Range(0, i), j_9_1) } { Seq#Index(v_2, j_9_1) }
            Seq#Contains(Seq#Range(0, i), j_9_1) ==> Mask[Seq#Index(v_2, j_9_1), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver v[j]
          assume (forall j_9_1: int ::
            { Seq#Index(v_2, j_9_1) } { Seq#ContainsTrigger(Seq#Range(0, i), j_9_1) } { Seq#Contains(Seq#Range(0, i), j_9_1) } { Seq#Index(v_2, j_9_1) }
            Seq#Contains(Seq#Range(0, i), j_9_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(v_2, j_9_1)) && invRecv4(Seq#Index(v_2, j_9_1)) == j_9_1
          );
          assume (forall o_9: Ref ::
            { invRecv4(o_9) }
            Seq#Contains(Seq#Range(0, i), invRecv4(o_9)) && (NoPerm < FullPerm && qpRange4(o_9)) ==> Seq#Index(v_2, invRecv4(o_9)) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (Seq#Contains(Seq#Range(0, i), invRecv4(o_9)) && (NoPerm < FullPerm && qpRange4(o_9)) ==> Seq#Index(v_2, invRecv4(o_9)) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!(Seq#Contains(Seq#Range(0, i), invRecv4(o_9)) && (NoPerm < FullPerm && qpRange4(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (Seq#Contains(Seq#Range(0, i), j_10_2)) {
            assert {:msg "  Loop invariant (forall j: Int :: { (j in [0..i)) } { v[j] } (j in [0..i)) ==> v[j].val == 1) might not be preserved. Assertion v[j].val == 1 might not hold. (issue_0176.vpr@19.15--19.60) [168661]"}
              Heap[Seq#Index(v_2, j_10_2), val] == 1;
          }
          assume false;
        }
        assume (forall j_11_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, i), j_11_1_1) } { Seq#Contains(Seq#Range(0, i), j_11_1_1) } { Seq#Index(v_2, j_11_1_1) }
          Seq#Contains(Seq#Range(0, i), j_11_1_1) ==> Heap[Seq#Index(v_2, j_11_1_1), val] == 1
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < 10);
      assume state(Heap, Mask);
      assume i <= 10;
      assume Seq#Length(v_2) == i;
      assume (forall i1_7_2: int, i2_7_2: int ::
        { Seq#ContainsTrigger(Seq#Range(0, i), i1_7_2), Seq#ContainsTrigger(Seq#Range(0, i), i2_7_2) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_7_2), Seq#Contains(Seq#Range(0, i), i2_7_2) } { Seq#Contains(Seq#Range(0, i), i1_7_2), Seq#ContainsTrigger(Seq#Range(0, i), i2_7_2) } { Seq#Contains(Seq#Range(0, i), i1_7_2), Seq#Contains(Seq#Range(0, i), i2_7_2) } { Seq#ContainsTrigger(Seq#Range(0, i), i1_7_2), Seq#Index(v_2, i2_7_2) } { Seq#Contains(Seq#Range(0, i), i1_7_2), Seq#Index(v_2, i2_7_2) } { Seq#ContainsTrigger(Seq#Range(0, i), i2_7_2), Seq#Index(v_2, i1_7_2) } { Seq#Contains(Seq#Range(0, i), i2_7_2), Seq#Index(v_2, i1_7_2) } { Seq#Index(v_2, i1_7_2), Seq#Index(v_2, i2_7_2) }
        Seq#Contains(Seq#Range(0, i), i1_7_2) && (Seq#Contains(Seq#Range(0, i), i2_7_2) && i1_7_2 != i2_7_2) ==> Seq#Index(v_2, i1_7_2) != Seq#Index(v_2, i2_7_2)
      );
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource v[j].val might not be injective. (issue_0176.vpr@18.15--18.60) [168662]"}
        (forall j_12_2: int, j_12_3: int ::
        
        (((j_12_2 != j_12_3 && Seq#Contains(Seq#Range(0, i), j_12_2)) && Seq#Contains(Seq#Range(0, i), j_12_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(v_2, j_12_2) != Seq#Index(v_2, j_12_3)
      );
      
      // -- Define Inverse Function
        assume (forall j_12_2: int ::
          { Seq#Index(v_2, j_12_2) } { Seq#ContainsTrigger(Seq#Range(0, i), j_12_2) } { Seq#Contains(Seq#Range(0, i), j_12_2) } { Seq#Index(v_2, j_12_2) }
          Seq#Contains(Seq#Range(0, i), j_12_2) && NoPerm < FullPerm ==> qpRange5(Seq#Index(v_2, j_12_2)) && invRecv5(Seq#Index(v_2, j_12_2)) == j_12_2
        );
        assume (forall o_9: Ref ::
          { invRecv5(o_9) }
          (Seq#Contains(Seq#Range(0, i), invRecv5(o_9)) && NoPerm < FullPerm) && qpRange5(o_9) ==> Seq#Index(v_2, invRecv5(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_12_2: int ::
          { Seq#Index(v_2, j_12_2) } { Seq#ContainsTrigger(Seq#Range(0, i), j_12_2) } { Seq#Contains(Seq#Range(0, i), j_12_2) } { Seq#Index(v_2, j_12_2) }
          Seq#Contains(Seq#Range(0, i), j_12_2) ==> Seq#Index(v_2, j_12_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          ((Seq#Contains(Seq#Range(0, i), invRecv5(o_9)) && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(v_2, invRecv5(o_9)) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Seq#Contains(Seq#Range(0, i), invRecv5(o_9)) && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall j_13_2: int ::
        { Seq#ContainsTrigger(Seq#Range(0, i), j_13_2) } { Seq#Contains(Seq#Range(0, i), j_13_2) } { Seq#Index(v_2, j_13_2) }
        Seq#Contains(Seq#Range(0, i), j_13_2) ==> Heap[Seq#Index(v_2, j_13_2), val] == 1
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { (j in [0..10)) }
  //     { v[j] }
  //     (j in [0..10)) ==> v[j].val > 0) -- issue_0176.vpr@27.3--27.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall j: Int :: { (j in [0..10)) } { v[j] } (j in [0..10)) ==> v[j].val > 0)
      if (*) {
        if (Seq#Contains(Seq#Range(0, 10), j_13)) {
          assert {:msg "  Assert might fail. Index v[j] into v might be negative. (issue_0176.vpr@27.10--27.55) [168663]"}
            j_13 >= 0;
          assert {:msg "  Assert might fail. Index v[j] into v might exceed sequence length. (issue_0176.vpr@27.10--27.55) [168664]"}
            j_13 < Seq#Length(v_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access v[j].val (issue_0176.vpr@27.10--27.55) [168665]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(v_2, j_13), val);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Range(0, 10), j_15_2)) {
        assert {:msg "  Assert might fail. Assertion v[j].val > 0 might not hold. (issue_0176.vpr@27.10--27.55) [168666]"}
          Heap[Seq#Index(v_2, j_15_2), val] > 0;
      }
      assume false;
    }
    assume (forall j_16_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 10), j_16_1_1) } { Seq#Contains(Seq#Range(0, 10), j_16_1_1) } { Seq#Index(v_2, j_16_1_1) }
      Seq#Contains(Seq#Range(0, 10), j_16_1_1) ==> Heap[Seq#Index(v_2, j_16_1_1), val] > 0
    );
    assume state(Heap, Mask);
}