// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:32:54
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testTranspose.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testTranspose-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_36: Ref, f_50: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_36, f_50] }
  Heap[o_36, $allocated] ==> Heap[Heap[o_36, f_50], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_37: Ref, f_18: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_37, f_18] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_37, f_18) ==> Heap[o_37, f_18] == ExhaleHeap[o_37, f_18]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_17), ExhaleHeap[null, PredicateMaskField(pm_f_17)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsPredicateField(pm_f_17) ==> Heap[null, PredicateMaskField(pm_f_17)] == ExhaleHeap[null, PredicateMaskField(pm_f_17)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_17: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_17) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsPredicateField(pm_f_17) ==> (forall <A, B> o2_17: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_17, f_18] }
    Heap[null, PredicateMaskField(pm_f_17)][o2_17, f_18] ==> Heap[o2_17, f_18] == ExhaleHeap[o2_17, f_18]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_17) && IsWandField(pm_f_17) ==> (forall <A, B> o2_17: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_17, f_18] }
    Heap[null, WandMaskField(pm_f_17)][o2_17, f_18] ==> Heap[o2_17, f_18] == ExhaleHeap[o2_17, f_18]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_37: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_37, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_37, $allocated] ==> ExhaleHeap[o_37, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_36: Ref, f_29: (Field A B), v: B ::
  { Heap[o_36, f_29:=v] }
  succHeap(Heap, Heap[o_36, f_29:=v])
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

function  neverTriggered1(k_8: int): bool;
function  neverTriggered2(k_11: int): bool;
function  neverTriggered3(k_8: int): bool;
function  neverTriggered4(k_11: int): bool;
function  neverTriggered5(k_8: int): bool;
function  neverTriggered6(k_11: int): bool;
function  neverTriggered7(k_8: int): bool;
function  neverTriggered8(k_11: int): bool;
function  neverTriggered9(j_3: int): bool;
function  neverTriggered10(i_1: int): bool;
function  neverTriggered11(j_7_1: int): bool;
function  neverTriggered12(i_3_2: int): bool;
function  neverTriggered13(j_10_2: int): bool;
function  neverTriggered14(i_6_2: int): bool;
function  neverTriggered15(j1_1: int): bool;
function  neverTriggered16(j1_3_1: int): bool;
function  neverTriggered17(j1_5_1: int): bool;
function  neverTriggered18(j1_7_1: int): bool;
function  neverTriggered19(j1_8: int): bool;
function  neverTriggered20(j1_9: int): bool;
function  neverTriggered21(j_14_2: int): bool;
function  neverTriggered22(i_8_1: int): bool;
function  neverTriggered23(j_17_2: int): bool;
function  neverTriggered24(i_9_1: int): bool;
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
function  invRecv22(recv: Ref): int;
function  invRecv23(recv: Ref): int;
function  invRecv24(recv: Ref): int;
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
function  qpRange22(recv: Ref): bool;
function  qpRange23(recv: Ref): bool;
function  qpRange24(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 6: count_list
// - height 5: sum_list
// - height 4: sum_square
// - height 3: sum_array
// - height 2: count_array
// - height 1: Ref__multidim_index_2
// - height 0: count_square
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

const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of function Ref__multidim_index_2
// ==================================================

// Uninterpreted function definitions
function  Ref__multidim_index_2(Heap: HeapType, N0: int, N1: int, i0_3: int, i1_9: int): int;
function  Ref__multidim_index_2'(Heap: HeapType, N0: int, N1: int, i0_3: int, i1_9: int): int;
axiom (forall Heap: HeapType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { Ref__multidim_index_2(Heap, N0, N1, i0_3, i1_9) }
  Ref__multidim_index_2(Heap, N0, N1, i0_3, i1_9) == Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) && dummyFunction(Ref__multidim_index_2#triggerStateless(N0, N1, i0_3, i1_9))
);
axiom (forall Heap: HeapType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  dummyFunction(Ref__multidim_index_2#triggerStateless(N0, N1, i0_3, i1_9))
);

// Framing axioms
function  Ref__multidim_index_2#frame(frame: FrameType, N0: int, N1: int, i0_3: int, i1_9: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) == Ref__multidim_index_2#frame(EmptyFrame, N0, N1, i0_3, i1_9)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> 0 <= Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9)
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) < N0 * N1
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) == i0_3 * N1 + i1_9
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) mod N1 == i1_9
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0_3: int, i1_9: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0_3, i1_9)) ==> ((((0 <= i0_3 && i0_3 < N0) && 0 <= N0) && 0 <= i1_9) && i1_9 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0_3, i1_9) mod N1 < N0
);

// Trigger function (controlling recursive postconditions)
function  Ref__multidim_index_2#trigger(frame: FrameType, N0: int, N1: int, i0_3: int, i1_9: int): bool;

// State-independent trigger function
function  Ref__multidim_index_2#triggerStateless(N0: int, N1: int, i0_3: int, i1_9: int): int;

// Check contract well-formedness and postcondition
procedure Ref__multidim_index_2#definedness(N0: int, N1: int, i0_3: int, i1_9: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i0_3;
    assume state(Heap, Mask);
    assume i0_3 < N0;
    assume state(Heap, Mask);
    assume 0 <= N0;
    assume state(Heap, Mask);
    assume 0 <= i1_9;
    assume state(Heap, Mask);
    assume i1_9 < N1;
    assume state(Heap, Mask);
    assume 0 <= N1;
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume 0 <= Result;
    assume state(Heap, Mask);
    assume Result < N0 * N1;
    assume state(Heap, Mask);
    assume Result == i0_3 * N1 + i1_9;
    assume state(Heap, Mask);
    
    // -- Check definedness of result % N1 == i1
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (testTranspose.vpr@16.11--16.28) [132295]"}
        N1 != 0;
    assume Result mod N1 == i1_9;
    assume state(Heap, Mask);
    
    // -- Check definedness of result % N1 < N0
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (testTranspose.vpr@17.11--17.27) [132296]"}
        N1 != 0;
    assume Result mod N1 < N0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function sum_list
// ==================================================

// Uninterpreted function definitions
function  sum_list(Heap: HeapType, i: int, hi: int, ar_1: (Seq int)): int;
function  sum_list'(Heap: HeapType, i: int, hi: int, ar_1: (Seq int)): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq int) ::
  { sum_list(Heap, i, hi, ar_1) }
  sum_list(Heap, i, hi, ar_1) == sum_list'(Heap, i, hi, ar_1) && dummyFunction(sum_list#triggerStateless(i, hi, ar_1))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq int) ::
  { sum_list'(Heap, i, hi, ar_1) }
  dummyFunction(sum_list#triggerStateless(i, hi, ar_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq int) ::
  { state(Heap, Mask), sum_list(Heap, i, hi, ar_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar_1) ==> sum_list(Heap, i, hi, ar_1) == (if i < hi then Seq#Index(ar_1, i) + sum_list'(Heap, i + 1, hi, ar_1) else 0)
);

// Framing axioms
function  sum_list#frame(frame: FrameType, i: int, hi: int, ar_1: (Seq int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq int) ::
  { state(Heap, Mask), sum_list'(Heap, i, hi, ar_1) }
  state(Heap, Mask) ==> sum_list'(Heap, i, hi, ar_1) == sum_list#frame(EmptyFrame, i, hi, ar_1)
);

// Trigger function (controlling recursive postconditions)
function  sum_list#trigger(frame: FrameType, i: int, hi: int, ar_1: (Seq int)): bool;

// State-independent trigger function
function  sum_list#triggerStateless(i: int, hi: int, ar_1: (Seq int)): int;

// Check contract well-formedness and postcondition
procedure sum_list#definedness(i: int, hi: int, ar_1: (Seq int)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@20.1--25.2) [132297]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@20.1--25.2) [132298]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (testTranspose.vpr@24.21--24.44) [132299]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (testTranspose.vpr@24.21--24.44) [132300]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (testTranspose.vpr@24.21--24.44) [132301]"}
            hi <= Seq#Length(ar_1);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_list#trigger(EmptyFrame, i + 1, hi, ar_1);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Seq#Index(ar_1, i) + sum_list(Heap, i + 1, hi, ar_1) else 0);
}

// ==================================================
// Translation of function sum_array
// ==================================================

// Uninterpreted function definitions
function  sum_array(Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref)): int;
function  sum_array'(Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { sum_array(Heap, i, lo, hi, ar_1) }
  sum_array(Heap, i, lo, hi, ar_1) == sum_array'(Heap, i, lo, hi, ar_1) && dummyFunction(sum_array#triggerStateless(i, lo, hi, ar_1))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { sum_array'(Heap, i, lo, hi, ar_1) }
  dummyFunction(sum_array#triggerStateless(i, lo, hi, ar_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { state(Heap, Mask), sum_array(Heap, i, lo, hi, ar_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar_1)) && (forall j: int, k: int ::
    { Seq#Index(ar_1, j), Seq#Index(ar_1, k) }
    0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> Seq#Index(ar_1, j) != Seq#Index(ar_1, k)
  ) ==> sum_array(Heap, i, lo, hi, ar_1) == (if i < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] + sum_array'(Heap, i + 1, lo, hi, ar_1) else 0)
);

// Framing axioms
function  sum_array#frame(frame: FrameType, i: int, lo: int, hi: int, ar_1: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { state(Heap, Mask), sum_array'(Heap, i, lo, hi, ar_1) }
  state(Heap, Mask) ==> sum_array'(Heap, i, lo, hi, ar_1) == sum_array#frame(FrameFragment(sum_array#condqp1(Heap, i, lo, hi, ar_1)), i, lo, hi, ar_1)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_array
// ==================================================

function  sum_array#condqp1(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_array#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, ar_1: (Seq Ref) ::
  { sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) < hi <==> lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) < hi) && (lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)) < hi ==> Heap2Heap[Seq#Index(ar_1, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar_1, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1), sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1))), Ref__Integer_value]) ==> sum_array#condqp1(Heap2Heap, i, lo, hi, ar_1) == sum_array#condqp1(Heap1Heap, i, lo, hi, ar_1)
);

// Trigger function (controlling recursive postconditions)
function  sum_array#trigger(frame: FrameType, i: int, lo: int, hi: int, ar_1: (Seq Ref)): bool;

