// 
// Translation of Viper program.
// 
// Date:         2024-12-26 19:50:05
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_qsort.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_qsort-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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

function  neverTriggered1(i_3: int): bool;
function  neverTriggered2(i1_1_1: int): bool;
function  neverTriggered3(i1_2_1: int): bool;
function  neverTriggered4(i3_7: int): bool;
function  neverTriggered5(i3_2: int): bool;
function  neverTriggered6(i3_3_2: int): bool;
function  neverTriggered7(i3_4: int): bool;
function  neverTriggered8(i3_5: int): bool;
function  neverTriggered9(i_5: int): bool;
function  neverTriggered10(i_7_1: int): bool;
function  neverTriggered11(i1_4_1: int): bool;
function  neverTriggered12(i1_6_1: int): bool;
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
// Translation of method qsort
// ==================================================

procedure qsort(s_2: (Seq Ref), start: int, end: int) returns ()
  modifies Heap, Mask;
{
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i1_18: int;
  var storeIndex: int;
  var index: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var aux: int;
  var i3_6: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_7: int;
  var i_8: int;
  var i1_19: int;
  var i1_24: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= start;
    assume start <= end;
    assume end <= Seq#Length(s_2);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), s[j] } { (j in [start..end)), s[i] } { s[i], s[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> s[i] != s[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_14) && (Seq#Contains(Seq#Range(start, end), j_5) && i_14 != j_5)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (parallel_qsort.vpr@8.12--8.102) [61588]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (parallel_qsort.vpr@8.12--8.102) [61589]"}
            i_14 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might be negative. (parallel_qsort.vpr@8.12--8.102) [61590]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might exceed sequence length. (parallel_qsort.vpr@8.12--8.102) [61591]"}
            j_5 < Seq#Length(s_2);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#ContainsTrigger(Seq#Range(start, end), j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#Contains(Seq#Range(start, end), j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#ContainsTrigger(Seq#Range(start, end), j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#Contains(Seq#Range(start, end), j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#Index(s_2, j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#Index(s_2, j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_1), Seq#Index(s_2, i_1) } { Seq#Contains(Seq#Range(start, end), j_1), Seq#Index(s_2, i_1) } { Seq#Index(s_2, i_1), Seq#Index(s_2, j_1) }
      Seq#Contains(Seq#Range(start, end), i_1) && (Seq#Contains(Seq#Range(start, end), j_1) && i_1 != j_1) ==> Seq#Index(s_2, i_1) != Seq#Index(s_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { s[i] } (i in [start..end)) ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_2)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (parallel_qsort.vpr@9.12--9.69) [61592]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (parallel_qsort.vpr@9.12--9.69) [61593]"}
            i_2 < Seq#Length(s_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (parallel_qsort.vpr@9.12--9.69) [61594]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(start, end), i_3)) && Seq#Contains(Seq#Range(start, end), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_3) != Seq#Index(s_2, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(s_2, i_3) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3) } { Seq#Contains(Seq#Range(start, end), i_3) } { Seq#Index(s_2, i_3) }
        Seq#Contains(Seq#Range(start, end), i_3) && NoPerm < FullPerm ==> qpRange1(Seq#Index(s_2, i_3)) && invRecv1(Seq#Index(s_2, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(s_2, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(s_2, i_3) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3) } { Seq#Contains(Seq#Range(start, end), i_3) } { Seq#Index(s_2, i_3) }
        Seq#Contains(Seq#Range(start, end), i_3) ==> Seq#Index(s_2, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv1(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Check definedness of (forall i1: Int :: { (i1 in [start..end)) } { s[i1] } (i1 in [start..end)) ==> acc(s[i1].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i1_18)) {
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might be negative. (parallel_qsort.vpr@10.11--10.71) [61595]"}
            i1_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i1] into s might exceed sequence length. (parallel_qsort.vpr@10.11--10.71) [61596]"}
            i1_18 < Seq#Length(s_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i1].f might not be injective. (parallel_qsort.vpr@10.11--10.71) [61597]"}
      (forall i1_1_1: int, i1_1_2: int ::
      
      (((i1_1_1 != i1_1_2 && Seq#Contains(Seq#Range(start, end), i1_1_1)) && Seq#Contains(Seq#Range(start, end), i1_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i1_1_1) != Seq#Index(s_2, i1_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall i1_1_1: int ::
        { Seq#Index(s_2, i1_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i1_1_1) } { Seq#Contains(Seq#Range(start, end), i1_1_1) } { Seq#Index(s_2, i1_1_1) }
        Seq#Contains(Seq#Range(start, end), i1_1_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(s_2, i1_1_1)) && invRecv2(Seq#Index(s_2, i1_1_1)) == i1_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(s_2, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i1_1_1: int ::
        { Seq#Index(s_2, i1_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i1_1_1) } { Seq#Contains(Seq#Range(start, end), i1_1_1) } { Seq#Index(s_2, i1_1_1) }
        Seq#Contains(Seq#Range(start, end), i1_1_1) ==> Seq#Index(s_2, i1_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv2(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
  
  // -- Translating statement: if (start < end - 1) -- parallel_qsort.vpr@17.3--49.4
    if (start < end - 1) {
      
      // -- Translating statement: storeIndex := start -- parallel_qsort.vpr@18.5--18.24
        storeIndex := start;
        assume state(Heap, Mask);
      
      // -- Translating statement: index := start -- parallel_qsort.vpr@19.5--19.19
        index := start;
        assume state(Heap, Mask);
      
      // -- Translating statement: while (index < end - 1) -- parallel_qsort.vpr@20.5--33.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver s[i3] is injective
              assert {:msg "  Loop invariant (forall i3: Int :: { (i3 in [start..end)) } { s[i3] } (i3 in [start..end)) ==> acc(s[i3].f, write)) might not hold on entry. Quantified resource s[i3].f might not be injective. (parallel_qsort.vpr@21.17--21.77) [61598]"}
                (forall i3_7: int, i3_8: int ::
                { neverTriggered4(i3_7), neverTriggered4(i3_8) }
                (((i3_7 != i3_8 && Seq#Contains(Seq#Range(start, end), i3_7)) && Seq#Contains(Seq#Range(start, end), i3_8)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i3_7) != Seq#Index(s_2, i3_8)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall i3: Int :: { (i3 in [start..end)) } { s[i3] } (i3 in [start..end)) ==> acc(s[i3].f, write)) might not hold on entry. There might be insufficient permission to access s[i3].f (parallel_qsort.vpr@21.17--21.77) [61599]"}
                (forall i3_7: int ::
                { Seq#Index(s_2, i3_7) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_7) } { Seq#Contains(Seq#Range(start, end), i3_7) } { Seq#Index(s_2, i3_7) }
                Seq#Contains(Seq#Range(start, end), i3_7) ==> Mask[Seq#Index(s_2, i3_7), f_7] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver s[i3]
              assume (forall i3_7: int ::
                { Seq#Index(s_2, i3_7) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_7) } { Seq#Contains(Seq#Range(start, end), i3_7) } { Seq#Index(s_2, i3_7) }
                Seq#Contains(Seq#Range(start, end), i3_7) && NoPerm < FullPerm ==> qpRange4(Seq#Index(s_2, i3_7)) && invRecv4(Seq#Index(s_2, i3_7)) == i3_7
              );
              assume (forall o_4: Ref ::
                { invRecv4(o_4) }
                Seq#Contains(Seq#Range(start, end), invRecv4(o_4)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> Seq#Index(s_2, invRecv4(o_4)) == o_4
              );
            
            // -- assume permission updates for field f
              assume (forall o_4: Ref ::
                { QPMask[o_4, f_7] }
                (Seq#Contains(Seq#Range(start, end), invRecv4(o_4)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> Seq#Index(s_2, invRecv4(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv4(o_4)) && (NoPerm < FullPerm && qpRange4(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assert {:msg "  Loop invariant start <= storeIndex && storeIndex <= index might not hold on entry. Assertion start <= storeIndex might not hold. (parallel_qsort.vpr@22.17--22.59) [61600]"}
              start <= storeIndex;
            assert {:msg "  Loop invariant start <= storeIndex && storeIndex <= index might not hold on entry. Assertion storeIndex <= index might not hold. (parallel_qsort.vpr@22.17--22.59) [61601]"}
              storeIndex <= index;
            assert {:msg "  Loop invariant start <= index && index < end might not hold on entry. Assertion start <= index might not hold. (parallel_qsort.vpr@23.17--23.46) [61602]"}
              start <= index;
            assert {:msg "  Loop invariant start <= index && index < end might not hold on entry. Assertion index < end might not hold. (parallel_qsort.vpr@23.17--23.46) [61603]"}
              index < end;
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc index, storeIndex, aux;
        
        // -- Check definedness of invariant
          if (*) {
            
            // -- Check definedness of (forall i3: Int :: { (i3 in [start..end)) } { s[i3] } (i3 in [start..end)) ==> acc(s[i3].f, write))
              if (*) {
                if (Seq#Contains(Seq#Range(start, end), i3_6)) {
                  assert {:msg "  Contract might not be well-formed. Index s[i3] into s might be negative. (parallel_qsort.vpr@21.17--21.77) [61604]"}
                    i3_6 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index s[i3] into s might exceed sequence length. (parallel_qsort.vpr@21.17--21.77) [61605]"}
                    i3_6 < Seq#Length(s_2);
                }
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource s[i3].f might not be injective. (parallel_qsort.vpr@21.17--21.77) [61606]"}
              (forall i3_2: int, i3_2_1: int ::
              
              (((i3_2 != i3_2_1 && Seq#Contains(Seq#Range(start, end), i3_2)) && Seq#Contains(Seq#Range(start, end), i3_2_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i3_2) != Seq#Index(s_2, i3_2_1)
            );
            
            // -- Define Inverse Function
              assume (forall i3_2: int ::
                { Seq#Index(s_2, i3_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_2) } { Seq#Contains(Seq#Range(start, end), i3_2) } { Seq#Index(s_2, i3_2) }
                Seq#Contains(Seq#Range(start, end), i3_2) && NoPerm < FullPerm ==> qpRange5(Seq#Index(s_2, i3_2)) && invRecv5(Seq#Index(s_2, i3_2)) == i3_2
              );
              assume (forall o_4: Ref ::
                { invRecv5(o_4) }
                (Seq#Contains(Seq#Range(start, end), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(s_2, invRecv5(o_4)) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall i3_2: int ::
                { Seq#Index(s_2, i3_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_2) } { Seq#Contains(Seq#Range(start, end), i3_2) } { Seq#Index(s_2, i3_2) }
                Seq#Contains(Seq#Range(start, end), i3_2) ==> Seq#Index(s_2, i3_2) != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, f_7] }
                ((Seq#Contains(Seq#Range(start, end), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv5(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume start <= storeIndex;
            assume storeIndex <= index;
            assume state(Heap, Mask);
            assume start <= index;
            assume index < end;
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
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource s[i3].f might not be injective. (parallel_qsort.vpr@21.17--21.77) [61607]"}
              (forall i3_3_2: int, i3_3_3: int ::
              
              (((i3_3_2 != i3_3_3 && Seq#Contains(Seq#Range(start, end), i3_3_2)) && Seq#Contains(Seq#Range(start, end), i3_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i3_3_2) != Seq#Index(s_2, i3_3_3)
            );
            
            // -- Define Inverse Function
              assume (forall i3_3_2: int ::
                { Seq#Index(s_2, i3_3_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_3_2) } { Seq#Contains(Seq#Range(start, end), i3_3_2) } { Seq#Index(s_2, i3_3_2) }
                Seq#Contains(Seq#Range(start, end), i3_3_2) && NoPerm < FullPerm ==> qpRange6(Seq#Index(s_2, i3_3_2)) && invRecv6(Seq#Index(s_2, i3_3_2)) == i3_3_2
              );
              assume (forall o_4: Ref ::
                { invRecv6(o_4) }
                (Seq#Contains(Seq#Range(start, end), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> Seq#Index(s_2, invRecv6(o_4)) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall i3_3_2: int ::
                { Seq#Index(s_2, i3_3_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_3_2) } { Seq#Contains(Seq#Range(start, end), i3_3_2) } { Seq#Index(s_2, i3_3_2) }
                Seq#Contains(Seq#Range(start, end), i3_3_2) ==> Seq#Index(s_2, i3_3_2) != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, f_7] }
                ((Seq#Contains(Seq#Range(start, end), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv6(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume start <= storeIndex;
            assume storeIndex <= index;
            assume start <= index;
            assume index < end;
            assume state(Heap, Mask);
            // Check and assume guard
            assume index < end - 1;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: if (s[index].f <= s[end - 1].f) -- parallel_qsort.vpr@26.7--31.8
                
                // -- Check definedness of s[index].f <= s[end - 1].f
                  assert {:msg "  Conditional statement might fail. Index s[index] into s might be negative. (parallel_qsort.vpr@26.11--26.35) [61608]"}
                    index >= 0;
                  assert {:msg "  Conditional statement might fail. Index s[index] into s might exceed sequence length. (parallel_qsort.vpr@26.11--26.35) [61609]"}
                    index < Seq#Length(s_2);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access s[index].f (parallel_qsort.vpr@26.11--26.35) [61610]"}
                    HasDirectPerm(Mask, Seq#Index(s_2, index), f_7);
                  assert {:msg "  Conditional statement might fail. Index s[end - 1] into s might be negative. (parallel_qsort.vpr@26.11--26.35) [61611]"}
                    end - 1 >= 0;
                  assert {:msg "  Conditional statement might fail. Index s[end - 1] into s might exceed sequence length. (parallel_qsort.vpr@26.11--26.35) [61612]"}
                    end - 1 < Seq#Length(s_2);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access s[end - 1].f (parallel_qsort.vpr@26.11--26.35) [61613]"}
                    HasDirectPerm(Mask, Seq#Index(s_2, end - 1), f_7);
                if (Heap[Seq#Index(s_2, index), f_7] <= Heap[Seq#Index(s_2, end - 1), f_7]) {
                  
                  // -- Translating statement: aux := s[storeIndex].f -- parallel_qsort.vpr@27.9--27.31
                    
                    // -- Check definedness of s[storeIndex].f
                      assert {:msg "  Assignment might fail. Index s[storeIndex] into s might be negative. (parallel_qsort.vpr@27.9--27.31) [61614]"}
                        storeIndex >= 0;
                      assert {:msg "  Assignment might fail. Index s[storeIndex] into s might exceed sequence length. (parallel_qsort.vpr@27.9--27.31) [61615]"}
                        storeIndex < Seq#Length(s_2);
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access s[storeIndex].f (parallel_qsort.vpr@27.9--27.31) [61616]"}
                        HasDirectPerm(Mask, Seq#Index(s_2, storeIndex), f_7);
                    aux := Heap[Seq#Index(s_2, storeIndex), f_7];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: s[storeIndex].f := s[index].f -- parallel_qsort.vpr@28.9--28.38
                    
                    // -- Check definedness of s[storeIndex]
                      assert {:msg "  Assignment might fail. Index s[storeIndex] into s might be negative. (parallel_qsort.vpr@28.9--28.38) [61617]"}
                        storeIndex >= 0;
                      assert {:msg "  Assignment might fail. Index s[storeIndex] into s might exceed sequence length. (parallel_qsort.vpr@28.9--28.38) [61618]"}
                        storeIndex < Seq#Length(s_2);
                    
                    // -- Check definedness of s[index].f
                      assert {:msg "  Assignment might fail. Index s[index] into s might be negative. (parallel_qsort.vpr@28.9--28.38) [61619]"}
                        index >= 0;
                      assert {:msg "  Assignment might fail. Index s[index] into s might exceed sequence length. (parallel_qsort.vpr@28.9--28.38) [61620]"}
                        index < Seq#Length(s_2);
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access s[index].f (parallel_qsort.vpr@28.9--28.38) [61621]"}
                        HasDirectPerm(Mask, Seq#Index(s_2, index), f_7);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access s[storeIndex].f (parallel_qsort.vpr@28.9--28.38) [61622]"}
                      FullPerm == Mask[Seq#Index(s_2, storeIndex), f_7];
                    Heap := Heap[Seq#Index(s_2, storeIndex), f_7:=Heap[Seq#Index(s_2, index), f_7]];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: s[index].f := aux -- parallel_qsort.vpr@29.9--29.26
                    
                    // -- Check definedness of s[index]
                      assert {:msg "  Assignment might fail. Index s[index] into s might be negative. (parallel_qsort.vpr@29.9--29.26) [61623]"}
                        index >= 0;
                      assert {:msg "  Assignment might fail. Index s[index] into s might exceed sequence length. (parallel_qsort.vpr@29.9--29.26) [61624]"}
                        index < Seq#Length(s_2);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access s[index].f (parallel_qsort.vpr@29.9--29.26) [61625]"}
                      FullPerm == Mask[Seq#Index(s_2, index), f_7];
                    Heap := Heap[Seq#Index(s_2, index), f_7:=aux];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: storeIndex := storeIndex + 1 -- parallel_qsort.vpr@30.9--30.37
                    storeIndex := storeIndex + 1;
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
              
              // -- Translating statement: index := index + 1 -- parallel_qsort.vpr@32.7--32.25
                index := index + 1;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver s[i3] is injective
              assert {:msg "  Loop invariant (forall i3: Int :: { (i3 in [start..end)) } { s[i3] } (i3 in [start..end)) ==> acc(s[i3].f, write)) might not be preserved. Quantified resource s[i3].f might not be injective. (parallel_qsort.vpr@21.17--21.77) [61626]"}
                (forall i3_4: int, i3_4_1: int ::
                { neverTriggered7(i3_4), neverTriggered7(i3_4_1) }
                (((i3_4 != i3_4_1 && Seq#Contains(Seq#Range(start, end), i3_4)) && Seq#Contains(Seq#Range(start, end), i3_4_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i3_4) != Seq#Index(s_2, i3_4_1)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall i3: Int :: { (i3 in [start..end)) } { s[i3] } (i3 in [start..end)) ==> acc(s[i3].f, write)) might not be preserved. There might be insufficient permission to access s[i3].f (parallel_qsort.vpr@21.17--21.77) [61627]"}
                (forall i3_4: int ::
                { Seq#Index(s_2, i3_4) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_4) } { Seq#Contains(Seq#Range(start, end), i3_4) } { Seq#Index(s_2, i3_4) }
                Seq#Contains(Seq#Range(start, end), i3_4) ==> Mask[Seq#Index(s_2, i3_4), f_7] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver s[i3]
              assume (forall i3_4: int ::
                { Seq#Index(s_2, i3_4) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_4) } { Seq#Contains(Seq#Range(start, end), i3_4) } { Seq#Index(s_2, i3_4) }
                Seq#Contains(Seq#Range(start, end), i3_4) && NoPerm < FullPerm ==> qpRange7(Seq#Index(s_2, i3_4)) && invRecv7(Seq#Index(s_2, i3_4)) == i3_4
              );
              assume (forall o_4: Ref ::
                { invRecv7(o_4) }
                Seq#Contains(Seq#Range(start, end), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(s_2, invRecv7(o_4)) == o_4
              );
            
            // -- assume permission updates for field f
              assume (forall o_4: Ref ::
                { QPMask[o_4, f_7] }
                (Seq#Contains(Seq#Range(start, end), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(s_2, invRecv7(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assert {:msg "  Loop invariant start <= storeIndex && storeIndex <= index might not be preserved. Assertion start <= storeIndex might not hold. (parallel_qsort.vpr@22.17--22.59) [61628]"}
              start <= storeIndex;
            assert {:msg "  Loop invariant start <= storeIndex && storeIndex <= index might not be preserved. Assertion storeIndex <= index might not hold. (parallel_qsort.vpr@22.17--22.59) [61629]"}
              storeIndex <= index;
            assert {:msg "  Loop invariant start <= index && index < end might not be preserved. Assertion start <= index might not hold. (parallel_qsort.vpr@23.17--23.46) [61630]"}
              start <= index;
            assert {:msg "  Loop invariant start <= index && index < end might not be preserved. Assertion index < end might not hold. (parallel_qsort.vpr@23.17--23.46) [61631]"}
              index < end;
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(index < end - 1);
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource s[i3].f might not be injective. (parallel_qsort.vpr@21.17--21.77) [61632]"}
            (forall i3_5: int, i3_5_1: int ::
            
            (((i3_5 != i3_5_1 && Seq#Contains(Seq#Range(start, end), i3_5)) && Seq#Contains(Seq#Range(start, end), i3_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i3_5) != Seq#Index(s_2, i3_5_1)
          );
          
          // -- Define Inverse Function
            assume (forall i3_5: int ::
              { Seq#Index(s_2, i3_5) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_5) } { Seq#Contains(Seq#Range(start, end), i3_5) } { Seq#Index(s_2, i3_5) }
              Seq#Contains(Seq#Range(start, end), i3_5) && NoPerm < FullPerm ==> qpRange8(Seq#Index(s_2, i3_5)) && invRecv8(Seq#Index(s_2, i3_5)) == i3_5
            );
            assume (forall o_4: Ref ::
              { invRecv8(o_4) }
              (Seq#Contains(Seq#Range(start, end), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(s_2, invRecv8(o_4)) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall i3_5: int ::
              { Seq#Index(s_2, i3_5) } { Seq#ContainsTrigger(Seq#Range(start, end), i3_5) } { Seq#Contains(Seq#Range(start, end), i3_5) } { Seq#Index(s_2, i3_5) }
              Seq#Contains(Seq#Range(start, end), i3_5) ==> Seq#Index(s_2, i3_5) != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, f_7] }
              ((Seq#Contains(Seq#Range(start, end), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv8(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume start <= storeIndex;
          assume storeIndex <= index;
          assume start <= index;
          assume index < end;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: aux := s[storeIndex].f -- parallel_qsort.vpr@34.5--34.27
        
        // -- Check definedness of s[storeIndex].f
          assert {:msg "  Assignment might fail. Index s[storeIndex] into s might be negative. (parallel_qsort.vpr@34.5--34.27) [61633]"}
            storeIndex >= 0;
          assert {:msg "  Assignment might fail. Index s[storeIndex] into s might exceed sequence length. (parallel_qsort.vpr@34.5--34.27) [61634]"}
            storeIndex < Seq#Length(s_2);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access s[storeIndex].f (parallel_qsort.vpr@34.5--34.27) [61635]"}
            HasDirectPerm(Mask, Seq#Index(s_2, storeIndex), f_7);
        aux := Heap[Seq#Index(s_2, storeIndex), f_7];
        assume state(Heap, Mask);
      
      // -- Translating statement: s[storeIndex].f := s[end - 1].f -- parallel_qsort.vpr@35.5--35.34
        
        // -- Check definedness of s[storeIndex]
          assert {:msg "  Assignment might fail. Index s[storeIndex] into s might be negative. (parallel_qsort.vpr@35.5--35.34) [61636]"}
            storeIndex >= 0;
          assert {:msg "  Assignment might fail. Index s[storeIndex] into s might exceed sequence length. (parallel_qsort.vpr@35.5--35.34) [61637]"}
            storeIndex < Seq#Length(s_2);
        
        // -- Check definedness of s[end - 1].f
          assert {:msg "  Assignment might fail. Index s[end - 1] into s might be negative. (parallel_qsort.vpr@35.5--35.34) [61638]"}
            end - 1 >= 0;
          assert {:msg "  Assignment might fail. Index s[end - 1] into s might exceed sequence length. (parallel_qsort.vpr@35.5--35.34) [61639]"}
            end - 1 < Seq#Length(s_2);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access s[end - 1].f (parallel_qsort.vpr@35.5--35.34) [61640]"}
            HasDirectPerm(Mask, Seq#Index(s_2, end - 1), f_7);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access s[storeIndex].f (parallel_qsort.vpr@35.5--35.34) [61641]"}
          FullPerm == Mask[Seq#Index(s_2, storeIndex), f_7];
        Heap := Heap[Seq#Index(s_2, storeIndex), f_7:=Heap[Seq#Index(s_2, end - 1), f_7]];
        assume state(Heap, Mask);
      
      // -- Translating statement: s[end - 1].f := aux -- parallel_qsort.vpr@36.5--36.22
        
        // -- Check definedness of s[end - 1]
          assert {:msg "  Assignment might fail. Index s[end - 1] into s might be negative. (parallel_qsort.vpr@36.5--36.22) [61642]"}
            end - 1 >= 0;
          assert {:msg "  Assignment might fail. Index s[end - 1] into s might exceed sequence length. (parallel_qsort.vpr@36.5--36.22) [61643]"}
            end - 1 < Seq#Length(s_2);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access s[end - 1].f (parallel_qsort.vpr@36.5--36.22) [61644]"}
          FullPerm == Mask[Seq#Index(s_2, end - 1), f_7];
        Heap := Heap[Seq#Index(s_2, end - 1), f_7:=aux];
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale 0 <= start && (start <= storeIndex && storeIndex <= |s|) -- parallel_qsort.vpr@39.5--39.66
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Exhale might fail. Assertion 0 <= start might not hold. (parallel_qsort.vpr@39.12--39.66) [61645]"}
          0 <= start;
        assert {:msg "  Exhale might fail. Assertion start <= storeIndex might not hold. (parallel_qsort.vpr@39.12--39.66) [61646]"}
          start <= storeIndex;
        assert {:msg "  Exhale might fail. Assertion storeIndex <= |s| might not hold. (parallel_qsort.vpr@39.12--39.66) [61647]"}
          storeIndex <= Seq#Length(s_2);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [start..storeIndex)) }
  //     { s[i] }
  //     (i in [start..storeIndex)) ==> acc(s[i].f, write)) -- parallel_qsort.vpr@40.5--40.76
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (forall i: Int :: { (i in [start..storeIndex)) } { s[i] } (i in [start..storeIndex)) ==> acc(s[i].f, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start, storeIndex), i_7)) {
              assert {:msg "  Exhale might fail. Index s[i] into s might be negative. (parallel_qsort.vpr@40.12--40.76) [61648]"}
                i_7 >= 0;
              assert {:msg "  Exhale might fail. Index s[i] into s might exceed sequence length. (parallel_qsort.vpr@40.12--40.76) [61649]"}
                i_7 < Seq#Length(s_2);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver s[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource s[i].f might not be injective. (parallel_qsort.vpr@40.12--40.76) [61651]"}
            (forall i_5: int, i_5_1: int ::
            { neverTriggered9(i_5), neverTriggered9(i_5_1) }
            (((i_5 != i_5_1 && Seq#Contains(Seq#Range(start, storeIndex), i_5)) && Seq#Contains(Seq#Range(start, storeIndex), i_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_5) != Seq#Index(s_2, i_5_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access s[i].f (parallel_qsort.vpr@40.12--40.76) [61652]"}
            (forall i_5: int ::
            { Seq#Index(s_2, i_5) } { Seq#ContainsTrigger(Seq#Range(start, storeIndex), i_5) } { Seq#Contains(Seq#Range(start, storeIndex), i_5) } { Seq#Index(s_2, i_5) }
            Seq#Contains(Seq#Range(start, storeIndex), i_5) ==> Mask[Seq#Index(s_2, i_5), f_7] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver s[i]
          assume (forall i_5: int ::
            { Seq#Index(s_2, i_5) } { Seq#ContainsTrigger(Seq#Range(start, storeIndex), i_5) } { Seq#Contains(Seq#Range(start, storeIndex), i_5) } { Seq#Index(s_2, i_5) }
            Seq#Contains(Seq#Range(start, storeIndex), i_5) && NoPerm < FullPerm ==> qpRange9(Seq#Index(s_2, i_5)) && invRecv9(Seq#Index(s_2, i_5)) == i_5
          );
          assume (forall o_4: Ref ::
            { invRecv9(o_4) }
            Seq#Contains(Seq#Range(start, storeIndex), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(s_2, invRecv9(o_4)) == o_4
          );
        
        // -- assume permission updates for field f
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            (Seq#Contains(Seq#Range(start, storeIndex), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(s_2, invRecv9(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(start, storeIndex), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      
      // -- Translating statement: exhale 0 <= storeIndex + 1 && (storeIndex + 1 <= end && end <= |s|) -- parallel_qsort.vpr@43.5--43.66
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Exhale might fail. Assertion 0 <= storeIndex + 1 might not hold. (parallel_qsort.vpr@43.12--43.66) [61653]"}
          0 <= storeIndex + 1;
        assert {:msg "  Exhale might fail. Assertion storeIndex + 1 <= end might not hold. (parallel_qsort.vpr@43.12--43.66) [61654]"}
          storeIndex + 1 <= end;
        assert {:msg "  Exhale might fail. Assertion end <= |s| might not hold. (parallel_qsort.vpr@43.12--43.66) [61655]"}
          end <= Seq#Length(s_2);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i: Int ::
  //     { s[i] }
  //     (i in [storeIndex + 1..end)) ==> acc(s[i].f, write)) -- parallel_qsort.vpr@44.5--44.76
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (forall i: Int :: { s[i] } (i in [storeIndex + 1..end)) ==> acc(s[i].f, write))
          if (*) {
            if (Seq#Contains(Seq#Range(storeIndex + 1, end), i_8)) {
              assert {:msg "  Exhale might fail. Index s[i] into s might be negative. (parallel_qsort.vpr@44.12--44.76) [61656]"}
                i_8 >= 0;
              assert {:msg "  Exhale might fail. Index s[i] into s might exceed sequence length. (parallel_qsort.vpr@44.12--44.76) [61657]"}
                i_8 < Seq#Length(s_2);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver s[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource s[i].f might not be injective. (parallel_qsort.vpr@44.12--44.76) [61659]"}
            (forall i_7_1: int, i_7_2: int ::
            { neverTriggered10(i_7_1), neverTriggered10(i_7_2) }
            (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(storeIndex + 1, end), i_7_1)) && Seq#Contains(Seq#Range(storeIndex + 1, end), i_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_7_1) != Seq#Index(s_2, i_7_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access s[i].f (parallel_qsort.vpr@44.12--44.76) [61660]"}
            (forall i_7_1: int ::
            { Seq#Index(s_2, i_7_1) } { Seq#Index(s_2, i_7_1) }
            Seq#Contains(Seq#Range(storeIndex + 1, end), i_7_1) ==> Mask[Seq#Index(s_2, i_7_1), f_7] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver s[i]
          assume (forall i_7_1: int ::
            { Seq#Index(s_2, i_7_1) } { Seq#Index(s_2, i_7_1) }
            Seq#Contains(Seq#Range(storeIndex + 1, end), i_7_1) && NoPerm < FullPerm ==> qpRange10(Seq#Index(s_2, i_7_1)) && invRecv10(Seq#Index(s_2, i_7_1)) == i_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            Seq#Contains(Seq#Range(storeIndex + 1, end), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(s_2, invRecv10(o_4)) == o_4
          );
        
        // -- assume permission updates for field f
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            (Seq#Contains(Seq#Range(storeIndex + 1, end), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(s_2, invRecv10(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(storeIndex + 1, end), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      
      // -- Translating statement: inhale (forall i1: Int ::
  //     { (i1 in [start..storeIndex)) }
  //     { s[i1] }
  //     (i1 in [start..storeIndex)) ==> acc(s[i1].f, write)) -- parallel_qsort.vpr@47.2--47.76
        
        // -- Check definedness of (forall i1: Int :: { (i1 in [start..storeIndex)) } { s[i1] } (i1 in [start..storeIndex)) ==> acc(s[i1].f, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start, storeIndex), i1_19)) {
              assert {:msg "  Inhale might fail. Index s[i1] into s might be negative. (parallel_qsort.vpr@47.9--47.76) [61661]"}
                i1_19 >= 0;
              assert {:msg "  Inhale might fail. Index s[i1] into s might exceed sequence length. (parallel_qsort.vpr@47.9--47.76) [61662]"}
                i1_19 < Seq#Length(s_2);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource s[i1].f might not be injective. (parallel_qsort.vpr@47.9--47.76) [61663]"}
          (forall i1_4_1: int, i1_4_2: int ::
          
          (((i1_4_1 != i1_4_2 && Seq#Contains(Seq#Range(start, storeIndex), i1_4_1)) && Seq#Contains(Seq#Range(start, storeIndex), i1_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i1_4_1) != Seq#Index(s_2, i1_4_2)
        );
        
        // -- Define Inverse Function
          assume (forall i1_4_1: int ::
            { Seq#Index(s_2, i1_4_1) } { Seq#ContainsTrigger(Seq#Range(start, storeIndex), i1_4_1) } { Seq#Contains(Seq#Range(start, storeIndex), i1_4_1) } { Seq#Index(s_2, i1_4_1) }
            Seq#Contains(Seq#Range(start, storeIndex), i1_4_1) && NoPerm < FullPerm ==> qpRange11(Seq#Index(s_2, i1_4_1)) && invRecv11(Seq#Index(s_2, i1_4_1)) == i1_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            (Seq#Contains(Seq#Range(start, storeIndex), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(s_2, invRecv11(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i1_4_1: int ::
            { Seq#Index(s_2, i1_4_1) } { Seq#ContainsTrigger(Seq#Range(start, storeIndex), i1_4_1) } { Seq#Contains(Seq#Range(start, storeIndex), i1_4_1) } { Seq#Index(s_2, i1_4_1) }
            Seq#Contains(Seq#Range(start, storeIndex), i1_4_1) ==> Seq#Index(s_2, i1_4_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((Seq#Contains(Seq#Range(start, storeIndex), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv11(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(start, storeIndex), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i1: Int ::
  //     { s[i1] }
  //     (i1 in [storeIndex + 1..end)) ==> acc(s[i1].f, write)) -- parallel_qsort.vpr@48.2--48.76
        
        // -- Check definedness of (forall i1: Int :: { s[i1] } (i1 in [storeIndex + 1..end)) ==> acc(s[i1].f, write))
          if (*) {
            if (Seq#Contains(Seq#Range(storeIndex + 1, end), i1_24)) {
              assert {:msg "  Inhale might fail. Index s[i1] into s might be negative. (parallel_qsort.vpr@48.9--48.76) [61664]"}
                i1_24 >= 0;
              assert {:msg "  Inhale might fail. Index s[i1] into s might exceed sequence length. (parallel_qsort.vpr@48.9--48.76) [61665]"}
                i1_24 < Seq#Length(s_2);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource s[i1].f might not be injective. (parallel_qsort.vpr@48.9--48.76) [61666]"}
          (forall i1_6_1: int, i1_6_2: int ::
          
          (((i1_6_1 != i1_6_2 && Seq#Contains(Seq#Range(storeIndex + 1, end), i1_6_1)) && Seq#Contains(Seq#Range(storeIndex + 1, end), i1_6_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i1_6_1) != Seq#Index(s_2, i1_6_2)
        );
        
        // -- Define Inverse Function
          assume (forall i1_6_1: int ::
            { Seq#Index(s_2, i1_6_1) } { Seq#Index(s_2, i1_6_1) }
            Seq#Contains(Seq#Range(storeIndex + 1, end), i1_6_1) && NoPerm < FullPerm ==> qpRange12(Seq#Index(s_2, i1_6_1)) && invRecv12(Seq#Index(s_2, i1_6_1)) == i1_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            (Seq#Contains(Seq#Range(storeIndex + 1, end), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(s_2, invRecv12(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i1_6_1: int ::
            { Seq#Index(s_2, i1_6_1) } { Seq#Index(s_2, i1_6_1) }
            Seq#Contains(Seq#Range(storeIndex + 1, end), i1_6_1) ==> Seq#Index(s_2, i1_6_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((Seq#Contains(Seq#Range(storeIndex + 1, end), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv12(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(storeIndex + 1, end), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver s[i1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource s[i1].f might not be injective. (parallel_qsort.vpr@10.11--10.71) [61667]"}
        (forall i1_2_1: int, i1_2_2: int ::
        { neverTriggered3(i1_2_1), neverTriggered3(i1_2_2) }
        (((i1_2_1 != i1_2_2 && Seq#Contains(Seq#Range(start, end), i1_2_1)) && Seq#Contains(Seq#Range(start, end), i1_2_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i1_2_1) != Seq#Index(s_2, i1_2_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of qsort might not hold. There might be insufficient permission to access s[i1].f (parallel_qsort.vpr@10.11--10.71) [61668]"}
        (forall i1_2_1: int ::
        { Seq#Index(s_2, i1_2_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i1_2_1) } { Seq#Contains(Seq#Range(start, end), i1_2_1) } { Seq#Index(s_2, i1_2_1) }
        Seq#Contains(Seq#Range(start, end), i1_2_1) ==> Mask[Seq#Index(s_2, i1_2_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s[i1]
      assume (forall i1_2_1: int ::
        { Seq#Index(s_2, i1_2_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i1_2_1) } { Seq#Contains(Seq#Range(start, end), i1_2_1) } { Seq#Index(s_2, i1_2_1) }
        Seq#Contains(Seq#Range(start, end), i1_2_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(s_2, i1_2_1)) && invRecv3(Seq#Index(s_2, i1_2_1)) == i1_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(s_2, invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(s_2, invRecv3(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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