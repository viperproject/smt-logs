// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:34:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroArray.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroArray-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_23: Ref, f_15: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_23, f_15] }
  Heap[o_23, $allocated] ==> Heap[Heap[o_23, f_15], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_52: Ref, f_63: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_52, f_63] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_52, f_63) ==> Heap[o_52, f_63] == ExhaleHeap[o_52, f_63]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_24), ExhaleHeap[null, PredicateMaskField(pm_f_24)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsPredicateField(pm_f_24) ==> Heap[null, PredicateMaskField(pm_f_24)] == ExhaleHeap[null, PredicateMaskField(pm_f_24)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_24) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsPredicateField(pm_f_24) ==> (forall <A, B> o2_24: Ref, f_63: (Field A B) ::
    { ExhaleHeap[o2_24, f_63] }
    Heap[null, PredicateMaskField(pm_f_24)][o2_24, f_63] ==> Heap[o2_24, f_63] == ExhaleHeap[o2_24, f_63]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_24), ExhaleHeap[null, WandMaskField(pm_f_24)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsWandField(pm_f_24) ==> Heap[null, WandMaskField(pm_f_24)] == ExhaleHeap[null, WandMaskField(pm_f_24)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_24) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsWandField(pm_f_24) ==> (forall <A, B> o2_24: Ref, f_63: (Field A B) ::
    { ExhaleHeap[o2_24, f_63] }
    Heap[null, WandMaskField(pm_f_24)][o2_24, f_63] ==> Heap[o2_24, f_63] == ExhaleHeap[o2_24, f_63]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_52: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_52, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_52, $allocated] ==> ExhaleHeap[o_52, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_23: Ref, f_65: (Field A B), v: B ::
  { Heap[o_23, f_65:=v] }
  succHeap(Heap, Heap[o_23, f_65:=v])
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
function  neverTriggered9(i_1: int): bool;
function  neverTriggered10(i_3_2: int): bool;
function  neverTriggered11(i_6_2: int): bool;
function  neverTriggered12(i_1: int): bool;
function  neverTriggered13(i_3_2: int): bool;
function  neverTriggered14(i_4_1: int): bool;
function  neverTriggered15(i_5_1: int): bool;
function  neverTriggered16(i_6_2: int): bool;
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
// - height 5: count_list
// - height 4: sum_list
// - height 3: sum_square
// - height 2: sum_array
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
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar_1) ==> sum_list(Heap, i, hi, ar_1) == (if i < hi then Seq#Index(ar_1, i) + sum_list'(Heap, i + 1, hi, ar_1) else 0)
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@6.1--11.2) [142834]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@6.1--11.2) [142835]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (testZeroArray.vpr@10.21--10.44) [142836]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (testZeroArray.vpr@10.21--10.44) [142837]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (testZeroArray.vpr@10.21--10.44) [142838]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar_1)) && (forall j: int, k: int ::
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testZeroArray.vpr@16.12--16.102) [142839]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testZeroArray.vpr@16.12--16.102) [142840]"}
            j_14 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@16.12--16.102) [142841]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@16.12--16.102) [142842]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@17.13--17.95) [142843]"}
            k_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@17.13--17.95) [142844]"}
            k_6 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testZeroArray.vpr@17.13--17.95) [142845]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@13.1--20.2) [142846]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@13.1--20.2) [142847]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@13.1--20.2) [142848]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (testZeroArray.vpr@19.40--19.68) [142849]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (testZeroArray.vpr@19.40--19.68) [142850]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (testZeroArray.vpr@19.40--19.68) [142851]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (testZeroArray.vpr@19.40--19.68) [142852]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9_1 && (k_9_1 < hi && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[j] != ar[k] might not hold. (testZeroArray.vpr@19.40--19.68) [142853]"}
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
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@19.40--19.68) [142854]"}
            (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (testZeroArray.vpr@19.40--19.68) [142855]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (lo <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testZeroArray.vpr@19.40--19.68) [142856]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && (lo <= k_11 && k_11 < hi)) && (lo <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@19.40--19.68) [142857]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1))) && vmax_1 <= Seq#Length(ar_1)) && (forall j: int, k: int ::
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testZeroArray.vpr@26.12--26.104) [142858]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testZeroArray.vpr@26.12--26.104) [142859]"}
            j_12 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@26.12--26.104) [142860]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@26.12--26.104) [142861]"}
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
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testZeroArray.vpr@27.13--27.136) [142862]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testZeroArray.vpr@27.13--27.136) [142863]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax_1 && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@27.13--27.136) [142864]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@27.13--27.136) [142865]"}
            k_7 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testZeroArray.vpr@27.13--27.136) [142866]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testZeroArray.vpr@22.1--30.2) [142867]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testZeroArray.vpr@22.1--30.2) [142868]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@22.1--30.2) [142869]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@22.1--30.2) [142870]"}
            i < Seq#Length(ar_1);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@22.1--30.2) [142871]"}
            HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (testZeroArray.vpr@29.85--29.130) [142872]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (testZeroArray.vpr@29.85--29.130) [142873]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (testZeroArray.vpr@29.85--29.130) [142874]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (testZeroArray.vpr@29.85--29.130) [142875]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (testZeroArray.vpr@29.85--29.130) [142876]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (testZeroArray.vpr@29.85--29.130) [142877]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (testZeroArray.vpr@29.85--29.130) [142878]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (testZeroArray.vpr@29.85--29.130) [142879]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax_1 && (0 <= k_9_1 && (k_9_1 < vmax_1 && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[j] != ar[k] might not hold. (testZeroArray.vpr@29.85--29.130) [142880]"}
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
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@29.85--29.130) [142881]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (testZeroArray.vpr@29.85--29.130) [142882]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testZeroArray.vpr@29.85--29.130) [142883]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@29.85--29.130) [142884]"}
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testZeroArray.vpr@36.12--36.104) [142885]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testZeroArray.vpr@36.12--36.104) [142886]"}
            j_2 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@36.12--36.104) [142887]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@36.12--36.104) [142888]"}
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
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testZeroArray.vpr@37.13--37.136) [142889]"}
              step != 0;
            if (lo <= k_14 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testZeroArray.vpr@37.13--37.136) [142890]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_14 && (k_14 < vmax_1 && (lo <= k_14 mod step && k_14 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@37.13--37.136) [142891]"}
            k_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@37.13--37.136) [142892]"}
            k_14 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testZeroArray.vpr@37.13--37.136) [142893]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testZeroArray.vpr@32.1--40.2) [142894]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testZeroArray.vpr@32.1--40.2) [142895]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@32.1--40.2) [142896]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@32.1--40.2) [142897]"}
              i < Seq#Length(ar_1);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@32.1--40.2) [142898]"}
              HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (testZeroArray.vpr@39.97--39.147) [142899]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (testZeroArray.vpr@39.97--39.147) [142900]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (testZeroArray.vpr@39.97--39.147) [142901]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testZeroArray.vpr@39.97--39.147) [142902]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (testZeroArray.vpr@39.97--39.147) [142903]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (testZeroArray.vpr@39.97--39.147) [142904]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (testZeroArray.vpr@39.97--39.147) [142905]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (testZeroArray.vpr@39.97--39.147) [142906]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax_1 && (0 <= k_9_1 && (k_9_1 < vmax_1 && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[j] != ar[k] might not hold. (testZeroArray.vpr@39.97--39.147) [142907]"}
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
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@39.97--39.147) [142908]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testZeroArray.vpr@39.97--39.147) [142909]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testZeroArray.vpr@39.97--39.147) [142910]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@39.97--39.147) [142911]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar_1) ==> count_list(Heap, i, hi, ar_1, v_2) == (if i < hi then (if Seq#Index(ar_1, i) == v_2 then 1 else 0) + count_list'(Heap, i + 1, hi, ar_1, v_2) else 0)
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
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@42.1--47.2) [142912]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@42.1--47.2) [142913]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (testZeroArray.vpr@46.36--46.64) [142914]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (testZeroArray.vpr@46.36--46.64) [142915]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (testZeroArray.vpr@46.36--46.64) [142916]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar_1)) && (forall j: int, k: int ::
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9_1: int;
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
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_4 && (j_4 < hi && (0 <= k_9 && (k_9 < hi && j_4 != k_9)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testZeroArray.vpr@52.12--52.102) [142917]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testZeroArray.vpr@52.12--52.102) [142918]"}
            j_4 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@52.12--52.102) [142919]"}
            k_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@52.12--52.102) [142920]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@53.13--53.94) [142921]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@53.13--53.94) [142922]"}
            k_2 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testZeroArray.vpr@53.13--53.94) [142923]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@49.1--56.2) [142924]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@49.1--56.2) [142925]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@49.1--56.2) [142926]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (testZeroArray.vpr@55.55--55.84) [142927]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (testZeroArray.vpr@55.55--55.84) [142928]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (testZeroArray.vpr@55.55--55.84) [142929]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9_1 && (k_9_1 < hi && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[j] != ar[k] might not hold. (testZeroArray.vpr@55.55--55.84) [142930]"}
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
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@55.55--55.84) [142931]"}
            (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testZeroArray.vpr@55.55--55.84) [142932]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (0 <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testZeroArray.vpr@55.55--55.84) [142933]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && (0 <= k_11 && k_11 < hi)) && (0 <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@55.55--55.84) [142934]"}
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
// Translation of method Ref__loop_main_23
// ==================================================

