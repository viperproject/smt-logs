// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:33:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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

function  neverTriggered1(i_8_2: int): bool;
function  neverTriggered2(i_11_1: int): bool;
function  neverTriggered3(i_3: int): bool;
function  neverTriggered4(i_6_1: int): bool;
function  neverTriggered5(i_9_1: int): bool;
function  neverTriggered6(i_12_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: count
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

const unique val: Field NormalField bool;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique ar_1: Field NormalField (Seq Ref);
axiom !IsPredicateField(ar_1);
axiom !IsWandField(ar_1);
const unique other_1: Field NormalField int;
axiom !IsPredicateField(other_1);
axiom !IsWandField(other_1);

// ==================================================
// Translation of function count
// ==================================================

// Uninterpreted function definitions
function  count(Heap: HeapType, l_2: (Seq Ref), n: int): int;
function  count'(Heap: HeapType, l_2: (Seq Ref), n: int): int;
axiom (forall Heap: HeapType, l_2: (Seq Ref), n: int ::
  { count(Heap, l_2, n) }
  count(Heap, l_2, n) == count'(Heap, l_2, n) && dummyFunction(count#triggerStateless(l_2, n))
);
axiom (forall Heap: HeapType, l_2: (Seq Ref), n: int ::
  { count'(Heap, l_2, n) }
  dummyFunction(count#triggerStateless(l_2, n))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (Seq Ref), n: int ::
  { state(Heap, Mask), count(Heap, l_2, n) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= n && (n <= Seq#Length(l_2) && ((forall i: int ::
    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i) } { Seq#Index(l_2, i) }
    Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i) ==> Seq#Index(l_2, i) != null
  ) && ((forall i1: int, i2_1: int ::
    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1), Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1), Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1), Seq#Index(l_2, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1), Seq#Index(l_2, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_1), Seq#Index(l_2, i1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_1), Seq#Index(l_2, i1) } { Seq#Index(l_2, i1), Seq#Index(l_2, i2_1) }
    Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1) && (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_1) && i1 != i2_1) ==> Seq#Index(l_2, i1) != Seq#Index(l_2, i2_1)
  ) && (n > 0 ==> Seq#Index(l_2, n - 1) != null)))) ==> count(Heap, l_2, n) == (if n == 0 then 0 else count'(Heap, l_2, n - 1) + (if Heap[Seq#Index(l_2, n - 1), val] then 1 else 0))
);

