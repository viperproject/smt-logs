// 
// Translation of Viper program.
// 
// Date:         2024-12-26 19:50:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/random_access.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/random_access-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_8: Ref, f_12: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_8, f_12] }
  Heap[o_8, $allocated] ==> Heap[Heap[o_8, f_12], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref, f_44: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, f_44] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_38, f_44) ==> Heap[o_38, f_44] == ExhaleHeap[o_38, f_44]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21), ExhaleHeap[null, WandMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> Heap[null, WandMaskField(pm_f_21)] == ExhaleHeap[null, WandMaskField(pm_f_21)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_38, $allocated] ==> ExhaleHeap[o_38, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_8: Ref, f_8: (Field A B), v: B ::
  { Heap[o_8, f_8:=v] }
  succHeap(Heap, Heap[o_8, f_8:=v])
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
function  neverTriggered2(i_4_1: int): bool;
function  neverTriggered3(i_3: int): bool;
function  neverTriggered4(i_4_1: int): bool;
function  neverTriggered5(i_6_1: int): bool;
function  neverTriggered6(i_7_1: int): bool;
function  neverTriggered7(i_8_2: int): bool;
function  neverTriggered8(i_9_1: int): bool;
function  neverTriggered9(i_3: int): bool;
function  neverTriggered10(i_4_1: int): bool;
function  neverTriggered11(i_6_1: int): bool;
function  neverTriggered12(i_7_1: int): bool;
function  neverTriggered13(i_8_2: int): bool;
function  neverTriggered14(i_9_1: int): bool;
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
function  invRecv13(recv: Ref): int;
function  invRecv14(recv: Ref): int;
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
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: exp
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
// Translation of function exp
// ==================================================

// Uninterpreted function definitions
function  exp(Heap: HeapType, a_2: int, i: int, b_24: int): int;
function  exp'(Heap: HeapType, a_2: int, i: int, b_24: int): int;
axiom (forall Heap: HeapType, a_2: int, i: int, b_24: int ::
  { exp(Heap, a_2, i, b_24) }
  exp(Heap, a_2, i, b_24) == exp'(Heap, a_2, i, b_24) && dummyFunction(exp#triggerStateless(a_2, i, b_24))
);
axiom (forall Heap: HeapType, a_2: int, i: int, b_24: int ::
  { exp'(Heap, a_2, i, b_24) }
  dummyFunction(exp#triggerStateless(a_2, i, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: int, i: int, b_24: int ::
  { state(Heap, Mask), exp(Heap, a_2, i, b_24) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> exp(Heap, a_2, i, b_24) == a_2 + i * b_24
);

// Framing axioms
function  exp#frame(frame: FrameType, a_2: int, i: int, b_24: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: int, i: int, b_24: int ::
  { state(Heap, Mask), exp'(Heap, a_2, i, b_24) }
  state(Heap, Mask) ==> exp'(Heap, a_2, i, b_24) == exp#frame(EmptyFrame, a_2, i, b_24)
);

// Trigger function (controlling recursive postconditions)
function  exp#trigger(frame: FrameType, a_2: int, i: int, b_24: int): bool;

// State-independent trigger function
function  exp#triggerStateless(a_2: int, i: int, b_24: int): int;

// Check contract well-formedness and postcondition
procedure exp#definedness(a_2: int, i: int, b_24: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := a_2 + i * b_24;
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(s_2: (Seq Ref), a_2: int, b_24: int, n: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var j_9: int;
  var i1_17: int;
  var i2_7: int;
  var i_2: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume 0 < b_24;
    assume 0 < n;
    assume state(Heap, Mask);
    assume a_2 + n * b_24 < Seq#Length(s_2);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale 0 <= j && j < n -- random_access.vpr@12.3--12.25
    assume 0 <= j_9;
    assume j_9 < n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..n)), (i2 in [0..n)) }
  //     (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==>
  //     s[a + i1 * b] != s[a + i2 * b]) -- random_access.vpr@13.3--13.137
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> s[a + i1 * b] != s[a + i2 * b])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_17) && (Seq#Contains(Seq#Range(0, n), i2_7) && i1_17 != i2_7)) {
          assert {:msg "  Inhale might fail. Index s[a + i1 * b] into s might be negative. (random_access.vpr@13.10--13.137) [60742]"}
            a_2 + i1_17 * b_24 >= 0;
          assert {:msg "  Inhale might fail. Index s[a + i1 * b] into s might exceed sequence length. (random_access.vpr@13.10--13.137) [60743]"}
            a_2 + i1_17 * b_24 < Seq#Length(s_2);
          assert {:msg "  Inhale might fail. Index s[a + i2 * b] into s might be negative. (random_access.vpr@13.10--13.137) [60744]"}
            a_2 + i2_7 * b_24 >= 0;
          assert {:msg "  Inhale might fail. Index s[a + i2 * b] into s might exceed sequence length. (random_access.vpr@13.10--13.137) [60745]"}
            a_2 + i2_7 * b_24 < Seq#Length(s_2);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) }
      Seq#Contains(Seq#Range(0, n), i1_1_1) && (Seq#Contains(Seq#Range(0, n), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(s_2, a_2 + i1_1_1 * b_24) != Seq#Index(s_2, a_2 + i2_1_1 * b_24)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     (i in [0..n)) ==> acc(s[a + i * b].f, write)) -- random_access.vpr@14.3--14.74
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } (i in [0..n)) ==> acc(s[a + i * b].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_2)) {
          assert {:msg "  Inhale might fail. Index s[a + i * b] into s might be negative. (random_access.vpr@14.10--14.74) [60746]"}
            a_2 + i_2 * b_24 >= 0;
          assert {:msg "  Inhale might fail. Index s[a + i * b] into s might exceed sequence length. (random_access.vpr@14.10--14.74) [60747]"}
            a_2 + i_2 * b_24 < Seq#Length(s_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource s[a + i * b].f might not be injective. (random_access.vpr@14.10--14.74) [60748]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, a_2 + i_1 * b_24) != Seq#Index(s_2, a_2 + i_1_1 * b_24)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> qpRange1(Seq#Index(s_2, a_2 + i_1 * b_24)) && invRecv1(Seq#Index(s_2, a_2 + i_1 * b_24)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(s_2, a_2 + invRecv1(o_4) * b_24) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) ==> Seq#Index(s_2, a_2 + i_1 * b_24) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, a_2 + invRecv1(o_4) * b_24) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, n), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert s[a + j * b] != null -- random_access.vpr@32.3--32.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of s[a + j * b] != null
      assert {:msg "  Assert might fail. Index s[a + j * b] into s might be negative. (random_access.vpr@32.10--32.28) [60749]"}
        a_2 + j_9 * b_24 >= 0;
      assert {:msg "  Assert might fail. Index s[a + j * b] into s might exceed sequence length. (random_access.vpr@32.10--32.28) [60750]"}
        a_2 + j_9 * b_24 < Seq#Length(s_2);
    assert {:msg "  Assert might fail. Assertion s[a + j * b] != null might not hold. (random_access.vpr@32.10--32.28) [60751]"}
      Seq#Index(s_2, a_2 + j_9 * b_24) != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(s_2: (Seq Ref), a_2: int, b_24: int, n: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var j_9: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_4: int;
  var i_1: int;
  var i1_23: int;
  var i2_13: int;
  var i_7: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume 0 < b_24;
    assume 0 < n;
    assume state(Heap, Mask);
    assume a_2 + n * b_24 < Seq#Length(s_2);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale 0 <= j && j < n -- random_access.vpr@45.3--45.25
    assume 0 <= j_9;
    assume j_9 < n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { (i in [0..n)) }
  //     (i in [0..n)) ==> exp(a, i, b) < |s|) -- random_access.vpr@46.3--46.75
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } (i in [0..n)) ==> exp(a, i, b) < |s|)
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_4)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Range(0, n), i_1)) {
        assert {:msg "  Assert might fail. Assertion exp(a, i, b) < |s| might not hold. (random_access.vpr@46.10--46.75) [60752]"}
          exp(Heap, a_2, i_1, b_24) < Seq#Length(s_2);
      }
      assume false;
    }
    assume (forall i_2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i_2_1_1) } { Seq#Contains(Seq#Range(0, n), i_2_1_1) }
      Seq#Contains(Seq#Range(0, n), i_2_1_1) ==> exp(Heap, a_2, i_2_1_1, b_24) < Seq#Length(s_2)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..n)), (i2 in [0..n)) }
  //     (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==>
  //     s[exp(a, i1, b)] != s[exp(a, i2, b)]) -- random_access.vpr@47.3--47.147
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..n)), (i2 in [0..n)) } (i1 in [0..n)) && ((i2 in [0..n)) && i1 != i2) ==> s[exp(a, i1, b)] != s[exp(a, i2, b)])
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i1_23) && (Seq#Contains(Seq#Range(0, n), i2_13) && i1_23 != i2_13)) {
          if (*) {
            // Stop execution
            assume false;
          }
          assert {:msg "  Inhale might fail. Index s[exp(a, i1, b)] into s might be negative. (random_access.vpr@47.10--47.147) [60753]"}
            exp(Heap, a_2, i1_23, b_24) >= 0;
          assert {:msg "  Inhale might fail. Index s[exp(a, i1, b)] into s might exceed sequence length. (random_access.vpr@47.10--47.147) [60754]"}
            exp(Heap, a_2, i1_23, b_24) < Seq#Length(s_2);
          if (*) {
            // Stop execution
            assume false;
          }
          assert {:msg "  Inhale might fail. Index s[exp(a, i2, b)] into s might be negative. (random_access.vpr@47.10--47.147) [60755]"}
            exp(Heap, a_2, i2_13, b_24) >= 0;
          assert {:msg "  Inhale might fail. Index s[exp(a, i2, b)] into s might exceed sequence length. (random_access.vpr@47.10--47.147) [60756]"}
            exp(Heap, a_2, i2_13, b_24) < Seq#Length(s_2);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, n), i2_1_1) } { Seq#Contains(Seq#Range(0, n), i1_1_1), Seq#Contains(Seq#Range(0, n), i2_1_1) }
      Seq#Contains(Seq#Range(0, n), i1_1_1) && (Seq#Contains(Seq#Range(0, n), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(s_2, exp(Heap, a_2, i1_1_1, b_24)) != Seq#Index(s_2, exp(Heap, a_2, i2_1_1, b_24))
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [0..n)) }
  //     { s[exp(a, i, b)] }
  //     (i in [0..n)) ==> acc(s[exp(a, i, b)].f, write)) -- random_access.vpr@48.3--48.65
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } { s[exp(a, i, b)] } (i in [0..n)) ==> acc(s[exp(a, i, b)].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, n), i_7)) {
          if (*) {
            // Stop execution
            assume false;
          }
          assert {:msg "  Inhale might fail. Index s[exp(a, i, b)] into s might be negative. (random_access.vpr@48.10--48.65) [60757]"}
            exp(Heap, a_2, i_7, b_24) >= 0;
          assert {:msg "  Inhale might fail. Index s[exp(a, i, b)] into s might exceed sequence length. (random_access.vpr@48.10--48.65) [60758]"}
            exp(Heap, a_2, i_7, b_24) < Seq#Length(s_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource s[exp(a, i, b)].f might not be injective. (random_access.vpr@48.10--48.65) [60759]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && Seq#Contains(Seq#Range(0, n), i_4_1)) && Seq#Contains(Seq#Range(0, n), i_4_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, exp(Heap, a_2, i_4_1, b_24)) != Seq#Index(s_2, exp(Heap, a_2, i_4_2, b_24))
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { Seq#Index(s_2, exp#frame(EmptyFrame, a_2, i_4_1, b_24)) } { Seq#ContainsTrigger(Seq#Range(0, n), i_4_1) } { Seq#Contains(Seq#Range(0, n), i_4_1) } { Seq#Index(s_2, exp#frame(EmptyFrame, a_2, i_4_1, b_24)) }
        Seq#Contains(Seq#Range(0, n), i_4_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(s_2, exp(Heap, a_2, i_4_1, b_24))) && invRecv2(Seq#Index(s_2, exp(Heap, a_2, i_4_1, b_24))) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(s_2, exp(Heap, a_2, invRecv2(o_4), b_24)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { Seq#Index(s_2, exp#frame(EmptyFrame, a_2, i_4_1, b_24)) } { Seq#ContainsTrigger(Seq#Range(0, n), i_4_1) } { Seq#Contains(Seq#Range(0, n), i_4_1) } { Seq#Index(s_2, exp#frame(EmptyFrame, a_2, i_4_1, b_24)) }
        Seq#Contains(Seq#Range(0, n), i_4_1) ==> Seq#Index(s_2, exp(Heap, a_2, i_4_1, b_24)) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, exp(Heap, a_2, invRecv2(o_4), b_24)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, n), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert s[exp(a, j, b)] != null -- random_access.vpr@58.3--58.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of s[exp(a, j, b)] != null
      if (*) {
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. Index s[exp(a, j, b)] into s might be negative. (random_access.vpr@58.10--58.33) [60760]"}
        exp(Heap, a_2, j_9, b_24) >= 0;
      assert {:msg "  Assert might fail. Index s[exp(a, j, b)] into s might exceed sequence length. (random_access.vpr@58.10--58.33) [60761]"}
        exp(Heap, a_2, j_9, b_24) < Seq#Length(s_2);
    assert {:msg "  Assert might fail. Assertion s[exp(a, j, b)] != null might not hold. (random_access.vpr@58.10--58.33) [60762]"}
      Seq#Index(s_2, exp(Heap, a_2, j_9, b_24)) != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(s_2: (Seq Ref), a_2: int, b_24: int) returns ()
  modifies Heap, Mask;
{
  var i_8: int;
  var j_3: int;
  var i_9: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var j_2_1: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i_10: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume 0 < b_24;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [a..|s|)), (j in [a..|s|)) } { (i in [a..|s|)), s[j] } { (j in [a..|s|)), s[i] } { s[i], s[j] } (i in [a..|s|)) && ((i - a) % b == 0 && ((j in [a..|s|)) && ((j - a) % b == 0 && i != j))) ==> s[i] != s[j])
      if (*) {
        if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8)) {
          assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@63.12--63.134) [60763]"}
            b_24 != 0;
          if ((i_8 - a_2) mod b_24 == 0) {
            if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_3)) {
              assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@63.12--63.134) [60764]"}
                b_24 != 0;
            }
          }
        }
        if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8) && ((i_8 - a_2) mod b_24 == 0 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_3) && ((j_3 - a_2) mod b_24 == 0 && i_8 != j_3)))) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (random_access.vpr@63.12--63.134) [60765]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (random_access.vpr@63.12--63.134) [60766]"}
            i_8 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might be negative. (random_access.vpr@63.12--63.134) [60767]"}
            j_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might exceed sequence length. (random_access.vpr@63.12--63.134) [60768]"}
            j_3 < Seq#Length(s_2);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), j_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), j_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#Index(s_2, j_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#Index(s_2, j_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), j_1), Seq#Index(s_2, i_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_1), Seq#Index(s_2, i_1) } { Seq#Index(s_2, i_1), Seq#Index(s_2, j_1) }
      Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_1) && ((i_1 - a_2) mod b_24 == 0 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_1) && ((j_1 - a_2) mod b_24 == 0 && i_1 != j_1))) ==> Seq#Index(s_2, i_1) != Seq#Index(s_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9)) {
          assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@64.12--64.78) [60769]"}
            b_24 != 0;
        }
        if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9) && (i_9 - a_2) mod b_24 == 0) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (random_access.vpr@64.12--64.78) [60770]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (random_access.vpr@64.12--64.78) [60771]"}
            i_9 < Seq#Length(s_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (random_access.vpr@64.12--64.78) [60772]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) && (i_3 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3_1) && (i_3_1 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_3) != Seq#Index(s_2, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(s_2, i_3) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_3) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) } { Seq#Index(s_2, i_3) }
        (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) && (i_3 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange3(Seq#Index(s_2, i_3)) && invRecv3(Seq#Index(s_2, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv3(o_4)) && (invRecv3(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(s_2, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(s_2, i_3) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_3) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) } { Seq#Index(s_2, i_3) }
        Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) && (i_3 - a_2) mod b_24 == 0 ==> Seq#Index(s_2, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv3(o_4)) && (invRecv3(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv3(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv3(o_4)) && (invRecv3(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: j := a -- random_access.vpr@66.3--66.18
    j_2_1 := a_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < |s|) -- random_access.vpr@68.3--80.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant a <= j might not hold on entry. Assertion a <= j might not hold. (random_access.vpr@69.15--69.21) [60773]"}
          a_2 <= j_2_1;
        assert {:msg "  Loop invariant (j - a) % b == 0 might not hold on entry. Assertion (j - a) % b == 0 might not hold. (random_access.vpr@70.15--70.31) [60774]"}
          (j_2_1 - a_2) mod b_24 == 0;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver s[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write)) might not hold on entry. Quantified resource s[i].f might not be injective. (random_access.vpr@71.15--71.81) [60775]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered4(i_4_1), neverTriggered4(i_4_2) }
            (((i_4_1 != i_4_2 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) && (i_4_1 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_2) && (i_4_2 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_4_1) != Seq#Index(s_2, i_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write)) might not hold on entry. There might be insufficient permission to access s[i].f (random_access.vpr@71.15--71.81) [60776]"}
            (forall i_4_1: int ::
            { Seq#Index(s_2, i_4_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) } { Seq#Index(s_2, i_4_1) }
            Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) && (i_4_1 - a_2) mod b_24 == 0 ==> Mask[Seq#Index(s_2, i_4_1), f_7] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver s[i]
          assume (forall i_4_1: int ::
            { Seq#Index(s_2, i_4_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) } { Seq#Index(s_2, i_4_1) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) && (i_4_1 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange4(Seq#Index(s_2, i_4_1)) && invRecv4(Seq#Index(s_2, i_4_1)) == i_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv4(o_4)) && (invRecv4(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange4(o_4)) ==> Seq#Index(s_2, invRecv4(o_4)) == o_4
          );
        
        // -- assume permission updates for field f
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv4(o_4)) && (invRecv4(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange4(o_4)) ==> Seq#Index(s_2, invRecv4(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv4(o_4)) && (invRecv4(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange4(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Havoc loop written variables (except locals)
      havoc j_2_1;
    
    // -- Check definedness of invariant
      if (*) {
        assume a_2 <= j_2_1;
        assume state(Heap, Mask);
        
        // -- Check definedness of (j - a) % b == 0
          assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@70.15--70.31) [60777]"}
            b_24 != 0;
        assume (j_2_1 - a_2) mod b_24 == 0;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write))
          if (*) {
            if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_10)) {
              assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@71.15--71.81) [60778]"}
                b_24 != 0;
            }
            if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_10) && (i_10 - a_2) mod b_24 == 0) {
              assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (random_access.vpr@71.15--71.81) [60779]"}
                i_10 >= 0;
              assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (random_access.vpr@71.15--71.81) [60780]"}
                i_10 < Seq#Length(s_2);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (random_access.vpr@71.15--71.81) [60781]"}
          (forall i_6_1: int, i_6_2: int ::
          
          (((i_6_1 != i_6_2 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) && (i_6_1 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_2) && (i_6_2 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_6_1) != Seq#Index(s_2, i_6_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_6_1: int ::
            { Seq#Index(s_2, i_6_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) } { Seq#Index(s_2, i_6_1) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) && (i_6_1 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange5(Seq#Index(s_2, i_6_1)) && invRecv5(Seq#Index(s_2, i_6_1)) == i_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv5(o_4)) && (invRecv5(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(s_2, invRecv5(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_6_1: int ::
            { Seq#Index(s_2, i_6_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) } { Seq#Index(s_2, i_6_1) }
            Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) && (i_6_1 - a_2) mod b_24 == 0 ==> Seq#Index(s_2, i_6_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            (((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv5(o_4)) && (invRecv5(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv5(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv5(o_4)) && (invRecv5(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
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
        assume a_2 <= j_2_1;
        assume (j_2_1 - a_2) mod b_24 == 0;
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource s[i].f might not be injective. (random_access.vpr@71.15--71.81) [60782]"}
          (forall i_7_1: int, i_7_2: int ::
          
          (((i_7_1 != i_7_2 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) && (i_7_1 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_2) && (i_7_2 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_7_1) != Seq#Index(s_2, i_7_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_7_1: int ::
            { Seq#Index(s_2, i_7_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) } { Seq#Index(s_2, i_7_1) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) && (i_7_1 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange6(Seq#Index(s_2, i_7_1)) && invRecv6(Seq#Index(s_2, i_7_1)) == i_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv6(o_4)) && (invRecv6(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange6(o_4) ==> Seq#Index(s_2, invRecv6(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_7_1: int ::
            { Seq#Index(s_2, i_7_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) } { Seq#Index(s_2, i_7_1) }
            Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) && (i_7_1 - a_2) mod b_24 == 0 ==> Seq#Index(s_2, i_7_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            (((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv6(o_4)) && (invRecv6(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv6(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv6(o_4)) && (invRecv6(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume j_2_1 < Seq#Length(s_2);
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: assert (j in [a..|s|)) -- random_access.vpr@73.5--73.25
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (j in [a..|s|)) might not hold. (random_access.vpr@73.12--73.25) [60783]"}
              Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_2_1);
            assume state(Heap, Mask);
          
          // -- Translating statement: assert (j - a) % b == 0 -- random_access.vpr@74.5--74.28
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of (j - a) % b == 0
              assert {:msg "  Assert might fail. Divisor b might be zero. (random_access.vpr@74.12--74.28) [60784]"}
                b_24 != 0;
            assert {:msg "  Assert might fail. Assertion (j - a) % b == 0 might not hold. (random_access.vpr@74.12--74.28) [60785]"}
              (j_2_1 - a_2) mod b_24 == 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: s[j].f := j -- random_access.vpr@76.5--76.16
            
            // -- Check definedness of s[j]
              assert {:msg "  Assignment might fail. Index s[j] into s might be negative. (random_access.vpr@76.5--76.16) [60786]"}
                j_2_1 >= 0;
              assert {:msg "  Assignment might fail. Index s[j] into s might exceed sequence length. (random_access.vpr@76.5--76.16) [60787]"}
                j_2_1 < Seq#Length(s_2);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access s[j].f (random_access.vpr@76.5--76.16) [60788]"}
              FullPerm == Mask[Seq#Index(s_2, j_2_1), f_7];
            Heap := Heap[Seq#Index(s_2, j_2_1), f_7:=j_2_1];
            assume state(Heap, Mask);
          
          // -- Translating statement: j := j + b -- random_access.vpr@77.5--77.15
            j_2_1 := j_2_1 + b_24;
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale (j - a) % b == 0 -- random_access.vpr@79.12--79.28
            
            // -- Check definedness of (j - a) % b == 0
              assert {:msg "  Inhale might fail. Divisor b might be zero. (random_access.vpr@79.12--79.28) [60789]"}
                b_24 != 0;
            assume (j_2_1 - a_2) mod b_24 == 0;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant a <= j might not be preserved. Assertion a <= j might not hold. (random_access.vpr@69.15--69.21) [60790]"}
          a_2 <= j_2_1;
        assert {:msg "  Loop invariant (j - a) % b == 0 might not be preserved. Assertion (j - a) % b == 0 might not hold. (random_access.vpr@70.15--70.31) [60791]"}
          (j_2_1 - a_2) mod b_24 == 0;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver s[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write)) might not be preserved. Quantified resource s[i].f might not be injective. (random_access.vpr@71.15--71.81) [60792]"}
            (forall i_8_2: int, i_8_3: int ::
            { neverTriggered7(i_8_2), neverTriggered7(i_8_3) }
            (((i_8_2 != i_8_3 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) && (i_8_2 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_3) && (i_8_3 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_8_2) != Seq#Index(s_2, i_8_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write)) might not be preserved. There might be insufficient permission to access s[i].f (random_access.vpr@71.15--71.81) [60793]"}
            (forall i_8_2: int ::
            { Seq#Index(s_2, i_8_2) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) } { Seq#Index(s_2, i_8_2) }
            Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) && (i_8_2 - a_2) mod b_24 == 0 ==> Mask[Seq#Index(s_2, i_8_2), f_7] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver s[i]
          assume (forall i_8_2: int ::
            { Seq#Index(s_2, i_8_2) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) } { Seq#Index(s_2, i_8_2) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) && (i_8_2 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange7(Seq#Index(s_2, i_8_2)) && invRecv7(Seq#Index(s_2, i_8_2)) == i_8_2
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv7(o_4)) && (invRecv7(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(s_2, invRecv7(o_4)) == o_4
          );
        
        // -- assume permission updates for field f
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv7(o_4)) && (invRecv7(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(s_2, invRecv7(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv7(o_4)) && (invRecv7(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_2_1 < Seq#Length(s_2));
      assume state(Heap, Mask);
      assume a_2 <= j_2_1;
      assume (j_2_1 - a_2) mod b_24 == 0;
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource s[i].f might not be injective. (random_access.vpr@71.15--71.81) [60794]"}
        (forall i_9_1: int, i_9_2: int ::
        
        (((i_9_1 != i_9_2 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) && (i_9_1 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_2) && (i_9_2 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_9_1) != Seq#Index(s_2, i_9_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_9_1: int ::
          { Seq#Index(s_2, i_9_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) } { Seq#Index(s_2, i_9_1) }
          (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) && (i_9_1 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange8(Seq#Index(s_2, i_9_1)) && invRecv8(Seq#Index(s_2, i_9_1)) == i_9_1
        );
        assume (forall o_4: Ref ::
          { invRecv8(o_4) }
          ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv8(o_4)) && (invRecv8(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(s_2, invRecv8(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_9_1: int ::
          { Seq#Index(s_2, i_9_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) } { Seq#Index(s_2, i_9_1) }
          Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) && (i_9_1 - a_2) mod b_24 == 0 ==> Seq#Index(s_2, i_9_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv8(o_4)) && (invRecv8(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv8(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv8(o_4)) && (invRecv8(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(s_2: (Seq Ref), a_2: int, b_24: int) returns ()
  modifies Heap, Mask;
{
  var i_11: int;
  var j_11: int;
  var i_12: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var j_2_1: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i_16: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume 0 < b_24;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [a..|s|)), (j in [a..|s|)) } { (i in [a..|s|)), s[j] } { (j in [a..|s|)), s[i] } { s[i], s[j] } (i in [a..|s|)) && ((i - a) % b == 0 && ((j in [a..|s|)) && ((j - a) % b == 0 && i != j))) ==> s[i] != s[j])
      if (*) {
        if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_11)) {
          assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@85.12--85.134) [60795]"}
            b_24 != 0;
          if ((i_11 - a_2) mod b_24 == 0) {
            if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_11)) {
              assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@85.12--85.134) [60796]"}
                b_24 != 0;
            }
          }
        }
        if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_11) && ((i_11 - a_2) mod b_24 == 0 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_11) && ((j_11 - a_2) mod b_24 == 0 && i_11 != j_11)))) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (random_access.vpr@85.12--85.134) [60797]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (random_access.vpr@85.12--85.134) [60798]"}
            i_11 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might be negative. (random_access.vpr@85.12--85.134) [60799]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might exceed sequence length. (random_access.vpr@85.12--85.134) [60800]"}
            j_11 < Seq#Length(s_2);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), j_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), j_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#Index(s_2, j_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_1), Seq#Index(s_2, j_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), j_1), Seq#Index(s_2, i_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_1), Seq#Index(s_2, i_1) } { Seq#Index(s_2, i_1), Seq#Index(s_2, j_1) }
      Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_1) && ((i_1 - a_2) mod b_24 == 0 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), j_1) && ((j_1 - a_2) mod b_24 == 0 && i_1 != j_1))) ==> Seq#Index(s_2, i_1) != Seq#Index(s_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_12)) {
          assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@86.12--86.78) [60801]"}
            b_24 != 0;
        }
        if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_12) && (i_12 - a_2) mod b_24 == 0) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (random_access.vpr@86.12--86.78) [60802]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (random_access.vpr@86.12--86.78) [60803]"}
            i_12 < Seq#Length(s_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (random_access.vpr@86.12--86.78) [60804]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) && (i_3 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3_1) && (i_3_1 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_3) != Seq#Index(s_2, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(s_2, i_3) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_3) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) } { Seq#Index(s_2, i_3) }
        (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) && (i_3 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange9(Seq#Index(s_2, i_3)) && invRecv9(Seq#Index(s_2, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv9(o_4)) && (invRecv9(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(s_2, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(s_2, i_3) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_3) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) } { Seq#Index(s_2, i_3) }
        Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_3) && (i_3 - a_2) mod b_24 == 0 ==> Seq#Index(s_2, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv9(o_4)) && (invRecv9(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv9(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv9(o_4)) && (invRecv9(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: j := 0 -- random_access.vpr@88.3--88.18
    j_2_1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert j * b % b == 0 -- random_access.vpr@89.3--89.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of j * b % b == 0
      assert {:msg "  Assert might fail. Divisor b might be zero. (random_access.vpr@89.10--89.22) [60805]"}
        b_24 != 0;
    assert {:msg "  Assert might fail. Assertion j * b % b == 0 might not hold. (random_access.vpr@89.10--89.22) [60806]"}
      j_2_1 * b_24 mod b_24 == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (a + j * b < |s|) -- random_access.vpr@91.3--103.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= j might not hold on entry. Assertion 0 <= j might not hold. (random_access.vpr@92.15--92.21) [60807]"}
          0 <= j_2_1;
        assert {:msg "  Loop invariant j * b % b == 0 might not hold on entry. Assertion j * b % b == 0 might not hold. (random_access.vpr@93.15--93.27) [60808]"}
          j_2_1 * b_24 mod b_24 == 0;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver s[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write)) might not hold on entry. Quantified resource s[i].f might not be injective. (random_access.vpr@94.15--94.81) [60809]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered10(i_4_1), neverTriggered10(i_4_2) }
            (((i_4_1 != i_4_2 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) && (i_4_1 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_2) && (i_4_2 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_4_1) != Seq#Index(s_2, i_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write)) might not hold on entry. There might be insufficient permission to access s[i].f (random_access.vpr@94.15--94.81) [60810]"}
            (forall i_4_1: int ::
            { Seq#Index(s_2, i_4_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) } { Seq#Index(s_2, i_4_1) }
            Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) && (i_4_1 - a_2) mod b_24 == 0 ==> Mask[Seq#Index(s_2, i_4_1), f_7] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver s[i]
          assume (forall i_4_1: int ::
            { Seq#Index(s_2, i_4_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) } { Seq#Index(s_2, i_4_1) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_4_1) && (i_4_1 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange10(Seq#Index(s_2, i_4_1)) && invRecv10(Seq#Index(s_2, i_4_1)) == i_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv10(o_4)) && (invRecv10(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(s_2, invRecv10(o_4)) == o_4
          );
        
        // -- assume permission updates for field f
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv10(o_4)) && (invRecv10(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(s_2, invRecv10(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv10(o_4)) && (invRecv10(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Havoc loop written variables (except locals)
      havoc j_2_1;
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= j_2_1;
        assume state(Heap, Mask);
        
        // -- Check definedness of j * b % b == 0
          assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@93.15--93.27) [60811]"}
            b_24 != 0;
        assume j_2_1 * b_24 mod b_24 == 0;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write))
          if (*) {
            if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_16)) {
              assert {:msg "  Contract might not be well-formed. Divisor b might be zero. (random_access.vpr@94.15--94.81) [60812]"}
                b_24 != 0;
            }
            if (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_16) && (i_16 - a_2) mod b_24 == 0) {
              assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (random_access.vpr@94.15--94.81) [60813]"}
                i_16 >= 0;
              assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (random_access.vpr@94.15--94.81) [60814]"}
                i_16 < Seq#Length(s_2);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource s[i].f might not be injective. (random_access.vpr@94.15--94.81) [60815]"}
          (forall i_6_1: int, i_6_2: int ::
          
          (((i_6_1 != i_6_2 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) && (i_6_1 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_2) && (i_6_2 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_6_1) != Seq#Index(s_2, i_6_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_6_1: int ::
            { Seq#Index(s_2, i_6_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) } { Seq#Index(s_2, i_6_1) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) && (i_6_1 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange11(Seq#Index(s_2, i_6_1)) && invRecv11(Seq#Index(s_2, i_6_1)) == i_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv11(o_4)) && (invRecv11(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(s_2, invRecv11(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_6_1: int ::
            { Seq#Index(s_2, i_6_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) } { Seq#Index(s_2, i_6_1) }
            Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_6_1) && (i_6_1 - a_2) mod b_24 == 0 ==> Seq#Index(s_2, i_6_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            (((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv11(o_4)) && (invRecv11(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv11(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv11(o_4)) && (invRecv11(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
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
        assume 0 <= j_2_1;
        assume j_2_1 * b_24 mod b_24 == 0;
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource s[i].f might not be injective. (random_access.vpr@94.15--94.81) [60816]"}
          (forall i_7_1: int, i_7_2: int ::
          
          (((i_7_1 != i_7_2 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) && (i_7_1 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_2) && (i_7_2 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_7_1) != Seq#Index(s_2, i_7_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_7_1: int ::
            { Seq#Index(s_2, i_7_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) } { Seq#Index(s_2, i_7_1) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) && (i_7_1 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange12(Seq#Index(s_2, i_7_1)) && invRecv12(Seq#Index(s_2, i_7_1)) == i_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv12(o_4)) && (invRecv12(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(s_2, invRecv12(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_7_1: int ::
            { Seq#Index(s_2, i_7_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) } { Seq#Index(s_2, i_7_1) }
            Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_7_1) && (i_7_1 - a_2) mod b_24 == 0 ==> Seq#Index(s_2, i_7_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            (((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv12(o_4)) && (invRecv12(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv12(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv12(o_4)) && (invRecv12(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume a_2 + j_2_1 * b_24 < Seq#Length(s_2);
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: assert (a + j * b in [a..|s|)) -- random_access.vpr@96.5--96.29
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (a + j * b in [a..|s|)) might not hold. (random_access.vpr@96.12--96.29) [60817]"}
              Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), a_2 + j_2_1 * b_24);
            assume state(Heap, Mask);
          
          // -- Translating statement: assert j * b % b == 0 -- random_access.vpr@97.5--97.24
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of j * b % b == 0
              assert {:msg "  Assert might fail. Divisor b might be zero. (random_access.vpr@97.12--97.24) [60818]"}
                b_24 != 0;
            assert {:msg "  Assert might fail. Assertion j * b % b == 0 might not hold. (random_access.vpr@97.12--97.24) [60819]"}
              j_2_1 * b_24 mod b_24 == 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: s[a + j * b].f := j -- random_access.vpr@99.5--99.20
            
            // -- Check definedness of s[a + j * b]
              assert {:msg "  Assignment might fail. Index s[a + j * b] into s might be negative. (random_access.vpr@99.5--99.20) [60820]"}
                a_2 + j_2_1 * b_24 >= 0;
              assert {:msg "  Assignment might fail. Index s[a + j * b] into s might exceed sequence length. (random_access.vpr@99.5--99.20) [60821]"}
                a_2 + j_2_1 * b_24 < Seq#Length(s_2);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access s[a + j * b].f (random_access.vpr@99.5--99.20) [60822]"}
              FullPerm == Mask[Seq#Index(s_2, a_2 + j_2_1 * b_24), f_7];
            Heap := Heap[Seq#Index(s_2, a_2 + j_2_1 * b_24), f_7:=j_2_1];
            assume state(Heap, Mask);
          
          // -- Translating statement: j := j + 1 -- random_access.vpr@100.5--100.15
            j_2_1 := j_2_1 + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale j * b % b == 0 -- random_access.vpr@102.12--102.24
            
            // -- Check definedness of j * b % b == 0
              assert {:msg "  Inhale might fail. Divisor b might be zero. (random_access.vpr@102.12--102.24) [60823]"}
                b_24 != 0;
            assume j_2_1 * b_24 mod b_24 == 0;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= j might not be preserved. Assertion 0 <= j might not hold. (random_access.vpr@92.15--92.21) [60824]"}
          0 <= j_2_1;
        assert {:msg "  Loop invariant j * b % b == 0 might not be preserved. Assertion j * b % b == 0 might not hold. (random_access.vpr@93.15--93.27) [60825]"}
          j_2_1 * b_24 mod b_24 == 0;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver s[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write)) might not be preserved. Quantified resource s[i].f might not be injective. (random_access.vpr@94.15--94.81) [60826]"}
            (forall i_8_2: int, i_8_3: int ::
            { neverTriggered13(i_8_2), neverTriggered13(i_8_3) }
            (((i_8_2 != i_8_3 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) && (i_8_2 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_3) && (i_8_3 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_8_2) != Seq#Index(s_2, i_8_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [a..|s|)) } { s[i] } (i in [a..|s|)) && (i - a) % b == 0 ==> acc(s[i].f, write)) might not be preserved. There might be insufficient permission to access s[i].f (random_access.vpr@94.15--94.81) [60827]"}
            (forall i_8_2: int ::
            { Seq#Index(s_2, i_8_2) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) } { Seq#Index(s_2, i_8_2) }
            Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) && (i_8_2 - a_2) mod b_24 == 0 ==> Mask[Seq#Index(s_2, i_8_2), f_7] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver s[i]
          assume (forall i_8_2: int ::
            { Seq#Index(s_2, i_8_2) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) } { Seq#Index(s_2, i_8_2) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_8_2) && (i_8_2 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange13(Seq#Index(s_2, i_8_2)) && invRecv13(Seq#Index(s_2, i_8_2)) == i_8_2
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv13(o_4)) && (invRecv13(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange13(o_4)) ==> Seq#Index(s_2, invRecv13(o_4)) == o_4
          );
        
        // -- assume permission updates for field f
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv13(o_4)) && (invRecv13(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange13(o_4)) ==> Seq#Index(s_2, invRecv13(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv13(o_4)) && (invRecv13(o_4) - a_2) mod b_24 == 0) && (NoPerm < FullPerm && qpRange13(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(a_2 + j_2_1 * b_24 < Seq#Length(s_2));
      assume state(Heap, Mask);
      assume 0 <= j_2_1;
      assume j_2_1 * b_24 mod b_24 == 0;
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource s[i].f might not be injective. (random_access.vpr@94.15--94.81) [60828]"}
        (forall i_9_1: int, i_9_2: int ::
        
        (((i_9_1 != i_9_2 && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) && (i_9_1 - a_2) mod b_24 == 0)) && (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_2) && (i_9_2 - a_2) mod b_24 == 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_9_1) != Seq#Index(s_2, i_9_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_9_1: int ::
          { Seq#Index(s_2, i_9_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) } { Seq#Index(s_2, i_9_1) }
          (Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) && (i_9_1 - a_2) mod b_24 == 0) && NoPerm < FullPerm ==> qpRange14(Seq#Index(s_2, i_9_1)) && invRecv14(Seq#Index(s_2, i_9_1)) == i_9_1
        );
        assume (forall o_4: Ref ::
          { invRecv14(o_4) }
          ((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv14(o_4)) && (invRecv14(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(s_2, invRecv14(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_9_1: int ::
          { Seq#Index(s_2, i_9_1) } { Seq#ContainsTrigger(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) } { Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) } { Seq#Index(s_2, i_9_1) }
          Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), i_9_1) && (i_9_1 - a_2) mod b_24 == 0 ==> Seq#Index(s_2, i_9_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv14(o_4)) && (invRecv14(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv14(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(Seq#Range(a_2, Seq#Length(s_2)), invRecv14(o_4)) && (invRecv14(o_4) - a_2) mod b_24 == 0) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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