procedure Ref__loop_main_23(diz: Ref, current_thread_id: int, len_3: int, ar_1: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_6: int;
  var k_25: int;
  var i_19: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_9: int;
  var i_10: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_7_1: int;
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
    if (0 < len_3) {
      assume Seq#Length(ar_1) == len_3;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_6 && (j_6 < len_3 && (0 <= k_25 && (k_25 < len_3 && j_6 != k_25)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testZeroArray.vpr@62.12--62.104) [142935]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testZeroArray.vpr@62.12--62.104) [142936]"}
            j_6 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@62.12--62.104) [142937]"}
            k_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@62.12--62.104) [142938]"}
            k_25 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(ar_1, j_1), Seq#Index(ar_1, k_1) }
      0 <= j_1 && (j_1 < len_3 && (0 <= k_1 && (k_1 < len_3 && j_1 != k_1))) ==> Seq#Index(ar_1, j_1) != Seq#Index(ar_1, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } 0 <= i && i < len ==> acc(ar[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_19 && i_19 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@63.13--63.92) [142939]"}
            i_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@63.13--63.92) [142940]"}
            i_19 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testZeroArray.vpr@63.13--63.92) [142941]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len_3)) && (0 <= i_1_1 && i_1_1 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_1) != Seq#Index(ar_1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(ar_1, i_1) } { Seq#Index(ar_1, i_1) }
        (0 <= i_1 && i_1 < len_3) && NoPerm < FullPerm ==> qpRange9(Seq#Index(ar_1, i_1)) && invRecv9(Seq#Index(ar_1, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < len_3) && NoPerm < FullPerm) && qpRange9(o_9) ==> Seq#Index(ar_1, invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(ar_1, i_1) } { Seq#Index(ar_1, i_1) }
        0 <= i_1 && i_1 < len_3 ==> Seq#Index(ar_1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv9(o_9) && invRecv9(o_9) < len_3) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(ar_1, invRecv9(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < len_3) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    if (0 < len_3) {
      assume Seq#Length(ar_1) == len_3;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } 0 <= i && i < len ==> acc(ar[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_9 && i_9 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@65.12--65.91) [142942]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@65.12--65.91) [142943]"}
            i_9 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testZeroArray.vpr@65.12--65.91) [142944]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < len_3)) && (0 <= i_3_3 && i_3_3 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_3_2) != Seq#Index(ar_1, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(ar_1, i_3_2) } { Seq#Index(ar_1, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && NoPerm < FullPerm ==> qpRange10(Seq#Index(ar_1, i_3_2)) && invRecv10(Seq#Index(ar_1, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < FullPerm) && qpRange10(o_9) ==> Seq#Index(ar_1, invRecv10(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(ar_1, i_3_2) } { Seq#Index(ar_1, i_3_2) }
        0 <= i_3_2 && i_3_2 < len_3 ==> Seq#Index(ar_1, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(ar_1, invRecv10(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } 0 <= i && i < len ==> ar[i].Ref__Integer_value == 0)
      if (*) {
        if (0 <= i_10 && i_10 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@66.12--66.86) [142945]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@66.12--66.86) [142946]"}
            i_10 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@66.12--66.86) [142947]"}
            HasDirectPerm(PostMask, Seq#Index(ar_1, i_10), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_5_1: int ::
      { Seq#Index(ar_1, i_5_1) }
      0 <= i_5_1 && i_5_1 < len_3 ==> PostHeap[Seq#Index(ar_1, i_5_1), Ref__Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testZeroArray.vpr@68.3--68.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (0 < len_3) {
      assert {:msg "  Postcondition of Ref__loop_main_23 might not hold. Assertion |ar| == len might not hold. (testZeroArray.vpr@64.11--64.38) [142948]"}
        Seq#Length(ar_1) == len_3;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testZeroArray.vpr@65.12--65.91) [142949]"}
        (forall i_6_2: int, i_6_3: int ::
        { neverTriggered11(i_6_2), neverTriggered11(i_6_3) }
        (((i_6_2 != i_6_3 && (0 <= i_6_2 && i_6_2 < len_3)) && (0 <= i_6_3 && i_6_3 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_6_2) != Seq#Index(ar_1, i_6_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_23 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@65.12--65.91) [142950]"}
        (forall i_6_2: int ::
        { Seq#Index(ar_1, i_6_2) } { Seq#Index(ar_1, i_6_2) }
        0 <= i_6_2 && i_6_2 < len_3 ==> Mask[Seq#Index(ar_1, i_6_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_6_2: int ::
        { Seq#Index(ar_1, i_6_2) } { Seq#Index(ar_1, i_6_2) }
        (0 <= i_6_2 && i_6_2 < len_3) && NoPerm < FullPerm ==> qpRange11(Seq#Index(ar_1, i_6_2)) && invRecv11(Seq#Index(ar_1, i_6_2)) == i_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(ar_1, invRecv11(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && (NoPerm < FullPerm && qpRange11(o_9)) ==> Seq#Index(ar_1, invRecv11(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_7_1 && i_7_1 < len_3) {
        assert {:msg "  Postcondition of Ref__loop_main_23 might not hold. Assertion ar[i].Ref__Integer_value == 0 might not hold. (testZeroArray.vpr@66.12--66.86) [142951]"}
          Heap[Seq#Index(ar_1, i_7_1), Ref__Integer_value] == 0;
      }
      assume false;
    }
    assume (forall i_8_1_1: int ::
      { Seq#Index(ar_1, i_8_1_1) }
      0 <= i_8_1_1 && i_8_1_1 < len_3 ==> Heap[Seq#Index(ar_1, i_8_1_1), Ref__Integer_value] == 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_23
// ==================================================

procedure Ref__loop_body_23(diz: Ref, current_thread_id: int, len_3: int, ar_1: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_2: Ref;
  var __flatten_3: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    assume i < len_3;
    assume state(Heap, Mask);
    assume Seq#Length(ar_1) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(ar[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@76.12--76.48) [142952]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@76.12--76.48) [142953]"}
        i < Seq#Length(ar_1);
    perm := FullPerm;
    assume Seq#Index(ar_1, i) != null;
    Mask := Mask[Seq#Index(ar_1, i), Ref__Integer_value:=Mask[Seq#Index(ar_1, i), Ref__Integer_value] + perm];
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
    assume i < len_3;
    assume state(PostHeap, PostMask);
    assume Seq#Length(ar_1) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(ar[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@79.11--79.47) [142954]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@79.11--79.47) [142955]"}
        i < Seq#Length(ar_1);
    perm := FullPerm;
    assume Seq#Index(ar_1, i) != null;
    PostMask := PostMask[Seq#Index(ar_1, i), Ref__Integer_value:=PostMask[Seq#Index(ar_1, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of ar[i].Ref__Integer_value == 0
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@80.11--80.40) [142956]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@80.11--80.40) [142957]"}
        i < Seq#Length(ar_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@80.11--80.40) [142958]"}
        HasDirectPerm(PostMask, Seq#Index(ar_1, i), Ref__Integer_value);
    assume PostHeap[Seq#Index(ar_1, i), Ref__Integer_value] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_2, $allocated];
  
  // -- Translating statement: __flatten_2 := ar[i] -- testZeroArray.vpr@84.3--84.23
    
    // -- Check definedness of ar[i]
      assert {:msg "  Assignment might fail. Index ar[i] into ar might be negative. (testZeroArray.vpr@84.3--84.23) [142959]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@84.3--84.23) [142960]"}
        i < Seq#Length(ar_1);
    __flatten_2 := Seq#Index(ar_1, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := 0 -- testZeroArray.vpr@85.3--85.19
    __flatten_3 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2.Ref__Integer_value := __flatten_3 -- testZeroArray.vpr@86.3--86.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_2.Ref__Integer_value (testZeroArray.vpr@86.3--86.48) [142961]"}
      FullPerm == Mask[__flatten_2, Ref__Integer_value];
    Heap := Heap[__flatten_2, Ref__Integer_value:=__flatten_3];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_23 might not hold. Assertion 0 <= i might not hold. (testZeroArray.vpr@77.11--77.32) [142962]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_23 might not hold. Assertion i < len might not hold. (testZeroArray.vpr@77.11--77.32) [142963]"}
      i < len_3;
    assert {:msg "  Postcondition of Ref__loop_body_23 might not hold. Assertion |ar| == len might not hold. (testZeroArray.vpr@78.11--78.22) [142964]"}
      Seq#Length(ar_1) == len_3;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_23 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@79.11--79.47) [142965]"}
        perm <= Mask[Seq#Index(ar_1, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(ar_1, i), Ref__Integer_value:=Mask[Seq#Index(ar_1, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_23 might not hold. Assertion ar[i].Ref__Integer_value == 0 might not hold. (testZeroArray.vpr@80.11--80.40) [142966]"}
      Heap[Seq#Index(ar_1, i), Ref__Integer_value] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__zero_array
// ==================================================

procedure Ref__zero_array(diz: Ref, current_thread_id: int, ar_1: (Seq Ref), len_3: int) returns ()
  modifies Heap, Mask;
{
  var j_22: int;
  var k_31: int;
  var i_11: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_12: int;
  var k_21: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var j_2_2: int;
  var k_6_2: int;
  var ExhaleHeap: HeapType;
  var k_4_2: int;
  
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
    assume Seq#Length(ar_1) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_22 && (j_22 < len_3 && (0 <= k_31 && (k_31 < len_3 && j_22 != k_31)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testZeroArray.vpr@93.12--93.104) [142967]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testZeroArray.vpr@93.12--93.104) [142968]"}
            j_22 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@93.12--93.104) [142969]"}
            k_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@93.12--93.104) [142970]"}
            k_31 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(ar_1, j_1), Seq#Index(ar_1, k_1) }
      0 <= j_1 && (j_1 < len_3 && (0 <= k_1 && (k_1 < len_3 && j_1 != k_1))) ==> Seq#Index(ar_1, j_1) != Seq#Index(ar_1, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } 0 <= i && i < len ==> acc(ar[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_11 && i_11 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@94.13--94.92) [142971]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@94.13--94.92) [142972]"}
            i_11 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testZeroArray.vpr@94.13--94.92) [142973]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len_3)) && (0 <= i_1_1 && i_1_1 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_1) != Seq#Index(ar_1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(ar_1, i_1) } { Seq#Index(ar_1, i_1) }
        (0 <= i_1 && i_1 < len_3) && NoPerm < FullPerm ==> qpRange12(Seq#Index(ar_1, i_1)) && invRecv12(Seq#Index(ar_1, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < FullPerm) && qpRange12(o_9) ==> Seq#Index(ar_1, invRecv12(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(ar_1, i_1) } { Seq#Index(ar_1, i_1) }
        0 <= i_1 && i_1 < len_3 ==> Seq#Index(ar_1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(ar_1, invRecv12(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume Seq#Length(ar_1) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } 0 <= i && i < len ==> acc(ar[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_12 && i_12 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testZeroArray.vpr@96.12--96.91) [142974]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testZeroArray.vpr@96.12--96.91) [142975]"}
            i_12 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testZeroArray.vpr@96.12--96.91) [142976]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < len_3)) && (0 <= i_3_3 && i_3_3 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_3_2) != Seq#Index(ar_1, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(ar_1, i_3_2) } { Seq#Index(ar_1, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && NoPerm < FullPerm ==> qpRange13(Seq#Index(ar_1, i_3_2)) && invRecv13(Seq#Index(ar_1, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < FullPerm) && qpRange13(o_9) ==> Seq#Index(ar_1, invRecv13(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(ar_1, i_3_2) } { Seq#Index(ar_1, i_3_2) }
        0 <= i_3_2 && i_3_2 < len_3 ==> Seq#Index(ar_1, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(ar_1, invRecv13(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < len ==> ar[k].Ref__Integer_value == 0)
      if (*) {
        if (0 <= k_21 && k_21 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testZeroArray.vpr@97.12--97.86) [142977]"}
            k_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testZeroArray.vpr@97.12--97.86) [142978]"}
            k_21 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ar[k].Ref__Integer_value (testZeroArray.vpr@97.12--97.86) [142979]"}
            HasDirectPerm(PostMask, Seq#Index(ar_1, k_21), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall k_3: int ::
      { Seq#Index(ar_1, k_3) }
      0 <= k_3 && k_3 < len_3 ==> PostHeap[Seq#Index(ar_1, k_3), Ref__Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert |ar| == len -- testZeroArray.vpr@99.3--99.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |ar| == len might not hold. (testZeroArray.vpr@99.10--99.21) [142980]"}
      Seq#Length(ar_1) == len_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__loop_main_23(diz, current_thread_id, len, ar) -- testZeroArray.vpr@100.3--100.53
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_23 might not hold. Assertion diz != null might not hold. (testZeroArray.vpr@100.3--100.53) [142981]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_23 might not hold. Assertion current_thread_id >= 0 might not hold. (testZeroArray.vpr@100.3--100.53) [142982]"}
        current_thread_id >= 0;
      if (0 < len_3) {
        assert {:msg "  The precondition of method Ref__loop_main_23 might not hold. Assertion |ar| == len might not hold. (testZeroArray.vpr@100.3--100.53) [142983]"}
          Seq#Length(ar_1) == len_3;
      }
      if (*) {
        if (0 <= j_2_2 && (j_2_2 < len_3 && (0 <= k_6_2 && (k_6_2 < len_3 && j_2_2 != k_6_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_23 might not hold. Assertion ar[j] != ar[k] might not hold. (testZeroArray.vpr@100.3--100.53) [142984]"}
            Seq#Index(ar_1, j_2_2) != Seq#Index(ar_1, k_6_2);
        }
        assume false;
      }
      assume (forall j_3_1_1: int, k_7_1_1: int ::
        { Seq#Index(ar_1, j_3_1_1), Seq#Index(ar_1, k_7_1_1) }
        0 <= j_3_1_1 && (j_3_1_1 < len_3 && (0 <= k_7_1_1 && (k_7_1_1 < len_3 && j_3_1_1 != k_7_1_1))) ==> Seq#Index(ar_1, j_3_1_1) != Seq#Index(ar_1, k_7_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver ar[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_23 might not hold. Quantified resource ar[i].Ref__Integer_value might not be injective. (testZeroArray.vpr@100.3--100.53) [142985]"}
          (forall i_5_1: int, i_5_2: int ::
          { neverTriggered15(i_5_1), neverTriggered15(i_5_2) }
          (((i_5_1 != i_5_2 && (0 <= i_5_1 && i_5_1 < len_3)) && (0 <= i_5_2 && i_5_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_5_1) != Seq#Index(ar_1, i_5_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_23 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@100.3--100.53) [142986]"}
          (forall i_5_1: int ::
          { Seq#Index(ar_1, i_5_1) } { Seq#Index(ar_1, i_5_1) }
          0 <= i_5_1 && i_5_1 < len_3 ==> Mask[Seq#Index(ar_1, i_5_1), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver ar[i]
        assume (forall i_5_1: int ::
          { Seq#Index(ar_1, i_5_1) } { Seq#Index(ar_1, i_5_1) }
          (0 <= i_5_1 && i_5_1 < len_3) && NoPerm < FullPerm ==> qpRange15(Seq#Index(ar_1, i_5_1)) && invRecv15(Seq#Index(ar_1, i_5_1)) == i_5_1
        );
        assume (forall o_9: Ref ::
          { invRecv15(o_9) }
          (0 <= invRecv15(o_9) && invRecv15(o_9) < len_3) && (NoPerm < FullPerm && qpRange15(o_9)) ==> Seq#Index(ar_1, invRecv15(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv15(o_9) && invRecv15(o_9) < len_3) && (NoPerm < FullPerm && qpRange15(o_9)) ==> Seq#Index(ar_1, invRecv15(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv15(o_9) && invRecv15(o_9) < len_3) && (NoPerm < FullPerm && qpRange15(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
      if (0 < len_3) {
        assume Seq#Length(ar_1) == len_3;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource ar[i].Ref__Integer_value might not be injective. (testZeroArray.vpr@100.3--100.53) [142987]"}
        (forall i_6_2: int, i_6_3: int ::
        
        (((i_6_2 != i_6_3 && (0 <= i_6_2 && i_6_2 < len_3)) && (0 <= i_6_3 && i_6_3 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_6_2) != Seq#Index(ar_1, i_6_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_6_2: int ::
          { Seq#Index(ar_1, i_6_2) } { Seq#Index(ar_1, i_6_2) }
          (0 <= i_6_2 && i_6_2 < len_3) && NoPerm < FullPerm ==> qpRange16(Seq#Index(ar_1, i_6_2)) && invRecv16(Seq#Index(ar_1, i_6_2)) == i_6_2
        );
        assume (forall o_9: Ref ::
          { invRecv16(o_9) }
          ((0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && NoPerm < FullPerm) && qpRange16(o_9) ==> Seq#Index(ar_1, invRecv16(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_6_2: int ::
          { Seq#Index(ar_1, i_6_2) } { Seq#Index(ar_1, i_6_2) }
          0 <= i_6_2 && i_6_2 < len_3 ==> Seq#Index(ar_1, i_6_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && NoPerm < FullPerm) && qpRange16(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(ar_1, invRecv16(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && NoPerm < FullPerm) && qpRange16(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall i_7_1: int ::
        { Seq#Index(ar_1, i_7_1) }
        0 <= i_7_1 && i_7_1 < len_3 ==> Heap[Seq#Index(ar_1, i_7_1), Ref__Integer_value] == 0
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__zero_array might not hold. Assertion |ar| == len might not hold. (testZeroArray.vpr@95.11--95.22) [142988]"}
      Seq#Length(ar_1) == len_3;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testZeroArray.vpr@96.12--96.91) [142989]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered14(i_4_1), neverTriggered14(i_4_2) }
        (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < len_3)) && (0 <= i_4_2 && i_4_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_4_1) != Seq#Index(ar_1, i_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__zero_array might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testZeroArray.vpr@96.12--96.91) [142990]"}
        (forall i_4_1: int ::
        { Seq#Index(ar_1, i_4_1) } { Seq#Index(ar_1, i_4_1) }
        0 <= i_4_1 && i_4_1 < len_3 ==> Mask[Seq#Index(ar_1, i_4_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_4_1: int ::
        { Seq#Index(ar_1, i_4_1) } { Seq#Index(ar_1, i_4_1) }
        (0 <= i_4_1 && i_4_1 < len_3) && NoPerm < FullPerm ==> qpRange14(Seq#Index(ar_1, i_4_1)) && invRecv14(Seq#Index(ar_1, i_4_1)) == i_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        (0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && (NoPerm < FullPerm && qpRange14(o_9)) ==> Seq#Index(ar_1, invRecv14(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && (NoPerm < FullPerm && qpRange14(o_9)) ==> Seq#Index(ar_1, invRecv14(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && (NoPerm < FullPerm && qpRange14(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= k_4_2 && k_4_2 < len_3) {
        assert {:msg "  Postcondition of Ref__zero_array might not hold. Assertion ar[k].Ref__Integer_value == 0 might not hold. (testZeroArray.vpr@97.12--97.86) [142991]"}
          Heap[Seq#Index(ar_1, k_4_2), Ref__Integer_value] == 0;
      }
      assume false;
    }
    assume (forall k_5_1_1: int ::
      { Seq#Index(ar_1, k_5_1_1) }
      0 <= k_5_1_1 && k_5_1_1 < len_3 ==> Heap[Seq#Index(ar_1, k_5_1_1), Ref__Integer_value] == 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}