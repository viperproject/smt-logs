// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:24:48
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0207.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0207-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_15: Ref, f_23: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_15, f_23] }
  Heap[o_15, $allocated] ==> Heap[Heap[o_15, f_23], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_53: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_53] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_53) ==> Heap[o_41, f_53] == ExhaleHeap[o_41, f_53]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20), ExhaleHeap[null, PredicateMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> Heap[null, PredicateMaskField(pm_f_20)] == ExhaleHeap[null, PredicateMaskField(pm_f_20)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_20, f_53] }
    Heap[null, PredicateMaskField(pm_f_20)][o2_20, f_53] ==> Heap[o2_20, f_53] == ExhaleHeap[o2_20, f_53]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20), ExhaleHeap[null, WandMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> Heap[null, WandMaskField(pm_f_20)] == ExhaleHeap[null, WandMaskField(pm_f_20)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_20, f_53] }
    Heap[null, WandMaskField(pm_f_20)][o2_20, f_53] ==> Heap[o2_20, f_53] == ExhaleHeap[o2_20, f_53]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_15: Ref, f_54: (Field A B), v: B ::
  { Heap[o_15, f_54:=v] }
  succHeap(Heap, Heap[o_15, f_54:=v])
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

function  neverTriggered1(i_4_1: int): bool;
function  neverTriggered2(i_1: int): bool;
function  neverTriggered3(i_2: int): bool;
function  neverTriggered4(i_3_2: int): bool;
function  neverTriggered5(i_4_1: int): bool;
function  neverTriggered6(i_5_1: int): bool;
function  neverTriggered7(i_6_2: int): bool;
function  neverTriggered8(i_1: int): bool;
function  neverTriggered9(i_2: int): bool;
function  neverTriggered10(i_3_2: int): bool;
function  neverTriggered11(i_4_1: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: elements
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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_6: int): Ref;

// Translation of domain function length
function  length_2(a_3: ArrayDomainType): int;

// Translation of domain function first
function  first_1(r_4: Ref): ArrayDomainType;

// Translation of domain function second
function  second_1(r_4: Ref): int;