// Framing axioms
function  count#frame(frame: FrameType, l_2: (Seq Ref), n: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (Seq Ref), n: int ::
  { state(Heap, Mask), count'(Heap, l_2, n) }
  state(Heap, Mask) ==> count'(Heap, l_2, n) == count#frame(CombineFrames(FrameFragment(count#condqp1(Heap, l_2, n)), FrameFragment((if n > 0 then EmptyFrame else EmptyFrame))), l_2, n)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { (i in [0..|l|)) } { l[i] } (i in [0..|l|)) ==> acc(l[i].val, 1 / 2)) in function count
// ==================================================

function  count#condqp1(Heap: HeapType, l_1_1: (Seq Ref), n_1_1_1: int): int;
function  sk_count#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, l_2: (Seq Ref), n: int ::
  { count#condqp1(Heap2Heap, l_2, n), count#condqp1(Heap1Heap, l_2, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), sk_count#condqp1(count#condqp1(Heap2Heap, l_2, n), count#condqp1(Heap1Heap, l_2, n))) && NoPerm < 1 / 2 <==> Seq#Contains(Seq#Range(0, Seq#Length(l_2)), sk_count#condqp1(count#condqp1(Heap2Heap, l_2, n), count#condqp1(Heap1Heap, l_2, n))) && NoPerm < 1 / 2) && (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), sk_count#condqp1(count#condqp1(Heap2Heap, l_2, n), count#condqp1(Heap1Heap, l_2, n))) && NoPerm < 1 / 2 ==> Heap2Heap[Seq#Index(l_2, sk_count#condqp1(count#condqp1(Heap2Heap, l_2, n), count#condqp1(Heap1Heap, l_2, n))), val] == Heap1Heap[Seq#Index(l_2, sk_count#condqp1(count#condqp1(Heap2Heap, l_2, n), count#condqp1(Heap1Heap, l_2, n))), val]) ==> count#condqp1(Heap2Heap, l_2, n) == count#condqp1(Heap1Heap, l_2, n)
);

// Trigger function (controlling recursive postconditions)
function  count#trigger(frame: FrameType, l_2: (Seq Ref), n: int): bool;

// State-independent trigger function
function  count#triggerStateless(l_2: (Seq Ref), n: int): int;

// Check contract well-formedness and postcondition
procedure count#definedness(l_2: (Seq Ref), n: int) returns (Result: int)
  modifies Heap, Mask;
{
  var i_14: int;
  var i1_13: int;
  var i2: int;
  var i_4: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_9_1: int;
  var i1_4_1: int;
  var i2_4: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= n;
    assume n <= Seq#Length(l_2);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|l|)) } { l[i] } (i in [0..|l|)) ==> l[i] != null)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_14)) {
          assert {:msg "  Contract might not be well-formed. Index l[i] into l might be negative. (array_problem.vpr@14.12--17.34) [50943]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index l[i] into l might exceed sequence length. (array_problem.vpr@14.12--17.34) [50944]"}
            i_14 < Seq#Length(l_2);
        }
        assume false;
      }
    assume (forall i_6_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_6_1) } { Seq#Index(l_2, i_6_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_6_1) ==> Seq#Index(l_2, i_6_1) != null
    );
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|l|)), (i2 in [0..|l|)) } { (i1 in [0..|l|)), l[i2] } { (i2 in [0..|l|)), l[i1] } { l[i1], l[i2] } (i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2) ==> l[i1] != l[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_13) && (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2) && i1_13 != i2)) {
          assert {:msg "  Contract might not be well-formed. Index l[i1] into l might be negative. (array_problem.vpr@14.12--17.34) [50945]"}
            i1_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index l[i1] into l might exceed sequence length. (array_problem.vpr@14.12--17.34) [50946]"}
            i1_13 < Seq#Length(l_2);
          assert {:msg "  Contract might not be well-formed. Index l[i2] into l might be negative. (array_problem.vpr@14.12--17.34) [50947]"}
            i2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index l[i2] into l might exceed sequence length. (array_problem.vpr@14.12--17.34) [50948]"}
            i2 < Seq#Length(l_2);
        }
        assume false;
      }
    assume (forall i1_3: int, i2_3: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1_3), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1_3), Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_3) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_3), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_3) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_3), Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1_3), Seq#Index(l_2, i2_3) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_3), Seq#Index(l_2, i2_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_3), Seq#Index(l_2, i1_3) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_3), Seq#Index(l_2, i1_3) } { Seq#Index(l_2, i1_3), Seq#Index(l_2, i2_3) }
      Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_3) && (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_3) && i1_3 != i2_3) ==> Seq#Index(l_2, i1_3) != Seq#Index(l_2, i2_3)
    );
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|l|)) } { l[i] } (i in [0..|l|)) ==> acc(l[i].val, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_4)) {
          assert {:msg "  Contract might not be well-formed. Index l[i] into l might be negative. (array_problem.vpr@14.12--17.34) [50949]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index l[i] into l might exceed sequence length. (array_problem.vpr@14.12--17.34) [50950]"}
            i_4 < Seq#Length(l_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource l[i].val might not be injective. (array_problem.vpr@14.12--17.34) [50951]"}
      (forall i_8_2: int, i_8_3: int ::
      
      (((i_8_2 != i_8_3 && Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_8_2)) && Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_8_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(l_2, i_8_2) != Seq#Index(l_2, i_8_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_8_2: int ::
        { Seq#Index(l_2, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_8_2) } { Seq#Index(l_2, i_8_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_8_2) && NoPerm < 1 / 2 ==> qpRange1(Seq#Index(l_2, i_8_2)) && invRecv1(Seq#Index(l_2, i_8_2)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), invRecv1(o_4)) && NoPerm < 1 / 2) && qpRange1(o_4) ==> Seq#Index(l_2, invRecv1(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (array_problem.vpr@14.12--17.34) [50952]"}
      (forall i_8_2: int ::
      { Seq#Index(l_2, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_8_2) } { Seq#Index(l_2, i_8_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_8_2) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_8_2: int ::
        { Seq#Index(l_2, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_8_2) } { Seq#Index(l_2, i_8_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_8_2) && 1 / 2 > NoPerm ==> Seq#Index(l_2, i_8_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(l_2)), invRecv1(o_4)) && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(l_2, invRecv1(o_4)) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, Seq#Length(l_2)), invRecv1(o_4)) && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    if (n > 0) {
      
      // -- Check definedness of l[n - 1] != null
        assert {:msg "  Contract might not be well-formed. Index l[n - 1] into l might be negative. (array_problem.vpr@14.12--17.34) [50953]"}
          n - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index l[n - 1] into l might exceed sequence length. (array_problem.vpr@14.12--17.34) [50954]"}
          n - 1 < Seq#Length(l_2);
      assume Seq#Index(l_2, n - 1) != null;
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (n == 0 ? 0 : count(l, n - 1) + (l[n - 1].val ? 1 : 0))
      if (n == 0) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count might not hold. Assertion 0 <= n - 1 might not hold. (array_problem.vpr@19.15--19.27) [50955]"}
            0 <= n - 1;
          assert {:msg "  Precondition of function count might not hold. Assertion n - 1 <= |l| might not hold. (array_problem.vpr@19.15--19.27) [50956]"}
            n - 1 <= Seq#Length(l_2);
          if (*) {
            if (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_9_1)) {
              assert {:msg "  Precondition of function count might not hold. Assertion l[i] != null might not hold. (array_problem.vpr@19.15--19.27) [50957]"}
                Seq#Index(l_2, i_9_1) != null;
            }
            assume false;
          }
          assume (forall i_10_1_1: int ::
            { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i_10_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_10_1_1) } { Seq#Index(l_2, i_10_1_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_10_1_1) ==> Seq#Index(l_2, i_10_1_1) != null
          );
          if (*) {
            if (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_4_1) && (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_4) && i1_4_1 != i2_4)) {
              assert {:msg "  Precondition of function count might not hold. Assertion l[i1] != l[i2] might not hold. (array_problem.vpr@19.15--19.27) [50958]"}
                Seq#Index(l_2, i1_4_1) != Seq#Index(l_2, i2_4);
            }
            assume false;
          }
          assume (forall i1_5_1: int, i2_5_1_1: int ::
            { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1_5_1), Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_5_1), Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i1_5_1), Seq#Index(l_2, i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_5_1), Seq#Index(l_2, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i2_5_1_1), Seq#Index(l_2, i1_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_5_1_1), Seq#Index(l_2, i1_5_1) } { Seq#Index(l_2, i1_5_1), Seq#Index(l_2, i2_5_1_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i1_5_1) && (Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(l_2, i1_5_1) != Seq#Index(l_2, i2_5_1_1)
          );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count might not hold. Fraction 1 / 2 might be negative. (array_problem.vpr@19.15--19.27) [50959]"}
              (forall i_11_1: int ::
              { Seq#Index(l_2, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i_11_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_11_1) } { Seq#Index(l_2, i_11_1) }
              Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_11_1) && dummyFunction(Heap[Seq#Index(l_2, i_11_1), val]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver l[i] is injective
            assert {:msg "  Precondition of function count might not hold. Quantified resource l[i].val might not be injective. (array_problem.vpr@19.15--19.27) [50960]"}
              (forall i_11_1: int, i_11_2: int ::
              { neverTriggered2(i_11_1), neverTriggered2(i_11_2) }
              (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_11_1)) && Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_11_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(l_2, i_11_1) != Seq#Index(l_2, i_11_2)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count might not hold. There might be insufficient permission to access l[i].val (array_problem.vpr@19.15--19.27) [50961]"}
              (forall i_11_1: int ::
              { Seq#Index(l_2, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i_11_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_11_1) } { Seq#Index(l_2, i_11_1) }
              Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_11_1) ==> 1 / 2 > NoPerm ==> Mask[Seq#Index(l_2, i_11_1), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver l[i]
            assume (forall i_11_1: int ::
              { Seq#Index(l_2, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(l_2)), i_11_1) } { Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_11_1) } { Seq#Index(l_2, i_11_1) }
              Seq#Contains(Seq#Range(0, Seq#Length(l_2)), i_11_1) && NoPerm < 1 / 2 ==> qpRange2(Seq#Index(l_2, i_11_1)) && invRecv2(Seq#Index(l_2, i_11_1)) == i_11_1
            );
            assume (forall o_4: Ref ::
              { invRecv2(o_4) }
              Seq#Contains(Seq#Range(0, Seq#Length(l_2)), invRecv2(o_4)) && (NoPerm < 1 / 2 && qpRange2(o_4)) ==> Seq#Index(l_2, invRecv2(o_4)) == o_4
            );
          if (n - 1 > 0) {
            assert {:msg "  Precondition of function count might not hold. Assertion l[n - 1 - 1] != null might not hold. (array_problem.vpr@19.15--19.27) [50962]"}
              Seq#Index(l_2, n - 1 - 1) != null;
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count#trigger(CombineFrames(FrameFragment(count#condqp1(Heap, l_2, n - 1)), FrameFragment((if n - 1 > 0 then EmptyFrame else EmptyFrame))), l_2, n - 1);
        }
        assert {:msg "  Function might not be well-formed. Index l[n - 1] into l might be negative. (array_problem.vpr@13.1--20.2) [50963]"}
          n - 1 >= 0;
        assert {:msg "  Function might not be well-formed. Index l[n - 1] into l might exceed sequence length. (array_problem.vpr@13.1--20.2) [50964]"}
          n - 1 < Seq#Length(l_2);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l[n - 1].val (array_problem.vpr@13.1--20.2) [50965]"}
          HasDirectPerm(Mask, Seq#Index(l_2, n - 1), val);
      }
  
  // -- Translate function body
    Result := (if n == 0 then 0 else count(Heap, l_2, n - 1) + (if Heap[Seq#Index(l_2, n - 1), val] then 1 else 0));
}

// ==================================================
// Translation of method main
// ==================================================

procedure main(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_6: int;
  var i1_12: int;
  var i2_2: int;
  var i_8: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_4_1: int;
  var i1_2_1: int;
  var i2_2_1: int;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i_7_1: int;
  var i1_4_1: int;
  var i2_4: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var i_10_1: int;
  var i1_6_1: int;
  var i2_6: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, ar_1:=Mask[this, ar_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|this.ar|)) } { this.ar[i] } (i in [0..|this.ar|)) ==> this.ar[i] != null)
      if (*) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@24.12--24.68) [50966]"}
          HasDirectPerm(Mask, this, ar_1);
        if (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@24.12--24.68) [50967]"}
            HasDirectPerm(Mask, this, ar_1);
          assert {:msg "  Contract might not be well-formed. Index this.ar[i] into this.ar might be negative. (array_problem.vpr@24.12--24.68) [50968]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.ar[i] into this.ar might exceed sequence length. (array_problem.vpr@24.12--24.68) [50969]"}
            i_6 < Seq#Length(Heap[this, ar_1]);
        }
        assume false;
      }
    assume (forall i_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_1) } { Seq#Index(Heap[this, ar_1], i_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_1) ==> Seq#Index(Heap[this, ar_1], i_1) != null
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|this.ar|)), (i2 in [0..|this.ar|)) } { (i1 in [0..|this.ar|)), this.ar[i2] } { (i2 in [0..|this.ar|)), this.ar[i1] } { this.ar[i1], this.ar[i2] } (i1 in [0..|this.ar|)) && ((i2 in [0..|this.ar|)) && i1 != i2) ==> this.ar[i1] != this.ar[i2])
      if (*) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@25.12--25.124) [50970]"}
          HasDirectPerm(Mask, this, ar_1);
        if (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_12)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@25.12--25.124) [50971]"}
            HasDirectPerm(Mask, this, ar_1);
        }
        if (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_12) && (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_2) && i1_12 != i2_2)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@25.12--25.124) [50972]"}
            HasDirectPerm(Mask, this, ar_1);
          assert {:msg "  Contract might not be well-formed. Index this.ar[i1] into this.ar might be negative. (array_problem.vpr@25.12--25.124) [50973]"}
            i1_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.ar[i1] into this.ar might exceed sequence length. (array_problem.vpr@25.12--25.124) [50974]"}
            i1_12 < Seq#Length(Heap[this, ar_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@25.12--25.124) [50975]"}
            HasDirectPerm(Mask, this, ar_1);
          assert {:msg "  Contract might not be well-formed. Index this.ar[i2] into this.ar might be negative. (array_problem.vpr@25.12--25.124) [50976]"}
            i2_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.ar[i2] into this.ar might exceed sequence length. (array_problem.vpr@25.12--25.124) [50977]"}
            i2_2 < Seq#Length(Heap[this, ar_1]);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_1_1), Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_1_1), Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_1_1), Seq#Index(Heap[this, ar_1], i2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_1_1), Seq#Index(Heap[this, ar_1], i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_1_1), Seq#Index(Heap[this, ar_1], i1_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_1_1), Seq#Index(Heap[this, ar_1], i1_1_1) } { Seq#Index(Heap[this, ar_1], i1_1_1), Seq#Index(Heap[this, ar_1], i2_1_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(Heap[this, ar_1], i1_1_1) != Seq#Index(Heap[this, ar_1], i2_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|this.ar|)) } { this.ar[i] } (i in [0..|this.ar|)) ==> acc(this.ar[i].val, 1 / 2))
      if (*) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@26.12--26.75) [50978]"}
          HasDirectPerm(Mask, this, ar_1);
        if (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_8)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@26.12--26.75) [50979]"}
            HasDirectPerm(Mask, this, ar_1);
          assert {:msg "  Contract might not be well-formed. Index this.ar[i] into this.ar might be negative. (array_problem.vpr@26.12--26.75) [50980]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.ar[i] into this.ar might exceed sequence length. (array_problem.vpr@26.12--26.75) [50981]"}
            i_8 < Seq#Length(Heap[this, ar_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.ar[i].val might not be injective. (array_problem.vpr@26.12--26.75) [50982]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3)) && Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[this, ar_1], i_3) != Seq#Index(Heap[this, ar_1], i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, ar_1], i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) } { Seq#Index(Heap[this, ar_1], i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) && NoPerm < 1 / 2 ==> qpRange3(Seq#Index(Heap[this, ar_1], i_3)) && invRecv3(Seq#Index(Heap[this, ar_1], i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), invRecv3(o_4)) && NoPerm < 1 / 2) && qpRange3(o_4) ==> Seq#Index(Heap[this, ar_1], invRecv3(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (array_problem.vpr@26.12--26.75) [50983]"}
      (forall i_3: int ::
      { Seq#Index(Heap[this, ar_1], i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) } { Seq#Index(Heap[this, ar_1], i_3) }
      Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, ar_1], i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) } { Seq#Index(Heap[this, ar_1], i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_3) && 1 / 2 > NoPerm ==> Seq#Index(Heap[this, ar_1], i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), invRecv3(o_4)) && NoPerm < 1 / 2) && qpRange3(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(Heap[this, ar_1], invRecv3(o_4)) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), invRecv3(o_4)) && NoPerm < 1 / 2) && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.ar| > 10
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@27.12--27.24) [50984]"}
        HasDirectPerm(Mask, this, ar_1);
    assume Seq#Length(Heap[this, ar_1]) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of count(this.ar, |this.ar|) == 4
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@28.12--28.39) [50985]"}
        HasDirectPerm(Mask, this, ar_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@28.12--28.39) [50986]"}
        HasDirectPerm(Mask, this, ar_1);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function count might not hold. Assertion 0 <= |this.ar| might not hold. (array_problem.vpr@28.12--28.36) [50987]"}
          0 <= Seq#Length(Heap[this, ar_1]);
        assert {:msg "  Precondition of function count might not hold. Assertion |this.ar| <= |this.ar| might not hold. (array_problem.vpr@28.12--28.36) [50988]"}
          Seq#Length(Heap[this, ar_1]) <= Seq#Length(Heap[this, ar_1]);
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_4_1)) {
            assert {:msg "  Precondition of function count might not hold. Assertion this.ar[i] != null might not hold. (array_problem.vpr@28.12--28.36) [50989]"}
              Seq#Index(Heap[this, ar_1], i_4_1) != null;
          }
          assume false;
        }
        assume (forall i_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_5_1_1) } { Seq#Index(Heap[this, ar_1], i_5_1_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_5_1_1) ==> Seq#Index(Heap[this, ar_1], i_5_1_1) != null
        );
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_2_1) && (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_2_1) && i1_2_1 != i2_2_1)) {
            assert {:msg "  Precondition of function count might not hold. Assertion this.ar[i1] != this.ar[i2] might not hold. (array_problem.vpr@28.12--28.36) [50990]"}
              Seq#Index(Heap[this, ar_1], i1_2_1) != Seq#Index(Heap[this, ar_1], i2_2_1);
          }
          assume false;
        }
        assume (forall i1_3_1_1: int, i2_3_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_3_1_1), Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_3_1_1), Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_3_1_1), Seq#Index(Heap[this, ar_1], i2_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_3_1_1), Seq#Index(Heap[this, ar_1], i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_3_1), Seq#Index(Heap[this, ar_1], i1_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_3_1), Seq#Index(Heap[this, ar_1], i1_3_1_1) } { Seq#Index(Heap[this, ar_1], i1_3_1_1), Seq#Index(Heap[this, ar_1], i2_3_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_3_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_3_1) && i1_3_1_1 != i2_3_1) ==> Seq#Index(Heap[this, ar_1], i1_3_1_1) != Seq#Index(Heap[this, ar_1], i2_3_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function count might not hold. Fraction 1 / 2 might be negative. (array_problem.vpr@28.12--28.36) [50991]"}
            (forall i_6_1: int ::
            { Seq#Index(Heap[this, ar_1], i_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) } { Seq#Index(Heap[this, ar_1], i_6_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) && dummyFunction(Heap[Seq#Index(Heap[this, ar_1], i_6_1), val]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver this.ar[i] is injective
          assert {:msg "  Precondition of function count might not hold. Quantified resource this.ar[i].val might not be injective. (array_problem.vpr@28.12--28.36) [50992]"}
            (forall i_6_1: int, i_6_2: int ::
            { neverTriggered4(i_6_1), neverTriggered4(i_6_2) }
            (((i_6_1 != i_6_2 && Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1)) && Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[this, ar_1], i_6_1) != Seq#Index(Heap[this, ar_1], i_6_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function count might not hold. There might be insufficient permission to access this.ar[i].val (array_problem.vpr@28.12--28.36) [50993]"}
            (forall i_6_1: int ::
            { Seq#Index(Heap[this, ar_1], i_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) } { Seq#Index(Heap[this, ar_1], i_6_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) ==> 1 / 2 > NoPerm ==> Mask[Seq#Index(Heap[this, ar_1], i_6_1), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver this.ar[i]
          assume (forall i_6_1: int ::
            { Seq#Index(Heap[this, ar_1], i_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) } { Seq#Index(Heap[this, ar_1], i_6_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_6_1) && NoPerm < 1 / 2 ==> qpRange4(Seq#Index(Heap[this, ar_1], i_6_1)) && invRecv4(Seq#Index(Heap[this, ar_1], i_6_1)) == i_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), invRecv4(o_4)) && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> Seq#Index(Heap[this, ar_1], invRecv4(o_4)) == o_4
          );
        if (Seq#Length(Heap[this, ar_1]) > 0) {
          assert {:msg "  Precondition of function count might not hold. Assertion this.ar[|this.ar| - 1] != null might not hold. (array_problem.vpr@28.12--28.36) [50994]"}
            Seq#Index(Heap[this, ar_1], Seq#Length(Heap[this, ar_1]) - 1) != null;
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume count(Heap, Heap[this, ar_1], Seq#Length(Heap[this, ar_1])) == 4;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.ar[3].val, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@29.12--29.35) [50995]"}
        HasDirectPerm(Mask, this, ar_1);
      assert {:msg "  Contract might not be well-formed. Index this.ar[3] into this.ar might exceed sequence length. (array_problem.vpr@29.12--29.35) [50996]"}
        3 < Seq#Length(Heap[this, ar_1]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (array_problem.vpr@29.12--29.35) [50997]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(Heap[this, ar_1], 3) != null;
    Mask := Mask[Seq#Index(Heap[this, ar_1], 3), val:=Mask[Seq#Index(Heap[this, ar_1], 3), val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.ar[3].val
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar (array_problem.vpr@30.12--30.26) [50998]"}
        HasDirectPerm(Mask, this, ar_1);
      assert {:msg "  Contract might not be well-formed. Index this.ar[3] into this.ar might exceed sequence length. (array_problem.vpr@30.12--30.26) [50999]"}
        3 < Seq#Length(Heap[this, ar_1]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.ar[3].val (array_problem.vpr@30.12--30.26) [51000]"}
        HasDirectPerm(Mask, Seq#Index(Heap[this, ar_1], 3), val);
    assume Heap[Seq#Index(Heap[this, ar_1], 3), val];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: this.ar[3].val := false -- array_problem.vpr@33.3--33.24
    
    // -- Check definedness of this.ar[3]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.ar (array_problem.vpr@33.3--33.24) [51001]"}
        HasDirectPerm(Mask, this, ar_1);
      assert {:msg "  Assignment might fail. Index this.ar[3] into this.ar might exceed sequence length. (array_problem.vpr@33.3--33.24) [51002]"}
        3 < Seq#Length(Heap[this, ar_1]);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.ar[3].val (array_problem.vpr@33.3--33.24) [51003]"}
      FullPerm == Mask[Seq#Index(Heap[this, ar_1], 3), val];
    Heap := Heap[Seq#Index(Heap[this, ar_1], 3), val:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale count(this.ar, |this.ar|) == 3 -- array_problem.vpr@35.10--35.37
    assume state(Heap, Mask);
    
    // -- Check definedness of count(this.ar, |this.ar|) == 3
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.ar (array_problem.vpr@35.10--35.37) [51004]"}
        HasDirectPerm(Mask, this, ar_1);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.ar (array_problem.vpr@35.10--35.37) [51005]"}
        HasDirectPerm(Mask, this, ar_1);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function count might not hold. Assertion 0 <= |this.ar| might not hold. (array_problem.vpr@35.10--35.34) [51006]"}
          0 <= Seq#Length(Heap[this, ar_1]);
        assert {:msg "  Precondition of function count might not hold. Assertion |this.ar| <= |this.ar| might not hold. (array_problem.vpr@35.10--35.34) [51007]"}
          Seq#Length(Heap[this, ar_1]) <= Seq#Length(Heap[this, ar_1]);
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_7_1)) {
            assert {:msg "  Precondition of function count might not hold. Assertion this.ar[i] != null might not hold. (array_problem.vpr@35.10--35.34) [51008]"}
              Seq#Index(Heap[this, ar_1], i_7_1) != null;
          }
          assume false;
        }
        assume (forall i_8_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_8_1) } { Seq#Index(Heap[this, ar_1], i_8_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_8_1) ==> Seq#Index(Heap[this, ar_1], i_8_1) != null
        );
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_4_1) && (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_4) && i1_4_1 != i2_4)) {
            assert {:msg "  Precondition of function count might not hold. Assertion this.ar[i1] != this.ar[i2] might not hold. (array_problem.vpr@35.10--35.34) [51009]"}
              Seq#Index(Heap[this, ar_1], i1_4_1) != Seq#Index(Heap[this, ar_1], i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_5_1), Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_5_1), Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_5_1), Seq#Index(Heap[this, ar_1], i2_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_5_1), Seq#Index(Heap[this, ar_1], i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_5_1_1), Seq#Index(Heap[this, ar_1], i1_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_5_1_1), Seq#Index(Heap[this, ar_1], i1_5_1) } { Seq#Index(Heap[this, ar_1], i1_5_1), Seq#Index(Heap[this, ar_1], i2_5_1_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i1_5_1) && (Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(Heap[this, ar_1], i1_5_1) != Seq#Index(Heap[this, ar_1], i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function count might not hold. Fraction 1 / 2 might be negative. (array_problem.vpr@35.10--35.34) [51010]"}
            (forall i_9_1: int ::
            { Seq#Index(Heap[this, ar_1], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) } { Seq#Index(Heap[this, ar_1], i_9_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) && dummyFunction(Heap[Seq#Index(Heap[this, ar_1], i_9_1), val]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver this.ar[i] is injective
          assert {:msg "  Precondition of function count might not hold. Quantified resource this.ar[i].val might not be injective. (array_problem.vpr@35.10--35.34) [51011]"}
            (forall i_9_1: int, i_9_2: int ::
            { neverTriggered5(i_9_1), neverTriggered5(i_9_2) }
            (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1)) && Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[this, ar_1], i_9_1) != Seq#Index(Heap[this, ar_1], i_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function count might not hold. There might be insufficient permission to access this.ar[i].val (array_problem.vpr@35.10--35.34) [51012]"}
            (forall i_9_1: int ::
            { Seq#Index(Heap[this, ar_1], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) } { Seq#Index(Heap[this, ar_1], i_9_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) ==> 1 / 2 > NoPerm ==> Mask[Seq#Index(Heap[this, ar_1], i_9_1), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver this.ar[i]
          assume (forall i_9_1: int ::
            { Seq#Index(Heap[this, ar_1], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) } { Seq#Index(Heap[this, ar_1], i_9_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), i_9_1) && NoPerm < 1 / 2 ==> qpRange5(Seq#Index(Heap[this, ar_1], i_9_1)) && invRecv5(Seq#Index(Heap[this, ar_1], i_9_1)) == i_9_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(Heap[this, ar_1])), invRecv5(o_4)) && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> Seq#Index(Heap[this, ar_1], invRecv5(o_4)) == o_4
          );
        if (Seq#Length(Heap[this, ar_1]) > 0) {
          assert {:msg "  Precondition of function count might not hold. Assertion this.ar[|this.ar| - 1] != null might not hold. (array_problem.vpr@35.10--35.34) [51013]"}
            Seq#Index(Heap[this, ar_1], Seq#Length(Heap[this, ar_1]) - 1) != null;
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume count(Heap, Heap[this, ar_1], Seq#Length(Heap[this, ar_1])) == 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert count(this.ar, |this.ar|) == 3 -- array_problem.vpr@36.3--36.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of count(this.ar, |this.ar|) == 3
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.ar (array_problem.vpr@36.10--36.37) [51014]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, ar_1);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.ar (array_problem.vpr@36.10--36.37) [51015]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, ar_1);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function count might not hold. Assertion 0 <= |this.ar| might not hold. (array_problem.vpr@36.10--36.34) [51016]"}
          0 <= Seq#Length(ExhaleWellDef0Heap[this, ar_1]);
        assert {:msg "  Precondition of function count might not hold. Assertion |this.ar| <= |this.ar| might not hold. (array_problem.vpr@36.10--36.34) [51017]"}
          Seq#Length(ExhaleWellDef0Heap[this, ar_1]) <= Seq#Length(ExhaleWellDef0Heap[this, ar_1]);
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_10_1)) {
            assert {:msg "  Precondition of function count might not hold. Assertion this.ar[i] != null might not hold. (array_problem.vpr@36.10--36.34) [51018]"}
              Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_10_1) != null;
          }
          assume false;
        }
        assume (forall i_11_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_11_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_11_1_1) } { Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_11_1_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_11_1_1) ==> Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_11_1_1) != null
        );
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i1_6_1) && (Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i2_6) && i1_6_1 != i2_6)) {
            assert {:msg "  Precondition of function count might not hold. Assertion this.ar[i1] != this.ar[i2] might not hold. (array_problem.vpr@36.10--36.34) [51019]"}
              Seq#Index(ExhaleWellDef0Heap[this, ar_1], i1_6_1) != Seq#Index(ExhaleWellDef0Heap[this, ar_1], i2_6);
          }
          assume false;
        }
        assume (forall i1_7_1_1: int, i2_7_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i1_7_1_1), Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i2_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i2_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i1_7_1_1), Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i1_7_1_1), Seq#Index(ExhaleWellDef0Heap[this, ar_1], i2_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i1_7_1_1), Seq#Index(ExhaleWellDef0Heap[this, ar_1], i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i2_7_1), Seq#Index(ExhaleWellDef0Heap[this, ar_1], i1_7_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i2_7_1), Seq#Index(ExhaleWellDef0Heap[this, ar_1], i1_7_1_1) } { Seq#Index(ExhaleWellDef0Heap[this, ar_1], i1_7_1_1), Seq#Index(ExhaleWellDef0Heap[this, ar_1], i2_7_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i1_7_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i2_7_1) && i1_7_1_1 != i2_7_1) ==> Seq#Index(ExhaleWellDef0Heap[this, ar_1], i1_7_1_1) != Seq#Index(ExhaleWellDef0Heap[this, ar_1], i2_7_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function count might not hold. Fraction 1 / 2 might be negative. (array_problem.vpr@36.10--36.34) [51020]"}
            (forall i_12_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) } { Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) && dummyFunction(ExhaleWellDef0Heap[Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1), val]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver this.ar[i] is injective
          assert {:msg "  Precondition of function count might not hold. Quantified resource this.ar[i].val might not be injective. (array_problem.vpr@36.10--36.34) [51021]"}
            (forall i_12_1: int, i_12_2: int ::
            { neverTriggered6(i_12_1), neverTriggered6(i_12_2) }
            (((i_12_1 != i_12_2 && Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1)) && Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1) != Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function count might not hold. There might be insufficient permission to access this.ar[i].val (array_problem.vpr@36.10--36.34) [51022]"}
            (forall i_12_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) } { Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver this.ar[i]
          assume (forall i_12_1: int ::
            { Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) } { Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), i_12_1) && NoPerm < 1 / 2 ==> qpRange6(Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1)) && invRecv6(Seq#Index(ExhaleWellDef0Heap[this, ar_1], i_12_1)) == i_12_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(ExhaleWellDef0Heap[this, ar_1])), invRecv6(o_4)) && (NoPerm < 1 / 2 && qpRange6(o_4)) ==> Seq#Index(ExhaleWellDef0Heap[this, ar_1], invRecv6(o_4)) == o_4
          );
        if (Seq#Length(ExhaleWellDef0Heap[this, ar_1]) > 0) {
          assert {:msg "  Precondition of function count might not hold. Assertion this.ar[|this.ar| - 1] != null might not hold. (array_problem.vpr@36.10--36.34) [51023]"}
            Seq#Index(ExhaleWellDef0Heap[this, ar_1], Seq#Length(ExhaleWellDef0Heap[this, ar_1]) - 1) != null;
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion count(this.ar, |this.ar|) == 3 might not hold. (array_problem.vpr@36.10--36.37) [51024]"}
      count(Heap, Heap[this, ar_1], Seq#Length(Heap[this, ar_1])) == 3;
    assume state(Heap, Mask);
}