// State-independent trigger function
function  sum_array#triggerStateless(i: int, lo: int, hi: int, ar_1: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_array#definedness(i: int, lo: int, hi: int, ar_1: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var j_14: int;
  var k_16: int;
  var k_6: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_4_1: int;
  var k_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_14 && (j_14 < hi && (0 <= k_16 && (k_16 < hi && j_14 != k_16)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testTranspose.vpr@30.12--30.102) [132302]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testTranspose.vpr@30.12--30.102) [132303]"}
            j_14 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@30.12--30.102) [132304]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@30.12--30.102) [132305]"}
            k_16 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_6_2: int ::
      { Seq#Index(ar_1, j_3), Seq#Index(ar_1, k_6_2) }
      0 <= j_3 && (j_3 < hi && (0 <= k_6_2 && (k_6_2 < hi && j_3 != k_6_2))) ==> Seq#Index(ar_1, j_3) != Seq#Index(ar_1, k_6_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (lo <= k_6 && k_6 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@31.13--31.95) [132306]"}
            k_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@31.13--31.95) [132307]"}
            k_6 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@31.13--31.95) [132308]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (lo <= k_8 && k_8 < hi)) && (lo <= k_8_1 && k_8_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_8) != Seq#Index(ar_1, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        lo <= k_8 && k_8 < hi ==> qpRange1(Seq#Index(ar_1, k_8)) && invRecv1(Seq#Index(ar_1, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (lo <= invRecv1(o_9) && invRecv1(o_9) < hi) && qpRange1(o_9) ==> Seq#Index(ar_1, invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        lo <= k_8 && k_8 < hi ==> Seq#Index(ar_1, k_8) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((lo <= invRecv1(o_9) && invRecv1(o_9) < hi) && qpRange1(o_9) ==> Seq#Index(ar_1, invRecv1(o_9)) == o_9 && Mask[o_9, Ref__Integer_value] < QPMask[o_9, Ref__Integer_value]) && (!((lo <= invRecv1(o_9) && invRecv1(o_9) < hi) && qpRange1(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i].Ref__Integer_value + sum_array(i + 1, lo, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@27.1--34.2) [132309]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@27.1--34.2) [132310]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testTranspose.vpr@27.1--34.2) [132311]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (testTranspose.vpr@33.40--33.68) [132312]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (testTranspose.vpr@33.40--33.68) [132313]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (testTranspose.vpr@33.40--33.68) [132314]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (testTranspose.vpr@33.40--33.68) [132315]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9_1 && (k_9_1 < hi && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[j] != ar[k] might not hold. (testTranspose.vpr@33.40--33.68) [132316]"}
                Seq#Index(ar_1, j_4_1) != Seq#Index(ar_1, k_9_1);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar_1, j_5_1_1), Seq#Index(ar_1, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < hi && (0 <= k_10_1 && (k_10_1 < hi && j_5_1_1 != k_10_1))) ==> Seq#Index(ar_1, j_5_1_1) != Seq#Index(ar_1, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@33.40--33.68) [132317]"}
            (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (testTranspose.vpr@33.40--33.68) [132318]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (lo <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@33.40--33.68) [132319]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && (lo <= k_11 && k_11 < hi)) && (lo <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@33.40--33.68) [132320]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              lo <= k_11 && k_11 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (lo <= k_11 && k_11 < hi) && NoPerm < wildcard ==> qpRange2(Seq#Index(ar_1, k_11)) && invRecv2(Seq#Index(ar_1, k_11)) == k_11
            );
            assume (forall o_9: Ref ::
              { invRecv2(o_9) }
              (lo <= invRecv2(o_9) && invRecv2(o_9) < hi) && (NoPerm < wildcard && qpRange2(o_9)) ==> Seq#Index(ar_1, invRecv2(o_9)) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_array#trigger(FrameFragment(sum_array#condqp1(Heap, i + 1, lo, hi, ar_1)), i + 1, lo, hi, ar_1);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] + sum_array(Heap, i + 1, lo, hi, ar_1) else 0);
}

// ==================================================
// Translation of function sum_square
// ==================================================

// Uninterpreted function definitions
function  sum_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): int;
function  sum_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) }
  sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == sum_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) && dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax_1, ar_1))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { sum_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) }
  dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax_1, ar_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { state(Heap, Mask), sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1))) && vmax_1 <= Seq#Length(ar_1)) && (forall j: int, k: int ::
    { Seq#Index(ar_1, j), Seq#Index(ar_1, k) }
    0 <= j && (j < vmax_1 && (0 <= k && (k < vmax_1 && j != k))) ==> Seq#Index(ar_1, j) != Seq#Index(ar_1, k)
  ) ==> sum_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == (if i < vmax_1 then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] else 0) + sum_square'(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1) else 0)
);

// Framing axioms
function  sum_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { state(Heap, Mask), sum_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) }
  state(Heap, Mask) ==> sum_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == sum_square#frame(FrameFragment(sum_square#condqp2(Heap, i, lo, hi, step, vmin, vmax_1, ar_1)), i, lo, hi, step, vmin, vmax_1, ar_1)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_square
// ==================================================

function  sum_square#condqp2(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_square#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref) ::
  { sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) < vmax_1 && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step < hi)) <==> vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) < vmax_1 && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step < hi))) && (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) < vmax_1 && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar_1, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar_1, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1))), Ref__Integer_value]) ==> sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1) == sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1)
);

// Trigger function (controlling recursive postconditions)
function  sum_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): bool;

// State-independent trigger function
function  sum_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var j_12: int;
  var k_19: int;
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_4_1: int;
  var k_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax_1;
    assume state(Heap, Mask);
    assume vmax_1 <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < max && (0 <= k && (k < max && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_12 && (j_12 < vmax_1 && (0 <= k_19 && (k_19 < vmax_1 && j_12 != k_19)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testTranspose.vpr@40.12--40.104) [132321]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testTranspose.vpr@40.12--40.104) [132322]"}
            j_12 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@40.12--40.104) [132323]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@40.12--40.104) [132324]"}
            k_19 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_6_2: int ::
      { Seq#Index(ar_1, j_3), Seq#Index(ar_1, k_6_2) }
      0 <= j_3 && (j_3 < vmax_1 && (0 <= k_6_2 && (k_6_2 < vmax_1 && j_3 != k_6_2))) ==> Seq#Index(ar_1, j_3) != Seq#Index(ar_1, k_6_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_7) {
          if (k_7 < vmax_1) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testTranspose.vpr@41.13--41.136) [132325]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testTranspose.vpr@41.13--41.136) [132326]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax_1 && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@41.13--41.136) [132327]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@41.13--41.136) [132328]"}
            k_7 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@41.13--41.136) [132329]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)))) && (vmin <= k_8_1 && (k_8_1 < vmax_1 && (lo <= k_8_1 mod step && k_8_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_8) != Seq#Index(ar_1, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)) ==> qpRange3(Seq#Index(ar_1, k_8)) && invRecv3(Seq#Index(ar_1, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (vmin <= invRecv3(o_9) && (invRecv3(o_9) < vmax_1 && (lo <= invRecv3(o_9) mod step && invRecv3(o_9) mod step < hi))) && qpRange3(o_9) ==> Seq#Index(ar_1, invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)) ==> Seq#Index(ar_1, k_8) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((vmin <= invRecv3(o_9) && (invRecv3(o_9) < vmax_1 && (lo <= invRecv3(o_9) mod step && invRecv3(o_9) mod step < hi))) && qpRange3(o_9) ==> Seq#Index(ar_1, invRecv3(o_9)) == o_9 && Mask[o_9, Ref__Integer_value] < QPMask[o_9, Ref__Integer_value]) && (!((vmin <= invRecv3(o_9) && (invRecv3(o_9) < vmax_1 && (lo <= invRecv3(o_9) mod step && invRecv3(o_9) mod step < hi))) && qpRange3(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && i % step < hi ? ar[i].Ref__Integer_value : 0) + sum_square(i + 1, lo, hi, step, min, max, ar) : 0)
      if (i < vmax_1) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testTranspose.vpr@36.1--44.2) [132330]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testTranspose.vpr@36.1--44.2) [132331]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@36.1--44.2) [132332]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@36.1--44.2) [132333]"}
            i < Seq#Length(ar_1);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testTranspose.vpr@36.1--44.2) [132334]"}
            HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (testTranspose.vpr@43.85--43.130) [132335]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (testTranspose.vpr@43.85--43.130) [132336]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (testTranspose.vpr@43.85--43.130) [132337]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (testTranspose.vpr@43.85--43.130) [132338]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (testTranspose.vpr@43.85--43.130) [132339]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (testTranspose.vpr@43.85--43.130) [132340]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (testTranspose.vpr@43.85--43.130) [132341]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (testTranspose.vpr@43.85--43.130) [132342]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax_1 && (0 <= k_9_1 && (k_9_1 < vmax_1 && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[j] != ar[k] might not hold. (testTranspose.vpr@43.85--43.130) [132343]"}
                Seq#Index(ar_1, j_4_1) != Seq#Index(ar_1, k_9_1);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar_1, j_5_1_1), Seq#Index(ar_1, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < vmax_1 && (0 <= k_10_1 && (k_10_1 < vmax_1 && j_5_1_1 != k_10_1))) ==> Seq#Index(ar_1, j_5_1_1) != Seq#Index(ar_1, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@43.85--43.130) [132344]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (testTranspose.vpr@43.85--43.130) [132345]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@43.85--43.130) [132346]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@43.85--43.130) [132347]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && NoPerm < wildcard ==> qpRange4(Seq#Index(ar_1, k_11)) && invRecv4(Seq#Index(ar_1, k_11)) == k_11
            );
            assume (forall o_9: Ref ::
              { invRecv4(o_9) }
              (vmin <= invRecv4(o_9) && (invRecv4(o_9) < vmax_1 && (lo <= invRecv4(o_9) mod step && invRecv4(o_9) mod step < hi))) && (NoPerm < wildcard && qpRange4(o_9)) ==> Seq#Index(ar_1, invRecv4(o_9)) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_square#trigger(FrameFragment(sum_square#condqp2(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1)), i + 1, lo, hi, step, vmin, vmax_1, ar_1);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax_1 then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar_1, i), Ref__Integer_value] else 0) + sum_square(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1) else 0);
}

// ==================================================
// Translation of function count_square
// ==================================================

// Uninterpreted function definitions
function  count_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): int;
function  count_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) }
  count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == count_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) && dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax_1, ar_1, v_2))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { count_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) }
  dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax_1, ar_1, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1))) && vmax_1 <= Seq#Length(ar_1)) && (forall j: int, k: int ::
    { Seq#Index(ar_1, j), Seq#Index(ar_1, k) }
    0 <= j && (j < vmax_1 && (0 <= k && (k < vmax_1 && j != k))) ==> Seq#Index(ar_1, j) != Seq#Index(ar_1, k)
  ) ==> count_square(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == (if i < vmax_1 then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square'(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2) else 0)
);

// Framing axioms
function  count_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) }
  state(Heap, Mask) ==> count_square'(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == count_square#frame(FrameFragment(count_square#condqp3(Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)), i, lo, hi, step, vmin, vmax_1, ar_1, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_square
// ==================================================

