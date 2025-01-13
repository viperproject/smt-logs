// 
// Translation of Viper program.
// 
// Date:         2025-01-13 12:47:54
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_zero_matrix_pvl.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_zero_matrix_pvl-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_41: Ref, f_27: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_41, f_27] }
  Heap[o_41, $allocated] ==> Heap[Heap[o_41, f_27], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_42: Ref, f_48: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_42, f_48] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_42, f_48) ==> Heap[o_42, f_48] == ExhaleHeap[o_42, f_48]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_18, f_48] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_48] ==> Heap[o2_18, f_48] == ExhaleHeap[o2_18, f_48]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18), ExhaleHeap[null, WandMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> Heap[null, WandMaskField(pm_f_18)] == ExhaleHeap[null, WandMaskField(pm_f_18)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_18, f_48] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_48] ==> Heap[o2_18, f_48] == ExhaleHeap[o2_18, f_48]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_42: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_42, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_42, $allocated] ==> ExhaleHeap[o_42, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_41: Ref, f_44: (Field A B), v: B ::
  { Heap[o_41, f_44:=v] }
  succHeap(Heap, Heap[o_41, f_44:=v])
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

function  neverTriggered1(k_4_1: int): bool;
function  neverTriggered2(k_5: int): bool;
function  neverTriggered3(k_4_1: int): bool;
function  neverTriggered4(k_5: int): bool;
function  neverTriggered5(k_4_1: int): bool;
function  neverTriggered6(k_5: int): bool;
function  neverTriggered7(k_4_1: int): bool;
function  neverTriggered8(k_5: int): bool;
function  neverTriggered9(j_1: int): bool;
function  neverTriggered10(j_3_1: int): bool;
function  neverTriggered11(j_6_1: int): bool;
function  neverTriggered12(j1_1: int): bool;
function  neverTriggered13(j2_1: int): bool;
function  neverTriggered14(j2_2: int): bool;
function  neverTriggered15(j_9: int): bool;
function  neverTriggered16(j_1: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 6: count_list
// - height 5: sum_list
// - height 4: sum_array
// - height 3: sum_square
// - height 2: Ref__multidim_index_2
// - height 1: count_array
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
function  Ref__multidim_index_2(Heap: HeapType, N0: int, N1: int, i0: int, i1: int): int;
function  Ref__multidim_index_2'(Heap: HeapType, N0: int, N1: int, i0: int, i1: int): int;
axiom (forall Heap: HeapType, N0: int, N1: int, i0: int, i1: int ::
  { Ref__multidim_index_2(Heap, N0, N1, i0, i1) }
  Ref__multidim_index_2(Heap, N0, N1, i0, i1) == Ref__multidim_index_2'(Heap, N0, N1, i0, i1) && dummyFunction(Ref__multidim_index_2#triggerStateless(N0, N1, i0, i1))
);
axiom (forall Heap: HeapType, N0: int, N1: int, i0: int, i1: int ::
  { Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  dummyFunction(Ref__multidim_index_2#triggerStateless(N0, N1, i0, i1))
);

// Framing axioms
function  Ref__multidim_index_2#frame(frame: FrameType, N0: int, N1: int, i0: int, i1: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) == Ref__multidim_index_2#frame(EmptyFrame, N0, N1, i0, i1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> 0 <= Ref__multidim_index_2'(Heap, N0, N1, i0, i1)
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) < N0 * N1
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) == i0 * N1 + i1
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) mod N1 == i1
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) mod N1 < N0
);

// Trigger function (controlling recursive postconditions)
function  Ref__multidim_index_2#trigger(frame: FrameType, N0: int, N1: int, i0: int, i1: int): bool;

// State-independent trigger function
function  Ref__multidim_index_2#triggerStateless(N0: int, N1: int, i0: int, i1: int): int;

// Check contract well-formedness and postcondition
procedure Ref__multidim_index_2#definedness(N0: int, N1: int, i0: int, i1: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i0;
    assume state(Heap, Mask);
    assume i0 < N0;
    assume state(Heap, Mask);
    assume 0 <= N0;
    assume state(Heap, Mask);
    assume 0 <= i1;
    assume state(Heap, Mask);
    assume i1 < N1;
    assume state(Heap, Mask);
    assume 0 <= N1;
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume 0 <= Result;
    assume state(Heap, Mask);
    assume Result < N0 * N1;
    assume state(Heap, Mask);
    assume Result == i0 * N1 + i1;
    assume state(Heap, Mask);
    
    // -- Check definedness of result % N1 == i1
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (test_zero_matrix_pvl.vpr@16.11--16.28) [27582]"}
        N1 != 0;
    assume Result mod N1 == i1;
    assume state(Heap, Mask);
    
    // -- Check definedness of result % N1 < N0
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (test_zero_matrix_pvl.vpr@17.11--17.27) [27583]"}
        N1 != 0;
    assume Result mod N1 < N0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function sum_list
// ==================================================

