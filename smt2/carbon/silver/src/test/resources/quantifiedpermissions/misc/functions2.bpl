// 
// Translation of Viper program.
// 
// Date:         2025-01-13 17:56:09
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/functions2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/functions2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> Heap[null, PredicateMaskField(pm_f_16)] == ExhaleHeap[null, PredicateMaskField(pm_f_16)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> Heap[null, WandMaskField(pm_f_16)] == ExhaleHeap[null, WandMaskField(pm_f_16)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_35: (Field A B), v: B ::
  { Heap[o_3, f_35:=v] }
  succHeap(Heap, Heap[o_3, f_35:=v])
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

function  neverTriggered1(x_6: Ref): bool;
function  neverTriggered2(i_13_1: int): bool;
function  neverTriggered3(i_17: int): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_4: Ref): bool;
function  neverTriggered6(x_7: Ref): bool;
function  neverTriggered7(x_10_1: Ref): bool;
function  neverTriggered8(i_3: int): bool;
function  neverTriggered9(i_7_1: int): bool;
function  neverTriggered10(i_10_1: int): bool;
function  neverTriggered11(i_13_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
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
// - height 1: fun01
// - height 0: fun02
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, xs: (Set Ref), y: Ref): int;
function  fun01'(Heap: HeapType, xs: (Set Ref), y: Ref): int;
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref ::
  { fun01(Heap, xs, y) }
  fun01(Heap, xs, y) == fun01'(Heap, xs, y) && dummyFunction(fun01#triggerStateless(xs, y))
);
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref ::
  { fun01'(Heap, xs, y) }
  dummyFunction(fun01#triggerStateless(xs, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref ::
  { state(Heap, Mask), fun01(Heap, xs, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> (forall x_1: Ref ::
    { xs[x_1] }
    xs[x_1] ==> Heap[x_1, f_7] > 0
  ) && xs[y] ==> fun01(Heap, xs, y) == Heap[y, f_7]
);

// Framing axioms
function  fun01#frame(frame: FrameType, xs: (Set Ref), y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref ::
  { state(Heap, Mask), fun01'(Heap, xs, y) }
  state(Heap, Mask) ==> fun01'(Heap, xs, y) == fun01#frame(FrameFragment(fun01#condqp1(Heap, xs, y)), xs, y)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) in function fun01
// ==================================================

function  fun01#condqp1(Heap: HeapType, xs_1_1: (Set Ref), y_1_1_1: Ref): int;
function  sk_fun01#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), y: Ref ::
  { fun01#condqp1(Heap2Heap, xs, y), fun01#condqp1(Heap1Heap, xs, y), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs, y), fun01#condqp1(Heap1Heap, xs, y))] && NoPerm < FullPerm <==> xs[sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs, y), fun01#condqp1(Heap1Heap, xs, y))] && NoPerm < FullPerm) && (xs[sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs, y), fun01#condqp1(Heap1Heap, xs, y))] && NoPerm < FullPerm ==> Heap2Heap[sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs, y), fun01#condqp1(Heap1Heap, xs, y)), f_7] == Heap1Heap[sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs, y), fun01#condqp1(Heap1Heap, xs, y)), f_7]) ==> fun01#condqp1(Heap2Heap, xs, y) == fun01#condqp1(Heap1Heap, xs, y)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, xs: (Set Ref), y: Ref): bool;

// State-independent trigger function
function  fun01#triggerStateless(xs: (Set Ref), y: Ref): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness(xs: (Set Ref), y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_10: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (functions2.vpr@7.12--7.49) [66531]"}
      (forall x_6: Ref, x_6_1: Ref ::
      
      (((x_6 != x_6_1 && xs[x_6]) && xs[x_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
    );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { xs[x_6] }
        xs[x_6] && NoPerm < FullPerm ==> qpRange1(x_6) && invRecv1(x_6) == x_6
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { xs[x_6] }
        xs[x_6] ==> x_6 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (xs[x_10]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (functions2.vpr@8.12--8.48) [66532]"}
            HasDirectPerm(Mask, x_10, f_7);
        }
        assume false;
      }
    assume (forall x_8_1: Ref ::
      { xs[x_8_1] }
      xs[x_8_1] ==> Heap[x_8_1, f_7] > 0
    );
    assume state(Heap, Mask);
    assume xs[y];
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of y.f
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions2.vpr@6.1--10.7) [66533]"}
        HasDirectPerm(Mask, y, f_7);
  
  // -- Translate function body
    Result := Heap[y, f_7];
}

// ==================================================
// Translation of function fun02
// ==================================================

// Uninterpreted function definitions
function  fun02(Heap: HeapType, xs: (Seq Ref), ys: (Seq Ref)): bool;
function  fun02'(Heap: HeapType, xs: (Seq Ref), ys: (Seq Ref)): bool;
axiom (forall Heap: HeapType, xs: (Seq Ref), ys: (Seq Ref) ::
  { fun02(Heap, xs, ys) }
  fun02(Heap, xs, ys) == fun02'(Heap, xs, ys) && dummyFunction(fun02#triggerStateless(xs, ys))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), ys: (Seq Ref) ::
  { fun02'(Heap, xs, ys) }
  dummyFunction(fun02#triggerStateless(xs, ys))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), ys: (Seq Ref) ::
  { state(Heap, Mask), fun02(Heap, xs, ys) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> ((forall i: int, j_9: int ::
    { Seq#Index(xs, i), Seq#Index(xs, j_9) }
    i >= 0 && (i < Seq#Length(xs) && (j_9 >= 0 && (j_9 < Seq#Length(xs) && i != j_9))) ==> Seq#Index(xs, i) != Seq#Index(xs, j_9)
  ) && (forall i_2_1: int, j_1: int ::
    { Seq#Index(ys, i_2_1), Seq#Index(ys, j_1) }
    i_2_1 >= 0 && (i_2_1 < Seq#Length(ys) && (j_1 >= 0 && (j_1 < Seq#Length(ys) && i_2_1 != j_1))) ==> Seq#Index(ys, i_2_1) != Seq#Index(ys, j_1)
  )) && (10 < Seq#Length(xs) && Seq#Length(xs) == Seq#Length(ys)) ==> fun02(Heap, xs, ys) == (Heap[Seq#Index(xs, 0), f_7] == Heap[Seq#Index(ys, 0), f_7])
);

// Framing axioms
function  fun02#frame(frame: FrameType, xs: (Seq Ref), ys: (Seq Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), ys: (Seq Ref) ::
  { state(Heap, Mask), fun02'(Heap, xs, ys) }
  state(Heap, Mask) ==> fun02'(Heap, xs, ys) == fun02#frame(CombineFrames(FrameFragment(fun02#condqp2(Heap, xs, ys)), FrameFragment(fun02#condqp3(Heap, xs, ys))), xs, ys)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write)) in function fun02
// ==================================================

function  fun02#condqp2(Heap: HeapType, xs_1_1: (Seq Ref), ys_1_1: (Seq Ref)): int;
function  sk_fun02#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), ys: (Seq Ref) ::
  { fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys)) < Seq#Length(xs)) && NoPerm < FullPerm <==> (0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys)) < Seq#Length(xs)) && NoPerm < FullPerm) && ((0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys)) < Seq#Length(xs)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs, ys), fun02#condqp2(Heap1Heap, xs, ys))), f_7]) ==> fun02#condqp2(Heap2Heap, xs, ys) == fun02#condqp2(Heap1Heap, xs, ys)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { ys[i] } 0 <= i && i < |ys| ==> acc(ys[i].f, write)) in function fun02
// ==================================================

function  fun02#condqp3(Heap: HeapType, xs_1_1: (Seq Ref), ys_1_1: (Seq Ref)): int;
function  sk_fun02#condqp3(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), ys: (Seq Ref) ::
  { fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys)) && sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys)) < Seq#Length(ys)) && NoPerm < FullPerm <==> (0 <= sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys)) && sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys)) < Seq#Length(ys)) && NoPerm < FullPerm) && ((0 <= sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys)) && sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys)) < Seq#Length(ys)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(ys, sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys))), f_7] == Heap1Heap[Seq#Index(ys, sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, ys), fun02#condqp3(Heap1Heap, xs, ys))), f_7]) ==> fun02#condqp3(Heap2Heap, xs, ys) == fun02#condqp3(Heap1Heap, xs, ys)
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType, xs: (Seq Ref), ys: (Seq Ref)): bool;

// State-independent trigger function
function  fun02#triggerStateless(xs: (Seq Ref), ys: (Seq Ref)): bool;

// Check contract well-formedness and postcondition
procedure fun02#definedness(xs: (Seq Ref), ys: (Seq Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var i_4: int;
  var j_6: int;
  var i_6: int;
  var QPMask: MaskType;
  var i_7: int;
  var j_7: int;
  var i_8: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_4 >= 0 && (i_4 < Seq#Length(xs) && (j_6 >= 0 && (j_6 < Seq#Length(xs) && i_4 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions2.vpr@26.12--26.106) [66534]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions2.vpr@26.12--26.106) [66535]"}
            i_4 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (functions2.vpr@26.12--26.106) [66536]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions2.vpr@26.12--26.106) [66537]"}
            j_6 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_11_1: int, j_5_1: int ::
      { Seq#Index(xs, i_11_1), Seq#Index(xs, j_5_1) }
      i_11_1 >= 0 && (i_11_1 < Seq#Length(xs) && (j_5_1 >= 0 && (j_5_1 < Seq#Length(xs) && i_11_1 != j_5_1))) ==> Seq#Index(xs, i_11_1) != Seq#Index(xs, j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_6 && i_6 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions2.vpr@27.12--27.64) [66538]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions2.vpr@27.12--27.64) [66539]"}
            i_6 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (functions2.vpr@27.12--27.64) [66540]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < Seq#Length(xs))) && (0 <= i_13_2 && i_13_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_13_1) != Seq#Index(xs, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(xs, i_13_1) } { Seq#Index(xs, i_13_1) }
        (0 <= i_13_1 && i_13_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange2(Seq#Index(xs, i_13_1)) && invRecv2(Seq#Index(xs, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(xs, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(xs, i_13_1) } { Seq#Index(xs, i_13_1) }
        0 <= i_13_1 && i_13_1 < Seq#Length(xs) ==> Seq#Index(xs, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv2(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { ys[i], ys[j] } i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j])
      if (*) {
        if (i_7 >= 0 && (i_7 < Seq#Length(ys) && (j_7 >= 0 && (j_7 < Seq#Length(ys) && i_7 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. Index ys[i] into ys might be negative. (functions2.vpr@28.12--28.106) [66541]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ys[i] into ys might exceed sequence length. (functions2.vpr@28.12--28.106) [66542]"}
            i_7 < Seq#Length(ys);
          assert {:msg "  Contract might not be well-formed. Index ys[j] into ys might be negative. (functions2.vpr@28.12--28.106) [66543]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ys[j] into ys might exceed sequence length. (functions2.vpr@28.12--28.106) [66544]"}
            j_7 < Seq#Length(ys);
        }
        assume false;
      }
    assume (forall i_15: int, j_7_1: int ::
      { Seq#Index(ys, i_15), Seq#Index(ys, j_7_1) }
      i_15 >= 0 && (i_15 < Seq#Length(ys) && (j_7_1 >= 0 && (j_7_1 < Seq#Length(ys) && i_15 != j_7_1))) ==> Seq#Index(ys, i_15) != Seq#Index(ys, j_7_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ys[i] } 0 <= i && i < |ys| ==> acc(ys[i].f, write))
      if (*) {
        if (0 <= i_8 && i_8 < Seq#Length(ys)) {
          assert {:msg "  Contract might not be well-formed. Index ys[i] into ys might be negative. (functions2.vpr@29.12--29.64) [66545]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ys[i] into ys might exceed sequence length. (functions2.vpr@29.12--29.64) [66546]"}
            i_8 < Seq#Length(ys);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ys[i].f might not be injective. (functions2.vpr@29.12--29.64) [66547]"}
      (forall i_17: int, i_17_1: int ::
      
      (((i_17 != i_17_1 && (0 <= i_17 && i_17 < Seq#Length(ys))) && (0 <= i_17_1 && i_17_1 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_17) != Seq#Index(ys, i_17_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_17: int ::
        { Seq#Index(ys, i_17) } { Seq#Index(ys, i_17) }
        (0 <= i_17 && i_17 < Seq#Length(ys)) && NoPerm < FullPerm ==> qpRange3(Seq#Index(ys, i_17)) && invRecv3(Seq#Index(ys, i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(ys, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_17: int ::
        { Seq#Index(ys, i_17) } { Seq#Index(ys, i_17) }
        0 <= i_17 && i_17 < Seq#Length(ys) ==> Seq#Index(ys, i_17) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ys, invRecv3(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 10 < Seq#Length(xs);
    assume Seq#Length(xs) == Seq#Length(ys);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[0].f == ys[0].f
      assert {:msg "  Function might not be well-formed. Index xs[0] into xs might exceed sequence length. (functions2.vpr@25.1--31.23) [66548]"}
        0 < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[0].f (functions2.vpr@25.1--31.23) [66549]"}
        HasDirectPerm(Mask, Seq#Index(xs, 0), f_7);
      assert {:msg "  Function might not be well-formed. Index ys[0] into ys might exceed sequence length. (functions2.vpr@25.1--31.23) [66550]"}
        0 < Seq#Length(ys);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ys[0].f (functions2.vpr@25.1--31.23) [66551]"}
        HasDirectPerm(Mask, Seq#Index(ys, 0), f_7);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, 0), f_7] == Heap[Seq#Index(ys, 0), f_7];
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Set Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var pre_lblGuard: bool;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var x_18: Ref;
  var LabelpreHeap: HeapType;
  var LabelpreMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var x_5: Ref;
  var ExhaleHeap: HeapType;
  var x_8_1: Ref;
  var x_11_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    pre_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) -- functions2.vpr@13.3--13.47
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (functions2.vpr@13.10--13.47) [66552]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange4(x_1) && invRecv4(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (xs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0) -- functions2.vpr@14.3--14.46
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (xs[x_18]) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (functions2.vpr@14.10--14.46) [66553]"}
            HasDirectPerm(Mask, x_18, f_7);
        }
        assume false;
      }
    assume (forall x_3: Ref ::
      { xs[x_3] }
      xs[x_3] ==> Heap[x_3, f_7] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (y in xs) -- functions2.vpr@15.3--15.17
    assume xs[y];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label pre -- functions2.vpr@16.1--16.10
    pre:
    LabelpreHeap := Heap;
    LabelpreMask := Mask;
    pre_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(xs, y) == y.f -- functions2.vpr@18.3--18.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01(xs, y) == y.f
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x is injective
          assert {:msg "  Precondition of function fun01 might not hold. Quantified resource x.f might not be injective. (functions2.vpr@18.10--18.21) [66554]"}
            (forall x_4: Ref, x_4_1: Ref ::
            { neverTriggered5(x_4), neverTriggered5(x_4_1) }
            (((x_4 != x_4_1 && xs[x_4]) && xs[x_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (functions2.vpr@18.10--18.21) [66555]"}
            (forall x_4: Ref ::
            { ExhaleWellDef0Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
            xs[x_4] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[x_4, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x
          assume (forall x_4: Ref ::
            { ExhaleWellDef0Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
            xs[x_4] && NoPerm < FullPerm ==> qpRange5(x_4) && invRecv5(x_4) == x_4
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            xs[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
          );
        if (*) {
          if (xs[x_5]) {
            assert {:msg "  Precondition of function fun01 might not hold. Assertion x.f > 0 might not hold. (functions2.vpr@18.10--18.21) [66556]"}
              ExhaleWellDef0Heap[x_5, f_7] > 0;
          }
          assume false;
        }
        assume (forall x_6_1_1: Ref ::
          { xs[x_6_1_1] }
          xs[x_6_1_1] ==> ExhaleWellDef0Heap[x_6_1_1, f_7] > 0
        );
        assert {:msg "  Precondition of function fun01 might not hold. Assertion (y in xs) might not hold. (functions2.vpr@18.10--18.21) [66557]"}
          xs[y];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (functions2.vpr@18.10--18.28) [66558]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion fun01(xs, y) == y.f might not hold. (functions2.vpr@18.10--18.28) [66559]"}
      fun01(Heap, xs, y) == Heap[y, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(xs, y) == old[pre](fun01(xs, y)) -- functions2.vpr@19.3--19.46
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01(xs, y) == old[pre](fun01(xs, y))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x is injective
          assert {:msg "  Precondition of function fun01 might not hold. Quantified resource x.f might not be injective. (functions2.vpr@19.10--19.21) [66560]"}
            (forall x_7: Ref, x_7_1: Ref ::
            { neverTriggered6(x_7), neverTriggered6(x_7_1) }
            (((x_7 != x_7_1 && xs[x_7]) && xs[x_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (functions2.vpr@19.10--19.21) [66561]"}
            (forall x_7: Ref ::
            { ExhaleWellDef0Heap[x_7, f_7] } { QPMask[x_7, f_7] } { xs[x_7] }
            xs[x_7] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[x_7, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x
          assume (forall x_7: Ref ::
            { ExhaleWellDef0Heap[x_7, f_7] } { QPMask[x_7, f_7] } { xs[x_7] }
            xs[x_7] && NoPerm < FullPerm ==> qpRange6(x_7) && invRecv6(x_7) == x_7
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            xs[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
          );
        if (*) {
          if (xs[x_8_1]) {
            assert {:msg "  Precondition of function fun01 might not hold. Assertion x.f > 0 might not hold. (functions2.vpr@19.10--19.21) [66562]"}
              ExhaleWellDef0Heap[x_8_1, f_7] > 0;
          }
          assume false;
        }
        assume (forall x_9_1: Ref ::
          { xs[x_9_1] }
          xs[x_9_1] ==> ExhaleWellDef0Heap[x_9_1, f_7] > 0
        );
        assert {:msg "  Precondition of function fun01 might not hold. Assertion (y in xs) might not hold. (functions2.vpr@19.10--19.21) [66563]"}
          xs[y];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. Did not reach labelled state pre required to evaluate old[pre](fun01(xs, y)). (functions2.vpr@19.10--19.46) [66564]"}
        pre_lblGuard;
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := LabelpreHeap;
        ExhaleWellDef1Mask := LabelpreMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x is injective
          assert {:msg "  Precondition of function fun01 might not hold. Quantified resource x.f might not be injective. (functions2.vpr@19.34--19.45) [66565]"}
            (forall x_10_1: Ref, x_10_2: Ref ::
            { neverTriggered7(x_10_1), neverTriggered7(x_10_2) }
            (((x_10_1 != x_10_2 && xs[x_10_1]) && xs[x_10_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_10_1 != x_10_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (functions2.vpr@19.34--19.45) [66566]"}
            (forall x_10_1: Ref ::
            { LabelpreHeap[x_10_1, f_7] } { QPMask[x_10_1, f_7] } { xs[x_10_1] }
            xs[x_10_1] ==> FullPerm > NoPerm ==> LabelpreMask[x_10_1, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x
          assume (forall x_10_1: Ref ::
            { LabelpreHeap[x_10_1, f_7] } { QPMask[x_10_1, f_7] } { xs[x_10_1] }
            xs[x_10_1] && NoPerm < FullPerm ==> qpRange7(x_10_1) && invRecv7(x_10_1) == x_10_1
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            xs[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
          );
        if (*) {
          if (xs[x_11_1]) {
            assert {:msg "  Precondition of function fun01 might not hold. Assertion x.f > 0 might not hold. (functions2.vpr@19.34--19.45) [66567]"}
              LabelpreHeap[x_11_1, f_7] > 0;
          }
          assume false;
        }
        assume (forall x_12_1: Ref ::
          { xs[x_12_1] }
          xs[x_12_1] ==> LabelpreHeap[x_12_1, f_7] > 0
        );
        assert {:msg "  Precondition of function fun01 might not hold. Assertion (y in xs) might not hold. (functions2.vpr@19.34--19.45) [66568]"}
          xs[y];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(LabelpreHeap, ExhaleHeap, LabelpreMask);
        LabelpreHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(xs, y) == old[pre](fun01(xs, y)) might not hold. (functions2.vpr@19.10--19.46) [66569]"}
      fun01(Heap, xs, y) == fun01(LabelpreHeap, xs, y);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- functions2.vpr@22.3--22.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (functions2.vpr@22.10--22.15) [66570]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Seq Ref), ys: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i_11: int;
  var j_11: int;
  var i_12: int;
  var QPMask: MaskType;
  var i_16: int;
  var j_18: int;
  var i_18: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_8_2: int;
  var j_4_1: int;
  var i_11_1: int;
  var j_6_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- functions2.vpr@34.3--34.104
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_11 >= 0 && (i_11 < Seq#Length(xs) && (j_11 >= 0 && (j_11 < Seq#Length(xs) && i_11 != j_11)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (functions2.vpr@34.10--34.104) [66571]"}
            i_11 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (functions2.vpr@34.10--34.104) [66572]"}
            i_11 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions2.vpr@34.10--34.104) [66573]"}
            j_11 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions2.vpr@34.10--34.104) [66574]"}
            j_11 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { xs[i] }
  //     0 <= i && i < |xs| ==> acc(xs[i].f, write)) -- functions2.vpr@35.3--35.62
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_12 && i_12 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (functions2.vpr@35.10--35.62) [66575]"}
            i_12 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (functions2.vpr@35.10--35.62) [66576]"}
            i_12 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (functions2.vpr@35.10--35.62) [66577]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(xs))) && (0 <= i_3_1 && i_3_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#Index(xs, i_3) }
        (0 <= i_3 && i_3 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange8(Seq#Index(xs, i_3)) && invRecv8(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(xs, invRecv8(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#Index(xs, i_3) }
        0 <= i_3 && i_3 < Seq#Length(xs) ==> Seq#Index(xs, i_3) != null
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
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { ys[i], ys[j] }
  //     i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==>
  //     ys[i] != ys[j]) -- functions2.vpr@36.3--36.104
    
    // -- Check definedness of (forall i: Int, j: Int :: { ys[i], ys[j] } i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j])
      if (*) {
        if (i_16 >= 0 && (i_16 < Seq#Length(ys) && (j_18 >= 0 && (j_18 < Seq#Length(ys) && i_16 != j_18)))) {
          assert {:msg "  Inhale might fail. Index ys[i] into ys might be negative. (functions2.vpr@36.10--36.104) [66578]"}
            i_16 >= 0;
          assert {:msg "  Inhale might fail. Index ys[i] into ys might exceed sequence length. (functions2.vpr@36.10--36.104) [66579]"}
            i_16 < Seq#Length(ys);
          assert {:msg "  Inhale might fail. Index ys[j] into ys might be negative. (functions2.vpr@36.10--36.104) [66580]"}
            j_18 >= 0;
          assert {:msg "  Inhale might fail. Index ys[j] into ys might exceed sequence length. (functions2.vpr@36.10--36.104) [66581]"}
            j_18 < Seq#Length(ys);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#Index(ys, i_5), Seq#Index(ys, j_3_1) }
      i_5 >= 0 && (i_5 < Seq#Length(ys) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ys) && i_5 != j_3_1))) ==> Seq#Index(ys, i_5) != Seq#Index(ys, j_3_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { ys[i] }
  //     0 <= i && i < |ys| ==> acc(ys[i].f, write)) -- functions2.vpr@37.3--37.62
    
    // -- Check definedness of (forall i: Int :: { ys[i] } 0 <= i && i < |ys| ==> acc(ys[i].f, write))
      if (*) {
        if (0 <= i_18 && i_18 < Seq#Length(ys)) {
          assert {:msg "  Inhale might fail. Index ys[i] into ys might be negative. (functions2.vpr@37.10--37.62) [66582]"}
            i_18 >= 0;
          assert {:msg "  Inhale might fail. Index ys[i] into ys might exceed sequence length. (functions2.vpr@37.10--37.62) [66583]"}
            i_18 < Seq#Length(ys);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource ys[i].f might not be injective. (functions2.vpr@37.10--37.62) [66584]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < Seq#Length(ys))) && (0 <= i_7_2 && i_7_2 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_7_1) != Seq#Index(ys, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(ys, i_7_1) } { Seq#Index(ys, i_7_1) }
        (0 <= i_7_1 && i_7_1 < Seq#Length(ys)) && NoPerm < FullPerm ==> qpRange9(Seq#Index(ys, i_7_1)) && invRecv9(Seq#Index(ys, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(ys, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(ys, i_7_1) } { Seq#Index(ys, i_7_1) }
        0 <= i_7_1 && i_7_1 < Seq#Length(ys) ==> Seq#Index(ys, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ys, invRecv9(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 < |xs| && |xs| == |ys| -- functions2.vpr@38.3--38.35
    assume 10 < Seq#Length(xs);
    assume Seq#Length(xs) == Seq#Length(ys);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(xs, ys) -- functions2.vpr@41.3--41.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(xs, ys)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (*) {
          if (i_8_2 >= 0 && (i_8_2 < Seq#Length(xs) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(xs) && i_8_2 != j_4_1)))) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion xs[i] != xs[j] might not hold. (functions2.vpr@41.10--41.23) [66585]"}
              Seq#Index(xs, i_8_2) != Seq#Index(xs, j_4_1);
          }
          assume false;
        }
        assume (forall i_9_1_1: int, j_5_1_1: int ::
          { Seq#Index(xs, i_9_1_1), Seq#Index(xs, j_5_1_1) }
          i_9_1_1 >= 0 && (i_9_1_1 < Seq#Length(xs) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(xs) && i_9_1_1 != j_5_1_1))) ==> Seq#Index(xs, i_9_1_1) != Seq#Index(xs, j_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource xs[i].f might not be injective. (functions2.vpr@41.10--41.23) [66586]"}
            (forall i_10_1: int, i_10_2: int ::
            { neverTriggered10(i_10_1), neverTriggered10(i_10_2) }
            (((i_10_1 != i_10_2 && (0 <= i_10_1 && i_10_1 < Seq#Length(xs))) && (0 <= i_10_2 && i_10_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_10_1) != Seq#Index(xs, i_10_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access xs[i].f (functions2.vpr@41.10--41.23) [66587]"}
            (forall i_10_1: int ::
            { Seq#Index(xs, i_10_1) } { Seq#Index(xs, i_10_1) }
            0 <= i_10_1 && i_10_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_10_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_10_1: int ::
            { Seq#Index(xs, i_10_1) } { Seq#Index(xs, i_10_1) }
            (0 <= i_10_1 && i_10_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange10(Seq#Index(xs, i_10_1)) && invRecv10(Seq#Index(xs, i_10_1)) == i_10_1
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            (0 <= invRecv10(o_4) && invRecv10(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(xs, invRecv10(o_4)) == o_4
          );
        if (*) {
          if (i_11_1 >= 0 && (i_11_1 < Seq#Length(ys) && (j_6_1 >= 0 && (j_6_1 < Seq#Length(ys) && i_11_1 != j_6_1)))) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion ys[i] != ys[j] might not hold. (functions2.vpr@41.10--41.23) [66588]"}
              Seq#Index(ys, i_11_1) != Seq#Index(ys, j_6_1);
          }
          assume false;
        }
        assume (forall i_12_1_1: int, j_7_1_1: int ::
          { Seq#Index(ys, i_12_1_1), Seq#Index(ys, j_7_1_1) }
          i_12_1_1 >= 0 && (i_12_1_1 < Seq#Length(ys) && (j_7_1_1 >= 0 && (j_7_1_1 < Seq#Length(ys) && i_12_1_1 != j_7_1_1))) ==> Seq#Index(ys, i_12_1_1) != Seq#Index(ys, j_7_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver ys[i] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource ys[i].f might not be injective. (functions2.vpr@41.10--41.23) [66589]"}
            (forall i_13_1: int, i_13_2: int ::
            { neverTriggered11(i_13_1), neverTriggered11(i_13_2) }
            (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < Seq#Length(ys))) && (0 <= i_13_2 && i_13_2 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_13_1) != Seq#Index(ys, i_13_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access ys[i].f (functions2.vpr@41.10--41.23) [66590]"}
            (forall i_13_1: int ::
            { Seq#Index(ys, i_13_1) } { Seq#Index(ys, i_13_1) }
            0 <= i_13_1 && i_13_1 < Seq#Length(ys) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(ys, i_13_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver ys[i]
          assume (forall i_13_1: int ::
            { Seq#Index(ys, i_13_1) } { Seq#Index(ys, i_13_1) }
            (0 <= i_13_1 && i_13_1 < Seq#Length(ys)) && NoPerm < FullPerm ==> qpRange11(Seq#Index(ys, i_13_1)) && invRecv11(Seq#Index(ys, i_13_1)) == i_13_1
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            (0 <= invRecv11(o_4) && invRecv11(o_4) < Seq#Length(ys)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(ys, invRecv11(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun02 might not hold. Assertion 10 < |xs| might not hold. (functions2.vpr@41.10--41.23) [66591]"}
          10 < Seq#Length(xs);
        assert {:msg "  Precondition of function fun02 might not hold. Assertion |xs| == |ys| might not hold. (functions2.vpr@41.10--41.23) [66592]"}
          Seq#Length(xs) == Seq#Length(ys);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(xs, ys) might not hold. (functions2.vpr@41.10--41.23) [66593]"}
      fun02(Heap, xs, ys);
    assume state(Heap, Mask);
}