function  count_square#condqp3(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_square#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int ::
  { count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) < vmax_1 && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step < hi)) <==> vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) < vmax_1 && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step < hi))) && (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) < vmax_1 && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar_1, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar_1, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2))), Ref__Integer_value]) ==> count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2) == count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax_1, ar_1, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax_1: int, ar_1: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var j_2: int;
  var k_4: int;
  var k_14: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_4_1: int;
  var k_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax_1;
    assume state(Heap, Mask);
    assume vmax_1 <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < max && (0 <= k && (k < max && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_2 && (j_2 < vmax_1 && (0 <= k_4 && (k_4 < vmax_1 && j_2 != k_4)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testTranspose.vpr@50.12--50.104) [132348]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testTranspose.vpr@50.12--50.104) [132349]"}
            j_2 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@50.12--50.104) [132350]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@50.12--50.104) [132351]"}
            k_4 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_6_2: int ::
      { Seq#Index(ar_1, j_3), Seq#Index(ar_1, k_6_2) }
      0 <= j_3 && (j_3 < vmax_1 && (0 <= k_6_2 && (k_6_2 < vmax_1 && j_3 != k_6_2))) ==> Seq#Index(ar_1, j_3) != Seq#Index(ar_1, k_6_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_14) {
          if (k_14 < vmax_1) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testTranspose.vpr@51.13--51.136) [132352]"}
              step != 0;
            if (lo <= k_14 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testTranspose.vpr@51.13--51.136) [132353]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_14 && (k_14 < vmax_1 && (lo <= k_14 mod step && k_14 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@51.13--51.136) [132354]"}
            k_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@51.13--51.136) [132355]"}
            k_14 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@51.13--51.136) [132356]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)))) && (vmin <= k_8_1 && (k_8_1 < vmax_1 && (lo <= k_8_1 mod step && k_8_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_8) != Seq#Index(ar_1, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)) ==> qpRange5(Seq#Index(ar_1, k_8)) && invRecv5(Seq#Index(ar_1, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (vmin <= invRecv5(o_9) && (invRecv5(o_9) < vmax_1 && (lo <= invRecv5(o_9) mod step && invRecv5(o_9) mod step < hi))) && qpRange5(o_9) ==> Seq#Index(ar_1, invRecv5(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        vmin <= k_8 && (k_8 < vmax_1 && (lo <= k_8 mod step && k_8 mod step < hi)) ==> Seq#Index(ar_1, k_8) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((vmin <= invRecv5(o_9) && (invRecv5(o_9) < vmax_1 && (lo <= invRecv5(o_9) mod step && invRecv5(o_9) mod step < hi))) && qpRange5(o_9) ==> Seq#Index(ar_1, invRecv5(o_9)) == o_9 && Mask[o_9, Ref__Integer_value] < QPMask[o_9, Ref__Integer_value]) && (!((vmin <= invRecv5(o_9) && (invRecv5(o_9) < vmax_1 && (lo <= invRecv5(o_9) mod step && invRecv5(o_9) mod step < hi))) && qpRange5(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && (i % step < hi && ar[i].Ref__Integer_value == v) ? 1 : 0) + count_square(i + 1, lo, hi, step, min, max, ar, v) : 0)
      if (i < vmax_1) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testTranspose.vpr@46.1--54.2) [132357]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testTranspose.vpr@46.1--54.2) [132358]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@46.1--54.2) [132359]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@46.1--54.2) [132360]"}
              i < Seq#Length(ar_1);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testTranspose.vpr@46.1--54.2) [132361]"}
              HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (testTranspose.vpr@53.97--53.147) [132362]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (testTranspose.vpr@53.97--53.147) [132363]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (testTranspose.vpr@53.97--53.147) [132364]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testTranspose.vpr@53.97--53.147) [132365]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (testTranspose.vpr@53.97--53.147) [132366]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (testTranspose.vpr@53.97--53.147) [132367]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (testTranspose.vpr@53.97--53.147) [132368]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (testTranspose.vpr@53.97--53.147) [132369]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax_1 && (0 <= k_9_1 && (k_9_1 < vmax_1 && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[j] != ar[k] might not hold. (testTranspose.vpr@53.97--53.147) [132370]"}
                Seq#Index(ar_1, j_4_1) != Seq#Index(ar_1, k_9_1);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar_1, j_5_1_1), Seq#Index(ar_1, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < vmax_1 && (0 <= k_10_1 && (k_10_1 < vmax_1 && j_5_1_1 != k_10_1))) ==> Seq#Index(ar_1, j_5_1_1) != Seq#Index(ar_1, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@53.97--53.147) [132371]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testTranspose.vpr@53.97--53.147) [132372]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@53.97--53.147) [132373]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@53.97--53.147) [132374]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && NoPerm < wildcard ==> qpRange6(Seq#Index(ar_1, k_11)) && invRecv6(Seq#Index(ar_1, k_11)) == k_11
            );
            assume (forall o_9: Ref ::
              { invRecv6(o_9) }
              (vmin <= invRecv6(o_9) && (invRecv6(o_9) < vmax_1 && (lo <= invRecv6(o_9) mod step && invRecv6(o_9) mod step < hi))) && (NoPerm < wildcard && qpRange6(o_9)) ==> Seq#Index(ar_1, invRecv6(o_9)) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_square#trigger(FrameFragment(count_square#condqp3(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2)), i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax_1 then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square(Heap, i + 1, lo, hi, step, vmin, vmax_1, ar_1, v_2) else 0);
}

// ==================================================
// Translation of function count_list
// ==================================================

// Uninterpreted function definitions
function  count_list(Heap: HeapType, i: int, hi: int, ar_1: (Seq int), v_2: int): int;
function  count_list'(Heap: HeapType, i: int, hi: int, ar_1: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq int), v_2: int ::
  { count_list(Heap, i, hi, ar_1, v_2) }
  count_list(Heap, i, hi, ar_1, v_2) == count_list'(Heap, i, hi, ar_1, v_2) && dummyFunction(count_list#triggerStateless(i, hi, ar_1, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq int), v_2: int ::
  { count_list'(Heap, i, hi, ar_1, v_2) }
  dummyFunction(count_list#triggerStateless(i, hi, ar_1, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list(Heap, i, hi, ar_1, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar_1) ==> count_list(Heap, i, hi, ar_1, v_2) == (if i < hi then (if Seq#Index(ar_1, i) == v_2 then 1 else 0) + count_list'(Heap, i + 1, hi, ar_1, v_2) else 0)
);

// Framing axioms
function  count_list#frame(frame: FrameType, i: int, hi: int, ar_1: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list'(Heap, i, hi, ar_1, v_2) }
  state(Heap, Mask) ==> count_list'(Heap, i, hi, ar_1, v_2) == count_list#frame(EmptyFrame, i, hi, ar_1, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_list#trigger(frame: FrameType, i: int, hi: int, ar_1: (Seq int), v_2: int): bool;

// State-independent trigger function
function  count_list#triggerStateless(i: int, hi: int, ar_1: (Seq int), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_list#definedness(i: int, hi: int, ar_1: (Seq int), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@56.1--61.2) [132375]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@56.1--61.2) [132376]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (testTranspose.vpr@60.36--60.64) [132377]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (testTranspose.vpr@60.36--60.64) [132378]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (testTranspose.vpr@60.36--60.64) [132379]"}
            hi <= Seq#Length(ar_1);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_list#trigger(EmptyFrame, i + 1, hi, ar_1, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Seq#Index(ar_1, i) == v_2 then 1 else 0) + count_list(Heap, i + 1, hi, ar_1, v_2) else 0);
}

// ==================================================
// Translation of function count_array
// ==================================================

// Uninterpreted function definitions
function  count_array(Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int): int;
function  count_array'(Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { count_array(Heap, i, hi, ar_1, v_2) }
  count_array(Heap, i, hi, ar_1, v_2) == count_array'(Heap, i, hi, ar_1, v_2) && dummyFunction(count_array#triggerStateless(i, hi, ar_1, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { count_array'(Heap, i, hi, ar_1, v_2) }
  dummyFunction(count_array#triggerStateless(i, hi, ar_1, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array(Heap, i, hi, ar_1, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar_1)) && (forall j: int, k: int ::
    { Seq#Index(ar_1, j), Seq#Index(ar_1, k) }
    0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> Seq#Index(ar_1, j) != Seq#Index(ar_1, k)
  ) ==> count_array(Heap, i, hi, ar_1, v_2) == (if i < hi then (if Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array'(Heap, i + 1, hi, ar_1, v_2) else 0)
);

// Framing axioms
function  count_array#frame(frame: FrameType, i: int, hi: int, ar_1: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array'(Heap, i, hi, ar_1, v_2) }
  state(Heap, Mask) ==> count_array'(Heap, i, hi, ar_1, v_2) == count_array#frame(FrameFragment(count_array#condqp4(Heap, i, hi, ar_1, v_2)), i, hi, ar_1, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_array
// ==================================================

function  count_array#condqp4(Heap: HeapType, i_1_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_array#condqp4(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, hi: int, ar_1: (Seq Ref), v_2: int ::
  { count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) < hi <==> 0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) < hi) && (0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)) < hi ==> Heap2Heap[Seq#Index(ar_1, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar_1, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2), count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2))), Ref__Integer_value]) ==> count_array#condqp4(Heap2Heap, i, hi, ar_1, v_2) == count_array#condqp4(Heap1Heap, i, hi, ar_1, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_array#trigger(frame: FrameType, i: int, hi: int, ar_1: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_array#triggerStateless(i: int, hi: int, ar_1: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_array#definedness(i: int, hi: int, ar_1: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var j_4: int;
  var k_9: int;
  var k_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_4_1: int;
  var k_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_4 && (j_4 < hi && (0 <= k_9 && (k_9 < hi && j_4 != k_9)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testTranspose.vpr@66.12--66.102) [132380]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testTranspose.vpr@66.12--66.102) [132381]"}
            j_4 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@66.12--66.102) [132382]"}
            k_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@66.12--66.102) [132383]"}
            k_9 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_3: int, k_6_2: int ::
      { Seq#Index(ar_1, j_3), Seq#Index(ar_1, k_6_2) }
      0 <= j_3 && (j_3 < hi && (0 <= k_6_2 && (k_6_2 < hi && j_3 != k_6_2))) ==> Seq#Index(ar_1, j_3) != Seq#Index(ar_1, k_6_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (0 <= k_2 && k_2 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@67.13--67.94) [132384]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@67.13--67.94) [132385]"}
            k_2 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@67.13--67.94) [132386]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (0 <= k_8 && k_8 < hi)) && (0 <= k_8_1 && k_8_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_8) != Seq#Index(ar_1, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        0 <= k_8 && k_8 < hi ==> qpRange7(Seq#Index(ar_1, k_8)) && invRecv7(Seq#Index(ar_1, k_8)) == k_8
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (0 <= invRecv7(o_9) && invRecv7(o_9) < hi) && qpRange7(o_9) ==> Seq#Index(ar_1, invRecv7(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar_1, k_8) } { Seq#Index(ar_1, k_8) }
        0 <= k_8 && k_8 < hi ==> Seq#Index(ar_1, k_8) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv7(o_9) && invRecv7(o_9) < hi) && qpRange7(o_9) ==> Seq#Index(ar_1, invRecv7(o_9)) == o_9 && Mask[o_9, Ref__Integer_value] < QPMask[o_9, Ref__Integer_value]) && (!((0 <= invRecv7(o_9) && invRecv7(o_9) < hi) && qpRange7(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i].Ref__Integer_value == v ? 1 : 0) + count_array(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@63.1--70.2) [132387]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@63.1--70.2) [132388]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testTranspose.vpr@63.1--70.2) [132389]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (testTranspose.vpr@69.55--69.84) [132390]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (testTranspose.vpr@69.55--69.84) [132391]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (testTranspose.vpr@69.55--69.84) [132392]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9_1 && (k_9_1 < hi && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[j] != ar[k] might not hold. (testTranspose.vpr@69.55--69.84) [132393]"}
                Seq#Index(ar_1, j_4_1) != Seq#Index(ar_1, k_9_1);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar_1, j_5_1_1), Seq#Index(ar_1, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < hi && (0 <= k_10_1 && (k_10_1 < hi && j_5_1_1 != k_10_1))) ==> Seq#Index(ar_1, j_5_1_1) != Seq#Index(ar_1, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@69.55--69.84) [132394]"}
            (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testTranspose.vpr@69.55--69.84) [132395]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (0 <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@69.55--69.84) [132396]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && (0 <= k_11 && k_11 < hi)) && (0 <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@69.55--69.84) [132397]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              0 <= k_11 && k_11 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (0 <= k_11 && k_11 < hi) && NoPerm < wildcard ==> qpRange8(Seq#Index(ar_1, k_11)) && invRecv8(Seq#Index(ar_1, k_11)) == k_11
            );
            assume (forall o_9: Ref ::
              { invRecv8(o_9) }
              (0 <= invRecv8(o_9) && invRecv8(o_9) < hi) && (NoPerm < wildcard && qpRange8(o_9)) ==> Seq#Index(ar_1, invRecv8(o_9)) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_array#trigger(FrameFragment(count_array#condqp4(Heap, i + 1, hi, ar_1, v_2)), i + 1, hi, ar_1, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Heap[Seq#Index(ar_1, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array(Heap, i + 1, hi, ar_1, v_2) else 0);
}