// Translation of domain axiom injectivity
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first_1((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (second_1((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom lengthNonNegative
axiom (forall a_2: ArrayDomainType ::
  { (length_2(a_2): int) }
  (length_2(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function elements
// ==================================================

// Uninterpreted function definitions
function  elements_1(Heap: HeapType, this: ArrayDomainType): Set int;
function  elements'(Heap: HeapType, this: ArrayDomainType): Set int;
axiom (forall Heap: HeapType, this: ArrayDomainType ::
  { elements_1(Heap, this) }
  elements_1(Heap, this) == elements'(Heap, this) && dummyFunction(elements#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: ArrayDomainType ::
  { elements'(Heap, this) }
  dummyFunction(elements#triggerStateless(this))
);

// Framing axioms
function  elements#frame(frame: FrameType, this: ArrayDomainType): Set int;
axiom (forall Heap: HeapType, Mask: MaskType, this: ArrayDomainType ::
  { state(Heap, Mask), elements'(Heap, this) }
  state(Heap, Mask) ==> elements'(Heap, this) == elements#frame(FrameFragment(elements#condqp1(Heap, this)), this)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { loc(this, i).val } { (i in [0..length(this))) } (i in [0..length(this))) ==> acc(loc(this, i).val, write)) in function elements
// ==================================================

function  elements#condqp1(Heap: HeapType, this_1_1: ArrayDomainType): int;
function  sk_elements#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: ArrayDomainType ::
  { elements#condqp1(Heap2Heap, this), elements#condqp1(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Seq#Contains(Seq#Range(0, (length_2(this): int)), sk_elements#condqp1(elements#condqp1(Heap2Heap, this), elements#condqp1(Heap1Heap, this))) && NoPerm < FullPerm <==> Seq#Contains(Seq#Range(0, (length_2(this): int)), sk_elements#condqp1(elements#condqp1(Heap2Heap, this), elements#condqp1(Heap1Heap, this))) && NoPerm < FullPerm) && (Seq#Contains(Seq#Range(0, (length_2(this): int)), sk_elements#condqp1(elements#condqp1(Heap2Heap, this), elements#condqp1(Heap1Heap, this))) && NoPerm < FullPerm ==> Heap2Heap[(loc(this, sk_elements#condqp1(elements#condqp1(Heap2Heap, this), elements#condqp1(Heap1Heap, this))): Ref), val] == Heap1Heap[(loc(this, sk_elements#condqp1(elements#condqp1(Heap2Heap, this), elements#condqp1(Heap1Heap, this))): Ref), val]) ==> elements#condqp1(Heap2Heap, this) == elements#condqp1(Heap1Heap, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: ArrayDomainType ::
  { state(Heap, Mask), elements'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || elements#trigger(FrameFragment(elements#condqp1(Heap, this)), this)) ==> (forall i_2: int ::
    { Heap[(loc(this, i_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(this): int)), i_2) } { Seq#Contains(Seq#Range(0, (length_2(this): int)), i_2) }
    Seq#Contains(Seq#Range(0, (length_2(this): int)), i_2) ==> elements'(Heap, this)[Heap[(loc(this, i_2): Ref), val]]
  )
);

// Trigger function (controlling recursive postconditions)
function  elements#trigger(frame: FrameType, this: ArrayDomainType): bool;

// State-independent trigger function
function  elements#triggerStateless(this: ArrayDomainType): Set int;

// Check contract well-formedness and postcondition
procedure elements#definedness(this: ArrayDomainType) returns (Result: (Set int))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var i_3: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int :: { loc(this, i).val } { (i in [0..length(this))) } (i in [0..length(this))) ==> acc(loc(this, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(this, i).val might not be injective. (0207.vpr@6.5--7.55) [85766]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, (length_2(this): int)), i_4_1)) && Seq#Contains(Seq#Range(0, (length_2(this): int)), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(this, i_4_1): Ref) != (loc(this, i_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { (loc(this, i_4_1): Ref) } { Heap[(loc(this, i_4_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(this): int)), i_4_1) } { Seq#Contains(Seq#Range(0, (length_2(this): int)), i_4_1) }
        Seq#Contains(Seq#Range(0, (length_2(this): int)), i_4_1) && NoPerm < FullPerm ==> qpRange1((loc(this, i_4_1): Ref)) && invRecv1((loc(this, i_4_1): Ref)) == i_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Seq#Contains(Seq#Range(0, (length_2(this): int)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (loc(this, invRecv1(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { (loc(this, i_4_1): Ref) } { Heap[(loc(this, i_4_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(this): int)), i_4_1) } { Seq#Contains(Seq#Range(0, (length_2(this): int)), i_4_1) }
        Seq#Contains(Seq#Range(0, (length_2(this): int)), i_4_1) ==> (loc(this, i_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((Seq#Contains(Seq#Range(0, (length_2(this): int)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> (loc(this, invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Seq#Contains(Seq#Range(0, (length_2(this): int)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall i: Int :: { loc(this, i).val } { (i in [0..length(this))) } (i in [0..length(this))) ==> (loc(this, i).val in result))
      if (*) {
        if (Seq#Contains(Seq#Range(0, (length_2(this): int)), i_3)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(this, i).val (0207.vpr@9.5--10.59) [85767]"}
            HasDirectPerm(Mask, (loc(this, i_3): Ref), val);
        }
        assume false;
      }
    assume (forall i_6_2: int ::
      { Heap[(loc(this, i_6_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(this): int)), i_6_2) } { Seq#Contains(Seq#Range(0, (length_2(this): int)), i_6_2) }
      Seq#Contains(Seq#Range(0, (length_2(this): int)), i_6_2) ==> Result[Heap[(loc(this, i_6_2): Ref), val]]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method swap01
// ==================================================

procedure swap01(a_2: ArrayDomainType, x: int, y: int) returns ()
  modifies Heap, Mask;
{
  var pre_lblGuard: bool;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var LabelpreHeap: HeapType;
  var LabelpreMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var e_5: int;
  var tmp: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    pre_lblGuard := false;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { loc(a, i).val } 0 <= i && i < length(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (0207.vpr@13.13--13.94) [85768]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (length_2(a_2): int))) && (0 <= i_1_1 && i_1_1 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { Heap[(loc(a_2, i_1): Ref), val] }
        (0 <= i_1 && i_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, i_1): Ref)) && invRecv2((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { Heap[(loc(a_2, i_1): Ref), val] }
        0 <= i_1 && i_1 < (length_2(a_2): int) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv2(o_9) && invRecv2(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= x;
    assume x < (length_2(a_2): int);
    assume state(Heap, Mask);
    assume 0 <= y;
    assume y < (length_2(a_2): int);
    assume state(Heap, Mask);
    assume x < y;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: label pre -- 0207.vpr@18.3--18.12
    pre_1:
    LabelpreHeap := Heap;
    LabelpreMask := Mask;
    pre_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall e: Int ::
  //     { (e in elements(a)) }
  //     (e in elements(a)) ==>
  //     (exists j: Int :: { (j in [0..length(a))) } (j in [0..length(a))))) -- 0207.vpr@20.11--20.83
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall e: Int :: { (e in elements(a)) } (e in elements(a)) ==> (exists j: Int :: { (j in [0..length(a))) } (j in [0..length(a)))))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, i) is injective
            assert {:msg "  Precondition of function elements might not hold. Quantified resource loc(a, i).val might not be injective. (0207.vpr@20.32--20.43) [85769]"}
              (forall i_2: int, i_2_2: int ::
              { neverTriggered3(i_2), neverTriggered3(i_2_2) }
              (((i_2 != i_2_2 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_2): Ref) != (loc(a_2, i_2_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function elements might not hold. There might be insufficient permission to access loc(a, i).val (0207.vpr@20.32--20.43) [85770]"}
              (forall i_2: int ::
              { (loc(a_2, i_2): Ref) } { Heap[(loc(a_2, i_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2) }
              Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2) ==> FullPerm > NoPerm ==> Mask[(loc(a_2, i_2): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, i)
            assume (forall i_2: int ::
              { (loc(a_2, i_2): Ref) } { Heap[(loc(a_2, i_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2) }
              Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2) && NoPerm < FullPerm ==> qpRange3((loc(a_2, i_2): Ref)) && invRecv3((loc(a_2, i_2): Ref)) == i_2
            );
            assume (forall o_9: Ref ::
              { invRecv3(o_9) }
              Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv3(o_9)) && (NoPerm < FullPerm && qpRange3(o_9)) ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (elements_1(Heap, a_2)[e_5]) {
          if (*) {
            assume false;
          }
        }
        assume false;
      }
    assume (forall e_1_1: int ::
      { elements#frame(FrameFragment(elements#condqp1(Heap, a_2)), a_2)[e_1_1] }
      elements_1(Heap, a_2)[e_1_1] ==> (exists j_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), j_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), j_1) }
        Seq#Contains(Seq#Range(0, (length_2(a_2): int)), j_1)
      )
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := loc(a, x).val -- 0207.vpr@22.4--22.32
    
    // -- Check definedness of loc(a, x).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, x).val (0207.vpr@22.4--22.32) [85771]"}
        HasDirectPerm(Mask, (loc(a_2, x): Ref), val);
    tmp := Heap[(loc(a_2, x): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, x).val := loc(a, y).val -- 0207.vpr@23.4--23.32
    
    // -- Check definedness of loc(a, y).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, y).val (0207.vpr@23.4--23.32) [85772]"}
        HasDirectPerm(Mask, (loc(a_2, y): Ref), val);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, x).val (0207.vpr@23.4--23.32) [85773]"}
      FullPerm == Mask[(loc(a_2, x): Ref), val];
    Heap := Heap[(loc(a_2, x): Ref), val:=Heap[(loc(a_2, y): Ref), val]];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, y).val := tmp -- 0207.vpr@24.4--24.23
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, y).val (0207.vpr@24.4--24.23) [85774]"}
      FullPerm == Mask[(loc(a_2, y): Ref), val];
    Heap := Heap[(loc(a_2, y): Ref), val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert elements(a) == old(elements(a)) -- 0207.vpr@27.4--27.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of elements(a) == old(elements(a))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Precondition of function elements might not hold. Quantified resource loc(a, i).val might not be injective. (0207.vpr@27.11--27.22) [85775]"}
            (forall i_3_2: int, i_3_3: int ::
            { neverTriggered4(i_3_2), neverTriggered4(i_3_3) }
            (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3_2): Ref) != (loc(a_2, i_3_3): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function elements might not hold. There might be insufficient permission to access loc(a, i).val (0207.vpr@27.11--27.22) [85776]"}
            (forall i_3_2: int ::
            { (loc(a_2, i_3_2): Ref) } { ExhaleWellDef0Heap[(loc(a_2, i_3_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_3_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, i_3_2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_3_2: int ::
            { (loc(a_2, i_3_2): Ref) } { ExhaleWellDef0Heap[(loc(a_2, i_3_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_3_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i_3_2): Ref)) && invRecv4((loc(a_2, i_3_2): Ref)) == i_3_2
          );
          assume (forall o_9: Ref ::
            { invRecv4(o_9) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv4(o_9)) && (NoPerm < FullPerm && qpRange4(o_9)) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Precondition of function elements might not hold. Quantified resource loc(a, i).val might not be injective. (0207.vpr@27.30--27.41) [85777]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered5(i_4_1), neverTriggered5(i_4_2) }
            (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_4_1): Ref) != (loc(a_2, i_4_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function elements might not hold. There might be insufficient permission to access loc(a, i).val (0207.vpr@27.30--27.41) [85778]"}
            (forall i_4_1: int ::
            { (loc(a_2, i_4_1): Ref) } { oldHeap[(loc(a_2, i_4_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_4_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1) ==> FullPerm > NoPerm ==> oldMask[(loc(a_2, i_4_1): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_4_1: int ::
            { (loc(a_2, i_4_1): Ref) } { oldHeap[(loc(a_2, i_4_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_4_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1) && NoPerm < FullPerm ==> qpRange5((loc(a_2, i_4_1): Ref)) && invRecv5((loc(a_2, i_4_1): Ref)) == i_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv5(o_9) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv5(o_9)) && (NoPerm < FullPerm && qpRange5(o_9)) ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9
          );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion elements(a) == old(elements(a)) might not hold. (0207.vpr@27.11--27.42) [85779]"}
      Set#Equal(elements_1(Heap, a_2), elements_1(oldHeap, a_2));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert elements(a) == old[pre](elements(a)) -- 0207.vpr@28.4--28.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of elements(a) == old[pre](elements(a))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Precondition of function elements might not hold. Quantified resource loc(a, i).val might not be injective. (0207.vpr@28.11--28.22) [85780]"}
            (forall i_5_1: int, i_5_2: int ::
            { neverTriggered6(i_5_1), neverTriggered6(i_5_2) }
            (((i_5_1 != i_5_2 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_5_1)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_5_1): Ref) != (loc(a_2, i_5_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function elements might not hold. There might be insufficient permission to access loc(a, i).val (0207.vpr@28.11--28.22) [85781]"}
            (forall i_5_1: int ::
            { (loc(a_2, i_5_1): Ref) } { ExhaleWellDef0Heap[(loc(a_2, i_5_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_5_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_5_1) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_5_1) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, i_5_1): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_5_1: int ::
            { (loc(a_2, i_5_1): Ref) } { ExhaleWellDef0Heap[(loc(a_2, i_5_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_5_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_5_1) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_5_1) && NoPerm < FullPerm ==> qpRange6((loc(a_2, i_5_1): Ref)) && invRecv6((loc(a_2, i_5_1): Ref)) == i_5_1
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv6(o_9)) && (NoPerm < FullPerm && qpRange6(o_9)) ==> (loc(a_2, invRecv6(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. Did not reach labelled state pre required to evaluate old[pre](elements(a)). (0207.vpr@28.11--28.47) [85782]"}
        pre_lblGuard;
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := LabelpreHeap;
        ExhaleWellDef1Mask := LabelpreMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Precondition of function elements might not hold. Quantified resource loc(a, i).val might not be injective. (0207.vpr@28.35--28.46) [85783]"}
            (forall i_6_2: int, i_6_3: int ::
            { neverTriggered7(i_6_2), neverTriggered7(i_6_3) }
            (((i_6_2 != i_6_3 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_6_2)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_6_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_6_2): Ref) != (loc(a_2, i_6_3): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function elements might not hold. There might be insufficient permission to access loc(a, i).val (0207.vpr@28.35--28.46) [85784]"}
            (forall i_6_2: int ::
            { (loc(a_2, i_6_2): Ref) } { LabelpreHeap[(loc(a_2, i_6_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_6_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_6_2) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_6_2) ==> FullPerm > NoPerm ==> LabelpreMask[(loc(a_2, i_6_2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_6_2: int ::
            { (loc(a_2, i_6_2): Ref) } { LabelpreHeap[(loc(a_2, i_6_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_6_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_6_2) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_6_2) && NoPerm < FullPerm ==> qpRange7((loc(a_2, i_6_2): Ref)) && invRecv7((loc(a_2, i_6_2): Ref)) == i_6_2
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv7(o_9)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(LabelpreHeap, ExhaleHeap, LabelpreMask);
        LabelpreHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion elements(a) == old[pre](elements(a)) might not hold. (0207.vpr@28.11--28.47) [85785]"}
      Set#Equal(elements_1(Heap, a_2), elements_1(LabelpreHeap, a_2));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method swap02
// ==================================================

procedure swap02(a_2: ArrayDomainType, x: int, y: int) returns ()
  modifies Heap, Mask;
{
  var pre_lblGuard: bool;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var LabelpreHeap: HeapType;
  var LabelpreMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var e_6: int;
  var tmp: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    pre_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { loc(a, i).val }
  //     { (i in [0..length(a))) }
  //     (i in [0..length(a))) ==> acc(loc(a, i).val, write)) -- 0207.vpr@33.3--35.49
    
    // -- Check definedness of (forall i: Int :: { loc(a, i).val } { (i in [0..length(a))) } (i in [0..length(a))) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource loc(a, i).val might not be injective. (0207.vpr@34.5--35.49) [85786]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_1)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { Heap[(loc(a_2, i_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_1) }
        Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_1) && NoPerm < FullPerm ==> qpRange8((loc(a_2, i_1): Ref)) && invRecv8((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { Heap[(loc(a_2, i_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_1) }
        Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_1) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= x && x < length(a) -- 0207.vpr@37.3--37.33
    assume 0 <= x;
    assume x < (length_2(a_2): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= y && y < length(a) -- 0207.vpr@38.3--38.33
    assume 0 <= y;
    assume y < (length_2(a_2): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x < y -- 0207.vpr@39.3--39.15
    assume x < y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label pre -- 0207.vpr@41.3--41.12
    pre_1:
    LabelpreHeap := Heap;
    LabelpreMask := Mask;
    pre_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall e: Int ::
  //     { (e in elements(a)) }
  //     (e in elements(a)) ==>
  //     (exists j: Int :: { (j in [0..length(a))) } (j in [0..length(a))))) -- 0207.vpr@43.10--43.82
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall e: Int :: { (e in elements(a)) } (e in elements(a)) ==> (exists j: Int :: { (j in [0..length(a))) } (j in [0..length(a)))))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, i) is injective
            assert {:msg "  Precondition of function elements might not hold. Quantified resource loc(a, i).val might not be injective. (0207.vpr@43.31--43.42) [85787]"}
              (forall i_2: int, i_2_2: int ::
              { neverTriggered9(i_2), neverTriggered9(i_2_2) }
              (((i_2 != i_2_2 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_2): Ref) != (loc(a_2, i_2_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function elements might not hold. There might be insufficient permission to access loc(a, i).val (0207.vpr@43.31--43.42) [85788]"}
              (forall i_2: int ::
              { (loc(a_2, i_2): Ref) } { Heap[(loc(a_2, i_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2) }
              Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2) ==> FullPerm > NoPerm ==> Mask[(loc(a_2, i_2): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, i)
            assume (forall i_2: int ::
              { (loc(a_2, i_2): Ref) } { Heap[(loc(a_2, i_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2) }
              Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_2) && NoPerm < FullPerm ==> qpRange9((loc(a_2, i_2): Ref)) && invRecv9((loc(a_2, i_2): Ref)) == i_2
            );
            assume (forall o_9: Ref ::
              { invRecv9(o_9) }
              Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv9(o_9)) && (NoPerm < FullPerm && qpRange9(o_9)) ==> (loc(a_2, invRecv9(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (elements_1(Heap, a_2)[e_6]) {
          if (*) {
            assume false;
          }
        }
        assume false;
      }
    assume (forall e_1_1: int ::
      { elements#frame(FrameFragment(elements#condqp1(Heap, a_2)), a_2)[e_1_1] }
      elements_1(Heap, a_2)[e_1_1] ==> (exists j_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), j_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), j_1) }
        Seq#Contains(Seq#Range(0, (length_2(a_2): int)), j_1)
      )
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := loc(a, x).val -- 0207.vpr@45.3--45.31
    
    // -- Check definedness of loc(a, x).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, x).val (0207.vpr@45.3--45.31) [85789]"}
        HasDirectPerm(Mask, (loc(a_2, x): Ref), val);
    tmp := Heap[(loc(a_2, x): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, x).val := loc(a, y).val -- 0207.vpr@46.3--46.31
    
    // -- Check definedness of loc(a, y).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, y).val (0207.vpr@46.3--46.31) [85790]"}
        HasDirectPerm(Mask, (loc(a_2, y): Ref), val);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, x).val (0207.vpr@46.3--46.31) [85791]"}
      FullPerm == Mask[(loc(a_2, x): Ref), val];
    Heap := Heap[(loc(a_2, x): Ref), val:=Heap[(loc(a_2, y): Ref), val]];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, y).val := tmp -- 0207.vpr@47.3--47.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, y).val (0207.vpr@47.3--47.22) [85792]"}
      FullPerm == Mask[(loc(a_2, y): Ref), val];
    Heap := Heap[(loc(a_2, y): Ref), val:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert elements(a) == old[pre](elements(a)) -- 0207.vpr@50.3--50.46
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of elements(a) == old[pre](elements(a))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Precondition of function elements might not hold. Quantified resource loc(a, i).val might not be injective. (0207.vpr@50.10--50.21) [85793]"}
            (forall i_3_2: int, i_3_3: int ::
            { neverTriggered10(i_3_2), neverTriggered10(i_3_3) }
            (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3_2): Ref) != (loc(a_2, i_3_3): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function elements might not hold. There might be insufficient permission to access loc(a, i).val (0207.vpr@50.10--50.21) [85794]"}
            (forall i_3_2: int ::
            { (loc(a_2, i_3_2): Ref) } { ExhaleWellDef0Heap[(loc(a_2, i_3_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_3_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, i_3_2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_3_2: int ::
            { (loc(a_2, i_3_2): Ref) } { ExhaleWellDef0Heap[(loc(a_2, i_3_2): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_3_2) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_3_2) && NoPerm < FullPerm ==> qpRange10((loc(a_2, i_3_2): Ref)) && invRecv10((loc(a_2, i_3_2): Ref)) == i_3_2
          );
          assume (forall o_9: Ref ::
            { invRecv10(o_9) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv10(o_9)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> (loc(a_2, invRecv10(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. Did not reach labelled state pre required to evaluate old[pre](elements(a)). (0207.vpr@50.10--50.46) [85795]"}
        pre_lblGuard;
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := LabelpreHeap;
        ExhaleWellDef1Mask := LabelpreMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Precondition of function elements might not hold. Quantified resource loc(a, i).val might not be injective. (0207.vpr@50.34--50.45) [85796]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered11(i_4_1), neverTriggered11(i_4_2) }
            (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1)) && Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_4_1): Ref) != (loc(a_2, i_4_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function elements might not hold. There might be insufficient permission to access loc(a, i).val (0207.vpr@50.34--50.45) [85797]"}
            (forall i_4_1: int ::
            { (loc(a_2, i_4_1): Ref) } { LabelpreHeap[(loc(a_2, i_4_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_4_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1) ==> FullPerm > NoPerm ==> LabelpreMask[(loc(a_2, i_4_1): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_4_1: int ::
            { (loc(a_2, i_4_1): Ref) } { LabelpreHeap[(loc(a_2, i_4_1): Ref), val] } { Seq#ContainsTrigger(Seq#Range(0, (length_2(a_2): int)), i_4_1) } { Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), i_4_1) && NoPerm < FullPerm ==> qpRange11((loc(a_2, i_4_1): Ref)) && invRecv11((loc(a_2, i_4_1): Ref)) == i_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv11(o_9) }
            Seq#Contains(Seq#Range(0, (length_2(a_2): int)), invRecv11(o_9)) && (NoPerm < FullPerm && qpRange11(o_9)) ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(LabelpreHeap, ExhaleHeap, LabelpreMask);
        LabelpreHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion elements(a) == old[pre](elements(a)) might not hold. (0207.vpr@50.10--50.46) [85798]"}
      Set#Equal(elements_1(Heap, a_2), elements_1(LabelpreHeap, a_2));
    assume state(Heap, Mask);
}