// Uninterpreted function definitions
function  sum_list(Heap: HeapType, i: int, hi: int, ar: (Seq int)): int;
function  sum_list'(Heap: HeapType, i: int, hi: int, ar: (Seq int)): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int) ::
  { sum_list(Heap, i, hi, ar) }
  sum_list(Heap, i, hi, ar) == sum_list'(Heap, i, hi, ar) && dummyFunction(sum_list#triggerStateless(i, hi, ar))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int) ::
  { sum_list'(Heap, i, hi, ar) }
  dummyFunction(sum_list#triggerStateless(i, hi, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int) ::
  { state(Heap, Mask), sum_list(Heap, i, hi, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar) ==> sum_list(Heap, i, hi, ar) == (if i < hi then Seq#Index(ar, i) + sum_list'(Heap, i + 1, hi, ar) else 0)
);

// Framing axioms
function  sum_list#frame(frame: FrameType, i: int, hi: int, ar: (Seq int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int) ::
  { state(Heap, Mask), sum_list'(Heap, i, hi, ar) }
  state(Heap, Mask) ==> sum_list'(Heap, i, hi, ar) == sum_list#frame(EmptyFrame, i, hi, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_list#trigger(frame: FrameType, i: int, hi: int, ar: (Seq int)): bool;

// State-independent trigger function
function  sum_list#triggerStateless(i: int, hi: int, ar: (Seq int)): int;

// Check contract well-formedness and postcondition
procedure sum_list#definedness(i: int, hi: int, ar: (Seq int)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_zero_matrix_pvl.vpr@20.1--25.2) [27584]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@20.1--25.2) [27585]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (test_zero_matrix_pvl.vpr@24.21--24.44) [27586]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (test_zero_matrix_pvl.vpr@24.21--24.44) [27587]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (test_zero_matrix_pvl.vpr@24.21--24.44) [27588]"}
            hi <= Seq#Length(ar);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_list#trigger(EmptyFrame, i + 1, hi, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Seq#Index(ar, i) + sum_list(Heap, i + 1, hi, ar) else 0);
}

// ==================================================
// Translation of function sum_array
// ==================================================

// Uninterpreted function definitions
function  sum_array(Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
function  sum_array'(Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array(Heap, i, lo, hi, ar) }
  sum_array(Heap, i, lo, hi, ar) == sum_array'(Heap, i, lo, hi, ar) && dummyFunction(sum_array#triggerStateless(i, lo, hi, ar))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array'(Heap, i, lo, hi, ar) }
  dummyFunction(sum_array#triggerStateless(i, lo, hi, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_array(Heap, i, lo, hi, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar)) && (forall ix_20: int, jx_20: int ::
    { Seq#Index(ar, ix_20), Seq#Index(ar, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(ar) && (jx_20 >= 0 && (jx_20 < Seq#Length(ar) && ix_20 != jx_20))) ==> Seq#Index(ar, ix_20) != Seq#Index(ar, jx_20)
  ) ==> sum_array(Heap, i, lo, hi, ar) == (if i < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] + sum_array'(Heap, i + 1, lo, hi, ar) else 0)
);

// Framing axioms
function  sum_array#frame(frame: FrameType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_array'(Heap, i, lo, hi, ar) }
  state(Heap, Mask) ==> sum_array'(Heap, i, lo, hi, ar) == sum_array#frame(FrameFragment(sum_array#condqp1(Heap, i, lo, hi, ar)), i, lo, hi, ar)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_array
// ==================================================

function  sum_array#condqp1(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_array#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar), succHeapTrans(Heap2Heap, Heap1Heap) }
  (lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) < hi <==> lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) < hi) && (lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) < hi ==> Heap2Heap[Seq#Index(ar, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar))), Ref__Integer_value]) ==> sum_array#condqp1(Heap2Heap, i, lo, hi, ar) == sum_array#condqp1(Heap1Heap, i, lo, hi, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_array#trigger(frame: FrameType, i: int, lo: int, hi: int, ar: (Seq Ref)): bool;

// State-independent trigger function
function  sum_array#triggerStateless(i: int, lo: int, hi: int, ar: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_array#definedness(i: int, lo: int, hi: int, ar: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var ix: int;
  var jx: int;
  var k_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_4_1: int;
  var jx_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ar[ix], ar[jx] } ix >= 0 && (ix < |ar| && (jx >= 0 && (jx < |ar| && ix != jx))) ==> ar[ix] != ar[jx])
      if (*) {
        if (ix >= 0 && (ix < Seq#Length(ar) && (jx >= 0 && (jx < Seq#Length(ar) && ix != jx)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might be negative. (test_zero_matrix_pvl.vpr@30.12--30.116) [27589]"}
            ix >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@30.12--30.116) [27590]"}
            ix < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might be negative. (test_zero_matrix_pvl.vpr@30.12--30.116) [27591]"}
            jx >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@30.12--30.116) [27592]"}
            jx < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(ar, ix_3), Seq#Index(ar, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(ar) && (jx_3 >= 0 && (jx_3 < Seq#Length(ar) && ix_3 != jx_3))) ==> Seq#Index(ar, ix_3) != Seq#Index(ar, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (lo <= k_2 && k_2 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_zero_matrix_pvl.vpr@31.13--31.95) [27593]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@31.13--31.95) [27594]"}
            k_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@31.13--31.95) [27595]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (lo <= k_4_1 && k_4_1 < hi)) && (lo <= k_4_2 && k_4_2 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        lo <= k_4_1 && k_4_1 < hi ==> qpRange1(Seq#Index(ar, k_4_1)) && invRecv1(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (lo <= invRecv1(o_4) && invRecv1(o_4) < hi) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        lo <= k_4_1 && k_4_1 < hi ==> Seq#Index(ar, k_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((lo <= invRecv1(o_4) && invRecv1(o_4) < hi) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((lo <= invRecv1(o_4) && invRecv1(o_4) < hi) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i].Ref__Integer_value + sum_array(i + 1, lo, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_zero_matrix_pvl.vpr@27.1--34.2) [27596]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@27.1--34.2) [27597]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_zero_matrix_pvl.vpr@27.1--34.2) [27598]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (test_zero_matrix_pvl.vpr@33.40--33.68) [27599]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (test_zero_matrix_pvl.vpr@33.40--33.68) [27600]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (test_zero_matrix_pvl.vpr@33.40--33.68) [27601]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (test_zero_matrix_pvl.vpr@33.40--33.68) [27602]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ar) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ar) && ix_4_1 != jx_4_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[ix] != ar[jx] might not hold. (test_zero_matrix_pvl.vpr@33.40--33.68) [27603]"}
                Seq#Index(ar, ix_4_1) != Seq#Index(ar, jx_4_1);
            }
            assume false;
          }
          assume (forall ix_5_1: int, jx_5_1: int ::
            { Seq#Index(ar, ix_5_1), Seq#Index(ar, jx_5_1) }
            ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ar) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ar) && ix_5_1 != jx_5_1))) ==> Seq#Index(ar, ix_5_1) != Seq#Index(ar, jx_5_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_zero_matrix_pvl.vpr@33.40--33.68) [27604]"}
            (forall k_5: int ::
            
            lo <= k_5 && k_5 < hi ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            lo <= k_5 && k_5 < hi ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (test_zero_matrix_pvl.vpr@33.40--33.68) [27605]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (lo <= k_5 && k_5 < hi) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@33.40--33.68) [27606]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered2(k_5), neverTriggered2(k_5_1) }
              (((k_5 != k_5_1 && (lo <= k_5 && k_5 < hi)) && (lo <= k_5_1 && k_5_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_zero_matrix_pvl.vpr@33.40--33.68) [27607]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              lo <= k_5 && k_5 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (lo <= k_5 && k_5 < hi) && NoPerm < wildcard ==> qpRange2(Seq#Index(ar, k_5)) && invRecv2(Seq#Index(ar, k_5)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv2(o_4) }
              (lo <= invRecv2(o_4) && invRecv2(o_4) < hi) && (NoPerm < wildcard && qpRange2(o_4)) ==> Seq#Index(ar, invRecv2(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_array#trigger(FrameFragment(sum_array#condqp1(Heap, i + 1, lo, hi, ar)), i + 1, lo, hi, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] + sum_array(Heap, i + 1, lo, hi, ar) else 0);
}

// ==================================================
// Translation of function sum_square
// ==================================================

// Uninterpreted function definitions
function  sum_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
function  sum_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) }
  sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) && dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) }
  dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall ix_20: int, jx_20: int ::
    { Seq#Index(ar, ix_20), Seq#Index(ar, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(ar) && (jx_20 >= 0 && (jx_20 < Seq#Length(ar) && ix_20 != jx_20))) ==> Seq#Index(ar, ix_20) != Seq#Index(ar, jx_20)
  ) ==> sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) == (if i < vmax then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] else 0) + sum_square'(Heap, i + 1, lo, hi, step, vmin, vmax, ar) else 0)
);

// Framing axioms
function  sum_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) }
  state(Heap, Mask) ==> sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square#frame(FrameFragment(sum_square#condqp2(Heap, i, lo, hi, step, vmin, vmax, ar)), i, lo, hi, step, vmin, vmax, ar)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_square
// ==================================================

function  sum_square#condqp2(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_square#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi)) <==> vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi))) && (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar))), Ref__Integer_value]) ==> sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): bool;

