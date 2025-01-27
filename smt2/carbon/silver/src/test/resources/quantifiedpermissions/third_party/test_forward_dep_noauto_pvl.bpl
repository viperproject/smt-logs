// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:17
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_noauto_pvl-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_17: Ref, f_25: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_17, f_25] }
  Heap[o_17, $allocated] ==> Heap[Heap[o_17, f_25], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref, f_65: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, f_65] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_47, f_65) ==> Heap[o_47, f_65] == ExhaleHeap[o_47, f_65]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_65: (Field A B) ::
    { ExhaleHeap[o2_34, f_65] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_65] ==> Heap[o2_34, f_65] == ExhaleHeap[o2_34, f_65]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_65: (Field A B) ::
    { ExhaleHeap[o2_34, f_65] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_65] ==> Heap[o2_34, f_65] == ExhaleHeap[o2_34, f_65]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_47, $allocated] ==> ExhaleHeap[o_47, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_17: Ref, f_19: (Field A B), v: B ::
  { Heap[o_17, f_19:=v] }
  succHeap(Heap, Heap[o_17, f_19:=v])
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

function  neverTriggered1(tid_1: int): bool;
function  neverTriggered2(tid_5: int): bool;
function  neverTriggered3(tid_6: int): bool;
function  neverTriggered4(_x_tid_1: int): bool;
function  neverTriggered5(_x_tid_3: int): bool;
function  neverTriggered6(_x_tid_5: int): bool;
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

const unique Ref__a: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__a);
axiom !IsWandField(Ref__a);
const unique Ref__b: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__b);
axiom !IsWandField(Ref__b);
const unique Ref__c: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__c);
axiom !IsWandField(Ref__c);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of method Ref__main_main
// ==================================================

