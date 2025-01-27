// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:37:22
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0149.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0149-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_19: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_19] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_19], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_20: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_20] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_20) ==> Heap[o_13, f_20] == ExhaleHeap[o_13, f_20]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_21: (Field A B), v: B ::
  { Heap[o_12, f_21:=v] }
  succHeap(Heap, Heap[o_12, f_21:=v])
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
function  neverTriggered2(x_3: Ref): bool;
function  neverTriggered3(x_4_2: Ref): bool;
function  neverTriggered4(x_5: Ref): bool;
function  neverTriggered5(x_1: Ref): bool;
function  neverTriggered6(x_3: Ref): bool;
function  neverTriggered7(x_4_2: Ref): bool;
function  neverTriggered8(x_5: Ref): bool;
function  neverTriggered9(i_1: int): bool;
function  neverTriggered10(i_3_2: int): bool;
function  neverTriggered11(i_1: int): bool;
function  neverTriggered12(i_3_2: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField Ref;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x1: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var x_2: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1 != null;
    Mask := Mask[x1, g:=Mask[x1, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (issue_0149.vpr@8.12--8.36) [170651]"}
        HasDirectPerm(Mask, x1, g);
    perm := FullPerm;
    assume Heap[x1, g] != null;
    Mask := Mask[Heap[x1, g], f_7:=Mask[Heap[x1, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x2 != null;
    Mask := Mask[x2, g:=Mask[x2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x2.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (issue_0149.vpr@9.12--9.36) [170652]"}
        HasDirectPerm(Mask, x2, g);
    perm := FullPerm;
    assume Heap[x2, g] != null;
    Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] + perm];
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (issue_0149.vpr@10.12--10.58) [170653]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_1]) && Set#UnionOne(Set#Singleton(x2), x1)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_1] && NoPerm < FullPerm ==> qpRange1(x_1) && invRecv1(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((Set#UnionOne(Set#Singleton(x2), x1)[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, g] == PostMask[o_9, g] + FullPerm) && (!((Set#UnionOne(Set#Singleton(x2), x1)[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, g] == PostMask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x1.g != x2.g
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (issue_0149.vpr@11.12--11.24) [170654]"}
        HasDirectPerm(PostMask, x1, g);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (issue_0149.vpr@11.12--11.24) [170655]"}
        HasDirectPerm(PostMask, x2, g);
    assume PostHeap[x1, g] != PostHeap[x2, g];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g.f, write))
      if (*) {
        if (Set#UnionOne(Set#Singleton(x2), x1)[x_2]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (issue_0149.vpr@12.12--12.60) [170656]"}
            HasDirectPerm(PostMask, x_2, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (issue_0149.vpr@12.12--12.60) [170657]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_3]) && Set#UnionOne(Set#Singleton(x2), x1)[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> PostHeap[x_3, g] != PostHeap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_3] && NoPerm < FullPerm ==> qpRange2(PostHeap[x_3, g]) && invRecv2(PostHeap[x_3, g]) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> PostHeap[invRecv2(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_3] ==> PostHeap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Set#UnionOne(Set#Singleton(x2), x1)[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> PostHeap[invRecv2(o_9), g] == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((Set#UnionOne(Set#Singleton(x2), x1)[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
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
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (issue_0149.vpr@10.12--10.58) [170658]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered3(x_4_2), neverTriggered3(x_4_3) }
        (((x_4_2 != x_4_3 && Set#UnionOne(Set#Singleton(x2), x1)[x_4_2]) && Set#UnionOne(Set#Singleton(x2), x1)[x_4_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.g (issue_0149.vpr@10.12--10.58) [170659]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] ==> Mask[x_4_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] && NoPerm < FullPerm ==> qpRange3(x_4_2) && invRecv3(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv3(o_9)] && (NoPerm < FullPerm && qpRange3(o_9)) ==> invRecv3(o_9) == o_9
      );
    
    // -- assume permission updates for field g
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv3(o_9)] && (NoPerm < FullPerm && qpRange3(o_9)) ==> invRecv3(o_9) == o_9 && QPMask[o_9, g] == Mask[o_9, g] - FullPerm) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv3(o_9)] && (NoPerm < FullPerm && qpRange3(o_9))) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test01 might not hold. Assertion x1.g != x2.g might not hold. (issue_0149.vpr@11.12--11.24) [170660]"}
      Heap[x1, g] != Heap[x2, g];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (issue_0149.vpr@12.12--12.60) [170661]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered4(x_5), neverTriggered4(x_5_1) }
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_5]) && Set#UnionOne(Set#Singleton(x2), x1)[x_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.g.f (issue_0149.vpr@12.12--12.60) [170662]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] ==> Mask[Heap[x_5, g], f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] && NoPerm < FullPerm ==> qpRange4(Heap[x_5, g]) && invRecv4(Heap[x_5, g]) == x_5
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv4(o_9)] && (NoPerm < FullPerm && qpRange4(o_9)) ==> Heap[invRecv4(o_9), g] == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv4(o_9)] && (NoPerm < FullPerm && qpRange4(o_9)) ==> Heap[invRecv4(o_9), g] == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv4(o_9)] && (NoPerm < FullPerm && qpRange4(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x1: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var x_4: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1 != null;
    Mask := Mask[x1, g:=Mask[x1, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, 2 / 3)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (issue_0149.vpr@19.12--19.41) [170663]"}
        HasDirectPerm(Mask, x1, g);
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (issue_0149.vpr@19.12--19.41) [170664]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x1, g] != null;
    Mask := Mask[Heap[x1, g], f_7:=Mask[Heap[x1, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x2 != null;
    Mask := Mask[x2, g:=Mask[x2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x2.g.f, 2 / 3)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (issue_0149.vpr@20.12--20.41) [170665]"}
        HasDirectPerm(Mask, x2, g);
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (issue_0149.vpr@20.12--20.41) [170666]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x2, g] != null;
    Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] + perm];
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g, 2 / 3))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (issue_0149.vpr@21.12--21.63) [170667]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_1]) && Set#UnionOne(Set#Singleton(x2), x1)[x_1_1]) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_1] && NoPerm < 2 / 3 ==> qpRange5(x_1) && invRecv5(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv5(o_9)] && NoPerm < 2 / 3) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (issue_0149.vpr@21.12--21.63) [170668]"}
      (forall x_1: Ref ::
      { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
      Set#UnionOne(Set#Singleton(x2), x1)[x_1] ==> 2 / 3 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_1] && 2 / 3 > NoPerm ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((Set#UnionOne(Set#Singleton(x2), x1)[invRecv5(o_9)] && NoPerm < 2 / 3) && qpRange5(o_9) ==> (NoPerm < 2 / 3 ==> invRecv5(o_9) == o_9) && QPMask[o_9, g] == PostMask[o_9, g] + 2 / 3) && (!((Set#UnionOne(Set#Singleton(x2), x1)[invRecv5(o_9)] && NoPerm < 2 / 3) && qpRange5(o_9)) ==> QPMask[o_9, g] == PostMask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x1.g != x2.g
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (issue_0149.vpr@22.12--22.24) [170669]"}
        HasDirectPerm(PostMask, x1, g);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (issue_0149.vpr@22.12--22.24) [170670]"}
        HasDirectPerm(PostMask, x2, g);
    assume PostHeap[x1, g] != PostHeap[x2, g];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g.f, 2 / 3))
      if (*) {
        if (Set#UnionOne(Set#Singleton(x2), x1)[x_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (issue_0149.vpr@23.12--23.65) [170671]"}
            HasDirectPerm(PostMask, x_4, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (issue_0149.vpr@23.12--23.65) [170672]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_3]) && Set#UnionOne(Set#Singleton(x2), x1)[x_3_1]) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> PostHeap[x_3, g] != PostHeap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_3] && NoPerm < 2 / 3 ==> qpRange6(PostHeap[x_3, g]) && invRecv6(PostHeap[x_3, g]) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv6(o_9)] && NoPerm < 2 / 3) && qpRange6(o_9) ==> PostHeap[invRecv6(o_9), g] == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (issue_0149.vpr@23.12--23.65) [170673]"}
      (forall x_3: Ref ::
      { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
      Set#UnionOne(Set#Singleton(x2), x1)[x_3] ==> 2 / 3 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_3] && 2 / 3 > NoPerm ==> PostHeap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Set#UnionOne(Set#Singleton(x2), x1)[invRecv6(o_9)] && NoPerm < 2 / 3) && qpRange6(o_9) ==> (NoPerm < 2 / 3 ==> PostHeap[invRecv6(o_9), g] == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + 2 / 3) && (!((Set#UnionOne(Set#Singleton(x2), x1)[invRecv6(o_9)] && NoPerm < 2 / 3) && qpRange6(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
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
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test02 might not hold. Fraction 2 / 3 might be negative. (issue_0149.vpr@21.12--21.63) [170674]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] && dummyFunction(Heap[x_4_2, g]) ==> 2 / 3 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (issue_0149.vpr@21.12--21.63) [170675]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered7(x_4_2), neverTriggered7(x_4_3) }
        (((x_4_2 != x_4_3 && Set#UnionOne(Set#Singleton(x2), x1)[x_4_2]) && Set#UnionOne(Set#Singleton(x2), x1)[x_4_3]) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> x_4_2 != x_4_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access x.g (issue_0149.vpr@21.12--21.63) [170676]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] ==> Mask[x_4_2, g] >= 2 / 3
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] && NoPerm < 2 / 3 ==> qpRange7(x_4_2) && invRecv7(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv7(o_9)] && (NoPerm < 2 / 3 && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
      );
    
    // -- assume permission updates for field g
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv7(o_9)] && (NoPerm < 2 / 3 && qpRange7(o_9)) ==> invRecv7(o_9) == o_9 && QPMask[o_9, g] == Mask[o_9, g] - 2 / 3) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv7(o_9)] && (NoPerm < 2 / 3 && qpRange7(o_9))) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test02 might not hold. Assertion x1.g != x2.g might not hold. (issue_0149.vpr@22.12--22.24) [170677]"}
      Heap[x1, g] != Heap[x2, g];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test02 might not hold. Fraction 2 / 3 might be negative. (issue_0149.vpr@23.12--23.65) [170678]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] && dummyFunction(Heap[Heap[x_5, g], f_7]) ==> 2 / 3 >= NoPerm
      );
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (issue_0149.vpr@23.12--23.65) [170679]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered8(x_5), neverTriggered8(x_5_1) }
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_5]) && Set#UnionOne(Set#Singleton(x2), x1)[x_5_1]) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access x.g.f (issue_0149.vpr@23.12--23.65) [170680]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] ==> Mask[Heap[x_5, g], f_7] >= 2 / 3
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] && NoPerm < 2 / 3 ==> qpRange8(Heap[x_5, g]) && invRecv8(Heap[x_5, g]) == x_5
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv8(o_9)] && (NoPerm < 2 / 3 && qpRange8(o_9)) ==> Heap[invRecv8(o_9), g] == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv8(o_9)] && (NoPerm < 2 / 3 && qpRange8(o_9)) ==> Heap[invRecv8(o_9), g] == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - 2 / 3) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv8(o_9)] && (NoPerm < 2 / 3 && qpRange8(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i1_11: int;
  var i2_11: int;
  var i_15: int;
  var QPMask: MaskType;
  var i1_22: int;
  var i2_13: int;
  var i_21: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Seq#Length(xs) > 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|xs|)), (i2 in [0..|xs|)) } { (i1 in [0..|xs|)), xs[i2] } { (i2 in [0..|xs|)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..|xs|)) && ((i2 in [0..|xs|)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_11) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_11) && i1_11 != i2_11)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0149.vpr@32.12--32.106) [170681]"}
            i1_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0149.vpr@32.12--32.106) [170682]"}
            i1_11 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0149.vpr@32.12--32.106) [170683]"}
            i2_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0149.vpr@32.12--32.106) [170684]"}
            i2_11 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Index(xs, i1_1), Seq#Index(xs, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) && i1_1 != i2_1) ==> Seq#Index(xs, i1_1) != Seq#Index(xs, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].g, 2 / 3))
      if (*) {
        if (0 <= i_15 && i_15 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0149.vpr@33.12--33.69) [170685]"}
            i_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0149.vpr@33.12--33.69) [170686]"}
            i_15 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].g might not be injective. (issue_0149.vpr@33.12--33.69) [170687]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < Seq#Length(xs))) && (0 <= i_1_1 && i_1_1 < Seq#Length(xs))) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
        (0 <= i_1 && i_1 < Seq#Length(xs)) && NoPerm < 2 / 3 ==> qpRange9(Seq#Index(xs, i_1)) && invRecv9(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(xs)) && NoPerm < 2 / 3) && qpRange9(o_9) ==> Seq#Index(xs, invRecv9(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (issue_0149.vpr@33.12--33.69) [170688]"}
      (forall i_1: int ::
      { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
      0 <= i_1 && i_1 < Seq#Length(xs) ==> 2 / 3 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
        (0 <= i_1 && i_1 < Seq#Length(xs)) && 2 / 3 > NoPerm ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(xs)) && NoPerm < 2 / 3) && qpRange9(o_9) ==> (NoPerm < 2 / 3 ==> Seq#Index(xs, invRecv9(o_9)) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + 2 / 3) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(xs)) && NoPerm < 2 / 3) && qpRange9(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|xs|)), (i2 in [0..|xs|)) } { (i1 in [0..|xs|)), xs[i2] } { (i2 in [0..|xs|)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..|xs|)) && ((i2 in [0..|xs|)) && i1 != i2) ==> xs[i1].g != xs[i2].g)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_22) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_13) && i1_22 != i2_13)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0149.vpr@34.12--34.110) [170689]"}
            i1_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0149.vpr@34.12--34.110) [170690]"}
            i1_22 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[i1].g (issue_0149.vpr@34.12--34.110) [170691]"}
            HasDirectPerm(Mask, Seq#Index(xs, i1_22), g);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0149.vpr@34.12--34.110) [170692]"}
            i2_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0149.vpr@34.12--34.110) [170693]"}
            i2_13 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[i2].g (issue_0149.vpr@34.12--34.110) [170694]"}
            HasDirectPerm(Mask, Seq#Index(xs, i2_13), g);
        }
        assume false;
      }
    assume (forall i1_3_1: int, i2_3_2: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#Index(xs, i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1), Seq#Index(xs, i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_3_2), Seq#Index(xs, i1_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_2), Seq#Index(xs, i1_3_1) } { Seq#Index(xs, i1_3_1), Seq#Index(xs, i2_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_3_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_3_2) && i1_3_1 != i2_3_2) ==> Heap[Seq#Index(xs, i1_3_1), g] != Heap[Seq#Index(xs, i2_3_2), g]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].g.f, write))
      if (*) {
        if (0 <= i_21 && i_21 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0149.vpr@35.12--35.66) [170695]"}
            i_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0149.vpr@35.12--35.66) [170696]"}
            i_21 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[i].g (issue_0149.vpr@35.12--35.66) [170697]"}
            HasDirectPerm(Mask, Seq#Index(xs, i_21), g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].g.f might not be injective. (issue_0149.vpr@35.12--35.66) [170698]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < Seq#Length(xs))) && (0 <= i_3_3 && i_3_3 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[Seq#Index(xs, i_3_2), g] != Heap[Seq#Index(xs, i_3_3), g]
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Heap[Seq#Index(xs, i_3_2), g] } { Seq#Index(xs, i_3_2) }
        (0 <= i_3_2 && i_3_2 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange10(Heap[Seq#Index(xs, i_3_2), g]) && invRecv10(Heap[Seq#Index(xs, i_3_2), g]) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange10(o_9) ==> Heap[Seq#Index(xs, invRecv10(o_9)), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Heap[Seq#Index(xs, i_3_2), g] } { Seq#Index(xs, i_3_2) }
        0 <= i_3_2 && i_3_2 < Seq#Length(xs) ==> Heap[Seq#Index(xs, i_3_2), g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> Heap[Seq#Index(xs, invRecv10(o_9)), g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
    
    // -- Check definedness of xs[0] != xs[1]
      assert {:msg "  Contract might not be well-formed. Index xs[0] into xs might exceed sequence length. (issue_0149.vpr@36.11--36.25) [170699]"}
        0 < Seq#Length(xs);
      assert {:msg "  Contract might not be well-formed. Index xs[1] into xs might exceed sequence length. (issue_0149.vpr@36.11--36.25) [170700]"}
        1 < Seq#Length(xs);
    assume Seq#Index(xs, 0) != Seq#Index(xs, 1);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert xs[0] != xs[1] -- issue_0149.vpr@38.3--38.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of xs[0] != xs[1]
      assert {:msg "  Assert might fail. Index xs[0] into xs might exceed sequence length. (issue_0149.vpr@38.10--38.24) [170701]"}
        0 < Seq#Length(xs);
      assert {:msg "  Assert might fail. Index xs[1] into xs might exceed sequence length. (issue_0149.vpr@38.10--38.24) [170702]"}
        1 < Seq#Length(xs);
    assert {:msg "  Assert might fail. Assertion xs[0] != xs[1] might not hold. (issue_0149.vpr@38.10--38.24) [170703]"}
      Seq#Index(xs, 0) != Seq#Index(xs, 1);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of test03 might not hold. Assertion xs[0] != xs[1] might not hold. (issue_0149.vpr@36.11--36.25) [170704]"}
      Seq#Index(xs, 0) != Seq#Index(xs, 1);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(xs: (Seq Ref), ys: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i1_23: int;
  var i2_14: int;
  var i_19: int;
  var QPMask: MaskType;
  var i1_24: int;
  var i2_15: int;
  var i_10: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Seq#Length(xs) > 0;
    assume state(Heap, Mask);
    assume Seq#Length(ys) > 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|xs|)), (i2 in [0..|xs|)) } { (i1 in [0..|xs|)), xs[i2] } { (i2 in [0..|xs|)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..|xs|)) && ((i2 in [0..|xs|)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_23) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_14) && i1_23 != i2_14)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0149.vpr@44.12--44.106) [170705]"}
            i1_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0149.vpr@44.12--44.106) [170706]"}
            i1_23 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0149.vpr@44.12--44.106) [170707]"}
            i2_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0149.vpr@44.12--44.106) [170708]"}
            i2_14 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1: int, i2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1), Seq#Index(xs, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1), Seq#Index(xs, i1_1) } { Seq#Index(xs, i1_1), Seq#Index(xs, i2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i2_1) && i1_1 != i2_1) ==> Seq#Index(xs, i1_1) != Seq#Index(xs, i2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, 2 / 3))
      if (*) {
        if (0 <= i_19 && i_19 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (issue_0149.vpr@45.12--45.69) [170709]"}
            i_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (issue_0149.vpr@45.12--45.69) [170710]"}
            i_19 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (issue_0149.vpr@45.12--45.69) [170711]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < Seq#Length(xs))) && (0 <= i_1_1 && i_1_1 < Seq#Length(xs))) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
        (0 <= i_1 && i_1 < Seq#Length(xs)) && NoPerm < 2 / 3 ==> qpRange11(Seq#Index(xs, i_1)) && invRecv11(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(xs)) && NoPerm < 2 / 3) && qpRange11(o_9) ==> Seq#Index(xs, invRecv11(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (issue_0149.vpr@45.12--45.69) [170712]"}
      (forall i_1: int ::
      { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
      0 <= i_1 && i_1 < Seq#Length(xs) ==> 2 / 3 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
        (0 <= i_1 && i_1 < Seq#Length(xs)) && 2 / 3 > NoPerm ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(xs)) && NoPerm < 2 / 3) && qpRange11(o_9) ==> (NoPerm < 2 / 3 ==> Seq#Index(xs, invRecv11(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + 2 / 3) && (!(((0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(xs)) && NoPerm < 2 / 3) && qpRange11(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..|ys|)), (i2 in [0..|ys|)) } { (i1 in [0..|ys|)), ys[i2] } { (i2 in [0..|ys|)), ys[i1] } { ys[i1], ys[i2] } (i1 in [0..|ys|)) && ((i2 in [0..|ys|)) && i1 != i2) ==> ys[i1] != ys[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(ys)), i1_24) && (Seq#Contains(Seq#Range(0, Seq#Length(ys)), i2_15) && i1_24 != i2_15)) {
          assert {:msg "  Contract might not be well-formed. Index ys[i1] into ys might be negative. (issue_0149.vpr@46.12--46.106) [170713]"}
            i1_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ys[i1] into ys might exceed sequence length. (issue_0149.vpr@46.12--46.106) [170714]"}
            i1_24 < Seq#Length(ys);
          assert {:msg "  Contract might not be well-formed. Index ys[i2] into ys might be negative. (issue_0149.vpr@46.12--46.106) [170715]"}
            i2_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ys[i2] into ys might exceed sequence length. (issue_0149.vpr@46.12--46.106) [170716]"}
            i2_15 < Seq#Length(ys);
        }
        assume false;
      }
    assume (forall i1_3_1: int, i2_3_2: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ys)), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ys)), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ys)), i1_3_1), Seq#Contains(Seq#Range(0, Seq#Length(ys)), i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(ys)), i1_3_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ys)), i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(ys)), i1_3_1), Seq#Contains(Seq#Range(0, Seq#Length(ys)), i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ys)), i1_3_1), Seq#Index(ys, i2_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(ys)), i1_3_1), Seq#Index(ys, i2_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ys)), i2_3_2), Seq#Index(ys, i1_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ys)), i2_3_2), Seq#Index(ys, i1_3_1) } { Seq#Index(ys, i1_3_1), Seq#Index(ys, i2_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(ys)), i1_3_1) && (Seq#Contains(Seq#Range(0, Seq#Length(ys)), i2_3_2) && i1_3_1 != i2_3_2) ==> Seq#Index(ys, i1_3_1) != Seq#Index(ys, i2_3_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ys[i] } 0 <= i && i < |ys| ==> acc(ys[i].f, 2 / 3))
      if (*) {
        if (0 <= i_10 && i_10 < Seq#Length(ys)) {
          assert {:msg "  Contract might not be well-formed. Index ys[i] into ys might be negative. (issue_0149.vpr@47.12--47.69) [170717]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ys[i] into ys might exceed sequence length. (issue_0149.vpr@47.12--47.69) [170718]"}
            i_10 < Seq#Length(ys);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ys[i].f might not be injective. (issue_0149.vpr@47.12--47.69) [170719]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < Seq#Length(ys))) && (0 <= i_3_3 && i_3_3 < Seq#Length(ys))) && NoPerm < 2 / 3) && NoPerm < 2 / 3 ==> Seq#Index(ys, i_3_2) != Seq#Index(ys, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(ys, i_3_2) } { Seq#Index(ys, i_3_2) }
        (0 <= i_3_2 && i_3_2 < Seq#Length(ys)) && NoPerm < 2 / 3 ==> qpRange12(Seq#Index(ys, i_3_2)) && invRecv12(Seq#Index(ys, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(ys)) && NoPerm < 2 / 3) && qpRange12(o_9) ==> Seq#Index(ys, invRecv12(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (issue_0149.vpr@47.12--47.69) [170720]"}
      (forall i_3_2: int ::
      { Seq#Index(ys, i_3_2) } { Seq#Index(ys, i_3_2) }
      0 <= i_3_2 && i_3_2 < Seq#Length(ys) ==> 2 / 3 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(ys, i_3_2) } { Seq#Index(ys, i_3_2) }
        (0 <= i_3_2 && i_3_2 < Seq#Length(ys)) && 2 / 3 > NoPerm ==> Seq#Index(ys, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(ys)) && NoPerm < 2 / 3) && qpRange12(o_9) ==> (NoPerm < 2 / 3 ==> Seq#Index(ys, invRecv12(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + 2 / 3) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(ys)) && NoPerm < 2 / 3) && qpRange12(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert xs[0] != ys[0] -- issue_0149.vpr@50.3--50.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of xs[0] != ys[0]
      assert {:msg "  Assert might fail. Index xs[0] into xs might exceed sequence length. (issue_0149.vpr@50.10--50.24) [170721]"}
        0 < Seq#Length(xs);
      assert {:msg "  Assert might fail. Index ys[0] into ys might exceed sequence length. (issue_0149.vpr@50.10--50.24) [170722]"}
        0 < Seq#Length(ys);
    assert {:msg "  Assert might fail. Assertion xs[0] != ys[0] might not hold. (issue_0149.vpr@50.10--50.24) [170723]"}
      Seq#Index(xs, 0) != Seq#Index(ys, 0);
    assume state(Heap, Mask);
}