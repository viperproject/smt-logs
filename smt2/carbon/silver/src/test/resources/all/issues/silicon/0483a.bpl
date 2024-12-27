// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:50:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0483a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0483a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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

function  neverTriggered1(i_9_1: int): bool;
function  neverTriggered2(i_11_1: int): bool;
function  neverTriggered3(i_1: int): bool;
function  neverTriggered4(i_3: int): bool;
function  neverTriggered5(i_4_1: int): bool;
function  neverTriggered6(i_5: int): bool;
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
// - height 1: CheckBounded
// - height 0: IsReordered
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
// Translation of domain VCTArray
// ==================================================

// The type for domain VCTArray
type VCTArrayDomainType CT;

// Translation of domain function loc
function  loc<CT>(a_3: (VCTArrayDomainType CT), i_79: int): CT;

// Translation of domain function alen
function  alen<CT>(a_3: (VCTArrayDomainType CT)): int;

// Translation of domain axiom len_nonneg
axiom (forall <CT> a_2: (VCTArrayDomainType CT) ::
  { (alen(a_2): int) }
  (alen(a_2): int) >= 0
);

// Translation of domain axiom loc_inject
axiom (forall <CT> a_2: (VCTArrayDomainType CT), i: int, j_9: int ::
  { (loc(a_2, i): CT), (loc(a_2, j_9): CT) }
  i >= 0 && (j_9 >= 0 && (i < (alen(a_2): int) && (j_9 < (alen(a_2): int) && i != j_9))) ==> (loc(a_2, i): CT) != (loc(a_2, j_9): CT)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique Integer__item: Field NormalField int;
axiom !IsPredicateField(Integer__item);
axiom !IsWandField(Integer__item);

// ==================================================
// Translation of function CheckBounded
// ==================================================

// Uninterpreted function definitions
function  CheckBounded(Heap: HeapType, order: (Seq int), maxLen: int): bool;
function  CheckBounded'(Heap: HeapType, order: (Seq int), maxLen: int): bool;
axiom (forall Heap: HeapType, order: (Seq int), maxLen: int ::
  { CheckBounded(Heap, order, maxLen) }
  CheckBounded(Heap, order, maxLen) == CheckBounded'(Heap, order, maxLen) && dummyFunction(CheckBounded#triggerStateless(order, maxLen))
);
axiom (forall Heap: HeapType, order: (Seq int), maxLen: int ::
  { CheckBounded'(Heap, order, maxLen) }
  dummyFunction(CheckBounded#triggerStateless(order, maxLen))
);

// Framing axioms
function  CheckBounded#frame(frame: FrameType, order: (Seq int), maxLen: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, order: (Seq int), maxLen: int ::
  { state(Heap, Mask), CheckBounded'(Heap, order, maxLen) }
  state(Heap, Mask) ==> CheckBounded'(Heap, order, maxLen) == CheckBounded#frame(EmptyFrame, order, maxLen)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, order: (Seq int), maxLen: int ::
  { state(Heap, Mask), CheckBounded'(Heap, order, maxLen) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || CheckBounded#trigger(EmptyFrame, order, maxLen)) ==> Seq#Length(order) <= maxLen && (forall i: int ::
    { Seq#Index(order, i) }
    0 <= i && i < Seq#Length(order) ==> 0 <= Seq#Index(order, i) && Seq#Index(order, i) < maxLen
  )
);

// Trigger function (controlling recursive postconditions)
function  CheckBounded#trigger(frame: FrameType, order: (Seq int), maxLen: int): bool;

// State-independent trigger function
function  CheckBounded#triggerStateless(order: (Seq int), maxLen: int): bool;

// Check contract well-formedness and postcondition
procedure CheckBounded#definedness(order: (Seq int), maxLen: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var i_14: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Checking definedness of postcondition (no body)
    assume Seq#Length(order) <= maxLen;
    
    // -- Check definedness of (forall i: Int :: { order[i] } 0 <= i && i < |order| ==> 0 <= order[i] && order[i] < maxLen)
      if (*) {
        if (0 <= i_14 && i_14 < Seq#Length(order)) {
          assert {:msg "  Contract might not be well-formed. Index order[i] into order might be negative. (0483a.vpr@20.9--20.120) [208623]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index order[i] into order might exceed sequence length. (0483a.vpr@20.9--20.120) [208624]"}
            i_14 < Seq#Length(order);
          if (0 <= Seq#Index(order, i_14)) {
            assert {:msg "  Contract might not be well-formed. Index order[i] into order might be negative. (0483a.vpr@20.9--20.120) [208625]"}
              i_14 >= 0;
            assert {:msg "  Contract might not be well-formed. Index order[i] into order might exceed sequence length. (0483a.vpr@20.9--20.120) [208626]"}
              i_14 < Seq#Length(order);
          }
        }
        assume false;
      }
    assume (forall i_2_1: int ::
      { Seq#Index(order, i_2_1) }
      0 <= i_2_1 && i_2_1 < Seq#Length(order) ==> 0 <= Seq#Index(order, i_2_1) && Seq#Index(order, i_2_1) < maxLen
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function IsReordered
// ==================================================

// Uninterpreted function definitions
function  IsReordered(Heap: HeapType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int): bool;
function  IsReordered'(Heap: HeapType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int): bool;
axiom (forall Heap: HeapType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int ::
  { IsReordered(Heap, origL, newO, newL, maxLen) }
  IsReordered(Heap, origL, newO, newL, maxLen) == IsReordered'(Heap, origL, newO, newL, maxLen) && dummyFunction(IsReordered#triggerStateless(origL, newO, newL, maxLen))
);
axiom (forall Heap: HeapType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int ::
  { IsReordered'(Heap, origL, newO, newL, maxLen) }
  dummyFunction(IsReordered#triggerStateless(origL, newO, newL, maxLen))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int ::
  { state(Heap, Mask), IsReordered(Heap, origL, newO, newL, maxLen) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> IsReordered(Heap, origL, newO, newL, maxLen) == (maxLen <= (alen(origL): int) && (maxLen <= (alen(newL): int) && (CheckBounded(Heap, newO, maxLen) && (forall i_2_1: int ::
    { (loc(origL, Seq#Index(newO, i_2_1)): Ref) }
    0 <= i_2_1 && i_2_1 < Seq#Length(newO) ==> Heap[(loc(newL, i_2_1): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(newO, i_2_1)): Ref), Integer__item]
  ))))
);

// Framing axioms
function  IsReordered#frame(frame: FrameType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int ::
  { state(Heap, Mask), IsReordered'(Heap, origL, newO, newL, maxLen) }
  state(Heap, Mask) ==> IsReordered'(Heap, origL, newO, newL, maxLen) == IsReordered#frame(CombineFrames(FrameFragment(IsReordered#condqp1(Heap, origL, newO, newL, maxLen)), FrameFragment((if origL != newL then FrameFragment(IsReordered#condqp2(Heap, origL, newO, newL, maxLen)) else EmptyFrame))), origL, newO, newL, maxLen)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { (loc(origL, i): Ref) } 0 <= i && i < (alen(origL): Int) ==> acc((loc(origL, i): Ref).Integer__item, 1 / 2)) in function IsReordered
// ==================================================

function  IsReordered#condqp1(Heap: HeapType, origL_1_1: (VCTArrayDomainType Ref), newO_1_1: (Seq int), newL_1_1: (VCTArrayDomainType Ref), maxLen_1_1: int): int;
function  sk_IsReordered#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int ::
  { IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_IsReordered#condqp1(IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen)) && sk_IsReordered#condqp1(IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen)) < (alen(origL): int)) && NoPerm < 1 / 2 <==> (0 <= sk_IsReordered#condqp1(IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen)) && sk_IsReordered#condqp1(IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen)) < (alen(origL): int)) && NoPerm < 1 / 2) && ((0 <= sk_IsReordered#condqp1(IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen)) && sk_IsReordered#condqp1(IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen)) < (alen(origL): int)) && NoPerm < 1 / 2 ==> Heap2Heap[(loc(origL, sk_IsReordered#condqp1(IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen))): Ref), Integer__item] == Heap1Heap[(loc(origL, sk_IsReordered#condqp1(IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen))): Ref), Integer__item]) ==> IsReordered#condqp1(Heap2Heap, origL, newO, newL, maxLen) == IsReordered#condqp1(Heap1Heap, origL, newO, newL, maxLen)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { (loc(newL, i): Ref) } 0 <= i && i < (alen(newL): Int) ==> acc((loc(newL, i): Ref).Integer__item, 1 / 2)) in function IsReordered
// ==================================================

function  IsReordered#condqp2(Heap: HeapType, origL_1_1: (VCTArrayDomainType Ref), newO_1_1: (Seq int), newL_1_1: (VCTArrayDomainType Ref), maxLen_1_1: int): int;
function  sk_IsReordered#condqp2(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int ::
  { IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_IsReordered#condqp2(IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen)) && sk_IsReordered#condqp2(IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen)) < (alen(newL): int)) && NoPerm < 1 / 2 <==> (0 <= sk_IsReordered#condqp2(IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen)) && sk_IsReordered#condqp2(IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen)) < (alen(newL): int)) && NoPerm < 1 / 2) && ((0 <= sk_IsReordered#condqp2(IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen)) && sk_IsReordered#condqp2(IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen)) < (alen(newL): int)) && NoPerm < 1 / 2 ==> Heap2Heap[(loc(newL, sk_IsReordered#condqp2(IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen))): Ref), Integer__item] == Heap1Heap[(loc(newL, sk_IsReordered#condqp2(IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen), IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen))): Ref), Integer__item]) ==> IsReordered#condqp2(Heap2Heap, origL, newO, newL, maxLen) == IsReordered#condqp2(Heap1Heap, origL, newO, newL, maxLen)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int ::
  { state(Heap, Mask), IsReordered'(Heap, origL, newO, newL, maxLen) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || IsReordered#trigger(CombineFrames(FrameFragment(IsReordered#condqp1(Heap, origL, newO, newL, maxLen)), FrameFragment((if origL != newL then FrameFragment(IsReordered#condqp2(Heap, origL, newO, newL, maxLen)) else EmptyFrame))), origL, newO, newL, maxLen)) ==> IsReordered'(Heap, origL, newO, newL, maxLen) == (maxLen <= (alen(origL): int) && (maxLen <= (alen(newL): int) && (CheckBounded(Heap, newO, maxLen) && (forall i_7_1: int ::
    { (loc(origL, Seq#Index(newO, i_7_1)): Ref) }
    0 <= i_7_1 && i_7_1 < Seq#Length(newO) ==> Heap[(loc(newL, i_7_1): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(newO, i_7_1)): Ref), Integer__item]
  ))))
);

// Trigger function (controlling recursive postconditions)
function  IsReordered#trigger(frame: FrameType, origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int): bool;

// State-independent trigger function
function  IsReordered#triggerStateless(origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int): bool;

// Check contract well-formedness and postcondition
procedure IsReordered#definedness(origL: (VCTArrayDomainType Ref), newO: (Seq int), newL: (VCTArrayDomainType Ref), maxLen: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var i_6: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_7: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int :: { (loc(origL, i): Ref) } 0 <= i && i < (alen(origL): Int) ==> acc((loc(origL, i): Ref).Integer__item, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(origL, i): Ref).Integer__item might not be injective. (0483a.vpr@25.13--25.115) [208627]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < (alen(origL): int))) && (0 <= i_9_2 && i_9_2 < (alen(origL): int))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(origL, i_9_1): Ref) != (loc(origL, i_9_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { (loc(origL, i_9_1): Ref) } { (loc(origL, i_9_1): Ref) }
        (0 <= i_9_1 && i_9_1 < (alen(origL): int)) && NoPerm < 1 / 2 ==> qpRange1((loc(origL, i_9_1): Ref)) && invRecv1((loc(origL, i_9_1): Ref)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (alen(origL): int)) && NoPerm < 1 / 2) && qpRange1(o_4) ==> (loc(origL, invRecv1(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0483a.vpr@25.13--25.115) [208628]"}
      (forall i_9_1: int ::
      { (loc(origL, i_9_1): Ref) } { (loc(origL, i_9_1): Ref) }
      0 <= i_9_1 && i_9_1 < (alen(origL): int) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { (loc(origL, i_9_1): Ref) } { (loc(origL, i_9_1): Ref) }
        (0 <= i_9_1 && i_9_1 < (alen(origL): int)) && 1 / 2 > NoPerm ==> (loc(origL, i_9_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer__item] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (alen(origL): int)) && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> (loc(origL, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, Integer__item] == Mask[o_4, Integer__item] + 1 / 2) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (alen(origL): int)) && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, Integer__item] == Mask[o_4, Integer__item])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer__item ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (origL != newL) {
      
      // -- Check definedness of (forall i: Int :: { (loc(newL, i): Ref) } 0 <= i && i < (alen(newL): Int) ==> acc((loc(newL, i): Ref).Integer__item, 1 / 2))
        if (*) {
          assume false;
        }
      havoc QPMask;
      assert {:msg "  Contract might not be well-formed. Quantified resource (loc(newL, i): Ref).Integer__item might not be injective. (0483a.vpr@26.12--26.131) [208629]"}
        (forall i_11_1: int, i_11_2: int ::
        
        (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < (alen(newL): int))) && (0 <= i_11_2 && i_11_2 < (alen(newL): int))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(newL, i_11_1): Ref) != (loc(newL, i_11_2): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_11_1: int ::
          { (loc(newL, i_11_1): Ref) } { (loc(newL, i_11_1): Ref) }
          (0 <= i_11_1 && i_11_1 < (alen(newL): int)) && NoPerm < 1 / 2 ==> qpRange2((loc(newL, i_11_1): Ref)) && invRecv2((loc(newL, i_11_1): Ref)) == i_11_1
        );
        assume (forall o_4: Ref ::
          { invRecv2(o_4) }
          ((0 <= invRecv2(o_4) && invRecv2(o_4) < (alen(newL): int)) && NoPerm < 1 / 2) && qpRange2(o_4) ==> (loc(newL, invRecv2(o_4)): Ref) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0483a.vpr@26.12--26.131) [208630]"}
        (forall i_11_1: int ::
        { (loc(newL, i_11_1): Ref) } { (loc(newL, i_11_1): Ref) }
        0 <= i_11_1 && i_11_1 < (alen(newL): int) ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_11_1: int ::
          { (loc(newL, i_11_1): Ref) } { (loc(newL, i_11_1): Ref) }
          (0 <= i_11_1 && i_11_1 < (alen(newL): int)) && 1 / 2 > NoPerm ==> (loc(newL, i_11_1): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer__item] }
          (((0 <= invRecv2(o_4) && invRecv2(o_4) < (alen(newL): int)) && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> (loc(newL, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, Integer__item] == Mask[o_4, Integer__item] + 1 / 2) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < (alen(newL): int)) && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, Integer__item] == Mask[o_4, Integer__item])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer__item ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of maxLen <= (alen(origL): Int) && (maxLen <= (alen(newL): Int) && (CheckBounded(newO, maxLen) && (forall i: Int :: { (loc(origL, newO[i]): Ref) } 0 <= i && i < |newO| ==> (loc(newL, i): Ref).Integer__item == (loc(origL, newO[i]): Ref).Integer__item)))
      if (maxLen <= (alen(origL): int)) {
        if (maxLen <= (alen(newL): int)) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (CheckBounded(Heap, newO, maxLen)) {
            if (*) {
              if (0 <= i_6 && i_6 < Seq#Length(newO)) {
                assert {:msg "  Function might not be well-formed. There might be insufficient permission to access (loc(newL, i): Ref).Integer__item (0483a.vpr@24.1--30.2) [208631]"}
                  HasDirectPerm(Mask, (loc(newL, i_6): Ref), Integer__item);
                assert {:msg "  Function might not be well-formed. Index newO[i] into newO might be negative. (0483a.vpr@24.1--30.2) [208632]"}
                  i_6 >= 0;
                assert {:msg "  Function might not be well-formed. Index newO[i] into newO might exceed sequence length. (0483a.vpr@24.1--30.2) [208633]"}
                  i_6 < Seq#Length(newO);
                assert {:msg "  Function might not be well-formed. There might be insufficient permission to access (loc(origL, newO[i]): Ref).Integer__item (0483a.vpr@24.1--30.2) [208634]"}
                  HasDirectPerm(Mask, (loc(origL, Seq#Index(newO, i_6)): Ref), Integer__item);
              }
              assume false;
            }
          }
        }
      }
  
  // -- Translate function body
    Result := maxLen <= (alen(origL): int) && (maxLen <= (alen(newL): int) && (CheckBounded(Heap, newO, maxLen) && (forall i_13_1: int ::
      { (loc(origL, Seq#Index(newO, i_13_1)): Ref) }
      0 <= i_13_1 && i_13_1 < Seq#Length(newO) ==> Heap[(loc(newL, i_13_1): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(newO, i_13_1)): Ref), Integer__item]
    )));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result == (maxLen <= (alen(origL): Int) && (maxLen <= (alen(newL): Int) && (CheckBounded(newO, maxLen) && (forall i: Int :: { (loc(origL, newO[i]): Ref) } 0 <= i && i < |newO| ==> (loc(newL, i): Ref).Integer__item == (loc(origL, newO[i]): Ref).Integer__item))))
      if (maxLen <= (alen(origL): int)) {
        if (maxLen <= (alen(newL): int)) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (CheckBounded(Heap, newO, maxLen)) {
            if (*) {
              if (0 <= i_7 && i_7 < Seq#Length(newO)) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(newL, i): Ref).Integer__item (0483a.vpr@27.11--27.231) [208635]"}
                  HasDirectPerm(ExhaleWellDef0Mask, (loc(newL, i_7): Ref), Integer__item);
                assert {:msg "  Contract might not be well-formed. Index newO[i] into newO might be negative. (0483a.vpr@27.11--27.231) [208636]"}
                  i_7 >= 0;
                assert {:msg "  Contract might not be well-formed. Index newO[i] into newO might exceed sequence length. (0483a.vpr@27.11--27.231) [208637]"}
                  i_7 < Seq#Length(newO);
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(origL, newO[i]): Ref).Integer__item (0483a.vpr@27.11--27.231) [208638]"}
                  HasDirectPerm(ExhaleWellDef0Mask, (loc(origL, Seq#Index(newO, i_7)): Ref), Integer__item);
              }
              assume false;
            }
          }
        }
      }
    assert {:msg "  Postcondition of IsReordered might not hold. Assertion result == (maxLen <= (alen(origL): Int) && (maxLen <= (alen(newL): Int) && (CheckBounded(newO, maxLen) && (forall i: Int :: { (loc(origL, newO[i]): Ref) } 0 <= i && i < |newO| ==> (loc(newL, i): Ref).Integer__item == (loc(origL, newO[i]): Ref).Integer__item)))) might not hold. (0483a.vpr@27.11--27.231) [208639]"}
      Result == (maxLen <= (alen(origL): int) && (maxLen <= (alen(newL): int) && (CheckBounded(Heap, newO, maxLen) && (forall i_15: int ::
      { (loc(origL, Seq#Index(newO, i_15)): Ref) }
      0 <= i_15 && i_15 < Seq#Length(newO) ==> Heap[(loc(newL, i_15): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(newO, i_15)): Ref), Integer__item]
    ))));
}

// ==================================================
// Translation of method PermutationLemma
// ==================================================

procedure PermutationLemma(origL: (VCTArrayDomainType Ref), order: (Seq int), newL: (VCTArrayDomainType Ref)) returns (sys__result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var rep__1: bool;
  var i__2: int;
  var i__2_1: int;
  var i__2_2: int;
  var i__2_3: int;
  var i__2_6: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { (loc(origL, i): Ref) } 0 <= i && i < (alen(origL): Int) ==> acc((loc(origL, i): Ref).Integer__item, 2 / 3))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(origL, i): Ref).Integer__item might not be injective. (0483a.vpr@34.13--34.99) [208640]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (alen(origL): int))) && (0 <= i_1_1 && i_1_1 < (alen(origL): int))) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> (loc(origL, i_1): Ref) != (loc(origL, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(origL, i_1): Ref) } { (loc(origL, i_1): Ref) }
        (0 <= i_1 && i_1 < (alen(origL): int)) && NoPerm < 2 / 3 ==> qpRange3((loc(origL, i_1): Ref)) && invRecv3((loc(origL, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < (alen(origL): int)) && NoPerm < 2 / 3) && qpRange3(o_4) ==> (loc(origL, invRecv3(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (0483a.vpr@34.13--34.99) [208641]"}
      (forall i_1: int ::
      { (loc(origL, i_1): Ref) } { (loc(origL, i_1): Ref) }
      0 <= i_1 && i_1 < (alen(origL): int) ==> 2 / 3 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(origL, i_1): Ref) } { (loc(origL, i_1): Ref) }
        (0 <= i_1 && i_1 < (alen(origL): int)) && 2 / 3 > NoPerm ==> (loc(origL, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer__item] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < (alen(origL): int)) && NoPerm < 2 / 3) && qpRange3(o_4) ==> (NoPerm < 2 / 3 ==> (loc(origL, invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, Integer__item] == Mask[o_4, Integer__item] + 2 / 3) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < (alen(origL): int)) && NoPerm < 2 / 3) && qpRange3(o_4)) ==> QPMask[o_4, Integer__item] == Mask[o_4, Integer__item])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer__item ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (origL != newL) {
      
      // -- Check definedness of (forall i: Int :: { (loc(newL, i): Ref) } 0 <= i && i < (alen(newL): Int) ==> acc((loc(newL, i): Ref).Integer__item, 2 / 3))
        if (*) {
          assume false;
        }
      havoc QPMask;
      assert {:msg "  Contract might not be well-formed. Quantified resource (loc(newL, i): Ref).Integer__item might not be injective. (0483a.vpr@35.12--35.116) [208642]"}
        (forall i_3: int, i_3_1: int ::
        
        (((i_3 != i_3_1 && (0 <= i_3 && i_3 < (alen(newL): int))) && (0 <= i_3_1 && i_3_1 < (alen(newL): int))) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> (loc(newL, i_3): Ref) != (loc(newL, i_3_1): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_3: int ::
          { (loc(newL, i_3): Ref) } { (loc(newL, i_3): Ref) }
          (0 <= i_3 && i_3 < (alen(newL): int)) && NoPerm < 2 / 3 ==> qpRange4((loc(newL, i_3): Ref)) && invRecv4((loc(newL, i_3): Ref)) == i_3
        );
        assume (forall o_4: Ref ::
          { invRecv4(o_4) }
          ((0 <= invRecv4(o_4) && invRecv4(o_4) < (alen(newL): int)) && NoPerm < 2 / 3) && qpRange4(o_4) ==> (loc(newL, invRecv4(o_4)): Ref) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (0483a.vpr@35.12--35.116) [208643]"}
        (forall i_3: int ::
        { (loc(newL, i_3): Ref) } { (loc(newL, i_3): Ref) }
        0 <= i_3 && i_3 < (alen(newL): int) ==> 2 / 3 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_3: int ::
          { (loc(newL, i_3): Ref) } { (loc(newL, i_3): Ref) }
          (0 <= i_3 && i_3 < (alen(newL): int)) && 2 / 3 > NoPerm ==> (loc(newL, i_3): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer__item] }
          (((0 <= invRecv4(o_4) && invRecv4(o_4) < (alen(newL): int)) && NoPerm < 2 / 3) && qpRange4(o_4) ==> (NoPerm < 2 / 3 ==> (loc(newL, invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, Integer__item] == Mask[o_4, Integer__item] + 2 / 3) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < (alen(newL): int)) && NoPerm < 2 / 3) && qpRange4(o_4)) ==> QPMask[o_4, Integer__item] == Mask[o_4, Integer__item])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer__item ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: rep__1 := IsReordered(origL, order, newL, |order|) -- 0483a.vpr@38.3--38.53
    
    // -- Check definedness of IsReordered(origL, order, newL, |order|)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function IsReordered might not hold. Fraction 1 / 2 might be negative. (0483a.vpr@38.13--38.53) [208644]"}
            (forall i_4_1: int ::
            { (loc(origL, i_4_1): Ref) } { (loc(origL, i_4_1): Ref) }
            (0 <= i_4_1 && i_4_1 < (alen(origL): int)) && dummyFunction(Heap[(loc(origL, i_4_1): Ref), Integer__item]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver (loc(origL, i): Ref) is injective
          assert {:msg "  Precondition of function IsReordered might not hold. Quantified resource (loc(origL, i): Ref).Integer__item might not be injective. (0483a.vpr@38.13--38.53) [208645]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered5(i_4_1), neverTriggered5(i_4_2) }
            (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < (alen(origL): int))) && (0 <= i_4_2 && i_4_2 < (alen(origL): int))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(origL, i_4_1): Ref) != (loc(origL, i_4_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function IsReordered might not hold. There might be insufficient permission to access (loc(origL, i): Ref).Integer__item (0483a.vpr@38.13--38.53) [208646]"}
            (forall i_4_1: int ::
            { (loc(origL, i_4_1): Ref) } { (loc(origL, i_4_1): Ref) }
            0 <= i_4_1 && i_4_1 < (alen(origL): int) ==> 1 / 2 > NoPerm ==> Mask[(loc(origL, i_4_1): Ref), Integer__item] > NoPerm
          );
        
        // -- assumptions for inverse of receiver (loc(origL, i): Ref)
          assume (forall i_4_1: int ::
            { (loc(origL, i_4_1): Ref) } { (loc(origL, i_4_1): Ref) }
            (0 <= i_4_1 && i_4_1 < (alen(origL): int)) && NoPerm < 1 / 2 ==> qpRange5((loc(origL, i_4_1): Ref)) && invRecv5((loc(origL, i_4_1): Ref)) == i_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            (0 <= invRecv5(o_4) && invRecv5(o_4) < (alen(origL): int)) && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> (loc(origL, invRecv5(o_4)): Ref) == o_4
          );
        if (origL != newL) {
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function IsReordered might not hold. Fraction 1 / 2 might be negative. (0483a.vpr@38.13--38.53) [208647]"}
              (forall i_5: int ::
              { (loc(newL, i_5): Ref) } { (loc(newL, i_5): Ref) }
              (0 <= i_5 && i_5 < (alen(newL): int)) && dummyFunction(Heap[(loc(newL, i_5): Ref), Integer__item]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver (loc(newL, i): Ref) is injective
            assert {:msg "  Precondition of function IsReordered might not hold. Quantified resource (loc(newL, i): Ref).Integer__item might not be injective. (0483a.vpr@38.13--38.53) [208648]"}
              (forall i_5: int, i_5_1: int ::
              { neverTriggered6(i_5), neverTriggered6(i_5_1) }
              (((i_5 != i_5_1 && (0 <= i_5 && i_5 < (alen(newL): int))) && (0 <= i_5_1 && i_5_1 < (alen(newL): int))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(newL, i_5): Ref) != (loc(newL, i_5_1): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function IsReordered might not hold. There might be insufficient permission to access (loc(newL, i): Ref).Integer__item (0483a.vpr@38.13--38.53) [208649]"}
              (forall i_5: int ::
              { (loc(newL, i_5): Ref) } { (loc(newL, i_5): Ref) }
              0 <= i_5 && i_5 < (alen(newL): int) ==> 1 / 2 > NoPerm ==> Mask[(loc(newL, i_5): Ref), Integer__item] > NoPerm
            );
          
          // -- assumptions for inverse of receiver (loc(newL, i): Ref)
            assume (forall i_5: int ::
              { (loc(newL, i_5): Ref) } { (loc(newL, i_5): Ref) }
              (0 <= i_5 && i_5 < (alen(newL): int)) && NoPerm < 1 / 2 ==> qpRange6((loc(newL, i_5): Ref)) && invRecv6((loc(newL, i_5): Ref)) == i_5
            );
            assume (forall o_4: Ref ::
              { invRecv6(o_4) }
              (0 <= invRecv6(o_4) && invRecv6(o_4) < (alen(newL): int)) && (NoPerm < 1 / 2 && qpRange6(o_4)) ==> (loc(newL, invRecv6(o_4)): Ref) == o_4
            );
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    rep__1 := IsReordered(Heap, origL, order, newL, Seq#Length(order));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert rep__1 ==>
  //   (forall i__2: Int ::
  //     { (loc(origL, order[i__2]): Ref) }
  //     0 <= i__2 && i__2 < |order| ==>
  //     (loc(newL, i__2): Ref).Integer__item ==
  //     (loc(origL, order[i__2]): Ref).Integer__item) -- 0483a.vpr@40.11--40.181
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (rep__1) {
      
      // -- Check definedness of (forall i__2: Int :: { (loc(origL, order[i__2]): Ref) } 0 <= i__2 && i__2 < |order| ==> (loc(newL, i__2): Ref).Integer__item == (loc(origL, order[i__2]): Ref).Integer__item)
        if (*) {
          if (0 <= i__2 && i__2 < Seq#Length(order)) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(newL, i__2): Ref).Integer__item (0483a.vpr@40.19--40.180) [208650]"}
              HasDirectPerm(ExhaleWellDef0Mask, (loc(newL, i__2): Ref), Integer__item);
            assert {:msg "  Assert might fail. Index order[i__2] into order might be negative. (0483a.vpr@40.19--40.180) [208651]"}
              i__2 >= 0;
            assert {:msg "  Assert might fail. Index order[i__2] into order might exceed sequence length. (0483a.vpr@40.19--40.180) [208652]"}
              i__2 < Seq#Length(order);
            assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(origL, order[i__2]): Ref).Integer__item (0483a.vpr@40.19--40.180) [208653]"}
              HasDirectPerm(ExhaleWellDef0Mask, (loc(origL, Seq#Index(order, i__2)): Ref), Integer__item);
          }
          assume false;
        }
      if (*) {
        if (0 <= i__2_1 && i__2_1 < Seq#Length(order)) {
          assert {:msg "  Assert might fail. Assertion (loc(newL, i__2): Ref).Integer__item == (loc(origL, order[i__2]): Ref).Integer__item might not hold. (0483a.vpr@40.19--40.180) [208654]"}
            Heap[(loc(newL, i__2_1): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(order, i__2_1)): Ref), Integer__item];
        }
        assume false;
      }
      assume (forall i__2_2_1: int ::
        { (loc(origL, Seq#Index(order, i__2_2_1)): Ref) }
        0 <= i__2_2_1 && i__2_2_1 < Seq#Length(order) ==> Heap[(loc(newL, i__2_2_1): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(order, i__2_2_1)): Ref), Integer__item]
      );
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := rep__1 ==>
  //   (forall i__2: Int ::
  //     { (loc(origL, order[i__2]): Ref) }
  //     0 <= i__2 && i__2 < |order| ==>
  //     (loc(newL, i__2): Ref).Integer__item ==
  //     (loc(origL, order[i__2]): Ref).Integer__item) -- 0483a.vpr@41.3--41.181
    
    // -- Check definedness of rep__1 ==> (forall i__2: Int :: { (loc(origL, order[i__2]): Ref) } 0 <= i__2 && i__2 < |order| ==> (loc(newL, i__2): Ref).Integer__item == (loc(origL, order[i__2]): Ref).Integer__item)
      if (rep__1) {
        if (*) {
          if (0 <= i__2_2 && i__2_2 < Seq#Length(order)) {
            assert {:msg "  Assignment might fail. There might be insufficient permission to access (loc(newL, i__2): Ref).Integer__item (0483a.vpr@41.3--41.181) [208655]"}
              HasDirectPerm(Mask, (loc(newL, i__2_2): Ref), Integer__item);
            assert {:msg "  Assignment might fail. Index order[i__2] into order might be negative. (0483a.vpr@41.3--41.181) [208656]"}
              i__2_2 >= 0;
            assert {:msg "  Assignment might fail. Index order[i__2] into order might exceed sequence length. (0483a.vpr@41.3--41.181) [208657]"}
              i__2_2 < Seq#Length(order);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access (loc(origL, order[i__2]): Ref).Integer__item (0483a.vpr@41.3--41.181) [208658]"}
              HasDirectPerm(Mask, (loc(origL, Seq#Index(order, i__2_2)): Ref), Integer__item);
          }
          assume false;
        }
      }
    sys__result := rep__1 ==> (forall i__2_4: int ::
      { (loc(origL, Seq#Index(order, i__2_4)): Ref) }
      0 <= i__2_4 && i__2_4 < Seq#Length(order) ==> Heap[(loc(newL, i__2_4): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(order, i__2_4)): Ref), Integer__item]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert rep__1 ==>
  //   (forall i__2: Int ::
  //     { (loc(origL, order[i__2]): Ref) }
  //     0 <= i__2 && i__2 < |order| ==>
  //     (loc(newL, i__2): Ref).Integer__item ==
  //     (loc(origL, order[i__2]): Ref).Integer__item) -- 0483a.vpr@42.11--42.181
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (rep__1) {
      
      // -- Check definedness of (forall i__2: Int :: { (loc(origL, order[i__2]): Ref) } 0 <= i__2 && i__2 < |order| ==> (loc(newL, i__2): Ref).Integer__item == (loc(origL, order[i__2]): Ref).Integer__item)
        if (*) {
          if (0 <= i__2_3 && i__2_3 < Seq#Length(order)) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(newL, i__2): Ref).Integer__item (0483a.vpr@42.19--42.180) [208659]"}
              HasDirectPerm(ExhaleWellDef0Mask, (loc(newL, i__2_3): Ref), Integer__item);
            assert {:msg "  Assert might fail. Index order[i__2] into order might be negative. (0483a.vpr@42.19--42.180) [208660]"}
              i__2_3 >= 0;
            assert {:msg "  Assert might fail. Index order[i__2] into order might exceed sequence length. (0483a.vpr@42.19--42.180) [208661]"}
              i__2_3 < Seq#Length(order);
            assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(origL, order[i__2]): Ref).Integer__item (0483a.vpr@42.19--42.180) [208662]"}
              HasDirectPerm(ExhaleWellDef0Mask, (loc(origL, Seq#Index(order, i__2_3)): Ref), Integer__item);
          }
          assume false;
        }
      if (*) {
        if (0 <= i__2_6 && i__2_6 < Seq#Length(order)) {
          assert {:msg "  Assert might fail. Assertion (loc(newL, i__2): Ref).Integer__item == (loc(origL, order[i__2]): Ref).Integer__item might not hold. (0483a.vpr@42.19--42.180) [208663]"}
            Heap[(loc(newL, i__2_6): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(order, i__2_6)): Ref), Integer__item];
        }
        assume false;
      }
      assume (forall i__2_7_1: int ::
        { (loc(origL, Seq#Index(order, i__2_7_1)): Ref) }
        0 <= i__2_7_1 && i__2_7_1 < Seq#Length(order) ==> Heap[(loc(newL, i__2_7_1): Ref), Integer__item] == Heap[(loc(origL, Seq#Index(order, i__2_7_1)): Ref), Integer__item]
      );
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result -- 0483a.vpr@43.3--43.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result might not hold. (0483a.vpr@43.10--43.21) [208664]"}
      sys__result;
    assume state(Heap, Mask);
}