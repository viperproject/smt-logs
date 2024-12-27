// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:46:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0204.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0204-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(n_2: Ref): bool;
function  neverTriggered2(i_3: int): bool;
function  neverTriggered3(i_7_1: int): bool;
function  neverTriggered4(i$0_2: int): bool;
function  neverTriggered5(n: Ref): bool;
function  neverTriggered6(n_2: Ref): bool;
function  neverTriggered7(n_3: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(self: Ref): int;
function  invRecv3(self_1: Ref): int;
function  invRecv4(self_2: Ref): int;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(self: Ref): bool;
function  qpRange3(self_1: Ref): bool;
function  qpRange4(self_2: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;

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
// Preamble of Set module.
// ==================================================


type Set T = [T]bool;

function Set#Card<T>(Set T): int;
axiom (forall<T> s: Set T :: { Set#Card(s) } 0 <= Set#Card(s));

function Set#Empty<T>(): Set T;
axiom (forall<T> o: T :: { Set#Empty()[o] } !Set#Empty()[o]);
axiom (forall<T> s: Set T :: { Set#Card(s) }
  (Set#Card(s) == 0 <==> s == Set#Empty()) &&
  (Set#Card(s) != 0 ==> (exists x: T :: s[x])));

function Set#Singleton<T>(T): Set T;
axiom (forall<T> r: T :: { Set#Singleton(r) } Set#Singleton(r)[r]);
axiom (forall<T> r: T, o: T :: { Set#Singleton(r)[o] } Set#Singleton(r)[o] <==> r == o);
axiom (forall<T> r: T :: { Set#Card(Set#Singleton(r)) } Set#Card(Set#Singleton(r)) == 1);

function Set#UnionOne<T>(Set T, T): Set T;
axiom (forall<T> a: Set T, x: T, o: T :: { Set#UnionOne(a,x)[o] }
  Set#UnionOne(a,x)[o] <==> o == x || a[o]);
axiom (forall<T> a: Set T, x: T :: { Set#UnionOne(a, x) }
  Set#UnionOne(a, x)[x]);
axiom (forall<T> a: Set T, x: T, y: T :: { Set#UnionOne(a, x), a[y] }
  a[y] ==> Set#UnionOne(a, x)[y]);
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  !a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

function Set#Union<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Union(a,b)[o] }
  Set#Union(a,b)[o] <==> a[o] || b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), a[y] }
  a[y] ==> Set#Union(a, b)[y]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), b[y] }
  b[y] ==> Set#Union(a, b)[y]);
//axiom (forall<T> a, b: Set T :: { Set#Union(a, b) }
//  Set#Disjoint(a, b) ==>
//    Set#Difference(Set#Union(a, b), a) == b &&
//    Set#Difference(Set#Union(a, b), b) == a);

function Set#Intersection<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Intersection(a,b)[o] } {Set#Intersection(a,b), a[o]} {Set#Intersection(a,b), b[o]} // AS: added alternative triggers 20/06/19
  Set#Intersection(a,b)[o] <==> a[o] && b[o]);

axiom (forall<T> a, b: Set T :: { Set#Union(Set#Union(a, b), b) }
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Union(a, Set#Union(a, b)) }
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(Set#Intersection(a, b), b) }
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(a, Set#Intersection(a, b)) }
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Card(Set#Union(a, b)) }{ Set#Card(Set#Intersection(a, b)) }
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b)) == Set#Card(a) + Set#Card(b));

function Set#Difference<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Difference(a,b)[o] } { Set#Difference(a,b), a[o] }
  Set#Difference(a,b)[o] <==> a[o] && !b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Difference(a, b), b[y] }
  b[y] ==> !Set#Difference(a, b)[y] );
axiom (forall<T> a, b: Set T ::
  { Set#Card(Set#Difference(a, b)) }
  Set#Card(Set#Difference(a, b)) + Set#Card(Set#Difference(b, a))
  + Set#Card(Set#Intersection(a, b))
    == Set#Card(Set#Union(a, b)) &&
  Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

function Set#Subset<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Subset(a,b) }
  Set#Subset(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] ==> b[o]));
// axiom(forall<T> a: Set T, b: Set T ::
//   { Set#Subset(a,b), Set#Card(a), Set#Card(b) }  // very restrictive trigger
//   Set#Subset(a,b) ==> Set#Card(a) <= Set#Card(b));


function Set#Equal<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }
  Set#Equal(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] <==> b[o]));
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }  // extensionality axiom for sets
  Set#Equal(a,b) ==> a == b);

//function Set#Disjoint<T>(Set T, Set T): bool;
//axiom (forall<T> a: Set T, b: Set T :: { Set#Disjoint(a,b) }
//  Set#Disjoint(a,b) <==> (forall o: T :: {a[o]} {b[o]} !a[o] || !b[o]));

// ---------------------------------------------------------------
// -- Axiomatization of multisets --------------------------------
// ---------------------------------------------------------------

function Math#min(a: int, b: int): int;
axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);
axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);
axiom (forall a: int, b: int :: { Math#min(a, b) } Math#min(a, b) == a || Math#min(a, b) == b);

function Math#clip(a: int): int;
axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);
axiom (forall a: int :: { Math#clip(a) } a < 0  ==> Math#clip(a) == 0);

type MultiSet T; // = [T]int;

function MultiSet#Select<T>(ms: MultiSet T, x:T): int;

//function $IsGoodMultiSet<T>(ms: MultiSet T): bool;
// ints are non-negative, used after havocing, and for conversion from sequences to multisets.
//axiom (forall<T> ms: MultiSet T :: { $IsGoodMultiSet(ms) }
//  $IsGoodMultiSet(ms) <==>
//  (forall bx: T :: { ms[bx] } 0 <= ms[bx] && ms[bx] <= MultiSet#Card(ms)));

axiom (forall<T> ms: MultiSet T, x: T :: {MultiSet#Select(ms,x)} MultiSet#Select(ms,x) >= 0); // NEW

function MultiSet#Card<T>(MultiSet T): int;
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));
//axiom (forall<T> s: MultiSet T, x: T, n: int :: { MultiSet#Card(s[x := n]) }
//  0 <= n ==> MultiSet#Card(s[x := n]) == MultiSet#Card(s) - s[x] + n);
//
function MultiSet#Empty<T>(): MultiSet T;
axiom (forall<T> o: T :: { MultiSet#Select(MultiSet#Empty(),o) } MultiSet#Select(MultiSet#Empty(),o) == 0);
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) }
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty()) &&
  (MultiSet#Card(s) != 0 ==> (exists x: T :: 0 < MultiSet#Select(s,x))));

function MultiSet#Singleton<T>(T): MultiSet T;
axiom (forall<T> r: T, o: T :: { MultiSet#Select(MultiSet#Singleton(r),o) } (MultiSet#Select(MultiSet#Singleton(r),o) == 1 <==> r == o) &&
                                                            (MultiSet#Select(MultiSet#Singleton(r),o) == 0 <==> r != o));
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Card(MultiSet#Singleton(r)) == 1 && MultiSet#Select(MultiSet#Singleton(r),r) == 1); // AS: added
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r)); // AS: remove this?

function MultiSet#UnionOne<T>(MultiSet T, T): MultiSet T;
// union-ing increases count by one for x, not for others
axiom (forall<T> a: MultiSet T, x: T, o: T :: { MultiSet#Select(MultiSet#UnionOne(a,x),o) } { MultiSet#UnionOne(a, x), MultiSet#Select(a,o) } // AS: added back this trigger (used on a similar axiom before)
  MultiSet#Select(MultiSet#UnionOne(a, x),o) == (if x==o then MultiSet#Select(a,o) + 1 else MultiSet#Select(a,o)));
// non-decreasing
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#Card(MultiSet#UnionOne(a, x)) } {MultiSet#UnionOne(a, x), MultiSet#Card(a)} // AS: added alternative trigger
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);
// AS: added - concrete knowledge of element added
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#UnionOne(a,x)}
  MultiSet#Select(MultiSet#UnionOne(a, x),x) > 0 && MultiSet#Card(MultiSet#UnionOne(a, x)) > 0);

function MultiSet#Union<T>(MultiSet T, MultiSet T): MultiSet T;
// union-ing is the sum of the contents
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Union(a,b),o) } {MultiSet#Union(a,b), MultiSet#Select(a,o), MultiSet#Select(b,o)}// AS: added triggers
  MultiSet#Select(MultiSet#Union(a,b),o) == MultiSet#Select(a,o) + MultiSet#Select(b,o));
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Card(MultiSet#Union(a,b)) } {MultiSet#Card(a), MultiSet#Union(a,b)} {MultiSet#Card(b), MultiSet#Union(a,b)}
  MultiSet#Card(MultiSet#Union(a,b)) == MultiSet#Card(a) + MultiSet#Card(b));

function MultiSet#Intersection<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Intersection(a,b),o) }
  MultiSet#Select(MultiSet#Intersection(a,b),o) == Math#min(MultiSet#Select(a,o),  MultiSet#Select(b,o)));

// left and right pseudo-idempotence
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(MultiSet#Intersection(a, b), b) }
  MultiSet#Intersection(MultiSet#Intersection(a, b), b) == MultiSet#Intersection(a, b));
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) }
  MultiSet#Intersection(a, MultiSet#Intersection(a, b)) == MultiSet#Intersection(a, b));

// multiset difference, a - b. clip() makes it positive.
function MultiSet#Difference<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Difference(a,b),o) }
  MultiSet#Select(MultiSet#Difference(a,b),o) == Math#clip(MultiSet#Select(a,o) - MultiSet#Select(b,o)));
axiom (forall<T> a, b: MultiSet T, y: T :: { MultiSet#Difference(a, b), MultiSet#Select(b,y), MultiSet#Select(a,y) }
  MultiSet#Select(a,y) <= MultiSet#Select(b,y) ==> MultiSet#Select(MultiSet#Difference(a, b),y) == 0 );
axiom (forall<T> a, b: MultiSet T ::
  { MultiSet#Card(MultiSet#Difference(a, b)) }
  MultiSet#Card(MultiSet#Difference(a, b)) + MultiSet#Card(MultiSet#Difference(b, a))
  + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
    == MultiSet#Card(MultiSet#Union(a, b)) &&
  MultiSet#Card(MultiSet#Difference(a, b)) == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

// multiset subset means a must have at most as many of each element as b
function MultiSet#Subset<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Subset(a,b) }
  MultiSet#Subset(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) <= MultiSet#Select(b,o)));

function MultiSet#Equal<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == MultiSet#Select(b,o)));
// extensionality axiom for multisets
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) ==> a == b);

function MultiSet#Disjoint<T>(MultiSet T, MultiSet T): bool;
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Disjoint(a,b) }
  MultiSet#Disjoint(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == 0 || MultiSet#Select(b,o) == 0));

    

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of predicate Node
// ==================================================

type PredicateType_Node;
function  Node(self: Ref): Field PredicateType_Node FrameType;
function  Node#sm(self: Ref): Field PredicateType_Node PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(Node(self)) }
  PredicateMaskField(Node(self)) == Node#sm(self)
);
axiom (forall self: Ref ::
  { Node(self) }
  IsPredicateField(Node(self))
);
axiom (forall self: Ref ::
  { Node(self) }
  getPredWandId(Node(self)) == 0
);
function  Node#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { Node(self), Node(self2) }
  Node(self) == Node(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { Node#sm(self), Node#sm(self2) }
  Node#sm(self) == Node#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { Node#trigger(Heap, Node(self)) }
  Node#everUsed(Node(self))
);

procedure Node#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Node
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, val:=Mask[self, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate GRAPH
// ==================================================

type PredicateType_GRAPH;
function  GRAPH(nodes_1: (Set Ref)): Field PredicateType_GRAPH FrameType;
function  GRAPH#sm(nodes_1: (Set Ref)): Field PredicateType_GRAPH PMaskType;
axiom (forall nodes_1: (Set Ref) ::
  { PredicateMaskField(GRAPH(nodes_1)) }
  PredicateMaskField(GRAPH(nodes_1)) == GRAPH#sm(nodes_1)
);
axiom (forall nodes_1: (Set Ref) ::
  { GRAPH(nodes_1) }
  IsPredicateField(GRAPH(nodes_1))
);
axiom (forall nodes_1: (Set Ref) ::
  { GRAPH(nodes_1) }
  getPredWandId(GRAPH(nodes_1)) == 1
);
function  GRAPH#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  GRAPH#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall nodes_1: (Set Ref), nodes2: (Set Ref) ::
  { GRAPH(nodes_1), GRAPH(nodes2) }
  GRAPH(nodes_1) == GRAPH(nodes2) ==> nodes_1 == nodes2
);
axiom (forall nodes_1: (Set Ref), nodes2: (Set Ref) ::
  { GRAPH#sm(nodes_1), GRAPH#sm(nodes2) }
  GRAPH#sm(nodes_1) == GRAPH#sm(nodes2) ==> nodes_1 == nodes2
);

axiom (forall Heap: HeapType, nodes_1: (Set Ref) ::
  { GRAPH#trigger(Heap, GRAPH(nodes_1)) }
  GRAPH#everUsed(GRAPH(nodes_1))
);

// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { (n in nodes) } (n in nodes) ==> acc(n.next, write)) in predicate GRAPH
// ==================================================

function  GRAPH#condqp1(Heap: HeapType, nodes_1_1: (Set Ref)): int;
function  sk_GRAPH#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, nodes_1: (Set Ref) ::
  { GRAPH#condqp1(Heap2Heap, nodes_1), GRAPH#condqp1(Heap1Heap, nodes_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (nodes_1[sk_GRAPH#condqp1(GRAPH#condqp1(Heap2Heap, nodes_1), GRAPH#condqp1(Heap1Heap, nodes_1))] && NoPerm < FullPerm <==> nodes_1[sk_GRAPH#condqp1(GRAPH#condqp1(Heap2Heap, nodes_1), GRAPH#condqp1(Heap1Heap, nodes_1))] && NoPerm < FullPerm) && (nodes_1[sk_GRAPH#condqp1(GRAPH#condqp1(Heap2Heap, nodes_1), GRAPH#condqp1(Heap1Heap, nodes_1))] && NoPerm < FullPerm ==> Heap2Heap[sk_GRAPH#condqp1(GRAPH#condqp1(Heap2Heap, nodes_1), GRAPH#condqp1(Heap1Heap, nodes_1)), next] == Heap1Heap[sk_GRAPH#condqp1(GRAPH#condqp1(Heap2Heap, nodes_1), GRAPH#condqp1(Heap1Heap, nodes_1)), next]) ==> GRAPH#condqp1(Heap2Heap, nodes_1) == GRAPH#condqp1(Heap1Heap, nodes_1)
);

procedure GRAPH#definedness(nodes_1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of GRAPH
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource n.next might not be injective. (0204.vpr@20.1--22.2) [194948]"}
      (forall n_2: Ref, n_2_1: Ref ::
      
      (((n_2 != n_2_1 && nodes_1[n_2]) && nodes_1[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
    );
    
    // -- Define Inverse Function
      assume (forall n_2: Ref ::
        { Heap[n_2, next] } { QPMask[n_2, next] } { nodes_1[n_2] }
        nodes_1[n_2] && NoPerm < FullPerm ==> qpRange1(n_2) && invRecv1(n_2) == n_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (nodes_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_2: Ref ::
        { Heap[n_2, next] } { QPMask[n_2, next] } { nodes_1[n_2] }
        nodes_1[n_2] ==> n_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((nodes_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((nodes_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_1(s_2: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i_2: int;
  var j: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_4: int;
  var QPMask: MaskType;
  var i_6: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var i$0: int;
  var j_2_1: int;
  var i$0_6: int;
  var i_8_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int, j: Int :: { s[i], s[j] } i >= 0 && (i < |s| && (j >= 0 && (j < |s| && i != j))) ==> s[i] != s[j])
      if (*) {
        if (i_2 >= 0 && (i_2 < Seq#Length(s_2) && (j >= 0 && (j < Seq#Length(s_2) && i_2 != j)))) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (0204.vpr@11.11--11.99) [194949]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (0204.vpr@11.11--11.99) [194950]"}
            i_2 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might be negative. (0204.vpr@11.11--11.99) [194951]"}
            j >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might exceed sequence length. (0204.vpr@11.11--11.99) [194952]"}
            j < Seq#Length(s_2);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(s_2, i_1), Seq#Index(s_2, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(s_2) && (j_1 >= 0 && (j_1 < Seq#Length(s_2) && i_1 != j_1))) ==> Seq#Index(s_2, i_1) != Seq#Index(s_2, j_1)
    );
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
    
    // -- Check definedness of (forall i: Int :: { s[i] } i >= 0 && i < |s| ==> acc(Node(s[i]), write))
      if (*) {
        if (i_4 >= 0 && i_4 < Seq#Length(s_2)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (0204.vpr@12.13--12.103) [194953]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (0204.vpr@12.13--12.103) [194954]"}
            i_4 < Seq#Length(s_2);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(Node(s[i]), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource Node(s[i]) might not be injective. (0204.vpr@12.13--12.103) [194955]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered2(i_3), neverTriggered2(i_3_1) }
        (((i_3 != i_3_1 && (i_3 >= 0 && i_3 < Seq#Length(s_2))) && (i_3_1 >= 0 && i_3_1 < Seq#Length(s_2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_3) != Seq#Index(s_2, i_3_1)
      );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { PostHeap[null, Node(Seq#Index(s_2, i_3))] } { PostMask[null, Node(Seq#Index(s_2, i_3))] } { Seq#Index(s_2, i_3) }
        (i_3 >= 0 && i_3 < Seq#Length(s_2)) && NoPerm < FullPerm ==> invRecv2(Seq#Index(s_2, i_3)) == i_3 && qpRange2(Seq#Index(s_2, i_3))
      );
      assume (forall self: Ref ::
        { invRecv2(self) }
        ((invRecv2(self) >= 0 && invRecv2(self) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange2(self) ==> Seq#Index(s_2, invRecv2(self)) == self
      );
    
    // -- Define updated permissions
      assume (forall self: Ref ::
        { QPMask[null, Node(self)] }
        ((invRecv2(self) >= 0 && invRecv2(self) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange2(self) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv2(self)) == self) && QPMask[null, Node(self)] == PostMask[null, Node(self)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall self: Ref ::
        { QPMask[null, Node(self)] }
        !(((invRecv2(self) >= 0 && invRecv2(self) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange2(self)) ==> QPMask[null, Node(self)] == PostMask[null, Node(self)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { s[i] } i >= 0 && i < |s| ==> (unfolding acc(Node(s[i]), write) in s[i].val >= 0))
      if (*) {
        if (i_6 >= 0 && i_6 < Seq#Length(s_2)) {
          UnfoldingHeap := PostHeap;
          UnfoldingMask := PostMask;
          assume Node#trigger(UnfoldingHeap, Node(Seq#Index(s_2, i_6)));
          assume UnfoldingHeap[null, Node(Seq#Index(s_2, i_6))] == FrameFragment(UnfoldingHeap[Seq#Index(s_2, i_6), val]);
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Node(s[i]) (0204.vpr@12.13--12.103) [194956]"}
              perm <= UnfoldingMask[null, Node(Seq#Index(s_2, i_6))];
          }
          UnfoldingMask := UnfoldingMask[null, Node(Seq#Index(s_2, i_6)):=UnfoldingMask[null, Node(Seq#Index(s_2, i_6))] - perm];
          perm := FullPerm;
          assume Seq#Index(s_2, i_6) != null;
          UnfoldingMask := UnfoldingMask[Seq#Index(s_2, i_6), val:=UnfoldingMask[Seq#Index(s_2, i_6), val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (0204.vpr@12.13--12.103) [194957]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (0204.vpr@12.13--12.103) [194958]"}
            i_6 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (0204.vpr@12.13--12.103) [194959]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (0204.vpr@12.13--12.103) [194960]"}
            i_6 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s[i].val (0204.vpr@12.13--12.103) [194961]"}
            HasDirectPerm(UnfoldingMask, Seq#Index(s_2, i_6), val);
          
          // -- Free assumptions (exp module)
            PostHeap := PostHeap[null, Node#sm(Seq#Index(s_2, i_6)):=PostHeap[null, Node#sm(Seq#Index(s_2, i_6))][Seq#Index(s_2, i_6), val:=true]];
            assume state(PostHeap, PostMask);
        }
        assume false;
      }
    assume (forall i_6_1: int ::
      { Seq#Index(s_2, i_6_1) }
      i_6_1 >= 0 && i_6_1 < Seq#Length(s_2) ==> PostHeap[Seq#Index(s_2, i_6_1), val] >= 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: foo(s) -- 0204.vpr@15.5--15.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      if (*) {
        if (i$0 >= 0 && (i$0 < Seq#Length(s_2) && (j_2_1 >= 0 && (j_2_1 < Seq#Length(s_2) && i$0 != j_2_1)))) {
          assert {:msg "  The precondition of method foo might not hold. Assertion s[i$0] != s[j] might not hold. (0204.vpr@15.5--15.11) [194962]"}
            Seq#Index(s_2, i$0) != Seq#Index(s_2, j_2_1);
        }
        assume false;
      }
      assume (forall i$0_1_1_1: int, j_3_1_1: int ::
        { Seq#Index(s_2, i$0_1_1_1), Seq#Index(s_2, j_3_1_1) }
        i$0_1_1_1 >= 0 && (i$0_1_1_1 < Seq#Length(s_2) && (j_3_1_1 >= 0 && (j_3_1_1 < Seq#Length(s_2) && i$0_1_1_1 != j_3_1_1))) ==> Seq#Index(s_2, i$0_1_1_1) != Seq#Index(s_2, j_3_1_1)
      );
    
    // -- Inhaling postcondition
      havoc QPMask;
      
      // -- check if receiver acc(Node(s[i$0]), write) is injective
        assert {:msg "  Method call might fail. Quantified resource Node(s[i$0]) might not be injective. (0204.vpr@15.5--15.11) [194963]"}
          (forall i$0_2: int, i$0_2_1: int ::
          { neverTriggered4(i$0_2), neverTriggered4(i$0_2_1) }
          (((i$0_2 != i$0_2_1 && (i$0_2 >= 0 && i$0_2 < Seq#Length(s_2))) && (i$0_2_1 >= 0 && i$0_2_1 < Seq#Length(s_2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i$0_2) != Seq#Index(s_2, i$0_2_1)
        );
      
      // -- Define Inverse Function
        assume (forall i$0_2: int ::
          { Heap[null, Node(Seq#Index(s_2, i$0_2))] } { Mask[null, Node(Seq#Index(s_2, i$0_2))] } { Seq#Index(s_2, i$0_2) }
          (i$0_2 >= 0 && i$0_2 < Seq#Length(s_2)) && NoPerm < FullPerm ==> invRecv4(Seq#Index(s_2, i$0_2)) == i$0_2 && qpRange4(Seq#Index(s_2, i$0_2))
        );
        assume (forall self_2: Ref ::
          { invRecv4(self_2) }
          ((invRecv4(self_2) >= 0 && invRecv4(self_2) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange4(self_2) ==> Seq#Index(s_2, invRecv4(self_2)) == self_2
        );
      
      // -- Define updated permissions
        assume (forall self_2: Ref ::
          { QPMask[null, Node(self_2)] }
          ((invRecv4(self_2) >= 0 && invRecv4(self_2) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange4(self_2) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv4(self_2)) == self_2) && QPMask[null, Node(self_2)] == Mask[null, Node(self_2)] + FullPerm
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall self_2: Ref ::
          { QPMask[null, Node(self_2)] }
          !(((invRecv4(self_2) >= 0 && invRecv4(self_2) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange4(self_2)) ==> QPMask[null, Node(self_2)] == Mask[null, Node(self_2)]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall i$0_4_1: int ::
        { Seq#Index(s_2, i$0_4_1) }
        i$0_4_1 >= 0 && i$0_4_1 < Seq#Length(s_2) ==> Heap[Seq#Index(s_2, i$0_4_1), val] >= 0
      );
      assume state(Heap, Mask);
      
      // -- Execute definedness check of (forall i$0: Int :: { s[i$0] } i$0 >= 0 && i$0 < |s| ==> acc(Node(s[i$0]), write)) && (forall i$0: Int :: { s[i$0] } i$0 >= 0 && i$0 < |s| ==> (unfolding acc(Node(s[i$0]), write) in s[i$0].val >= 0)) without enforcing the checks (e.g., to gain more information)
        if (*) {
          assume false;
        }
        if (*) {
          if (i$0_6 >= 0 && i$0_6 < Seq#Length(s_2)) {
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume Node#trigger(UnfoldingHeap, Node(Seq#Index(s_2, i$0_6)));
            assume UnfoldingHeap[null, Node(Seq#Index(s_2, i$0_6))] == FrameFragment(UnfoldingHeap[Seq#Index(s_2, i$0_6), val]);
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access Node(s[i$0]) (0204.vpr@12.13--12.103) [194964]"}
                perm <= UnfoldingMask[null, Node(Seq#Index(s_2, i$0_6))];
            }
            UnfoldingMask := UnfoldingMask[null, Node(Seq#Index(s_2, i$0_6)):=UnfoldingMask[null, Node(Seq#Index(s_2, i$0_6))] - perm];
            perm := FullPerm;
            assume Seq#Index(s_2, i$0_6) != null;
            UnfoldingMask := UnfoldingMask[Seq#Index(s_2, i$0_6), val:=UnfoldingMask[Seq#Index(s_2, i$0_6), val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              Heap := Heap[null, Node#sm(Seq#Index(s_2, i$0_6)):=Heap[null, Node#sm(Seq#Index(s_2, i$0_6))][Seq#Index(s_2, i$0_6), val:=true]];
              assume state(Heap, Mask);
          }
          assume false;
        }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(Node(s[i]), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource Node(s[i]) might not be injective. (0204.vpr@12.13--12.103) [194965]"}
        (forall i_7_1: int, i_7_2: int ::
        { neverTriggered3(i_7_1), neverTriggered3(i_7_2) }
        (((i_7_1 != i_7_2 && (i_7_1 >= 0 && i_7_1 < Seq#Length(s_2))) && (i_7_2 >= 0 && i_7_2 < Seq#Length(s_2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_7_1) != Seq#Index(s_2, i_7_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access Node(s[i]) (0204.vpr@12.13--12.103) [194966]"}
        (forall i_7_1: int ::
        { Heap[null, Node(Seq#Index(s_2, i_7_1))] } { Mask[null, Node(Seq#Index(s_2, i_7_1))] } { Seq#Index(s_2, i_7_1) }
        i_7_1 >= 0 && i_7_1 < Seq#Length(s_2) ==> Mask[null, Node(Seq#Index(s_2, i_7_1))] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(Node(s[i]), write)
      assume (forall i_7_1: int ::
        { Heap[null, Node(Seq#Index(s_2, i_7_1))] } { Mask[null, Node(Seq#Index(s_2, i_7_1))] } { Seq#Index(s_2, i_7_1) }
        (i_7_1 >= 0 && i_7_1 < Seq#Length(s_2)) && NoPerm < FullPerm ==> invRecv3(Seq#Index(s_2, i_7_1)) == i_7_1 && qpRange3(Seq#Index(s_2, i_7_1))
      );
      assume (forall self_1: Ref ::
        { invRecv3(self_1) }
        ((invRecv3(self_1) >= 0 && invRecv3(self_1) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange3(self_1) ==> Seq#Index(s_2, invRecv3(self_1)) == self_1
      );
    
    // -- assume permission updates
      assume (forall self_1: Ref ::
        { QPMask[null, Node(self_1)] }
        ((invRecv3(self_1) >= 0 && invRecv3(self_1) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange3(self_1) ==> Seq#Index(s_2, invRecv3(self_1)) == self_1 && QPMask[null, Node(self_1)] == Mask[null, Node(self_1)] - FullPerm
      );
      assume (forall self_1: Ref ::
        { QPMask[null, Node(self_1)] }
        !(((invRecv3(self_1) >= 0 && invRecv3(self_1) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange3(self_1)) ==> QPMask[null, Node(self_1)] == Mask[null, Node(self_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (i_8_2 >= 0 && i_8_2 < Seq#Length(s_2)) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Node#trigger(UnfoldingHeap, Node(Seq#Index(s_2, i_8_2)));
          assume UnfoldingHeap[null, Node(Seq#Index(s_2, i_8_2))] == FrameFragment(UnfoldingHeap[Seq#Index(s_2, i_8_2), val]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access Node(s[i]) (0204.vpr@12.13--12.103) [194967]"}
              perm <= UnfoldingMask[null, Node(Seq#Index(s_2, i_8_2))];
          }
          UnfoldingMask := UnfoldingMask[null, Node(Seq#Index(s_2, i_8_2)):=UnfoldingMask[null, Node(Seq#Index(s_2, i_8_2))] - perm];
          perm := FullPerm;
          assume Seq#Index(s_2, i_8_2) != null;
          UnfoldingMask := UnfoldingMask[Seq#Index(s_2, i_8_2), val:=UnfoldingMask[Seq#Index(s_2, i_8_2), val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Postcondition of foo might not hold. Assertion s[i].val >= 0 might not hold. (0204.vpr@12.13--12.103) [194968]"}
          Heap[Seq#Index(s_2, i_8_2), val] >= 0;
      }
      assume false;
    }
    assume (forall i_9_1_1: int ::
      { Seq#Index(s_2, i_9_1_1) }
      i_9_1_1 >= 0 && i_9_1_1 < Seq#Length(s_2) ==> Heap[Seq#Index(s_2, i_9_1_1), val] >= 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method append
// ==================================================

procedure append(g_1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, GRAPH(g_1):=Mask[null, GRAPH(g_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(GRAPH(g), write) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume GRAPH#trigger(UnfoldingHeap, GRAPH(g_1));
      assume UnfoldingHeap[null, GRAPH(g_1)] == FrameFragment(GRAPH#condqp1(UnfoldingHeap, g_1));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access GRAPH(g) (0204.vpr@26.14--26.40) [194969]"}
          perm <= UnfoldingMask[null, GRAPH(g_1)];
      }
      UnfoldingMask := UnfoldingMask[null, GRAPH(g_1):=UnfoldingMask[null, GRAPH(g_1)] - perm];
      havoc QPMask;
      assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (0204.vpr@26.14--26.40) [194970]"}
        (forall n: Ref, n_4: Ref ::
        
        (((n != n_4 && g_1[n]) && g_1[n_4]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n != n_4
      );
      
      // -- Define Inverse Function
        assume (forall n: Ref ::
          { UnfoldingHeap[n, next] } { QPMask[n, next] } { g_1[n] }
          g_1[n] && NoPerm < FullPerm ==> qpRange5(n) && invRecv5(n) == n
        );
        assume (forall o_4: Ref ::
          { invRecv5(o_4) }
          (g_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n: Ref ::
          { UnfoldingHeap[n, next] } { QPMask[n, next] } { g_1[n] }
          g_1[n] ==> n != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          ((g_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, next] == UnfoldingMask[o_4, next] + FullPerm) && (!((g_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, next] == UnfoldingMask[o_4, next])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != next ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate GRAPH
        havoc newPMask;
        assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
          { newPMask[o_53, f_56] }
          Heap[null, GRAPH#sm(g_1)][o_53, f_56] ==> newPMask[o_53, f_56]
        );
        assume (forall n_1: Ref ::
          
          g_1[n_1] ==> newPMask[n_1, next]
        );
        Heap := Heap[null, GRAPH#sm(g_1):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume GRAPH#trigger(UnfoldingHeap, GRAPH(g_1));
      assume UnfoldingHeap[null, GRAPH(g_1)] == FrameFragment(GRAPH#condqp1(UnfoldingHeap, g_1));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, GRAPH(g_1):=UnfoldingMask[null, GRAPH(g_1)] - perm];
      havoc QPMask;
      
      // -- Define Inverse Function
        assume (forall n_2: Ref ::
          { UnfoldingHeap[n_2, next] } { QPMask[n_2, next] } { g_1[n_2] }
          g_1[n_2] && NoPerm < FullPerm ==> qpRange6(n_2) && invRecv6(n_2) == n_2
        );
        assume (forall o_4: Ref ::
          { invRecv6(o_4) }
          (g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n_2: Ref ::
          { UnfoldingHeap[n_2, next] } { QPMask[n_2, next] } { g_1[n_2] }
          g_1[n_2] ==> n_2 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          ((g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, next] == UnfoldingMask[o_4, next] + FullPerm) && (!((g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, next] == UnfoldingMask[o_4, next])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != next ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (unfolding acc(GRAPH(g), write) in (forall n: Ref ::true)) -- 0204.vpr@29.5--29.54
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(GRAPH(g), write) in (forall n: Ref ::true))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume GRAPH#trigger(UnfoldingHeap, GRAPH(g_1));
      assume UnfoldingHeap[null, GRAPH(g_1)] == FrameFragment(GRAPH#condqp1(UnfoldingHeap, g_1));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access GRAPH(g) (0204.vpr@29.12--29.54) [194971]"}
          perm <= UnfoldingMask[null, GRAPH(g_1)];
      }
      UnfoldingMask := UnfoldingMask[null, GRAPH(g_1):=UnfoldingMask[null, GRAPH(g_1)] - perm];
      havoc QPMask;
      assert {:msg "  Assert might fail. Quantified resource n.next might not be injective. (0204.vpr@29.12--29.54) [194972]"}
        (forall n_3: Ref, n_3_1: Ref ::
        
        (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
      );
      
      // -- Define Inverse Function
        assume (forall n_3: Ref ::
          { UnfoldingHeap[n_3, next] } { QPMask[n_3, next] } { g_1[n_3] }
          g_1[n_3] && NoPerm < FullPerm ==> qpRange7(n_3) && invRecv7(n_3) == n_3
        );
        assume (forall o_4: Ref ::
          { invRecv7(o_4) }
          (g_1[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n_3: Ref ::
          { UnfoldingHeap[n_3, next] } { QPMask[n_3, next] } { g_1[n_3] }
          g_1[n_3] ==> n_3 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          ((g_1[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, next] == UnfoldingMask[o_4, next] + FullPerm) && (!((g_1[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, next] == UnfoldingMask[o_4, next])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != next ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        assume false;
      }
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate GRAPH
        havoc newPMask;
        assume (forall <A, B> o_19: Ref, f_23: (Field A B) ::
          { newPMask[o_19, f_23] }
          Heap[null, GRAPH#sm(g_1)][o_19, f_23] ==> newPMask[o_19, f_23]
        );
        assume (forall n_5: Ref ::
          
          g_1[n_5] ==> newPMask[n_5, next]
        );
        Heap := Heap[null, GRAPH#sm(g_1):=newPMask];
        assume state(Heap, Mask);
    if (*) {
      assume false;
    }
    
    // -- Free assumptions (exhale module)
      // register all known folded permissions guarded by predicate GRAPH
      havoc newPMask;
      assume (forall <A, B> o_5: Ref, f: (Field A B) ::
        { newPMask[o_5, f] }
        Heap[null, GRAPH#sm(g_1)][o_5, f] ==> newPMask[o_5, f]
      );
      assume (forall n_8: Ref ::
        
        g_1[n_8] ==> newPMask[n_8, next]
      );
      Heap := Heap[null, GRAPH#sm(g_1):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}