// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:20:11
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0512.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0512-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_8: Ref, f_14: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_8, f_14] }
  Heap[o_8, $allocated] ==> Heap[Heap[o_8, f_14], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_53: Ref, f_67: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_53, f_67] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_53, f_67) ==> Heap[o_53, f_67] == ExhaleHeap[o_53, f_67]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_67: (Field A B) ::
    { ExhaleHeap[o2_25, f_67] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_67] ==> Heap[o2_25, f_67] == ExhaleHeap[o2_25, f_67]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25), ExhaleHeap[null, WandMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> Heap[null, WandMaskField(pm_f_25)] == ExhaleHeap[null, WandMaskField(pm_f_25)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_67: (Field A B) ::
    { ExhaleHeap[o2_25, f_67] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_67] ==> Heap[o2_25, f_67] == ExhaleHeap[o2_25, f_67]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_53: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_53, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_53, $allocated] ==> ExhaleHeap[o_53, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_8: Ref, f_63: (Field A B), v: B ::
  { Heap[o_8, f_63:=v] }
  succHeap(Heap, Heap[o_8, f_63:=v])
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

function  neverTriggered1(j_9_1: int): bool;
function  neverTriggered2(j_13_2: int): bool;
function  neverTriggered3(j_16_1: int): bool;
function  neverTriggered4(j_9_1: int): bool;
function  neverTriggered5(j_13_2: int): bool;
function  neverTriggered6(j_16_1: int): bool;
function  neverTriggered7(j_4_1: int): bool;
function  neverTriggered8(j_5: int): bool;
function  neverTriggered9(j_3: int): bool;
function  neverTriggered10(j_5: int): bool;
function  neverTriggered11(j_8_2: int): bool;
function  neverTriggered12(j_13_2: int): bool;
function  neverTriggered13(j_14_2: int): bool;
function  neverTriggered14(j_3: int): bool;
function  neverTriggered15(j_5: int): bool;
function  neverTriggered16(j_8_2: int): bool;
function  neverTriggered17(j_13_2: int): bool;
function  neverTriggered18(i_fresh_rw_0_1: int): bool;
function  neverTriggered19(j_2_2: int): bool;
function  neverTriggered20(j_3: int): bool;
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
function  invRecv15(recv: Ref): int;
function  invRecv16(recv: Ref): int;
function  invRecv17(recv: Ref): int;
function  invRecv18(recv: Ref): int;
function  invRecv19(recv: Ref): int;
function  invRecv20(recv: Ref): int;
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
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(recv: Ref): bool;
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: sumContrib
// - height 1: seqToSeqHelper_frac
// - height 0: seqToSeqHelper_wild
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
function  loc<CT>(a_3: (VCTArrayDomainType CT), i_6: int): CT;

// Translation of domain function alen
function  alen<CT>(a_3: (VCTArrayDomainType CT)): int;

// Translation of domain axiom len_nonneg
axiom (forall <CT> a_2: (VCTArrayDomainType CT) ::
  { (alen(a_2): int) }
  (alen(a_2): int) >= 0
);

// Translation of domain axiom loc_inject
axiom (forall <CT> a_2: (VCTArrayDomainType CT), i: int, j: int ::
  { (loc(a_2, i): CT), (loc(a_2, j): CT) }
  i >= 0 && (j >= 0 && (i < (alen(a_2): int) && (j < (alen(a_2): int) && i != j))) ==> (loc(a_2, i): CT) != (loc(a_2, j): CT)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique item: Field NormalField int;
axiom !IsPredicateField(item);
axiom !IsWandField(item);

// ==================================================
// Translation of function seqToSeqHelper_wild
// ==================================================

// Uninterpreted function definitions
function  seqToSeqHelper_wild(Heap: HeapType, xs: (Seq Ref), i: int): Seq int;
function  seqToSeqHelper_wild'(Heap: HeapType, xs: (Seq Ref), i: int): Seq int;
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { seqToSeqHelper_wild(Heap, xs, i) }
  seqToSeqHelper_wild(Heap, xs, i) == seqToSeqHelper_wild'(Heap, xs, i) && dummyFunction(seqToSeqHelper_wild#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { seqToSeqHelper_wild'(Heap, xs, i) }
  dummyFunction(seqToSeqHelper_wild#triggerStateless(xs, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), seqToSeqHelper_wild(Heap, xs, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (0 <= i && i <= Seq#Length(xs)) && (forall k: int, j: int ::
    { Seq#Index(xs, k), Seq#Index(xs, j) }
    k >= 0 && (k < Seq#Length(xs) && (j >= 0 && (j < Seq#Length(xs) && k != j))) ==> Seq#Index(xs, k) != Seq#Index(xs, j)
  ) ==> seqToSeqHelper_wild(Heap, xs, i) == Seq#Append(Seq#Singleton(Heap[Seq#Index(xs, i), item]), seqToSeqHelper_wild'(Heap, xs, i + 1))
);

// Framing axioms
function  seqToSeqHelper_wild#frame(frame: FrameType, xs: (Seq Ref), i: int): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), seqToSeqHelper_wild'(Heap, xs, i) }
  state(Heap, Mask) ==> seqToSeqHelper_wild'(Heap, xs, i) == seqToSeqHelper_wild#frame(FrameFragment(seqToSeqHelper_wild#condqp1(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, wildcard)) in function seqToSeqHelper_wild
// ==================================================

function  seqToSeqHelper_wild#condqp1(Heap: HeapType, xs_1_1: (Seq Ref), i_1_1_1: int): int;
function  sk_seqToSeqHelper_wild#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), i: int ::
  { seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  (0 <= sk_seqToSeqHelper_wild#condqp1(seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i)) && sk_seqToSeqHelper_wild#condqp1(seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i)) < Seq#Length(xs) <==> 0 <= sk_seqToSeqHelper_wild#condqp1(seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i)) && sk_seqToSeqHelper_wild#condqp1(seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i)) < Seq#Length(xs)) && (0 <= sk_seqToSeqHelper_wild#condqp1(seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i)) && sk_seqToSeqHelper_wild#condqp1(seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i)) < Seq#Length(xs) ==> Heap2Heap[Seq#Index(xs, sk_seqToSeqHelper_wild#condqp1(seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i))), item] == Heap1Heap[Seq#Index(xs, sk_seqToSeqHelper_wild#condqp1(seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i), seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i))), item]) ==> seqToSeqHelper_wild#condqp1(Heap2Heap, xs, i) == seqToSeqHelper_wild#condqp1(Heap1Heap, xs, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), seqToSeqHelper_wild'(Heap, xs, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || seqToSeqHelper_wild#trigger(FrameFragment(seqToSeqHelper_wild#condqp1(Heap, xs, i)), xs, i)) ==> (0 <= i && i <= Seq#Length(xs)) && (forall k_1: int, j_3: int ::
    { Seq#Index(xs, k_1), Seq#Index(xs, j_3) }
    k_1 >= 0 && (k_1 < Seq#Length(xs) && (j_3 >= 0 && (j_3 < Seq#Length(xs) && k_1 != j_3))) ==> Seq#Index(xs, k_1) != Seq#Index(xs, j_3)
  ) ==> Seq#Length(seqToSeqHelper_wild'(Heap, xs, i)) == Seq#Length(xs) - i
);
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), seqToSeqHelper_wild'(Heap, xs, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || seqToSeqHelper_wild#trigger(FrameFragment(seqToSeqHelper_wild#condqp1(Heap, xs, i)), xs, i)) ==> (0 <= i && i <= Seq#Length(xs)) && (forall k_1: int, j_3: int ::
    { Seq#Index(xs, k_1), Seq#Index(xs, j_3) }
    k_1 >= 0 && (k_1 < Seq#Length(xs) && (j_3 >= 0 && (j_3 < Seq#Length(xs) && k_1 != j_3))) ==> Seq#Index(xs, k_1) != Seq#Index(xs, j_3)
  ) ==> (forall j_5: int ::
    { Seq#Index(xs, j_5) }
    i <= j_5 && j_5 < Seq#Length(xs) ==> Seq#Index(seqToSeqHelper_wild'(Heap, xs, i), j_5 - i) == Heap[Seq#Index(xs, j_5), item]
  )
);

// Trigger function (controlling recursive postconditions)
function  seqToSeqHelper_wild#trigger(frame: FrameType, xs: (Seq Ref), i: int): bool;

// State-independent trigger function
function  seqToSeqHelper_wild#triggerStateless(xs: (Seq Ref), i: int): Seq int;

// Check contract well-formedness and postcondition
procedure seqToSeqHelper_wild#definedness(xs: (Seq Ref), i: int) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var k_16: int;
  var j_14: int;
  var j_15: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var k_19: int;
  var j_12: int;
  var j_13: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_6_2: int;
  var j_14_2: int;
  var ExhaleHeap: HeapType;
  var j_2: int;
  var j_18_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume 0 <= i;
        assume i <= Seq#Length(xs);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
          if (*) {
            if (k_16 >= 0 && (k_16 < Seq#Length(xs) && (j_14 >= 0 && (j_14 < Seq#Length(xs) && k_16 != j_14)))) {
              assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (0512.vpr@8.12--8.104) [72077]"}
                k_16 >= 0;
              assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (0512.vpr@8.12--8.104) [72078]"}
                k_16 < Seq#Length(xs);
              assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@8.12--8.104) [72079]"}
                j_14 >= 0;
              assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@8.12--8.104) [72080]"}
                j_14 < Seq#Length(xs);
            }
            assume false;
          }
        assume (forall k_3: int, j_7_1: int ::
          { Seq#Index(xs, k_3), Seq#Index(xs, j_7_1) }
          k_3 >= 0 && (k_3 < Seq#Length(xs) && (j_7_1 >= 0 && (j_7_1 < Seq#Length(xs) && k_3 != j_7_1))) ==> Seq#Index(xs, k_3) != Seq#Index(xs, j_7_1)
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, wildcard))
          if (*) {
            if (0 <= j_15 && j_15 < Seq#Length(xs)) {
              assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@9.13--9.78) [72081]"}
                j_15 >= 0;
              assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@9.13--9.78) [72082]"}
                j_15 < Seq#Length(xs);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@9.13--9.78) [72083]"}
          (forall j_9_1: int, j_9_2: int ::
          
          (((j_9_1 != j_9_2 && (0 <= j_9_1 && j_9_1 < Seq#Length(xs))) && (0 <= j_9_2 && j_9_2 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_9_1) != Seq#Index(xs, j_9_2)
        );
        
        // -- Define Inverse Function
          assume (forall j_9_1: int ::
            { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
            0 <= j_9_1 && j_9_1 < Seq#Length(xs) ==> qpRange1(Seq#Index(xs, j_9_1)) && invRecv1(Seq#Index(xs, j_9_1)) == j_9_1
          );
          assume (forall o_9: Ref ::
            { invRecv1(o_9) }
            (0 <= invRecv1(o_9) && invRecv1(o_9) < Seq#Length(xs)) && qpRange1(o_9) ==> Seq#Index(xs, invRecv1(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall j_9_1: int ::
            { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
            0 <= j_9_1 && j_9_1 < Seq#Length(xs) ==> Seq#Index(xs, j_9_1) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, item] }
            ((0 <= invRecv1(o_9) && invRecv1(o_9) < Seq#Length(xs)) && qpRange1(o_9) ==> Seq#Index(xs, invRecv1(o_9)) == o_9 && Mask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv1(o_9) && invRecv1(o_9) < Seq#Length(xs)) && qpRange1(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume 0 <= i;
      assume i <= Seq#Length(xs);
      assume state(Heap, Mask);
      
      // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
        if (*) {
          if (k_19 >= 0 && (k_19 < Seq#Length(xs) && (j_12 >= 0 && (j_12 < Seq#Length(xs) && k_19 != j_12)))) {
            assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (0512.vpr@8.12--8.104) [72084]"}
              k_19 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (0512.vpr@8.12--8.104) [72085]"}
              k_19 < Seq#Length(xs);
            assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@8.12--8.104) [72086]"}
              j_12 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@8.12--8.104) [72087]"}
              j_12 < Seq#Length(xs);
          }
          assume false;
        }
      assume (forall k_5: int, j_11_1: int ::
        { Seq#Index(xs, k_5), Seq#Index(xs, j_11_1) }
        k_5 >= 0 && (k_5 < Seq#Length(xs) && (j_11_1 >= 0 && (j_11_1 < Seq#Length(xs) && k_5 != j_11_1))) ==> Seq#Index(xs, k_5) != Seq#Index(xs, j_11_1)
      );
      assume state(Heap, Mask);
      
      // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, wildcard))
        if (*) {
          if (0 <= j_13 && j_13 < Seq#Length(xs)) {
            assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@9.13--9.78) [72088]"}
              j_13 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@9.13--9.78) [72089]"}
              j_13 < Seq#Length(xs);
          }
          assume false;
        }
      havoc QPMask;
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@9.13--9.78) [72090]"}
        (forall j_13_2: int, j_13_3: int ::
        
        (((j_13_2 != j_13_3 && (0 <= j_13_2 && j_13_2 < Seq#Length(xs))) && (0 <= j_13_3 && j_13_3 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_13_2) != Seq#Index(xs, j_13_3)
      );
      
      // -- Define Inverse Function
        assume (forall j_13_2: int ::
          { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
          0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> qpRange2(Seq#Index(xs, j_13_2)) && invRecv2(Seq#Index(xs, j_13_2)) == j_13_2
        );
        assume (forall o_9: Ref ::
          { invRecv2(o_9) }
          (0 <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && qpRange2(o_9) ==> Seq#Index(xs, invRecv2(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_13_2: int ::
          { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
          0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> Seq#Index(xs, j_13_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, item] }
          ((0 <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && qpRange2(o_9) ==> Seq#Index(xs, invRecv2(o_9)) == o_9 && Mask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv2(o_9) && invRecv2(o_9) < Seq#Length(xs)) && qpRange2(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume i < Seq#Length(xs);
      assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of Seq(xs[i].item) ++ seqToSeqHelper_wild(xs, i + 1)
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might be negative. (0512.vpr@6.1--16.2) [72091]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might exceed sequence length. (0512.vpr@6.1--16.2) [72092]"}
        i < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[i].item (0512.vpr@6.1--16.2) [72093]"}
        HasDirectPerm(Mask, Seq#Index(xs, i), item);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Assertion 0 <= i + 1 might not hold. (0512.vpr@15.22--15.52) [72094]"}
          0 <= i + 1;
        assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Assertion i + 1 <= |xs| might not hold. (0512.vpr@15.22--15.52) [72095]"}
          i + 1 <= Seq#Length(xs);
        if (*) {
          if (k_6_2 >= 0 && (k_6_2 < Seq#Length(xs) && (j_14_2 >= 0 && (j_14_2 < Seq#Length(xs) && k_6_2 != j_14_2)))) {
            assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Assertion xs[k] != xs[j] might not hold. (0512.vpr@15.22--15.52) [72096]"}
              Seq#Index(xs, k_6_2) != Seq#Index(xs, j_14_2);
          }
          assume false;
        }
        assume (forall k_7_1_1: int, j_15_1: int ::
          { Seq#Index(xs, k_7_1_1), Seq#Index(xs, j_15_1) }
          k_7_1_1 >= 0 && (k_7_1_1 < Seq#Length(xs) && (j_15_1 >= 0 && (j_15_1 < Seq#Length(xs) && k_7_1_1 != j_15_1))) ==> Seq#Index(xs, k_7_1_1) != Seq#Index(xs, j_15_1)
        );
        havoc QPMask;
        // wild card assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@15.22--15.52) [72097]"}
          (forall j_16_1: int ::
          
          0 <= j_16_1 && j_16_1 < Seq#Length(xs) ==> Mask[Seq#Index(xs, j_16_1), item] > NoPerm
        );
        assume (forall j_16_1: int ::
          
          0 <= j_16_1 && j_16_1 < Seq#Length(xs) ==> wildcard < Mask[Seq#Index(xs, j_16_1), item]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Fraction wildcard might be negative. (0512.vpr@15.22--15.52) [72098]"}
            (forall j_16_1: int ::
            { Seq#Index(xs, j_16_1) } { Seq#Index(xs, j_16_1) }
            (0 <= j_16_1 && j_16_1 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, j_16_1), item]) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Quantified resource xs[j].item might not be injective. (0512.vpr@15.22--15.52) [72099]"}
            (forall j_16_1: int, j_16_2: int ::
            { neverTriggered3(j_16_1), neverTriggered3(j_16_2) }
            (((j_16_1 != j_16_2 && (0 <= j_16_1 && j_16_1 < Seq#Length(xs))) && (0 <= j_16_2 && j_16_2 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_16_1) != Seq#Index(xs, j_16_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@15.22--15.52) [72100]"}
            (forall j_16_1: int ::
            { Seq#Index(xs, j_16_1) } { Seq#Index(xs, j_16_1) }
            0 <= j_16_1 && j_16_1 < Seq#Length(xs) ==> wildcard > NoPerm ==> Mask[Seq#Index(xs, j_16_1), item] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_16_1: int ::
            { Seq#Index(xs, j_16_1) } { Seq#Index(xs, j_16_1) }
            (0 <= j_16_1 && j_16_1 < Seq#Length(xs)) && NoPerm < wildcard ==> qpRange3(Seq#Index(xs, j_16_1)) && invRecv3(Seq#Index(xs, j_16_1)) == j_16_1
          );
          assume (forall o_9: Ref ::
            { invRecv3(o_9) }
            (0 <= invRecv3(o_9) && invRecv3(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange3(o_9)) ==> Seq#Index(xs, invRecv3(o_9)) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume seqToSeqHelper_wild#trigger(FrameFragment(seqToSeqHelper_wild#condqp1(Heap, xs, i + 1)), xs, i + 1);
      }
  
  // -- Translate function body
    Result := Seq#Append(Seq#Singleton(Heap[Seq#Index(xs, i), item]), seqToSeqHelper_wild(Heap, xs, i + 1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of seqToSeqHelper_wild might not hold. Assertion |result| == |xs| - i might not hold. (0512.vpr@12.11--12.31) [72101]"}
      Seq#Length(Result) == Seq#Length(xs) - i;
    
    // -- Check definedness of (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> result[j - i] == xs[j].item)
      if (*) {
        if (i <= j_2 && j_2 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index result[j - i] into result might be negative. (0512.vpr@13.12--13.79) [72102]"}
            j_2 - i >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[j - i] into result might exceed sequence length. (0512.vpr@13.12--13.79) [72103]"}
            j_2 - i < Seq#Length(Result);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@13.12--13.79) [72104]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@13.12--13.79) [72105]"}
            j_2 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[j].item (0512.vpr@13.12--13.79) [72106]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(xs, j_2), item);
        }
        assume false;
      }
    if (*) {
      if (i <= j_18_1 && j_18_1 < Seq#Length(xs)) {
        assert {:msg "  Postcondition of seqToSeqHelper_wild might not hold. Assertion result[j - i] == xs[j].item might not hold. (0512.vpr@13.12--13.79) [72107]"}
          Seq#Index(Result, j_18_1 - i) == Heap[Seq#Index(xs, j_18_1), item];
      }
      assume false;
    }
    assume (forall j_19_1: int ::
      { Seq#Index(xs, j_19_1) }
      i <= j_19_1 && j_19_1 < Seq#Length(xs) ==> Seq#Index(Result, j_19_1 - i) == Heap[Seq#Index(xs, j_19_1), item]
    );
}

// ==================================================
// Translation of function seqToSeqHelper_frac
// ==================================================

// Uninterpreted function definitions
function  seqToSeqHelper_frac(Heap: HeapType, xs: (Seq Ref), i: int): Seq int;
function  seqToSeqHelper_frac'(Heap: HeapType, xs: (Seq Ref), i: int): Seq int;
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { seqToSeqHelper_frac(Heap, xs, i) }
  seqToSeqHelper_frac(Heap, xs, i) == seqToSeqHelper_frac'(Heap, xs, i) && dummyFunction(seqToSeqHelper_frac#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { seqToSeqHelper_frac'(Heap, xs, i) }
  dummyFunction(seqToSeqHelper_frac#triggerStateless(xs, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), seqToSeqHelper_frac(Heap, xs, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> (0 <= i && i <= Seq#Length(xs)) && (forall k: int, j: int ::
    { Seq#Index(xs, k), Seq#Index(xs, j) }
    k >= 0 && (k < Seq#Length(xs) && (j >= 0 && (j < Seq#Length(xs) && k != j))) ==> Seq#Index(xs, k) != Seq#Index(xs, j)
  ) ==> seqToSeqHelper_frac(Heap, xs, i) == Seq#Append(Seq#Singleton(Heap[Seq#Index(xs, i), item]), seqToSeqHelper_frac'(Heap, xs, i + 1))
);

// Framing axioms
function  seqToSeqHelper_frac#frame(frame: FrameType, xs: (Seq Ref), i: int): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), seqToSeqHelper_frac'(Heap, xs, i) }
  state(Heap, Mask) ==> seqToSeqHelper_frac'(Heap, xs, i) == seqToSeqHelper_frac#frame(FrameFragment(seqToSeqHelper_frac#condqp2(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, 1 / 77)) in function seqToSeqHelper_frac
// ==================================================

function  seqToSeqHelper_frac#condqp2(Heap: HeapType, xs_1_1: (Seq Ref), i_1_1_1: int): int;
function  sk_seqToSeqHelper_frac#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), i: int ::
  { seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_seqToSeqHelper_frac#condqp2(seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i)) && sk_seqToSeqHelper_frac#condqp2(seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < 1 / 77 <==> (0 <= sk_seqToSeqHelper_frac#condqp2(seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i)) && sk_seqToSeqHelper_frac#condqp2(seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < 1 / 77) && ((0 <= sk_seqToSeqHelper_frac#condqp2(seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i)) && sk_seqToSeqHelper_frac#condqp2(seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < 1 / 77 ==> Heap2Heap[Seq#Index(xs, sk_seqToSeqHelper_frac#condqp2(seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i))), item] == Heap1Heap[Seq#Index(xs, sk_seqToSeqHelper_frac#condqp2(seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i), seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i))), item]) ==> seqToSeqHelper_frac#condqp2(Heap2Heap, xs, i) == seqToSeqHelper_frac#condqp2(Heap1Heap, xs, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), seqToSeqHelper_frac'(Heap, xs, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || seqToSeqHelper_frac#trigger(FrameFragment(seqToSeqHelper_frac#condqp2(Heap, xs, i)), xs, i)) ==> (0 <= i && i <= Seq#Length(xs)) && (forall k_1: int, j_3: int ::
    { Seq#Index(xs, k_1), Seq#Index(xs, j_3) }
    k_1 >= 0 && (k_1 < Seq#Length(xs) && (j_3 >= 0 && (j_3 < Seq#Length(xs) && k_1 != j_3))) ==> Seq#Index(xs, k_1) != Seq#Index(xs, j_3)
  ) ==> Seq#Length(seqToSeqHelper_frac'(Heap, xs, i)) == Seq#Length(xs) - i
);
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), seqToSeqHelper_frac'(Heap, xs, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || seqToSeqHelper_frac#trigger(FrameFragment(seqToSeqHelper_frac#condqp2(Heap, xs, i)), xs, i)) ==> (0 <= i && i <= Seq#Length(xs)) && (forall k_1: int, j_3: int ::
    { Seq#Index(xs, k_1), Seq#Index(xs, j_3) }
    k_1 >= 0 && (k_1 < Seq#Length(xs) && (j_3 >= 0 && (j_3 < Seq#Length(xs) && k_1 != j_3))) ==> Seq#Index(xs, k_1) != Seq#Index(xs, j_3)
  ) ==> (forall j_5: int ::
    { Seq#Index(xs, j_5) }
    i <= j_5 && j_5 < Seq#Length(xs) ==> Seq#Index(seqToSeqHelper_frac'(Heap, xs, i), j_5 - i) == Heap[Seq#Index(xs, j_5), item]
  )
);

// Trigger function (controlling recursive postconditions)
function  seqToSeqHelper_frac#trigger(frame: FrameType, xs: (Seq Ref), i: int): bool;

// State-independent trigger function
function  seqToSeqHelper_frac#triggerStateless(xs: (Seq Ref), i: int): Seq int;

// Check contract well-formedness and postcondition
procedure seqToSeqHelper_frac#definedness(xs: (Seq Ref), i: int) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var k_14: int;
  var j_16: int;
  var j_4: int;
  var QPMask: MaskType;
  var k_2: int;
  var j_17: int;
  var j_6: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_6_2: int;
  var j_14_2: int;
  var ExhaleHeap: HeapType;
  var j_10: int;
  var j_18_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume 0 <= i;
        assume i <= Seq#Length(xs);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
          if (*) {
            if (k_14 >= 0 && (k_14 < Seq#Length(xs) && (j_16 >= 0 && (j_16 < Seq#Length(xs) && k_14 != j_16)))) {
              assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (0512.vpr@20.12--20.104) [72108]"}
                k_14 >= 0;
              assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (0512.vpr@20.12--20.104) [72109]"}
                k_14 < Seq#Length(xs);
              assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@20.12--20.104) [72110]"}
                j_16 >= 0;
              assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@20.12--20.104) [72111]"}
                j_16 < Seq#Length(xs);
            }
            assume false;
          }
        assume (forall k_3: int, j_7_1: int ::
          { Seq#Index(xs, k_3), Seq#Index(xs, j_7_1) }
          k_3 >= 0 && (k_3 < Seq#Length(xs) && (j_7_1 >= 0 && (j_7_1 < Seq#Length(xs) && k_3 != j_7_1))) ==> Seq#Index(xs, k_3) != Seq#Index(xs, j_7_1)
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, 1 / 77))
          if (*) {
            if (0 <= j_4 && j_4 < Seq#Length(xs)) {
              assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@21.13--21.74) [72112]"}
                j_4 >= 0;
              assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@21.13--21.74) [72113]"}
                j_4 < Seq#Length(xs);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@21.13--21.74) [72114]"}
          (forall j_9_1: int, j_9_2: int ::
          
          (((j_9_1 != j_9_2 && (0 <= j_9_1 && j_9_1 < Seq#Length(xs))) && (0 <= j_9_2 && j_9_2 < Seq#Length(xs))) && NoPerm < 1 / 77) && NoPerm < 1 / 77 ==> Seq#Index(xs, j_9_1) != Seq#Index(xs, j_9_2)
        );
        
        // -- Define Inverse Function
          assume (forall j_9_1: int ::
            { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
            (0 <= j_9_1 && j_9_1 < Seq#Length(xs)) && NoPerm < 1 / 77 ==> qpRange4(Seq#Index(xs, j_9_1)) && invRecv4(Seq#Index(xs, j_9_1)) == j_9_1
          );
          assume (forall o_9: Ref ::
            { invRecv4(o_9) }
            ((0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(xs)) && NoPerm < 1 / 77) && qpRange4(o_9) ==> Seq#Index(xs, invRecv4(o_9)) == o_9
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 77 might be negative. (0512.vpr@21.13--21.74) [72115]"}
          (forall j_9_1: int ::
          { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
          0 <= j_9_1 && j_9_1 < Seq#Length(xs) ==> 1 / 77 >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall j_9_1: int ::
            { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
            (0 <= j_9_1 && j_9_1 < Seq#Length(xs)) && 1 / 77 > NoPerm ==> Seq#Index(xs, j_9_1) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, item] }
            (((0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(xs)) && NoPerm < 1 / 77) && qpRange4(o_9) ==> (NoPerm < 1 / 77 ==> Seq#Index(xs, invRecv4(o_9)) == o_9) && QPMask[o_9, item] == Mask[o_9, item] + 1 / 77) && (!(((0 <= invRecv4(o_9) && invRecv4(o_9) < Seq#Length(xs)) && NoPerm < 1 / 77) && qpRange4(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume 0 <= i;
      assume i <= Seq#Length(xs);
      assume state(Heap, Mask);
      
      // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
        if (*) {
          if (k_2 >= 0 && (k_2 < Seq#Length(xs) && (j_17 >= 0 && (j_17 < Seq#Length(xs) && k_2 != j_17)))) {
            assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (0512.vpr@20.12--20.104) [72116]"}
              k_2 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (0512.vpr@20.12--20.104) [72117]"}
              k_2 < Seq#Length(xs);
            assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@20.12--20.104) [72118]"}
              j_17 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@20.12--20.104) [72119]"}
              j_17 < Seq#Length(xs);
          }
          assume false;
        }
      assume (forall k_5: int, j_11_1: int ::
        { Seq#Index(xs, k_5), Seq#Index(xs, j_11_1) }
        k_5 >= 0 && (k_5 < Seq#Length(xs) && (j_11_1 >= 0 && (j_11_1 < Seq#Length(xs) && k_5 != j_11_1))) ==> Seq#Index(xs, k_5) != Seq#Index(xs, j_11_1)
      );
      assume state(Heap, Mask);
      
      // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, 1 / 77))
        if (*) {
          if (0 <= j_6 && j_6 < Seq#Length(xs)) {
            assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@21.13--21.74) [72120]"}
              j_6 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@21.13--21.74) [72121]"}
              j_6 < Seq#Length(xs);
          }
          assume false;
        }
      havoc QPMask;
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@21.13--21.74) [72122]"}
        (forall j_13_2: int, j_13_3: int ::
        
        (((j_13_2 != j_13_3 && (0 <= j_13_2 && j_13_2 < Seq#Length(xs))) && (0 <= j_13_3 && j_13_3 < Seq#Length(xs))) && NoPerm < 1 / 77) && NoPerm < 1 / 77 ==> Seq#Index(xs, j_13_2) != Seq#Index(xs, j_13_3)
      );
      
      // -- Define Inverse Function
        assume (forall j_13_2: int ::
          { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
          (0 <= j_13_2 && j_13_2 < Seq#Length(xs)) && NoPerm < 1 / 77 ==> qpRange5(Seq#Index(xs, j_13_2)) && invRecv5(Seq#Index(xs, j_13_2)) == j_13_2
        );
        assume (forall o_9: Ref ::
          { invRecv5(o_9) }
          ((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < 1 / 77) && qpRange5(o_9) ==> Seq#Index(xs, invRecv5(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 77 might be negative. (0512.vpr@21.13--21.74) [72123]"}
        (forall j_13_2: int ::
        { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
        0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> 1 / 77 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall j_13_2: int ::
          { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
          (0 <= j_13_2 && j_13_2 < Seq#Length(xs)) && 1 / 77 > NoPerm ==> Seq#Index(xs, j_13_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, item] }
          (((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < 1 / 77) && qpRange5(o_9) ==> (NoPerm < 1 / 77 ==> Seq#Index(xs, invRecv5(o_9)) == o_9) && QPMask[o_9, item] == Mask[o_9, item] + 1 / 77) && (!(((0 <= invRecv5(o_9) && invRecv5(o_9) < Seq#Length(xs)) && NoPerm < 1 / 77) && qpRange5(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume i < Seq#Length(xs);
      assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of Seq(xs[i].item) ++ seqToSeqHelper_frac(xs, i + 1)
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might be negative. (0512.vpr@18.1--28.2) [72124]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might exceed sequence length. (0512.vpr@18.1--28.2) [72125]"}
        i < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[i].item (0512.vpr@18.1--28.2) [72126]"}
        HasDirectPerm(Mask, Seq#Index(xs, i), item);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function seqToSeqHelper_frac might not hold. Assertion 0 <= i + 1 might not hold. (0512.vpr@27.22--27.52) [72127]"}
          0 <= i + 1;
        assert {:msg "  Precondition of function seqToSeqHelper_frac might not hold. Assertion i + 1 <= |xs| might not hold. (0512.vpr@27.22--27.52) [72128]"}
          i + 1 <= Seq#Length(xs);
        if (*) {
          if (k_6_2 >= 0 && (k_6_2 < Seq#Length(xs) && (j_14_2 >= 0 && (j_14_2 < Seq#Length(xs) && k_6_2 != j_14_2)))) {
            assert {:msg "  Precondition of function seqToSeqHelper_frac might not hold. Assertion xs[k] != xs[j] might not hold. (0512.vpr@27.22--27.52) [72129]"}
              Seq#Index(xs, k_6_2) != Seq#Index(xs, j_14_2);
          }
          assume false;
        }
        assume (forall k_7_1_1: int, j_15_1: int ::
          { Seq#Index(xs, k_7_1_1), Seq#Index(xs, j_15_1) }
          k_7_1_1 >= 0 && (k_7_1_1 < Seq#Length(xs) && (j_15_1 >= 0 && (j_15_1 < Seq#Length(xs) && k_7_1_1 != j_15_1))) ==> Seq#Index(xs, k_7_1_1) != Seq#Index(xs, j_15_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function seqToSeqHelper_frac might not hold. Fraction 1 / 77 might be negative. (0512.vpr@27.22--27.52) [72130]"}
            (forall j_16_1: int ::
            { Seq#Index(xs, j_16_1) } { Seq#Index(xs, j_16_1) }
            (0 <= j_16_1 && j_16_1 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, j_16_1), item]) ==> 1 / 77 >= NoPerm
          );
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function seqToSeqHelper_frac might not hold. Quantified resource xs[j].item might not be injective. (0512.vpr@27.22--27.52) [72131]"}
            (forall j_16_1: int, j_16_2: int ::
            { neverTriggered6(j_16_1), neverTriggered6(j_16_2) }
            (((j_16_1 != j_16_2 && (0 <= j_16_1 && j_16_1 < Seq#Length(xs))) && (0 <= j_16_2 && j_16_2 < Seq#Length(xs))) && NoPerm < 1 / 77) && NoPerm < 1 / 77 ==> Seq#Index(xs, j_16_1) != Seq#Index(xs, j_16_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function seqToSeqHelper_frac might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@27.22--27.52) [72132]"}
            (forall j_16_1: int ::
            { Seq#Index(xs, j_16_1) } { Seq#Index(xs, j_16_1) }
            0 <= j_16_1 && j_16_1 < Seq#Length(xs) ==> 1 / 77 > NoPerm ==> Mask[Seq#Index(xs, j_16_1), item] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_16_1: int ::
            { Seq#Index(xs, j_16_1) } { Seq#Index(xs, j_16_1) }
            (0 <= j_16_1 && j_16_1 < Seq#Length(xs)) && NoPerm < 1 / 77 ==> qpRange6(Seq#Index(xs, j_16_1)) && invRecv6(Seq#Index(xs, j_16_1)) == j_16_1
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            (0 <= invRecv6(o_9) && invRecv6(o_9) < Seq#Length(xs)) && (NoPerm < 1 / 77 && qpRange6(o_9)) ==> Seq#Index(xs, invRecv6(o_9)) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume seqToSeqHelper_frac#trigger(FrameFragment(seqToSeqHelper_frac#condqp2(Heap, xs, i + 1)), xs, i + 1);
      }
  
  // -- Translate function body
    Result := Seq#Append(Seq#Singleton(Heap[Seq#Index(xs, i), item]), seqToSeqHelper_frac(Heap, xs, i + 1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of seqToSeqHelper_frac might not hold. Assertion |result| == |xs| - i might not hold. (0512.vpr@24.11--24.31) [72133]"}
      Seq#Length(Result) == Seq#Length(xs) - i;
    
    // -- Check definedness of (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> result[j - i] == xs[j].item)
      if (*) {
        if (i <= j_10 && j_10 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index result[j - i] into result might be negative. (0512.vpr@25.12--25.79) [72134]"}
            j_10 - i >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[j - i] into result might exceed sequence length. (0512.vpr@25.12--25.79) [72135]"}
            j_10 - i < Seq#Length(Result);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@25.12--25.79) [72136]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@25.12--25.79) [72137]"}
            j_10 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[j].item (0512.vpr@25.12--25.79) [72138]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(xs, j_10), item);
        }
        assume false;
      }
    if (*) {
      if (i <= j_18_1 && j_18_1 < Seq#Length(xs)) {
        assert {:msg "  Postcondition of seqToSeqHelper_frac might not hold. Assertion result[j - i] == xs[j].item might not hold. (0512.vpr@25.12--25.79) [72139]"}
          Seq#Index(Result, j_18_1 - i) == Heap[Seq#Index(xs, j_18_1), item];
      }
      assume false;
    }
    assume (forall j_19_1: int ::
      { Seq#Index(xs, j_19_1) }
      i <= j_19_1 && j_19_1 < Seq#Length(xs) ==> Seq#Index(Result, j_19_1 - i) == Heap[Seq#Index(xs, j_19_1), item]
    );
}

// ==================================================
// Translation of function sumContrib
// ==================================================

// Uninterpreted function definitions
function  sumContrib(Heap: HeapType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm): int;
function  sumContrib'(Heap: HeapType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm): int;
axiom (forall Heap: HeapType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm ::
  { sumContrib(Heap, A_1, i, P_2) }
  sumContrib(Heap, A_1, i, P_2) == sumContrib'(Heap, A_1, i, P_2) && dummyFunction(sumContrib#triggerStateless(A_1, i, P_2))
);
axiom (forall Heap: HeapType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm ::
  { sumContrib'(Heap, A_1, i, P_2) }
  dummyFunction(sumContrib#triggerStateless(A_1, i, P_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm ::
  { state(Heap, Mask), sumContrib(Heap, A_1, i, P_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> (0 / 1 < P_2 && P_2 < 1 / 1) && (0 <= i && i <= (alen(A_1): int)) ==> sumContrib(Heap, A_1, i, P_2) == (if i == (alen(A_1): int) then 0 else Heap[(loc(A_1, i): Ref), item] + sumContrib'(Heap, A_1, i + 1, P_2))
);

// Framing axioms
function  sumContrib#frame(frame: FrameType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm): int;
axiom (forall Heap: HeapType, Mask: MaskType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm ::
  { state(Heap, Mask), sumContrib'(Heap, A_1, i, P_2) }
  state(Heap, Mask) ==> sumContrib'(Heap, A_1, i, P_2) == sumContrib#frame(FrameFragment(sumContrib#condqp3(Heap, A_1, i, P_2)), A_1, i, P_2)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { (loc(A, j): Ref) } 0 <= j && j < (alen(A): Int) ==> acc((loc(A, j): Ref).item, wildcard)) in function sumContrib
// ==================================================

function  sumContrib#condqp3(Heap: HeapType, A_1_1: (VCTArrayDomainType Ref), i_1_1_1: int, P_1_1: Perm): int;
function  sk_sumContrib#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm ::
  { sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (0 <= sk_sumContrib#condqp3(sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2)) && sk_sumContrib#condqp3(sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2)) < (alen(A_1): int) <==> 0 <= sk_sumContrib#condqp3(sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2)) && sk_sumContrib#condqp3(sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2)) < (alen(A_1): int)) && (0 <= sk_sumContrib#condqp3(sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2)) && sk_sumContrib#condqp3(sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2)) < (alen(A_1): int) ==> Heap2Heap[(loc(A_1, sk_sumContrib#condqp3(sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2))): Ref), item] == Heap1Heap[(loc(A_1, sk_sumContrib#condqp3(sumContrib#condqp3(Heap2Heap, A_1, i, P_2), sumContrib#condqp3(Heap1Heap, A_1, i, P_2))): Ref), item]) ==> sumContrib#condqp3(Heap2Heap, A_1, i, P_2) == sumContrib#condqp3(Heap1Heap, A_1, i, P_2)
);

// Trigger function (controlling recursive postconditions)
function  sumContrib#trigger(frame: FrameType, A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm): bool;

// State-independent trigger function
function  sumContrib#triggerStateless(A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm): int;

// Check contract well-formedness and postcondition
procedure sumContrib#definedness(A_1: (VCTArrayDomainType Ref), i: int, P_2: Perm) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume 0 / 1 < P_2;
    assume P_2 < 1 / 1;
    assume state(Heap, Mask);
    assume 0 <= i;
    assume i <= (alen(A_1): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (loc(A, j): Ref) } 0 <= j && j < (alen(A): Int) ==> acc((loc(A, j): Ref).item, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(A, j): Ref).item might not be injective. (0512.vpr@88.13--88.85) [72140]"}
      (forall j_4_1: int, j_4_2: int ::
      
      (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < (alen(A_1): int))) && (0 <= j_4_2 && j_4_2 < (alen(A_1): int))) && NoPerm < wildcard) && NoPerm < wildcard ==> (loc(A_1, j_4_1): Ref) != (loc(A_1, j_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_4_1: int ::
        { (loc(A_1, j_4_1): Ref) } { (loc(A_1, j_4_1): Ref) }
        0 <= j_4_1 && j_4_1 < (alen(A_1): int) ==> qpRange7((loc(A_1, j_4_1): Ref)) && invRecv7((loc(A_1, j_4_1): Ref)) == j_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (0 <= invRecv7(o_9) && invRecv7(o_9) < (alen(A_1): int)) && qpRange7(o_9) ==> (loc(A_1, invRecv7(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_4_1: int ::
        { (loc(A_1, j_4_1): Ref) } { (loc(A_1, j_4_1): Ref) }
        0 <= j_4_1 && j_4_1 < (alen(A_1): int) ==> (loc(A_1, j_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv7(o_9) && invRecv7(o_9) < (alen(A_1): int)) && qpRange7(o_9) ==> (loc(A_1, invRecv7(o_9)): Ref) == o_9 && Mask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv7(o_9) && invRecv7(o_9) < (alen(A_1): int)) && qpRange7(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i == (alen(A): Int) ? 0 : (loc(A, i): Ref).item + sumContrib(A, i + 1, P))
      if (i == (alen(A_1): int)) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access (loc(A, i): Ref).item (0512.vpr@85.1--91.2) [72141]"}
          HasDirectPerm(Mask, (loc(A_1, i): Ref), item);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sumContrib might not hold. Assertion 0 / 1 < P might not hold. (0512.vpr@90.40--90.63) [72142]"}
            0 / 1 < P_2;
          assert {:msg "  Precondition of function sumContrib might not hold. Assertion P < 1 / 1 might not hold. (0512.vpr@90.40--90.63) [72143]"}
            P_2 < 1 / 1;
          assert {:msg "  Precondition of function sumContrib might not hold. Assertion 0 <= i + 1 might not hold. (0512.vpr@90.40--90.63) [72144]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sumContrib might not hold. Assertion i + 1 <= (alen(A): Int) might not hold. (0512.vpr@90.40--90.63) [72145]"}
            i + 1 <= (alen(A_1): int);
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sumContrib might not hold. There might be insufficient permission to access (loc(A, j): Ref).item (0512.vpr@90.40--90.63) [72146]"}
            (forall j_5: int ::
            
            0 <= j_5 && j_5 < (alen(A_1): int) ==> Mask[(loc(A_1, j_5): Ref), item] > NoPerm
          );
          assume (forall j_5: int ::
            
            0 <= j_5 && j_5 < (alen(A_1): int) ==> wildcard < Mask[(loc(A_1, j_5): Ref), item]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sumContrib might not hold. Fraction wildcard might be negative. (0512.vpr@90.40--90.63) [72147]"}
              (forall j_5: int ::
              { (loc(A_1, j_5): Ref) } { (loc(A_1, j_5): Ref) }
              (0 <= j_5 && j_5 < (alen(A_1): int)) && dummyFunction(Heap[(loc(A_1, j_5): Ref), item]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver (loc(A, j): Ref) is injective
            assert {:msg "  Precondition of function sumContrib might not hold. Quantified resource (loc(A, j): Ref).item might not be injective. (0512.vpr@90.40--90.63) [72148]"}
              (forall j_5: int, j_5_1: int ::
              { neverTriggered8(j_5), neverTriggered8(j_5_1) }
              (((j_5 != j_5_1 && (0 <= j_5 && j_5 < (alen(A_1): int))) && (0 <= j_5_1 && j_5_1 < (alen(A_1): int))) && NoPerm < wildcard) && NoPerm < wildcard ==> (loc(A_1, j_5): Ref) != (loc(A_1, j_5_1): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sumContrib might not hold. There might be insufficient permission to access (loc(A, j): Ref).item (0512.vpr@90.40--90.63) [72149]"}
              (forall j_5: int ::
              { (loc(A_1, j_5): Ref) } { (loc(A_1, j_5): Ref) }
              0 <= j_5 && j_5 < (alen(A_1): int) ==> wildcard > NoPerm ==> Mask[(loc(A_1, j_5): Ref), item] > NoPerm
            );
          
          // -- assumptions for inverse of receiver (loc(A, j): Ref)
            assume (forall j_5: int ::
              { (loc(A_1, j_5): Ref) } { (loc(A_1, j_5): Ref) }
              (0 <= j_5 && j_5 < (alen(A_1): int)) && NoPerm < wildcard ==> qpRange8((loc(A_1, j_5): Ref)) && invRecv8((loc(A_1, j_5): Ref)) == j_5
            );
            assume (forall o_9: Ref ::
              { invRecv8(o_9) }
              (0 <= invRecv8(o_9) && invRecv8(o_9) < (alen(A_1): int)) && (NoPerm < wildcard && qpRange8(o_9)) ==> (loc(A_1, invRecv8(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sumContrib#trigger(FrameFragment(sumContrib#condqp3(Heap, A_1, i + 1, P_2)), A_1, i + 1, P_2);
        }
      }
  
  // -- Translate function body
    Result := (if i == (alen(A_1): int) then 0 else Heap[(loc(A_1, i): Ref), item] + sumContrib(Heap, A_1, i + 1, P_2));
}

// ==================================================
// Translation of method method_seqToSeqHelper
// ==================================================

procedure method_seqToSeqHelper(xs: (Seq Ref), i: int) returns (res: (Seq int))
  modifies Heap, Mask;
{
  var k_20: int;
  var j_8: int;
  var j_22: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_9: int;
  var j_23: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_2_2: int;
  var j_11_1: int;
  var ExhaleHeap: HeapType;
  var tail_1: (Seq int);
  var j_9_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume i <= Seq#Length(xs);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
      if (*) {
        if (k_20 >= 0 && (k_20 < Seq#Length(xs) && (j_8 >= 0 && (j_8 < Seq#Length(xs) && k_20 != j_8)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (0512.vpr@32.12--32.104) [72150]"}
            k_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (0512.vpr@32.12--32.104) [72151]"}
            k_20 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@32.12--32.104) [72152]"}
            j_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@32.12--32.104) [72153]"}
            j_8 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_1: int, j_1: int ::
      { Seq#Index(xs, k_1), Seq#Index(xs, j_1) }
      k_1 >= 0 && (k_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && k_1 != j_1))) ==> Seq#Index(xs, k_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, wildcard))
      if (*) {
        if (0 <= j_22 && j_22 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@33.13--33.78) [72154]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@33.13--33.78) [72155]"}
            j_22 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@33.13--33.78) [72156]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && j_3 < Seq#Length(xs))) && (0 <= j_3_1 && j_3_1 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_3) != Seq#Index(xs, j_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
        0 <= j_3 && j_3 < Seq#Length(xs) ==> qpRange9(Seq#Index(xs, j_3)) && invRecv9(Seq#Index(xs, j_3)) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(xs)) && qpRange9(o_9) ==> Seq#Index(xs, invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
        0 <= j_3 && j_3 < Seq#Length(xs) ==> Seq#Index(xs, j_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(xs)) && qpRange9(o_9) ==> Seq#Index(xs, invRecv9(o_9)) == o_9 && Mask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(xs)) && qpRange9(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
    assume 0 <= i;
    assume i <= Seq#Length(xs);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, wildcard))
      if (*) {
        if (0 <= j_9 && j_9 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@35.12--35.77) [72157]"}
            j_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@35.12--35.77) [72158]"}
            j_9 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@35.12--35.77) [72159]"}
      (forall j_5: int, j_5_1: int ::
      
      (((j_5 != j_5_1 && (0 <= j_5 && j_5 < Seq#Length(xs))) && (0 <= j_5_1 && j_5_1 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_5) != Seq#Index(xs, j_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_5: int ::
        { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
        0 <= j_5 && j_5 < Seq#Length(xs) ==> qpRange10(Seq#Index(xs, j_5)) && invRecv10(Seq#Index(xs, j_5)) == j_5
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(xs)) && qpRange10(o_9) ==> Seq#Index(xs, invRecv10(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5: int ::
        { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
        0 <= j_5 && j_5 < Seq#Length(xs) ==> Seq#Index(xs, j_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(xs)) && qpRange10(o_9) ==> Seq#Index(xs, invRecv10(o_9)) == o_9 && PostMask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(xs)) && qpRange10(o_9)) ==> QPMask[o_9, item] == PostMask[o_9, item])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != item ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(res) == Seq#Length(xs) - i;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
      if (*) {
        if (i <= j_23 && j_23 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index res[j - i] into res might be negative. (0512.vpr@38.12--38.76) [72160]"}
            j_23 - i >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[j - i] into res might exceed sequence length. (0512.vpr@38.12--38.76) [72161]"}
            j_23 - i < Seq#Length(res);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@38.12--38.76) [72162]"}
            j_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@38.12--38.76) [72163]"}
            j_23 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[j].item (0512.vpr@38.12--38.76) [72164]"}
            HasDirectPerm(PostMask, Seq#Index(xs, j_23), item);
        }
        assume false;
      }
    assume (forall j_7_1: int ::
      { Seq#Index(xs, j_7_1) }
      i <= j_7_1 && j_7_1 < Seq#Length(xs) ==> Seq#Index(res, j_7_1 - i) == PostHeap[Seq#Index(xs, j_7_1), item]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i < |xs|) -- 0512.vpr@40.3--46.4
    if (i < Seq#Length(xs)) {
      
      // -- Translating statement: tail := method_seqToSeqHelper(xs, i + 1) -- 0512.vpr@42.5--42.45
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_i := i + 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method method_seqToSeqHelper might not hold. Assertion 0 <= i + 1 might not hold. (0512.vpr@42.5--42.45) [72165]"}
            0 <= arg_i;
          assert {:msg "  The precondition of method method_seqToSeqHelper might not hold. Assertion i + 1 <= |xs| might not hold. (0512.vpr@42.5--42.45) [72166]"}
            arg_i <= Seq#Length(xs);
          if (*) {
            if (k_2_2 >= 0 && (k_2_2 < Seq#Length(xs) && (j_11_1 >= 0 && (j_11_1 < Seq#Length(xs) && k_2_2 != j_11_1)))) {
              assert {:msg "  The precondition of method method_seqToSeqHelper might not hold. Assertion xs[k] != xs[j] might not hold. (0512.vpr@42.5--42.45) [72167]"}
                Seq#Index(xs, k_2_2) != Seq#Index(xs, j_11_1);
            }
            assume false;
          }
          assume (forall k_3_1: int, j_12_1: int ::
            { Seq#Index(xs, k_3_1), Seq#Index(xs, j_12_1) }
            k_3_1 >= 0 && (k_3_1 < Seq#Length(xs) && (j_12_1 >= 0 && (j_12_1 < Seq#Length(xs) && k_3_1 != j_12_1))) ==> Seq#Index(xs, k_3_1) != Seq#Index(xs, j_12_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  The precondition of method method_seqToSeqHelper might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@42.5--42.45) [72168]"}
            (forall j_13_2: int ::
            
            0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> Mask[Seq#Index(xs, j_13_2), item] > NoPerm
          );
          assume (forall j_13_2: int ::
            
            0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> wildcard < Mask[Seq#Index(xs, j_13_2), item]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method method_seqToSeqHelper might not hold. Fraction wildcard might be negative. (0512.vpr@42.5--42.45) [72169]"}
              (forall j_13_2: int ::
              { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
              (0 <= j_13_2 && j_13_2 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, j_13_2), item]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver xs[j] is injective
            assert {:msg "  The precondition of method method_seqToSeqHelper might not hold. Quantified resource xs[j].item might not be injective. (0512.vpr@42.5--42.45) [72170]"}
              (forall j_13_2: int, j_13_3: int ::
              { neverTriggered12(j_13_2), neverTriggered12(j_13_3) }
              (((j_13_2 != j_13_3 && (0 <= j_13_2 && j_13_2 < Seq#Length(xs))) && (0 <= j_13_3 && j_13_3 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_13_2) != Seq#Index(xs, j_13_3)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method method_seqToSeqHelper might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@42.5--42.45) [72171]"}
              (forall j_13_2: int ::
              { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
              0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> Mask[Seq#Index(xs, j_13_2), item] > NoPerm
            );
          
          // -- assumptions for inverse of receiver xs[j]
            assume (forall j_13_2: int ::
              { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
              (0 <= j_13_2 && j_13_2 < Seq#Length(xs)) && NoPerm < wildcard ==> qpRange12(Seq#Index(xs, j_13_2)) && invRecv12(Seq#Index(xs, j_13_2)) == j_13_2
            );
            assume (forall o_9: Ref ::
              { invRecv12(o_9) }
              (0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange12(o_9)) ==> Seq#Index(xs, invRecv12(o_9)) == o_9
            );
          
          // -- assume permission updates for field item
            assume (forall o_9: Ref ::
              { QPMask[o_9, item] }
              ((0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange12(o_9)) ==> Seq#Index(xs, invRecv12(o_9)) == o_9 && QPMask[o_9, item] == Mask[o_9, item] - wildcard) && (!((0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange12(o_9))) ==> QPMask[o_9, item] == Mask[o_9, item])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc tail_1;
        
        // -- Inhaling postcondition
          assume 0 <= arg_i;
          assume arg_i <= Seq#Length(xs);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource xs[j].item might not be injective. (0512.vpr@42.5--42.45) [72172]"}
            (forall j_14_2: int, j_14_3: int ::
            
            (((j_14_2 != j_14_3 && (0 <= j_14_2 && j_14_2 < Seq#Length(xs))) && (0 <= j_14_3 && j_14_3 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_14_2) != Seq#Index(xs, j_14_3)
          );
          
          // -- Define Inverse Function
            assume (forall j_14_2: int ::
              { Seq#Index(xs, j_14_2) } { Seq#Index(xs, j_14_2) }
              0 <= j_14_2 && j_14_2 < Seq#Length(xs) ==> qpRange13(Seq#Index(xs, j_14_2)) && invRecv13(Seq#Index(xs, j_14_2)) == j_14_2
            );
            assume (forall o_9: Ref ::
              { invRecv13(o_9) }
              (0 <= invRecv13(o_9) && invRecv13(o_9) < Seq#Length(xs)) && qpRange13(o_9) ==> Seq#Index(xs, invRecv13(o_9)) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall j_14_2: int ::
              { Seq#Index(xs, j_14_2) } { Seq#Index(xs, j_14_2) }
              0 <= j_14_2 && j_14_2 < Seq#Length(xs) ==> Seq#Index(xs, j_14_2) != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, item] }
              ((0 <= invRecv13(o_9) && invRecv13(o_9) < Seq#Length(xs)) && qpRange13(o_9) ==> Seq#Index(xs, invRecv13(o_9)) == o_9 && Mask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv13(o_9) && invRecv13(o_9) < Seq#Length(xs)) && qpRange13(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume Seq#Length(tail_1) == Seq#Length(xs) - arg_i;
          assume (forall j_15_2: int ::
            { Seq#Index(xs, j_15_2) }
            arg_i <= j_15_2 && j_15_2 < Seq#Length(xs) ==> Seq#Index(tail_1, j_15_2 - arg_i) == Heap[Seq#Index(xs, j_15_2), item]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: res := Seq(xs[i].item) ++ tail -- 0512.vpr@43.5--43.35
        
        // -- Check definedness of Seq(xs[i].item) ++ tail
          assert {:msg "  Assignment might fail. Index xs[i] into xs might be negative. (0512.vpr@43.5--43.35) [72173]"}
            i >= 0;
          assert {:msg "  Assignment might fail. Index xs[i] into xs might exceed sequence length. (0512.vpr@43.5--43.35) [72174]"}
            i < Seq#Length(xs);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i].item (0512.vpr@43.5--43.35) [72175]"}
            HasDirectPerm(Mask, Seq#Index(xs, i), item);
        res := Seq#Append(Seq#Singleton(Heap[Seq#Index(xs, i), item]), tail_1);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: res := Seq[Int]() -- 0512.vpr@45.5--45.17
        res := (Seq#Empty(): Seq int);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of method_seqToSeqHelper might not hold. Assertion 0 <= i might not hold. (0512.vpr@34.11--34.30) [72176]"}
      0 <= i;
    assert {:msg "  Postcondition of method_seqToSeqHelper might not hold. Assertion i <= |xs| might not hold. (0512.vpr@34.11--34.30) [72177]"}
      i <= Seq#Length(xs);
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of method_seqToSeqHelper might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@35.12--35.77) [72178]"}
      (forall j_8_2: int ::
      
      0 <= j_8_2 && j_8_2 < Seq#Length(xs) ==> Mask[Seq#Index(xs, j_8_2), item] > NoPerm
    );
    assume (forall j_8_2: int ::
      
      0 <= j_8_2 && j_8_2 < Seq#Length(xs) ==> wildcard < Mask[Seq#Index(xs, j_8_2), item]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of method_seqToSeqHelper might not hold. Fraction wildcard might be negative. (0512.vpr@35.12--35.77) [72179]"}
        (forall j_8_2: int ::
        { Seq#Index(xs, j_8_2) } { Seq#Index(xs, j_8_2) }
        (0 <= j_8_2 && j_8_2 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, j_8_2), item]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@35.12--35.77) [72180]"}
        (forall j_8_2: int, j_8_3: int ::
        { neverTriggered11(j_8_2), neverTriggered11(j_8_3) }
        (((j_8_2 != j_8_3 && (0 <= j_8_2 && j_8_2 < Seq#Length(xs))) && (0 <= j_8_3 && j_8_3 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_8_2) != Seq#Index(xs, j_8_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of method_seqToSeqHelper might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@35.12--35.77) [72181]"}
        (forall j_8_2: int ::
        { Seq#Index(xs, j_8_2) } { Seq#Index(xs, j_8_2) }
        0 <= j_8_2 && j_8_2 < Seq#Length(xs) ==> Mask[Seq#Index(xs, j_8_2), item] > NoPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_8_2: int ::
        { Seq#Index(xs, j_8_2) } { Seq#Index(xs, j_8_2) }
        (0 <= j_8_2 && j_8_2 < Seq#Length(xs)) && NoPerm < wildcard ==> qpRange11(Seq#Index(xs, j_8_2)) && invRecv11(Seq#Index(xs, j_8_2)) == j_8_2
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange11(o_9)) ==> Seq#Index(xs, invRecv11(o_9)) == o_9
      );
    
    // -- assume permission updates for field item
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange11(o_9)) ==> Seq#Index(xs, invRecv11(o_9)) == o_9 && QPMask[o_9, item] == Mask[o_9, item] - wildcard) && (!((0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange11(o_9))) ==> QPMask[o_9, item] == Mask[o_9, item])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of method_seqToSeqHelper might not hold. Assertion |res| == |xs| - i might not hold. (0512.vpr@37.11--37.28) [72182]"}
      Seq#Length(res) == Seq#Length(xs) - i;
    if (*) {
      if (i <= j_9_1 && j_9_1 < Seq#Length(xs)) {
        assert {:msg "  Postcondition of method_seqToSeqHelper might not hold. Assertion res[j - i] == xs[j].item might not hold. (0512.vpr@38.12--38.76) [72183]"}
          Seq#Index(res, j_9_1 - i) == Heap[Seq#Index(xs, j_9_1), item];
      }
      assume false;
    }
    assume (forall j_10_1: int ::
      { Seq#Index(xs, j_10_1) }
      i <= j_10_1 && j_10_1 < Seq#Length(xs) ==> Seq#Index(res, j_10_1 - i) == Heap[Seq#Index(xs, j_10_1), item]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method method_seqToSeqHelper2
// ==================================================

procedure method_seqToSeqHelper2(xs: (Seq Ref), i: int) returns (res: (Seq int))
  modifies Heap, Mask;
{
  var k_21: int;
  var j_19: int;
  var j_24: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_20: int;
  var j_25: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_2_2: int;
  var j_11_1: int;
  var ExhaleHeap: HeapType;
  var tail_1: (Seq int);
  var j_9_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume i <= Seq#Length(xs);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
      if (*) {
        if (k_21 >= 0 && (k_21 < Seq#Length(xs) && (j_19 >= 0 && (j_19 < Seq#Length(xs) && k_21 != j_19)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (0512.vpr@51.12--51.104) [72184]"}
            k_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (0512.vpr@51.12--51.104) [72185]"}
            k_21 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@51.12--51.104) [72186]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@51.12--51.104) [72187]"}
            j_19 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_1: int, j_1: int ::
      { Seq#Index(xs, k_1), Seq#Index(xs, j_1) }
      k_1 >= 0 && (k_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && k_1 != j_1))) ==> Seq#Index(xs, k_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, wildcard))
      if (*) {
        if (0 <= j_24 && j_24 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@52.13--52.78) [72188]"}
            j_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@52.13--52.78) [72189]"}
            j_24 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@52.13--52.78) [72190]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && j_3 < Seq#Length(xs))) && (0 <= j_3_1 && j_3_1 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_3) != Seq#Index(xs, j_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
        0 <= j_3 && j_3 < Seq#Length(xs) ==> qpRange14(Seq#Index(xs, j_3)) && invRecv14(Seq#Index(xs, j_3)) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        (0 <= invRecv14(o_9) && invRecv14(o_9) < Seq#Length(xs)) && qpRange14(o_9) ==> Seq#Index(xs, invRecv14(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Seq#Index(xs, j_3) } { Seq#Index(xs, j_3) }
        0 <= j_3 && j_3 < Seq#Length(xs) ==> Seq#Index(xs, j_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv14(o_9) && invRecv14(o_9) < Seq#Length(xs)) && qpRange14(o_9) ==> Seq#Index(xs, invRecv14(o_9)) == o_9 && Mask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv14(o_9) && invRecv14(o_9) < Seq#Length(xs)) && qpRange14(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
    assume 0 <= i;
    assume i <= Seq#Length(xs);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].item, wildcard))
      if (*) {
        if (0 <= j_20 && j_20 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@54.12--54.77) [72191]"}
            j_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@54.12--54.77) [72192]"}
            j_20 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@54.12--54.77) [72193]"}
      (forall j_5: int, j_5_1: int ::
      
      (((j_5 != j_5_1 && (0 <= j_5 && j_5 < Seq#Length(xs))) && (0 <= j_5_1 && j_5_1 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_5) != Seq#Index(xs, j_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_5: int ::
        { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
        0 <= j_5 && j_5 < Seq#Length(xs) ==> qpRange15(Seq#Index(xs, j_5)) && invRecv15(Seq#Index(xs, j_5)) == j_5
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        (0 <= invRecv15(o_9) && invRecv15(o_9) < Seq#Length(xs)) && qpRange15(o_9) ==> Seq#Index(xs, invRecv15(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5: int ::
        { Seq#Index(xs, j_5) } { Seq#Index(xs, j_5) }
        0 <= j_5 && j_5 < Seq#Length(xs) ==> Seq#Index(xs, j_5) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv15(o_9) && invRecv15(o_9) < Seq#Length(xs)) && qpRange15(o_9) ==> Seq#Index(xs, invRecv15(o_9)) == o_9 && PostMask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv15(o_9) && invRecv15(o_9) < Seq#Length(xs)) && qpRange15(o_9)) ==> QPMask[o_9, item] == PostMask[o_9, item])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != item ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(res) == Seq#Length(xs) - i;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
      if (*) {
        if (i <= j_25 && j_25 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index res[j - i] into res might be negative. (0512.vpr@57.12--57.76) [72194]"}
            j_25 - i >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[j - i] into res might exceed sequence length. (0512.vpr@57.12--57.76) [72195]"}
            j_25 - i < Seq#Length(res);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (0512.vpr@57.12--57.76) [72196]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (0512.vpr@57.12--57.76) [72197]"}
            j_25 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[j].item (0512.vpr@57.12--57.76) [72198]"}
            HasDirectPerm(PostMask, Seq#Index(xs, j_25), item);
        }
        assume false;
      }
    assume (forall j_7_1: int ::
      { Seq#Index(xs, j_7_1) }
      i <= j_7_1 && j_7_1 < Seq#Length(xs) ==> Seq#Index(res, j_7_1 - i) == PostHeap[Seq#Index(xs, j_7_1), item]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i < |xs|) -- 0512.vpr@59.3--65.4
    if (i < Seq#Length(xs)) {
      
      // -- Translating statement: tail := seqToSeqHelper_wild(xs, i + 1) -- 0512.vpr@61.5--61.43
        
        // -- Check definedness of seqToSeqHelper_wild(xs, i + 1)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Assertion 0 <= i + 1 might not hold. (0512.vpr@61.13--61.43) [72199]"}
              0 <= i + 1;
            assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Assertion i + 1 <= |xs| might not hold. (0512.vpr@61.13--61.43) [72200]"}
              i + 1 <= Seq#Length(xs);
            if (*) {
              if (k_2_2 >= 0 && (k_2_2 < Seq#Length(xs) && (j_11_1 >= 0 && (j_11_1 < Seq#Length(xs) && k_2_2 != j_11_1)))) {
                assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Assertion xs[k] != xs[j] might not hold. (0512.vpr@61.13--61.43) [72201]"}
                  Seq#Index(xs, k_2_2) != Seq#Index(xs, j_11_1);
              }
              assume false;
            }
            assume (forall k_3_1: int, j_12_1: int ::
              { Seq#Index(xs, k_3_1), Seq#Index(xs, j_12_1) }
              k_3_1 >= 0 && (k_3_1 < Seq#Length(xs) && (j_12_1 >= 0 && (j_12_1 < Seq#Length(xs) && k_3_1 != j_12_1))) ==> Seq#Index(xs, k_3_1) != Seq#Index(xs, j_12_1)
            );
            havoc QPMask;
            // wild card assumptions
            havoc wildcard;
            assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@61.13--61.43) [72202]"}
              (forall j_13_2: int ::
              
              0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> Mask[Seq#Index(xs, j_13_2), item] > NoPerm
            );
            assume (forall j_13_2: int ::
              
              0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> wildcard < Mask[Seq#Index(xs, j_13_2), item]
            );
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Fraction wildcard might be negative. (0512.vpr@61.13--61.43) [72203]"}
                (forall j_13_2: int ::
                { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
                (0 <= j_13_2 && j_13_2 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, j_13_2), item]) ==> wildcard >= NoPerm
              );
            
            // -- check if receiver xs[j] is injective
              assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. Quantified resource xs[j].item might not be injective. (0512.vpr@61.13--61.43) [72204]"}
                (forall j_13_2: int, j_13_3: int ::
                { neverTriggered17(j_13_2), neverTriggered17(j_13_3) }
                (((j_13_2 != j_13_3 && (0 <= j_13_2 && j_13_2 < Seq#Length(xs))) && (0 <= j_13_3 && j_13_3 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_13_2) != Seq#Index(xs, j_13_3)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function seqToSeqHelper_wild might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@61.13--61.43) [72205]"}
                (forall j_13_2: int ::
                { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
                0 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> wildcard > NoPerm ==> Mask[Seq#Index(xs, j_13_2), item] > NoPerm
              );
            
            // -- assumptions for inverse of receiver xs[j]
              assume (forall j_13_2: int ::
                { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
                (0 <= j_13_2 && j_13_2 < Seq#Length(xs)) && NoPerm < wildcard ==> qpRange17(Seq#Index(xs, j_13_2)) && invRecv17(Seq#Index(xs, j_13_2)) == j_13_2
              );
              assume (forall o_9: Ref ::
                { invRecv17(o_9) }
                (0 <= invRecv17(o_9) && invRecv17(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange17(o_9)) ==> Seq#Index(xs, invRecv17(o_9)) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        tail_1 := seqToSeqHelper_wild(Heap, xs, i + 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: res := Seq(xs[i].item) ++ tail -- 0512.vpr@62.5--62.35
        
        // -- Check definedness of Seq(xs[i].item) ++ tail
          assert {:msg "  Assignment might fail. Index xs[i] into xs might be negative. (0512.vpr@62.5--62.35) [72206]"}
            i >= 0;
          assert {:msg "  Assignment might fail. Index xs[i] into xs might exceed sequence length. (0512.vpr@62.5--62.35) [72207]"}
            i < Seq#Length(xs);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i].item (0512.vpr@62.5--62.35) [72208]"}
            HasDirectPerm(Mask, Seq#Index(xs, i), item);
        res := Seq#Append(Seq#Singleton(Heap[Seq#Index(xs, i), item]), tail_1);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: res := Seq[Int]() -- 0512.vpr@64.5--64.17
        res := (Seq#Empty(): Seq int);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of method_seqToSeqHelper2 might not hold. Assertion 0 <= i might not hold. (0512.vpr@53.11--53.30) [72209]"}
      0 <= i;
    assert {:msg "  Postcondition of method_seqToSeqHelper2 might not hold. Assertion i <= |xs| might not hold. (0512.vpr@53.11--53.30) [72210]"}
      i <= Seq#Length(xs);
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of method_seqToSeqHelper2 might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@54.12--54.77) [72211]"}
      (forall j_8_2: int ::
      
      0 <= j_8_2 && j_8_2 < Seq#Length(xs) ==> Mask[Seq#Index(xs, j_8_2), item] > NoPerm
    );
    assume (forall j_8_2: int ::
      
      0 <= j_8_2 && j_8_2 < Seq#Length(xs) ==> wildcard < Mask[Seq#Index(xs, j_8_2), item]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of method_seqToSeqHelper2 might not hold. Fraction wildcard might be negative. (0512.vpr@54.12--54.77) [72212]"}
        (forall j_8_2: int ::
        { Seq#Index(xs, j_8_2) } { Seq#Index(xs, j_8_2) }
        (0 <= j_8_2 && j_8_2 < Seq#Length(xs)) && dummyFunction(Heap[Seq#Index(xs, j_8_2), item]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].item might not be injective. (0512.vpr@54.12--54.77) [72213]"}
        (forall j_8_2: int, j_8_3: int ::
        { neverTriggered16(j_8_2), neverTriggered16(j_8_3) }
        (((j_8_2 != j_8_3 && (0 <= j_8_2 && j_8_2 < Seq#Length(xs))) && (0 <= j_8_3 && j_8_3 < Seq#Length(xs))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(xs, j_8_2) != Seq#Index(xs, j_8_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of method_seqToSeqHelper2 might not hold. There might be insufficient permission to access xs[j].item (0512.vpr@54.12--54.77) [72214]"}
        (forall j_8_2: int ::
        { Seq#Index(xs, j_8_2) } { Seq#Index(xs, j_8_2) }
        0 <= j_8_2 && j_8_2 < Seq#Length(xs) ==> Mask[Seq#Index(xs, j_8_2), item] > NoPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_8_2: int ::
        { Seq#Index(xs, j_8_2) } { Seq#Index(xs, j_8_2) }
        (0 <= j_8_2 && j_8_2 < Seq#Length(xs)) && NoPerm < wildcard ==> qpRange16(Seq#Index(xs, j_8_2)) && invRecv16(Seq#Index(xs, j_8_2)) == j_8_2
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        (0 <= invRecv16(o_9) && invRecv16(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange16(o_9)) ==> Seq#Index(xs, invRecv16(o_9)) == o_9
      );
    
    // -- assume permission updates for field item
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv16(o_9) && invRecv16(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange16(o_9)) ==> Seq#Index(xs, invRecv16(o_9)) == o_9 && QPMask[o_9, item] == Mask[o_9, item] - wildcard) && (!((0 <= invRecv16(o_9) && invRecv16(o_9) < Seq#Length(xs)) && (NoPerm < wildcard && qpRange16(o_9))) ==> QPMask[o_9, item] == Mask[o_9, item])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of method_seqToSeqHelper2 might not hold. Assertion |res| == |xs| - i might not hold. (0512.vpr@56.11--56.28) [72215]"}
      Seq#Length(res) == Seq#Length(xs) - i;
    if (*) {
      if (i <= j_9_1 && j_9_1 < Seq#Length(xs)) {
        assert {:msg "  Postcondition of method_seqToSeqHelper2 might not hold. Assertion res[j - i] == xs[j].item might not hold. (0512.vpr@57.12--57.76) [72216]"}
          Seq#Index(res, j_9_1 - i) == Heap[Seq#Index(xs, j_9_1), item];
      }
      assume false;
    }
    assume (forall j_10_1: int ::
      { Seq#Index(xs, j_10_1) }
      i <= j_10_1 && j_10_1 < Seq#Length(xs) ==> Seq#Index(res, j_10_1 - i) == Heap[Seq#Index(xs, j_10_1), item]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method lemmaSumInit
// ==================================================

procedure lemmaSumInit(xs: (VCTArrayDomainType Ref), i: int, P_2: Perm) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var j_11: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 / 1 < P_2;
    assume P_2 < 1 / 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i_fresh_rw_0: Int :: { (loc(xs, i_fresh_rw_0): Ref) } 0 <= i_fresh_rw_0 && i_fresh_rw_0 < (alen(xs): Int) ==> acc((loc(xs, i_fresh_rw_0): Ref).item, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(xs, i_fresh_rw_0): Ref).item might not be injective. (0512.vpr@95.13--95.131) [72217]"}
      (forall i_fresh_rw_0_1: int, i_fresh_rw_0_1_1: int ::
      
      (((i_fresh_rw_0_1 != i_fresh_rw_0_1_1 && (0 <= i_fresh_rw_0_1 && i_fresh_rw_0_1 < (alen(xs): int))) && (0 <= i_fresh_rw_0_1_1 && i_fresh_rw_0_1_1 < (alen(xs): int))) && NoPerm < wildcard) && NoPerm < wildcard ==> (loc(xs, i_fresh_rw_0_1): Ref) != (loc(xs, i_fresh_rw_0_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_fresh_rw_0_1: int ::
        { (loc(xs, i_fresh_rw_0_1): Ref) } { (loc(xs, i_fresh_rw_0_1): Ref) }
        0 <= i_fresh_rw_0_1 && i_fresh_rw_0_1 < (alen(xs): int) ==> qpRange18((loc(xs, i_fresh_rw_0_1): Ref)) && invRecv18((loc(xs, i_fresh_rw_0_1): Ref)) == i_fresh_rw_0_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        (0 <= invRecv18(o_9) && invRecv18(o_9) < (alen(xs): int)) && qpRange18(o_9) ==> (loc(xs, invRecv18(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_fresh_rw_0_1: int ::
        { (loc(xs, i_fresh_rw_0_1): Ref) } { (loc(xs, i_fresh_rw_0_1): Ref) }
        0 <= i_fresh_rw_0_1 && i_fresh_rw_0_1 < (alen(xs): int) ==> (loc(xs, i_fresh_rw_0_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, item] }
        ((0 <= invRecv18(o_9) && invRecv18(o_9) < (alen(xs): int)) && qpRange18(o_9) ==> (loc(xs, invRecv18(o_9)): Ref) == o_9 && Mask[o_9, item] < QPMask[o_9, item]) && (!((0 <= invRecv18(o_9) && invRecv18(o_9) < (alen(xs): int)) && qpRange18(o_9)) ==> QPMask[o_9, item] == Mask[o_9, item])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != item ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (loc(xs, j): Ref) } 0 <= j && j < (alen(xs): Int) ==> (loc(xs, j): Ref).item == 0)
      if (*) {
        if (0 <= j_11 && j_11 < (alen(xs): int)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (loc(xs, j): Ref).item (0512.vpr@96.13--96.77) [72218]"}
            HasDirectPerm(Mask, (loc(xs, j_11): Ref), item);
        }
        assume false;
      }
    assume (forall j_1: int ::
      { (loc(xs, j_1): Ref) }
      0 <= j_1 && j_1 < (alen(xs): int) ==> Heap[(loc(xs, j_1): Ref), item] == 0
    );
    assume state(Heap, Mask);
    assume 0 <= i;
    assume i <= (alen(xs): int);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert sumContrib(xs, i, P) ==
  //   (i == (alen(xs): Int) ?
  //     0 :
  //     (loc(xs, i): Ref).item + sumContrib(xs, i + 1, P)) -- 0512.vpr@99.5--99.100
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of sumContrib(xs, i, P) == (i == (alen(xs): Int) ? 0 : (loc(xs, i): Ref).item + sumContrib(xs, i + 1, P))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function sumContrib might not hold. Assertion 0 / 1 < P might not hold. (0512.vpr@99.12--99.32) [72219]"}
          0 / 1 < P_2;
        assert {:msg "  Precondition of function sumContrib might not hold. Assertion P < 1 / 1 might not hold. (0512.vpr@99.12--99.32) [72220]"}
          P_2 < 1 / 1;
        assert {:msg "  Precondition of function sumContrib might not hold. Assertion 0 <= i might not hold. (0512.vpr@99.12--99.32) [72221]"}
          0 <= i;
        assert {:msg "  Precondition of function sumContrib might not hold. Assertion i <= (alen(xs): Int) might not hold. (0512.vpr@99.12--99.32) [72222]"}
          i <= (alen(xs): int);
        havoc QPMask;
        // wild card assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function sumContrib might not hold. There might be insufficient permission to access (loc(xs, j): Ref).item (0512.vpr@99.12--99.32) [72223]"}
          (forall j_2_2: int ::
          
          0 <= j_2_2 && j_2_2 < (alen(xs): int) ==> ExhaleWellDef0Mask[(loc(xs, j_2_2): Ref), item] > NoPerm
        );
        assume (forall j_2_2: int ::
          
          0 <= j_2_2 && j_2_2 < (alen(xs): int) ==> wildcard < ExhaleWellDef0Mask[(loc(xs, j_2_2): Ref), item]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function sumContrib might not hold. Fraction wildcard might be negative. (0512.vpr@99.12--99.32) [72224]"}
            (forall j_2_2: int ::
            { (loc(xs, j_2_2): Ref) } { (loc(xs, j_2_2): Ref) }
            (0 <= j_2_2 && j_2_2 < (alen(xs): int)) && dummyFunction(ExhaleWellDef0Heap[(loc(xs, j_2_2): Ref), item]) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver (loc(xs, j): Ref) is injective
          assert {:msg "  Precondition of function sumContrib might not hold. Quantified resource (loc(xs, j): Ref).item might not be injective. (0512.vpr@99.12--99.32) [72225]"}
            (forall j_2_2: int, j_2_3: int ::
            { neverTriggered19(j_2_2), neverTriggered19(j_2_3) }
            (((j_2_2 != j_2_3 && (0 <= j_2_2 && j_2_2 < (alen(xs): int))) && (0 <= j_2_3 && j_2_3 < (alen(xs): int))) && NoPerm < wildcard) && NoPerm < wildcard ==> (loc(xs, j_2_2): Ref) != (loc(xs, j_2_3): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function sumContrib might not hold. There might be insufficient permission to access (loc(xs, j): Ref).item (0512.vpr@99.12--99.32) [72226]"}
            (forall j_2_2: int ::
            { (loc(xs, j_2_2): Ref) } { (loc(xs, j_2_2): Ref) }
            0 <= j_2_2 && j_2_2 < (alen(xs): int) ==> wildcard > NoPerm ==> ExhaleWellDef0Mask[(loc(xs, j_2_2): Ref), item] > NoPerm
          );
        
        // -- assumptions for inverse of receiver (loc(xs, j): Ref)
          assume (forall j_2_2: int ::
            { (loc(xs, j_2_2): Ref) } { (loc(xs, j_2_2): Ref) }
            (0 <= j_2_2 && j_2_2 < (alen(xs): int)) && NoPerm < wildcard ==> qpRange19((loc(xs, j_2_2): Ref)) && invRecv19((loc(xs, j_2_2): Ref)) == j_2_2
          );
          assume (forall o_9: Ref ::
            { invRecv19(o_9) }
            (0 <= invRecv19(o_9) && invRecv19(o_9) < (alen(xs): int)) && (NoPerm < wildcard && qpRange19(o_9)) ==> (loc(xs, invRecv19(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (i == (alen(xs): int)) {
      } else {
        assert {:msg "  Assert might fail. There might be insufficient permission to access (loc(xs, i): Ref).item (0512.vpr@99.12--99.100) [72227]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(xs, i): Ref), item);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          assert {:msg "  Precondition of function sumContrib might not hold. Assertion 0 / 1 < P might not hold. (0512.vpr@99.75--99.99) [72228]"}
            0 / 1 < P_2;
          assert {:msg "  Precondition of function sumContrib might not hold. Assertion P < 1 / 1 might not hold. (0512.vpr@99.75--99.99) [72229]"}
            P_2 < 1 / 1;
          assert {:msg "  Precondition of function sumContrib might not hold. Assertion 0 <= i + 1 might not hold. (0512.vpr@99.75--99.99) [72230]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sumContrib might not hold. Assertion i + 1 <= (alen(xs): Int) might not hold. (0512.vpr@99.75--99.99) [72231]"}
            i + 1 <= (alen(xs): int);
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sumContrib might not hold. There might be insufficient permission to access (loc(xs, j): Ref).item (0512.vpr@99.75--99.99) [72232]"}
            (forall j_3: int ::
            
            0 <= j_3 && j_3 < (alen(xs): int) ==> ExhaleWellDef0Mask[(loc(xs, j_3): Ref), item] > NoPerm
          );
          assume (forall j_3: int ::
            
            0 <= j_3 && j_3 < (alen(xs): int) ==> wildcard < ExhaleWellDef0Mask[(loc(xs, j_3): Ref), item]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sumContrib might not hold. Fraction wildcard might be negative. (0512.vpr@99.75--99.99) [72233]"}
              (forall j_3: int ::
              { (loc(xs, j_3): Ref) } { (loc(xs, j_3): Ref) }
              (0 <= j_3 && j_3 < (alen(xs): int)) && dummyFunction(ExhaleWellDef0Heap[(loc(xs, j_3): Ref), item]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver (loc(xs, j): Ref) is injective
            assert {:msg "  Precondition of function sumContrib might not hold. Quantified resource (loc(xs, j): Ref).item might not be injective. (0512.vpr@99.75--99.99) [72234]"}
              (forall j_3: int, j_3_1: int ::
              { neverTriggered20(j_3), neverTriggered20(j_3_1) }
              (((j_3 != j_3_1 && (0 <= j_3 && j_3 < (alen(xs): int))) && (0 <= j_3_1 && j_3_1 < (alen(xs): int))) && NoPerm < wildcard) && NoPerm < wildcard ==> (loc(xs, j_3): Ref) != (loc(xs, j_3_1): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sumContrib might not hold. There might be insufficient permission to access (loc(xs, j): Ref).item (0512.vpr@99.75--99.99) [72235]"}
              (forall j_3: int ::
              { (loc(xs, j_3): Ref) } { (loc(xs, j_3): Ref) }
              0 <= j_3 && j_3 < (alen(xs): int) ==> wildcard > NoPerm ==> ExhaleWellDef0Mask[(loc(xs, j_3): Ref), item] > NoPerm
            );
          
          // -- assumptions for inverse of receiver (loc(xs, j): Ref)
            assume (forall j_3: int ::
              { (loc(xs, j_3): Ref) } { (loc(xs, j_3): Ref) }
              (0 <= j_3 && j_3 < (alen(xs): int)) && NoPerm < wildcard ==> qpRange20((loc(xs, j_3): Ref)) && invRecv20((loc(xs, j_3): Ref)) == j_3
            );
            assume (forall o_9: Ref ::
              { invRecv20(o_9) }
              (0 <= invRecv20(o_9) && invRecv20(o_9) < (alen(xs): int)) && (NoPerm < wildcard && qpRange20(o_9)) ==> (loc(xs, invRecv20(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
    assert {:msg "  Assert might fail. Assertion sumContrib(xs, i, P) == (i == (alen(xs): Int) ? 0 : (loc(xs, i): Ref).item + sumContrib(xs, i + 1, P)) might not hold. (0512.vpr@99.12--99.100) [72236]"}
      sumContrib(Heap, xs, i, P_2) == (if i == (alen(xs): int) then 0 else Heap[(loc(xs, i): Ref), item] + sumContrib(Heap, xs, i + 1, P_2));
    assume state(Heap, Mask);
}