procedure Ref__main_main(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_1: Ref;
  var __flatten_3: Ref;
  var __flatten_4: Ref;
  var __flatten_6: Ref;
  var __last_barrier: int;
  var __flatten_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var __flatten_5: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume tid == lid;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@21.12--21.34) [156334]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@23.12--23.34) [156335]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@25.12--25.34) [156336]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@26.12--26.58) [156337]"}
        HasDirectPerm(Mask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@26.12--26.58) [156338]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@26.12--26.58) [156339]"}
        tid < Seq#Length(Heap[diz, Ref__a]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__a], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@27.12--27.58) [156340]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_noauto_pvl.vpr@27.12--27.58) [156341]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@27.12--27.58) [156342]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@27.12--27.58) [156343]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@28.12--28.58) [156344]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_noauto_pvl.vpr@28.12--28.58) [156345]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@28.12--28.58) [156346]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__c], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value == tid
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@29.12--29.53) [156347]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_noauto_pvl.vpr@29.12--29.53) [156348]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@29.12--29.53) [156349]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@29.12--29.53) [156350]"}
        HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value);
    assume Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] == tid;
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume tid == lid;
    assume state(PostHeap, PostMask);
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@36.11--36.33) [156351]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@38.11--38.33) [156352]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@40.11--40.33) [156353]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@41.11--41.40) [156354]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@41.11--41.40) [156355]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@42.11--42.40) [156356]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@42.11--42.40) [156357]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@43.11--43.40) [156358]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@43.11--43.40) [156359]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@44.11--44.57) [156360]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@44.11--44.57) [156361]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@44.11--44.57) [156362]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@44.11--44.57) [156363]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@45.11--45.57) [156364]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_noauto_pvl.vpr@45.11--45.57) [156365]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@45.11--45.57) [156366]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@45.11--45.57) [156367]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@46.11--46.57) [156368]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_noauto_pvl.vpr@46.11--46.57) [156369]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@46.11--46.57) [156370]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, Ref__c], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@47.11--47.75) [156371]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@47.11--47.75) [156372]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@47.11--47.75) [156373]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__a]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@47.11--47.75) [156374]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid - 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid == tcount - 1) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@48.11--48.81) [156375]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@48.11--48.81) [156376]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@48.11--48.81) [156377]"}
          tid < Seq#Length(PostHeap[diz, Ref__a]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@48.11--48.81) [156378]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value == tid + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@49.11--49.56) [156379]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@49.11--49.56) [156380]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@49.11--49.56) [156381]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@49.11--49.56) [156382]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] == tid + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value == tid
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@50.11--50.52) [156383]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_noauto_pvl.vpr@50.11--50.52) [156384]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@50.11--50.52) [156385]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@50.11--50.52) [156386]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] == tid;
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value == tid + 2
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@51.11--51.72) [156387]"}
          HasDirectPerm(PostMask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_noauto_pvl.vpr@51.11--51.72) [156388]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@51.11--51.72) [156389]"}
          tid < Seq#Length(PostHeap[diz, Ref__c]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@51.11--51.72) [156390]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] == tid + 2;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_1, $allocated];
    assume Heap[__flatten_3, $allocated];
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_6, $allocated];
  
  // -- Translating statement: __last_barrier := 0 -- test_forward_dep_noauto_pvl.vpr@60.3--60.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := diz.Ref__a[tid] -- test_forward_dep_noauto_pvl.vpr@61.3--61.33
    
    // -- Check definedness of diz.Ref__a[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@61.3--61.33) [156391]"}
        HasDirectPerm(Mask, diz, Ref__a);
      assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@61.3--61.33) [156392]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@61.3--61.33) [156393]"}
        tid < Seq#Length(Heap[diz, Ref__a]);
    __flatten_1 := Seq#Index(Heap[diz, Ref__a], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := diz.Ref__b[tid] -- test_forward_dep_noauto_pvl.vpr@62.3--62.33
    
    // -- Check definedness of diz.Ref__b[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@62.3--62.33) [156394]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_forward_dep_noauto_pvl.vpr@62.3--62.33) [156395]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@62.3--62.33) [156396]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    __flatten_3 := Seq#Index(Heap[diz, Ref__b], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := __flatten_3.Ref__Integer_value + 1 -- test_forward_dep_noauto_pvl.vpr@63.3--63.52
    
    // -- Check definedness of __flatten_3.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_3.Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@63.3--63.52) [156397]"}
        HasDirectPerm(Mask, __flatten_3, Ref__Integer_value);
    __flatten_2 := Heap[__flatten_3, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1.Ref__Integer_value := __flatten_2 -- test_forward_dep_noauto_pvl.vpr@64.3--64.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_1.Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@64.3--64.48) [156398]"}
      FullPerm == Mask[__flatten_1, Ref__Integer_value];
    Heap := Heap[__flatten_1, Ref__Integer_value:=__flatten_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tid < tcount - 1 ==> diz.Ref__a[tid].Ref__Integer_value == tid + 1 -- test_forward_dep_noauto_pvl.vpr@65.3--65.80
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (tid < tcount - 1) {
      
      // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value == tid + 1
        assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@65.10--65.80) [156399]"}
          HasDirectPerm(ExhaleWellDef0Mask, diz, Ref__a);
        assert {:msg "  Assert might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@65.10--65.80) [156400]"}
          tid >= 0;
        assert {:msg "  Assert might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@65.10--65.80) [156401]"}
          tid < Seq#Length(Heap[diz, Ref__a]);
        assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@65.10--65.80) [156402]"}
          HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value);
      assert {:msg "  Assert might fail. Assertion diz.Ref__a[tid].Ref__Integer_value == tid + 1 might not hold. (test_forward_dep_noauto_pvl.vpr@65.10--65.80) [156403]"}
        Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == tid + 1;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale tid < tcount - 1 ==> acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2) -- test_forward_dep_noauto_pvl.vpr@66.3--66.79
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (tid < tcount - 1) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Exhale might fail. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@66.10--66.79) [156404]"}
          HasDirectPerm(ExhaleWellDef0Mask, diz, Ref__a);
        assert {:msg "  Exhale might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@66.10--66.79) [156405]"}
          tid >= 0;
        assert {:msg "  Exhale might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@66.10--66.79) [156406]"}
          tid < Seq#Length(Heap[diz, Ref__a]);
      perm := 1 / 2;
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@66.10--66.79) [156407]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@66.10--66.79) [156408]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale tid > 0 ==> acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2) -- test_forward_dep_noauto_pvl.vpr@67.3--67.74
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@67.10--67.74) [156409]"}
          HasDirectPerm(Mask, diz, Ref__a);
        assert {:msg "  Inhale might fail. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@67.10--67.74) [156410]"}
          tid - 1 >= 0;
        assert {:msg "  Inhale might fail. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@67.10--67.74) [156411]"}
          tid - 1 < Seq#Length(Heap[diz, Ref__a]);
      perm := 1 / 2;
      assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@67.10--67.74) [156412]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__a], tid - 1) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale tid > 0 ==> diz.Ref__a[tid - 1].Ref__Integer_value == tid -- test_forward_dep_noauto_pvl.vpr@68.3--68.71
    if (tid > 0) {
      
      // -- Check definedness of diz.Ref__a[tid - 1].Ref__Integer_value == tid
        assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@68.10--68.71) [156413]"}
          HasDirectPerm(Mask, diz, Ref__a);
        assert {:msg "  Inhale might fail. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@68.10--68.71) [156414]"}
          tid - 1 >= 0;
        assert {:msg "  Inhale might fail. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@68.10--68.71) [156415]"}
          tid - 1 < Seq#Length(Heap[diz, Ref__a]);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@68.10--68.71) [156416]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value);
      assume Heap[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] == tid;
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (tid > 0) -- test_forward_dep_noauto_pvl.vpr@69.3--74.4
    if (tid > 0) {
      
      // -- Translating statement: __flatten_4 := diz.Ref__c[tid] -- test_forward_dep_noauto_pvl.vpr@70.5--70.35
        
        // -- Check definedness of diz.Ref__c[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@70.5--70.35) [156417]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_forward_dep_noauto_pvl.vpr@70.5--70.35) [156418]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@70.5--70.35) [156419]"}
            tid < Seq#Length(Heap[diz, Ref__c]);
        __flatten_4 := Seq#Index(Heap[diz, Ref__c], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_6 := diz.Ref__a[tid - 1] -- test_forward_dep_noauto_pvl.vpr@71.5--71.39
        
        // -- Check definedness of diz.Ref__a[tid - 1]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@71.5--71.39) [156420]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@71.5--71.39) [156421]"}
            tid - 1 >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@71.5--71.39) [156422]"}
            tid - 1 < Seq#Length(Heap[diz, Ref__a]);
        __flatten_6 := Seq#Index(Heap[diz, Ref__a], tid - 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_5 := __flatten_6.Ref__Integer_value + 2 -- test_forward_dep_noauto_pvl.vpr@72.5--72.54
        
        // -- Check definedness of __flatten_6.Ref__Integer_value + 2
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@72.5--72.54) [156423]"}
            HasDirectPerm(Mask, __flatten_6, Ref__Integer_value);
        __flatten_5 := Heap[__flatten_6, Ref__Integer_value] + 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_4.Ref__Integer_value := __flatten_5 -- test_forward_dep_noauto_pvl.vpr@73.5--73.50
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@73.5--73.50) [156424]"}
          FullPerm == Mask[__flatten_4, Ref__Integer_value];
        Heap := Heap[__flatten_4, Ref__Integer_value:=__flatten_5];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion 0 <= tid might not hold. (test_forward_dep_noauto_pvl.vpr@30.11--30.19) [156425]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid < tcount might not hold. (test_forward_dep_noauto_pvl.vpr@31.11--31.23) [156426]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid == lid might not hold. (test_forward_dep_noauto_pvl.vpr@32.11--32.21) [156427]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tcount == gsize might not hold. (test_forward_dep_noauto_pvl.vpr@33.11--33.26) [156428]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion gid == 0 might not hold. (test_forward_dep_noauto_pvl.vpr@34.11--34.19) [156429]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@35.11--35.36) [156430]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@36.11--36.33) [156431]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@37.11--37.36) [156432]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@38.11--38.33) [156433]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@39.11--39.36) [156434]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@40.11--40.33) [156435]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_forward_dep_noauto_pvl.vpr@41.11--41.40) [156436]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_forward_dep_noauto_pvl.vpr@42.11--42.40) [156437]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_forward_dep_noauto_pvl.vpr@43.11--43.40) [156438]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@44.11--44.57) [156439]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@44.11--44.57) [156440]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@45.11--45.57) [156441]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@45.11--45.57) [156442]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@46.11--46.57) [156443]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    if (tid > 0) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@47.11--47.75) [156444]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@47.11--47.75) [156445]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] - perm];
    }
    if (tid == tcount - 1) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@48.11--48.81) [156446]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@48.11--48.81) [156447]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a[tid].Ref__Integer_value == tid + 1 might not hold. (test_forward_dep_noauto_pvl.vpr@49.11--49.56) [156448]"}
      Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == tid + 1;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value == tid might not hold. (test_forward_dep_noauto_pvl.vpr@50.11--50.52) [156449]"}
      Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] == tid;
    if (tid > 0) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c[tid].Ref__Integer_value == tid + 2 might not hold. (test_forward_dep_noauto_pvl.vpr@51.11--51.72) [156450]"}
        Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] == tid + 2;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__main_resources_of_1