// State-independent trigger function
function  sum_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var ix_2: int;
  var jx_2: int;
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_4_1: int;
  var jx_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax;
    assume state(Heap, Mask);
    assume vmax <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ar[ix], ar[jx] } ix >= 0 && (ix < |ar| && (jx >= 0 && (jx < |ar| && ix != jx))) ==> ar[ix] != ar[jx])
      if (*) {
        if (ix_2 >= 0 && (ix_2 < Seq#Length(ar) && (jx_2 >= 0 && (jx_2 < Seq#Length(ar) && ix_2 != jx_2)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might be negative. (test_zero_matrix_pvl.vpr@40.12--40.116) [27608]"}
            ix_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@40.12--40.116) [27609]"}
            ix_2 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might be negative. (test_zero_matrix_pvl.vpr@40.12--40.116) [27610]"}
            jx_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@40.12--40.116) [27611]"}
            jx_2 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(ar, ix_3), Seq#Index(ar, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(ar) && (jx_3 >= 0 && (jx_3 < Seq#Length(ar) && ix_3 != jx_3))) ==> Seq#Index(ar, ix_3) != Seq#Index(ar, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_7) {
          if (k_7 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_zero_matrix_pvl.vpr@41.13--41.136) [27612]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_zero_matrix_pvl.vpr@41.13--41.136) [27613]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_zero_matrix_pvl.vpr@41.13--41.136) [27614]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@41.13--41.136) [27615]"}
            k_7 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@41.13--41.136) [27616]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)))) && (vmin <= k_4_2 && (k_4_2 < vmax && (lo <= k_4_2 mod step && k_4_2 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> qpRange3(Seq#Index(ar, k_4_1)) && invRecv3(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4) ==> Seq#Index(ar, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> Seq#Index(ar, k_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4) ==> Seq#Index(ar, invRecv3(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && i % step < hi ? ar[i].Ref__Integer_value : 0) + sum_square(i + 1, lo, hi, step, min, max, ar) : 0)
      if (i < vmax) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_zero_matrix_pvl.vpr@36.1--44.2) [27617]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_zero_matrix_pvl.vpr@36.1--44.2) [27618]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_zero_matrix_pvl.vpr@36.1--44.2) [27619]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@36.1--44.2) [27620]"}
            i < Seq#Length(ar);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_zero_matrix_pvl.vpr@36.1--44.2) [27621]"}
            HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27622]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27623]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27624]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27625]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27626]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27627]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27628]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27629]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ar) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ar) && ix_4_1 != jx_4_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[ix] != ar[jx] might not hold. (test_zero_matrix_pvl.vpr@43.85--43.130) [27630]"}
                Seq#Index(ar, ix_4_1) != Seq#Index(ar, jx_4_1);
            }
            assume false;
          }
          assume (forall ix_5_1: int, jx_5_1: int ::
            { Seq#Index(ar, ix_5_1), Seq#Index(ar, jx_5_1) }
            ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ar) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ar) && ix_5_1 != jx_5_1))) ==> Seq#Index(ar, ix_5_1) != Seq#Index(ar, jx_5_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_zero_matrix_pvl.vpr@43.85--43.130) [27631]"}
            (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (test_zero_matrix_pvl.vpr@43.85--43.130) [27632]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@43.85--43.130) [27633]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered4(k_5), neverTriggered4(k_5_1) }
              (((k_5 != k_5_1 && (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)))) && (vmin <= k_5_1 && (k_5_1 < vmax && (lo <= k_5_1 mod step && k_5_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_zero_matrix_pvl.vpr@43.85--43.130) [27634]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && NoPerm < wildcard ==> qpRange4(Seq#Index(ar, k_5)) && invRecv4(Seq#Index(ar, k_5)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv4(o_4) }
              (vmin <= invRecv4(o_4) && (invRecv4(o_4) < vmax && (lo <= invRecv4(o_4) mod step && invRecv4(o_4) mod step < hi))) && (NoPerm < wildcard && qpRange4(o_4)) ==> Seq#Index(ar, invRecv4(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_square#trigger(FrameFragment(sum_square#condqp2(Heap, i + 1, lo, hi, step, vmin, vmax, ar)), i + 1, lo, hi, step, vmin, vmax, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] else 0) + sum_square(Heap, i + 1, lo, hi, step, vmin, vmax, ar) else 0);
}

// ==================================================
// Translation of function count_square
// ==================================================

// Uninterpreted function definitions
function  count_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
function  count_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) && dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall ix_20: int, jx_20: int ::
    { Seq#Index(ar, ix_20), Seq#Index(ar, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(ar) && (jx_20 >= 0 && (jx_20 < Seq#Length(ar) && ix_20 != jx_20))) ==> Seq#Index(ar, ix_20) != Seq#Index(ar, jx_20)
  ) ==> count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == (if i < vmax then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square'(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2) else 0)
);

// Framing axioms
function  count_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  state(Heap, Mask) ==> count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square#frame(FrameFragment(count_square#condqp3(Heap, i, lo, hi, step, vmin, vmax, ar, v_2)), i, lo, hi, step, vmin, vmax, ar, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_square
// ==================================================

function  count_square#condqp3(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_square#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi)) <==> vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi))) && (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2))), Ref__Integer_value]) ==> count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ix_21: int;
  var jx_21: int;
  var k_12: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_4_1: int;
  var jx_4_1: int;
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
    assume i <= vmax;
    assume state(Heap, Mask);
    assume vmax <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ar[ix], ar[jx] } ix >= 0 && (ix < |ar| && (jx >= 0 && (jx < |ar| && ix != jx))) ==> ar[ix] != ar[jx])
      if (*) {
        if (ix_21 >= 0 && (ix_21 < Seq#Length(ar) && (jx_21 >= 0 && (jx_21 < Seq#Length(ar) && ix_21 != jx_21)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might be negative. (test_zero_matrix_pvl.vpr@50.12--50.116) [27635]"}
            ix_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@50.12--50.116) [27636]"}
            ix_21 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might be negative. (test_zero_matrix_pvl.vpr@50.12--50.116) [27637]"}
            jx_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@50.12--50.116) [27638]"}
            jx_21 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(ar, ix_3), Seq#Index(ar, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(ar) && (jx_3 >= 0 && (jx_3 < Seq#Length(ar) && ix_3 != jx_3))) ==> Seq#Index(ar, ix_3) != Seq#Index(ar, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_12) {
          if (k_12 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_zero_matrix_pvl.vpr@51.13--51.136) [27639]"}
              step != 0;
            if (lo <= k_12 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_zero_matrix_pvl.vpr@51.13--51.136) [27640]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_12 && (k_12 < vmax && (lo <= k_12 mod step && k_12 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_zero_matrix_pvl.vpr@51.13--51.136) [27641]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@51.13--51.136) [27642]"}
            k_12 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@51.13--51.136) [27643]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)))) && (vmin <= k_4_2 && (k_4_2 < vmax && (lo <= k_4_2 mod step && k_4_2 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> qpRange5(Seq#Index(ar, k_4_1)) && invRecv5(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> Seq#Index(ar, k_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && (i % step < hi && ar[i].Ref__Integer_value == v) ? 1 : 0) + count_square(i + 1, lo, hi, step, min, max, ar, v) : 0)
      if (i < vmax) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_zero_matrix_pvl.vpr@46.1--54.2) [27644]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_zero_matrix_pvl.vpr@46.1--54.2) [27645]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_zero_matrix_pvl.vpr@46.1--54.2) [27646]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@46.1--54.2) [27647]"}
              i < Seq#Length(ar);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_zero_matrix_pvl.vpr@46.1--54.2) [27648]"}
              HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27649]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27650]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27651]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27652]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27653]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27654]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27655]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27656]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ar) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ar) && ix_4_1 != jx_4_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[ix] != ar[jx] might not hold. (test_zero_matrix_pvl.vpr@53.97--53.147) [27657]"}
                Seq#Index(ar, ix_4_1) != Seq#Index(ar, jx_4_1);
            }
            assume false;
          }
          assume (forall ix_5_1: int, jx_5_1: int ::
            { Seq#Index(ar, ix_5_1), Seq#Index(ar, jx_5_1) }
            ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ar) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ar) && ix_5_1 != jx_5_1))) ==> Seq#Index(ar, ix_5_1) != Seq#Index(ar, jx_5_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_zero_matrix_pvl.vpr@53.97--53.147) [27658]"}
            (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (test_zero_matrix_pvl.vpr@53.97--53.147) [27659]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@53.97--53.147) [27660]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered6(k_5), neverTriggered6(k_5_1) }
              (((k_5 != k_5_1 && (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)))) && (vmin <= k_5_1 && (k_5_1 < vmax && (lo <= k_5_1 mod step && k_5_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_zero_matrix_pvl.vpr@53.97--53.147) [27661]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && NoPerm < wildcard ==> qpRange6(Seq#Index(ar, k_5)) && invRecv6(Seq#Index(ar, k_5)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv6(o_4) }
              (vmin <= invRecv6(o_4) && (invRecv6(o_4) < vmax && (lo <= invRecv6(o_4) mod step && invRecv6(o_4) mod step < hi))) && (NoPerm < wildcard && qpRange6(o_4)) ==> Seq#Index(ar, invRecv6(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_square#trigger(FrameFragment(count_square#condqp3(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2)), i + 1, lo, hi, step, vmin, vmax, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2) else 0);
}

// ==================================================
// Translation of function count_list
// ==================================================

// Uninterpreted function definitions
function  count_list(Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int): int;
function  count_list'(Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { count_list(Heap, i, hi, ar, v_2) }
  count_list(Heap, i, hi, ar, v_2) == count_list'(Heap, i, hi, ar, v_2) && dummyFunction(count_list#triggerStateless(i, hi, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { count_list'(Heap, i, hi, ar, v_2) }
  dummyFunction(count_list#triggerStateless(i, hi, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar) ==> count_list(Heap, i, hi, ar, v_2) == (if i < hi then (if Seq#Index(ar, i) == v_2 then 1 else 0) + count_list'(Heap, i + 1, hi, ar, v_2) else 0)
);

// Framing axioms
function  count_list#frame(frame: FrameType, i: int, hi: int, ar: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list'(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) ==> count_list'(Heap, i, hi, ar, v_2) == count_list#frame(EmptyFrame, i, hi, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_list#trigger(frame: FrameType, i: int, hi: int, ar: (Seq int), v_2: int): bool;

// State-independent trigger function
function  count_list#triggerStateless(i: int, hi: int, ar: (Seq int), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_list#definedness(i: int, hi: int, ar: (Seq int), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_zero_matrix_pvl.vpr@56.1--61.2) [27662]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@56.1--61.2) [27663]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (test_zero_matrix_pvl.vpr@60.36--60.64) [27664]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (test_zero_matrix_pvl.vpr@60.36--60.64) [27665]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (test_zero_matrix_pvl.vpr@60.36--60.64) [27666]"}
            hi <= Seq#Length(ar);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_list#trigger(EmptyFrame, i + 1, hi, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Seq#Index(ar, i) == v_2 then 1 else 0) + count_list(Heap, i + 1, hi, ar, v_2) else 0);
}