// ==================================================
// Translation of method Ref__loop_main_68
// ==================================================

procedure Ref__loop_main_68(diz: Ref, current_thread_id: int, N: int, M_1: int, inp: (Seq Ref), out: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_6: int;
  var k_25: int;
  var j_10: int;
  var QPMask: MaskType;
  var j_7: int;
  var k_29: int;
  var i_10: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_22: int;
  var i_11: int;
  var i_12: int;
  var j_23: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_7_1: int;
  var j_11_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume M_1 * N <= Seq#Length(out);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { out[j], out[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> out[j] != out[k])
      if (*) {
        if (0 <= j_6 && (j_6 < M_1 * N && (0 <= k_25 && (k_25 < M_1 * N && j_6 != k_25)))) {
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might be negative. (testTranspose.vpr@76.12--76.106) [132398]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might exceed sequence length. (testTranspose.vpr@76.12--76.106) [132399]"}
            j_6 < Seq#Length(out);
          assert {:msg "  Contract might not be well-formed. Index out[k] into out might be negative. (testTranspose.vpr@76.12--76.106) [132400]"}
            k_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[k] into out might exceed sequence length. (testTranspose.vpr@76.12--76.106) [132401]"}
            k_25 < Seq#Length(out);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(out, j_1), Seq#Index(out, k_1) }
      0 <= j_1 && (j_1 < M_1 * N && (0 <= k_1 && (k_1 < M_1 * N && j_1 != k_1))) ==> Seq#Index(out, j_1) != Seq#Index(out, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { out[j] } 0 <= j && j < M * N ==> acc(out[j].Ref__Integer_value, write))
      if (*) {
        if (0 <= j_10 && j_10 < M_1 * N) {
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might be negative. (testTranspose.vpr@77.13--77.95) [132402]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might exceed sequence length. (testTranspose.vpr@77.13--77.95) [132403]"}
            j_10 < Seq#Length(out);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@77.13--77.95) [132404]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && j_3 < M_1 * N)) && (0 <= j_3_1 && j_3_1 < M_1 * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_3) != Seq#Index(out, j_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Seq#Index(out, j_3) } { Seq#Index(out, j_3) }
        (0 <= j_3 && j_3 < M_1 * N) && NoPerm < FullPerm ==> qpRange9(Seq#Index(out, j_3)) && invRecv9(Seq#Index(out, j_3)) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange9(o_9) ==> Seq#Index(out, invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Seq#Index(out, j_3) } { Seq#Index(out, j_3) }
        0 <= j_3 && j_3 < M_1 * N ==> Seq#Index(out, j_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv9(o_9) && invRecv9(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv9(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N * M_1 <= Seq#Length(inp);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { inp[j], inp[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> inp[j] != inp[k])
      if (*) {
        if (0 <= j_7 && (j_7 < M_1 * N && (0 <= k_29 && (k_29 < M_1 * N && j_7 != k_29)))) {
          assert {:msg "  Contract might not be well-formed. Index inp[j] into inp might be negative. (testTranspose.vpr@79.12--79.106) [132405]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[j] into inp might exceed sequence length. (testTranspose.vpr@79.12--79.106) [132406]"}
            j_7 < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. Index inp[k] into inp might be negative. (testTranspose.vpr@79.12--79.106) [132407]"}
            k_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[k] into inp might exceed sequence length. (testTranspose.vpr@79.12--79.106) [132408]"}
            k_29 < Seq#Length(inp);
        }
        assume false;
      }
    assume (forall j_5: int, k_3: int ::
      { Seq#Index(inp, j_5), Seq#Index(inp, k_3) }
      0 <= j_5 && (j_5 < M_1 * N && (0 <= k_3 && (k_3 < M_1 * N && j_5 != k_3))) ==> Seq#Index(inp, j_5) != Seq#Index(inp, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { inp[i] } 0 <= i && i < N * M ==> acc(inp[i].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= i_10 && i_10 < N * M_1) {
          assert {:msg "  Contract might not be well-formed. Index inp[i] into inp might be negative. (testTranspose.vpr@80.13--80.95) [132409]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[i] into inp might exceed sequence length. (testTranspose.vpr@80.13--80.95) [132410]"}
            i_10 < Seq#Length(inp);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@80.13--80.95) [132411]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < N * M_1)) && (0 <= i_1_1 && i_1_1 < N * M_1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_1) != Seq#Index(inp, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(inp, i_1) } { Seq#Index(inp, i_1) }
        (0 <= i_1 && i_1 < N * M_1) && NoPerm < 1 / 4 ==> qpRange10(Seq#Index(inp, i_1)) && invRecv10(Seq#Index(inp, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange10(o_9) ==> Seq#Index(inp, invRecv10(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testTranspose.vpr@80.13--80.95) [132412]"}
      (forall i_1: int ::
      { Seq#Index(inp, i_1) } { Seq#Index(inp, i_1) }
      0 <= i_1 && i_1 < N * M_1 ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(inp, i_1) } { Seq#Index(inp, i_1) }
        (0 <= i_1 && i_1 < N * M_1) && 1 / 4 > NoPerm ==> Seq#Index(inp, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv10(o_9) && invRecv10(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange10(o_9) ==> (NoPerm < 1 / 4 ==> Seq#Index(inp, invRecv10(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv10(o_9) && invRecv10(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange10(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
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
    
    // -- Check definedness of (forall j: Int :: { out[j] } 0 <= j && j < M * N ==> acc(out[j].Ref__Integer_value, write))
      if (*) {
        if (0 <= j_22 && j_22 < M_1 * N) {
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might be negative. (testTranspose.vpr@81.12--81.94) [132413]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might exceed sequence length. (testTranspose.vpr@81.12--81.94) [132414]"}
            j_22 < Seq#Length(out);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@81.12--81.94) [132415]"}
      (forall j_7_1: int, j_7_2: int ::
      
      (((j_7_1 != j_7_2 && (0 <= j_7_1 && j_7_1 < M_1 * N)) && (0 <= j_7_2 && j_7_2 < M_1 * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_7_1) != Seq#Index(out, j_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_7_1: int ::
        { Seq#Index(out, j_7_1) } { Seq#Index(out, j_7_1) }
        (0 <= j_7_1 && j_7_1 < M_1 * N) && NoPerm < FullPerm ==> qpRange11(Seq#Index(out, j_7_1)) && invRecv11(Seq#Index(out, j_7_1)) == j_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange11(o_9) ==> Seq#Index(out, invRecv11(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_7_1: int ::
        { Seq#Index(out, j_7_1) } { Seq#Index(out, j_7_1) }
        0 <= j_7_1 && j_7_1 < M_1 * N ==> Seq#Index(out, j_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv11(o_9) && invRecv11(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv11(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv11(o_9) && invRecv11(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { inp[i] } 0 <= i && i < N * M ==> acc(inp[i].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= i_11 && i_11 < N * M_1) {
          assert {:msg "  Contract might not be well-formed. Index inp[i] into inp might be negative. (testTranspose.vpr@82.12--82.94) [132416]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[i] into inp might exceed sequence length. (testTranspose.vpr@82.12--82.94) [132417]"}
            i_11 < Seq#Length(inp);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@82.12--82.94) [132418]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < N * M_1)) && (0 <= i_3_3 && i_3_3 < N * M_1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_3_2) != Seq#Index(inp, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(inp, i_3_2) } { Seq#Index(inp, i_3_2) }
        (0 <= i_3_2 && i_3_2 < N * M_1) && NoPerm < 1 / 4 ==> qpRange12(Seq#Index(inp, i_3_2)) && invRecv12(Seq#Index(inp, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange12(o_9) ==> Seq#Index(inp, invRecv12(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testTranspose.vpr@82.12--82.94) [132419]"}
      (forall i_3_2: int ::
      { Seq#Index(inp, i_3_2) } { Seq#Index(inp, i_3_2) }
      0 <= i_3_2 && i_3_2 < N * M_1 ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(inp, i_3_2) } { Seq#Index(inp, i_3_2) }
        (0 <= i_3_2 && i_3_2 < N * M_1) && 1 / 4 > NoPerm ==> Seq#Index(inp, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv12(o_9) && invRecv12(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange12(o_9) ==> (NoPerm < 1 / 4 ==> Seq#Index(inp, invRecv12(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange12(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { out[Ref__multidim_index_2(M, N, i, j)] } { inp[Ref__multidim_index_2(N, M, j, i)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value)
      if (*) {
        if (0 <= i_12 && (i_12 < M_1 && (0 <= j_23 && j_23 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@83.89--83.122) [132420]"}
              0 <= i_12;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@83.89--83.122) [132421]"}
              i_12 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@83.89--83.122) [132422]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@83.89--83.122) [132423]"}
              0 <= j_23;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@83.89--83.122) [132424]"}
              j_23 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@83.89--83.122) [132425]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@83.12--83.204) [132426]"}
            Ref__multidim_index_2(PostHeap, M_1, N, i_12, j_23) >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@83.12--83.204) [132427]"}
            Ref__multidim_index_2(PostHeap, M_1, N, i_12, j_23) < Seq#Length(out);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testTranspose.vpr@83.12--83.204) [132428]"}
            HasDirectPerm(PostMask, Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i_12, j_23)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@83.150--83.183) [132429]"}
              0 <= j_23;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@83.150--83.183) [132430]"}
              j_23 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@83.150--83.183) [132431]"}
              0 <= N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@83.150--83.183) [132432]"}
              0 <= i_12;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@83.150--83.183) [132433]"}
              i_12 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@83.150--83.183) [132434]"}
              0 <= M_1;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@83.12--83.204) [132435]"}
            Ref__multidim_index_2(PostHeap, N, M_1, j_23, i_12) >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@83.12--83.204) [132436]"}
            Ref__multidim_index_2(PostHeap, N, M_1, j_23, i_12) < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@83.12--83.204) [132437]"}
            HasDirectPerm(PostMask, Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j_23, i_12)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_9_1: int ::
      { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_5_1, j_9_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_9_1, i_5_1)) }
      0 <= i_5_1 && (i_5_1 < M_1 && (0 <= j_9_1 && j_9_1 < N)) ==> PostHeap[Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i_5_1, j_9_1)), Ref__Integer_value] == PostHeap[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j_9_1, i_5_1)), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testTranspose.vpr@85.3--85.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver out[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@81.12--81.94) [132438]"}
        (forall j_10_2: int, j_10_3: int ::
        { neverTriggered13(j_10_2), neverTriggered13(j_10_3) }
        (((j_10_2 != j_10_3 && (0 <= j_10_2 && j_10_2 < M_1 * N)) && (0 <= j_10_3 && j_10_3 < M_1 * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_10_2) != Seq#Index(out, j_10_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_68 might not hold. There might be insufficient permission to access out[j].Ref__Integer_value (testTranspose.vpr@81.12--81.94) [132439]"}
        (forall j_10_2: int ::
        { Seq#Index(out, j_10_2) } { Seq#Index(out, j_10_2) }
        0 <= j_10_2 && j_10_2 < M_1 * N ==> Mask[Seq#Index(out, j_10_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver out[j]
      assume (forall j_10_2: int ::
        { Seq#Index(out, j_10_2) } { Seq#Index(out, j_10_2) }
        (0 <= j_10_2 && j_10_2 < M_1 * N) && NoPerm < FullPerm ==> qpRange13(Seq#Index(out, j_10_2)) && invRecv13(Seq#Index(out, j_10_2)) == j_10_2
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (0 <= invRecv13(o_9) && invRecv13(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange13(o_9)) ==> Seq#Index(out, invRecv13(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv13(o_9) && invRecv13(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange13(o_9)) ==> Seq#Index(out, invRecv13(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv13(o_9) && invRecv13(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange13(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_68 might not hold. Fraction 1 / 4 might be negative. (testTranspose.vpr@82.12--82.94) [132440]"}
        (forall i_6_2: int ::
        { Seq#Index(inp, i_6_2) } { Seq#Index(inp, i_6_2) }
        (0 <= i_6_2 && i_6_2 < N * M_1) && dummyFunction(Heap[Seq#Index(inp, i_6_2), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver inp[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@82.12--82.94) [132441]"}
        (forall i_6_2: int, i_6_3: int ::
        { neverTriggered14(i_6_2), neverTriggered14(i_6_3) }
        (((i_6_2 != i_6_3 && (0 <= i_6_2 && i_6_2 < N * M_1)) && (0 <= i_6_3 && i_6_3 < N * M_1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_6_2) != Seq#Index(inp, i_6_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_68 might not hold. There might be insufficient permission to access inp[i].Ref__Integer_value (testTranspose.vpr@82.12--82.94) [132442]"}
        (forall i_6_2: int ::
        { Seq#Index(inp, i_6_2) } { Seq#Index(inp, i_6_2) }
        0 <= i_6_2 && i_6_2 < N * M_1 ==> Mask[Seq#Index(inp, i_6_2), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver inp[i]
      assume (forall i_6_2: int ::
        { Seq#Index(inp, i_6_2) } { Seq#Index(inp, i_6_2) }
        (0 <= i_6_2 && i_6_2 < N * M_1) && NoPerm < 1 / 4 ==> qpRange14(Seq#Index(inp, i_6_2)) && invRecv14(Seq#Index(inp, i_6_2)) == i_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        (0 <= invRecv14(o_9) && invRecv14(o_9) < N * M_1) && (NoPerm < 1 / 4 && qpRange14(o_9)) ==> Seq#Index(inp, invRecv14(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv14(o_9) && invRecv14(o_9) < N * M_1) && (NoPerm < 1 / 4 && qpRange14(o_9)) ==> Seq#Index(inp, invRecv14(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv14(o_9) && invRecv14(o_9) < N * M_1) && (NoPerm < 1 / 4 && qpRange14(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_7_1 && (i_7_1 < M_1 && (0 <= j_11_1 && j_11_1 < N))) {
        assert {:msg "  Postcondition of Ref__loop_main_68 might not hold. Assertion out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value might not hold. (testTranspose.vpr@83.12--83.204) [132443]"}
          Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i_7_1, j_11_1)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j_11_1, i_7_1)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_8_1_1: int, j_12_1: int ::
      { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_8_1_1, j_12_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_12_1, i_8_1_1)) }
      0 <= i_8_1_1 && (i_8_1_1 < M_1 && (0 <= j_12_1 && j_12_1 < N)) ==> Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i_8_1_1, j_12_1)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j_12_1, i_8_1_1)), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_68
// ==================================================

procedure Ref__loop_body_68(diz: Ref, current_thread_id: int, j: int, out: (Seq Ref), i: int, inp: (Seq Ref), N: int, M_1: int) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_6: Ref;
  var __flatten_8: Ref;
  var __flatten_4: int;
  var __flatten_1: int;
  var __flatten_5: int;
  var __flatten_2: int;
  var __flatten_7: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume 0 <= i;
    assume i < M_1;
    assume 0 <= j;
    assume j < N;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Ref__multidim_index_2(M, N, i, j) < |out|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@92.12--92.45) [132444]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@92.12--92.45) [132445]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@92.12--92.45) [132446]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@92.12--92.45) [132447]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@92.12--92.45) [132448]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@92.12--92.45) [132449]"}
          0 <= N;
        // Stop execution
        assume false;
      }
    assume Ref__multidim_index_2(Heap, M_1, N, i, j) < Seq#Length(out);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@93.20--93.53) [132450]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@93.20--93.53) [132451]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@93.20--93.53) [132452]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@93.20--93.53) [132453]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@93.20--93.53) [132454]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@93.20--93.53) [132455]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@93.12--93.81) [132456]"}
        Ref__multidim_index_2(Heap, M_1, N, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@93.12--93.81) [132457]"}
        Ref__multidim_index_2(Heap, M_1, N, i, j) < Seq#Length(out);
    perm := FullPerm;
    assume Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i, j)) != null;
    Mask := Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value:=Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Ref__multidim_index_2(N, M, j, i) < |inp|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@94.12--94.45) [132458]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@94.12--94.45) [132459]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@94.12--94.45) [132460]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@94.12--94.45) [132461]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@94.12--94.45) [132462]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@94.12--94.45) [132463]"}
          0 <= M_1;
        // Stop execution
        assume false;
      }
    assume Ref__multidim_index_2(Heap, N, M_1, j, i) < Seq#Length(inp);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value, 1 / 4)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@95.20--95.53) [132464]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@95.20--95.53) [132465]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@95.20--95.53) [132466]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@95.20--95.53) [132467]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@95.20--95.53) [132468]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@95.20--95.53) [132469]"}
          0 <= M_1;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@95.12--95.81) [132470]"}
        Ref__multidim_index_2(Heap, N, M_1, j, i) >= 0;
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@95.12--95.81) [132471]"}
        Ref__multidim_index_2(Heap, N, M_1, j, i) < Seq#Length(inp);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testTranspose.vpr@95.12--95.81) [132472]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j, i)) != null;
    Mask := Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j, i)), Ref__Integer_value:=Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j, i)), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
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
    assume 0 <= i;
    assume i < M_1;
    assume 0 <= j;
    assume j < N;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@97.19--97.52) [132473]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@97.19--97.52) [132474]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@97.19--97.52) [132475]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@97.19--97.52) [132476]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@97.19--97.52) [132477]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@97.19--97.52) [132478]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@97.11--97.80) [132479]"}
        Ref__multidim_index_2(PostHeap, M_1, N, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@97.11--97.80) [132480]"}
        Ref__multidim_index_2(PostHeap, M_1, N, i, j) < Seq#Length(out);
    perm := FullPerm;
    assume Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i, j)) != null;
    PostMask := PostMask[Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i, j)), Ref__Integer_value:=PostMask[Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i, j)), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value, 1 / 4)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@98.19--98.52) [132481]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@98.19--98.52) [132482]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@98.19--98.52) [132483]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@98.19--98.52) [132484]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@98.19--98.52) [132485]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@98.19--98.52) [132486]"}
          0 <= M_1;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@98.11--98.80) [132487]"}
        Ref__multidim_index_2(PostHeap, N, M_1, j, i) >= 0;
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@98.11--98.80) [132488]"}
        Ref__multidim_index_2(PostHeap, N, M_1, j, i) < Seq#Length(inp);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testTranspose.vpr@98.11--98.80) [132489]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j, i)) != null;
    PostMask := PostMask[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j, i)), Ref__Integer_value:=PostMask[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j, i)), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@99.15--99.48) [132490]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@99.15--99.48) [132491]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@99.15--99.48) [132492]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@99.15--99.48) [132493]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@99.15--99.48) [132494]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@99.15--99.48) [132495]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@99.11--99.129) [132496]"}
        Ref__multidim_index_2(PostHeap, M_1, N, i, j) >= 0;
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@99.11--99.129) [132497]"}
        Ref__multidim_index_2(PostHeap, M_1, N, i, j) < Seq#Length(out);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testTranspose.vpr@99.11--99.129) [132498]"}
        HasDirectPerm(PostMask, Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i, j)), Ref__Integer_value);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@99.76--99.109) [132499]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@99.76--99.109) [132500]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@99.76--99.109) [132501]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@99.76--99.109) [132502]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@99.76--99.109) [132503]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@99.76--99.109) [132504]"}
          0 <= M_1;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@99.11--99.129) [132505]"}
        Ref__multidim_index_2(PostHeap, N, M_1, j, i) >= 0;
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@99.11--99.129) [132506]"}
        Ref__multidim_index_2(PostHeap, N, M_1, j, i) < Seq#Length(inp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@99.11--99.129) [132507]"}
        HasDirectPerm(PostMask, Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j, i)), Ref__Integer_value);
    assume PostHeap[Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i, j)), Ref__Integer_value] == PostHeap[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j, i)), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_6, $allocated];
    assume Heap[__flatten_8, $allocated];
  
  // -- Translating statement: __flatten_4 := Ref__multidim_index_2(M, N, i, j) -- testTranspose.vpr@108.3--108.51
    
    // -- Check definedness of Ref__multidim_index_2(M, N, i, j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@108.18--108.51) [132508]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@108.18--108.51) [132509]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@108.18--108.51) [132510]"}
          0 <= M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@108.18--108.51) [132511]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@108.18--108.51) [132512]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@108.18--108.51) [132513]"}
          0 <= N;
        // Stop execution
        assume false;
      }
    __flatten_4 := Ref__multidim_index_2(Heap, M_1, N, i, j);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := __flatten_4 -- testTranspose.vpr@109.3--109.29
    __flatten_1 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := Ref__multidim_index_2(N, M, j, i) -- testTranspose.vpr@110.3--110.51
    
    // -- Check definedness of Ref__multidim_index_2(N, M, j, i)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@110.18--110.51) [132514]"}
          0 <= j;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@110.18--110.51) [132515]"}
          j < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@110.18--110.51) [132516]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@110.18--110.51) [132517]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@110.18--110.51) [132518]"}
          i < M_1;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@110.18--110.51) [132519]"}
          0 <= M_1;
        // Stop execution
        assume false;
      }
    __flatten_5 := Ref__multidim_index_2(Heap, N, M_1, j, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := __flatten_5 -- testTranspose.vpr@111.3--111.29
    __flatten_2 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := out[__flatten_1] -- testTranspose.vpr@112.3--112.34
    
    // -- Check definedness of out[__flatten_1]
      assert {:msg "  Assignment might fail. Index out[__flatten_1] into out might be negative. (testTranspose.vpr@112.3--112.34) [132520]"}
        __flatten_1 >= 0;
      assert {:msg "  Assignment might fail. Index out[__flatten_1] into out might exceed sequence length. (testTranspose.vpr@112.3--112.34) [132521]"}
        __flatten_1 < Seq#Length(out);
    __flatten_6 := Seq#Index(out, __flatten_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := inp[__flatten_2] -- testTranspose.vpr@113.3--113.34
    
    // -- Check definedness of inp[__flatten_2]
      assert {:msg "  Assignment might fail. Index inp[__flatten_2] into inp might be negative. (testTranspose.vpr@113.3--113.34) [132522]"}
        __flatten_2 >= 0;
      assert {:msg "  Assignment might fail. Index inp[__flatten_2] into inp might exceed sequence length. (testTranspose.vpr@113.3--113.34) [132523]"}
        __flatten_2 < Seq#Length(inp);
    __flatten_8 := Seq#Index(inp, __flatten_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := __flatten_8.Ref__Integer_value -- testTranspose.vpr@114.3--114.48
    
    // -- Check definedness of __flatten_8.Ref__Integer_value
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (testTranspose.vpr@114.3--114.48) [132524]"}
        HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
    __flatten_7 := Heap[__flatten_8, Ref__Integer_value];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6.Ref__Integer_value := __flatten_7 -- testTranspose.vpr@115.3--115.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (testTranspose.vpr@115.3--115.48) [132525]"}
      FullPerm == Mask[__flatten_6, Ref__Integer_value];
    Heap := Heap[__flatten_6, Ref__Integer_value:=__flatten_7];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@96.11--96.55) [132526]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion i < M might not hold. (testTranspose.vpr@96.11--96.55) [132527]"}
      i < M_1;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@96.11--96.55) [132528]"}
      0 <= j;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion j < N might not hold. (testTranspose.vpr@96.11--96.55) [132529]"}
      j < N;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. There might be insufficient permission to access out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testTranspose.vpr@97.11--97.80) [132530]"}
        perm <= Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value:=Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value] - perm];
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Fraction 1 / 4 might be negative. (testTranspose.vpr@98.11--98.80) [132531]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@98.11--98.80) [132532]"}
        perm <= Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j, i)), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j, i)), Ref__Integer_value:=Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j, i)), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value might not hold. (testTranspose.vpr@99.11--99.129) [132533]"}
      Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i, j)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j, i)), Ref__Integer_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__transpose
