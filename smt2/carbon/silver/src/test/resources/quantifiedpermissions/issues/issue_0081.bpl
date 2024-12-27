// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:11:41
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0081.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0081-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_7: Ref, f_11: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_7, f_11] }
  Heap[o_7, $allocated] ==> Heap[Heap[o_7, f_11], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref, f_12: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, f_12] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_8, f_12) ==> Heap[o_8, f_12] == ExhaleHeap[o_8, f_12]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3), ExhaleHeap[null, PredicateMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> Heap[null, PredicateMaskField(pm_f_3)] == ExhaleHeap[null, PredicateMaskField(pm_f_3)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, PredicateMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3), ExhaleHeap[null, WandMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> Heap[null, WandMaskField(pm_f_3)] == ExhaleHeap[null, WandMaskField(pm_f_3)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, WandMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_8, $allocated] ==> ExhaleHeap[o_8, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_7: Ref, f_2: (Field A B), v: B ::
  { Heap[o_7, f_2:=v] }
  succHeap(Heap, Heap[o_7, f_2:=v])
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
function  neverTriggered3(i_4_1: int): bool;
function  neverTriggered4(i1_3: int): bool;
function  neverTriggered5(i2_3: int): bool;
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(S: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i1_17: int;
  var i2_7: int;
  var i_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_4: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i1_23: int;
  var i2_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|S|)), (i2 in [0..|S|)) } { (i1 in [0..|S|)), S[i2] } { (i2 in [0..|S|)), S[i1] } { S[i1], S[i2] } (i1 in [0..|S|)) && ((i2 in [0..|S|)) && i1 != i2) ==> S[i1] != S[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i1_17) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_7) && i1_17 != i2_7)) {
          assert {:msg "  Contract might not be well-formed. Index S[i1] into S might be negative. (issue_0081.vpr@7.12--7.105) [76834]"}
            i1_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i1] into S might exceed sequence length. (issue_0081.vpr@7.12--7.105) [76835]"}
            i1_17 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[i2] into S might be negative. (issue_0081.vpr@7.12--7.105) [76836]"}
            i2_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i2] into S might exceed sequence length. (issue_0081.vpr@7.12--7.105) [76837]"}
            i2_7 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i1_1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i1_1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i1_1_1), Seq#Index(S, i2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i1_1_1), Seq#Index(S, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i2_1_1), Seq#Index(S, i1_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_1_1), Seq#Index(S, i1_1_1) } { Seq#Index(S, i1_1_1), Seq#Index(S, i2_1_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i1_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(S, i1_1_1) != Seq#Index(S, i2_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|S|)) } { S[i] } (i in [0..|S|)) ==> acc(S[i].f, wildcard))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_2)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (issue_0081.vpr@8.12--8.69) [76838]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (issue_0081.vpr@8.12--8.69) [76839]"}
            i_2 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (issue_0081.vpr@8.12--8.69) [76840]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(S, i_1) != Seq#Index(S, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(S, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1) } { Seq#Index(S, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1) ==> qpRange1(Seq#Index(S, i_1)) && invRecv1(Seq#Index(S, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && qpRange1(o_4) ==> Seq#Index(S, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(S, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1) } { Seq#Index(S, i_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1) ==> Seq#Index(S, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && qpRange1(o_4) ==> Seq#Index(S, invRecv1(o_4)) == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|S|)) } { S[i] } (i in [0..|S|)) ==> acc(S[i].f, wildcard))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (issue_0081.vpr@9.12--9.69) [76841]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (issue_0081.vpr@9.12--9.69) [76842]"}
            i_4 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (issue_0081.vpr@9.12--9.69) [76843]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(S, i_3) != Seq#Index(S, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(S, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3) } { Seq#Index(S, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3) ==> qpRange2(Seq#Index(S, i_3)) && invRecv2(Seq#Index(S, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && qpRange2(o_4) ==> Seq#Index(S, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(S, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3) } { Seq#Index(S, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3) ==> Seq#Index(S, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && qpRange2(o_4) ==> Seq#Index(S, invRecv2(o_4)) == o_4 && PostMask[o_4, f_7] < QPMask[o_4, f_7]) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (|S| > 1) -- issue_0081.vpr@11.3--13.4
    if (Seq#Length(S) > 1) {
      
      // -- Translating statement: exhale acc(S[0].f, wildcard) -- issue_0081.vpr@12.5--12.33
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of acc(S[0].f, wildcard)
          assert {:msg "  Exhale might fail. Index S[0] into S might exceed sequence length. (issue_0081.vpr@12.12--12.33) [76844]"}
            0 < Seq#Length(S);
        assert {:msg "  Exhale might fail. There might be insufficient permission to access S[0].f (issue_0081.vpr@12.12--12.33) [76845]"}
          Mask[Seq#Index(S, 0), f_7] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[Seq#Index(S, 0), f_7];
        Mask := Mask[Seq#Index(S, 0), f_7:=Mask[Seq#Index(S, 0), f_7] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i1: Int ::
  //     { S[i1] }
  //     (i1 in [0..|S| - 2)) ==> acc(S[i1].f, wildcard)) -- issue_0081.vpr@15.3--15.72
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i1: Int :: { S[i1] } (i1 in [0..|S| - 2)) ==> acc(S[i1].f, wildcard))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), i1_23)) {
          assert {:msg "  Exhale might fail. Index S[i1] into S might be negative. (issue_0081.vpr@15.10--15.72) [76846]"}
            i1_23 >= 0;
          assert {:msg "  Exhale might fail. Index S[i1] into S might exceed sequence length. (issue_0081.vpr@15.10--15.72) [76847]"}
            i1_23 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Exhale might fail. There might be insufficient permission to access S[i1].f (issue_0081.vpr@15.10--15.72) [76848]"}
      (forall i1_3: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), i1_3) ==> Mask[Seq#Index(S, i1_3), f_7] > NoPerm
    );
    assume (forall i1_3: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), i1_3) ==> wildcard < Mask[Seq#Index(S, i1_3), f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction wildcard might be negative. (issue_0081.vpr@15.10--15.72) [76849]"}
        (forall i1_3: int ::
        { Seq#Index(S, i1_3) } { Seq#Index(S, i1_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), i1_3) && dummyFunction(Heap[Seq#Index(S, i1_3), f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver S[i1] is injective
      assert {:msg "  Exhale might fail. Quantified resource S[i1].f might not be injective. (issue_0081.vpr@15.10--15.72) [76850]"}
        (forall i1_3: int, i1_3_1: int ::
        { neverTriggered4(i1_3), neverTriggered4(i1_3_1) }
        (((i1_3 != i1_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), i1_3)) && Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), i1_3_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(S, i1_3) != Seq#Index(S, i1_3_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access S[i1].f (issue_0081.vpr@15.10--15.72) [76851]"}
        (forall i1_3: int ::
        { Seq#Index(S, i1_3) } { Seq#Index(S, i1_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), i1_3) ==> Mask[Seq#Index(S, i1_3), f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver S[i1]
      assume (forall i1_3: int ::
        { Seq#Index(S, i1_3) } { Seq#Index(S, i1_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), i1_3) && NoPerm < wildcard ==> qpRange4(Seq#Index(S, i1_3)) && invRecv4(Seq#Index(S, i1_3)) == i1_3
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), invRecv4(o_4)) && (NoPerm < wildcard && qpRange4(o_4)) ==> Seq#Index(S, invRecv4(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), invRecv4(o_4)) && (NoPerm < wildcard && qpRange4(o_4)) ==> Seq#Index(S, invRecv4(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S) - 2), invRecv4(o_4)) && (NoPerm < wildcard && qpRange4(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall i2: Int ::
  //     { (i2 in [0..|S|)) }
  //     { S[i2] }
  //     (i2 in [0..|S|)) ==> acc(S[i2].f, wildcard)) -- issue_0081.vpr@16.3--16.70
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i2: Int :: { (i2 in [0..|S|)) } { S[i2] } (i2 in [0..|S|)) ==> acc(S[i2].f, wildcard))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_2)) {
          assert {:msg "  Exhale might fail. Index S[i2] into S might be negative. (issue_0081.vpr@16.10--16.70) [76852]"}
            i2_2 >= 0;
          assert {:msg "  Exhale might fail. Index S[i2] into S might exceed sequence length. (issue_0081.vpr@16.10--16.70) [76853]"}
            i2_2 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Exhale might fail. There might be insufficient permission to access S[i2].f (issue_0081.vpr@16.10--16.70) [76854]"}
      (forall i2_3: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3) ==> Mask[Seq#Index(S, i2_3), f_7] > NoPerm
    );
    assume (forall i2_3: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3) ==> wildcard < Mask[Seq#Index(S, i2_3), f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction wildcard might be negative. (issue_0081.vpr@16.10--16.70) [76855]"}
        (forall i2_3: int ::
        { Seq#Index(S, i2_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i2_3) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3) } { Seq#Index(S, i2_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3) && dummyFunction(Heap[Seq#Index(S, i2_3), f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver S[i2] is injective
      assert {:msg "  Exhale might fail. Quantified resource S[i2].f might not be injective. (issue_0081.vpr@16.10--16.70) [76856]"}
        (forall i2_3: int, i2_3_2: int ::
        { neverTriggered5(i2_3), neverTriggered5(i2_3_2) }
        (((i2_3 != i2_3_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3_2)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(S, i2_3) != Seq#Index(S, i2_3_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access S[i2].f (issue_0081.vpr@16.10--16.70) [76857]"}
        (forall i2_3: int ::
        { Seq#Index(S, i2_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i2_3) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3) } { Seq#Index(S, i2_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3) ==> Mask[Seq#Index(S, i2_3), f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver S[i2]
      assume (forall i2_3: int ::
        { Seq#Index(S, i2_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i2_3) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3) } { Seq#Index(S, i2_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i2_3) && NoPerm < wildcard ==> qpRange5(Seq#Index(S, i2_3)) && invRecv5(Seq#Index(S, i2_3)) == i2_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && (NoPerm < wildcard && qpRange5(o_4)) ==> Seq#Index(S, invRecv5(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && (NoPerm < wildcard && qpRange5(o_4)) ==> Seq#Index(S, invRecv5(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && (NoPerm < wildcard && qpRange5(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access S[i].f (issue_0081.vpr@9.12--9.69) [76858]"}
      (forall i_4_1: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1) ==> Mask[Seq#Index(S, i_4_1), f_7] > NoPerm
    );
    assume (forall i_4_1: int ::
      
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1) ==> wildcard < Mask[Seq#Index(S, i_4_1), f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test01 might not hold. Fraction wildcard might be negative. (issue_0081.vpr@9.12--9.69) [76859]"}
        (forall i_4_1: int ::
        { Seq#Index(S, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1) } { Seq#Index(S, i_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1) && dummyFunction(Heap[Seq#Index(S, i_4_1), f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver S[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (issue_0081.vpr@9.12--9.69) [76860]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered3(i_4_1), neverTriggered3(i_4_2) }
        (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_2)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(S, i_4_1) != Seq#Index(S, i_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access S[i].f (issue_0081.vpr@9.12--9.69) [76861]"}
        (forall i_4_1: int ::
        { Seq#Index(S, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1) } { Seq#Index(S, i_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1) ==> Mask[Seq#Index(S, i_4_1), f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver S[i]
      assume (forall i_4_1: int ::
        { Seq#Index(S, i_4_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1) } { Seq#Index(S, i_4_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_4_1) && NoPerm < wildcard ==> qpRange3(Seq#Index(S, i_4_1)) && invRecv3(Seq#Index(S, i_4_1)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < wildcard && qpRange3(o_4)) ==> Seq#Index(S, invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < wildcard && qpRange3(o_4)) ==> Seq#Index(S, invRecv3(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < wildcard && qpRange3(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}