// ==================================================

procedure Ref__main_resources_of_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, gid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_18: int;
  var j_14: int;
  var tid_2: int;
  var QPMask: MaskType;
  var tid_3: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_8: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@83.12--83.34) [156451]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@85.12--85.34) [156452]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@87.12--87.34) [156453]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
      if (*) {
        if (i_18 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@88.12--88.136) [156454]"}
            HasDirectPerm(Mask, diz, Ref__a);
          if (i_18 < Seq#Length(Heap[diz, Ref__a])) {
            if (j_14 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@88.12--88.136) [156455]"}
                HasDirectPerm(Mask, diz, Ref__a);
            }
          }
        }
        if (i_18 >= 0 && (i_18 < Seq#Length(Heap[diz, Ref__a]) && (j_14 >= 0 && (j_14 < Seq#Length(Heap[diz, Ref__a]) && i_18 != j_14)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@88.12--88.136) [156456]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@88.12--88.136) [156457]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@88.12--88.136) [156458]"}
            i_18 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@88.12--88.136) [156459]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@88.12--88.136) [156460]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@88.12--88.136) [156461]"}
            j_14 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, Ref__a], i_1), Seq#Index(Heap[diz, Ref__a], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, Ref__a]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, Ref__a]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, Ref__a], i_1) != Seq#Index(Heap[diz, Ref__a], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__a[tid] } 0 <= tid && tid < (tcount - 1 < gsize ? tcount - 1 : gsize) ==> acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= tid_2 && tid_2 < (if tcount - 1 < gsize then tcount - 1 else gsize)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@89.13--89.146) [156462]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@89.13--89.146) [156463]"}
            tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@89.13--89.146) [156464]"}
            tid_2 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_forward_dep_noauto_pvl.vpr@89.13--89.146) [156465]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < (if tcount - 1 < gsize then tcount - 1 else gsize))) && (0 <= tid_1_1 && tid_1_1 < (if tcount - 1 < gsize then tcount - 1 else gsize))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__a], tid_1) != Seq#Index(Heap[diz, Ref__a], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_1) } { Seq#Index(Heap[diz, Ref__a], tid_1) }
        (0 <= tid_1 && tid_1 < (if tcount - 1 < gsize then tcount - 1 else gsize)) && NoPerm < 1 / 2 ==> qpRange1(Seq#Index(Heap[diz, Ref__a], tid_1)) && invRecv1(Seq#Index(Heap[diz, Ref__a], tid_1)) == tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < (if tcount - 1 < gsize then tcount - 1 else gsize)) && NoPerm < 1 / 2) && qpRange1(o_9) ==> Seq#Index(Heap[diz, Ref__a], invRecv1(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@89.13--89.146) [156466]"}
      (forall tid_1: int ::
      { Seq#Index(Heap[diz, Ref__a], tid_1) } { Seq#Index(Heap[diz, Ref__a], tid_1) }
      0 <= tid_1 && tid_1 < (if tcount - 1 < gsize then tcount - 1 else gsize) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_1) } { Seq#Index(Heap[diz, Ref__a], tid_1) }
        (0 <= tid_1 && tid_1 < (if tcount - 1 < gsize then tcount - 1 else gsize)) && 1 / 2 > NoPerm ==> Seq#Index(Heap[diz, Ref__a], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv1(o_9) && invRecv1(o_9) < (if tcount - 1 < gsize then tcount - 1 else gsize)) && NoPerm < 1 / 2) && qpRange1(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__a], invRecv1(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < (if tcount - 1 < gsize then tcount - 1 else gsize)) && NoPerm < 1 / 2) && qpRange1(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__a[tid] } 0 <= tid && tid < (tcount - 1 < gsize ? tcount - 1 : gsize) ==> diz.Ref__a[tid].Ref__Integer_value == tid + 1)
      if (*) {
        if (0 <= tid_3 && tid_3 < (if tcount - 1 < gsize then tcount - 1 else gsize)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@90.13--90.147) [156467]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@90.13--90.147) [156468]"}
            tid_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@90.13--90.147) [156469]"}
            tid_3 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@90.13--90.147) [156470]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__a], tid_3), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall tid_3_1: int ::
      { Seq#Index(Heap[diz, Ref__a], tid_3_1) }
      0 <= tid_3_1 && tid_3_1 < (if tcount - 1 < gsize then tcount - 1 else gsize) ==> Heap[Seq#Index(Heap[diz, Ref__a], tid_3_1), Ref__Integer_value] == tid_3_1 + 1
    );
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
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@94.11--94.33) [156471]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@96.11--96.33) [156472]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@98.11--98.33) [156473]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@99.11--99.40) [156474]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@99.11--99.40) [156475]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@100.11--100.40) [156476]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@100.11--100.40) [156477]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@101.11--101.40) [156478]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@101.11--101.40) [156479]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__a[tid] } (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1 ==> acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= tid_8 && tid_8 < gsize - 1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@102.12--102.132) [156480]"}
            HasDirectPerm(PostMask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@102.12--102.132) [156481]"}
            tid_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@102.12--102.132) [156482]"}
            tid_8 < Seq#Length(PostHeap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_forward_dep_noauto_pvl.vpr@102.12--102.132) [156483]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize - 1)) && (0 <= tid_5_1 && tid_5_1 < gsize - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(PostHeap[diz, Ref__a], tid_5) != Seq#Index(PostHeap[diz, Ref__a], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, Ref__a], tid_5) } { Seq#Index(PostHeap[diz, Ref__a], tid_5) }
        (0 <= tid_5 && tid_5 < gsize - 1) && NoPerm < 1 / 2 ==> qpRange2(Seq#Index(PostHeap[diz, Ref__a], tid_5)) && invRecv2(Seq#Index(PostHeap[diz, Ref__a], tid_5)) == tid_5
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize - 1) && NoPerm < 1 / 2) && qpRange2(o_9) ==> Seq#Index(PostHeap[diz, Ref__a], invRecv2(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@102.12--102.132) [156484]"}
      (forall tid_5: int ::
      { Seq#Index(PostHeap[diz, Ref__a], tid_5) } { Seq#Index(PostHeap[diz, Ref__a], tid_5) }
      0 <= tid_5 && tid_5 < gsize - 1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, Ref__a], tid_5) } { Seq#Index(PostHeap[diz, Ref__a], tid_5) }
        (0 <= tid_5 && tid_5 < gsize - 1) && 1 / 2 > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize - 1) && NoPerm < 1 / 2) && qpRange2(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(PostHeap[diz, Ref__a], invRecv2(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < gsize - 1) && NoPerm < 1 / 2) && qpRange2(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
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
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (test_forward_dep_noauto_pvl.vpr@91.11--91.26) [156485]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (test_forward_dep_noauto_pvl.vpr@92.11--92.19) [156486]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@93.11--93.36) [156487]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@94.11--94.33) [156488]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@95.11--95.36) [156489]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@96.11--96.33) [156490]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@97.11--97.36) [156491]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@98.11--98.33) [156492]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_forward_dep_noauto_pvl.vpr@99.11--99.40) [156493]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_forward_dep_noauto_pvl.vpr@100.11--100.40) [156494]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_forward_dep_noauto_pvl.vpr@101.11--101.40) [156495]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@102.12--102.132) [156496]"}
        (forall tid_6: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_6) } { Seq#Index(Heap[diz, Ref__a], tid_6) }
        (0 <= tid_6 && tid_6 < gsize - 1) && dummyFunction(Heap[Seq#Index(Heap[diz, Ref__a], tid_6), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver diz.Ref__a[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[tid].Ref__Integer_value might not be injective. (test_forward_dep_noauto_pvl.vpr@102.12--102.132) [156497]"}
        (forall tid_6: int, tid_6_1: int ::
        { neverTriggered3(tid_6), neverTriggered3(tid_6_1) }
        (((tid_6 != tid_6_1 && (0 <= tid_6 && tid_6 < gsize - 1)) && (0 <= tid_6_1 && tid_6_1 < gsize - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__a], tid_6) != Seq#Index(Heap[diz, Ref__a], tid_6_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@102.12--102.132) [156498]"}
        (forall tid_6: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_6) } { Seq#Index(Heap[diz, Ref__a], tid_6) }
        0 <= tid_6 && tid_6 < gsize - 1 ==> Mask[Seq#Index(Heap[diz, Ref__a], tid_6), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver diz.Ref__a[tid]
      assume (forall tid_6: int ::
        { Seq#Index(Heap[diz, Ref__a], tid_6) } { Seq#Index(Heap[diz, Ref__a], tid_6) }
        (0 <= tid_6 && tid_6 < gsize - 1) && NoPerm < 1 / 2 ==> qpRange3(Seq#Index(Heap[diz, Ref__a], tid_6)) && invRecv3(Seq#Index(Heap[diz, Ref__a], tid_6)) == tid_6
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (0 <= invRecv3(o_9) && invRecv3(o_9) < gsize - 1) && (NoPerm < 1 / 2 && qpRange3(o_9)) ==> Seq#Index(Heap[diz, Ref__a], invRecv3(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv3(o_9) && invRecv3(o_9) < gsize - 1) && (NoPerm < 1 / 2 && qpRange3(o_9)) ==> Seq#Index(Heap[diz, Ref__a], invRecv3(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv3(o_9) && invRecv3(o_9) < gsize - 1) && (NoPerm < 1 / 2 && qpRange3(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__main_post_check_1
// ==================================================

procedure Ref__main_post_check_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_5: int;
  var j_2: int;
  var i_15: int;
  var j_16: int;
  var i_7: int;
  var j_4: int;
  var _x_tid_19: int;
  var QPMask: MaskType;
  var _x_tid: int;
  var _x_tid_2: int;
  var _x_tid_4: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume tid == lid;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@115.12--115.34) [156499]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@117.12--117.34) [156500]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@119.12--119.34) [156501]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
      if (*) {
        if (i_5 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@120.12--120.136) [156502]"}
            HasDirectPerm(Mask, diz, Ref__a);
          if (i_5 < Seq#Length(Heap[diz, Ref__a])) {
            if (j_2 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@120.12--120.136) [156503]"}
                HasDirectPerm(Mask, diz, Ref__a);
            }
          }
        }
        if (i_5 >= 0 && (i_5 < Seq#Length(Heap[diz, Ref__a]) && (j_2 >= 0 && (j_2 < Seq#Length(Heap[diz, Ref__a]) && i_5 != j_2)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@120.12--120.136) [156504]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@120.12--120.136) [156505]"}
            i_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@120.12--120.136) [156506]"}
            i_5 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@120.12--120.136) [156507]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@120.12--120.136) [156508]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@120.12--120.136) [156509]"}
            j_2 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, Ref__a], i_1), Seq#Index(Heap[diz, Ref__a], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, Ref__a]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, Ref__a]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, Ref__a], i_1) != Seq#Index(Heap[diz, Ref__a], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__b[i], diz.Ref__b[j] } i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j])
      if (*) {
        if (i_15 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@121.12--121.136) [156510]"}
            HasDirectPerm(Mask, diz, Ref__b);
          if (i_15 < Seq#Length(Heap[diz, Ref__b])) {
            if (j_16 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@121.12--121.136) [156511]"}
                HasDirectPerm(Mask, diz, Ref__b);
            }
          }
        }
        if (i_15 >= 0 && (i_15 < Seq#Length(Heap[diz, Ref__b]) && (j_16 >= 0 && (j_16 < Seq#Length(Heap[diz, Ref__b]) && i_15 != j_16)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@121.12--121.136) [156512]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might be negative. (test_forward_dep_noauto_pvl.vpr@121.12--121.136) [156513]"}
            i_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@121.12--121.136) [156514]"}
            i_15 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@121.12--121.136) [156515]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might be negative. (test_forward_dep_noauto_pvl.vpr@121.12--121.136) [156516]"}
            j_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@121.12--121.136) [156517]"}
            j_16 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_3: int ::
      { Seq#Index(Heap[diz, Ref__b], i_3_2), Seq#Index(Heap[diz, Ref__b], j_3) }
      i_3_2 >= 0 && (i_3_2 < Seq#Length(Heap[diz, Ref__b]) && (j_3 >= 0 && (j_3 < Seq#Length(Heap[diz, Ref__b]) && i_3_2 != j_3))) ==> Seq#Index(Heap[diz, Ref__b], i_3_2) != Seq#Index(Heap[diz, Ref__b], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
      if (*) {
        if (i_7 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@122.12--122.136) [156518]"}
            HasDirectPerm(Mask, diz, Ref__c);
          if (i_7 < Seq#Length(Heap[diz, Ref__c])) {
            if (j_4 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@122.12--122.136) [156519]"}
                HasDirectPerm(Mask, diz, Ref__c);
            }
          }
        }
        if (i_7 >= 0 && (i_7 < Seq#Length(Heap[diz, Ref__c]) && (j_4 >= 0 && (j_4 < Seq#Length(Heap[diz, Ref__c]) && i_7 != j_4)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@122.12--122.136) [156520]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might be negative. (test_forward_dep_noauto_pvl.vpr@122.12--122.136) [156521]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@122.12--122.136) [156522]"}
            i_7 < Seq#Length(Heap[diz, Ref__c]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@122.12--122.136) [156523]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might be negative. (test_forward_dep_noauto_pvl.vpr@122.12--122.136) [156524]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@122.12--122.136) [156525]"}
            j_4 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_5: int ::
      { Seq#Index(Heap[diz, Ref__c], i_5_1), Seq#Index(Heap[diz, Ref__c], j_5) }
      i_5_1 >= 0 && (i_5_1 < Seq#Length(Heap[diz, Ref__c]) && (j_5 >= 0 && (j_5 < Seq#Length(Heap[diz, Ref__c]) && i_5_1 != j_5))) ==> Seq#Index(Heap[diz, Ref__c], i_5_1) != Seq#Index(Heap[diz, Ref__c], j_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__a[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__a[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_19 && _x_tid_19 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@123.13--123.122) [156526]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@123.13--123.122) [156527]"}
            _x_tid_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@123.13--123.122) [156528]"}
            _x_tid_19 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[_x_tid].Ref__Integer_value might not be injective. (test_forward_dep_noauto_pvl.vpr@123.13--123.122) [156529]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], _x_tid_1) != Seq#Index(Heap[diz, Ref__a], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], _x_tid_1) } { Seq#Index(Heap[diz, Ref__a], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange4(Seq#Index(Heap[diz, Ref__a], _x_tid_1)) && invRecv4(Seq#Index(Heap[diz, Ref__a], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize) && NoPerm < FullPerm) && qpRange4(o_9) ==> Seq#Index(Heap[diz, Ref__a], invRecv4(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], _x_tid_1) } { Seq#Index(Heap[diz, Ref__a], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, Ref__a], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], invRecv4(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv4(o_9) && invRecv4(o_9) < gsize) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__b[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__b[_x_tid].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= _x_tid && _x_tid < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@124.13--124.122) [156530]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might be negative. (test_forward_dep_noauto_pvl.vpr@124.13--124.122) [156531]"}
            _x_tid >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@124.13--124.122) [156532]"}
            _x_tid < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[_x_tid].Ref__Integer_value might not be injective. (test_forward_dep_noauto_pvl.vpr@124.13--124.122) [156533]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__b], _x_tid_3) != Seq#Index(Heap[diz, Ref__b], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < 1 / 2 ==> qpRange5(Seq#Index(Heap[diz, Ref__b], _x_tid_3)) && invRecv5(Seq#Index(Heap[diz, Ref__b], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        ((0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && NoPerm < 1 / 2) && qpRange5(o_9) ==> Seq#Index(Heap[diz, Ref__b], invRecv5(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@124.13--124.122) [156534]"}
      (forall _x_tid_3: int ::
      { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
      0 <= _x_tid_3 && _x_tid_3 < gsize ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && 1 / 2 > NoPerm ==> Seq#Index(Heap[diz, Ref__b], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && NoPerm < 1 / 2) && qpRange5(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(Heap[diz, Ref__b], invRecv5(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv5(o_9) && invRecv5(o_9) < gsize) && NoPerm < 1 / 2) && qpRange5(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__c[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__c[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_2 && _x_tid_2 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@125.13--125.122) [156535]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might be negative. (test_forward_dep_noauto_pvl.vpr@125.13--125.122) [156536]"}
            _x_tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@125.13--125.122) [156537]"}
            _x_tid_2 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[_x_tid].Ref__Integer_value might not be injective. (test_forward_dep_noauto_pvl.vpr@125.13--125.122) [156538]"}
      (forall _x_tid_5: int, _x_tid_5_1: int ::
      
      (((_x_tid_5 != _x_tid_5_1 && (0 <= _x_tid_5 && _x_tid_5 < gsize)) && (0 <= _x_tid_5_1 && _x_tid_5_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__c], _x_tid_5) != Seq#Index(Heap[diz, Ref__c], _x_tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
        (0 <= _x_tid_5 && _x_tid_5 < gsize) && NoPerm < FullPerm ==> qpRange6(Seq#Index(Heap[diz, Ref__c], _x_tid_5)) && invRecv6(Seq#Index(Heap[diz, Ref__c], _x_tid_5)) == _x_tid_5
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        ((0 <= invRecv6(o_9) && invRecv6(o_9) < gsize) && NoPerm < FullPerm) && qpRange6(o_9) ==> Seq#Index(Heap[diz, Ref__c], invRecv6(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
        0 <= _x_tid_5 && _x_tid_5 < gsize ==> Seq#Index(Heap[diz, Ref__c], _x_tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv6(o_9) && invRecv6(o_9) < gsize) && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__c], invRecv6(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv6(o_9) && invRecv6(o_9) < gsize) && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__a[_x_tid] } 0 <= _x_tid && _x_tid < (tcount - 1 < gsize ? tcount - 1 : gsize) ==> diz.Ref__a[_x_tid].Ref__Integer_value == _x_tid + 1)
      if (*) {
        if (0 <= _x_tid_4 && _x_tid_4 < (if tcount - 1 < gsize then tcount - 1 else gsize)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@126.13--126.162) [156539]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@126.13--126.162) [156540]"}
            _x_tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@126.13--126.162) [156541]"}
            _x_tid_4 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[_x_tid].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@126.13--126.162) [156542]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__a], _x_tid_4), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall _x_tid_7: int ::
      { Seq#Index(Heap[diz, Ref__a], _x_tid_7) }
      0 <= _x_tid_7 && _x_tid_7 < (if tcount - 1 < gsize then tcount - 1 else gsize) ==> Heap[Seq#Index(Heap[diz, Ref__a], _x_tid_7), Ref__Integer_value] == _x_tid_7 + 1
    );
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume tid == lid;
    assume state(PostHeap, PostMask);
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@133.11--133.33) [156543]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@135.11--135.33) [156544]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@137.11--137.33) [156545]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@138.11--138.40) [156546]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@138.11--138.40) [156547]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@139.11--139.40) [156548]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@139.11--139.40) [156549]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@140.11--140.40) [156550]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@140.11--140.40) [156551]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@141.11--141.75) [156552]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@141.11--141.75) [156553]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@141.11--141.75) [156554]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__a]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@141.11--141.75) [156555]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid - 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of diz.Ref__a[tid - 1].Ref__Integer_value == tid
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@142.11--142.72) [156556]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might be negative. (test_forward_dep_noauto_pvl.vpr@142.11--142.72) [156557]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid - 1] into diz.Ref__a might exceed sequence length. (test_forward_dep_noauto_pvl.vpr@142.11--142.72) [156558]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__a]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@142.11--142.72) [156559]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid - 1), Ref__Integer_value] == tid;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (test_forward_dep_noauto_pvl.vpr@127.11--127.19) [156560]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tid < tcount might not hold. (test_forward_dep_noauto_pvl.vpr@128.11--128.23) [156561]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tid == lid might not hold. (test_forward_dep_noauto_pvl.vpr@129.11--129.21) [156562]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (test_forward_dep_noauto_pvl.vpr@130.11--130.26) [156563]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion gid == 0 might not hold. (test_forward_dep_noauto_pvl.vpr@131.11--131.19) [156564]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__a (test_forward_dep_noauto_pvl.vpr@132.11--132.36) [156565]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@133.11--133.33) [156566]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__b (test_forward_dep_noauto_pvl.vpr@134.11--134.36) [156567]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@135.11--135.33) [156568]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__c (test_forward_dep_noauto_pvl.vpr@136.11--136.36) [156569]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_forward_dep_noauto_pvl.vpr@137.11--137.33) [156570]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_forward_dep_noauto_pvl.vpr@138.11--138.40) [156571]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_forward_dep_noauto_pvl.vpr@139.11--139.40) [156572]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_forward_dep_noauto_pvl.vpr@140.11--140.40) [156573]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    if (tid > 0) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_noauto_pvl.vpr@141.11--141.75) [156574]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__a[tid - 1].Ref__Integer_value (test_forward_dep_noauto_pvl.vpr@141.11--141.75) [156575]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] - perm];
    }
    if (tid > 0) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__a[tid - 1].Ref__Integer_value == tid might not hold. (test_forward_dep_noauto_pvl.vpr@142.11--142.72) [156576]"}
        Heap[Seq#Index(Heap[diz, Ref__a], tid - 1), Ref__Integer_value] == tid;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}