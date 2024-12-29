// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:04:48
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_10: Ref, f_14: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_10, f_14] }
  Heap[o_10, $allocated] ==> Heap[Heap[o_10, f_14], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_40: Ref, f_46: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_40, f_46] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_40, f_46) ==> Heap[o_40, f_46] == ExhaleHeap[o_40, f_46]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_17), ExhaleHeap[null, PredicateMaskField(pm_f_17)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsPredicateField(pm_f_17) ==> Heap[null, PredicateMaskField(pm_f_17)] == ExhaleHeap[null, PredicateMaskField(pm_f_17)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_17) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsPredicateField(pm_f_17) ==> (forall <A, B> o2_17: Ref, f_46: (Field A B) ::
    { ExhaleHeap[o2_17, f_46] }
    Heap[null, PredicateMaskField(pm_f_17)][o2_17, f_46] ==> Heap[o2_17, f_46] == ExhaleHeap[o2_17, f_46]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_17), ExhaleHeap[null, WandMaskField(pm_f_17)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsWandField(pm_f_17) ==> Heap[null, WandMaskField(pm_f_17)] == ExhaleHeap[null, WandMaskField(pm_f_17)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_17) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsWandField(pm_f_17) ==> (forall <A, B> o2_17: Ref, f_46: (Field A B) ::
    { ExhaleHeap[o2_17, f_46] }
    Heap[null, WandMaskField(pm_f_17)][o2_17, f_46] ==> Heap[o2_17, f_46] == ExhaleHeap[o2_17, f_46]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_40: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_40, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_40, $allocated] ==> ExhaleHeap[o_40, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_10: Ref, f_47: (Field A B), v: B ::
  { Heap[o_10, f_47:=v] }
  succHeap(Heap, Heap[o_10, f_47:=v])
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
function  neverTriggered2(i_5: int): bool;
function  neverTriggered3(i_8_2: int): bool;
function  neverTriggered4(i_16_1: int): bool;
function  neverTriggered5(i_22_1: int): bool;
function  neverTriggered6(i_26: int): bool;
function  neverTriggered7(i_30_2: int): bool;
function  neverTriggered8(i_34_2: int): bool;
function  neverTriggered9(i_38: int): bool;
function  neverTriggered10(i_43_2: int): bool;
function  neverTriggered11(i_3: int): bool;
function  neverTriggered12(i_9_1: int): bool;
function  neverTriggered13(i_14_1: int): bool;
function  neverTriggered14(i_3: int): bool;
function  neverTriggered15(tid_1: int): bool;
function  neverTriggered16(i_7_1: int): bool;
function  neverTriggered17(i_8_2: int): bool;
function  neverTriggered18(i_3: int): bool;
function  neverTriggered19(_x_tid_1: int): bool;
function  neverTriggered20(i_11_1: int): bool;
function  neverTriggered21(i_16_1: int): bool;
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
function  invRecv21(recv: Ref): int;
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
function  qpRange21(recv: Ref): bool;

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

const unique src: Field NormalField (Seq Ref);
axiom !IsPredicateField(src);
axiom !IsWandField(src);
const unique dst: Field NormalField (Seq Ref);
axiom !IsPredicateField(dst);
axiom !IsWandField(dst);
const unique Integer_value: Field NormalField int;
axiom !IsPredicateField(Integer_value);
axiom !IsWandField(Integer_value);

// ==================================================
// Translation of method main_main
// ==================================================

procedure main_main(this: Ref, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_4: int;
  var i_6: int;
  var __last_barrier: int;
  var half: int;
  var offset: int;
  var k: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_7: int;
  var i_12_1: int;
  var i_14_1: int;
  var j_2_1: int;
  var i_17: int;
  var ExhaleHeap: HeapType;
  var i_8: int;
  var j_3: int;
  var i_9: int;
  var i_10: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_28: int;
  var j_7_1: int;
  var i_31_1: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_last_barrier: int;
  var i_36_2: int;
  var j_10_2: int;
  var i_39: int;
  var i_41_2: int;
  var i_11: int;
  var i_47_2: int;
  var i_12: int;
  var i_50_1: int;
  var i_9_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
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
    assume this != null;
    Mask := Mask[this, src:=Mask[this, src] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@19.12--19.31) [14973]"}
        HasDirectPerm(Mask, this, src);
    assume Seq#Length(Heap[this, src]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, dst:=Mask[this, dst] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@21.12--21.31) [14974]"}
        HasDirectPerm(Mask, this, dst);
    assume Seq#Length(Heap[this, dst]) == gsize;
    assume state(Heap, Mask);
    assume 4 <= gsize;
    assume state(Heap, Mask);
    assume gsize mod 2 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
      if (*) {
        if (0 <= i_14 && (i_14 < gsize && (0 <= j_5 && (j_5 < gsize && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@24.12--24.120) [14975]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@24.12--24.120) [14976]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@24.12--24.120) [14977]"}
            i_14 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@24.12--24.120) [14978]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might be negative. (max-two-range.vpr@24.12--24.120) [14979]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might exceed sequence length. (max-two-range.vpr@24.12--24.120) [14980]"}
            j_5 < Seq#Length(Heap[this, src]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[this, src], i_1), Seq#Index(Heap[this, src], j_1) }
      0 <= i_1 && (i_1 < gsize && (0 <= j_1 && (j_1 < gsize && i_1 != j_1))) ==> Seq#Index(Heap[this, src], i_1) != Seq#Index(Heap[this, src], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_2)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@25.13--25.93) [14981]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@25.13--25.93) [14982]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@25.13--25.93) [14983]"}
            i_2 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@25.13--25.93) [14984]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@25.13--25.93) [14985]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, gsize), i_3)) && Seq#Contains(Seq#Range(0, gsize), i_3_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_3) != Seq#Index(Heap[this, src], i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
        Seq#Contains(Seq#Range(0, gsize), i_3) && NoPerm < 1 / gsize ==> qpRange1(Seq#Index(Heap[this, src], i_3)) && invRecv1(Seq#Index(Heap[this, src], i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv1(o_4)) && NoPerm < 1 / gsize) && qpRange1(o_4) ==> Seq#Index(Heap[this, src], invRecv1(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@25.13--25.93) [14986]"}
      (forall i_3: int ::
      { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
      Seq#Contains(Seq#Range(0, gsize), i_3) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
        Seq#Contains(Seq#Range(0, gsize), i_3) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv1(o_4)) && NoPerm < 1 / gsize) && qpRange1(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv1(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv1(o_4)) && NoPerm < 1 / gsize) && qpRange1(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.dst[tid].Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@26.12--26.51) [14987]"}
        HasDirectPerm(Mask, this, dst);
      assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@26.12--26.51) [14988]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@26.12--26.51) [14989]"}
        tid < Seq#Length(Heap[this, dst]);
    perm := FullPerm;
    assume Seq#Index(Heap[this, dst], tid) != null;
    Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
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
    assume this != null;
    PostMask := PostMask[this, src:=PostMask[this, src] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@33.11--33.30) [14990]"}
        HasDirectPerm(PostMask, this, src);
    assume Seq#Length(PostHeap[this, src]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, dst:=PostMask[this, dst] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@35.11--35.30) [14991]"}
        HasDirectPerm(PostMask, this, dst);
    assume Seq#Length(PostHeap[this, dst]) == gsize;
    assume state(PostHeap, PostMask);
    assume 4 <= gsize;
    assume state(PostHeap, PostMask);
    assume gsize mod 2 == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.src == old(this.src)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@38.11--38.36) [14992]"}
        HasDirectPerm(PostMask, this, src);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@38.11--38.36) [14993]"}
        HasDirectPerm(oldMask, this, src);
    assume Seq#Equal(PostHeap[this, src], oldHeap[this, src]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.dst == old(this.dst)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@39.11--39.36) [14994]"}
        HasDirectPerm(PostMask, this, dst);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@39.11--39.36) [14995]"}
        HasDirectPerm(oldMask, this, dst);
    assume Seq#Equal(PostHeap[this, dst], oldHeap[this, dst]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_4)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@40.12--40.92) [14996]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@40.12--40.92) [14997]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@40.12--40.92) [14998]"}
            i_4 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@40.12--40.92) [14999]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@40.12--40.92) [15000]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && Seq#Contains(Seq#Range(0, gsize), i_5)) && Seq#Contains(Seq#Range(0, gsize), i_5_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], i_5) != Seq#Index(PostHeap[this, src], i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(PostHeap[this, src], i_5) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_5) } { Seq#Contains(Seq#Range(0, gsize), i_5) } { Seq#Index(PostHeap[this, src], i_5) }
        Seq#Contains(Seq#Range(0, gsize), i_5) && NoPerm < 1 / gsize ==> qpRange2(Seq#Index(PostHeap[this, src], i_5)) && invRecv2(Seq#Index(PostHeap[this, src], i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv2(o_4)) && NoPerm < 1 / gsize) && qpRange2(o_4) ==> Seq#Index(PostHeap[this, src], invRecv2(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@40.12--40.92) [15001]"}
      (forall i_5: int ::
      { Seq#Index(PostHeap[this, src], i_5) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_5) } { Seq#Contains(Seq#Range(0, gsize), i_5) } { Seq#Index(PostHeap[this, src], i_5) }
      Seq#Contains(Seq#Range(0, gsize), i_5) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(PostHeap[this, src], i_5) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_5) } { Seq#Contains(Seq#Range(0, gsize), i_5) } { Seq#Index(PostHeap[this, src], i_5) }
        Seq#Contains(Seq#Range(0, gsize), i_5) && 1 / gsize > NoPerm ==> Seq#Index(PostHeap[this, src], i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv2(o_4)) && NoPerm < 1 / gsize) && qpRange2(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], invRecv2(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv2(o_4)) && NoPerm < 1 / gsize) && qpRange2(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of acc(this.dst[0].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@41.11--41.63) [15002]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@41.11--41.63) [15003]"}
          0 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 0) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < tcount ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (0 <= i_6 && i_6 < tcount) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@42.12--42.134) [15004]"}
              HasDirectPerm(PostMask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@42.12--42.134) [15005]"}
              0 < Seq#Length(PostHeap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@42.12--42.134) [15006]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 0), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@42.12--42.134) [15007]"}
              HasDirectPerm(PostMask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@42.12--42.134) [15008]"}
              i_6 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@42.12--42.134) [15009]"}
              i_6 < Seq#Length(PostHeap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@42.12--42.134) [15010]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_6), Integer_value);
          }
          assume false;
        }
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[this, src], i_7_1) }
        0 <= i_7_1 && i_7_1 < tcount ==> PostHeap[Seq#Index(PostHeap[this, dst], 0), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_7_1), Integer_value]
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __last_barrier := 0 -- max-two-range.vpr@48.3--48.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: half := gsize \ 2 -- max-two-range.vpr@49.3--49.20
    half := gsize div 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: offset := (tid == 0 ? 0 : half) -- max-two-range.vpr@50.3--50.34
    offset := (if tid == 0 then 0 else half);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (tid < 2) -- max-two-range.vpr@51.3--85.4
    if (tid < 2) {
      
      // -- Translating statement: this.dst[tid].Integer_value := this.src[offset].Integer_value -- max-two-range.vpr@52.5--52.66
        
        // -- Check definedness of this.dst[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@52.5--52.66) [15011]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Assignment might fail. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@52.5--52.66) [15012]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@52.5--52.66) [15013]"}
            tid < Seq#Length(Heap[this, dst]);
        
        // -- Check definedness of this.src[offset].Integer_value
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.src (max-two-range.vpr@52.5--52.66) [15014]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Assignment might fail. Index this.src[offset] into this.src might be negative. (max-two-range.vpr@52.5--52.66) [15015]"}
            offset >= 0;
          assert {:msg "  Assignment might fail. Index this.src[offset] into this.src might exceed sequence length. (max-two-range.vpr@52.5--52.66) [15016]"}
            offset < Seq#Length(Heap[this, src]);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.src[offset].Integer_value (max-two-range.vpr@52.5--52.66) [15017]"}
            HasDirectPerm(Mask, Seq#Index(Heap[this, src], offset), Integer_value);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@52.5--52.66) [15018]"}
          FullPerm == Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
        Heap := Heap[Seq#Index(Heap[this, dst], tid), Integer_value:=Heap[Seq#Index(Heap[this, src], offset), Integer_value]];
        assume state(Heap, Mask);
      
      // -- Translating statement: k := 0 -- max-two-range.vpr@53.5--53.11
        k := 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this.dst[tid].Integer_value >= this.src[offset].Integer_value -- max-two-range.vpr@54.5--54.73
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this.dst[tid].Integer_value >= this.src[offset].Integer_value
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@54.12--54.73) [15019]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, dst);
          assert {:msg "  Assert might fail. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@54.12--54.73) [15020]"}
            tid >= 0;
          assert {:msg "  Assert might fail. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@54.12--54.73) [15021]"}
            tid < Seq#Length(Heap[this, dst]);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@54.12--54.73) [15022]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, dst], tid), Integer_value);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.src (max-two-range.vpr@54.12--54.73) [15023]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, src);
          assert {:msg "  Assert might fail. Index this.src[offset] into this.src might be negative. (max-two-range.vpr@54.12--54.73) [15024]"}
            offset >= 0;
          assert {:msg "  Assert might fail. Index this.src[offset] into this.src might exceed sequence length. (max-two-range.vpr@54.12--54.73) [15025]"}
            offset < Seq#Length(Heap[this, src]);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.src[offset].Integer_value (max-two-range.vpr@54.12--54.73) [15026]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, src], offset), Integer_value);
        assert {:msg "  Assert might fail. Assertion this.dst[tid].Integer_value >= this.src[offset].Integer_value might not hold. (max-two-range.vpr@54.12--54.73) [15027]"}
          Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset), Integer_value];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this.dst[tid].Integer_value >= this.src[offset + 0].Integer_value -- max-two-range.vpr@55.5--55.77
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this.dst[tid].Integer_value >= this.src[offset + 0].Integer_value
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@55.12--55.77) [15028]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, dst);
          assert {:msg "  Assert might fail. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@55.12--55.77) [15029]"}
            tid >= 0;
          assert {:msg "  Assert might fail. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@55.12--55.77) [15030]"}
            tid < Seq#Length(Heap[this, dst]);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@55.12--55.77) [15031]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, dst], tid), Integer_value);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.src (max-two-range.vpr@55.12--55.77) [15032]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, src);
          assert {:msg "  Assert might fail. Index this.src[offset + 0] into this.src might be negative. (max-two-range.vpr@55.12--55.77) [15033]"}
            offset + 0 >= 0;
          assert {:msg "  Assert might fail. Index this.src[offset + 0] into this.src might exceed sequence length. (max-two-range.vpr@55.12--55.77) [15034]"}
            offset + 0 < Seq#Length(Heap[this, src]);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.src[offset + 0].Integer_value (max-two-range.vpr@55.12--55.77) [15035]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, src], offset + 0), Integer_value);
        assert {:msg "  Assert might fail. Assertion this.dst[tid].Integer_value >= this.src[offset + 0].Integer_value might not hold. (max-two-range.vpr@55.12--55.77) [15036]"}
          Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + 0), Integer_value];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (forall i: Int ::0 <= i && i < k ==>
  //     this.dst[tid].Integer_value >= this.src[offset + i].Integer_value) -- max-two-range.vpr@56.5--56.122
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (forall i: Int ::0 <= i && i < k ==> this.dst[tid].Integer_value >= this.src[offset + i].Integer_value)
          if (*) {
            if (0 <= i_7 && i_7 < k) {
              assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@56.13--56.121) [15037]"}
                HasDirectPerm(ExhaleWellDef0Mask, this, dst);
              assert {:msg "  Assert might fail. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@56.13--56.121) [15038]"}
                tid >= 0;
              assert {:msg "  Assert might fail. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@56.13--56.121) [15039]"}
                tid < Seq#Length(Heap[this, dst]);
              assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@56.13--56.121) [15040]"}
                HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, dst], tid), Integer_value);
              assert {:msg "  Assert might fail. There might be insufficient permission to access this.src (max-two-range.vpr@56.13--56.121) [15041]"}
                HasDirectPerm(ExhaleWellDef0Mask, this, src);
              assert {:msg "  Assert might fail. Index this.src[offset + i] into this.src might be negative. (max-two-range.vpr@56.13--56.121) [15042]"}
                offset + i_7 >= 0;
              assert {:msg "  Assert might fail. Index this.src[offset + i] into this.src might exceed sequence length. (max-two-range.vpr@56.13--56.121) [15043]"}
                offset + i_7 < Seq#Length(Heap[this, src]);
              assert {:msg "  Assert might fail. There might be insufficient permission to access this.src[offset + i].Integer_value (max-two-range.vpr@56.13--56.121) [15044]"}
                HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, src], offset + i_7), Integer_value);
            }
            assume false;
          }
        if (*) {
          if (0 <= i_12_1 && i_12_1 < k) {
            assert {:msg "  Assert might fail. Assertion this.dst[tid].Integer_value >= this.src[offset + i].Integer_value might not hold. (max-two-range.vpr@56.13--56.121) [15045]"}
              Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_12_1), Integer_value];
          }
          assume false;
        }
        assume (forall i_13_1_1: int ::
          
          0 <= i_13_1_1 && i_13_1_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_13_1_1), Integer_value]
        );
        assume state(Heap, Mask);
      
      // -- Translating statement: while (k < half) -- max-two-range.vpr@57.5--84.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Loop invariant 0 <= tid might not hold on entry. Assertion 0 <= tid might not hold. (max-two-range.vpr@58.17--58.25) [15046]"}
              0 <= tid;
            assert {:msg "  Loop invariant tid < tcount might not hold on entry. Assertion tid < tcount might not hold. (max-two-range.vpr@59.17--59.29) [15047]"}
              tid < tcount;
            assert {:msg "  Loop invariant tid == lid might not hold on entry. Assertion tid == lid might not hold. (max-two-range.vpr@60.17--60.27) [15048]"}
              tid == lid;
            assert {:msg "  Loop invariant tcount == gsize might not hold on entry. Assertion tcount == gsize might not hold. (max-two-range.vpr@61.17--61.32) [15049]"}
              tcount == gsize;
            assert {:msg "  Loop invariant gid == 0 might not hold on entry. Assertion gid == 0 might not hold. (max-two-range.vpr@62.17--62.25) [15050]"}
              gid == 0;
            assert {:msg "  Loop invariant acc(this.src, wildcard) might not hold on entry. There might be insufficient permission to access this.src (max-two-range.vpr@63.17--63.40) [15051]"}
              Mask[this, src] > NoPerm;
            havoc wildcard;
            assume wildcard < Mask[this, src];
            Mask := Mask[this, src:=Mask[this, src] - wildcard];
            assert {:msg "  Loop invariant |this.src| == gsize might not hold on entry. Assertion |this.src| == gsize might not hold. (max-two-range.vpr@64.17--64.36) [15052]"}
              Seq#Length(Heap[this, src]) == gsize;
            assert {:msg "  Loop invariant acc(this.dst, wildcard) might not hold on entry. There might be insufficient permission to access this.dst (max-two-range.vpr@65.17--65.40) [15053]"}
              Mask[this, dst] > NoPerm;
            havoc wildcard;
            assume wildcard < Mask[this, dst];
            Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
            assert {:msg "  Loop invariant |this.dst| == gsize might not hold on entry. Assertion |this.dst| == gsize might not hold. (max-two-range.vpr@66.17--66.36) [15054]"}
              Seq#Length(Heap[this, dst]) == gsize;
            assert {:msg "  Loop invariant 4 <= gsize might not hold on entry. Assertion 4 <= gsize might not hold. (max-two-range.vpr@67.17--67.27) [15055]"}
              4 <= gsize;
            assert {:msg "  Loop invariant gsize % 2 == 0 might not hold on entry. Assertion gsize % 2 == 0 might not hold. (max-two-range.vpr@68.17--68.31) [15056]"}
              gsize mod 2 == 0;
            assert {:msg "  Loop invariant offset == (tid == 0 ? 0 : half) might not hold on entry. Assertion offset == (tid == 0 ? 0 : half) might not hold. (max-two-range.vpr@69.17--69.48) [15057]"}
              offset == (if tid == 0 then 0 else half);
            if (*) {
              if (0 <= i_14_1 && (i_14_1 < gsize && (0 <= j_2_1 && (j_2_1 < gsize && i_14_1 != j_2_1)))) {
                assert {:msg "  Loop invariant (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j]) might not hold on entry. Assertion this.src[i] != this.src[j] might not hold. (max-two-range.vpr@70.17--70.125) [15058]"}
                  Seq#Index(Heap[this, src], i_14_1) != Seq#Index(Heap[this, src], j_2_1);
              }
              assume false;
            }
            assume (forall i_15_1_1: int, j_3_1_1: int ::
              { Seq#Index(Heap[this, src], i_15_1_1), Seq#Index(Heap[this, src], j_3_1_1) }
              0 <= i_15_1_1 && (i_15_1_1 < gsize && (0 <= j_3_1_1 && (j_3_1_1 < gsize && i_15_1_1 != j_3_1_1))) ==> Seq#Index(Heap[this, src], i_15_1_1) != Seq#Index(Heap[this, src], j_3_1_1)
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not hold on entry. Fraction 1 / gsize might be negative. (max-two-range.vpr@71.18--71.98) [15059]"}
                (forall i_16_1: int ::
                { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
                Seq#Contains(Seq#Range(0, gsize), i_16_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_16_1), Integer_value]) ==> 1 / gsize >= NoPerm
              );
            
            // -- check if receiver this.src[i] is injective
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not hold on entry. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@71.18--71.98) [15060]"}
                (forall i_16_1: int, i_16_2: int ::
                { neverTriggered4(i_16_1), neverTriggered4(i_16_2) }
                (((i_16_1 != i_16_2 && Seq#Contains(Seq#Range(0, gsize), i_16_1)) && Seq#Contains(Seq#Range(0, gsize), i_16_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_16_1) != Seq#Index(Heap[this, src], i_16_2)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not hold on entry. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@71.18--71.98) [15061]"}
                (forall i_16_1: int ::
                { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
                Seq#Contains(Seq#Range(0, gsize), i_16_1) ==> Mask[Seq#Index(Heap[this, src], i_16_1), Integer_value] >= 1 / gsize
              );
            
            // -- assumptions for inverse of receiver this.src[i]
              assume (forall i_16_1: int ::
                { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
                Seq#Contains(Seq#Range(0, gsize), i_16_1) && NoPerm < 1 / gsize ==> qpRange4(Seq#Index(Heap[this, src], i_16_1)) && invRecv4(Seq#Index(Heap[this, src], i_16_1)) == i_16_1
              );
              assume (forall o_4: Ref ::
                { invRecv4(o_4) }
                Seq#Contains(Seq#Range(0, gsize), invRecv4(o_4)) && (NoPerm < 1 / gsize && qpRange4(o_4)) ==> Seq#Index(Heap[this, src], invRecv4(o_4)) == o_4
              );
            
            // -- assume permission updates for field Integer_value
              assume (forall o_4: Ref ::
                { QPMask[o_4, Integer_value] }
                (Seq#Contains(Seq#Range(0, gsize), invRecv4(o_4)) && (NoPerm < 1 / gsize && qpRange4(o_4)) ==> Seq#Index(Heap[this, src], invRecv4(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv4(o_4)) && (NoPerm < 1 / gsize && qpRange4(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assert {:msg "  Loop invariant false || __last_barrier == 0 might not hold on entry. Assertion false || __last_barrier == 0 might not hold. (max-two-range.vpr@72.17--72.47) [15062]"}
              __last_barrier == 0;
            if (__last_barrier == 1) {
              if (tid == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant __last_barrier == 1 ==> (tid == 0 ==> acc(this.dst[0].Integer_value, write)) && (tid == 0 ==> acc(this.dst[1].Integer_value, write)) might not hold on entry. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@73.17--73.155) [15063]"}
                    perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
              }
              if (tid == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant __last_barrier == 1 ==> (tid == 0 ==> acc(this.dst[0].Integer_value, write)) && (tid == 0 ==> acc(this.dst[1].Integer_value, write)) might not hold on entry. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@73.17--73.155) [15064]"}
                    perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
              }
            }
            if (__last_barrier == 0) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(this.dst[tid].Integer_value, write) might not hold on entry. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@74.17--74.82) [15065]"}
                  perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
              }
              Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
            }
            assert {:msg "  Loop invariant 0 <= k && k <= half might not hold on entry. Assertion 0 <= k might not hold. (max-two-range.vpr@75.17--75.40) [15066]"}
              0 <= k;
            assert {:msg "  Loop invariant 0 <= k && k <= half might not hold on entry. Assertion k <= half might not hold. (max-two-range.vpr@75.17--75.40) [15067]"}
              k <= half;
            if (*) {
              if (0 <= i_17 && i_17 < k) {
                assert {:msg "  Loop invariant (forall i: Int ::0 <= i && i < k ==> this.dst[tid].Integer_value >= this.src[offset + i].Integer_value) might not hold on entry. Assertion this.dst[tid].Integer_value >= this.src[offset + i].Integer_value might not hold. (max-two-range.vpr@76.18--76.126) [15068]"}
                  Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_17), Integer_value];
              }
              assume false;
            }
            assume (forall i_18_1_1: int ::
              
              0 <= i_18_1_1 && i_18_1_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_18_1_1), Integer_value]
            );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc k;
        
        // -- Check definedness of invariant
          if (*) {
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
            assume this != null;
            Mask := Mask[this, src:=Mask[this, src] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of |this.src| == gsize
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@64.17--64.36) [15069]"}
                HasDirectPerm(Mask, this, src);
            assume Seq#Length(Heap[this, src]) == gsize;
            assume state(Heap, Mask);
            havoc wildcard;
            perm := wildcard;
            assume this != null;
            Mask := Mask[this, dst:=Mask[this, dst] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of |this.dst| == gsize
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@66.17--66.36) [15070]"}
                HasDirectPerm(Mask, this, dst);
            assume Seq#Length(Heap[this, dst]) == gsize;
            assume state(Heap, Mask);
            assume 4 <= gsize;
            assume state(Heap, Mask);
            assume gsize mod 2 == 0;
            assume state(Heap, Mask);
            assume offset == (if tid == 0 then 0 else half);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
              if (*) {
                if (0 <= i_8 && (i_8 < gsize && (0 <= j_3 && (j_3 < gsize && i_8 != j_3)))) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@70.17--70.125) [15071]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@70.17--70.125) [15072]"}
                    i_8 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@70.17--70.125) [15073]"}
                    i_8 < Seq#Length(Heap[this, src]);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@70.17--70.125) [15074]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might be negative. (max-two-range.vpr@70.17--70.125) [15075]"}
                    j_3 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might exceed sequence length. (max-two-range.vpr@70.17--70.125) [15076]"}
                    j_3 < Seq#Length(Heap[this, src]);
                }
                assume false;
              }
            assume (forall i_20_1: int, j_5_1: int ::
              { Seq#Index(Heap[this, src], i_20_1), Seq#Index(Heap[this, src], j_5_1) }
              0 <= i_20_1 && (i_20_1 < gsize && (0 <= j_5_1 && (j_5_1 < gsize && i_20_1 != j_5_1))) ==> Seq#Index(Heap[this, src], i_20_1) != Seq#Index(Heap[this, src], j_5_1)
            );
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
              if (*) {
                if (Seq#Contains(Seq#Range(0, gsize), i_9)) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@71.18--71.98) [15077]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@71.18--71.98) [15078]"}
                    i_9 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@71.18--71.98) [15079]"}
                    i_9 < Seq#Length(Heap[this, src]);
                  assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@71.18--71.98) [15080]"}
                    gsize != 0;
                }
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@71.18--71.98) [15081]"}
              (forall i_22_1: int, i_22_2: int ::
              
              (((i_22_1 != i_22_2 && Seq#Contains(Seq#Range(0, gsize), i_22_1)) && Seq#Contains(Seq#Range(0, gsize), i_22_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_22_1) != Seq#Index(Heap[this, src], i_22_2)
            );
            
            // -- Define Inverse Function
              assume (forall i_22_1: int ::
                { Seq#Index(Heap[this, src], i_22_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_22_1) } { Seq#Contains(Seq#Range(0, gsize), i_22_1) } { Seq#Index(Heap[this, src], i_22_1) }
                Seq#Contains(Seq#Range(0, gsize), i_22_1) && NoPerm < 1 / gsize ==> qpRange5(Seq#Index(Heap[this, src], i_22_1)) && invRecv5(Seq#Index(Heap[this, src], i_22_1)) == i_22_1
              );
              assume (forall o_4: Ref ::
                { invRecv5(o_4) }
                (Seq#Contains(Seq#Range(0, gsize), invRecv5(o_4)) && NoPerm < 1 / gsize) && qpRange5(o_4) ==> Seq#Index(Heap[this, src], invRecv5(o_4)) == o_4
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@71.18--71.98) [15082]"}
              (forall i_22_1: int ::
              { Seq#Index(Heap[this, src], i_22_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_22_1) } { Seq#Contains(Seq#Range(0, gsize), i_22_1) } { Seq#Index(Heap[this, src], i_22_1) }
              Seq#Contains(Seq#Range(0, gsize), i_22_1) ==> 1 / gsize >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall i_22_1: int ::
                { Seq#Index(Heap[this, src], i_22_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_22_1) } { Seq#Contains(Seq#Range(0, gsize), i_22_1) } { Seq#Index(Heap[this, src], i_22_1) }
                Seq#Contains(Seq#Range(0, gsize), i_22_1) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_22_1) != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, Integer_value] }
                ((Seq#Contains(Seq#Range(0, gsize), invRecv5(o_4)) && NoPerm < 1 / gsize) && qpRange5(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv5(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv5(o_4)) && NoPerm < 1 / gsize) && qpRange5(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume __last_barrier == 0;
            assume state(Heap, Mask);
            if (__last_barrier == 1) {
              if (tid == 0) {
                
                // -- Check definedness of acc(this.dst[0].Integer_value, write)
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@73.17--73.155) [15083]"}
                    HasDirectPerm(Mask, this, dst);
                  assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@73.17--73.155) [15084]"}
                    0 < Seq#Length(Heap[this, dst]);
                perm := FullPerm;
                assume Seq#Index(Heap[this, dst], 0) != null;
                Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
                assume state(Heap, Mask);
              }
              if (tid == 0) {
                
                // -- Check definedness of acc(this.dst[1].Integer_value, write)
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@73.17--73.155) [15085]"}
                    HasDirectPerm(Mask, this, dst);
                  assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@73.17--73.155) [15086]"}
                    1 < Seq#Length(Heap[this, dst]);
                perm := FullPerm;
                assume Seq#Index(Heap[this, dst], 1) != null;
                Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
                assume state(Heap, Mask);
              }
            }
            assume state(Heap, Mask);
            if (__last_barrier == 0) {
              
              // -- Check definedness of acc(this.dst[tid].Integer_value, write)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@74.17--74.82) [15087]"}
                  HasDirectPerm(Mask, this, dst);
                assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@74.17--74.82) [15088]"}
                  tid >= 0;
                assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@74.17--74.82) [15089]"}
                  tid < Seq#Length(Heap[this, dst]);
              perm := FullPerm;
              assume Seq#Index(Heap[this, dst], tid) != null;
              Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume 0 <= k;
            assume k <= half;
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall i: Int ::0 <= i && i < k ==> this.dst[tid].Integer_value >= this.src[offset + i].Integer_value)
              if (*) {
                if (0 <= i_10 && i_10 < k) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@76.18--76.126) [15090]"}
                    HasDirectPerm(Mask, this, dst);
                  assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@76.18--76.126) [15091]"}
                    tid >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@76.18--76.126) [15092]"}
                    tid < Seq#Length(Heap[this, dst]);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@76.18--76.126) [15093]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[this, dst], tid), Integer_value);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@76.18--76.126) [15094]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Contract might not be well-formed. Index this.src[offset + i] into this.src might be negative. (max-two-range.vpr@76.18--76.126) [15095]"}
                    offset + i_10 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index this.src[offset + i] into this.src might exceed sequence length. (max-two-range.vpr@76.18--76.126) [15096]"}
                    offset + i_10 < Seq#Length(Heap[this, src]);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[offset + i].Integer_value (max-two-range.vpr@76.18--76.126) [15097]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[this, src], offset + i_10), Integer_value);
                }
                assume false;
              }
            assume (forall i_24_1: int ::
              
              0 <= i_24_1 && i_24_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_24_1), Integer_value]
            );
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
            assume 0 <= tid;
            assume tid < tcount;
            assume tid == lid;
            assume tcount == gsize;
            assume gid == 0;
            havoc wildcard;
            perm := wildcard;
            assume this != null;
            Mask := Mask[this, src:=Mask[this, src] + perm];
            assume state(Heap, Mask);
            assume Seq#Length(Heap[this, src]) == gsize;
            havoc wildcard;
            perm := wildcard;
            assume this != null;
            Mask := Mask[this, dst:=Mask[this, dst] + perm];
            assume state(Heap, Mask);
            assume Seq#Length(Heap[this, dst]) == gsize;
            assume 4 <= gsize;
            assume gsize mod 2 == 0;
            assume offset == (if tid == 0 then 0 else half);
            assume (forall i_25: int, j_6_1: int ::
              { Seq#Index(Heap[this, src], i_25), Seq#Index(Heap[this, src], j_6_1) }
              0 <= i_25 && (i_25 < gsize && (0 <= j_6_1 && (j_6_1 < gsize && i_25 != j_6_1))) ==> Seq#Index(Heap[this, src], i_25) != Seq#Index(Heap[this, src], j_6_1)
            );
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@71.18--71.98) [15098]"}
              (forall i_26: int, i_26_1: int ::
              
              (((i_26 != i_26_1 && Seq#Contains(Seq#Range(0, gsize), i_26)) && Seq#Contains(Seq#Range(0, gsize), i_26_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_26) != Seq#Index(Heap[this, src], i_26_1)
            );
            
            // -- Define Inverse Function
              assume (forall i_26: int ::
                { Seq#Index(Heap[this, src], i_26) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_26) } { Seq#Contains(Seq#Range(0, gsize), i_26) } { Seq#Index(Heap[this, src], i_26) }
                Seq#Contains(Seq#Range(0, gsize), i_26) && NoPerm < 1 / gsize ==> qpRange6(Seq#Index(Heap[this, src], i_26)) && invRecv6(Seq#Index(Heap[this, src], i_26)) == i_26
              );
              assume (forall o_4: Ref ::
                { invRecv6(o_4) }
                (Seq#Contains(Seq#Range(0, gsize), invRecv6(o_4)) && NoPerm < 1 / gsize) && qpRange6(o_4) ==> Seq#Index(Heap[this, src], invRecv6(o_4)) == o_4
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  While statement might fail. Fraction 1 / gsize might be negative. (max-two-range.vpr@71.18--71.98) [15099]"}
              (forall i_26: int ::
              { Seq#Index(Heap[this, src], i_26) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_26) } { Seq#Contains(Seq#Range(0, gsize), i_26) } { Seq#Index(Heap[this, src], i_26) }
              Seq#Contains(Seq#Range(0, gsize), i_26) ==> 1 / gsize >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall i_26: int ::
                { Seq#Index(Heap[this, src], i_26) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_26) } { Seq#Contains(Seq#Range(0, gsize), i_26) } { Seq#Index(Heap[this, src], i_26) }
                Seq#Contains(Seq#Range(0, gsize), i_26) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_26) != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, Integer_value] }
                ((Seq#Contains(Seq#Range(0, gsize), invRecv6(o_4)) && NoPerm < 1 / gsize) && qpRange6(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv6(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv6(o_4)) && NoPerm < 1 / gsize) && qpRange6(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume __last_barrier == 0;
            if (__last_barrier == 1) {
              if (tid == 0) {
                perm := FullPerm;
                assume Seq#Index(Heap[this, dst], 0) != null;
                Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
                assume state(Heap, Mask);
              }
              if (tid == 0) {
                perm := FullPerm;
                assume Seq#Index(Heap[this, dst], 1) != null;
                Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
                assume state(Heap, Mask);
              }
            }
            if (__last_barrier == 0) {
              perm := FullPerm;
              assume Seq#Index(Heap[this, dst], tid) != null;
              Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
              assume state(Heap, Mask);
            }
            assume 0 <= k;
            assume k <= half;
            assume (forall i_27: int ::
              
              0 <= i_27 && i_27 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_27), Integer_value]
            );
            assume state(Heap, Mask);
            // Check and assume guard
            assume k < half;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: inhale false -- max-two-range.vpr@78.7--78.19
                assume false;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: assert 0 <= offset + k && offset + k < gsize -- max-two-range.vpr@79.7--79.55
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Assert might fail. Assertion 0 <= offset + k might not hold. (max-two-range.vpr@79.14--79.55) [15100]"}
                  0 <= offset + k;
                assert {:msg "  Assert might fail. Assertion offset + k < gsize might not hold. (max-two-range.vpr@79.14--79.55) [15101]"}
                  offset + k < gsize;
                assume state(Heap, Mask);
              
              // -- Translating statement: if (this.dst[tid].Integer_value < this.src[offset + k].Integer_value) -- max-two-range.vpr@80.7--82.8
                
                // -- Check definedness of this.dst[tid].Integer_value < this.src[offset + k].Integer_value
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@80.11--80.75) [15102]"}
                    HasDirectPerm(Mask, this, dst);
                  assert {:msg "  Conditional statement might fail. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@80.11--80.75) [15103]"}
                    tid >= 0;
                  assert {:msg "  Conditional statement might fail. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@80.11--80.75) [15104]"}
                    tid < Seq#Length(Heap[this, dst]);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@80.11--80.75) [15105]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[this, dst], tid), Integer_value);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.src (max-two-range.vpr@80.11--80.75) [15106]"}
                    HasDirectPerm(Mask, this, src);
                  assert {:msg "  Conditional statement might fail. Index this.src[offset + k] into this.src might be negative. (max-two-range.vpr@80.11--80.75) [15107]"}
                    offset + k >= 0;
                  assert {:msg "  Conditional statement might fail. Index this.src[offset + k] into this.src might exceed sequence length. (max-two-range.vpr@80.11--80.75) [15108]"}
                    offset + k < Seq#Length(Heap[this, src]);
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.src[offset + k].Integer_value (max-two-range.vpr@80.11--80.75) [15109]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[this, src], offset + k), Integer_value);
                if (Heap[Seq#Index(Heap[this, dst], tid), Integer_value] < Heap[Seq#Index(Heap[this, src], offset + k), Integer_value]) {
                  
                  // -- Translating statement: this.dst[tid].Integer_value := this.src[offset + k].Integer_value -- max-two-range.vpr@81.9--81.74
                    
                    // -- Check definedness of this.dst[tid]
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@81.9--81.74) [15110]"}
                        HasDirectPerm(Mask, this, dst);
                      assert {:msg "  Assignment might fail. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@81.9--81.74) [15111]"}
                        tid >= 0;
                      assert {:msg "  Assignment might fail. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@81.9--81.74) [15112]"}
                        tid < Seq#Length(Heap[this, dst]);
                    
                    // -- Check definedness of this.src[offset + k].Integer_value
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.src (max-two-range.vpr@81.9--81.74) [15113]"}
                        HasDirectPerm(Mask, this, src);
                      assert {:msg "  Assignment might fail. Index this.src[offset + k] into this.src might be negative. (max-two-range.vpr@81.9--81.74) [15114]"}
                        offset + k >= 0;
                      assert {:msg "  Assignment might fail. Index this.src[offset + k] into this.src might exceed sequence length. (max-two-range.vpr@81.9--81.74) [15115]"}
                        offset + k < Seq#Length(Heap[this, src]);
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.src[offset + k].Integer_value (max-two-range.vpr@81.9--81.74) [15116]"}
                        HasDirectPerm(Mask, Seq#Index(Heap[this, src], offset + k), Integer_value);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@81.9--81.74) [15117]"}
                      FullPerm == Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
                    Heap := Heap[Seq#Index(Heap[this, dst], tid), Integer_value:=Heap[Seq#Index(Heap[this, src], offset + k), Integer_value]];
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
              
              // -- Translating statement: k := k + 1 -- max-two-range.vpr@83.7--83.17
                k := k + 1;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Loop invariant 0 <= tid might not be preserved. Assertion 0 <= tid might not hold. (max-two-range.vpr@58.17--58.25) [15118]"}
              0 <= tid;
            assert {:msg "  Loop invariant tid < tcount might not be preserved. Assertion tid < tcount might not hold. (max-two-range.vpr@59.17--59.29) [15119]"}
              tid < tcount;
            assert {:msg "  Loop invariant tid == lid might not be preserved. Assertion tid == lid might not hold. (max-two-range.vpr@60.17--60.27) [15120]"}
              tid == lid;
            assert {:msg "  Loop invariant tcount == gsize might not be preserved. Assertion tcount == gsize might not hold. (max-two-range.vpr@61.17--61.32) [15121]"}
              tcount == gsize;
            assert {:msg "  Loop invariant gid == 0 might not be preserved. Assertion gid == 0 might not hold. (max-two-range.vpr@62.17--62.25) [15122]"}
              gid == 0;
            assert {:msg "  Loop invariant acc(this.src, wildcard) might not be preserved. There might be insufficient permission to access this.src (max-two-range.vpr@63.17--63.40) [15123]"}
              Mask[this, src] > NoPerm;
            havoc wildcard;
            assume wildcard < Mask[this, src];
            Mask := Mask[this, src:=Mask[this, src] - wildcard];
            assert {:msg "  Loop invariant |this.src| == gsize might not be preserved. Assertion |this.src| == gsize might not hold. (max-two-range.vpr@64.17--64.36) [15124]"}
              Seq#Length(Heap[this, src]) == gsize;
            assert {:msg "  Loop invariant acc(this.dst, wildcard) might not be preserved. There might be insufficient permission to access this.dst (max-two-range.vpr@65.17--65.40) [15125]"}
              Mask[this, dst] > NoPerm;
            havoc wildcard;
            assume wildcard < Mask[this, dst];
            Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
            assert {:msg "  Loop invariant |this.dst| == gsize might not be preserved. Assertion |this.dst| == gsize might not hold. (max-two-range.vpr@66.17--66.36) [15126]"}
              Seq#Length(Heap[this, dst]) == gsize;
            assert {:msg "  Loop invariant 4 <= gsize might not be preserved. Assertion 4 <= gsize might not hold. (max-two-range.vpr@67.17--67.27) [15127]"}
              4 <= gsize;
            assert {:msg "  Loop invariant gsize % 2 == 0 might not be preserved. Assertion gsize % 2 == 0 might not hold. (max-two-range.vpr@68.17--68.31) [15128]"}
              gsize mod 2 == 0;
            assert {:msg "  Loop invariant offset == (tid == 0 ? 0 : half) might not be preserved. Assertion offset == (tid == 0 ? 0 : half) might not hold. (max-two-range.vpr@69.17--69.48) [15129]"}
              offset == (if tid == 0 then 0 else half);
            if (*) {
              if (0 <= i_28 && (i_28 < gsize && (0 <= j_7_1 && (j_7_1 < gsize && i_28 != j_7_1)))) {
                assert {:msg "  Loop invariant (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j]) might not be preserved. Assertion this.src[i] != this.src[j] might not hold. (max-two-range.vpr@70.17--70.125) [15130]"}
                  Seq#Index(Heap[this, src], i_28) != Seq#Index(Heap[this, src], j_7_1);
              }
              assume false;
            }
            assume (forall i_29_1_1: int, j_8_1_1: int ::
              { Seq#Index(Heap[this, src], i_29_1_1), Seq#Index(Heap[this, src], j_8_1_1) }
              0 <= i_29_1_1 && (i_29_1_1 < gsize && (0 <= j_8_1_1 && (j_8_1_1 < gsize && i_29_1_1 != j_8_1_1))) ==> Seq#Index(Heap[this, src], i_29_1_1) != Seq#Index(Heap[this, src], j_8_1_1)
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not be preserved. Fraction 1 / gsize might be negative. (max-two-range.vpr@71.18--71.98) [15131]"}
                (forall i_30_2: int ::
                { Seq#Index(Heap[this, src], i_30_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_30_2) } { Seq#Contains(Seq#Range(0, gsize), i_30_2) } { Seq#Index(Heap[this, src], i_30_2) }
                Seq#Contains(Seq#Range(0, gsize), i_30_2) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_30_2), Integer_value]) ==> 1 / gsize >= NoPerm
              );
            
            // -- check if receiver this.src[i] is injective
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not be preserved. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@71.18--71.98) [15132]"}
                (forall i_30_2: int, i_30_3: int ::
                { neverTriggered7(i_30_2), neverTriggered7(i_30_3) }
                (((i_30_2 != i_30_3 && Seq#Contains(Seq#Range(0, gsize), i_30_2)) && Seq#Contains(Seq#Range(0, gsize), i_30_3)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_30_2) != Seq#Index(Heap[this, src], i_30_3)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize)) might not be preserved. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@71.18--71.98) [15133]"}
                (forall i_30_2: int ::
                { Seq#Index(Heap[this, src], i_30_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_30_2) } { Seq#Contains(Seq#Range(0, gsize), i_30_2) } { Seq#Index(Heap[this, src], i_30_2) }
                Seq#Contains(Seq#Range(0, gsize), i_30_2) ==> Mask[Seq#Index(Heap[this, src], i_30_2), Integer_value] >= 1 / gsize
              );
            
            // -- assumptions for inverse of receiver this.src[i]
              assume (forall i_30_2: int ::
                { Seq#Index(Heap[this, src], i_30_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_30_2) } { Seq#Contains(Seq#Range(0, gsize), i_30_2) } { Seq#Index(Heap[this, src], i_30_2) }
                Seq#Contains(Seq#Range(0, gsize), i_30_2) && NoPerm < 1 / gsize ==> qpRange7(Seq#Index(Heap[this, src], i_30_2)) && invRecv7(Seq#Index(Heap[this, src], i_30_2)) == i_30_2
              );
              assume (forall o_4: Ref ::
                { invRecv7(o_4) }
                Seq#Contains(Seq#Range(0, gsize), invRecv7(o_4)) && (NoPerm < 1 / gsize && qpRange7(o_4)) ==> Seq#Index(Heap[this, src], invRecv7(o_4)) == o_4
              );
            
            // -- assume permission updates for field Integer_value
              assume (forall o_4: Ref ::
                { QPMask[o_4, Integer_value] }
                (Seq#Contains(Seq#Range(0, gsize), invRecv7(o_4)) && (NoPerm < 1 / gsize && qpRange7(o_4)) ==> Seq#Index(Heap[this, src], invRecv7(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv7(o_4)) && (NoPerm < 1 / gsize && qpRange7(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assert {:msg "  Loop invariant false || __last_barrier == 0 might not be preserved. Assertion false || __last_barrier == 0 might not hold. (max-two-range.vpr@72.17--72.47) [15134]"}
              __last_barrier == 0;
            if (__last_barrier == 1) {
              if (tid == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant __last_barrier == 1 ==> (tid == 0 ==> acc(this.dst[0].Integer_value, write)) && (tid == 0 ==> acc(this.dst[1].Integer_value, write)) might not be preserved. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@73.17--73.155) [15135]"}
                    perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
              }
              if (tid == 0) {
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant __last_barrier == 1 ==> (tid == 0 ==> acc(this.dst[0].Integer_value, write)) && (tid == 0 ==> acc(this.dst[1].Integer_value, write)) might not be preserved. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@73.17--73.155) [15136]"}
                    perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
                }
                Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
              }
            }
            if (__last_barrier == 0) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant __last_barrier == 0 ==> acc(this.dst[tid].Integer_value, write) might not be preserved. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@74.17--74.82) [15137]"}
                  perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
              }
              Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
            }
            assert {:msg "  Loop invariant 0 <= k && k <= half might not be preserved. Assertion 0 <= k might not hold. (max-two-range.vpr@75.17--75.40) [15138]"}
              0 <= k;
            assert {:msg "  Loop invariant 0 <= k && k <= half might not be preserved. Assertion k <= half might not hold. (max-two-range.vpr@75.17--75.40) [15139]"}
              k <= half;
            if (*) {
              if (0 <= i_31_1 && i_31_1 < k) {
                assert {:msg "  Loop invariant (forall i: Int ::0 <= i && i < k ==> this.dst[tid].Integer_value >= this.src[offset + i].Integer_value) might not be preserved. Assertion this.dst[tid].Integer_value >= this.src[offset + i].Integer_value might not hold. (max-two-range.vpr@76.18--76.126) [15140]"}
                  Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_31_1), Integer_value];
              }
              assume false;
            }
            assume (forall i_32_1: int ::
              
              0 <= i_32_1 && i_32_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_32_1), Integer_value]
            );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(k < half);
          assume state(Heap, Mask);
          assume 0 <= tid;
          assume tid < tcount;
          assume tid == lid;
          assume tcount == gsize;
          assume gid == 0;
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          Mask := Mask[this, src:=Mask[this, src] + perm];
          assume state(Heap, Mask);
          assume Seq#Length(Heap[this, src]) == gsize;
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          Mask := Mask[this, dst:=Mask[this, dst] + perm];
          assume state(Heap, Mask);
          assume Seq#Length(Heap[this, dst]) == gsize;
          assume 4 <= gsize;
          assume gsize mod 2 == 0;
          assume offset == (if tid == 0 then 0 else half);
          assume (forall i_33_1: int, j_9_1: int ::
            { Seq#Index(Heap[this, src], i_33_1), Seq#Index(Heap[this, src], j_9_1) }
            0 <= i_33_1 && (i_33_1 < gsize && (0 <= j_9_1 && (j_9_1 < gsize && i_33_1 != j_9_1))) ==> Seq#Index(Heap[this, src], i_33_1) != Seq#Index(Heap[this, src], j_9_1)
          );
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@71.18--71.98) [15141]"}
            (forall i_34_2: int, i_34_3: int ::
            
            (((i_34_2 != i_34_3 && Seq#Contains(Seq#Range(0, gsize), i_34_2)) && Seq#Contains(Seq#Range(0, gsize), i_34_3)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_34_2) != Seq#Index(Heap[this, src], i_34_3)
          );
          
          // -- Define Inverse Function
            assume (forall i_34_2: int ::
              { Seq#Index(Heap[this, src], i_34_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_34_2) } { Seq#Contains(Seq#Range(0, gsize), i_34_2) } { Seq#Index(Heap[this, src], i_34_2) }
              Seq#Contains(Seq#Range(0, gsize), i_34_2) && NoPerm < 1 / gsize ==> qpRange8(Seq#Index(Heap[this, src], i_34_2)) && invRecv8(Seq#Index(Heap[this, src], i_34_2)) == i_34_2
            );
            assume (forall o_4: Ref ::
              { invRecv8(o_4) }
              (Seq#Contains(Seq#Range(0, gsize), invRecv8(o_4)) && NoPerm < 1 / gsize) && qpRange8(o_4) ==> Seq#Index(Heap[this, src], invRecv8(o_4)) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  While statement might fail. Fraction 1 / gsize might be negative. (max-two-range.vpr@71.18--71.98) [15142]"}
            (forall i_34_2: int ::
            { Seq#Index(Heap[this, src], i_34_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_34_2) } { Seq#Contains(Seq#Range(0, gsize), i_34_2) } { Seq#Index(Heap[this, src], i_34_2) }
            Seq#Contains(Seq#Range(0, gsize), i_34_2) ==> 1 / gsize >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall i_34_2: int ::
              { Seq#Index(Heap[this, src], i_34_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_34_2) } { Seq#Contains(Seq#Range(0, gsize), i_34_2) } { Seq#Index(Heap[this, src], i_34_2) }
              Seq#Contains(Seq#Range(0, gsize), i_34_2) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_34_2) != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, Integer_value] }
              ((Seq#Contains(Seq#Range(0, gsize), invRecv8(o_4)) && NoPerm < 1 / gsize) && qpRange8(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv8(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv8(o_4)) && NoPerm < 1 / gsize) && qpRange8(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume __last_barrier == 0;
          if (__last_barrier == 1) {
            if (tid == 0) {
              perm := FullPerm;
              assume Seq#Index(Heap[this, dst], 0) != null;
              Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
              assume state(Heap, Mask);
            }
            if (tid == 0) {
              perm := FullPerm;
              assume Seq#Index(Heap[this, dst], 1) != null;
              Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
              assume state(Heap, Mask);
            }
          }
          if (__last_barrier == 0) {
            perm := FullPerm;
            assume Seq#Index(Heap[this, dst], tid) != null;
            Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
            assume state(Heap, Mask);
          }
          assume 0 <= k;
          assume k <= half;
          assume (forall i_35_1: int ::
            
            0 <= i_35_1 && i_35_1 < k ==> Heap[Seq#Index(Heap[this, dst], tid), Integer_value] >= Heap[Seq#Index(Heap[this, src], offset + i_35_1), Integer_value]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- max-two-range.vpr@86.3--86.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true -- max-two-range.vpr@87.3--87.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
  
  // -- Translating statement: __last_barrier := main_barrier(this, tcount, gsize, tid, gid, lid, 1, __last_barrier,
  //   k, half, offset) -- max-two-range.vpr@88.3--88.105
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_last_barrier := __last_barrier;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion false || __last_barrier == 0 might not hold. (max-two-range.vpr@88.3--88.105) [15144]"}
        arg_last_barrier == 0;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion 0 <= tid might not hold. (max-two-range.vpr@88.3--88.105) [15145]"}
        0 <= tid;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion tid < tcount might not hold. (max-two-range.vpr@88.3--88.105) [15146]"}
        tid < tcount;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion tid == lid might not hold. (max-two-range.vpr@88.3--88.105) [15147]"}
        tid == lid;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion tcount == gsize might not hold. (max-two-range.vpr@88.3--88.105) [15148]"}
        tcount == gsize;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion gid == 0 might not hold. (max-two-range.vpr@88.3--88.105) [15149]"}
        gid == 0;
      assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.src (max-two-range.vpr@88.3--88.105) [15150]"}
        Mask[this, src] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[this, src];
      Mask := Mask[this, src:=Mask[this, src] - wildcard];
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion |this.src| == gsize might not hold. (max-two-range.vpr@88.3--88.105) [15151]"}
        Seq#Length(Heap[this, src]) == gsize;
      assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.dst (max-two-range.vpr@88.3--88.105) [15152]"}
        Mask[this, dst] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[this, dst];
      Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion |this.dst| == gsize might not hold. (max-two-range.vpr@88.3--88.105) [15153]"}
        Seq#Length(Heap[this, dst]) == gsize;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion 4 <= gsize might not hold. (max-two-range.vpr@88.3--88.105) [15154]"}
        4 <= gsize;
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion gsize % 2 == 0 might not hold. (max-two-range.vpr@88.3--88.105) [15155]"}
        gsize mod 2 == 0;
      if (*) {
        if (0 <= i_36_2 && (i_36_2 < gsize && (0 <= j_10_2 && (j_10_2 < gsize && i_36_2 != j_10_2)))) {
          assert {:msg "  The precondition of method main_barrier might not hold. Assertion this.src[i] != this.src[j] might not hold. (max-two-range.vpr@88.3--88.105) [15156]"}
            Seq#Index(Heap[this, src], i_36_2) != Seq#Index(Heap[this, src], j_10_2);
        }
        assume false;
      }
      assume (forall i_37_1_1: int, j_11_1: int ::
        { Seq#Index(Heap[this, src], i_37_1_1), Seq#Index(Heap[this, src], j_11_1) }
        0 <= i_37_1_1 && (i_37_1_1 < gsize && (0 <= j_11_1 && (j_11_1 < gsize && i_37_1_1 != j_11_1))) ==> Seq#Index(Heap[this, src], i_37_1_1) != Seq#Index(Heap[this, src], j_11_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method main_barrier might not hold. Fraction 1 / gsize might be negative. (max-two-range.vpr@88.3--88.105) [15157]"}
          (forall i_38: int ::
          { Seq#Index(Heap[this, src], i_38) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_38) } { Seq#Contains(Seq#Range(0, gsize), i_38) } { Seq#Index(Heap[this, src], i_38) }
          Seq#Contains(Seq#Range(0, gsize), i_38) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_38), Integer_value]) ==> 1 / gsize >= NoPerm
        );
      
      // -- check if receiver this.src[i] is injective
        assert {:msg "  The precondition of method main_barrier might not hold. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@88.3--88.105) [15158]"}
          (forall i_38: int, i_38_1: int ::
          { neverTriggered9(i_38), neverTriggered9(i_38_1) }
          (((i_38 != i_38_1 && Seq#Contains(Seq#Range(0, gsize), i_38)) && Seq#Contains(Seq#Range(0, gsize), i_38_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_38) != Seq#Index(Heap[this, src], i_38_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@88.3--88.105) [15159]"}
          (forall i_38: int ::
          { Seq#Index(Heap[this, src], i_38) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_38) } { Seq#Contains(Seq#Range(0, gsize), i_38) } { Seq#Index(Heap[this, src], i_38) }
          Seq#Contains(Seq#Range(0, gsize), i_38) ==> Mask[Seq#Index(Heap[this, src], i_38), Integer_value] >= 1 / gsize
        );
      
      // -- assumptions for inverse of receiver this.src[i]
        assume (forall i_38: int ::
          { Seq#Index(Heap[this, src], i_38) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_38) } { Seq#Contains(Seq#Range(0, gsize), i_38) } { Seq#Index(Heap[this, src], i_38) }
          Seq#Contains(Seq#Range(0, gsize), i_38) && NoPerm < 1 / gsize ==> qpRange9(Seq#Index(Heap[this, src], i_38)) && invRecv9(Seq#Index(Heap[this, src], i_38)) == i_38
        );
        assume (forall o_4: Ref ::
          { invRecv9(o_4) }
          Seq#Contains(Seq#Range(0, gsize), invRecv9(o_4)) && (NoPerm < 1 / gsize && qpRange9(o_4)) ==> Seq#Index(Heap[this, src], invRecv9(o_4)) == o_4
        );
      
      // -- assume permission updates for field Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          (Seq#Contains(Seq#Range(0, gsize), invRecv9(o_4)) && (NoPerm < 1 / gsize && qpRange9(o_4)) ==> Seq#Index(Heap[this, src], invRecv9(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv9(o_4)) && (NoPerm < 1 / gsize && qpRange9(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (arg_last_barrier == 1) {
        if (tid == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@88.3--88.105) [15160]"}
              perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
        }
        if (tid == 0) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@88.3--88.105) [15161]"}
              perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
          }
          Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
        }
      }
      if (arg_last_barrier == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method main_barrier might not hold. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@88.3--88.105) [15162]"}
            perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
      }
      assert {:msg "  The precondition of method main_barrier might not hold. Assertion half + half == gsize might not hold. (max-two-range.vpr@88.3--88.105) [15163]"}
        half + half == gsize;
      if (tid == 0) {
        if (*) {
          if (0 <= i_39 && i_39 < half) {
            assert {:msg "  The precondition of method main_barrier might not hold. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@88.3--88.105) [15164]"}
              Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_39), Integer_value];
          }
          assume false;
        }
        assume (forall i_40_1: int ::
          { Seq#Index(Heap[this, src], i_40_1) }
          0 <= i_40_1 && i_40_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_40_1), Integer_value]
        );
      }
      if (tid == 1) {
        if (*) {
          if (half <= i_41_2 && i_41_2 < gsize) {
            assert {:msg "  The precondition of method main_barrier might not hold. Assertion this.dst[1].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@88.3--88.105) [15165]"}
              Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_41_2), Integer_value];
          }
          assume false;
        }
        assume (forall i_42_1: int ::
          { Seq#Index(Heap[this, src], i_42_1) }
          half <= i_42_1 && i_42_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_42_1), Integer_value]
        );
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc __last_barrier;
    
    // -- Inhaling postcondition
      assume 0 <= tid;
      assume tid < tcount;
      assume tid == lid;
      assume tcount == gsize;
      assume gid == 0;
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      Mask := Mask[this, src:=Mask[this, src] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[this, src]) == gsize;
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      Mask := Mask[this, dst:=Mask[this, dst] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[this, dst]) == gsize;
      assume 4 <= gsize;
      assume gsize mod 2 == 0;
      assume Seq#Equal(Heap[this, src], PreCallHeap[this, src]);
      assume Seq#Equal(Heap[this, dst], PreCallHeap[this, dst]);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@88.3--88.105) [15166]"}
        (forall i_43_2: int, i_43_3: int ::
        
        (((i_43_2 != i_43_3 && Seq#Contains(Seq#Range(0, gsize), i_43_2)) && Seq#Contains(Seq#Range(0, gsize), i_43_3)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_43_2) != Seq#Index(Heap[this, src], i_43_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_43_2: int ::
          { Seq#Index(Heap[this, src], i_43_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_43_2) } { Seq#Contains(Seq#Range(0, gsize), i_43_2) } { Seq#Index(Heap[this, src], i_43_2) }
          Seq#Contains(Seq#Range(0, gsize), i_43_2) && NoPerm < 1 / gsize ==> qpRange10(Seq#Index(Heap[this, src], i_43_2)) && invRecv10(Seq#Index(Heap[this, src], i_43_2)) == i_43_2
        );
        assume (forall o_4: Ref ::
          { invRecv10(o_4) }
          (Seq#Contains(Seq#Range(0, gsize), invRecv10(o_4)) && NoPerm < 1 / gsize) && qpRange10(o_4) ==> Seq#Index(Heap[this, src], invRecv10(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / gsize might be negative. (max-two-range.vpr@88.3--88.105) [15167]"}
        (forall i_43_2: int ::
        { Seq#Index(Heap[this, src], i_43_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_43_2) } { Seq#Contains(Seq#Range(0, gsize), i_43_2) } { Seq#Index(Heap[this, src], i_43_2) }
        Seq#Contains(Seq#Range(0, gsize), i_43_2) ==> 1 / gsize >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_43_2: int ::
          { Seq#Index(Heap[this, src], i_43_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_43_2) } { Seq#Contains(Seq#Range(0, gsize), i_43_2) } { Seq#Index(Heap[this, src], i_43_2) }
          Seq#Contains(Seq#Range(0, gsize), i_43_2) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_43_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          ((Seq#Contains(Seq#Range(0, gsize), invRecv10(o_4)) && NoPerm < 1 / gsize) && qpRange10(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv10(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv10(o_4)) && NoPerm < 1 / gsize) && qpRange10(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (__last_barrier == 1) {
        if (tid == 0) {
          perm := FullPerm;
          assume Seq#Index(Heap[this, dst], 0) != null;
          Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
          assume state(Heap, Mask);
        }
        if (tid == 0) {
          perm := FullPerm;
          assume Seq#Index(Heap[this, dst], 1) != null;
          Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
          assume state(Heap, Mask);
        }
      }
      if (__last_barrier == 0) {
        perm := FullPerm;
        assume Seq#Index(Heap[this, dst], tid) != null;
        Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
        assume state(Heap, Mask);
      }
      assume __last_barrier == 1;
      if (tid == 0) {
        assume (forall i_44: int ::
          { Seq#Index(Heap[this, src], i_44) }
          0 <= i_44 && i_44 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_44), Integer_value]
        );
      }
      if (tid == 0) {
        assume (forall i_45_2: int ::
          { Seq#Index(Heap[this, src], i_45_2) }
          half <= i_45_2 && i_45_2 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_45_2), Integer_value]
        );
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tid == 0 ==>
  //   (forall i: Int ::
  //     { this.src[i] }
  //     0 <= i && i < half ==>
  //     this.dst[0].Integer_value >= this.src[i].Integer_value) -- max-two-range.vpr@89.3--89.127
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (0 <= i_11 && i_11 < half) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@89.10--89.127) [15168]"}
              HasDirectPerm(ExhaleWellDef0Mask, this, dst);
            assert {:msg "  Assert might fail. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@89.10--89.127) [15169]"}
              0 < Seq#Length(Heap[this, dst]);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@89.10--89.127) [15170]"}
              HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, dst], 0), Integer_value);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.src (max-two-range.vpr@89.10--89.127) [15171]"}
              HasDirectPerm(ExhaleWellDef0Mask, this, src);
            assert {:msg "  Assert might fail. Index this.src[i] into this.src might be negative. (max-two-range.vpr@89.10--89.127) [15172]"}
              i_11 >= 0;
            assert {:msg "  Assert might fail. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@89.10--89.127) [15173]"}
              i_11 < Seq#Length(Heap[this, src]);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@89.10--89.127) [15174]"}
              HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, src], i_11), Integer_value);
          }
          assume false;
        }
      if (*) {
        if (0 <= i_47_2 && i_47_2 < half) {
          assert {:msg "  Assert might fail. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@89.10--89.127) [15175]"}
            Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_47_2), Integer_value];
        }
        assume false;
      }
      assume (forall i_48_1: int ::
        { Seq#Index(Heap[this, src], i_48_1) }
        0 <= i_48_1 && i_48_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_48_1), Integer_value]
      );
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tid == 0 ==>
  //   (forall i: Int ::
  //     { this.src[i] }
  //     half <= i && i < gsize ==>
  //     this.dst[1].Integer_value >= this.src[i].Integer_value) -- max-two-range.vpr@90.3--90.131
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (half <= i_12 && i_12 < gsize) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@90.10--90.131) [15176]"}
              HasDirectPerm(ExhaleWellDef0Mask, this, dst);
            assert {:msg "  Assert might fail. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@90.10--90.131) [15177]"}
              1 < Seq#Length(Heap[this, dst]);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@90.10--90.131) [15178]"}
              HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.src (max-two-range.vpr@90.10--90.131) [15179]"}
              HasDirectPerm(ExhaleWellDef0Mask, this, src);
            assert {:msg "  Assert might fail. Index this.src[i] into this.src might be negative. (max-two-range.vpr@90.10--90.131) [15180]"}
              i_12 >= 0;
            assert {:msg "  Assert might fail. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@90.10--90.131) [15181]"}
              i_12 < Seq#Length(Heap[this, src]);
            assert {:msg "  Assert might fail. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@90.10--90.131) [15182]"}
              HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[this, src], i_12), Integer_value);
          }
          assume false;
        }
      if (*) {
        if (half <= i_50_1 && i_50_1 < gsize) {
          assert {:msg "  Assert might fail. Assertion this.dst[1].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@90.10--90.131) [15183]"}
            Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_50_1), Integer_value];
        }
        assume false;
      }
      assume (forall i_51_1_1: int ::
        { Seq#Index(Heap[this, src], i_51_1_1) }
        half <= i_51_1_1 && i_51_1_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_51_1_1), Integer_value]
      );
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (tid == 0) -- max-two-range.vpr@91.3--95.4
    if (tid == 0) {
      
      // -- Translating statement: if (this.dst[1].Integer_value > this.dst[0].Integer_value) -- max-two-range.vpr@92.5--94.6
        
        // -- Check definedness of this.dst[1].Integer_value > this.dst[0].Integer_value
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@92.9--92.62) [15184]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Conditional statement might fail. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@92.9--92.62) [15185]"}
            1 < Seq#Length(Heap[this, dst]);
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@92.9--92.62) [15186]"}
            HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@92.9--92.62) [15187]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Conditional statement might fail. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@92.9--92.62) [15188]"}
            0 < Seq#Length(Heap[this, dst]);
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@92.9--92.62) [15189]"}
            HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 0), Integer_value);
        if (Heap[Seq#Index(Heap[this, dst], 1), Integer_value] > Heap[Seq#Index(Heap[this, dst], 0), Integer_value]) {
          
          // -- Translating statement: this.dst[0].Integer_value := this.dst[1].Integer_value -- max-two-range.vpr@93.7--93.61
            
            // -- Check definedness of this.dst[0]
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@93.7--93.61) [15190]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Assignment might fail. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@93.7--93.61) [15191]"}
                0 < Seq#Length(Heap[this, dst]);
            
            // -- Check definedness of this.dst[1].Integer_value
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst (max-two-range.vpr@93.7--93.61) [15192]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Assignment might fail. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@93.7--93.61) [15193]"}
                1 < Seq#Length(Heap[this, dst]);
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@93.7--93.61) [15194]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@93.7--93.61) [15195]"}
              FullPerm == Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
            Heap := Heap[Seq#Index(Heap[this, dst], 0), Integer_value:=Heap[Seq#Index(Heap[this, dst], 1), Integer_value]];
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main_main might not hold. Assertion 0 <= tid might not hold. (max-two-range.vpr@27.11--27.19) [15196]"}
      0 <= tid;
    assert {:msg "  Postcondition of main_main might not hold. Assertion tid < tcount might not hold. (max-two-range.vpr@28.11--28.23) [15197]"}
      tid < tcount;
    assert {:msg "  Postcondition of main_main might not hold. Assertion tid == lid might not hold. (max-two-range.vpr@29.11--29.21) [15198]"}
      tid == lid;
    assert {:msg "  Postcondition of main_main might not hold. Assertion tcount == gsize might not hold. (max-two-range.vpr@30.11--30.26) [15199]"}
      tcount == gsize;
    assert {:msg "  Postcondition of main_main might not hold. Assertion gid == 0 might not hold. (max-two-range.vpr@31.11--31.19) [15200]"}
      gid == 0;
    assert {:msg "  Postcondition of main_main might not hold. There might be insufficient permission to access this.src (max-two-range.vpr@32.11--32.34) [15201]"}
      Mask[this, src] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, src];
    Mask := Mask[this, src:=Mask[this, src] - wildcard];
    assert {:msg "  Postcondition of main_main might not hold. Assertion |this.src| == gsize might not hold. (max-two-range.vpr@33.11--33.30) [15202]"}
      Seq#Length(Heap[this, src]) == gsize;
    assert {:msg "  Postcondition of main_main might not hold. There might be insufficient permission to access this.dst (max-two-range.vpr@34.11--34.34) [15203]"}
      Mask[this, dst] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, dst];
    Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
    assert {:msg "  Postcondition of main_main might not hold. Assertion |this.dst| == gsize might not hold. (max-two-range.vpr@35.11--35.30) [15204]"}
      Seq#Length(Heap[this, dst]) == gsize;
    assert {:msg "  Postcondition of main_main might not hold. Assertion 4 <= gsize might not hold. (max-two-range.vpr@36.11--36.21) [15205]"}
      4 <= gsize;
    assert {:msg "  Postcondition of main_main might not hold. Assertion gsize % 2 == 0 might not hold. (max-two-range.vpr@37.11--37.25) [15206]"}
      gsize mod 2 == 0;
    assert {:msg "  Postcondition of main_main might not hold. Assertion this.src == old(this.src) might not hold. (max-two-range.vpr@38.11--38.36) [15207]"}
      Seq#Equal(Heap[this, src], oldHeap[this, src]);
    assert {:msg "  Postcondition of main_main might not hold. Assertion this.dst == old(this.dst) might not hold. (max-two-range.vpr@39.11--39.36) [15208]"}
      Seq#Equal(Heap[this, dst], oldHeap[this, dst]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of main_main might not hold. Fraction 1 / gsize might be negative. (max-two-range.vpr@40.12--40.92) [15209]"}
        (forall i_8_2: int ::
        { Seq#Index(Heap[this, src], i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_8_2) } { Seq#Contains(Seq#Range(0, gsize), i_8_2) } { Seq#Index(Heap[this, src], i_8_2) }
        Seq#Contains(Seq#Range(0, gsize), i_8_2) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_8_2), Integer_value]) ==> 1 / gsize >= NoPerm
      );
    
    // -- check if receiver this.src[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@40.12--40.92) [15210]"}
        (forall i_8_2: int, i_8_3: int ::
        { neverTriggered3(i_8_2), neverTriggered3(i_8_3) }
        (((i_8_2 != i_8_3 && Seq#Contains(Seq#Range(0, gsize), i_8_2)) && Seq#Contains(Seq#Range(0, gsize), i_8_3)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_8_2) != Seq#Index(Heap[this, src], i_8_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of main_main might not hold. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@40.12--40.92) [15211]"}
        (forall i_8_2: int ::
        { Seq#Index(Heap[this, src], i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_8_2) } { Seq#Contains(Seq#Range(0, gsize), i_8_2) } { Seq#Index(Heap[this, src], i_8_2) }
        Seq#Contains(Seq#Range(0, gsize), i_8_2) ==> Mask[Seq#Index(Heap[this, src], i_8_2), Integer_value] >= 1 / gsize
      );
    
    // -- assumptions for inverse of receiver this.src[i]
      assume (forall i_8_2: int ::
        { Seq#Index(Heap[this, src], i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_8_2) } { Seq#Contains(Seq#Range(0, gsize), i_8_2) } { Seq#Index(Heap[this, src], i_8_2) }
        Seq#Contains(Seq#Range(0, gsize), i_8_2) && NoPerm < 1 / gsize ==> qpRange3(Seq#Index(Heap[this, src], i_8_2)) && invRecv3(Seq#Index(Heap[this, src], i_8_2)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(Seq#Range(0, gsize), invRecv3(o_4)) && (NoPerm < 1 / gsize && qpRange3(o_4)) ==> Seq#Index(Heap[this, src], invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, gsize), invRecv3(o_4)) && (NoPerm < 1 / gsize && qpRange3(o_4)) ==> Seq#Index(Heap[this, src], invRecv3(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv3(o_4)) && (NoPerm < 1 / gsize && qpRange3(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (tid == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_main might not hold. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@41.11--41.63) [15212]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
    }
    if (tid == 0) {
      if (*) {
        if (0 <= i_9_1 && i_9_1 < tcount) {
          assert {:msg "  Postcondition of main_main might not hold. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@42.12--42.134) [15213]"}
            Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_9_1), Integer_value];
        }
        assume false;
      }
      assume (forall i_10_1_1: int ::
        { Seq#Index(Heap[this, src], i_10_1_1) }
        0 <= i_10_1_1 && i_10_1_1 < tcount ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_10_1_1), Integer_value]
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method main_barrier
// ==================================================

procedure main_barrier(this: Ref, tcount: int, gsize: int, tid: int, gid: int, lid: int, this_barrier: int, last_barrier: int, k: int, half: int, offset: int) returns (sys__result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_16: int;
  var j_18: int;
  var i_18: int;
  var QPMask: MaskType;
  var i_13: int;
  var i_20: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_22: int;
  var i_24: int;
  var i_29: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_15: int;
  var i_17: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    if (this_barrier == 1) {
      assume last_barrier == 0;
    }
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
    assume this != null;
    Mask := Mask[this, src:=Mask[this, src] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@106.12--106.31) [15214]"}
        HasDirectPerm(Mask, this, src);
    assume Seq#Length(Heap[this, src]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, dst:=Mask[this, dst] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@108.12--108.31) [15215]"}
        HasDirectPerm(Mask, this, dst);
    assume Seq#Length(Heap[this, dst]) == gsize;
    assume state(Heap, Mask);
    assume 4 <= gsize;
    assume state(Heap, Mask);
    assume gsize mod 2 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
      if (*) {
        if (0 <= i_16 && (i_16 < gsize && (0 <= j_18 && (j_18 < gsize && i_16 != j_18)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@111.12--111.120) [15216]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@111.12--111.120) [15217]"}
            i_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@111.12--111.120) [15218]"}
            i_16 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@111.12--111.120) [15219]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might be negative. (max-two-range.vpr@111.12--111.120) [15220]"}
            j_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might exceed sequence length. (max-two-range.vpr@111.12--111.120) [15221]"}
            j_18 < Seq#Length(Heap[this, src]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[this, src], i_1), Seq#Index(Heap[this, src], j_1) }
      0 <= i_1 && (i_1 < gsize && (0 <= j_1 && (j_1 < gsize && i_1 != j_1))) ==> Seq#Index(Heap[this, src], i_1) != Seq#Index(Heap[this, src], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_18)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@112.13--112.93) [15222]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@112.13--112.93) [15223]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@112.13--112.93) [15224]"}
            i_18 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@112.13--112.93) [15225]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@112.13--112.93) [15226]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, gsize), i_3)) && Seq#Contains(Seq#Range(0, gsize), i_3_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_3) != Seq#Index(Heap[this, src], i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
        Seq#Contains(Seq#Range(0, gsize), i_3) && NoPerm < 1 / gsize ==> qpRange11(Seq#Index(Heap[this, src], i_3)) && invRecv11(Seq#Index(Heap[this, src], i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv11(o_4)) && NoPerm < 1 / gsize) && qpRange11(o_4) ==> Seq#Index(Heap[this, src], invRecv11(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@112.13--112.93) [15227]"}
      (forall i_3: int ::
      { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
      Seq#Contains(Seq#Range(0, gsize), i_3) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
        Seq#Contains(Seq#Range(0, gsize), i_3) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv11(o_4)) && NoPerm < 1 / gsize) && qpRange11(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv11(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv11(o_4)) && NoPerm < 1 / gsize) && qpRange11(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (last_barrier == 1) {
      if (tid == 0) {
        
        // -- Check definedness of acc(this.dst[0].Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@113.12--113.148) [15228]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@113.12--113.148) [15229]"}
            0 < Seq#Length(Heap[this, dst]);
        perm := FullPerm;
        assume Seq#Index(Heap[this, dst], 0) != null;
        Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] + perm];
        assume state(Heap, Mask);
      }
      if (tid == 0) {
        
        // -- Check definedness of acc(this.dst[1].Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@113.12--113.148) [15230]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@113.12--113.148) [15231]"}
            1 < Seq#Length(Heap[this, dst]);
        perm := FullPerm;
        assume Seq#Index(Heap[this, dst], 1) != null;
        Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] + perm];
        assume state(Heap, Mask);
      }
    }
    assume state(Heap, Mask);
    if (last_barrier == 0) {
      
      // -- Check definedness of acc(this.dst[tid].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@114.12--114.75) [15232]"}
          HasDirectPerm(Mask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@114.12--114.75) [15233]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@114.12--114.75) [15234]"}
          tid < Seq#Length(Heap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(Heap[this, dst], tid) != null;
      Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      assume half + half == gsize;
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      if (tid == 0) {
        
        // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
          if (*) {
            if (0 <= i_13 && i_13 < half) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@116.12--116.153) [15235]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@116.12--116.153) [15236]"}
                0 < Seq#Length(Heap[this, dst]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@116.12--116.153) [15237]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 0), Integer_value);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@116.12--116.153) [15238]"}
                HasDirectPerm(Mask, this, src);
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@116.12--116.153) [15239]"}
                i_13 >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@116.12--116.153) [15240]"}
                i_13 < Seq#Length(Heap[this, src]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@116.12--116.153) [15241]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, src], i_13), Integer_value);
            }
            assume false;
          }
        assume (forall i_5: int ::
          { Seq#Index(Heap[this, src], i_5) }
          0 <= i_5 && i_5 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_5), Integer_value]
        );
      }
    }
    assume state(Heap, Mask);
    if (this_barrier == 1) {
      if (tid == 1) {
        
        // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
          if (*) {
            if (half <= i_20 && i_20 < gsize) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@117.12--117.157) [15242]"}
                HasDirectPerm(Mask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@117.12--117.157) [15243]"}
                1 < Seq#Length(Heap[this, dst]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@117.12--117.157) [15244]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@117.12--117.157) [15245]"}
                HasDirectPerm(Mask, this, src);
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@117.12--117.157) [15246]"}
                i_20 >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@117.12--117.157) [15247]"}
                i_20 < Seq#Length(Heap[this, src]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@117.12--117.157) [15248]"}
                HasDirectPerm(Mask, Seq#Index(Heap[this, src], i_20), Integer_value);
            }
            assume false;
          }
        assume (forall i_7_1: int ::
          { Seq#Index(Heap[this, src], i_7_1) }
          half <= i_7_1 && i_7_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_7_1), Integer_value]
        );
      }
    }
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
    assume this != null;
    PostMask := PostMask[this, src:=PostMask[this, src] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@124.11--124.30) [15249]"}
        HasDirectPerm(PostMask, this, src);
    assume Seq#Length(PostHeap[this, src]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, dst:=PostMask[this, dst] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@126.11--126.30) [15250]"}
        HasDirectPerm(PostMask, this, dst);
    assume Seq#Length(PostHeap[this, dst]) == gsize;
    assume state(PostHeap, PostMask);
    assume 4 <= gsize;
    assume state(PostHeap, PostMask);
    assume gsize mod 2 == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.src == old(this.src)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@129.11--129.36) [15251]"}
        HasDirectPerm(PostMask, this, src);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@129.11--129.36) [15252]"}
        HasDirectPerm(oldMask, this, src);
    assume Seq#Equal(PostHeap[this, src], oldHeap[this, src]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.dst == old(this.dst)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@130.11--130.36) [15253]"}
        HasDirectPerm(PostMask, this, dst);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@130.11--130.36) [15254]"}
        HasDirectPerm(oldMask, this, dst);
    assume Seq#Equal(PostHeap[this, dst], oldHeap[this, dst]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_22)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@131.12--131.92) [15255]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@131.12--131.92) [15256]"}
            i_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@131.12--131.92) [15257]"}
            i_22 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@131.12--131.92) [15258]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@131.12--131.92) [15259]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, gsize), i_9_1)) && Seq#Contains(Seq#Range(0, gsize), i_9_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], i_9_1) != Seq#Index(PostHeap[this, src], i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(PostHeap[this, src], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_9_1) } { Seq#Contains(Seq#Range(0, gsize), i_9_1) } { Seq#Index(PostHeap[this, src], i_9_1) }
        Seq#Contains(Seq#Range(0, gsize), i_9_1) && NoPerm < 1 / gsize ==> qpRange12(Seq#Index(PostHeap[this, src], i_9_1)) && invRecv12(Seq#Index(PostHeap[this, src], i_9_1)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv12(o_4)) && NoPerm < 1 / gsize) && qpRange12(o_4) ==> Seq#Index(PostHeap[this, src], invRecv12(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@131.12--131.92) [15260]"}
      (forall i_9_1: int ::
      { Seq#Index(PostHeap[this, src], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_9_1) } { Seq#Contains(Seq#Range(0, gsize), i_9_1) } { Seq#Index(PostHeap[this, src], i_9_1) }
      Seq#Contains(Seq#Range(0, gsize), i_9_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(PostHeap[this, src], i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_9_1) } { Seq#Contains(Seq#Range(0, gsize), i_9_1) } { Seq#Index(PostHeap[this, src], i_9_1) }
        Seq#Contains(Seq#Range(0, gsize), i_9_1) && 1 / gsize > NoPerm ==> Seq#Index(PostHeap[this, src], i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv12(o_4)) && NoPerm < 1 / gsize) && qpRange12(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], invRecv12(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv12(o_4)) && NoPerm < 1 / gsize) && qpRange12(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (sys__result == 1) {
      if (tid == 0) {
        
        // -- Check definedness of acc(this.dst[0].Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@132.11--132.146) [15261]"}
            HasDirectPerm(PostMask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@132.11--132.146) [15262]"}
            0 < Seq#Length(PostHeap[this, dst]);
        perm := FullPerm;
        assume Seq#Index(PostHeap[this, dst], 0) != null;
        PostMask := PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value] + perm];
        assume state(PostHeap, PostMask);
      }
      if (tid == 0) {
        
        // -- Check definedness of acc(this.dst[1].Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@132.11--132.146) [15263]"}
            HasDirectPerm(PostMask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@132.11--132.146) [15264]"}
            1 < Seq#Length(PostHeap[this, dst]);
        perm := FullPerm;
        assume Seq#Index(PostHeap[this, dst], 1) != null;
        PostMask := PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value] + perm];
        assume state(PostHeap, PostMask);
      }
    }
    assume state(PostHeap, PostMask);
    if (sys__result == 0) {
      
      // -- Check definedness of acc(this.dst[tid].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@133.11--133.73) [15265]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@133.11--133.73) [15266]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@133.11--133.73) [15267]"}
          tid < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], tid), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], tid), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume sys__result == this_barrier;
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      if (tid == 0) {
        
        // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
          if (*) {
            if (0 <= i_24 && i_24 < half) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@135.11--135.152) [15268]"}
                HasDirectPerm(PostMask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@135.11--135.152) [15269]"}
                0 < Seq#Length(PostHeap[this, dst]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@135.11--135.152) [15270]"}
                HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 0), Integer_value);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@135.11--135.152) [15271]"}
                HasDirectPerm(PostMask, this, src);
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@135.11--135.152) [15272]"}
                i_24 >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@135.11--135.152) [15273]"}
                i_24 < Seq#Length(PostHeap[this, src]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@135.11--135.152) [15274]"}
                HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_24), Integer_value);
            }
            assume false;
          }
        assume (forall i_11_1: int ::
          { Seq#Index(PostHeap[this, src], i_11_1) }
          0 <= i_11_1 && i_11_1 < half ==> PostHeap[Seq#Index(PostHeap[this, dst], 0), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_11_1), Integer_value]
        );
      }
    }
    assume state(PostHeap, PostMask);
    if (this_barrier == 1) {
      if (tid == 0) {
        
        // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
          if (*) {
            if (half <= i_29 && i_29 < gsize) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@136.11--136.156) [15275]"}
                HasDirectPerm(PostMask, this, dst);
              assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@136.11--136.156) [15276]"}
                1 < Seq#Length(PostHeap[this, dst]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@136.11--136.156) [15277]"}
                HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 1), Integer_value);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@136.11--136.156) [15278]"}
                HasDirectPerm(PostMask, this, src);
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@136.11--136.156) [15279]"}
                i_29 >= 0;
              assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@136.11--136.156) [15280]"}
                i_29 < Seq#Length(PostHeap[this, src]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@136.11--136.156) [15281]"}
                HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_29), Integer_value);
            }
            assume false;
          }
        assume (forall i_13_1: int ::
          { Seq#Index(PostHeap[this, src], i_13_1) }
          half <= i_13_1 && i_13_1 < gsize ==> PostHeap[Seq#Index(PostHeap[this, dst], 1), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_13_1), Integer_value]
        );
      }
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- max-two-range.vpr@138.3--138.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion 0 <= tid might not hold. (max-two-range.vpr@118.11--118.19) [15282]"}
      0 <= tid;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion tid < tcount might not hold. (max-two-range.vpr@119.11--119.23) [15283]"}
      tid < tcount;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion tid == lid might not hold. (max-two-range.vpr@120.11--120.21) [15284]"}
      tid == lid;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion tcount == gsize might not hold. (max-two-range.vpr@121.11--121.26) [15285]"}
      tcount == gsize;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion gid == 0 might not hold. (max-two-range.vpr@122.11--122.19) [15286]"}
      gid == 0;
    assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.src (max-two-range.vpr@123.11--123.34) [15287]"}
      Mask[this, src] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, src];
    Mask := Mask[this, src:=Mask[this, src] - wildcard];
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion |this.src| == gsize might not hold. (max-two-range.vpr@124.11--124.30) [15288]"}
      Seq#Length(Heap[this, src]) == gsize;
    assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.dst (max-two-range.vpr@125.11--125.34) [15289]"}
      Mask[this, dst] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, dst];
    Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion |this.dst| == gsize might not hold. (max-two-range.vpr@126.11--126.30) [15290]"}
      Seq#Length(Heap[this, dst]) == gsize;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion 4 <= gsize might not hold. (max-two-range.vpr@127.11--127.21) [15291]"}
      4 <= gsize;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion gsize % 2 == 0 might not hold. (max-two-range.vpr@128.11--128.25) [15292]"}
      gsize mod 2 == 0;
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.src == old(this.src) might not hold. (max-two-range.vpr@129.11--129.36) [15293]"}
      Seq#Equal(Heap[this, src], oldHeap[this, src]);
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.dst == old(this.dst) might not hold. (max-two-range.vpr@130.11--130.36) [15294]"}
      Seq#Equal(Heap[this, dst], oldHeap[this, dst]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of main_barrier might not hold. Fraction 1 / gsize might be negative. (max-two-range.vpr@131.12--131.92) [15295]"}
        (forall i_14_1: int ::
        { Seq#Index(Heap[this, src], i_14_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_14_1) } { Seq#Contains(Seq#Range(0, gsize), i_14_1) } { Seq#Index(Heap[this, src], i_14_1) }
        Seq#Contains(Seq#Range(0, gsize), i_14_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_14_1), Integer_value]) ==> 1 / gsize >= NoPerm
      );
    
    // -- check if receiver this.src[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@131.12--131.92) [15296]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered13(i_14_1), neverTriggered13(i_14_2) }
        (((i_14_1 != i_14_2 && Seq#Contains(Seq#Range(0, gsize), i_14_1)) && Seq#Contains(Seq#Range(0, gsize), i_14_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_14_1) != Seq#Index(Heap[this, src], i_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@131.12--131.92) [15297]"}
        (forall i_14_1: int ::
        { Seq#Index(Heap[this, src], i_14_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_14_1) } { Seq#Contains(Seq#Range(0, gsize), i_14_1) } { Seq#Index(Heap[this, src], i_14_1) }
        Seq#Contains(Seq#Range(0, gsize), i_14_1) ==> Mask[Seq#Index(Heap[this, src], i_14_1), Integer_value] >= 1 / gsize
      );
    
    // -- assumptions for inverse of receiver this.src[i]
      assume (forall i_14_1: int ::
        { Seq#Index(Heap[this, src], i_14_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_14_1) } { Seq#Contains(Seq#Range(0, gsize), i_14_1) } { Seq#Index(Heap[this, src], i_14_1) }
        Seq#Contains(Seq#Range(0, gsize), i_14_1) && NoPerm < 1 / gsize ==> qpRange13(Seq#Index(Heap[this, src], i_14_1)) && invRecv13(Seq#Index(Heap[this, src], i_14_1)) == i_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        Seq#Contains(Seq#Range(0, gsize), invRecv13(o_4)) && (NoPerm < 1 / gsize && qpRange13(o_4)) ==> Seq#Index(Heap[this, src], invRecv13(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, gsize), invRecv13(o_4)) && (NoPerm < 1 / gsize && qpRange13(o_4)) ==> Seq#Index(Heap[this, src], invRecv13(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv13(o_4)) && (NoPerm < 1 / gsize && qpRange13(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (sys__result == 1) {
      if (tid == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@132.11--132.146) [15298]"}
            perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
      }
      if (tid == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@132.11--132.146) [15299]"}
            perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
      }
    }
    if (sys__result == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_barrier might not hold. There might be insufficient permission to access this.dst[tid].Integer_value (max-two-range.vpr@133.11--133.73) [15300]"}
          perm <= Mask[Seq#Index(Heap[this, dst], tid), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], tid), Integer_value:=Mask[Seq#Index(Heap[this, dst], tid), Integer_value] - perm];
    }
    assert {:msg "  Postcondition of main_barrier might not hold. Assertion sys__result == this_barrier might not hold. (max-two-range.vpr@134.11--134.38) [15301]"}
      sys__result == this_barrier;
    if (this_barrier == 1) {
      if (tid == 0) {
        if (*) {
          if (0 <= i_15 && i_15 < half) {
            assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@135.11--135.152) [15302]"}
              Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_15), Integer_value];
          }
          assume false;
        }
        assume (forall i_16_1_1: int ::
          { Seq#Index(Heap[this, src], i_16_1_1) }
          0 <= i_16_1_1 && i_16_1_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_16_1_1), Integer_value]
        );
      }
    }
    if (this_barrier == 1) {
      if (tid == 0) {
        if (*) {
          if (half <= i_17 && i_17 < gsize) {
            assert {:msg "  Postcondition of main_barrier might not hold. Assertion this.dst[1].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@136.11--136.156) [15303]"}
              Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_17), Integer_value];
          }
          assume false;
        }
        assume (forall i_18_1_1: int ::
          { Seq#Index(Heap[this, src], i_18_1_1) }
          half <= i_18_1_1 && i_18_1_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_18_1_1), Integer_value]
        );
      }
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method main_resources_of_1
// ==================================================