// ==================================================

procedure Ref__transpose(diz: Ref, current_thread_id: int, M_1: int, N: int, out: (Seq Ref), inp: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_19: int;
  var k_21: int;
  var j1_10: int;
  var QPMask: MaskType;
  var j_20: int;
  var k_37: int;
  var j1_11: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j1_12: int;
  var j1_3: int;
  var i_42: int;
  var j_27: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_51: int;
  var j_35: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var j_12_2: int;
  var k_4_2: int;
  var j_15_2: int;
  var k_6_2: int;
  var ExhaleHeap: HeapType;
  var i_4_1: int;
  var j_8_2: int;
  var i_6_2: int;
  var j_10_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume M_1 > 0;
    assume N > 0;
    assume state(Heap, Mask);
    assume M_1 * N <= Seq#Length(out);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { out[j], out[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> out[j] != out[k])
      if (*) {
        if (0 <= j_19 && (j_19 < M_1 * N && (0 <= k_21 && (k_21 < M_1 * N && j_19 != k_21)))) {
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might be negative. (testTranspose.vpr@123.12--123.106) [132534]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might exceed sequence length. (testTranspose.vpr@123.12--123.106) [132535]"}
            j_19 < Seq#Length(out);
          assert {:msg "  Contract might not be well-formed. Index out[k] into out might be negative. (testTranspose.vpr@123.12--123.106) [132536]"}
            k_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[k] into out might exceed sequence length. (testTranspose.vpr@123.12--123.106) [132537]"}
            k_21 < Seq#Length(out);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(out, j_1), Seq#Index(out, k_1) }
      0 <= j_1 && (j_1 < M_1 * N && (0 <= k_1 && (k_1 < M_1 * N && j_1 != k_1))) ==> Seq#Index(out, j_1) != Seq#Index(out, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { out[j1] } 0 <= j1 && j1 < M * N ==> acc(out[j1].Ref__Integer_value, write))
      if (*) {
        if (0 <= j1_10 && j1_10 < M_1 * N) {
          assert {:msg "  Contract might not be well-formed. Index out[j1] into out might be negative. (testTranspose.vpr@124.13--124.99) [132538]"}
            j1_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j1] into out might exceed sequence length. (testTranspose.vpr@124.13--124.99) [132539]"}
            j1_10 < Seq#Length(out);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource out[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@124.13--124.99) [132540]"}
      (forall j1_1: int, j1_1_1: int ::
      
      (((j1_1 != j1_1_1 && (0 <= j1_1 && j1_1 < M_1 * N)) && (0 <= j1_1_1 && j1_1_1 < M_1 * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j1_1) != Seq#Index(out, j1_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_1: int ::
        { Seq#Index(out, j1_1) } { Seq#Index(out, j1_1) }
        (0 <= j1_1 && j1_1 < M_1 * N) && NoPerm < FullPerm ==> qpRange15(Seq#Index(out, j1_1)) && invRecv15(Seq#Index(out, j1_1)) == j1_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        ((0 <= invRecv15(o_9) && invRecv15(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange15(o_9) ==> Seq#Index(out, invRecv15(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_1: int ::
        { Seq#Index(out, j1_1) } { Seq#Index(out, j1_1) }
        0 <= j1_1 && j1_1 < M_1 * N ==> Seq#Index(out, j1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv15(o_9) && invRecv15(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv15(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv15(o_9) && invRecv15(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N * M_1 <= Seq#Length(inp);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { inp[j], inp[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> inp[j] != inp[k])
      if (*) {
        if (0 <= j_20 && (j_20 < M_1 * N && (0 <= k_37 && (k_37 < M_1 * N && j_20 != k_37)))) {
          assert {:msg "  Contract might not be well-formed. Index inp[j] into inp might be negative. (testTranspose.vpr@126.12--126.106) [132541]"}
            j_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[j] into inp might exceed sequence length. (testTranspose.vpr@126.12--126.106) [132542]"}
            j_20 < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. Index inp[k] into inp might be negative. (testTranspose.vpr@126.12--126.106) [132543]"}
            k_37 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[k] into inp might exceed sequence length. (testTranspose.vpr@126.12--126.106) [132544]"}
            k_37 < Seq#Length(inp);
        }
        assume false;
      }
    assume (forall j_3: int, k_3: int ::
      { Seq#Index(inp, j_3), Seq#Index(inp, k_3) }
      0 <= j_3 && (j_3 < M_1 * N && (0 <= k_3 && (k_3 < M_1 * N && j_3 != k_3))) ==> Seq#Index(inp, j_3) != Seq#Index(inp, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { inp[j1] } 0 <= j1 && j1 < N * M ==> acc(inp[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= j1_11 && j1_11 < N * M_1) {
          assert {:msg "  Contract might not be well-formed. Index inp[j1] into inp might be negative. (testTranspose.vpr@127.13--127.99) [132545]"}
            j1_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[j1] into inp might exceed sequence length. (testTranspose.vpr@127.13--127.99) [132546]"}
            j1_11 < Seq#Length(inp);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource inp[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@127.13--127.99) [132547]"}
      (forall j1_3_1: int, j1_3_2: int ::
      
      (((j1_3_1 != j1_3_2 && (0 <= j1_3_1 && j1_3_1 < N * M_1)) && (0 <= j1_3_2 && j1_3_2 < N * M_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(inp, j1_3_1) != Seq#Index(inp, j1_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j1_3_1: int ::
        { Seq#Index(inp, j1_3_1) } { Seq#Index(inp, j1_3_1) }
        (0 <= j1_3_1 && j1_3_1 < N * M_1) && NoPerm < 1 / 2 ==> qpRange16(Seq#Index(inp, j1_3_1)) && invRecv16(Seq#Index(inp, j1_3_1)) == j1_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        ((0 <= invRecv16(o_9) && invRecv16(o_9) < N * M_1) && NoPerm < 1 / 2) && qpRange16(o_9) ==> Seq#Index(inp, invRecv16(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testTranspose.vpr@127.13--127.99) [132548]"}
      (forall j1_3_1: int ::
      { Seq#Index(inp, j1_3_1) } { Seq#Index(inp, j1_3_1) }
      0 <= j1_3_1 && j1_3_1 < N * M_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_3_1: int ::
        { Seq#Index(inp, j1_3_1) } { Seq#Index(inp, j1_3_1) }
        (0 <= j1_3_1 && j1_3_1 < N * M_1) && 1 / 2 > NoPerm ==> Seq#Index(inp, j1_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv16(o_9) && invRecv16(o_9) < N * M_1) && NoPerm < 1 / 2) && qpRange16(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(inp, invRecv16(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv16(o_9) && invRecv16(o_9) < N * M_1) && NoPerm < 1 / 2) && qpRange16(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
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
    assume M_1 > 0;
    assume N > 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j1: Int :: { out[j1] } 0 <= j1 && j1 < M * N ==> acc(out[j1].Ref__Integer_value, write))
      if (*) {
        if (0 <= j1_12 && j1_12 < M_1 * N) {
          assert {:msg "  Contract might not be well-formed. Index out[j1] into out might be negative. (testTranspose.vpr@129.12--129.98) [132549]"}
            j1_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j1] into out might exceed sequence length. (testTranspose.vpr@129.12--129.98) [132550]"}
            j1_12 < Seq#Length(out);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource out[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@129.12--129.98) [132551]"}
      (forall j1_5_1: int, j1_5_2: int ::
      
      (((j1_5_1 != j1_5_2 && (0 <= j1_5_1 && j1_5_1 < M_1 * N)) && (0 <= j1_5_2 && j1_5_2 < M_1 * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j1_5_1) != Seq#Index(out, j1_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j1_5_1: int ::
        { Seq#Index(out, j1_5_1) } { Seq#Index(out, j1_5_1) }
        (0 <= j1_5_1 && j1_5_1 < M_1 * N) && NoPerm < FullPerm ==> qpRange17(Seq#Index(out, j1_5_1)) && invRecv17(Seq#Index(out, j1_5_1)) == j1_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        ((0 <= invRecv17(o_9) && invRecv17(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange17(o_9) ==> Seq#Index(out, invRecv17(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_5_1: int ::
        { Seq#Index(out, j1_5_1) } { Seq#Index(out, j1_5_1) }
        0 <= j1_5_1 && j1_5_1 < M_1 * N ==> Seq#Index(out, j1_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv17(o_9) && invRecv17(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange17(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv17(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv17(o_9) && invRecv17(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange17(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j1: Int :: { inp[j1] } 0 <= j1 && j1 < N * M ==> acc(inp[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= j1_3 && j1_3 < N * M_1) {
          assert {:msg "  Contract might not be well-formed. Index inp[j1] into inp might be negative. (testTranspose.vpr@130.12--130.98) [132552]"}
            j1_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[j1] into inp might exceed sequence length. (testTranspose.vpr@130.12--130.98) [132553]"}
            j1_3 < Seq#Length(inp);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource inp[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@130.12--130.98) [132554]"}
      (forall j1_7_1: int, j1_7_2: int ::
      
      (((j1_7_1 != j1_7_2 && (0 <= j1_7_1 && j1_7_1 < N * M_1)) && (0 <= j1_7_2 && j1_7_2 < N * M_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(inp, j1_7_1) != Seq#Index(inp, j1_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall j1_7_1: int ::
        { Seq#Index(inp, j1_7_1) } { Seq#Index(inp, j1_7_1) }
        (0 <= j1_7_1 && j1_7_1 < N * M_1) && NoPerm < 1 / 2 ==> qpRange18(Seq#Index(inp, j1_7_1)) && invRecv18(Seq#Index(inp, j1_7_1)) == j1_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        ((0 <= invRecv18(o_9) && invRecv18(o_9) < N * M_1) && NoPerm < 1 / 2) && qpRange18(o_9) ==> Seq#Index(inp, invRecv18(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testTranspose.vpr@130.12--130.98) [132555]"}
      (forall j1_7_1: int ::
      { Seq#Index(inp, j1_7_1) } { Seq#Index(inp, j1_7_1) }
      0 <= j1_7_1 && j1_7_1 < N * M_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_7_1: int ::
        { Seq#Index(inp, j1_7_1) } { Seq#Index(inp, j1_7_1) }
        (0 <= j1_7_1 && j1_7_1 < N * M_1) && 1 / 2 > NoPerm ==> Seq#Index(inp, j1_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv18(o_9) && invRecv18(o_9) < N * M_1) && NoPerm < 1 / 2) && qpRange18(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(inp, invRecv18(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv18(o_9) && invRecv18(o_9) < N * M_1) && NoPerm < 1 / 2) && qpRange18(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { out[Ref__multidim_index_2(M, N, i, j)] } { inp[Ref__multidim_index_2(N, M, j, i)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value)
      if (*) {
        if (0 <= i_42 && (i_42 < M_1 && (0 <= j_27 && j_27 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@131.89--131.122) [132556]"}
              0 <= i_42;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@131.89--131.122) [132557]"}
              i_42 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@131.89--131.122) [132558]"}
              0 <= M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@131.89--131.122) [132559]"}
              0 <= j_27;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@131.89--131.122) [132560]"}
              j_27 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@131.89--131.122) [132561]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@131.12--131.204) [132562]"}
            Ref__multidim_index_2(PostHeap, M_1, N, i_42, j_27) >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@131.12--131.204) [132563]"}
            Ref__multidim_index_2(PostHeap, M_1, N, i_42, j_27) < Seq#Length(out);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testTranspose.vpr@131.12--131.204) [132564]"}
            HasDirectPerm(PostMask, Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i_42, j_27)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@131.150--131.183) [132565]"}
              0 <= j_27;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@131.150--131.183) [132566]"}
              j_27 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@131.150--131.183) [132567]"}
              0 <= N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@131.150--131.183) [132568]"}
              0 <= i_42;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@131.150--131.183) [132569]"}
              i_42 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@131.150--131.183) [132570]"}
              0 <= M_1;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@131.12--131.204) [132571]"}
            Ref__multidim_index_2(PostHeap, N, M_1, j_27, i_42) >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@131.12--131.204) [132572]"}
            Ref__multidim_index_2(PostHeap, N, M_1, j_27, i_42) < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@131.12--131.204) [132573]"}
            HasDirectPerm(PostMask, Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j_27, i_42)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_1: int, j_5: int ::
      { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_1, j_5)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_5, i_1)) }
      0 <= i_1 && (i_1 < M_1 && (0 <= j_5 && j_5 < N)) ==> PostHeap[Seq#Index(out, Ref__multidim_index_2(PostHeap, M_1, N, i_1, j_5)), Ref__Integer_value] == PostHeap[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j_5, i_1)), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { old(Ref__multidim_index_2(N, M, j, i)) } { old(inp[Ref__multidim_index_2(N, M, j, i)]) } 0 <= i && (i < M && (0 <= j && j < N)) ==> inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value == old(inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value))
      if (*) {
        if (0 <= i_51 && (i_51 < M_1 && (0 <= j_35 && j_35 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@132.89--132.122) [132574]"}
              0 <= j_35;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@132.89--132.122) [132575]"}
              j_35 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@132.89--132.122) [132576]"}
              0 <= N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@132.89--132.122) [132577]"}
              0 <= i_51;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@132.89--132.122) [132578]"}
              i_51 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@132.89--132.122) [132579]"}
              0 <= M_1;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@132.12--132.209) [132580]"}
            Ref__multidim_index_2(PostHeap, N, M_1, j_35, i_51) >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@132.12--132.209) [132581]"}
            Ref__multidim_index_2(PostHeap, N, M_1, j_35, i_51) < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@132.12--132.209) [132582]"}
            HasDirectPerm(PostMask, Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j_35, i_51)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@132.154--132.187) [132583]"}
              0 <= j_35;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@132.154--132.187) [132584]"}
              j_35 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@132.154--132.187) [132585]"}
              0 <= N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@132.154--132.187) [132586]"}
              0 <= i_51;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@132.154--132.187) [132587]"}
              i_51 < M_1;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@132.154--132.187) [132588]"}
              0 <= M_1;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@132.12--132.209) [132589]"}
            Ref__multidim_index_2(oldHeap, N, M_1, j_35, i_51) >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@132.12--132.209) [132590]"}
            Ref__multidim_index_2(oldHeap, N, M_1, j_35, i_51) < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@132.12--132.209) [132591]"}
            HasDirectPerm(oldMask, Seq#Index(inp, Ref__multidim_index_2(oldHeap, N, M_1, j_35, i_51)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_7_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_7_1, i_3_2) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_7_1, i_3_2)) }
      0 <= i_3_2 && (i_3_2 < M_1 && (0 <= j_7_1 && j_7_1 < N)) ==> PostHeap[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M_1, j_7_1, i_3_2)), Ref__Integer_value] == oldHeap[Seq#Index(inp, Ref__multidim_index_2(oldHeap, N, M_1, j_7_1, i_3_2)), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_68(diz, current_thread_id, N, M, inp, out) -- testTranspose.vpr@134.3--134.60
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion diz != null might not hold. (testTranspose.vpr@134.3--134.60) [132592]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion current_thread_id >= 0 might not hold. (testTranspose.vpr@134.3--134.60) [132593]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion M * N <= |out| might not hold. (testTranspose.vpr@134.3--134.60) [132594]"}
        M_1 * N <= Seq#Length(out);
      if (*) {
        if (0 <= j_12_2 && (j_12_2 < M_1 * N && (0 <= k_4_2 && (k_4_2 < M_1 * N && j_12_2 != k_4_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion out[j] != out[k] might not hold. (testTranspose.vpr@134.3--134.60) [132595]"}
            Seq#Index(out, j_12_2) != Seq#Index(out, k_4_2);
        }
        assume false;
      }
      assume (forall j_13_1: int, k_5_1_1: int ::
        { Seq#Index(out, j_13_1), Seq#Index(out, k_5_1_1) }
        0 <= j_13_1 && (j_13_1 < M_1 * N && (0 <= k_5_1_1 && (k_5_1_1 < M_1 * N && j_13_1 != k_5_1_1))) ==> Seq#Index(out, j_13_1) != Seq#Index(out, k_5_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver out[j] is injective
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@134.3--134.60) [132596]"}
          (forall j_14_2: int, j_14_3: int ::
          { neverTriggered21(j_14_2), neverTriggered21(j_14_3) }
          (((j_14_2 != j_14_3 && (0 <= j_14_2 && j_14_2 < M_1 * N)) && (0 <= j_14_3 && j_14_3 < M_1 * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_14_2) != Seq#Index(out, j_14_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. There might be insufficient permission to access out[j].Ref__Integer_value (testTranspose.vpr@134.3--134.60) [132597]"}
          (forall j_14_2: int ::
          { Seq#Index(out, j_14_2) } { Seq#Index(out, j_14_2) }
          0 <= j_14_2 && j_14_2 < M_1 * N ==> Mask[Seq#Index(out, j_14_2), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver out[j]
        assume (forall j_14_2: int ::
          { Seq#Index(out, j_14_2) } { Seq#Index(out, j_14_2) }
          (0 <= j_14_2 && j_14_2 < M_1 * N) && NoPerm < FullPerm ==> qpRange21(Seq#Index(out, j_14_2)) && invRecv21(Seq#Index(out, j_14_2)) == j_14_2
        );
        assume (forall o_9: Ref ::
          { invRecv21(o_9) }
          (0 <= invRecv21(o_9) && invRecv21(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange21(o_9)) ==> Seq#Index(out, invRecv21(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv21(o_9) && invRecv21(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange21(o_9)) ==> Seq#Index(out, invRecv21(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv21(o_9) && invRecv21(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange21(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion N * M <= |inp| might not hold. (testTranspose.vpr@134.3--134.60) [132598]"}
        N * M_1 <= Seq#Length(inp);
      if (*) {
        if (0 <= j_15_2 && (j_15_2 < M_1 * N && (0 <= k_6_2 && (k_6_2 < M_1 * N && j_15_2 != k_6_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion inp[j] != inp[k] might not hold. (testTranspose.vpr@134.3--134.60) [132599]"}
            Seq#Index(inp, j_15_2) != Seq#Index(inp, k_6_2);
        }
        assume false;
      }
      assume (forall j_16_1_1: int, k_7_1_1: int ::
        { Seq#Index(inp, j_16_1_1), Seq#Index(inp, k_7_1_1) }
        0 <= j_16_1_1 && (j_16_1_1 < M_1 * N && (0 <= k_7_1_1 && (k_7_1_1 < M_1 * N && j_16_1_1 != k_7_1_1))) ==> Seq#Index(inp, j_16_1_1) != Seq#Index(inp, k_7_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Fraction 1 / 4 might be negative. (testTranspose.vpr@134.3--134.60) [132600]"}
          (forall i_8_1: int ::
          { Seq#Index(inp, i_8_1) } { Seq#Index(inp, i_8_1) }
          (0 <= i_8_1 && i_8_1 < N * M_1) && dummyFunction(Heap[Seq#Index(inp, i_8_1), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
        );
      
      // -- check if receiver inp[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@134.3--134.60) [132601]"}
          (forall i_8_1: int, i_8_2: int ::
          { neverTriggered22(i_8_1), neverTriggered22(i_8_2) }
          (((i_8_1 != i_8_2 && (0 <= i_8_1 && i_8_1 < N * M_1)) && (0 <= i_8_2 && i_8_2 < N * M_1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_8_1) != Seq#Index(inp, i_8_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. There might be insufficient permission to access inp[i].Ref__Integer_value (testTranspose.vpr@134.3--134.60) [132602]"}
          (forall i_8_1: int ::
          { Seq#Index(inp, i_8_1) } { Seq#Index(inp, i_8_1) }
          0 <= i_8_1 && i_8_1 < N * M_1 ==> Mask[Seq#Index(inp, i_8_1), Ref__Integer_value] >= 1 / 4
        );
      
      // -- assumptions for inverse of receiver inp[i]
        assume (forall i_8_1: int ::
          { Seq#Index(inp, i_8_1) } { Seq#Index(inp, i_8_1) }
          (0 <= i_8_1 && i_8_1 < N * M_1) && NoPerm < 1 / 4 ==> qpRange22(Seq#Index(inp, i_8_1)) && invRecv22(Seq#Index(inp, i_8_1)) == i_8_1
        );
        assume (forall o_9: Ref ::
          { invRecv22(o_9) }
          (0 <= invRecv22(o_9) && invRecv22(o_9) < N * M_1) && (NoPerm < 1 / 4 && qpRange22(o_9)) ==> Seq#Index(inp, invRecv22(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv22(o_9) && invRecv22(o_9) < N * M_1) && (NoPerm < 1 / 4 && qpRange22(o_9)) ==> Seq#Index(inp, invRecv22(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv22(o_9) && invRecv22(o_9) < N * M_1) && (NoPerm < 1 / 4 && qpRange22(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@134.3--134.60) [132603]"}
        (forall j_17_2: int, j_17_3: int ::
        
        (((j_17_2 != j_17_3 && (0 <= j_17_2 && j_17_2 < M_1 * N)) && (0 <= j_17_3 && j_17_3 < M_1 * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_17_2) != Seq#Index(out, j_17_3)
      );
      
      // -- Define Inverse Function
        assume (forall j_17_2: int ::
          { Seq#Index(out, j_17_2) } { Seq#Index(out, j_17_2) }
          (0 <= j_17_2 && j_17_2 < M_1 * N) && NoPerm < FullPerm ==> qpRange23(Seq#Index(out, j_17_2)) && invRecv23(Seq#Index(out, j_17_2)) == j_17_2
        );
        assume (forall o_9: Ref ::
          { invRecv23(o_9) }
          ((0 <= invRecv23(o_9) && invRecv23(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange23(o_9) ==> Seq#Index(out, invRecv23(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_17_2: int ::
          { Seq#Index(out, j_17_2) } { Seq#Index(out, j_17_2) }
          0 <= j_17_2 && j_17_2 < M_1 * N ==> Seq#Index(out, j_17_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv23(o_9) && invRecv23(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange23(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv23(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv23(o_9) && invRecv23(o_9) < M_1 * N) && NoPerm < FullPerm) && qpRange23(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@134.3--134.60) [132604]"}
        (forall i_9_1: int, i_9_2: int ::
        
        (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < N * M_1)) && (0 <= i_9_2 && i_9_2 < N * M_1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_9_1) != Seq#Index(inp, i_9_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_9_1: int ::
          { Seq#Index(inp, i_9_1) } { Seq#Index(inp, i_9_1) }
          (0 <= i_9_1 && i_9_1 < N * M_1) && NoPerm < 1 / 4 ==> qpRange24(Seq#Index(inp, i_9_1)) && invRecv24(Seq#Index(inp, i_9_1)) == i_9_1
        );
        assume (forall o_9: Ref ::
          { invRecv24(o_9) }
          ((0 <= invRecv24(o_9) && invRecv24(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange24(o_9) ==> Seq#Index(inp, invRecv24(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (testTranspose.vpr@134.3--134.60) [132605]"}
        (forall i_9_1: int ::
        { Seq#Index(inp, i_9_1) } { Seq#Index(inp, i_9_1) }
        0 <= i_9_1 && i_9_1 < N * M_1 ==> 1 / 4 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_9_1: int ::
          { Seq#Index(inp, i_9_1) } { Seq#Index(inp, i_9_1) }
          (0 <= i_9_1 && i_9_1 < N * M_1) && 1 / 4 > NoPerm ==> Seq#Index(inp, i_9_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv24(o_9) && invRecv24(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange24(o_9) ==> (NoPerm < 1 / 4 ==> Seq#Index(inp, invRecv24(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv24(o_9) && invRecv24(o_9) < N * M_1) && NoPerm < 1 / 4) && qpRange24(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall i_10_1: int, j_18_1: int ::
        { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_10_1, j_18_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_18_1, i_10_1)) }
        0 <= i_10_1 && (i_10_1 < M_1 && (0 <= j_18_1 && j_18_1 < N)) ==> Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i_10_1, j_18_1)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j_18_1, i_10_1)), Ref__Integer_value]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__transpose might not hold. Assertion M > 0 might not hold. (testTranspose.vpr@128.11--128.29) [132606]"}
      M_1 > 0;
    assert {:msg "  Postcondition of Ref__transpose might not hold. Assertion N > 0 might not hold. (testTranspose.vpr@128.11--128.29) [132607]"}
      N > 0;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver out[j1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource out[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@129.12--129.98) [132608]"}
        (forall j1_8: int, j1_8_1: int ::
        { neverTriggered19(j1_8), neverTriggered19(j1_8_1) }
        (((j1_8 != j1_8_1 && (0 <= j1_8 && j1_8 < M_1 * N)) && (0 <= j1_8_1 && j1_8_1 < M_1 * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j1_8) != Seq#Index(out, j1_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__transpose might not hold. There might be insufficient permission to access out[j1].Ref__Integer_value (testTranspose.vpr@129.12--129.98) [132609]"}
        (forall j1_8: int ::
        { Seq#Index(out, j1_8) } { Seq#Index(out, j1_8) }
        0 <= j1_8 && j1_8 < M_1 * N ==> Mask[Seq#Index(out, j1_8), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver out[j1]
      assume (forall j1_8: int ::
        { Seq#Index(out, j1_8) } { Seq#Index(out, j1_8) }
        (0 <= j1_8 && j1_8 < M_1 * N) && NoPerm < FullPerm ==> qpRange19(Seq#Index(out, j1_8)) && invRecv19(Seq#Index(out, j1_8)) == j1_8
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        (0 <= invRecv19(o_9) && invRecv19(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange19(o_9)) ==> Seq#Index(out, invRecv19(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv19(o_9) && invRecv19(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange19(o_9)) ==> Seq#Index(out, invRecv19(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv19(o_9) && invRecv19(o_9) < M_1 * N) && (NoPerm < FullPerm && qpRange19(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__transpose might not hold. Fraction 1 / 2 might be negative. (testTranspose.vpr@130.12--130.98) [132610]"}
        (forall j1_9: int ::
        { Seq#Index(inp, j1_9) } { Seq#Index(inp, j1_9) }
        (0 <= j1_9 && j1_9 < N * M_1) && dummyFunction(Heap[Seq#Index(inp, j1_9), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver inp[j1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource inp[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@130.12--130.98) [132611]"}
        (forall j1_9: int, j1_9_1: int ::
        { neverTriggered20(j1_9), neverTriggered20(j1_9_1) }
        (((j1_9 != j1_9_1 && (0 <= j1_9 && j1_9 < N * M_1)) && (0 <= j1_9_1 && j1_9_1 < N * M_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(inp, j1_9) != Seq#Index(inp, j1_9_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__transpose might not hold. There might be insufficient permission to access inp[j1].Ref__Integer_value (testTranspose.vpr@130.12--130.98) [132612]"}
        (forall j1_9: int ::
        { Seq#Index(inp, j1_9) } { Seq#Index(inp, j1_9) }
        0 <= j1_9 && j1_9 < N * M_1 ==> Mask[Seq#Index(inp, j1_9), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver inp[j1]
      assume (forall j1_9: int ::
        { Seq#Index(inp, j1_9) } { Seq#Index(inp, j1_9) }
        (0 <= j1_9 && j1_9 < N * M_1) && NoPerm < 1 / 2 ==> qpRange20(Seq#Index(inp, j1_9)) && invRecv20(Seq#Index(inp, j1_9)) == j1_9
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        (0 <= invRecv20(o_9) && invRecv20(o_9) < N * M_1) && (NoPerm < 1 / 2 && qpRange20(o_9)) ==> Seq#Index(inp, invRecv20(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv20(o_9) && invRecv20(o_9) < N * M_1) && (NoPerm < 1 / 2 && qpRange20(o_9)) ==> Seq#Index(inp, invRecv20(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv20(o_9) && invRecv20(o_9) < N * M_1) && (NoPerm < 1 / 2 && qpRange20(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_4_1 && (i_4_1 < M_1 && (0 <= j_8_2 && j_8_2 < N))) {
        assert {:msg "  Postcondition of Ref__transpose might not hold. Assertion out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value might not hold. (testTranspose.vpr@131.12--131.204) [132613]"}
          Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i_4_1, j_8_2)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j_8_2, i_4_1)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_5_1_1: int, j_9_1_1: int ::
      { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M_1, N, i_5_1_1, j_9_1_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_9_1_1, i_5_1_1)) }
      0 <= i_5_1_1 && (i_5_1_1 < M_1 && (0 <= j_9_1_1 && j_9_1_1 < N)) ==> Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M_1, N, i_5_1_1, j_9_1_1)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j_9_1_1, i_5_1_1)), Ref__Integer_value]
    );
    if (*) {
      if (0 <= i_6_2 && (i_6_2 < M_1 && (0 <= j_10_2 && j_10_2 < N))) {
        assert {:msg "  Postcondition of Ref__transpose might not hold. Assertion inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value == old(inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value) might not hold. (testTranspose.vpr@132.12--132.209) [132614]"}
          Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j_10_2, i_6_2)), Ref__Integer_value] == oldHeap[Seq#Index(inp, Ref__multidim_index_2(oldHeap, N, M_1, j_10_2, i_6_2)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_7_1_1: int, j_11_1_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_11_1_1, i_7_1_1) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M_1, j_11_1_1, i_7_1_1)) }
      0 <= i_7_1_1 && (i_7_1_1 < M_1 && (0 <= j_11_1_1 && j_11_1_1 < N)) ==> Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M_1, j_11_1_1, i_7_1_1)), Ref__Integer_value] == oldHeap[Seq#Index(inp, Ref__multidim_index_2(oldHeap, N, M_1, j_11_1_1, i_7_1_1)), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__Ref
// ==================================================

procedure Ref__Ref(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Ref__Integer_value) -- testTranspose.vpr@142.3--142.33
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Ref__Integer_value:=Mask[diz, Ref__Integer_value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testTranspose.vpr@143.3--143.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- testTranspose.vpr@144.3--144.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTranspose.vpr@144.10--144.29) [132615]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTranspose.vpr@145.3--145.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result != null might not hold. (testTranspose.vpr@139.11--139.30) [132616]"}
      sys__result != null;
}