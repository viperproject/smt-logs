// 
// Translation of Viper program.
// 
// Date:         2024-12-26 19:48:29
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
axiom (forall o_39: Ref, f_45: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_39, f_45] }
  Heap[o_39, $allocated] ==> Heap[Heap[o_39, f_45], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_50, f_51) ==> Heap[o_50, f_51] == ExhaleHeap[o_50, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_50, $allocated] ==> ExhaleHeap[o_50, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_39: Ref, f_18: (Field A B), v: B ::
  { Heap[o_39, f_18:=v] }
  succHeap(Heap, Heap[o_39, f_18:=v])
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
function  neverTriggered9(j_3_1: int): bool;
function  neverTriggered10(i_1: int): bool;
function  neverTriggered11(j_7_1: int): bool;
function  neverTriggered12(i_3: int): bool;
function  neverTriggered13(j_10_2: int): bool;
function  neverTriggered14(i_6_1: int): bool;
function  neverTriggered15(j1_1: int): bool;
function  neverTriggered16(j1_3: int): bool;
function  neverTriggered17(j1_5: int): bool;
function  neverTriggered18(j1_7: int): bool;
function  neverTriggered19(j1_8: int): bool;
function  neverTriggered20(j1_9: int): bool;
function  neverTriggered21(j_14_1: int): bool;
function  neverTriggered22(i_8_2: int): bool;
function  neverTriggered23(j_17_1: int): bool;
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
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> 0 <= Ref__multidim_index_2'(Heap, N0, N1, i0, i1)
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) < N0 * N1
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) == i0 * N1 + i1
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) mod N1 == i1
);
axiom (forall Heap: HeapType, Mask: MaskType, N0: int, N1: int, i0: int, i1: int ::
  { state(Heap, Mask), Ref__multidim_index_2'(Heap, N0, N1, i0, i1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Ref__multidim_index_2#trigger(EmptyFrame, N0, N1, i0, i1)) ==> ((((0 <= i0 && i0 < N0) && 0 <= N0) && 0 <= i1) && i1 < N1) && 0 <= N1 ==> Ref__multidim_index_2'(Heap, N0, N1, i0, i1) mod N1 < N0
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
    assume AssumeFunctionsAbove == 1;
  
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
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (testTranspose.vpr@16.11--16.28) [43072]"}
        N1 != 0;
    assume Result mod N1 == i1;
    assume state(Heap, Mask);
    
    // -- Check definedness of result % N1 < N0
      assert {:msg "  Contract might not be well-formed. Divisor N1 might be zero. (testTranspose.vpr@17.11--17.27) [43073]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@20.1--25.2) [43074]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@20.1--25.2) [43075]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (testTranspose.vpr@24.21--24.44) [43076]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (testTranspose.vpr@24.21--24.44) [43077]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (testTranspose.vpr@24.21--24.44) [43078]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar)) && (forall j_9: int, k: int ::
    { Seq#Index(ar, j_9), Seq#Index(ar, k) }
    0 <= j_9 && (j_9 < hi && (0 <= k && (k < hi && j_9 != k))) ==> Seq#Index(ar, j_9) != Seq#Index(ar, k)
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
  var j_5: int;
  var k_1: int;
  var k_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9: int;
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
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_5 && (j_5 < hi && (0 <= k_1 && (k_1 < hi && j_5 != k_1)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testTranspose.vpr@30.12--30.102) [43079]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testTranspose.vpr@30.12--30.102) [43080]"}
            j_5 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@30.12--30.102) [43081]"}
            k_1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@30.12--30.102) [43082]"}
            k_1 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall j_3_1: int, k_6: int ::
      { Seq#Index(ar, j_3_1), Seq#Index(ar, k_6) }
      0 <= j_3_1 && (j_3_1 < hi && (0 <= k_6 && (k_6 < hi && j_3_1 != k_6))) ==> Seq#Index(ar, j_3_1) != Seq#Index(ar, k_6)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (lo <= k_2 && k_2 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@31.13--31.95) [43083]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@31.13--31.95) [43084]"}
            k_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@31.13--31.95) [43085]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (lo <= k_8 && k_8 < hi)) && (lo <= k_8_1 && k_8_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_8) != Seq#Index(ar, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        lo <= k_8 && k_8 < hi ==> qpRange1(Seq#Index(ar, k_8)) && invRecv1(Seq#Index(ar, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (lo <= invRecv1(o_4) && invRecv1(o_4) < hi) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        lo <= k_8 && k_8 < hi ==> Seq#Index(ar, k_8) != null
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@27.1--34.2) [43086]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@27.1--34.2) [43087]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testTranspose.vpr@27.1--34.2) [43088]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (testTranspose.vpr@33.40--33.68) [43089]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (testTranspose.vpr@33.40--33.68) [43090]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (testTranspose.vpr@33.40--33.68) [43091]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (testTranspose.vpr@33.40--33.68) [43092]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9 && (k_9 < hi && j_4_1 != k_9)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[j] != ar[k] might not hold. (testTranspose.vpr@33.40--33.68) [43093]"}
                Seq#Index(ar, j_4_1) != Seq#Index(ar, k_9);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar, j_5_1_1), Seq#Index(ar, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < hi && (0 <= k_10_1 && (k_10_1 < hi && j_5_1_1 != k_10_1))) ==> Seq#Index(ar, j_5_1_1) != Seq#Index(ar, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@33.40--33.68) [43094]"}
            (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (testTranspose.vpr@33.40--33.68) [43095]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (lo <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@33.40--33.68) [43096]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && (lo <= k_11 && k_11 < hi)) && (lo <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@33.40--33.68) [43097]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              lo <= k_11 && k_11 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (lo <= k_11 && k_11 < hi) && NoPerm < wildcard ==> qpRange2(Seq#Index(ar, k_11)) && invRecv2(Seq#Index(ar, k_11)) == k_11
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
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall j_9: int, k: int ::
    { Seq#Index(ar, j_9), Seq#Index(ar, k) }
    0 <= j_9 && (j_9 < vmax && (0 <= k && (k < vmax && j_9 != k))) ==> Seq#Index(ar, j_9) != Seq#Index(ar, k)
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
  var j_6: int;
  var k_4: int;
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9: int;
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
    assume i <= vmax;
    assume state(Heap, Mask);
    assume vmax <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < max && (0 <= k && (k < max && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_6 && (j_6 < vmax && (0 <= k_4 && (k_4 < vmax && j_6 != k_4)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testTranspose.vpr@40.12--40.104) [43098]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testTranspose.vpr@40.12--40.104) [43099]"}
            j_6 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@40.12--40.104) [43100]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@40.12--40.104) [43101]"}
            k_4 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall j_3_1: int, k_6: int ::
      { Seq#Index(ar, j_3_1), Seq#Index(ar, k_6) }
      0 <= j_3_1 && (j_3_1 < vmax && (0 <= k_6 && (k_6 < vmax && j_3_1 != k_6))) ==> Seq#Index(ar, j_3_1) != Seq#Index(ar, k_6)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_7) {
          if (k_7 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testTranspose.vpr@41.13--41.136) [43102]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testTranspose.vpr@41.13--41.136) [43103]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@41.13--41.136) [43104]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@41.13--41.136) [43105]"}
            k_7 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@41.13--41.136) [43106]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)))) && (vmin <= k_8_1 && (k_8_1 < vmax && (lo <= k_8_1 mod step && k_8_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_8) != Seq#Index(ar, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)) ==> qpRange3(Seq#Index(ar, k_8)) && invRecv3(Seq#Index(ar, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4) ==> Seq#Index(ar, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)) ==> Seq#Index(ar, k_8) != null
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testTranspose.vpr@36.1--44.2) [43107]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testTranspose.vpr@36.1--44.2) [43108]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@36.1--44.2) [43109]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@36.1--44.2) [43110]"}
            i < Seq#Length(ar);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testTranspose.vpr@36.1--44.2) [43111]"}
            HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (testTranspose.vpr@43.85--43.130) [43112]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (testTranspose.vpr@43.85--43.130) [43113]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (testTranspose.vpr@43.85--43.130) [43114]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (testTranspose.vpr@43.85--43.130) [43115]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (testTranspose.vpr@43.85--43.130) [43116]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (testTranspose.vpr@43.85--43.130) [43117]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (testTranspose.vpr@43.85--43.130) [43118]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (testTranspose.vpr@43.85--43.130) [43119]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax && (0 <= k_9 && (k_9 < vmax && j_4_1 != k_9)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[j] != ar[k] might not hold. (testTranspose.vpr@43.85--43.130) [43120]"}
                Seq#Index(ar, j_4_1) != Seq#Index(ar, k_9);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar, j_5_1_1), Seq#Index(ar, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < vmax && (0 <= k_10_1 && (k_10_1 < vmax && j_5_1_1 != k_10_1))) ==> Seq#Index(ar, j_5_1_1) != Seq#Index(ar, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@43.85--43.130) [43121]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (testTranspose.vpr@43.85--43.130) [43122]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@43.85--43.130) [43123]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@43.85--43.130) [43124]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && NoPerm < wildcard ==> qpRange4(Seq#Index(ar, k_11)) && invRecv4(Seq#Index(ar, k_11)) == k_11
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall j_9: int, k: int ::
    { Seq#Index(ar, j_9), Seq#Index(ar, k) }
    0 <= j_9 && (j_9 < vmax && (0 <= k && (k < vmax && j_9 != k))) ==> Seq#Index(ar, j_9) != Seq#Index(ar, k)
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
  var j_7: int;
  var k_10: int;
  var k_12: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9: int;
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
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < max && (0 <= k && (k < max && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_7 && (j_7 < vmax && (0 <= k_10 && (k_10 < vmax && j_7 != k_10)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testTranspose.vpr@50.12--50.104) [43125]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testTranspose.vpr@50.12--50.104) [43126]"}
            j_7 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@50.12--50.104) [43127]"}
            k_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@50.12--50.104) [43128]"}
            k_10 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall j_3_1: int, k_6: int ::
      { Seq#Index(ar, j_3_1), Seq#Index(ar, k_6) }
      0 <= j_3_1 && (j_3_1 < vmax && (0 <= k_6 && (k_6 < vmax && j_3_1 != k_6))) ==> Seq#Index(ar, j_3_1) != Seq#Index(ar, k_6)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_12) {
          if (k_12 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testTranspose.vpr@51.13--51.136) [43129]"}
              step != 0;
            if (lo <= k_12 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testTranspose.vpr@51.13--51.136) [43130]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_12 && (k_12 < vmax && (lo <= k_12 mod step && k_12 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@51.13--51.136) [43131]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@51.13--51.136) [43132]"}
            k_12 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@51.13--51.136) [43133]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)))) && (vmin <= k_8_1 && (k_8_1 < vmax && (lo <= k_8_1 mod step && k_8_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_8) != Seq#Index(ar, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)) ==> qpRange5(Seq#Index(ar, k_8)) && invRecv5(Seq#Index(ar, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        vmin <= k_8 && (k_8 < vmax && (lo <= k_8 mod step && k_8 mod step < hi)) ==> Seq#Index(ar, k_8) != null
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testTranspose.vpr@46.1--54.2) [43134]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testTranspose.vpr@46.1--54.2) [43135]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@46.1--54.2) [43136]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@46.1--54.2) [43137]"}
              i < Seq#Length(ar);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testTranspose.vpr@46.1--54.2) [43138]"}
              HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (testTranspose.vpr@53.97--53.147) [43139]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (testTranspose.vpr@53.97--53.147) [43140]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (testTranspose.vpr@53.97--53.147) [43141]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testTranspose.vpr@53.97--53.147) [43142]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (testTranspose.vpr@53.97--53.147) [43143]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (testTranspose.vpr@53.97--53.147) [43144]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (testTranspose.vpr@53.97--53.147) [43145]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (testTranspose.vpr@53.97--53.147) [43146]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax && (0 <= k_9 && (k_9 < vmax && j_4_1 != k_9)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[j] != ar[k] might not hold. (testTranspose.vpr@53.97--53.147) [43147]"}
                Seq#Index(ar, j_4_1) != Seq#Index(ar, k_9);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar, j_5_1_1), Seq#Index(ar, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < vmax && (0 <= k_10_1 && (k_10_1 < vmax && j_5_1_1 != k_10_1))) ==> Seq#Index(ar, j_5_1_1) != Seq#Index(ar, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@53.97--53.147) [43148]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testTranspose.vpr@53.97--53.147) [43149]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@53.97--53.147) [43150]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@53.97--53.147) [43151]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && NoPerm < wildcard ==> qpRange6(Seq#Index(ar, k_11)) && invRecv6(Seq#Index(ar, k_11)) == k_11
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@56.1--61.2) [43152]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@56.1--61.2) [43153]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (testTranspose.vpr@60.36--60.64) [43154]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (testTranspose.vpr@60.36--60.64) [43155]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (testTranspose.vpr@60.36--60.64) [43156]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar)) && (forall j_9: int, k: int ::
    { Seq#Index(ar, j_9), Seq#Index(ar, k) }
    0 <= j_9 && (j_9 < hi && (0 <= k && (k < hi && j_9 != k))) ==> Seq#Index(ar, j_9) != Seq#Index(ar, k)
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
  var j_10: int;
  var k_15: int;
  var k_16: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_4_1: int;
  var k_9: int;
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
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_10 && (j_10 < hi && (0 <= k_15 && (k_15 < hi && j_10 != k_15)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testTranspose.vpr@66.12--66.102) [43157]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testTranspose.vpr@66.12--66.102) [43158]"}
            j_10 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@66.12--66.102) [43159]"}
            k_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@66.12--66.102) [43160]"}
            k_15 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall j_3_1: int, k_6: int ::
      { Seq#Index(ar, j_3_1), Seq#Index(ar, k_6) }
      0 <= j_3_1 && (j_3_1 < hi && (0 <= k_6 && (k_6 < hi && j_3_1 != k_6))) ==> Seq#Index(ar, j_3_1) != Seq#Index(ar, k_6)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (0 <= k_16 && k_16 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testTranspose.vpr@67.13--67.94) [43161]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testTranspose.vpr@67.13--67.94) [43162]"}
            k_16 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@67.13--67.94) [43163]"}
      (forall k_8: int, k_8_1: int ::
      
      (((k_8 != k_8_1 && (0 <= k_8 && k_8 < hi)) && (0 <= k_8_1 && k_8_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_8) != Seq#Index(ar, k_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        0 <= k_8 && k_8 < hi ==> qpRange7(Seq#Index(ar, k_8)) && invRecv7(Seq#Index(ar, k_8)) == k_8
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (0 <= invRecv7(o_4) && invRecv7(o_4) < hi) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_8: int ::
        { Seq#Index(ar, k_8) } { Seq#Index(ar, k_8) }
        0 <= k_8 && k_8 < hi ==> Seq#Index(ar, k_8) != null
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testTranspose.vpr@63.1--70.2) [43164]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testTranspose.vpr@63.1--70.2) [43165]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testTranspose.vpr@63.1--70.2) [43166]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (testTranspose.vpr@69.55--69.84) [43167]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (testTranspose.vpr@69.55--69.84) [43168]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (testTranspose.vpr@69.55--69.84) [43169]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9 && (k_9 < hi && j_4_1 != k_9)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[j] != ar[k] might not hold. (testTranspose.vpr@69.55--69.84) [43170]"}
                Seq#Index(ar, j_4_1) != Seq#Index(ar, k_9);
            }
            assume false;
          }
          assume (forall j_5_1_1: int, k_10_1: int ::
            { Seq#Index(ar, j_5_1_1), Seq#Index(ar, k_10_1) }
            0 <= j_5_1_1 && (j_5_1_1 < hi && (0 <= k_10_1 && (k_10_1 < hi && j_5_1_1 != k_10_1))) ==> Seq#Index(ar, j_5_1_1) != Seq#Index(ar, k_10_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@69.55--69.84) [43171]"}
            (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testTranspose.vpr@69.55--69.84) [43172]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (0 <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testTranspose.vpr@69.55--69.84) [43173]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && (0 <= k_11 && k_11 < hi)) && (0 <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testTranspose.vpr@69.55--69.84) [43174]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              0 <= k_11 && k_11 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (0 <= k_11 && k_11 < hi) && NoPerm < wildcard ==> qpRange8(Seq#Index(ar, k_11)) && invRecv8(Seq#Index(ar, k_11)) == k_11
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
// Translation of method Ref__loop_main_68
// ==================================================

procedure Ref__loop_main_68(diz: Ref, current_thread_id: int, N: int, M: int, inp: (Seq Ref), out: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_11: int;
  var k_17: int;
  var j_25: int;
  var QPMask: MaskType;
  var j_18: int;
  var k_19: int;
  var i_18: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_12: int;
  var i_20: int;
  var i_22: int;
  var j_14: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_7_1: int;
  var j_11_2: int;
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
    assume M * N <= Seq#Length(out);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { out[j], out[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> out[j] != out[k])
      if (*) {
        if (0 <= j_11 && (j_11 < M * N && (0 <= k_17 && (k_17 < M * N && j_11 != k_17)))) {
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might be negative. (testTranspose.vpr@76.12--76.106) [43175]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might exceed sequence length. (testTranspose.vpr@76.12--76.106) [43176]"}
            j_11 < Seq#Length(out);
          assert {:msg "  Contract might not be well-formed. Index out[k] into out might be negative. (testTranspose.vpr@76.12--76.106) [43177]"}
            k_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[k] into out might exceed sequence length. (testTranspose.vpr@76.12--76.106) [43178]"}
            k_17 < Seq#Length(out);
        }
        assume false;
      }
    assume (forall j_1: int, k_1_1: int ::
      { Seq#Index(out, j_1), Seq#Index(out, k_1_1) }
      0 <= j_1 && (j_1 < M * N && (0 <= k_1_1 && (k_1_1 < M * N && j_1 != k_1_1))) ==> Seq#Index(out, j_1) != Seq#Index(out, k_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { out[j] } 0 <= j && j < M * N ==> acc(out[j].Ref__Integer_value, write))
      if (*) {
        if (0 <= j_25 && j_25 < M * N) {
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might be negative. (testTranspose.vpr@77.13--77.95) [43179]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might exceed sequence length. (testTranspose.vpr@77.13--77.95) [43180]"}
            j_25 < Seq#Length(out);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@77.13--77.95) [43181]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < M * N)) && (0 <= j_3_2 && j_3_2 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_3_1) != Seq#Index(out, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(out, j_3_1) } { Seq#Index(out, j_3_1) }
        (0 <= j_3_1 && j_3_1 < M * N) && NoPerm < FullPerm ==> qpRange9(Seq#Index(out, j_3_1)) && invRecv9(Seq#Index(out, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < M * N) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(out, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(out, j_3_1) } { Seq#Index(out, j_3_1) }
        0 <= j_3_1 && j_3_1 < M * N ==> Seq#Index(out, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < M * N) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv9(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < M * N) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N * M <= Seq#Length(inp);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { inp[j], inp[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> inp[j] != inp[k])
      if (*) {
        if (0 <= j_18 && (j_18 < M * N && (0 <= k_19 && (k_19 < M * N && j_18 != k_19)))) {
          assert {:msg "  Contract might not be well-formed. Index inp[j] into inp might be negative. (testTranspose.vpr@79.12--79.106) [43182]"}
            j_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[j] into inp might exceed sequence length. (testTranspose.vpr@79.12--79.106) [43183]"}
            j_18 < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. Index inp[k] into inp might be negative. (testTranspose.vpr@79.12--79.106) [43184]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[k] into inp might exceed sequence length. (testTranspose.vpr@79.12--79.106) [43185]"}
            k_19 < Seq#Length(inp);
        }
        assume false;
      }
    assume (forall j_5_1: int, k_3: int ::
      { Seq#Index(inp, j_5_1), Seq#Index(inp, k_3) }
      0 <= j_5_1 && (j_5_1 < M * N && (0 <= k_3 && (k_3 < M * N && j_5_1 != k_3))) ==> Seq#Index(inp, j_5_1) != Seq#Index(inp, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { inp[i] } 0 <= i && i < N * M ==> acc(inp[i].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= i_18 && i_18 < N * M) {
          assert {:msg "  Contract might not be well-formed. Index inp[i] into inp might be negative. (testTranspose.vpr@80.13--80.95) [43186]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[i] into inp might exceed sequence length. (testTranspose.vpr@80.13--80.95) [43187]"}
            i_18 < Seq#Length(inp);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@80.13--80.95) [43188]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < N * M)) && (0 <= i_1_1 && i_1_1 < N * M)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_1) != Seq#Index(inp, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(inp, i_1) } { Seq#Index(inp, i_1) }
        (0 <= i_1 && i_1 < N * M) && NoPerm < 1 / 4 ==> qpRange10(Seq#Index(inp, i_1)) && invRecv10(Seq#Index(inp, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((0 <= invRecv10(o_4) && invRecv10(o_4) < N * M) && NoPerm < 1 / 4) && qpRange10(o_4) ==> Seq#Index(inp, invRecv10(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testTranspose.vpr@80.13--80.95) [43189]"}
      (forall i_1: int ::
      { Seq#Index(inp, i_1) } { Seq#Index(inp, i_1) }
      0 <= i_1 && i_1 < N * M ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(inp, i_1) } { Seq#Index(inp, i_1) }
        (0 <= i_1 && i_1 < N * M) && 1 / 4 > NoPerm ==> Seq#Index(inp, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv10(o_4) && invRecv10(o_4) < N * M) && NoPerm < 1 / 4) && qpRange10(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(inp, invRecv10(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv10(o_4) && invRecv10(o_4) < N * M) && NoPerm < 1 / 4) && qpRange10(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
    
    // -- Check definedness of (forall j: Int :: { out[j] } 0 <= j && j < M * N ==> acc(out[j].Ref__Integer_value, write))
      if (*) {
        if (0 <= j_12 && j_12 < M * N) {
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might be negative. (testTranspose.vpr@81.12--81.94) [43190]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might exceed sequence length. (testTranspose.vpr@81.12--81.94) [43191]"}
            j_12 < Seq#Length(out);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@81.12--81.94) [43192]"}
      (forall j_7_1: int, j_7_2: int ::
      
      (((j_7_1 != j_7_2 && (0 <= j_7_1 && j_7_1 < M * N)) && (0 <= j_7_2 && j_7_2 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_7_1) != Seq#Index(out, j_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_7_1: int ::
        { Seq#Index(out, j_7_1) } { Seq#Index(out, j_7_1) }
        (0 <= j_7_1 && j_7_1 < M * N) && NoPerm < FullPerm ==> qpRange11(Seq#Index(out, j_7_1)) && invRecv11(Seq#Index(out, j_7_1)) == j_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < M * N) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(out, invRecv11(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_7_1: int ::
        { Seq#Index(out, j_7_1) } { Seq#Index(out, j_7_1) }
        0 <= j_7_1 && j_7_1 < M * N ==> Seq#Index(out, j_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv11(o_4) && invRecv11(o_4) < M * N) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv11(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < M * N) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { inp[i] } 0 <= i && i < N * M ==> acc(inp[i].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= i_20 && i_20 < N * M) {
          assert {:msg "  Contract might not be well-formed. Index inp[i] into inp might be negative. (testTranspose.vpr@82.12--82.94) [43193]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[i] into inp might exceed sequence length. (testTranspose.vpr@82.12--82.94) [43194]"}
            i_20 < Seq#Length(inp);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@82.12--82.94) [43195]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < N * M)) && (0 <= i_3_1 && i_3_1 < N * M)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_3) != Seq#Index(inp, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(inp, i_3) } { Seq#Index(inp, i_3) }
        (0 <= i_3 && i_3 < N * M) && NoPerm < 1 / 4 ==> qpRange12(Seq#Index(inp, i_3)) && invRecv12(Seq#Index(inp, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((0 <= invRecv12(o_4) && invRecv12(o_4) < N * M) && NoPerm < 1 / 4) && qpRange12(o_4) ==> Seq#Index(inp, invRecv12(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testTranspose.vpr@82.12--82.94) [43196]"}
      (forall i_3: int ::
      { Seq#Index(inp, i_3) } { Seq#Index(inp, i_3) }
      0 <= i_3 && i_3 < N * M ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(inp, i_3) } { Seq#Index(inp, i_3) }
        (0 <= i_3 && i_3 < N * M) && 1 / 4 > NoPerm ==> Seq#Index(inp, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv12(o_4) && invRecv12(o_4) < N * M) && NoPerm < 1 / 4) && qpRange12(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(inp, invRecv12(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv12(o_4) && invRecv12(o_4) < N * M) && NoPerm < 1 / 4) && qpRange12(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { out[Ref__multidim_index_2(M, N, i, j)] } { inp[Ref__multidim_index_2(N, M, j, i)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value)
      if (*) {
        if (0 <= i_22 && (i_22 < M && (0 <= j_14 && j_14 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@83.89--83.122) [43197]"}
              0 <= i_22;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@83.89--83.122) [43198]"}
              i_22 < M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@83.89--83.122) [43199]"}
              0 <= M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@83.89--83.122) [43200]"}
              0 <= j_14;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@83.89--83.122) [43201]"}
              j_14 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@83.89--83.122) [43202]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@83.12--83.204) [43203]"}
            Ref__multidim_index_2(PostHeap, M, N, i_22, j_14) >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@83.12--83.204) [43204]"}
            Ref__multidim_index_2(PostHeap, M, N, i_22, j_14) < Seq#Length(out);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testTranspose.vpr@83.12--83.204) [43205]"}
            HasDirectPerm(PostMask, Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i_22, j_14)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@83.150--83.183) [43206]"}
              0 <= j_14;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@83.150--83.183) [43207]"}
              j_14 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@83.150--83.183) [43208]"}
              0 <= N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@83.150--83.183) [43209]"}
              0 <= i_22;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@83.150--83.183) [43210]"}
              i_22 < M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@83.150--83.183) [43211]"}
              0 <= M;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@83.12--83.204) [43212]"}
            Ref__multidim_index_2(PostHeap, N, M, j_14, i_22) >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@83.12--83.204) [43213]"}
            Ref__multidim_index_2(PostHeap, N, M, j_14, i_22) < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@83.12--83.204) [43214]"}
            HasDirectPerm(PostMask, Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_14, i_22)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_5: int, j_9_1: int ::
      { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M, N, i_5, j_9_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M, j_9_1, i_5)) }
      0 <= i_5 && (i_5 < M && (0 <= j_9_1 && j_9_1 < N)) ==> PostHeap[Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i_5, j_9_1)), Ref__Integer_value] == PostHeap[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_9_1, i_5)), Ref__Integer_value]
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver out[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@81.12--81.94) [43215]"}
        (forall j_10_2: int, j_10_3: int ::
        { neverTriggered13(j_10_2), neverTriggered13(j_10_3) }
        (((j_10_2 != j_10_3 && (0 <= j_10_2 && j_10_2 < M * N)) && (0 <= j_10_3 && j_10_3 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_10_2) != Seq#Index(out, j_10_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_68 might not hold. There might be insufficient permission to access out[j].Ref__Integer_value (testTranspose.vpr@81.12--81.94) [43216]"}
        (forall j_10_2: int ::
        { Seq#Index(out, j_10_2) } { Seq#Index(out, j_10_2) }
        0 <= j_10_2 && j_10_2 < M * N ==> Mask[Seq#Index(out, j_10_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver out[j]
      assume (forall j_10_2: int ::
        { Seq#Index(out, j_10_2) } { Seq#Index(out, j_10_2) }
        (0 <= j_10_2 && j_10_2 < M * N) && NoPerm < FullPerm ==> qpRange13(Seq#Index(out, j_10_2)) && invRecv13(Seq#Index(out, j_10_2)) == j_10_2
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (0 <= invRecv13(o_4) && invRecv13(o_4) < M * N) && (NoPerm < FullPerm && qpRange13(o_4)) ==> Seq#Index(out, invRecv13(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < M * N) && (NoPerm < FullPerm && qpRange13(o_4)) ==> Seq#Index(out, invRecv13(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv13(o_4) && invRecv13(o_4) < M * N) && (NoPerm < FullPerm && qpRange13(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_68 might not hold. Fraction 1 / 4 might be negative. (testTranspose.vpr@82.12--82.94) [43217]"}
        (forall i_6_1: int ::
        { Seq#Index(inp, i_6_1) } { Seq#Index(inp, i_6_1) }
        (0 <= i_6_1 && i_6_1 < N * M) && dummyFunction(Heap[Seq#Index(inp, i_6_1), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver inp[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@82.12--82.94) [43218]"}
        (forall i_6_1: int, i_6_2: int ::
        { neverTriggered14(i_6_1), neverTriggered14(i_6_2) }
        (((i_6_1 != i_6_2 && (0 <= i_6_1 && i_6_1 < N * M)) && (0 <= i_6_2 && i_6_2 < N * M)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_6_1) != Seq#Index(inp, i_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_68 might not hold. There might be insufficient permission to access inp[i].Ref__Integer_value (testTranspose.vpr@82.12--82.94) [43219]"}
        (forall i_6_1: int ::
        { Seq#Index(inp, i_6_1) } { Seq#Index(inp, i_6_1) }
        0 <= i_6_1 && i_6_1 < N * M ==> Mask[Seq#Index(inp, i_6_1), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver inp[i]
      assume (forall i_6_1: int ::
        { Seq#Index(inp, i_6_1) } { Seq#Index(inp, i_6_1) }
        (0 <= i_6_1 && i_6_1 < N * M) && NoPerm < 1 / 4 ==> qpRange14(Seq#Index(inp, i_6_1)) && invRecv14(Seq#Index(inp, i_6_1)) == i_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (0 <= invRecv14(o_4) && invRecv14(o_4) < N * M) && (NoPerm < 1 / 4 && qpRange14(o_4)) ==> Seq#Index(inp, invRecv14(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < N * M) && (NoPerm < 1 / 4 && qpRange14(o_4)) ==> Seq#Index(inp, invRecv14(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv14(o_4) && invRecv14(o_4) < N * M) && (NoPerm < 1 / 4 && qpRange14(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_7_1 && (i_7_1 < M && (0 <= j_11_2 && j_11_2 < N))) {
        assert {:msg "  Postcondition of Ref__loop_main_68 might not hold. Assertion out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value might not hold. (testTranspose.vpr@83.12--83.204) [43220]"}
          Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i_7_1, j_11_2)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_11_2, i_7_1)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_8_1: int, j_12_1: int ::
      { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M, N, i_8_1, j_12_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M, j_12_1, i_8_1)) }
      0 <= i_8_1 && (i_8_1 < M && (0 <= j_12_1 && j_12_1 < N)) ==> Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i_8_1, j_12_1)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_12_1, i_8_1)), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_68
// ==================================================

procedure Ref__loop_body_68(diz: Ref, current_thread_id: int, j_9: int, out: (Seq Ref), i: int, inp: (Seq Ref), N: int, M: int) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
    assume i < M;
    assume 0 <= j_9;
    assume j_9 < N;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Ref__multidim_index_2(M, N, i, j) < |out|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@92.12--92.45) [43221]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@92.12--92.45) [43222]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@92.12--92.45) [43223]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@92.12--92.45) [43224]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@92.12--92.45) [43225]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@92.12--92.45) [43226]"}
          0 <= N;
        // Stop execution
        assume false;
      }
    assume Ref__multidim_index_2(Heap, M, N, i, j_9) < Seq#Length(out);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@93.20--93.53) [43227]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@93.20--93.53) [43228]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@93.20--93.53) [43229]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@93.20--93.53) [43230]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@93.20--93.53) [43231]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@93.20--93.53) [43232]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@93.12--93.81) [43233]"}
        Ref__multidim_index_2(Heap, M, N, i, j_9) >= 0;
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@93.12--93.81) [43234]"}
        Ref__multidim_index_2(Heap, M, N, i, j_9) < Seq#Length(out);
    perm := FullPerm;
    assume Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i, j_9)) != null;
    Mask := Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value:=Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Ref__multidim_index_2(N, M, j, i) < |inp|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@94.12--94.45) [43235]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@94.12--94.45) [43236]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@94.12--94.45) [43237]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@94.12--94.45) [43238]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@94.12--94.45) [43239]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@94.12--94.45) [43240]"}
          0 <= M;
        // Stop execution
        assume false;
      }
    assume Ref__multidim_index_2(Heap, N, M, j_9, i) < Seq#Length(inp);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value, 1 / 4)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@95.20--95.53) [43241]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@95.20--95.53) [43242]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@95.20--95.53) [43243]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@95.20--95.53) [43244]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@95.20--95.53) [43245]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@95.20--95.53) [43246]"}
          0 <= M;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@95.12--95.81) [43247]"}
        Ref__multidim_index_2(Heap, N, M, j_9, i) >= 0;
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@95.12--95.81) [43248]"}
        Ref__multidim_index_2(Heap, N, M, j_9, i) < Seq#Length(inp);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testTranspose.vpr@95.12--95.81) [43249]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_9, i)) != null;
    Mask := Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_9, i)), Ref__Integer_value:=Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_9, i)), Ref__Integer_value] + perm];
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
    
    // -- Check definedness of acc(out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@97.19--97.52) [43250]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@97.19--97.52) [43251]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@97.19--97.52) [43252]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@97.19--97.52) [43253]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@97.19--97.52) [43254]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@97.19--97.52) [43255]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@97.11--97.80) [43256]"}
        Ref__multidim_index_2(PostHeap, M, N, i, j_9) >= 0;
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@97.11--97.80) [43257]"}
        Ref__multidim_index_2(PostHeap, M, N, i, j_9) < Seq#Length(out);
    perm := FullPerm;
    assume Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i, j_9)) != null;
    PostMask := PostMask[Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i, j_9)), Ref__Integer_value:=PostMask[Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i, j_9)), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value, 1 / 4)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@98.19--98.52) [43258]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@98.19--98.52) [43259]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@98.19--98.52) [43260]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@98.19--98.52) [43261]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@98.19--98.52) [43262]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@98.19--98.52) [43263]"}
          0 <= M;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@98.11--98.80) [43264]"}
        Ref__multidim_index_2(PostHeap, N, M, j_9, i) >= 0;
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@98.11--98.80) [43265]"}
        Ref__multidim_index_2(PostHeap, N, M, j_9, i) < Seq#Length(inp);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (testTranspose.vpr@98.11--98.80) [43266]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_9, i)) != null;
    PostMask := PostMask[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_9, i)), Ref__Integer_value:=PostMask[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_9, i)), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@99.15--99.48) [43267]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@99.15--99.48) [43268]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@99.15--99.48) [43269]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@99.15--99.48) [43270]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@99.15--99.48) [43271]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@99.15--99.48) [43272]"}
          0 <= N;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@99.11--99.129) [43273]"}
        Ref__multidim_index_2(PostHeap, M, N, i, j_9) >= 0;
      assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@99.11--99.129) [43274]"}
        Ref__multidim_index_2(PostHeap, M, N, i, j_9) < Seq#Length(out);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testTranspose.vpr@99.11--99.129) [43275]"}
        HasDirectPerm(PostMask, Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i, j_9)), Ref__Integer_value);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@99.76--99.109) [43276]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@99.76--99.109) [43277]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@99.76--99.109) [43278]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@99.76--99.109) [43279]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@99.76--99.109) [43280]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@99.76--99.109) [43281]"}
          0 <= M;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@99.11--99.129) [43282]"}
        Ref__multidim_index_2(PostHeap, N, M, j_9, i) >= 0;
      assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@99.11--99.129) [43283]"}
        Ref__multidim_index_2(PostHeap, N, M, j_9, i) < Seq#Length(inp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@99.11--99.129) [43284]"}
        HasDirectPerm(PostMask, Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_9, i)), Ref__Integer_value);
    assume PostHeap[Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i, j_9)), Ref__Integer_value] == PostHeap[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_9, i)), Ref__Integer_value];
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@108.18--108.51) [43285]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@108.18--108.51) [43286]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@108.18--108.51) [43287]"}
          0 <= M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@108.18--108.51) [43288]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@108.18--108.51) [43289]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@108.18--108.51) [43290]"}
          0 <= N;
        // Stop execution
        assume false;
      }
    __flatten_4 := Ref__multidim_index_2(Heap, M, N, i, j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := __flatten_4 -- testTranspose.vpr@109.3--109.29
    __flatten_1 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := Ref__multidim_index_2(N, M, j, i) -- testTranspose.vpr@110.3--110.51
    
    // -- Check definedness of Ref__multidim_index_2(N, M, j, i)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@110.18--110.51) [43291]"}
          0 <= j_9;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@110.18--110.51) [43292]"}
          j_9 < N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@110.18--110.51) [43293]"}
          0 <= N;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@110.18--110.51) [43294]"}
          0 <= i;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@110.18--110.51) [43295]"}
          i < M;
        assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@110.18--110.51) [43296]"}
          0 <= M;
        // Stop execution
        assume false;
      }
    __flatten_5 := Ref__multidim_index_2(Heap, N, M, j_9, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := __flatten_5 -- testTranspose.vpr@111.3--111.29
    __flatten_2 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := out[__flatten_1] -- testTranspose.vpr@112.3--112.34
    
    // -- Check definedness of out[__flatten_1]
      assert {:msg "  Assignment might fail. Index out[__flatten_1] into out might be negative. (testTranspose.vpr@112.3--112.34) [43297]"}
        __flatten_1 >= 0;
      assert {:msg "  Assignment might fail. Index out[__flatten_1] into out might exceed sequence length. (testTranspose.vpr@112.3--112.34) [43298]"}
        __flatten_1 < Seq#Length(out);
    __flatten_6 := Seq#Index(out, __flatten_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := inp[__flatten_2] -- testTranspose.vpr@113.3--113.34
    
    // -- Check definedness of inp[__flatten_2]
      assert {:msg "  Assignment might fail. Index inp[__flatten_2] into inp might be negative. (testTranspose.vpr@113.3--113.34) [43299]"}
        __flatten_2 >= 0;
      assert {:msg "  Assignment might fail. Index inp[__flatten_2] into inp might exceed sequence length. (testTranspose.vpr@113.3--113.34) [43300]"}
        __flatten_2 < Seq#Length(inp);
    __flatten_8 := Seq#Index(inp, __flatten_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := __flatten_8.Ref__Integer_value -- testTranspose.vpr@114.3--114.48
    
    // -- Check definedness of __flatten_8.Ref__Integer_value
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (testTranspose.vpr@114.3--114.48) [43301]"}
        HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
    __flatten_7 := Heap[__flatten_8, Ref__Integer_value];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6.Ref__Integer_value := __flatten_7 -- testTranspose.vpr@115.3--115.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (testTranspose.vpr@115.3--115.48) [43302]"}
      FullPerm == Mask[__flatten_6, Ref__Integer_value];
    Heap := Heap[__flatten_6, Ref__Integer_value:=__flatten_7];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@96.11--96.55) [43303]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion i < M might not hold. (testTranspose.vpr@96.11--96.55) [43304]"}
      i < M;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@96.11--96.55) [43305]"}
      0 <= j_9;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion j < N might not hold. (testTranspose.vpr@96.11--96.55) [43306]"}
      j_9 < N;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. There might be insufficient permission to access out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testTranspose.vpr@97.11--97.80) [43307]"}
        perm <= Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value:=Mask[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value] - perm];
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Fraction 1 / 4 might be negative. (testTranspose.vpr@98.11--98.80) [43308]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@98.11--98.80) [43309]"}
        perm <= Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_9, i)), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_9, i)), Ref__Integer_value:=Mask[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_9, i)), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_68 might not hold. Assertion out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value might not hold. (testTranspose.vpr@99.11--99.129) [43310]"}
      Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i, j_9)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_9, i)), Ref__Integer_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__transpose
