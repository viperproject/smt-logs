// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:11:06
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0099.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0099-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_1: int): bool;
function  neverTriggered3(i_3: int): bool;
function  neverTriggered4(i_1: int): bool;
function  neverTriggered5(i_3: int): bool;
function  neverTriggered6(i_4_1: int): bool;
function  neverTriggered7(i_1: int): bool;
function  neverTriggered8(i_1: int): bool;
function  neverTriggered9(i_3: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: fun01
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
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, i: int, b_24: bool): bool;
function  fun01'(Heap: HeapType, i: int, b_24: bool): bool;
axiom (forall Heap: HeapType, i: int, b_24: bool ::
  { fun01(Heap, i, b_24) }
  fun01(Heap, i, b_24) == fun01'(Heap, i, b_24) && dummyFunction(fun01#triggerStateless(i, b_24))
);
axiom (forall Heap: HeapType, i: int, b_24: bool ::
  { fun01'(Heap, i, b_24) }
  dummyFunction(fun01#triggerStateless(i, b_24))
);

// Framing axioms
function  fun01#frame(frame: FrameType, i: int, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, b_24: bool ::
  { state(Heap, Mask), fun01'(Heap, i, b_24) }
  state(Heap, Mask) ==> fun01'(Heap, i, b_24) == fun01#frame(EmptyFrame, i, b_24)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, i: int, b_24: bool ::
  { state(Heap, Mask), fun01'(Heap, i, b_24) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || fun01#trigger(EmptyFrame, i, b_24)) ==> fun01'(Heap, i, b_24) == b_24
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, i: int, b_24: bool): bool;

// State-independent trigger function
function  fun01#triggerStateless(i: int, b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure fun01#definedness(i: int, b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume Result == b_24;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Seq Ref), n: int) returns ()
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale |xs| == n -- issue_0099.vpr@7.3--7.19
    assume Seq#Length(xs) == n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..n)), (i2 in [0..n)) }
  //     { (i1 in [0..n)), xs[i2] }
  //     { (i2 in [0..n)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0099.vpr@8.3--8.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } { (i1 in [0..n)), xs[i2] } { (i2 in [0..n)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_17) && (Seq#Contains(Seq#Range(0, n), i2_7) && i1_17 != i2_7)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0099.vpr@8.10--8.98) [70549]"}
            i1_17 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0099.vpr@8.10--8.98) [70550]"}
            i1_17 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0099.vpr@8.10--8.98) [70551]"}
            i2_7 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0099.vpr@8.10--8.98) [70552]"}
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
  //     (i in [0..n)) ==> acc(xs[i].f, write)) -- issue_0099.vpr@9.3--9.55
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_2)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (issue_0099.vpr@9.10--9.55) [70553]"}
            i_2 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0099.vpr@9.10--9.55) [70554]"}
            i_2 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@9.10--9.55) [70555]"}
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
  
  // -- Translating statement: assert n > 0 -- issue_0099.vpr@12.3--12.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion n > 0 might not hold. (issue_0099.vpr@12.10--12.15) [70556]"}
      n > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i1_18: int;
  var i2_8: int;
  var i_6: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_7: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale |xs| == n -- issue_0099.vpr@16.3--16.19
    assume Seq#Length(xs) == n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..n)), (i2 in [0..n)) }
  //     { (i1 in [0..n)), xs[i2] }
  //     { (i2 in [0..n)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0099.vpr@17.3--17.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } { (i1 in [0..n)), xs[i2] } { (i2 in [0..n)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_18) && (Seq#Contains(Seq#Range(0, n), i2_8) && i1_18 != i2_8)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0099.vpr@17.10--17.98) [70557]"}
            i1_18 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0099.vpr@17.10--17.98) [70558]"}
            i1_18 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0099.vpr@17.10--17.98) [70559]"}
            i2_8 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0099.vpr@17.10--17.98) [70560]"}
            i2_8 < Seq#Length(xs);
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
  //     (i in [0..n)) ==> acc(xs[i].f, write)) -- issue_0099.vpr@18.3--18.55
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_6)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (issue_0099.vpr@18.10--18.55) [70561]"}
            i_6 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0099.vpr@18.10--18.55) [70562]"}
            i_6 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@18.10--18.55) [70563]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(xs, i_1)) && invRecv2(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(xs, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv2(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  //     (i in [0..n)) ==> acc(xs[i].f, write)) -- issue_0099.vpr@20.3--20.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_7)) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (issue_0099.vpr@20.10--20.55) [70564]"}
            i_7 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0099.vpr@20.10--20.55) [70565]"}
            i_7 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@20.10--20.55) [70567]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered3(i_3), neverTriggered3(i_3_1) }
        (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, n), i_3)) && Seq#Contains(Seq#Range(0, n), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (issue_0099.vpr@20.10--20.55) [70568]"}
        (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) ==> Mask[Seq#Index(xs, i_3), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && NoPerm < FullPerm ==> qpRange3(Seq#Index(xs, i_3)) && invRecv3(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(Seq#Range(0, n), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(xs, invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, n), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(xs, invRecv3(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, n), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: assert n > 0 -- issue_0099.vpr@23.3--23.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion n > 0 might not hold. (issue_0099.vpr@23.10--23.15) [70569]"}
      n > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var i1_25: int;
  var i2_14: int;
  var i_9: int;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_10: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Seq#Length(xs) == n;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { xs[i1], xs[i2] } 0 <= i1 && (i1 < |xs| && (0 <= i2 && (i2 < |xs| && i1 != i2))) ==> xs[i1] != xs[i2])
      if (*) {
        if (0 <= i1_25 && (i1_25 < Seq#Length(xs) && (0 <= i2_14 && (i2_14 < Seq#Length(xs) && i1_25 != i2_14)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0099.vpr@28.12--28.116) [70570]"}
            i1_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0099.vpr@28.12--28.116) [70571]"}
            i1_25 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0099.vpr@28.12--28.116) [70572]"}
            i2_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0099.vpr@28.12--28.116) [70573]"}
            i2_14 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      0 <= i1_1_1 && (i1_1_1 < Seq#Length(xs) && (0 <= i2_1_1 && (i2_1_1 < Seq#Length(xs) && i1_1_1 != i2_1_1))) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_9)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0099.vpr@29.12--29.57) [70574]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0099.vpr@29.12--29.57) [70575]"}
            i_9 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@29.12--29.57) [70576]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(xs, i_1)) && invRecv4(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(xs, invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) } { Seq#Index(xs, i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv4(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, n), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { xs[i] } (i in [0..n)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_10)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0099.vpr@30.11--30.56) [70577]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0099.vpr@30.11--30.56) [70578]"}
            i_10 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@30.11--30.56) [70579]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, n), i_3)) && Seq#Contains(Seq#Range(0, n), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) && NoPerm < FullPerm ==> qpRange5(Seq#Index(xs, i_3)) && invRecv5(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(xs, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, n), i_3) } { Seq#Contains(Seq#Range(0, n), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, n), i_3) ==> Seq#Index(xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv5(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, n), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume n > 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@30.11--30.56) [70580]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered6(i_4_1), neverTriggered6(i_4_2) }
        (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, n), i_4_1)) && Seq#Contains(Seq#Range(0, n), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_4_1) != Seq#Index(xs, i_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test03 might not hold. There might be insufficient permission to access xs[i].f (issue_0099.vpr@30.11--30.56) [70581]"}
        (forall i_4_1: int ::
        { Seq#Index(xs, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_4_1) } { Seq#Contains(Seq#Range(0, n), i_4_1) } { Seq#Index(xs, i_4_1) }
        Seq#Contains(Seq#Range(0, n), i_4_1) ==> Mask[Seq#Index(xs, i_4_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_4_1: int ::
        { Seq#Index(xs, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i_4_1) } { Seq#Contains(Seq#Range(0, n), i_4_1) } { Seq#Index(xs, i_4_1) }
        Seq#Contains(Seq#Range(0, n), i_4_1) && NoPerm < FullPerm ==> qpRange6(Seq#Index(xs, i_4_1)) && invRecv6(Seq#Index(xs, i_4_1)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        Seq#Contains(Seq#Range(0, n), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(xs, invRecv6(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, n), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(xs, invRecv6(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, n), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test03 might not hold. Assertion n > 0 might not hold. (issue_0099.vpr@33.12--33.17) [70582]"}
      n > 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i1_20: int;
  var i2_10: int;
  var i_12: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 10 < |xs| -- issue_0099.vpr@40.3--40.19
    assume 10 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { xs[i1], xs[i2] }
  //     0 <= i1 && (i1 < |xs| && (0 <= i2 && (i2 < |xs| && i1 != i2))) ==>
  //     xs[i1] != xs[i2]) -- issue_0099.vpr@41.3--41.114
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { xs[i1], xs[i2] } 0 <= i1 && (i1 < |xs| && (0 <= i2 && (i2 < |xs| && i1 != i2))) ==> xs[i1] != xs[i2])
      if (*) {
        if (0 <= i1_20 && (i1_20 < Seq#Length(xs) && (0 <= i2_10 && (i2_10 < Seq#Length(xs) && i1_20 != i2_10)))) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0099.vpr@41.10--41.114) [70583]"}
            i1_20 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0099.vpr@41.10--41.114) [70584]"}
            i1_20 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0099.vpr@41.10--41.114) [70585]"}
            i2_10 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0099.vpr@41.10--41.114) [70586]"}
            i2_10 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      0 <= i1_1_1 && (i1_1_1 < Seq#Length(xs) && (0 <= i2_1_1 && (i2_1_1 < Seq#Length(xs) && i1_1_1 != i2_1_1))) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { fun01(i, b) }
  //     { xs[i] }
  //     0 <= i && (i < |xs| && fun01(i, b)) ==> acc(xs[i].f, write)) -- issue_0099.vpr@42.3--42.77
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { fun01(i, b) } { xs[i] } 0 <= i && (i < |xs| && fun01(i, b)) ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_12) {
          if (i_12 < Seq#Length(xs)) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= i_12 && (i_12 < Seq#Length(xs) && fun01(Heap, i_12, b_24))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (issue_0099.vpr@42.10--42.77) [70587]"}
            i_12 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0099.vpr@42.10--42.77) [70588]"}
            i_12 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@42.10--42.77) [70589]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && (i_1 < Seq#Length(xs) && fun01(Heap, i_1, b_24)))) && (0 <= i_1_1 && (i_1_1 < Seq#Length(xs) && fun01(Heap, i_1_1, b_24)))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { fun01#frame(EmptyFrame, i_1, b_24) } { Seq#Index(xs, i_1) }
        (0 <= i_1 && (i_1 < Seq#Length(xs) && fun01(Heap, i_1, b_24))) && NoPerm < FullPerm ==> qpRange7(Seq#Index(xs, i_1)) && invRecv7(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        ((0 <= invRecv7(o_4) && (invRecv7(o_4) < Seq#Length(xs) && fun01(Heap, invRecv7(o_4), b_24))) && NoPerm < FullPerm) && qpRange7(o_4) ==> Seq#Index(xs, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { fun01#frame(EmptyFrame, i_1, b_24) } { Seq#Index(xs, i_1) }
        0 <= i_1 && (i_1 < Seq#Length(xs) && fun01(Heap, i_1, b_24)) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv7(o_4) && (invRecv7(o_4) < Seq#Length(xs) && fun01(Heap, invRecv7(o_4), b_24))) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv7(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv7(o_4) && (invRecv7(o_4) < Seq#Length(xs) && fun01(Heap, invRecv7(o_4), b_24))) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b -- issue_0099.vpr@45.3--45.11
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion b might not hold. (issue_0099.vpr@45.10--45.11) [70590]"}
      b_24;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i1_21: int;
  var i2_11: int;
  var i_18: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_13: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 10 < |xs| -- issue_0099.vpr@49.3--49.19
    assume 10 < Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { xs[i1], xs[i2] }
  //     0 <= i1 && (i1 < |xs| && (0 <= i2 && (i2 < |xs| && i1 != i2))) ==>
  //     xs[i1] != xs[i2]) -- issue_0099.vpr@50.3--50.114
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { xs[i1], xs[i2] } 0 <= i1 && (i1 < |xs| && (0 <= i2 && (i2 < |xs| && i1 != i2))) ==> xs[i1] != xs[i2])
      if (*) {
        if (0 <= i1_21 && (i1_21 < Seq#Length(xs) && (0 <= i2_11 && (i2_11 < Seq#Length(xs) && i1_21 != i2_11)))) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0099.vpr@50.10--50.114) [70591]"}
            i1_21 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0099.vpr@50.10--50.114) [70592]"}
            i1_21 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0099.vpr@50.10--50.114) [70593]"}
            i2_11 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0099.vpr@50.10--50.114) [70594]"}
            i2_11 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      0 <= i1_1_1 && (i1_1_1 < Seq#Length(xs) && (0 <= i2_1_1 && (i2_1_1 < Seq#Length(xs) && i1_1_1 != i2_1_1))) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { xs[i] }
  //     0 <= i && i < |xs| ==> acc(xs[i].f, write)) -- issue_0099.vpr@51.3--51.62
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_18 && i_18 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (issue_0099.vpr@51.10--51.62) [70595]"}
            i_18 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0099.vpr@51.10--51.62) [70596]"}
            i_18 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@51.10--51.62) [70597]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < Seq#Length(xs))) && (0 <= i_1_1 && i_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
        (0 <= i_1 && i_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange8(Seq#Index(xs, i_1)) && invRecv8(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(xs, invRecv8(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
        0 <= i_1 && i_1 < Seq#Length(xs) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv8(o_4) && invRecv8(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv8(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  //     { fun01(i, b) }
  //     { xs[i] }
  //     0 <= i && (i < |xs| && fun01(i, b)) ==> acc(xs[i].f, write)) -- issue_0099.vpr@53.3--53.77
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { fun01(i, b) } { xs[i] } 0 <= i && (i < |xs| && fun01(i, b)) ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_13) {
          if (i_13 < Seq#Length(xs)) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= i_13 && (i_13 < Seq#Length(xs) && fun01(Heap, i_13, b_24))) {
          assert {:msg "  Exhale might fail. Index xs[i] into xs might be negative. (issue_0099.vpr@53.10--53.77) [70598]"}
            i_13 >= 0;
          assert {:msg "  Exhale might fail. Index xs[i] into xs might exceed sequence length. (issue_0099.vpr@53.10--53.77) [70599]"}
            i_13 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Exhale might fail. Quantified resource xs[i].f might not be injective. (issue_0099.vpr@53.10--53.77) [70601]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered9(i_3), neverTriggered9(i_3_1) }
        (((i_3 != i_3_1 && (0 <= i_3 && (i_3 < Seq#Length(xs) && fun01(Heap, i_3, b_24)))) && (0 <= i_3_1 && (i_3_1 < Seq#Length(xs) && fun01(Heap, i_3_1, b_24)))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access xs[i].f (issue_0099.vpr@53.10--53.77) [70602]"}
        (forall i_3: int ::
        { Seq#Index(xs, i_3) } { fun01#frame(EmptyFrame, i_3, b_24) } { Seq#Index(xs, i_3) }
        0 <= i_3 && (i_3 < Seq#Length(xs) && fun01(Heap, i_3, b_24)) ==> Mask[Seq#Index(xs, i_3), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { fun01#frame(EmptyFrame, i_3, b_24) } { Seq#Index(xs, i_3) }
        (0 <= i_3 && (i_3 < Seq#Length(xs) && fun01(Heap, i_3, b_24))) && NoPerm < FullPerm ==> qpRange9(Seq#Index(xs, i_3)) && invRecv9(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (0 <= invRecv9(o_4) && (invRecv9(o_4) < Seq#Length(xs) && fun01(Heap, invRecv9(o_4), b_24))) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(xs, invRecv9(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv9(o_4) && (invRecv9(o_4) < Seq#Length(xs) && fun01(Heap, invRecv9(o_4), b_24))) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(xs, invRecv9(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((0 <= invRecv9(o_4) && (invRecv9(o_4) < Seq#Length(xs) && fun01(Heap, invRecv9(o_4), b_24))) && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: assert b -- issue_0099.vpr@56.3--56.11
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion b might not hold. (issue_0099.vpr@56.10--56.11) [70603]"}
      b_24;
    assume state(Heap, Mask);
}