// ==================================================
// Translation of function count_array
// ==================================================

// Uninterpreted function definitions
function  count_array(Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
function  count_array'(Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array(Heap, i, hi, ar, v_2) }
  count_array(Heap, i, hi, ar, v_2) == count_array'(Heap, i, hi, ar, v_2) && dummyFunction(count_array#triggerStateless(i, hi, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array'(Heap, i, hi, ar, v_2) }
  dummyFunction(count_array#triggerStateless(i, hi, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar)) && (forall ix_20: int, jx_20: int ::
    { Seq#Index(ar, ix_20), Seq#Index(ar, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(ar) && (jx_20 >= 0 && (jx_20 < Seq#Length(ar) && ix_20 != jx_20))) ==> Seq#Index(ar, ix_20) != Seq#Index(ar, jx_20)
  ) ==> count_array(Heap, i, hi, ar, v_2) == (if i < hi then (if Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array'(Heap, i + 1, hi, ar, v_2) else 0)
);

// Framing axioms
function  count_array#frame(frame: FrameType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array'(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) ==> count_array'(Heap, i, hi, ar, v_2) == count_array#frame(FrameFragment(count_array#condqp4(Heap, i, hi, ar, v_2)), i, hi, ar, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_array
// ==================================================

function  count_array#condqp4(Heap: HeapType, i_1_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_array#condqp4(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) < hi <==> 0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) < hi) && (0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) < hi ==> Heap2Heap[Seq#Index(ar, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2))), Ref__Integer_value]) ==> count_array#condqp4(Heap2Heap, i, hi, ar, v_2) == count_array#condqp4(Heap1Heap, i, hi, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_array#trigger(frame: FrameType, i: int, hi: int, ar: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_array#triggerStateless(i: int, hi: int, ar: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_array#definedness(i: int, hi: int, ar: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ix_22: int;
  var jx_22: int;
  var k_16: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_4_1: int;
  var jx_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ar[ix], ar[jx] } ix >= 0 && (ix < |ar| && (jx >= 0 && (jx < |ar| && ix != jx))) ==> ar[ix] != ar[jx])
      if (*) {
        if (ix_22 >= 0 && (ix_22 < Seq#Length(ar) && (jx_22 >= 0 && (jx_22 < Seq#Length(ar) && ix_22 != jx_22)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might be negative. (test_zero_matrix_pvl.vpr@66.12--66.116) [27667]"}
            ix_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@66.12--66.116) [27668]"}
            ix_22 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might be negative. (test_zero_matrix_pvl.vpr@66.12--66.116) [27669]"}
            jx_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@66.12--66.116) [27670]"}
            jx_22 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(ar, ix_3), Seq#Index(ar, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(ar) && (jx_3 >= 0 && (jx_3 < Seq#Length(ar) && ix_3 != jx_3))) ==> Seq#Index(ar, ix_3) != Seq#Index(ar, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (0 <= k_16 && k_16 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_zero_matrix_pvl.vpr@67.13--67.94) [27671]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@67.13--67.94) [27672]"}
            k_16 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@67.13--67.94) [27673]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < hi)) && (0 <= k_4_2 && k_4_2 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        0 <= k_4_1 && k_4_1 < hi ==> qpRange7(Seq#Index(ar, k_4_1)) && invRecv7(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (0 <= invRecv7(o_4) && invRecv7(o_4) < hi) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        0 <= k_4_1 && k_4_1 < hi ==> Seq#Index(ar, k_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv7(o_4) && invRecv7(o_4) < hi) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((0 <= invRecv7(o_4) && invRecv7(o_4) < hi) && qpRange7(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i].Ref__Integer_value == v ? 1 : 0) + count_array(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_zero_matrix_pvl.vpr@63.1--70.2) [27674]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_zero_matrix_pvl.vpr@63.1--70.2) [27675]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_zero_matrix_pvl.vpr@63.1--70.2) [27676]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (test_zero_matrix_pvl.vpr@69.55--69.84) [27677]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (test_zero_matrix_pvl.vpr@69.55--69.84) [27678]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (test_zero_matrix_pvl.vpr@69.55--69.84) [27679]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ar) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ar) && ix_4_1 != jx_4_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[ix] != ar[jx] might not hold. (test_zero_matrix_pvl.vpr@69.55--69.84) [27680]"}
                Seq#Index(ar, ix_4_1) != Seq#Index(ar, jx_4_1);
            }
            assume false;
          }
          assume (forall ix_5_1: int, jx_5_1: int ::
            { Seq#Index(ar, ix_5_1), Seq#Index(ar, jx_5_1) }
            ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ar) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ar) && ix_5_1 != jx_5_1))) ==> Seq#Index(ar, ix_5_1) != Seq#Index(ar, jx_5_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_zero_matrix_pvl.vpr@69.55--69.84) [27681]"}
            (forall k_5: int ::
            
            0 <= k_5 && k_5 < hi ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            0 <= k_5 && k_5 < hi ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (test_zero_matrix_pvl.vpr@69.55--69.84) [27682]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (0 <= k_5 && k_5 < hi) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@69.55--69.84) [27683]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered8(k_5), neverTriggered8(k_5_1) }
              (((k_5 != k_5_1 && (0 <= k_5 && k_5 < hi)) && (0 <= k_5_1 && k_5_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_zero_matrix_pvl.vpr@69.55--69.84) [27684]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              0 <= k_5 && k_5 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (0 <= k_5 && k_5 < hi) && NoPerm < wildcard ==> qpRange8(Seq#Index(ar, k_5)) && invRecv8(Seq#Index(ar, k_5)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv8(o_4) }
              (0 <= invRecv8(o_4) && invRecv8(o_4) < hi) && (NoPerm < wildcard && qpRange8(o_4)) ==> Seq#Index(ar, invRecv8(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_array#trigger(FrameFragment(count_array#condqp4(Heap, i + 1, hi, ar, v_2)), i + 1, hi, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array(Heap, i + 1, hi, ar, v_2) else 0);
}

// ==================================================
// Translation of method Ref__loop_main_33
// ==================================================

procedure Ref__loop_main_33(diz: Ref, current_thread_id: int, matrix: (Seq Ref), N: int, M: int) returns ()
  modifies Heap, Mask;
{
  var ix_23: int;
  var jx_23: int;
  var j_25: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_18: int;
  var i_18: int;
  var j_21: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_2_1: int;
  var j_7_1: int;
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
    assume M * N <= Seq#Length(matrix);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { matrix[ix], matrix[jx] } ix >= 0 && (ix < |matrix| && (jx >= 0 && (jx < |matrix| && ix != jx))) ==> matrix[ix] != matrix[jx])
      if (*) {
        if (ix_23 >= 0 && (ix_23 < Seq#Length(matrix) && (jx_23 >= 0 && (jx_23 < Seq#Length(matrix) && ix_23 != jx_23)))) {
          assert {:msg "  Contract might not be well-formed. Index matrix[ix] into matrix might be negative. (test_zero_matrix_pvl.vpr@76.12--76.132) [27685]"}
            ix_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[ix] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@76.12--76.132) [27686]"}
            ix_23 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. Index matrix[jx] into matrix might be negative. (test_zero_matrix_pvl.vpr@76.12--76.132) [27687]"}
            jx_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[jx] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@76.12--76.132) [27688]"}
            jx_23 < Seq#Length(matrix);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(matrix, ix_1), Seq#Index(matrix, jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(matrix) && (jx_1 >= 0 && (jx_1 < Seq#Length(matrix) && ix_1 != jx_1))) ==> Seq#Index(matrix, ix_1) != Seq#Index(matrix, jx_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } 0 <= j && j < M * N ==> acc(matrix[j].Ref__Integer_value, write))
      if (*) {
        if (0 <= j_25 && j_25 < M * N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (test_zero_matrix_pvl.vpr@77.13--77.98) [27689]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@77.13--77.98) [27690]"}
            j_25 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@77.13--77.98) [27691]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < M * N)) && (0 <= j_1_1 && j_1_1 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(matrix, j_1) != Seq#Index(matrix, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
        (0 <= j_1 && j_1 < M * N) && NoPerm < FullPerm ==> qpRange9(Seq#Index(matrix, j_1)) && invRecv9(Seq#Index(matrix, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < M * N) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(matrix, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
        0 <= j_1 && j_1 < M * N ==> Seq#Index(matrix, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < M * N) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(matrix, invRecv9(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < M * N) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall j: Int :: { matrix[j] } 0 <= j && j < M * N ==> acc(matrix[j].Ref__Integer_value, write))
      if (*) {
        if (0 <= j_18 && j_18 < M * N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might be negative. (test_zero_matrix_pvl.vpr@78.12--78.97) [27692]"}
            j_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@78.12--78.97) [27693]"}
            j_18 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@78.12--78.97) [27694]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < M * N)) && (0 <= j_3_2 && j_3_2 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(matrix, j_3_1) != Seq#Index(matrix, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(matrix, j_3_1) } { Seq#Index(matrix, j_3_1) }
        (0 <= j_3_1 && j_3_1 < M * N) && NoPerm < FullPerm ==> qpRange10(Seq#Index(matrix, j_3_1)) && invRecv10(Seq#Index(matrix, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((0 <= invRecv10(o_4) && invRecv10(o_4) < M * N) && NoPerm < FullPerm) && qpRange10(o_4) ==> Seq#Index(matrix, invRecv10(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(matrix, j_3_1) } { Seq#Index(matrix, j_3_1) }
        0 <= j_3_1 && j_3_1 < M * N ==> Seq#Index(matrix, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv10(o_4) && invRecv10(o_4) < M * N) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(matrix, invRecv10(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv10(o_4) && invRecv10(o_4) < M * N) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { matrix[Ref__multidim_index_2(M, N, i, j)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0)
      if (*) {
        if (0 <= i_18 && (i_18 < M && (0 <= j_21 && j_21 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (test_zero_matrix_pvl.vpr@79.92--79.125) [27695]"}
              0 <= i_18;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (test_zero_matrix_pvl.vpr@79.92--79.125) [27696]"}
              i_18 < M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (test_zero_matrix_pvl.vpr@79.92--79.125) [27697]"}
              0 <= M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (test_zero_matrix_pvl.vpr@79.92--79.125) [27698]"}
              0 <= j_21;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (test_zero_matrix_pvl.vpr@79.92--79.125) [27699]"}
              j_21 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (test_zero_matrix_pvl.vpr@79.92--79.125) [27700]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (test_zero_matrix_pvl.vpr@79.12--79.151) [27701]"}
            Ref__multidim_index_2(PostHeap, M, N, i_18, j_21) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@79.12--79.151) [27702]"}
            Ref__multidim_index_2(PostHeap, M, N, i_18, j_21) < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (test_zero_matrix_pvl.vpr@79.12--79.151) [27703]"}
            HasDirectPerm(PostMask, Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i_18, j_21)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_1: int, j_5_1: int ::
      { Seq#Index(matrix, Ref__multidim_index_2#frame(EmptyFrame, M, N, i_1, j_5_1)) }
      0 <= i_1 && (i_1 < M && (0 <= j_5_1 && j_5_1 < N)) ==> PostHeap[Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i_1, j_5_1)), Ref__Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_zero_matrix_pvl.vpr@81.3--81.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver matrix[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@78.12--78.97) [27704]"}
        (forall j_6_1: int, j_6_2: int ::
        { neverTriggered11(j_6_1), neverTriggered11(j_6_2) }
        (((j_6_1 != j_6_2 && (0 <= j_6_1 && j_6_1 < M * N)) && (0 <= j_6_2 && j_6_2 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(matrix, j_6_1) != Seq#Index(matrix, j_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_33 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (test_zero_matrix_pvl.vpr@78.12--78.97) [27705]"}
        (forall j_6_1: int ::
        { Seq#Index(matrix, j_6_1) } { Seq#Index(matrix, j_6_1) }
        0 <= j_6_1 && j_6_1 < M * N ==> Mask[Seq#Index(matrix, j_6_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver matrix[j]
      assume (forall j_6_1: int ::
        { Seq#Index(matrix, j_6_1) } { Seq#Index(matrix, j_6_1) }
        (0 <= j_6_1 && j_6_1 < M * N) && NoPerm < FullPerm ==> qpRange11(Seq#Index(matrix, j_6_1)) && invRecv11(Seq#Index(matrix, j_6_1)) == j_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (0 <= invRecv11(o_4) && invRecv11(o_4) < M * N) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(matrix, invRecv11(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < M * N) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(matrix, invRecv11(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv11(o_4) && invRecv11(o_4) < M * N) && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_2_1 && (i_2_1 < M && (0 <= j_7_1 && j_7_1 < N))) {
        assert {:msg "  Postcondition of Ref__loop_main_33 might not hold. Assertion matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0 might not hold. (test_zero_matrix_pvl.vpr@79.12--79.151) [27706]"}
          Heap[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i_2_1, j_7_1)), Ref__Integer_value] == 0;
      }
      assume false;
    }
    assume (forall i_3_1_1: int, j_8_1_1: int ::
      { Seq#Index(matrix, Ref__multidim_index_2#frame(EmptyFrame, M, N, i_3_1_1, j_8_1_1)) }
      0 <= i_3_1_1 && (i_3_1_1 < M && (0 <= j_8_1_1 && j_8_1_1 < N)) ==> Heap[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i_3_1_1, j_8_1_1)), Ref__Integer_value] == 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_33
// ==================================================

procedure Ref__loop_body_33(diz: Ref, current_thread_id: int, matrix: (Seq Ref), j_9: int, i: int, N: int, M: int) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_4: Ref;
  var __flatten_3: int;
  var __flatten_1: int;
  var __flatten_5: int;
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
    assume i < M;
    assume 0 <= j_9;
    assume j_9 < N;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Ref__multidim_index_2(M, N, i, j) < |matrix|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (test_zero_matrix_pvl.vpr@88.12--88.45) [27707]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (test_zero_matrix_pvl.vpr@88.12--88.45) [27708]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (test_zero_matrix_pvl.vpr@88.12--88.45) [27709]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (test_zero_matrix_pvl.vpr@88.12--88.45) [27710]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (test_zero_matrix_pvl.vpr@88.12--88.45) [27711]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (test_zero_matrix_pvl.vpr@88.12--88.45) [27712]"}
          0 <= N;
        // Stop execution
        assume false;
      }
    assume Ref__multidim_index_2(Heap, M, N, i, j_9) < Seq#Length(matrix);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (test_zero_matrix_pvl.vpr@89.23--89.56) [27713]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (test_zero_matrix_pvl.vpr@89.23--89.56) [27714]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (test_zero_matrix_pvl.vpr@89.23--89.56) [27715]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (test_zero_matrix_pvl.vpr@89.23--89.56) [27716]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (test_zero_matrix_pvl.vpr@89.23--89.56) [27717]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (test_zero_matrix_pvl.vpr@89.23--89.56) [27718]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (test_zero_matrix_pvl.vpr@89.12--89.84) [27719]"}
        Ref__multidim_index_2(Heap, M, N, i, j_9) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@89.12--89.84) [27720]"}
        Ref__multidim_index_2(Heap, M, N, i, j_9) < Seq#Length(matrix);
    perm := FullPerm;
    assume Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i, j_9)) != null;
    Mask := Mask[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value:=Mask[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value] + perm];
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
    assume i < M;
    assume 0 <= j_9;
    assume j_9 < N;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (test_zero_matrix_pvl.vpr@91.22--91.55) [27721]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (test_zero_matrix_pvl.vpr@91.22--91.55) [27722]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (test_zero_matrix_pvl.vpr@91.22--91.55) [27723]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (test_zero_matrix_pvl.vpr@91.22--91.55) [27724]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (test_zero_matrix_pvl.vpr@91.22--91.55) [27725]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (test_zero_matrix_pvl.vpr@91.22--91.55) [27726]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (test_zero_matrix_pvl.vpr@91.11--91.83) [27727]"}
        Ref__multidim_index_2(PostHeap, M, N, i, j_9) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@91.11--91.83) [27728]"}
        Ref__multidim_index_2(PostHeap, M, N, i, j_9) < Seq#Length(matrix);
    perm := FullPerm;
    assume Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i, j_9)) != null;
    PostMask := PostMask[Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i, j_9)), Ref__Integer_value:=PostMask[Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i, j_9)), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (test_zero_matrix_pvl.vpr@92.18--92.51) [27729]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (test_zero_matrix_pvl.vpr@92.18--92.51) [27730]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (test_zero_matrix_pvl.vpr@92.18--92.51) [27731]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (test_zero_matrix_pvl.vpr@92.18--92.51) [27732]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (test_zero_matrix_pvl.vpr@92.18--92.51) [27733]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (test_zero_matrix_pvl.vpr@92.18--92.51) [27734]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might be negative. (test_zero_matrix_pvl.vpr@92.11--92.76) [27735]"}
        Ref__multidim_index_2(PostHeap, M, N, i, j_9) >= 0;
      assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i, j)] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@92.11--92.76) [27736]"}
        Ref__multidim_index_2(PostHeap, M, N, i, j_9) < Seq#Length(matrix);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (test_zero_matrix_pvl.vpr@92.11--92.76) [27737]"}
        HasDirectPerm(PostMask, Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i, j_9)), Ref__Integer_value);
    assume PostHeap[Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i, j_9)), Ref__Integer_value] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_4, $allocated];
  
  // -- Translating statement: __flatten_3 := Ref__multidim_index_2(M, N, i, j) -- test_zero_matrix_pvl.vpr@98.3--98.51
    
    // -- Check definedness of Ref__multidim_index_2(M, N, i, j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (test_zero_matrix_pvl.vpr@98.18--98.51) [27738]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (test_zero_matrix_pvl.vpr@98.18--98.51) [27739]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (test_zero_matrix_pvl.vpr@98.18--98.51) [27740]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (test_zero_matrix_pvl.vpr@98.18--98.51) [27741]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (test_zero_matrix_pvl.vpr@98.18--98.51) [27742]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (test_zero_matrix_pvl.vpr@98.18--98.51) [27743]"}
          0 <= N;
        // Stop execution
        assume false;
      }
    __flatten_3 := Ref__multidim_index_2(Heap, M, N, i, j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := __flatten_3 -- test_zero_matrix_pvl.vpr@99.3--99.29
    __flatten_1 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := matrix[__flatten_1] -- test_zero_matrix_pvl.vpr@100.3--100.37
    
    // -- Check definedness of matrix[__flatten_1]
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might be negative. (test_zero_matrix_pvl.vpr@100.3--100.37) [27744]"}
        __flatten_1 >= 0;
      assert {:msg "  Assignment might fail. Index matrix[__flatten_1] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@100.3--100.37) [27745]"}
        __flatten_1 < Seq#Length(matrix);
    __flatten_4 := Seq#Index(matrix, __flatten_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := 0 -- test_zero_matrix_pvl.vpr@101.3--101.19
    __flatten_5 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4.Ref__Integer_value := __flatten_5 -- test_zero_matrix_pvl.vpr@102.3--102.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_zero_matrix_pvl.vpr@102.3--102.48) [27746]"}
      FullPerm == Mask[__flatten_4, Ref__Integer_value];
    Heap := Heap[__flatten_4, Ref__Integer_value:=__flatten_5];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_33 might not hold. Assertion 0 <= i might not hold. (test_zero_matrix_pvl.vpr@90.11--90.55) [27747]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_33 might not hold. Assertion i < M might not hold. (test_zero_matrix_pvl.vpr@90.11--90.55) [27748]"}
      i < M;
    assert {:msg "  Postcondition of Ref__loop_body_33 might not hold. Assertion 0 <= j might not hold. (test_zero_matrix_pvl.vpr@90.11--90.55) [27749]"}
      0 <= j_9;
    assert {:msg "  Postcondition of Ref__loop_body_33 might not hold. Assertion j < N might not hold. (test_zero_matrix_pvl.vpr@90.11--90.55) [27750]"}
      j_9 < N;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_33 might not hold. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (test_zero_matrix_pvl.vpr@91.11--91.83) [27751]"}
        perm <= Mask[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value:=Mask[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_33 might not hold. Assertion matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0 might not hold. (test_zero_matrix_pvl.vpr@92.11--92.76) [27752]"}
      Heap[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__matrix
// ==================================================

procedure Ref__matrix(diz: Ref, current_thread_id: int, M: int, N: int, step: int, matrix: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var ix_24: int;
  var jx_24: int;
  var j1_10: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j2: int;
  var i3: int;
  var j3: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ix_2_1: int;
  var jx_2_1: int;
  var ExhaleHeap: HeapType;
  var i3_2: int;
  var j3_2: int;
  
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
    assume M > 0;
    assume N > 0;
    assume step >= N;
    assume state(Heap, Mask);
    assume M * N <= Seq#Length(matrix);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { matrix[ix], matrix[jx] } ix >= 0 && (ix < |matrix| && (jx >= 0 && (jx < |matrix| && ix != jx))) ==> matrix[ix] != matrix[jx])
      if (*) {
        if (ix_24 >= 0 && (ix_24 < Seq#Length(matrix) && (jx_24 >= 0 && (jx_24 < Seq#Length(matrix) && ix_24 != jx_24)))) {
          assert {:msg "  Contract might not be well-formed. Index matrix[ix] into matrix might be negative. (test_zero_matrix_pvl.vpr@110.12--110.132) [27753]"}
            ix_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[ix] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@110.12--110.132) [27754]"}
            ix_24 < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. Index matrix[jx] into matrix might be negative. (test_zero_matrix_pvl.vpr@110.12--110.132) [27755]"}
            jx_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[jx] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@110.12--110.132) [27756]"}
            jx_24 < Seq#Length(matrix);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(matrix, ix_1), Seq#Index(matrix, jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(matrix) && (jx_1 >= 0 && (jx_1 < Seq#Length(matrix) && ix_1 != jx_1))) ==> Seq#Index(matrix, ix_1) != Seq#Index(matrix, jx_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { matrix[j1] } 0 <= j1 && j1 < M * N ==> acc(matrix[j1].Ref__Integer_value, write))
      if (*) {
        if (0 <= j1_10 && j1_10 < M * N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might be negative. (test_zero_matrix_pvl.vpr@111.13--111.102) [27757]"}
            j1_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j1] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@111.13--111.102) [27758]"}
            j1_10 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j1].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@111.13--111.102) [27759]"}
      (forall j1_1: int, j1_1_1: int ::
      
      (((j1_1 != j1_1_1 && (0 <= j1_1 && j1_1 < M * N)) && (0 <= j1_1_1 && j1_1_1 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(matrix, j1_1) != Seq#Index(matrix, j1_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_1: int ::
        { Seq#Index(matrix, j1_1) } { Seq#Index(matrix, j1_1) }
        (0 <= j1_1 && j1_1 < M * N) && NoPerm < FullPerm ==> qpRange12(Seq#Index(matrix, j1_1)) && invRecv12(Seq#Index(matrix, j1_1)) == j1_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((0 <= invRecv12(o_4) && invRecv12(o_4) < M * N) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(matrix, invRecv12(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_1: int ::
        { Seq#Index(matrix, j1_1) } { Seq#Index(matrix, j1_1) }
        0 <= j1_1 && j1_1 < M * N ==> Seq#Index(matrix, j1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv12(o_4) && invRecv12(o_4) < M * N) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(matrix, invRecv12(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv12(o_4) && invRecv12(o_4) < M * N) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall j2: Int :: { matrix[j2] } 0 <= j2 && j2 < M * N ==> acc(matrix[j2].Ref__Integer_value, write))
      if (*) {
        if (0 <= j2 && j2 < M * N) {
          assert {:msg "  Contract might not be well-formed. Index matrix[j2] into matrix might be negative. (test_zero_matrix_pvl.vpr@112.12--112.101) [27760]"}
            j2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[j2] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@112.12--112.101) [27761]"}
            j2 < Seq#Length(matrix);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j2].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@112.12--112.101) [27762]"}
      (forall j2_1: int, j2_1_1: int ::
      
      (((j2_1 != j2_1_1 && (0 <= j2_1 && j2_1 < M * N)) && (0 <= j2_1_1 && j2_1_1 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(matrix, j2_1) != Seq#Index(matrix, j2_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j2_1: int ::
        { Seq#Index(matrix, j2_1) } { Seq#Index(matrix, j2_1) }
        (0 <= j2_1 && j2_1 < M * N) && NoPerm < FullPerm ==> qpRange13(Seq#Index(matrix, j2_1)) && invRecv13(Seq#Index(matrix, j2_1)) == j2_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < M * N) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(matrix, invRecv13(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j2_1: int ::
        { Seq#Index(matrix, j2_1) } { Seq#Index(matrix, j2_1) }
        0 <= j2_1 && j2_1 < M * N ==> Seq#Index(matrix, j2_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv13(o_4) && invRecv13(o_4) < M * N) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(matrix, invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < M * N) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i3: Int, j3: Int :: { matrix[Ref__multidim_index_2(M, N, i3, j3)] } 0 <= i3 && (i3 < M && (0 <= j3 && j3 < N)) ==> matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value == 0)
      if (*) {
        if (0 <= i3 && (i3 < M && (0 <= j3 && j3 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i3 might not hold. (test_zero_matrix_pvl.vpr@113.98--113.133) [27763]"}
              0 <= i3;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i3 < M might not hold. (test_zero_matrix_pvl.vpr@113.98--113.133) [27764]"}
              i3 < M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (test_zero_matrix_pvl.vpr@113.98--113.133) [27765]"}
              0 <= M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j3 might not hold. (test_zero_matrix_pvl.vpr@113.98--113.133) [27766]"}
              0 <= j3;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j3 < N might not hold. (test_zero_matrix_pvl.vpr@113.98--113.133) [27767]"}
              j3 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (test_zero_matrix_pvl.vpr@113.98--113.133) [27768]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i3, j3)] into matrix might be negative. (test_zero_matrix_pvl.vpr@113.12--113.159) [27769]"}
            Ref__multidim_index_2(PostHeap, M, N, i3, j3) >= 0;
          assert {:msg "  Contract might not be well-formed. Index matrix[Ref__multidim_index_2(M, N, i3, j3)] into matrix might exceed sequence length. (test_zero_matrix_pvl.vpr@113.12--113.159) [27770]"}
            Ref__multidim_index_2(PostHeap, M, N, i3, j3) < Seq#Length(matrix);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value (test_zero_matrix_pvl.vpr@113.12--113.159) [27771]"}
            HasDirectPerm(PostMask, Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i3, j3)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i3_1: int, j3_1: int ::
      { Seq#Index(matrix, Ref__multidim_index_2#frame(EmptyFrame, M, N, i3_1, j3_1)) }
      0 <= i3_1 && (i3_1 < M && (0 <= j3_1 && j3_1 < N)) ==> PostHeap[Seq#Index(matrix, Ref__multidim_index_2(PostHeap, M, N, i3_1, j3_1)), Ref__Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_33(diz, current_thread_id, matrix, N, M) -- test_zero_matrix_pvl.vpr@115.3--115.58
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_33 might not hold. Assertion diz != null might not hold. (test_zero_matrix_pvl.vpr@115.3--115.58) [27772]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_33 might not hold. Assertion current_thread_id >= 0 might not hold. (test_zero_matrix_pvl.vpr@115.3--115.58) [27773]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__loop_main_33 might not hold. Assertion M * N <= |matrix| might not hold. (test_zero_matrix_pvl.vpr@115.3--115.58) [27774]"}
        M * N <= Seq#Length(matrix);
      if (*) {
        if (ix_2_1 >= 0 && (ix_2_1 < Seq#Length(matrix) && (jx_2_1 >= 0 && (jx_2_1 < Seq#Length(matrix) && ix_2_1 != jx_2_1)))) {
          assert {:msg "  The precondition of method Ref__loop_main_33 might not hold. Assertion matrix[ix] != matrix[jx] might not hold. (test_zero_matrix_pvl.vpr@115.3--115.58) [27775]"}
            Seq#Index(matrix, ix_2_1) != Seq#Index(matrix, jx_2_1);
        }
        assume false;
      }
      assume (forall ix_3_1: int, jx_3_1: int ::
        { Seq#Index(matrix, ix_3_1), Seq#Index(matrix, jx_3_1) }
        ix_3_1 >= 0 && (ix_3_1 < Seq#Length(matrix) && (jx_3_1 >= 0 && (jx_3_1 < Seq#Length(matrix) && ix_3_1 != jx_3_1))) ==> Seq#Index(matrix, ix_3_1) != Seq#Index(matrix, jx_3_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver matrix[j] is injective
        assert {:msg "  The precondition of method Ref__loop_main_33 might not hold. Quantified resource matrix[j].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@115.3--115.58) [27776]"}
          (forall j_9: int, j_26: int ::
          { neverTriggered15(j_9), neverTriggered15(j_26) }
          (((j_9 != j_26 && (0 <= j_9 && j_9 < M * N)) && (0 <= j_26 && j_26 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(matrix, j_9) != Seq#Index(matrix, j_26)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_33 might not hold. There might be insufficient permission to access matrix[j].Ref__Integer_value (test_zero_matrix_pvl.vpr@115.3--115.58) [27777]"}
          (forall j_9: int ::
          { Seq#Index(matrix, j_9) } { Seq#Index(matrix, j_9) }
          0 <= j_9 && j_9 < M * N ==> Mask[Seq#Index(matrix, j_9), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver matrix[j]
        assume (forall j_9: int ::
          { Seq#Index(matrix, j_9) } { Seq#Index(matrix, j_9) }
          (0 <= j_9 && j_9 < M * N) && NoPerm < FullPerm ==> qpRange15(Seq#Index(matrix, j_9)) && invRecv15(Seq#Index(matrix, j_9)) == j_9
        );
        assume (forall o_4: Ref ::
          { invRecv15(o_4) }
          (0 <= invRecv15(o_4) && invRecv15(o_4) < M * N) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(matrix, invRecv15(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv15(o_4) && invRecv15(o_4) < M * N) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(matrix, invRecv15(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv15(o_4) && invRecv15(o_4) < M * N) && (NoPerm < FullPerm && qpRange15(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource matrix[j].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@115.3--115.58) [27778]"}
        (forall j_1: int, j_1_1: int ::
        
        (((j_1 != j_1_1 && (0 <= j_1 && j_1 < M * N)) && (0 <= j_1_1 && j_1_1 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(matrix, j_1) != Seq#Index(matrix, j_1_1)
      );
      
      // -- Define Inverse Function
        assume (forall j_1: int ::
          { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
          (0 <= j_1 && j_1 < M * N) && NoPerm < FullPerm ==> qpRange16(Seq#Index(matrix, j_1)) && invRecv16(Seq#Index(matrix, j_1)) == j_1
        );
        assume (forall o_4: Ref ::
          { invRecv16(o_4) }
          ((0 <= invRecv16(o_4) && invRecv16(o_4) < M * N) && NoPerm < FullPerm) && qpRange16(o_4) ==> Seq#Index(matrix, invRecv16(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_1: int ::
          { Seq#Index(matrix, j_1) } { Seq#Index(matrix, j_1) }
          0 <= j_1 && j_1 < M * N ==> Seq#Index(matrix, j_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv16(o_4) && invRecv16(o_4) < M * N) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(matrix, invRecv16(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv16(o_4) && invRecv16(o_4) < M * N) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall i: int, j_2_1: int ::
        { Seq#Index(matrix, Ref__multidim_index_2#frame(EmptyFrame, M, N, i, j_2_1)) }
        0 <= i && (i < M && (0 <= j_2_1 && j_2_1 < N)) ==> Heap[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i, j_2_1)), Ref__Integer_value] == 0
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver matrix[j2] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource matrix[j2].Ref__Integer_value might not be injective. (test_zero_matrix_pvl.vpr@112.12--112.101) [27779]"}
        (forall j2_2: int, j2_2_1: int ::
        { neverTriggered14(j2_2), neverTriggered14(j2_2_1) }
        (((j2_2 != j2_2_1 && (0 <= j2_2 && j2_2 < M * N)) && (0 <= j2_2_1 && j2_2_1 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(matrix, j2_2) != Seq#Index(matrix, j2_2_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__matrix might not hold. There might be insufficient permission to access matrix[j2].Ref__Integer_value (test_zero_matrix_pvl.vpr@112.12--112.101) [27780]"}
        (forall j2_2: int ::
        { Seq#Index(matrix, j2_2) } { Seq#Index(matrix, j2_2) }
        0 <= j2_2 && j2_2 < M * N ==> Mask[Seq#Index(matrix, j2_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver matrix[j2]
      assume (forall j2_2: int ::
        { Seq#Index(matrix, j2_2) } { Seq#Index(matrix, j2_2) }
        (0 <= j2_2 && j2_2 < M * N) && NoPerm < FullPerm ==> qpRange14(Seq#Index(matrix, j2_2)) && invRecv14(Seq#Index(matrix, j2_2)) == j2_2
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (0 <= invRecv14(o_4) && invRecv14(o_4) < M * N) && (NoPerm < FullPerm && qpRange14(o_4)) ==> Seq#Index(matrix, invRecv14(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < M * N) && (NoPerm < FullPerm && qpRange14(o_4)) ==> Seq#Index(matrix, invRecv14(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv14(o_4) && invRecv14(o_4) < M * N) && (NoPerm < FullPerm && qpRange14(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i3_2 && (i3_2 < M && (0 <= j3_2 && j3_2 < N))) {
        assert {:msg "  Postcondition of Ref__matrix might not hold. Assertion matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value == 0 might not hold. (test_zero_matrix_pvl.vpr@113.12--113.159) [27781]"}
          Heap[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i3_2, j3_2)), Ref__Integer_value] == 0;
      }
      assume false;
    }
    assume (forall i3_3_1: int, j3_3_1: int ::
      { Seq#Index(matrix, Ref__multidim_index_2#frame(EmptyFrame, M, N, i3_3_1, j3_3_1)) }
      0 <= i3_3_1 && (i3_3_1 < M && (0 <= j3_3_1 && j3_3_1 < N)) ==> Heap[Seq#Index(matrix, Ref__multidim_index_2(Heap, M, N, i3_3_1, j3_3_1)), Ref__Integer_value] == 0
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
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
  
  // -- Translating statement: diz := new(Ref__Integer_value) -- test_zero_matrix_pvl.vpr@123.3--123.33
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Ref__Integer_value:=Mask[diz, Ref__Integer_value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_zero_matrix_pvl.vpr@124.3--124.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- test_zero_matrix_pvl.vpr@125.3--125.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_zero_matrix_pvl.vpr@125.10--125.29) [27782]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_zero_matrix_pvl.vpr@126.3--126.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result != null might not hold. (test_zero_matrix_pvl.vpr@120.11--120.30) [27783]"}
      sys__result != null;
}