procedure main_resources_of_1(this: Ref, tcount: int, gsize: int, gid: int, k: int, half: int, offset: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_30: int;
  var j_22: int;
  var i_31: int;
  var QPMask: MaskType;
  var i_32: int;
  var j_23: int;
  var tid_21: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_34: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, src:=Mask[this, src] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@145.12--145.31) [15304]"}
        HasDirectPerm(Mask, this, src);
    assume Seq#Length(Heap[this, src]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, dst:=Mask[this, dst] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@147.12--147.31) [15305]"}
        HasDirectPerm(Mask, this, dst);
    assume Seq#Length(Heap[this, dst]) == gsize;
    assume state(Heap, Mask);
    assume 4 <= gsize;
    assume state(Heap, Mask);
    assume gsize mod 2 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
      if (*) {
        if (0 <= i_30 && (i_30 < gsize && (0 <= j_22 && (j_22 < gsize && i_30 != j_22)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@150.12--150.120) [15306]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@150.12--150.120) [15307]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@150.12--150.120) [15308]"}
            i_30 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@150.12--150.120) [15309]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might be negative. (max-two-range.vpr@150.12--150.120) [15310]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might exceed sequence length. (max-two-range.vpr@150.12--150.120) [15311]"}
            j_22 < Seq#Length(Heap[this, src]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[this, src], i_1), Seq#Index(Heap[this, src], j_1) }
      0 <= i_1 && (i_1 < gsize && (0 <= j_1 && (j_1 < gsize && i_1 != j_1))) ==> Seq#Index(Heap[this, src], i_1) != Seq#Index(Heap[this, src], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_31)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@151.13--151.93) [15312]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@151.13--151.93) [15313]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@151.13--151.93) [15314]"}
            i_31 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@151.13--151.93) [15315]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@151.13--151.93) [15316]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, gsize), i_3)) && Seq#Contains(Seq#Range(0, gsize), i_3_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_3) != Seq#Index(Heap[this, src], i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
        Seq#Contains(Seq#Range(0, gsize), i_3) && NoPerm < 1 / gsize ==> qpRange14(Seq#Index(Heap[this, src], i_3)) && invRecv14(Seq#Index(Heap[this, src], i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv14(o_4)) && NoPerm < 1 / gsize) && qpRange14(o_4) ==> Seq#Index(Heap[this, src], invRecv14(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@151.13--151.93) [15317]"}
      (forall i_3: int ::
      { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
      Seq#Contains(Seq#Range(0, gsize), i_3) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
        Seq#Contains(Seq#Range(0, gsize), i_3) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv14(o_4)) && NoPerm < 1 / gsize) && qpRange14(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv14(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv14(o_4)) && NoPerm < 1 / gsize) && qpRange14(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { this.dst[i], this.dst[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.dst[i] != this.dst[j])
      if (*) {
        if (0 <= i_32 && (i_32 < gsize && (0 <= j_23 && (j_23 < gsize && i_32 != j_23)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@152.12--152.120) [15318]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[i] into this.dst might be negative. (max-two-range.vpr@152.12--152.120) [15319]"}
            i_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[i] into this.dst might exceed sequence length. (max-two-range.vpr@152.12--152.120) [15320]"}
            i_32 < Seq#Length(Heap[this, dst]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@152.12--152.120) [15321]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[j] into this.dst might be negative. (max-two-range.vpr@152.12--152.120) [15322]"}
            j_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[j] into this.dst might exceed sequence length. (max-two-range.vpr@152.12--152.120) [15323]"}
            j_23 < Seq#Length(Heap[this, dst]);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#Index(Heap[this, dst], i_5), Seq#Index(Heap[this, dst], j_3_1) }
      0 <= i_5 && (i_5 < gsize && (0 <= j_3_1 && (j_3_1 < gsize && i_5 != j_3_1))) ==> Seq#Index(Heap[this, dst], i_5) != Seq#Index(Heap[this, dst], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { this.dst[tid] } (tid in [gid * gsize..gsize)) ==> acc(this.dst[tid].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(gid * gsize, gsize), tid_21)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@153.13--153.105) [15324]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might be negative. (max-two-range.vpr@153.13--153.105) [15325]"}
            tid_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[tid] into this.dst might exceed sequence length. (max-two-range.vpr@153.13--153.105) [15326]"}
            tid_21 < Seq#Length(Heap[this, dst]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.dst[tid].Integer_value might not be injective. (max-two-range.vpr@153.13--153.105) [15327]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && Seq#Contains(Seq#Range(gid * gsize, gsize), tid_1)) && Seq#Contains(Seq#Range(gid * gsize, gsize), tid_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[this, dst], tid_1) != Seq#Index(Heap[this, dst], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[this, dst], tid_1) } { Seq#Index(Heap[this, dst], tid_1) }
        Seq#Contains(Seq#Range(gid * gsize, gsize), tid_1) && NoPerm < FullPerm ==> qpRange15(Seq#Index(Heap[this, dst], tid_1)) && invRecv15(Seq#Index(Heap[this, dst], tid_1)) == tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (Seq#Contains(Seq#Range(gid * gsize, gsize), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(Heap[this, dst], invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[this, dst], tid_1) } { Seq#Index(Heap[this, dst], tid_1) }
        Seq#Contains(Seq#Range(gid * gsize, gsize), tid_1) ==> Seq#Index(Heap[this, dst], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(gid * gsize, gsize), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[this, dst], invRecv15(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(gid * gsize, gsize), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, src:=PostMask[this, src] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@157.11--157.30) [15328]"}
        HasDirectPerm(PostMask, this, src);
    assume Seq#Length(PostHeap[this, src]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, dst:=PostMask[this, dst] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@159.11--159.30) [15329]"}
        HasDirectPerm(PostMask, this, dst);
    assume Seq#Length(PostHeap[this, dst]) == gsize;
    assume state(PostHeap, PostMask);
    assume 4 <= gsize;
    assume state(PostHeap, PostMask);
    assume gsize mod 2 == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.src == old(this.src)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@162.11--162.36) [15330]"}
        HasDirectPerm(PostMask, this, src);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@162.11--162.36) [15331]"}
        HasDirectPerm(oldMask, this, src);
    assume Seq#Equal(PostHeap[this, src], oldHeap[this, src]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.dst == old(this.dst)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@163.11--163.36) [15332]"}
        HasDirectPerm(PostMask, this, dst);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@163.11--163.36) [15333]"}
        HasDirectPerm(oldMask, this, dst);
    assume Seq#Equal(PostHeap[this, dst], oldHeap[this, dst]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_34)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@164.12--164.92) [15334]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@164.12--164.92) [15335]"}
            i_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@164.12--164.92) [15336]"}
            i_34 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@164.12--164.92) [15337]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@164.12--164.92) [15338]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, gsize), i_7_1)) && Seq#Contains(Seq#Range(0, gsize), i_7_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], i_7_1) != Seq#Index(PostHeap[this, src], i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
        Seq#Contains(Seq#Range(0, gsize), i_7_1) && NoPerm < 1 / gsize ==> qpRange16(Seq#Index(PostHeap[this, src], i_7_1)) && invRecv16(Seq#Index(PostHeap[this, src], i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv16(o_4)) && NoPerm < 1 / gsize) && qpRange16(o_4) ==> Seq#Index(PostHeap[this, src], invRecv16(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@164.12--164.92) [15339]"}
      (forall i_7_1: int ::
      { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
      Seq#Contains(Seq#Range(0, gsize), i_7_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[this, src], i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_7_1) } { Seq#Contains(Seq#Range(0, gsize), i_7_1) } { Seq#Index(PostHeap[this, src], i_7_1) }
        Seq#Contains(Seq#Range(0, gsize), i_7_1) && 1 / gsize > NoPerm ==> Seq#Index(PostHeap[this, src], i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv16(o_4)) && NoPerm < 1 / gsize) && qpRange16(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], invRecv16(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv16(o_4)) && NoPerm < 1 / gsize) && qpRange16(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (gid * gsize <= 0 && 0 < gsize) {
      
      // -- Check definedness of acc(this.dst[0].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@165.11--165.86) [15340]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@165.11--165.86) [15341]"}
          0 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 0) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (gid * gsize <= 0 && 0 < gsize) {
      
      // -- Check definedness of acc(this.dst[1].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@166.11--166.86) [15342]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@166.11--166.86) [15343]"}
          1 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (max-two-range.vpr@154.11--154.26) [15344]"}
      tcount == gsize;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (max-two-range.vpr@155.11--155.19) [15345]"}
      gid == 0;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.src (max-two-range.vpr@156.11--156.34) [15346]"}
      Mask[this, src] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, src];
    Mask := Mask[this, src:=Mask[this, src] - wildcard];
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion |this.src| == gsize might not hold. (max-two-range.vpr@157.11--157.30) [15347]"}
      Seq#Length(Heap[this, src]) == gsize;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.dst (max-two-range.vpr@158.11--158.34) [15348]"}
      Mask[this, dst] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, dst];
    Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion |this.dst| == gsize might not hold. (max-two-range.vpr@159.11--159.30) [15349]"}
      Seq#Length(Heap[this, dst]) == gsize;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion 4 <= gsize might not hold. (max-two-range.vpr@160.11--160.21) [15350]"}
      4 <= gsize;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion gsize % 2 == 0 might not hold. (max-two-range.vpr@161.11--161.25) [15351]"}
      gsize mod 2 == 0;
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion this.src == old(this.src) might not hold. (max-two-range.vpr@162.11--162.36) [15352]"}
      Seq#Equal(Heap[this, src], oldHeap[this, src]);
    assert {:msg "  Postcondition of main_resources_of_1 might not hold. Assertion this.dst == old(this.dst) might not hold. (max-two-range.vpr@163.11--163.36) [15353]"}
      Seq#Equal(Heap[this, dst], oldHeap[this, dst]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of main_resources_of_1 might not hold. Fraction 1 / gsize might be negative. (max-two-range.vpr@164.12--164.92) [15354]"}
        (forall i_8_2: int ::
        { Seq#Index(Heap[this, src], i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_8_2) } { Seq#Contains(Seq#Range(0, gsize), i_8_2) } { Seq#Index(Heap[this, src], i_8_2) }
        Seq#Contains(Seq#Range(0, gsize), i_8_2) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_8_2), Integer_value]) ==> 1 / gsize >= NoPerm
      );
    
    // -- check if receiver this.src[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@164.12--164.92) [15355]"}
        (forall i_8_2: int, i_8_3: int ::
        { neverTriggered17(i_8_2), neverTriggered17(i_8_3) }
        (((i_8_2 != i_8_3 && Seq#Contains(Seq#Range(0, gsize), i_8_2)) && Seq#Contains(Seq#Range(0, gsize), i_8_3)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_8_2) != Seq#Index(Heap[this, src], i_8_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@164.12--164.92) [15356]"}
        (forall i_8_2: int ::
        { Seq#Index(Heap[this, src], i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_8_2) } { Seq#Contains(Seq#Range(0, gsize), i_8_2) } { Seq#Index(Heap[this, src], i_8_2) }
        Seq#Contains(Seq#Range(0, gsize), i_8_2) ==> Mask[Seq#Index(Heap[this, src], i_8_2), Integer_value] >= 1 / gsize
      );
    
    // -- assumptions for inverse of receiver this.src[i]
      assume (forall i_8_2: int ::
        { Seq#Index(Heap[this, src], i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_8_2) } { Seq#Contains(Seq#Range(0, gsize), i_8_2) } { Seq#Index(Heap[this, src], i_8_2) }
        Seq#Contains(Seq#Range(0, gsize), i_8_2) && NoPerm < 1 / gsize ==> qpRange17(Seq#Index(Heap[this, src], i_8_2)) && invRecv17(Seq#Index(Heap[this, src], i_8_2)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        Seq#Contains(Seq#Range(0, gsize), invRecv17(o_4)) && (NoPerm < 1 / gsize && qpRange17(o_4)) ==> Seq#Index(Heap[this, src], invRecv17(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, gsize), invRecv17(o_4)) && (NoPerm < 1 / gsize && qpRange17(o_4)) ==> Seq#Index(Heap[this, src], invRecv17(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv17(o_4)) && (NoPerm < 1 / gsize && qpRange17(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (gid * gsize <= 0 && 0 < gsize) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@165.11--165.86) [15357]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
    }
    if (gid * gsize <= 0 && 0 < gsize) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_resources_of_1 might not hold. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@166.11--166.86) [15358]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method main_post_check_1
// ==================================================

procedure main_post_check_1(this: Ref, tcount: int, gsize: int, tid: int, gid: int, lid: int, k: int, half: int, offset: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_35: int;
  var j_20: int;
  var i_36: int;
  var QPMask: MaskType;
  var i_41: int;
  var j_24: int;
  var _x_tid_13: int;
  var i_45: int;
  var i_56: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_47: int;
  var i_48: int;
  var i_58: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_17: int;
  var i_19: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
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
    assume this != null;
    Mask := Mask[this, src:=Mask[this, src] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@177.12--177.31) [15359]"}
        HasDirectPerm(Mask, this, src);
    assume Seq#Length(Heap[this, src]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, dst:=Mask[this, dst] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@179.12--179.31) [15360]"}
        HasDirectPerm(Mask, this, dst);
    assume Seq#Length(Heap[this, dst]) == gsize;
    assume state(Heap, Mask);
    assume 4 <= gsize;
    assume state(Heap, Mask);
    assume gsize mod 2 == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
      if (*) {
        if (0 <= i_35 && (i_35 < gsize && (0 <= j_20 && (j_20 < gsize && i_35 != j_20)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@182.12--182.120) [15361]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@182.12--182.120) [15362]"}
            i_35 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@182.12--182.120) [15363]"}
            i_35 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@182.12--182.120) [15364]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might be negative. (max-two-range.vpr@182.12--182.120) [15365]"}
            j_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[j] into this.src might exceed sequence length. (max-two-range.vpr@182.12--182.120) [15366]"}
            j_20 < Seq#Length(Heap[this, src]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[this, src], i_1), Seq#Index(Heap[this, src], j_1) }
      0 <= i_1 && (i_1 < gsize && (0 <= j_1 && (j_1 < gsize && i_1 != j_1))) ==> Seq#Index(Heap[this, src], i_1) != Seq#Index(Heap[this, src], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_36)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@183.13--183.93) [15367]"}
            HasDirectPerm(Mask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@183.13--183.93) [15368]"}
            i_36 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@183.13--183.93) [15369]"}
            i_36 < Seq#Length(Heap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@183.13--183.93) [15370]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@183.13--183.93) [15371]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, gsize), i_3)) && Seq#Contains(Seq#Range(0, gsize), i_3_1)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_3) != Seq#Index(Heap[this, src], i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
        Seq#Contains(Seq#Range(0, gsize), i_3) && NoPerm < 1 / gsize ==> qpRange18(Seq#Index(Heap[this, src], i_3)) && invRecv18(Seq#Index(Heap[this, src], i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv18(o_4)) && NoPerm < 1 / gsize) && qpRange18(o_4) ==> Seq#Index(Heap[this, src], invRecv18(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@183.13--183.93) [15372]"}
      (forall i_3: int ::
      { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
      Seq#Contains(Seq#Range(0, gsize), i_3) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(Heap[this, src], i_3) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_3) } { Seq#Contains(Seq#Range(0, gsize), i_3) } { Seq#Index(Heap[this, src], i_3) }
        Seq#Contains(Seq#Range(0, gsize), i_3) && 1 / gsize > NoPerm ==> Seq#Index(Heap[this, src], i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv18(o_4)) && NoPerm < 1 / gsize) && qpRange18(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], invRecv18(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv18(o_4)) && NoPerm < 1 / gsize) && qpRange18(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { this.dst[i], this.dst[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.dst[i] != this.dst[j])
      if (*) {
        if (0 <= i_41 && (i_41 < gsize && (0 <= j_24 && (j_24 < gsize && i_41 != j_24)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@184.12--184.120) [15373]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[i] into this.dst might be negative. (max-two-range.vpr@184.12--184.120) [15374]"}
            i_41 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[i] into this.dst might exceed sequence length. (max-two-range.vpr@184.12--184.120) [15375]"}
            i_41 < Seq#Length(Heap[this, dst]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@184.12--184.120) [15376]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[j] into this.dst might be negative. (max-two-range.vpr@184.12--184.120) [15377]"}
            j_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[j] into this.dst might exceed sequence length. (max-two-range.vpr@184.12--184.120) [15378]"}
            j_24 < Seq#Length(Heap[this, dst]);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#Index(Heap[this, dst], i_5), Seq#Index(Heap[this, dst], j_3_1) }
      0 <= i_5 && (i_5 < gsize && (0 <= j_3_1 && (j_3_1 < gsize && i_5 != j_3_1))) ==> Seq#Index(Heap[this, dst], i_5) != Seq#Index(Heap[this, dst], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { (_x_tid in [0..gsize)) } { this.dst[_x_tid] } (_x_tid in [0..gsize)) ==> acc(this.dst[_x_tid].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), _x_tid_13)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@185.13--185.104) [15379]"}
            HasDirectPerm(Mask, this, dst);
          assert {:msg "  Contract might not be well-formed. Index this.dst[_x_tid] into this.dst might be negative. (max-two-range.vpr@185.13--185.104) [15380]"}
            _x_tid_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.dst[_x_tid] into this.dst might exceed sequence length. (max-two-range.vpr@185.13--185.104) [15381]"}
            _x_tid_13 < Seq#Length(Heap[this, dst]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.dst[_x_tid].Integer_value might not be injective. (max-two-range.vpr@185.13--185.104) [15382]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && Seq#Contains(Seq#Range(0, gsize), _x_tid_1)) && Seq#Contains(Seq#Range(0, gsize), _x_tid_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[this, dst], _x_tid_1) != Seq#Index(Heap[this, dst], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[this, dst], _x_tid_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), _x_tid_1) } { Seq#Contains(Seq#Range(0, gsize), _x_tid_1) } { Seq#Index(Heap[this, dst], _x_tid_1) }
        Seq#Contains(Seq#Range(0, gsize), _x_tid_1) && NoPerm < FullPerm ==> qpRange19(Seq#Index(Heap[this, dst], _x_tid_1)) && invRecv19(Seq#Index(Heap[this, dst], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> Seq#Index(Heap[this, dst], invRecv19(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[this, dst], _x_tid_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), _x_tid_1) } { Seq#Contains(Seq#Range(0, gsize), _x_tid_1) } { Seq#Index(Heap[this, dst], _x_tid_1) }
        Seq#Contains(Seq#Range(0, gsize), _x_tid_1) ==> Seq#Index(Heap[this, dst], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[this, dst], invRecv19(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume half + half == gsize;
    assume state(Heap, Mask);
    if (0 < gsize) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (0 <= i_45 && i_45 < half) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@187.12--187.142) [15383]"}
              HasDirectPerm(Mask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@187.12--187.142) [15384]"}
              0 < Seq#Length(Heap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@187.12--187.142) [15385]"}
              HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 0), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@187.12--187.142) [15386]"}
              HasDirectPerm(Mask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@187.12--187.142) [15387]"}
              i_45 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@187.12--187.142) [15388]"}
              i_45 < Seq#Length(Heap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@187.12--187.142) [15389]"}
              HasDirectPerm(Mask, Seq#Index(Heap[this, src], i_45), Integer_value);
          }
          assume false;
        }
      assume (forall i_7_1: int ::
        { Seq#Index(Heap[this, src], i_7_1) }
        0 <= i_7_1 && i_7_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_7_1), Integer_value]
      );
    }
    assume state(Heap, Mask);
    if (1 < gsize) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (half <= i_56 && i_56 < gsize) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@188.12--188.146) [15390]"}
              HasDirectPerm(Mask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@188.12--188.146) [15391]"}
              1 < Seq#Length(Heap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@188.12--188.146) [15392]"}
              HasDirectPerm(Mask, Seq#Index(Heap[this, dst], 1), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@188.12--188.146) [15393]"}
              HasDirectPerm(Mask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@188.12--188.146) [15394]"}
              i_56 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@188.12--188.146) [15395]"}
              i_56 < Seq#Length(Heap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@188.12--188.146) [15396]"}
              HasDirectPerm(Mask, Seq#Index(Heap[this, src], i_56), Integer_value);
          }
          assume false;
        }
      assume (forall i_9_1: int ::
        { Seq#Index(Heap[this, src], i_9_1) }
        half <= i_9_1 && i_9_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_9_1), Integer_value]
      );
    }
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
    assume this != null;
    PostMask := PostMask[this, src:=PostMask[this, src] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.src| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@195.11--195.30) [15397]"}
        HasDirectPerm(PostMask, this, src);
    assume Seq#Length(PostHeap[this, src]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, dst:=PostMask[this, dst] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.dst| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@197.11--197.30) [15398]"}
        HasDirectPerm(PostMask, this, dst);
    assume Seq#Length(PostHeap[this, dst]) == gsize;
    assume state(PostHeap, PostMask);
    assume 4 <= gsize;
    assume state(PostHeap, PostMask);
    assume gsize mod 2 == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.src == old(this.src)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@200.11--200.36) [15399]"}
        HasDirectPerm(PostMask, this, src);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@200.11--200.36) [15400]"}
        HasDirectPerm(oldMask, this, src);
    assume Seq#Equal(PostHeap[this, src], oldHeap[this, src]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.dst == old(this.dst)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@201.11--201.36) [15401]"}
        HasDirectPerm(PostMask, this, dst);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@201.11--201.36) [15402]"}
        HasDirectPerm(oldMask, this, dst);
    assume Seq#Equal(PostHeap[this, dst], oldHeap[this, dst]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..gsize)) } { this.src[i] } (i in [0..gsize)) ==> acc(this.src[i].Integer_value, 1 / gsize))
      if (*) {
        if (Seq#Contains(Seq#Range(0, gsize), i_47)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@202.12--202.92) [15403]"}
            HasDirectPerm(PostMask, this, src);
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@202.12--202.92) [15404]"}
            i_47 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@202.12--202.92) [15405]"}
            i_47 < Seq#Length(PostHeap[this, src]);
          assert {:msg "  Contract might not be well-formed. Divisor gsize might be zero. (max-two-range.vpr@202.12--202.92) [15406]"}
            gsize != 0;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@202.12--202.92) [15407]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(0, gsize), i_11_1)) && Seq#Contains(Seq#Range(0, gsize), i_11_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], i_11_1) != Seq#Index(PostHeap[this, src], i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[this, src], i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_11_1) } { Seq#Contains(Seq#Range(0, gsize), i_11_1) } { Seq#Index(PostHeap[this, src], i_11_1) }
        Seq#Contains(Seq#Range(0, gsize), i_11_1) && NoPerm < 1 / gsize ==> qpRange20(Seq#Index(PostHeap[this, src], i_11_1)) && invRecv20(Seq#Index(PostHeap[this, src], i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (Seq#Contains(Seq#Range(0, gsize), invRecv20(o_4)) && NoPerm < 1 / gsize) && qpRange20(o_4) ==> Seq#Index(PostHeap[this, src], invRecv20(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / gsize might be negative. (max-two-range.vpr@202.12--202.92) [15408]"}
      (forall i_11_1: int ::
      { Seq#Index(PostHeap[this, src], i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_11_1) } { Seq#Contains(Seq#Range(0, gsize), i_11_1) } { Seq#Index(PostHeap[this, src], i_11_1) }
      Seq#Contains(Seq#Range(0, gsize), i_11_1) ==> 1 / gsize >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[this, src], i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_11_1) } { Seq#Contains(Seq#Range(0, gsize), i_11_1) } { Seq#Index(PostHeap[this, src], i_11_1) }
        Seq#Contains(Seq#Range(0, gsize), i_11_1) && 1 / gsize > NoPerm ==> Seq#Index(PostHeap[this, src], i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, gsize), invRecv20(o_4)) && NoPerm < 1 / gsize) && qpRange20(o_4) ==> (NoPerm < 1 / gsize ==> Seq#Index(PostHeap[this, src], invRecv20(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / gsize) && (!((Seq#Contains(Seq#Range(0, gsize), invRecv20(o_4)) && NoPerm < 1 / gsize) && qpRange20(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of acc(this.dst[0].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@203.11--203.63) [15409]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@203.11--203.63) [15410]"}
          0 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 0) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 0), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of acc(this.dst[1].Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@204.11--204.63) [15411]"}
          HasDirectPerm(PostMask, this, dst);
        assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@204.11--204.63) [15412]"}
          1 < Seq#Length(PostHeap[this, dst]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[this, dst], 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value:=PostMask[Seq#Index(PostHeap[this, dst], 1), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (0 <= i_48 && i_48 < half) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@205.11--205.128) [15413]"}
              HasDirectPerm(PostMask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[0] into this.dst might exceed sequence length. (max-two-range.vpr@205.11--205.128) [15414]"}
              0 < Seq#Length(PostHeap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@205.11--205.128) [15415]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 0), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@205.11--205.128) [15416]"}
              HasDirectPerm(PostMask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@205.11--205.128) [15417]"}
              i_48 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@205.11--205.128) [15418]"}
              i_48 < Seq#Length(PostHeap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@205.11--205.128) [15419]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_48), Integer_value);
          }
          assume false;
        }
      assume (forall i_13_1: int ::
        { Seq#Index(PostHeap[this, src], i_13_1) }
        0 <= i_13_1 && i_13_1 < half ==> PostHeap[Seq#Index(PostHeap[this, dst], 0), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_13_1), Integer_value]
      );
    }
    assume state(PostHeap, PostMask);
    if (tid == 0) {
      
      // -- Check definedness of (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
        if (*) {
          if (half <= i_58 && i_58 < gsize) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst (max-two-range.vpr@206.11--206.132) [15420]"}
              HasDirectPerm(PostMask, this, dst);
            assert {:msg "  Contract might not be well-formed. Index this.dst[1] into this.dst might exceed sequence length. (max-two-range.vpr@206.11--206.132) [15421]"}
              1 < Seq#Length(PostHeap[this, dst]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@206.11--206.132) [15422]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, dst], 1), Integer_value);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src (max-two-range.vpr@206.11--206.132) [15423]"}
              HasDirectPerm(PostMask, this, src);
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might be negative. (max-two-range.vpr@206.11--206.132) [15424]"}
              i_58 >= 0;
            assert {:msg "  Contract might not be well-formed. Index this.src[i] into this.src might exceed sequence length. (max-two-range.vpr@206.11--206.132) [15425]"}
              i_58 < Seq#Length(PostHeap[this, src]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@206.11--206.132) [15426]"}
              HasDirectPerm(PostMask, Seq#Index(PostHeap[this, src], i_58), Integer_value);
          }
          assume false;
        }
      assume (forall i_15: int ::
        { Seq#Index(PostHeap[this, src], i_15) }
        half <= i_15 && i_15 < gsize ==> PostHeap[Seq#Index(PostHeap[this, dst], 1), Integer_value] >= PostHeap[Seq#Index(PostHeap[this, src], i_15), Integer_value]
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (max-two-range.vpr@189.11--189.19) [15427]"}
      0 <= tid;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion tid < tcount might not hold. (max-two-range.vpr@190.11--190.23) [15428]"}
      tid < tcount;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion tid == lid might not hold. (max-two-range.vpr@191.11--191.21) [15429]"}
      tid == lid;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (max-two-range.vpr@192.11--192.26) [15430]"}
      tcount == gsize;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion gid == 0 might not hold. (max-two-range.vpr@193.11--193.19) [15431]"}
      gid == 0;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.src (max-two-range.vpr@194.11--194.34) [15432]"}
      Mask[this, src] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, src];
    Mask := Mask[this, src:=Mask[this, src] - wildcard];
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion |this.src| == gsize might not hold. (max-two-range.vpr@195.11--195.30) [15433]"}
      Seq#Length(Heap[this, src]) == gsize;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.dst (max-two-range.vpr@196.11--196.34) [15434]"}
      Mask[this, dst] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, dst];
    Mask := Mask[this, dst:=Mask[this, dst] - wildcard];
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion |this.dst| == gsize might not hold. (max-two-range.vpr@197.11--197.30) [15435]"}
      Seq#Length(Heap[this, dst]) == gsize;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion 4 <= gsize might not hold. (max-two-range.vpr@198.11--198.21) [15436]"}
      4 <= gsize;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion gsize % 2 == 0 might not hold. (max-two-range.vpr@199.11--199.25) [15437]"}
      gsize mod 2 == 0;
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.src == old(this.src) might not hold. (max-two-range.vpr@200.11--200.36) [15438]"}
      Seq#Equal(Heap[this, src], oldHeap[this, src]);
    assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.dst == old(this.dst) might not hold. (max-two-range.vpr@201.11--201.36) [15439]"}
      Seq#Equal(Heap[this, dst], oldHeap[this, dst]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of main_post_check_1 might not hold. Fraction 1 / gsize might be negative. (max-two-range.vpr@202.12--202.92) [15440]"}
        (forall i_16_1: int ::
        { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
        Seq#Contains(Seq#Range(0, gsize), i_16_1) && dummyFunction(Heap[Seq#Index(Heap[this, src], i_16_1), Integer_value]) ==> 1 / gsize >= NoPerm
      );
    
    // -- check if receiver this.src[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.src[i].Integer_value might not be injective. (max-two-range.vpr@202.12--202.92) [15441]"}
        (forall i_16_1: int, i_16_2: int ::
        { neverTriggered21(i_16_1), neverTriggered21(i_16_2) }
        (((i_16_1 != i_16_2 && Seq#Contains(Seq#Range(0, gsize), i_16_1)) && Seq#Contains(Seq#Range(0, gsize), i_16_2)) && NoPerm < 1 / gsize) && NoPerm < 1 / gsize ==> Seq#Index(Heap[this, src], i_16_1) != Seq#Index(Heap[this, src], i_16_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.src[i].Integer_value (max-two-range.vpr@202.12--202.92) [15442]"}
        (forall i_16_1: int ::
        { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
        Seq#Contains(Seq#Range(0, gsize), i_16_1) ==> Mask[Seq#Index(Heap[this, src], i_16_1), Integer_value] >= 1 / gsize
      );
    
    // -- assumptions for inverse of receiver this.src[i]
      assume (forall i_16_1: int ::
        { Seq#Index(Heap[this, src], i_16_1) } { Seq#ContainsTrigger(Seq#Range(0, gsize), i_16_1) } { Seq#Contains(Seq#Range(0, gsize), i_16_1) } { Seq#Index(Heap[this, src], i_16_1) }
        Seq#Contains(Seq#Range(0, gsize), i_16_1) && NoPerm < 1 / gsize ==> qpRange21(Seq#Index(Heap[this, src], i_16_1)) && invRecv21(Seq#Index(Heap[this, src], i_16_1)) == i_16_1
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        Seq#Contains(Seq#Range(0, gsize), invRecv21(o_4)) && (NoPerm < 1 / gsize && qpRange21(o_4)) ==> Seq#Index(Heap[this, src], invRecv21(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, gsize), invRecv21(o_4)) && (NoPerm < 1 / gsize && qpRange21(o_4)) ==> Seq#Index(Heap[this, src], invRecv21(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / gsize) && (!(Seq#Contains(Seq#Range(0, gsize), invRecv21(o_4)) && (NoPerm < 1 / gsize && qpRange21(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (tid == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.dst[0].Integer_value (max-two-range.vpr@203.11--203.63) [15443]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 0), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 0), Integer_value:=Mask[Seq#Index(Heap[this, dst], 0), Integer_value] - perm];
    }
    if (tid == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of main_post_check_1 might not hold. There might be insufficient permission to access this.dst[1].Integer_value (max-two-range.vpr@204.11--204.63) [15444]"}
          perm <= Mask[Seq#Index(Heap[this, dst], 1), Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[this, dst], 1), Integer_value:=Mask[Seq#Index(Heap[this, dst], 1), Integer_value] - perm];
    }
    if (tid == 0) {
      if (*) {
        if (0 <= i_17 && i_17 < half) {
          assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.dst[0].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@205.11--205.128) [15445]"}
            Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_17), Integer_value];
        }
        assume false;
      }
      assume (forall i_18_1_1: int ::
        { Seq#Index(Heap[this, src], i_18_1_1) }
        0 <= i_18_1_1 && i_18_1_1 < half ==> Heap[Seq#Index(Heap[this, dst], 0), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_18_1_1), Integer_value]
      );
    }
    if (tid == 0) {
      if (*) {
        if (half <= i_19 && i_19 < gsize) {
          assert {:msg "  Postcondition of main_post_check_1 might not hold. Assertion this.dst[1].Integer_value >= this.src[i].Integer_value might not hold. (max-two-range.vpr@206.11--206.132) [15446]"}
            Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_19), Integer_value];
        }
        assume false;
      }
      assume (forall i_20_1_1: int ::
        { Seq#Index(Heap[this, src], i_20_1_1) }
        half <= i_20_1_1 && i_20_1_1 < gsize ==> Heap[Seq#Index(Heap[this, dst], 1), Integer_value] >= Heap[Seq#Index(Heap[this, src], i_20_1_1), Integer_value]
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}