// ==================================================

procedure Ref__transpose(diz: Ref, current_thread_id: int, M: int, N: int, out: (Seq Ref), inp: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_15: int;
  var k_32: int;
  var j1_15: int;
  var QPMask: MaskType;
  var j_22: int;
  var k_23: int;
  var j1_16: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j1: int;
  var j1_2: int;
  var i_34: int;
  var j_30: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_35: int;
  var j_20: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var j_12_2: int;
  var k_4_1: int;
  var j_15_1: int;
  var k_6: int;
  var ExhaleHeap: HeapType;
  var i_4_1: int;
  var j_8: int;
  var i_6_1: int;
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
    assume M > 0;
    assume N > 0;
    assume state(Heap, Mask);
    assume M * N <= Seq#Length(out);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { out[j], out[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> out[j] != out[k])
      if (*) {
        if (0 <= j_15 && (j_15 < M * N && (0 <= k_32 && (k_32 < M * N && j_15 != k_32)))) {
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might be negative. (testTranspose.vpr@123.12--123.106) [43311]"}
            j_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j] into out might exceed sequence length. (testTranspose.vpr@123.12--123.106) [43312]"}
            j_15 < Seq#Length(out);
          assert {:msg "  Contract might not be well-formed. Index out[k] into out might be negative. (testTranspose.vpr@123.12--123.106) [43313]"}
            k_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[k] into out might exceed sequence length. (testTranspose.vpr@123.12--123.106) [43314]"}
            k_32 < Seq#Length(out);
        }
        assume false;
      }
    assume (forall j_1: int, k_1_1: int ::
      { Seq#Index(out, j_1), Seq#Index(out, k_1_1) }
      0 <= j_1 && (j_1 < M * N && (0 <= k_1_1 && (k_1_1 < M * N && j_1 != k_1_1))) ==> Seq#Index(out, j_1) != Seq#Index(out, k_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { out[j1] } 0 <= j1 && j1 < M * N ==> acc(out[j1].Ref__Integer_value, write))
      if (*) {
        if (0 <= j1_15 && j1_15 < M * N) {
          assert {:msg "  Contract might not be well-formed. Index out[j1] into out might be negative. (testTranspose.vpr@124.13--124.99) [43315]"}
            j1_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j1] into out might exceed sequence length. (testTranspose.vpr@124.13--124.99) [43316]"}
            j1_15 < Seq#Length(out);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource out[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@124.13--124.99) [43317]"}
      (forall j1_1: int, j1_1_1: int ::
      
      (((j1_1 != j1_1_1 && (0 <= j1_1 && j1_1 < M * N)) && (0 <= j1_1_1 && j1_1_1 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j1_1) != Seq#Index(out, j1_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_1: int ::
        { Seq#Index(out, j1_1) } { Seq#Index(out, j1_1) }
        (0 <= j1_1 && j1_1 < M * N) && NoPerm < FullPerm ==> qpRange15(Seq#Index(out, j1_1)) && invRecv15(Seq#Index(out, j1_1)) == j1_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        ((0 <= invRecv15(o_4) && invRecv15(o_4) < M * N) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(out, invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_1: int ::
        { Seq#Index(out, j1_1) } { Seq#Index(out, j1_1) }
        0 <= j1_1 && j1_1 < M * N ==> Seq#Index(out, j1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv15(o_4) && invRecv15(o_4) < M * N) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv15(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv15(o_4) && invRecv15(o_4) < M * N) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume N * M <= Seq#Length(inp);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { inp[j], inp[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> inp[j] != inp[k])
      if (*) {
        if (0 <= j_22 && (j_22 < M * N && (0 <= k_23 && (k_23 < M * N && j_22 != k_23)))) {
          assert {:msg "  Contract might not be well-formed. Index inp[j] into inp might be negative. (testTranspose.vpr@126.12--126.106) [43318]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[j] into inp might exceed sequence length. (testTranspose.vpr@126.12--126.106) [43319]"}
            j_22 < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. Index inp[k] into inp might be negative. (testTranspose.vpr@126.12--126.106) [43320]"}
            k_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[k] into inp might exceed sequence length. (testTranspose.vpr@126.12--126.106) [43321]"}
            k_23 < Seq#Length(inp);
        }
        assume false;
      }
    assume (forall j_3_1: int, k_3: int ::
      { Seq#Index(inp, j_3_1), Seq#Index(inp, k_3) }
      0 <= j_3_1 && (j_3_1 < M * N && (0 <= k_3 && (k_3 < M * N && j_3_1 != k_3))) ==> Seq#Index(inp, j_3_1) != Seq#Index(inp, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int :: { inp[j1] } 0 <= j1 && j1 < N * M ==> acc(inp[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= j1_16 && j1_16 < N * M) {
          assert {:msg "  Contract might not be well-formed. Index inp[j1] into inp might be negative. (testTranspose.vpr@127.13--127.99) [43322]"}
            j1_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[j1] into inp might exceed sequence length. (testTranspose.vpr@127.13--127.99) [43323]"}
            j1_16 < Seq#Length(inp);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource inp[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@127.13--127.99) [43324]"}
      (forall j1_3: int, j1_3_1: int ::
      
      (((j1_3 != j1_3_1 && (0 <= j1_3 && j1_3 < N * M)) && (0 <= j1_3_1 && j1_3_1 < N * M)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(inp, j1_3) != Seq#Index(inp, j1_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_3: int ::
        { Seq#Index(inp, j1_3) } { Seq#Index(inp, j1_3) }
        (0 <= j1_3 && j1_3 < N * M) && NoPerm < 1 / 2 ==> qpRange16(Seq#Index(inp, j1_3)) && invRecv16(Seq#Index(inp, j1_3)) == j1_3
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        ((0 <= invRecv16(o_4) && invRecv16(o_4) < N * M) && NoPerm < 1 / 2) && qpRange16(o_4) ==> Seq#Index(inp, invRecv16(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testTranspose.vpr@127.13--127.99) [43325]"}
      (forall j1_3: int ::
      { Seq#Index(inp, j1_3) } { Seq#Index(inp, j1_3) }
      0 <= j1_3 && j1_3 < N * M ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_3: int ::
        { Seq#Index(inp, j1_3) } { Seq#Index(inp, j1_3) }
        (0 <= j1_3 && j1_3 < N * M) && 1 / 2 > NoPerm ==> Seq#Index(inp, j1_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv16(o_4) && invRecv16(o_4) < N * M) && NoPerm < 1 / 2) && qpRange16(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(inp, invRecv16(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv16(o_4) && invRecv16(o_4) < N * M) && NoPerm < 1 / 2) && qpRange16(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
    assume M > 0;
    assume N > 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j1: Int :: { out[j1] } 0 <= j1 && j1 < M * N ==> acc(out[j1].Ref__Integer_value, write))
      if (*) {
        if (0 <= j1 && j1 < M * N) {
          assert {:msg "  Contract might not be well-formed. Index out[j1] into out might be negative. (testTranspose.vpr@129.12--129.98) [43326]"}
            j1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[j1] into out might exceed sequence length. (testTranspose.vpr@129.12--129.98) [43327]"}
            j1 < Seq#Length(out);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource out[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@129.12--129.98) [43328]"}
      (forall j1_5: int, j1_5_1: int ::
      
      (((j1_5 != j1_5_1 && (0 <= j1_5 && j1_5 < M * N)) && (0 <= j1_5_1 && j1_5_1 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j1_5) != Seq#Index(out, j1_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_5: int ::
        { Seq#Index(out, j1_5) } { Seq#Index(out, j1_5) }
        (0 <= j1_5 && j1_5 < M * N) && NoPerm < FullPerm ==> qpRange17(Seq#Index(out, j1_5)) && invRecv17(Seq#Index(out, j1_5)) == j1_5
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        ((0 <= invRecv17(o_4) && invRecv17(o_4) < M * N) && NoPerm < FullPerm) && qpRange17(o_4) ==> Seq#Index(out, invRecv17(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_5: int ::
        { Seq#Index(out, j1_5) } { Seq#Index(out, j1_5) }
        0 <= j1_5 && j1_5 < M * N ==> Seq#Index(out, j1_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv17(o_4) && invRecv17(o_4) < M * N) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv17(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv17(o_4) && invRecv17(o_4) < M * N) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j1: Int :: { inp[j1] } 0 <= j1 && j1 < N * M ==> acc(inp[j1].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= j1_2 && j1_2 < N * M) {
          assert {:msg "  Contract might not be well-formed. Index inp[j1] into inp might be negative. (testTranspose.vpr@130.12--130.98) [43329]"}
            j1_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[j1] into inp might exceed sequence length. (testTranspose.vpr@130.12--130.98) [43330]"}
            j1_2 < Seq#Length(inp);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource inp[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@130.12--130.98) [43331]"}
      (forall j1_7: int, j1_7_1: int ::
      
      (((j1_7 != j1_7_1 && (0 <= j1_7 && j1_7 < N * M)) && (0 <= j1_7_1 && j1_7_1 < N * M)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(inp, j1_7) != Seq#Index(inp, j1_7_1)
    );
    
    // -- Define Inverse Function
      assume (forall j1_7: int ::
        { Seq#Index(inp, j1_7) } { Seq#Index(inp, j1_7) }
        (0 <= j1_7 && j1_7 < N * M) && NoPerm < 1 / 2 ==> qpRange18(Seq#Index(inp, j1_7)) && invRecv18(Seq#Index(inp, j1_7)) == j1_7
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        ((0 <= invRecv18(o_4) && invRecv18(o_4) < N * M) && NoPerm < 1 / 2) && qpRange18(o_4) ==> Seq#Index(inp, invRecv18(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testTranspose.vpr@130.12--130.98) [43332]"}
      (forall j1_7: int ::
      { Seq#Index(inp, j1_7) } { Seq#Index(inp, j1_7) }
      0 <= j1_7 && j1_7 < N * M ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall j1_7: int ::
        { Seq#Index(inp, j1_7) } { Seq#Index(inp, j1_7) }
        (0 <= j1_7 && j1_7 < N * M) && 1 / 2 > NoPerm ==> Seq#Index(inp, j1_7) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv18(o_4) && invRecv18(o_4) < N * M) && NoPerm < 1 / 2) && qpRange18(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(inp, invRecv18(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv18(o_4) && invRecv18(o_4) < N * M) && NoPerm < 1 / 2) && qpRange18(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { out[Ref__multidim_index_2(M, N, i, j)] } { inp[Ref__multidim_index_2(N, M, j, i)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value)
      if (*) {
        if (0 <= i_34 && (i_34 < M && (0 <= j_30 && j_30 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@131.89--131.122) [43333]"}
              0 <= i_34;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@131.89--131.122) [43334]"}
              i_34 < M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@131.89--131.122) [43335]"}
              0 <= M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@131.89--131.122) [43336]"}
              0 <= j_30;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@131.89--131.122) [43337]"}
              j_30 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@131.89--131.122) [43338]"}
              0 <= N;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might be negative. (testTranspose.vpr@131.12--131.204) [43339]"}
            Ref__multidim_index_2(PostHeap, M, N, i_34, j_30) >= 0;
          assert {:msg "  Contract might not be well-formed. Index out[Ref__multidim_index_2(M, N, i, j)] into out might exceed sequence length. (testTranspose.vpr@131.12--131.204) [43340]"}
            Ref__multidim_index_2(PostHeap, M, N, i_34, j_30) < Seq#Length(out);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value (testTranspose.vpr@131.12--131.204) [43341]"}
            HasDirectPerm(PostMask, Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i_34, j_30)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@131.150--131.183) [43342]"}
              0 <= j_30;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@131.150--131.183) [43343]"}
              j_30 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@131.150--131.183) [43344]"}
              0 <= N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@131.150--131.183) [43345]"}
              0 <= i_34;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@131.150--131.183) [43346]"}
              i_34 < M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@131.150--131.183) [43347]"}
              0 <= M;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@131.12--131.204) [43348]"}
            Ref__multidim_index_2(PostHeap, N, M, j_30, i_34) >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@131.12--131.204) [43349]"}
            Ref__multidim_index_2(PostHeap, N, M, j_30, i_34) < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@131.12--131.204) [43350]"}
            HasDirectPerm(PostMask, Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_30, i_34)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_1: int, j_5_1: int ::
      { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M, N, i_1, j_5_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M, j_5_1, i_1)) }
      0 <= i_1 && (i_1 < M && (0 <= j_5_1 && j_5_1 < N)) ==> PostHeap[Seq#Index(out, Ref__multidim_index_2(PostHeap, M, N, i_1, j_5_1)), Ref__Integer_value] == PostHeap[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_5_1, i_1)), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { old(Ref__multidim_index_2(N, M, j, i)) } { old(inp[Ref__multidim_index_2(N, M, j, i)]) } 0 <= i && (i < M && (0 <= j && j < N)) ==> inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value == old(inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value))
      if (*) {
        if (0 <= i_35 && (i_35 < M && (0 <= j_20 && j_20 < N))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@132.89--132.122) [43351]"}
              0 <= j_20;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@132.89--132.122) [43352]"}
              j_20 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@132.89--132.122) [43353]"}
              0 <= N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@132.89--132.122) [43354]"}
              0 <= i_35;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@132.89--132.122) [43355]"}
              i_35 < M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@132.89--132.122) [43356]"}
              0 <= M;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@132.12--132.209) [43357]"}
            Ref__multidim_index_2(PostHeap, N, M, j_20, i_35) >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@132.12--132.209) [43358]"}
            Ref__multidim_index_2(PostHeap, N, M, j_20, i_35) < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@132.12--132.209) [43359]"}
            HasDirectPerm(PostMask, Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_20, i_35)), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= j might not hold. (testTranspose.vpr@132.154--132.187) [43360]"}
              0 <= j_20;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion j < N might not hold. (testTranspose.vpr@132.154--132.187) [43361]"}
              j_20 < N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= N might not hold. (testTranspose.vpr@132.154--132.187) [43362]"}
              0 <= N;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= i might not hold. (testTranspose.vpr@132.154--132.187) [43363]"}
              0 <= i_35;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion i < M might not hold. (testTranspose.vpr@132.154--132.187) [43364]"}
              i_35 < M;
            assert {:msg "  Precondition of function Ref__multidim_index_2 might not hold. Assertion 0 <= M might not hold. (testTranspose.vpr@132.154--132.187) [43365]"}
              0 <= M;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might be negative. (testTranspose.vpr@132.12--132.209) [43366]"}
            Ref__multidim_index_2(oldHeap, N, M, j_20, i_35) >= 0;
          assert {:msg "  Contract might not be well-formed. Index inp[Ref__multidim_index_2(N, M, j, i)] into inp might exceed sequence length. (testTranspose.vpr@132.12--132.209) [43367]"}
            Ref__multidim_index_2(oldHeap, N, M, j_20, i_35) < Seq#Length(inp);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value (testTranspose.vpr@132.12--132.209) [43368]"}
            HasDirectPerm(oldMask, Seq#Index(inp, Ref__multidim_index_2(oldHeap, N, M, j_20, i_35)), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_3: int, j_7_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, N, M, j_7_1, i_3) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M, j_7_1, i_3)) }
      0 <= i_3 && (i_3 < M && (0 <= j_7_1 && j_7_1 < N)) ==> PostHeap[Seq#Index(inp, Ref__multidim_index_2(PostHeap, N, M, j_7_1, i_3)), Ref__Integer_value] == oldHeap[Seq#Index(inp, Ref__multidim_index_2(oldHeap, N, M, j_7_1, i_3)), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_68(diz, current_thread_id, N, M, inp, out) -- testTranspose.vpr@134.3--134.60
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion diz != null might not hold. (testTranspose.vpr@134.3--134.60) [43369]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion current_thread_id >= 0 might not hold. (testTranspose.vpr@134.3--134.60) [43370]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion M * N <= |out| might not hold. (testTranspose.vpr@134.3--134.60) [43371]"}
        M * N <= Seq#Length(out);
      if (*) {
        if (0 <= j_12_2 && (j_12_2 < M * N && (0 <= k_4_1 && (k_4_1 < M * N && j_12_2 != k_4_1)))) {
          assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion out[j] != out[k] might not hold. (testTranspose.vpr@134.3--134.60) [43372]"}
            Seq#Index(out, j_12_2) != Seq#Index(out, k_4_1);
        }
        assume false;
      }
      assume (forall j_13_1: int, k_5_1_1: int ::
        { Seq#Index(out, j_13_1), Seq#Index(out, k_5_1_1) }
        0 <= j_13_1 && (j_13_1 < M * N && (0 <= k_5_1_1 && (k_5_1_1 < M * N && j_13_1 != k_5_1_1))) ==> Seq#Index(out, j_13_1) != Seq#Index(out, k_5_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver out[j] is injective
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@134.3--134.60) [43373]"}
          (forall j_14_1: int, j_14_2: int ::
          { neverTriggered21(j_14_1), neverTriggered21(j_14_2) }
          (((j_14_1 != j_14_2 && (0 <= j_14_1 && j_14_1 < M * N)) && (0 <= j_14_2 && j_14_2 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_14_1) != Seq#Index(out, j_14_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. There might be insufficient permission to access out[j].Ref__Integer_value (testTranspose.vpr@134.3--134.60) [43374]"}
          (forall j_14_1: int ::
          { Seq#Index(out, j_14_1) } { Seq#Index(out, j_14_1) }
          0 <= j_14_1 && j_14_1 < M * N ==> Mask[Seq#Index(out, j_14_1), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver out[j]
        assume (forall j_14_1: int ::
          { Seq#Index(out, j_14_1) } { Seq#Index(out, j_14_1) }
          (0 <= j_14_1 && j_14_1 < M * N) && NoPerm < FullPerm ==> qpRange21(Seq#Index(out, j_14_1)) && invRecv21(Seq#Index(out, j_14_1)) == j_14_1
        );
        assume (forall o_4: Ref ::
          { invRecv21(o_4) }
          (0 <= invRecv21(o_4) && invRecv21(o_4) < M * N) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(out, invRecv21(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv21(o_4) && invRecv21(o_4) < M * N) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(out, invRecv21(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv21(o_4) && invRecv21(o_4) < M * N) && (NoPerm < FullPerm && qpRange21(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion N * M <= |inp| might not hold. (testTranspose.vpr@134.3--134.60) [43375]"}
        N * M <= Seq#Length(inp);
      if (*) {
        if (0 <= j_15_1 && (j_15_1 < M * N && (0 <= k_6 && (k_6 < M * N && j_15_1 != k_6)))) {
          assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Assertion inp[j] != inp[k] might not hold. (testTranspose.vpr@134.3--134.60) [43376]"}
            Seq#Index(inp, j_15_1) != Seq#Index(inp, k_6);
        }
        assume false;
      }
      assume (forall j_16_1: int, k_7_1_1: int ::
        { Seq#Index(inp, j_16_1), Seq#Index(inp, k_7_1_1) }
        0 <= j_16_1 && (j_16_1 < M * N && (0 <= k_7_1_1 && (k_7_1_1 < M * N && j_16_1 != k_7_1_1))) ==> Seq#Index(inp, j_16_1) != Seq#Index(inp, k_7_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Fraction 1 / 4 might be negative. (testTranspose.vpr@134.3--134.60) [43377]"}
          (forall i_8_2: int ::
          { Seq#Index(inp, i_8_2) } { Seq#Index(inp, i_8_2) }
          (0 <= i_8_2 && i_8_2 < N * M) && dummyFunction(Heap[Seq#Index(inp, i_8_2), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
        );
      
      // -- check if receiver inp[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@134.3--134.60) [43378]"}
          (forall i_8_2: int, i_8_3: int ::
          { neverTriggered22(i_8_2), neverTriggered22(i_8_3) }
          (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < N * M)) && (0 <= i_8_3 && i_8_3 < N * M)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_8_2) != Seq#Index(inp, i_8_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_68 might not hold. There might be insufficient permission to access inp[i].Ref__Integer_value (testTranspose.vpr@134.3--134.60) [43379]"}
          (forall i_8_2: int ::
          { Seq#Index(inp, i_8_2) } { Seq#Index(inp, i_8_2) }
          0 <= i_8_2 && i_8_2 < N * M ==> Mask[Seq#Index(inp, i_8_2), Ref__Integer_value] >= 1 / 4
        );
      
      // -- assumptions for inverse of receiver inp[i]
        assume (forall i_8_2: int ::
          { Seq#Index(inp, i_8_2) } { Seq#Index(inp, i_8_2) }
          (0 <= i_8_2 && i_8_2 < N * M) && NoPerm < 1 / 4 ==> qpRange22(Seq#Index(inp, i_8_2)) && invRecv22(Seq#Index(inp, i_8_2)) == i_8_2
        );
        assume (forall o_4: Ref ::
          { invRecv22(o_4) }
          (0 <= invRecv22(o_4) && invRecv22(o_4) < N * M) && (NoPerm < 1 / 4 && qpRange22(o_4)) ==> Seq#Index(inp, invRecv22(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv22(o_4) && invRecv22(o_4) < N * M) && (NoPerm < 1 / 4 && qpRange22(o_4)) ==> Seq#Index(inp, invRecv22(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv22(o_4) && invRecv22(o_4) < N * M) && (NoPerm < 1 / 4 && qpRange22(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
      assert {:msg "  Method call might fail. Quantified resource out[j].Ref__Integer_value might not be injective. (testTranspose.vpr@134.3--134.60) [43380]"}
        (forall j_17_1: int, j_17_2: int ::
        
        (((j_17_1 != j_17_2 && (0 <= j_17_1 && j_17_1 < M * N)) && (0 <= j_17_2 && j_17_2 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j_17_1) != Seq#Index(out, j_17_2)
      );
      
      // -- Define Inverse Function
        assume (forall j_17_1: int ::
          { Seq#Index(out, j_17_1) } { Seq#Index(out, j_17_1) }
          (0 <= j_17_1 && j_17_1 < M * N) && NoPerm < FullPerm ==> qpRange23(Seq#Index(out, j_17_1)) && invRecv23(Seq#Index(out, j_17_1)) == j_17_1
        );
        assume (forall o_4: Ref ::
          { invRecv23(o_4) }
          ((0 <= invRecv23(o_4) && invRecv23(o_4) < M * N) && NoPerm < FullPerm) && qpRange23(o_4) ==> Seq#Index(out, invRecv23(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_17_1: int ::
          { Seq#Index(out, j_17_1) } { Seq#Index(out, j_17_1) }
          0 <= j_17_1 && j_17_1 < M * N ==> Seq#Index(out, j_17_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv23(o_4) && invRecv23(o_4) < M * N) && NoPerm < FullPerm) && qpRange23(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(out, invRecv23(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv23(o_4) && invRecv23(o_4) < M * N) && NoPerm < FullPerm) && qpRange23(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource inp[i].Ref__Integer_value might not be injective. (testTranspose.vpr@134.3--134.60) [43381]"}
        (forall i_9_1: int, i_9_2: int ::
        
        (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < N * M)) && (0 <= i_9_2 && i_9_2 < N * M)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(inp, i_9_1) != Seq#Index(inp, i_9_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_9_1: int ::
          { Seq#Index(inp, i_9_1) } { Seq#Index(inp, i_9_1) }
          (0 <= i_9_1 && i_9_1 < N * M) && NoPerm < 1 / 4 ==> qpRange24(Seq#Index(inp, i_9_1)) && invRecv24(Seq#Index(inp, i_9_1)) == i_9_1
        );
        assume (forall o_4: Ref ::
          { invRecv24(o_4) }
          ((0 <= invRecv24(o_4) && invRecv24(o_4) < N * M) && NoPerm < 1 / 4) && qpRange24(o_4) ==> Seq#Index(inp, invRecv24(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (testTranspose.vpr@134.3--134.60) [43382]"}
        (forall i_9_1: int ::
        { Seq#Index(inp, i_9_1) } { Seq#Index(inp, i_9_1) }
        0 <= i_9_1 && i_9_1 < N * M ==> 1 / 4 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_9_1: int ::
          { Seq#Index(inp, i_9_1) } { Seq#Index(inp, i_9_1) }
          (0 <= i_9_1 && i_9_1 < N * M) && 1 / 4 > NoPerm ==> Seq#Index(inp, i_9_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv24(o_4) && invRecv24(o_4) < N * M) && NoPerm < 1 / 4) && qpRange24(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(inp, invRecv24(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv24(o_4) && invRecv24(o_4) < N * M) && NoPerm < 1 / 4) && qpRange24(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall i_10_1: int, j_18_1: int ::
        { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M, N, i_10_1, j_18_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M, j_18_1, i_10_1)) }
        0 <= i_10_1 && (i_10_1 < M && (0 <= j_18_1 && j_18_1 < N)) ==> Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i_10_1, j_18_1)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_18_1, i_10_1)), Ref__Integer_value]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__transpose might not hold. Assertion M > 0 might not hold. (testTranspose.vpr@128.11--128.29) [43383]"}
      M > 0;
    assert {:msg "  Postcondition of Ref__transpose might not hold. Assertion N > 0 might not hold. (testTranspose.vpr@128.11--128.29) [43384]"}
      N > 0;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver out[j1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource out[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@129.12--129.98) [43385]"}
        (forall j1_8: int, j1_8_1: int ::
        { neverTriggered19(j1_8), neverTriggered19(j1_8_1) }
        (((j1_8 != j1_8_1 && (0 <= j1_8 && j1_8 < M * N)) && (0 <= j1_8_1 && j1_8_1 < M * N)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(out, j1_8) != Seq#Index(out, j1_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__transpose might not hold. There might be insufficient permission to access out[j1].Ref__Integer_value (testTranspose.vpr@129.12--129.98) [43386]"}
        (forall j1_8: int ::
        { Seq#Index(out, j1_8) } { Seq#Index(out, j1_8) }
        0 <= j1_8 && j1_8 < M * N ==> Mask[Seq#Index(out, j1_8), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver out[j1]
      assume (forall j1_8: int ::
        { Seq#Index(out, j1_8) } { Seq#Index(out, j1_8) }
        (0 <= j1_8 && j1_8 < M * N) && NoPerm < FullPerm ==> qpRange19(Seq#Index(out, j1_8)) && invRecv19(Seq#Index(out, j1_8)) == j1_8
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        (0 <= invRecv19(o_4) && invRecv19(o_4) < M * N) && (NoPerm < FullPerm && qpRange19(o_4)) ==> Seq#Index(out, invRecv19(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv19(o_4) && invRecv19(o_4) < M * N) && (NoPerm < FullPerm && qpRange19(o_4)) ==> Seq#Index(out, invRecv19(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv19(o_4) && invRecv19(o_4) < M * N) && (NoPerm < FullPerm && qpRange19(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__transpose might not hold. Fraction 1 / 2 might be negative. (testTranspose.vpr@130.12--130.98) [43387]"}
        (forall j1_9: int ::
        { Seq#Index(inp, j1_9) } { Seq#Index(inp, j1_9) }
        (0 <= j1_9 && j1_9 < N * M) && dummyFunction(Heap[Seq#Index(inp, j1_9), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver inp[j1] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource inp[j1].Ref__Integer_value might not be injective. (testTranspose.vpr@130.12--130.98) [43388]"}
        (forall j1_9: int, j1_9_1: int ::
        { neverTriggered20(j1_9), neverTriggered20(j1_9_1) }
        (((j1_9 != j1_9_1 && (0 <= j1_9 && j1_9 < N * M)) && (0 <= j1_9_1 && j1_9_1 < N * M)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(inp, j1_9) != Seq#Index(inp, j1_9_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__transpose might not hold. There might be insufficient permission to access inp[j1].Ref__Integer_value (testTranspose.vpr@130.12--130.98) [43389]"}
        (forall j1_9: int ::
        { Seq#Index(inp, j1_9) } { Seq#Index(inp, j1_9) }
        0 <= j1_9 && j1_9 < N * M ==> Mask[Seq#Index(inp, j1_9), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver inp[j1]
      assume (forall j1_9: int ::
        { Seq#Index(inp, j1_9) } { Seq#Index(inp, j1_9) }
        (0 <= j1_9 && j1_9 < N * M) && NoPerm < 1 / 2 ==> qpRange20(Seq#Index(inp, j1_9)) && invRecv20(Seq#Index(inp, j1_9)) == j1_9
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (0 <= invRecv20(o_4) && invRecv20(o_4) < N * M) && (NoPerm < 1 / 2 && qpRange20(o_4)) ==> Seq#Index(inp, invRecv20(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv20(o_4) && invRecv20(o_4) < N * M) && (NoPerm < 1 / 2 && qpRange20(o_4)) ==> Seq#Index(inp, invRecv20(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv20(o_4) && invRecv20(o_4) < N * M) && (NoPerm < 1 / 2 && qpRange20(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_4_1 && (i_4_1 < M && (0 <= j_8 && j_8 < N))) {
        assert {:msg "  Postcondition of Ref__transpose might not hold. Assertion out[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value might not hold. (testTranspose.vpr@131.12--131.204) [43390]"}
          Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i_4_1, j_8)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_8, i_4_1)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_5_1_1: int, j_9_1_1: int ::
      { Seq#Index(out, Ref__multidim_index_2#frame(EmptyFrame, M, N, i_5_1_1, j_9_1_1)) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M, j_9_1_1, i_5_1_1)) }
      0 <= i_5_1_1 && (i_5_1_1 < M && (0 <= j_9_1_1 && j_9_1_1 < N)) ==> Heap[Seq#Index(out, Ref__multidim_index_2(Heap, M, N, i_5_1_1, j_9_1_1)), Ref__Integer_value] == Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_9_1_1, i_5_1_1)), Ref__Integer_value]
    );
    if (*) {
      if (0 <= i_6_1 && (i_6_1 < M && (0 <= j_10_2 && j_10_2 < N))) {
        assert {:msg "  Postcondition of Ref__transpose might not hold. Assertion inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value == old(inp[Ref__multidim_index_2(N, M, j, i)].Ref__Integer_value) might not hold. (testTranspose.vpr@132.12--132.209) [43391]"}
          Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_10_2, i_6_1)), Ref__Integer_value] == oldHeap[Seq#Index(inp, Ref__multidim_index_2(oldHeap, N, M, j_10_2, i_6_1)), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_7_1_1: int, j_11_1: int ::
      { Ref__multidim_index_2#frame(EmptyFrame, N, M, j_11_1, i_7_1_1) } { Seq#Index(inp, Ref__multidim_index_2#frame(EmptyFrame, N, M, j_11_1, i_7_1_1)) }
      0 <= i_7_1_1 && (i_7_1_1 < M && (0 <= j_11_1 && j_11_1 < N)) ==> Heap[Seq#Index(inp, Ref__multidim_index_2(Heap, N, M, j_11_1, i_7_1_1)), Ref__Integer_value] == oldHeap[Seq#Index(inp, Ref__multidim_index_2(oldHeap, N, M, j_11_1, i_7_1_1)), Ref__Integer_value]
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTranspose.vpr@144.10--144.29) [43392]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTranspose.vpr@145.3--145.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result != null might not hold. (testTranspose.vpr@139.11--139.30) [43393]"}
      sys__result != null;
}