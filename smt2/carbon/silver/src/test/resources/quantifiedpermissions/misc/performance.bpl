// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:28
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/performance.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/performance-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_4: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_4, f_9] }
  Heap[o_4, $allocated] ==> Heap[Heap[o_4, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_15: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_15] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_15) ==> Heap[o_23, f_15] == ExhaleHeap[o_23, f_15]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10), ExhaleHeap[null, WandMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> Heap[null, WandMaskField(pm_f_10)] == ExhaleHeap[null, WandMaskField(pm_f_10)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_4: Ref, f_25: (Field A B), v: B ::
  { Heap[o_4, f_25:=v] }
  succHeap(Heap, Heap[o_4, f_25:=v])
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

function  neverTriggered1(i_3_2: int): bool;
function  neverTriggered2(i_6_2: int): bool;
function  neverTriggered3(i_10_1: int): bool;
function  neverTriggered4(i_3_2: int): bool;
function  neverTriggered5(i_3_2: int): bool;
function  neverTriggered6(i_5_1: int): bool;
function  neverTriggered7(i_7_1: int): bool;
function  neverTriggered8(i_8_1: int): bool;
function  neverTriggered9(i_9_1: int): bool;
function  neverTriggered10(i_1: int): bool;
function  neverTriggered11(i_3_2: int): bool;
function  neverTriggered12(i_5_1: int): bool;
function  neverTriggered13(i_8_1: int): bool;
function  neverTriggered14(i_9_1: int): bool;
function  neverTriggered15(i_10_1: int): bool;
function  neverTriggered16(i_13_1: int): bool;
function  neverTriggered17(i_14_1: int): bool;
function  neverTriggered18(i_15_1: int): bool;
function  neverTriggered19(i_18_1: int): bool;
function  neverTriggered20(i_19_1: int): bool;
function  neverTriggered21(i_20_2: int): bool;
function  neverTriggered22(i_23_1: int): bool;
function  neverTriggered23(i_26_1: int): bool;
function  neverTriggered24(i_29: int): bool;
function  neverTriggered25(i_32: int): bool;
function  neverTriggered26(i_33: int): bool;
function  neverTriggered27(i_34: int): bool;
function  neverTriggered28(i_37: int): bool;
function  neverTriggered29(i_40: int): bool;
function  neverTriggered30(i_43: int): bool;
function  neverTriggered31(i_44: int): bool;
function  neverTriggered32(i_45: int): bool;
function  neverTriggered33(i_48: int): bool;
function  neverTriggered34(i_51_2: int): bool;
function  neverTriggered35(i_54: int): bool;
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
function  invRecv25(recv: Ref): int;
function  invRecv26(recv: Ref): int;
function  invRecv27(recv: Ref): int;
function  invRecv28(recv: Ref): int;
function  invRecv29(recv: Ref): int;
function  invRecv30(recv: Ref): int;
function  invRecv31(recv: Ref): int;
function  invRecv32(recv: Ref): int;
function  invRecv33(recv: Ref): int;
function  invRecv34(recv: Ref): int;
function  invRecv35(recv: Ref): int;
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
function  qpRange25(recv: Ref): bool;
function  qpRange26(recv: Ref): bool;
function  qpRange27(recv: Ref): bool;
function  qpRange28(recv: Ref): bool;
function  qpRange29(recv: Ref): bool;
function  qpRange30(recv: Ref): bool;
function  qpRange31(recv: Ref): bool;
function  qpRange32(recv: Ref): bool;
function  qpRange33(recv: Ref): bool;
function  qpRange34(recv: Ref): bool;
function  qpRange35(recv: Ref): bool;

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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method init
// ==================================================

procedure init(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_18: int;
  var j_14: int;
  var i_3: int;
  var QPMask: MaskType;
  var i_4: int;
  var j_12: int;
  var i_14: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_4_1: int;
  var j_2_2: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_18) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_14) && i_18 != j_14)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@7.11--7.97) [175657]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@7.11--7.97) [175658]"}
            i_18 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (performance.vpr@7.11--7.97) [175659]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (performance.vpr@7.11--7.97) [175660]"}
            j_14 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) && i_1 != j_1) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@8.11--8.59) [175661]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@8.11--8.59) [175662]"}
            i_3 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@8.11--8.59) [175663]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3_2) != Seq#Index(xs, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, i_3_2)) && invRecv1(Seq#Index(xs, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> Seq#Index(xs, invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) ==> Seq#Index(xs, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
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
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { (i in [0..|xs|)), (j in [0..|xs|)) }
  //     { (i in [0..|xs|)), xs[j] }
  //     { (j in [0..|xs|)), xs[i] }
  //     { xs[i], xs[j] }
  //     (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]) -- performance.vpr@10.3--10.96
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_12) && i_4 != j_12)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (performance.vpr@10.10--10.96) [175664]"}
            i_4 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (performance.vpr@10.10--10.96) [175665]"}
            i_4 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (performance.vpr@10.10--10.96) [175666]"}
            j_12 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (performance.vpr@10.10--10.96) [175667]"}
            j_12 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_8_1: int, j_5: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_5) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_5) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_1), Seq#Index(xs, j_5) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1), Seq#Index(xs, j_5) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_5), Seq#Index(xs, i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5), Seq#Index(xs, i_8_1) } { Seq#Index(xs, i_8_1), Seq#Index(xs, j_5) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5) && i_8_1 != j_5) ==> Seq#Index(xs, i_8_1) != Seq#Index(xs, j_5)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [0..|xs|)) }
  //     { xs[i] }
  //     (i in [0..|xs|)) ==> acc(xs[i].f, write)) -- performance.vpr@11.3--11.58
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_14)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (performance.vpr@11.10--11.58) [175668]"}
            i_14 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (performance.vpr@11.10--11.58) [175669]"}
            i_14 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (performance.vpr@11.10--11.58) [175670]"}
      (forall i_10_1: int, i_10_2: int ::
      
      (((i_10_1 != i_10_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_10_1) != Seq#Index(xs, i_10_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_10_1: int ::
        { Seq#Index(xs, i_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1) } { Seq#Index(xs, i_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(xs, i_10_1)) && invRecv3(Seq#Index(xs, i_10_1)) == i_10_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(xs, invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_10_1: int ::
        { Seq#Index(xs, i_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1) } { Seq#Index(xs, i_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1) ==> Seq#Index(xs, i_10_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv3(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_2_2) && i_4_1 != j_2_2)) {
        assert {:msg "  Postcondition of init might not hold. Assertion xs[i] != xs[j] might not hold. (performance.vpr@7.11--7.97) [175671]"}
          Seq#Index(xs, i_4_1) != Seq#Index(xs, j_2_2);
      }
      assume false;
    }
    assume (forall i_5_1_1: int, j_3_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1_1), Seq#Index(xs, j_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1_1), Seq#Index(xs, j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_3_1_1), Seq#Index(xs, i_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_3_1_1), Seq#Index(xs, i_5_1_1) } { Seq#Index(xs, i_5_1_1), Seq#Index(xs, j_3_1_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_3_1_1) && i_5_1_1 != j_3_1_1) ==> Seq#Index(xs, i_5_1_1) != Seq#Index(xs, j_3_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@8.11--8.59) [175672]"}
        (forall i_6_2: int, i_6_3: int ::
        { neverTriggered2(i_6_2), neverTriggered2(i_6_3) }
        (((i_6_2 != i_6_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_6_2) != Seq#Index(xs, i_6_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access xs[i].f (performance.vpr@8.11--8.59) [175673]"}
        (forall i_6_2: int ::
        { Seq#Index(xs, i_6_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_6_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_2) } { Seq#Index(xs, i_6_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_2) ==> Mask[Seq#Index(xs, i_6_2), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_6_2: int ::
        { Seq#Index(xs, i_6_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_6_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_2) } { Seq#Index(xs, i_6_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_2) && NoPerm < FullPerm ==> qpRange2(Seq#Index(xs, i_6_2)) && invRecv2(Seq#Index(xs, i_6_2)) == i_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_9)) && (NoPerm < FullPerm && qpRange2(o_9)) ==> Seq#Index(xs, invRecv2(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_9)) && (NoPerm < FullPerm && qpRange2(o_9)) ==> Seq#Index(xs, invRecv2(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_9)) && (NoPerm < FullPerm && qpRange2(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
// Translation of method leak
// ==================================================

procedure leak(xs: (Seq Ref), p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var i_5: int;
  var j_2: int;
  var i_15: int;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_2) && i_5 != j_2)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@16.12--16.98) [175674]"}
            i_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@16.12--16.98) [175675]"}
            i_5 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (performance.vpr@16.12--16.98) [175676]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (performance.vpr@16.12--16.98) [175677]"}
            j_2 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) && i_1 != j_1) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, p))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_15)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@17.12--17.63) [175678]"}
            i_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@17.12--17.63) [175679]"}
            i_15 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@17.12--17.63) [175680]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_3)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(xs, i_3_2) != Seq#Index(xs, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) && NoPerm < p_1 ==> qpRange4(Seq#Index(xs, i_3_2)) && invRecv4(Seq#Index(xs, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_9)) && NoPerm < p_1) && qpRange4(o_9) ==> Seq#Index(xs, invRecv4(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (performance.vpr@17.12--17.63) [175681]"}
      (forall i_3_2: int ::
      { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) && p_1 > NoPerm ==> Seq#Index(xs, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_9)) && NoPerm < p_1) && qpRange4(o_9) ==> (NoPerm < p_1 ==> Seq#Index(xs, invRecv4(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_9)) && NoPerm < p_1) && qpRange4(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
      oldMask := Mask;
      oldHeap := Heap;
}

// ==================================================
// Translation of method split
// ==================================================

procedure split(xs: (Seq Ref), p_1: Perm, q_1: Perm) returns ()
  modifies Heap, Mask;
{
  var i_7: int;
  var j_4: int;
  var i_21: int;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_8: int;
  var i_19: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume p_1 == real(2) * q_1;
    assume state(Heap, Mask);
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_4) && i_7 != j_4)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@23.12--23.98) [175682]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@23.12--23.98) [175683]"}
            i_7 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (performance.vpr@23.12--23.98) [175684]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (performance.vpr@23.12--23.98) [175685]"}
            j_4 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) && i_1 != j_1) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, p))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_21)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@24.12--24.63) [175686]"}
            i_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@24.12--24.63) [175687]"}
            i_21 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@24.12--24.63) [175688]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_3)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(xs, i_3_2) != Seq#Index(xs, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) && NoPerm < p_1 ==> qpRange5(Seq#Index(xs, i_3_2)) && invRecv5(Seq#Index(xs, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv5(o_9)) && NoPerm < p_1) && qpRange5(o_9) ==> Seq#Index(xs, invRecv5(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (performance.vpr@24.12--24.63) [175689]"}
      (forall i_3_2: int ::
      { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(xs, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) } { Seq#Index(xs, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_2) && p_1 > NoPerm ==> Seq#Index(xs, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv5(o_9)) && NoPerm < p_1) && qpRange5(o_9) ==> (NoPerm < p_1 ==> Seq#Index(xs, invRecv5(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv5(o_9)) && NoPerm < p_1) && qpRange5(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, q))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@25.11--25.62) [175690]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@25.11--25.62) [175691]"}
            i_8 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@25.11--25.62) [175692]"}
      (forall i_5_1: int, i_5_2: int ::
      
      (((i_5_1 != i_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_2)) && NoPerm < q_1) && NoPerm < q_1 ==> Seq#Index(xs, i_5_1) != Seq#Index(xs, i_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Index(xs, i_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) && NoPerm < q_1 ==> qpRange6(Seq#Index(xs, i_5_1)) && invRecv6(Seq#Index(xs, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv6(o_9)) && NoPerm < q_1) && qpRange6(o_9) ==> Seq#Index(xs, invRecv6(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction q might be negative. (performance.vpr@25.11--25.62) [175693]"}
      (forall i_5_1: int ::
      { Seq#Index(xs, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Index(xs, i_5_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) ==> q_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5_1: int ::
        { Seq#Index(xs, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) } { Seq#Index(xs, i_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1) && q_1 > NoPerm ==> Seq#Index(xs, i_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv6(o_9)) && NoPerm < q_1) && qpRange6(o_9) ==> (NoPerm < q_1 ==> Seq#Index(xs, invRecv6(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + q_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv6(o_9)) && NoPerm < q_1) && qpRange6(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, q))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_19)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@26.11--26.62) [175694]"}
            i_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@26.11--26.62) [175695]"}
            i_19 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@26.11--26.62) [175696]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_2)) && NoPerm < q_1) && NoPerm < q_1 ==> Seq#Index(xs, i_7_1) != Seq#Index(xs, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(xs, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1) } { Seq#Index(xs, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1) && NoPerm < q_1 ==> qpRange7(Seq#Index(xs, i_7_1)) && invRecv7(Seq#Index(xs, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv7(o_9)) && NoPerm < q_1) && qpRange7(o_9) ==> Seq#Index(xs, invRecv7(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction q might be negative. (performance.vpr@26.11--26.62) [175697]"}
      (forall i_7_1: int ::
      { Seq#Index(xs, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1) } { Seq#Index(xs, i_7_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1) ==> q_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(xs, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1) } { Seq#Index(xs, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1) && q_1 > NoPerm ==> Seq#Index(xs, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv7(o_9)) && NoPerm < q_1) && qpRange7(o_9) ==> (NoPerm < q_1 ==> Seq#Index(xs, invRecv7(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + q_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv7(o_9)) && NoPerm < q_1) && qpRange7(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of split might not hold. Fraction q might be negative. (performance.vpr@25.11--25.62) [175698]"}
        (forall i_8_1: int ::
        { Seq#Index(xs, i_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1) } { Seq#Index(xs, i_8_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1) && dummyFunction(Heap[Seq#Index(xs, i_8_1), f_7]) ==> q_1 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@25.11--25.62) [175699]"}
        (forall i_8_1: int, i_8_2: int ::
        { neverTriggered8(i_8_1), neverTriggered8(i_8_2) }
        (((i_8_1 != i_8_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2)) && NoPerm < q_1) && NoPerm < q_1 ==> Seq#Index(xs, i_8_1) != Seq#Index(xs, i_8_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of split might not hold. There might be insufficient permission to access xs[i].f (performance.vpr@25.11--25.62) [175700]"}
        (forall i_8_1: int ::
        { Seq#Index(xs, i_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1) } { Seq#Index(xs, i_8_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1) ==> Mask[Seq#Index(xs, i_8_1), f_7] >= q_1
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_8_1: int ::
        { Seq#Index(xs, i_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1) } { Seq#Index(xs, i_8_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_1) && NoPerm < q_1 ==> qpRange8(Seq#Index(xs, i_8_1)) && invRecv8(Seq#Index(xs, i_8_1)) == i_8_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv8(o_9)) && (NoPerm < q_1 && qpRange8(o_9)) ==> Seq#Index(xs, invRecv8(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv8(o_9)) && (NoPerm < q_1 && qpRange8(o_9)) ==> Seq#Index(xs, invRecv8(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - q_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv8(o_9)) && (NoPerm < q_1 && qpRange8(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of split might not hold. Fraction q might be negative. (performance.vpr@26.11--26.62) [175701]"}
        (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Index(xs, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) && dummyFunction(Heap[Seq#Index(xs, i_9_1), f_7]) ==> q_1 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@26.11--26.62) [175702]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered9(i_9_1), neverTriggered9(i_9_2) }
        (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_2)) && NoPerm < q_1) && NoPerm < q_1 ==> Seq#Index(xs, i_9_1) != Seq#Index(xs, i_9_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of split might not hold. There might be insufficient permission to access xs[i].f (performance.vpr@26.11--26.62) [175703]"}
        (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Index(xs, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) ==> Mask[Seq#Index(xs, i_9_1), f_7] >= q_1
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Index(xs, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) && NoPerm < q_1 ==> qpRange9(Seq#Index(xs, i_9_1)) && invRecv9(Seq#Index(xs, i_9_1)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_9)) && (NoPerm < q_1 && qpRange9(o_9)) ==> Seq#Index(xs, invRecv9(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_9)) && (NoPerm < q_1 && qpRange9(o_9)) ==> Seq#Index(xs, invRecv9(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - q_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_9)) && (NoPerm < q_1 && qpRange9(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var xs1: (Seq Ref);
  var QPMask: MaskType;
  var xs2: (Seq Ref);
  var xs3: (Seq Ref);
  var arg_p: Perm;
  var arg_q: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_6_2: int;
  var j_3: int;
  var ExhaleHeap: HeapType;
  var arg_p_1: Perm;
  var arg_q_1: Perm;
  var i_11_1: int;
  var j_5: int;
  var arg_p_2: Perm;
  var arg_q_2: Perm;
  var i_16_1: int;
  var j_7_1: int;
  var arg_p_3: Perm;
  var i_21_1: int;
  var j_9_1: int;
  var arg_p_4: Perm;
  var i_24_1: int;
  var j_11_1: int;
  var arg_p_5: Perm;
  var i_27_2: int;
  var j_13_2: int;
  var arg_p_6: Perm;
  var arg_q_3: Perm;
  var i_30: int;
  var j_15_2: int;
  var arg_p_7: Perm;
  var i_35: int;
  var j_17_2: int;
  var arg_p_8: Perm;
  var i_38: int;
  var j_19_2: int;
  var arg_p_9: Perm;
  var arg_q_4: Perm;
  var i_41: int;
  var j_21_1: int;
  var arg_p_10: Perm;
  var i_46: int;
  var j_23_1: int;
  var arg_p_11: Perm;
  var i_49: int;
  var j_25_2: int;
  var arg_p_12: Perm;
  var i_52: int;
  var j_27_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: init(xs1) -- performance.vpr@42.22--42.31
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      assume (forall i: int, j: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i), Seq#Index(xs1, j) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i), Seq#Index(xs1, j) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j), Seq#Index(xs1, i) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j), Seq#Index(xs1, i) } { Seq#Index(xs1, i), Seq#Index(xs1, j) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j) && i != j) ==> Seq#Index(xs1, i) != Seq#Index(xs1, j)
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@42.22--42.31) [175704]"}
        (forall i_1: int, i_1_1: int ::
        
        (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs1, i_1) != Seq#Index(xs1, i_1_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_1: int ::
          { Seq#Index(xs1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1) } { Seq#Index(xs1, i_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1) && NoPerm < FullPerm ==> qpRange10(Seq#Index(xs1, i_1)) && invRecv10(Seq#Index(xs1, i_1)) == i_1
        );
        assume (forall o_9: Ref ::
          { invRecv10(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv10(o_9)) && NoPerm < FullPerm) && qpRange10(o_9) ==> Seq#Index(xs1, invRecv10(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_1: int ::
          { Seq#Index(xs1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1) } { Seq#Index(xs1, i_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1) ==> Seq#Index(xs1, i_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv10(o_9)) && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs1, invRecv10(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv10(o_9)) && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: init(xs2) -- performance.vpr@43.22--43.31
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      assume (forall i_2: int, j_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_2), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_2), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_2), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_2), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_2), Seq#Index(xs2, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_2), Seq#Index(xs2, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_1), Seq#Index(xs2, i_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_1), Seq#Index(xs2, i_2) } { Seq#Index(xs2, i_2), Seq#Index(xs2, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_1) && i_2 != j_1) ==> Seq#Index(xs2, i_2) != Seq#Index(xs2, j_1)
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@43.22--43.31) [175705]"}
        (forall i_3_2: int, i_3_3: int ::
        
        (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs2, i_3_2) != Seq#Index(xs2, i_3_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_3_2: int ::
          { Seq#Index(xs2, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3_2) } { Seq#Index(xs2, i_3_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3_2) && NoPerm < FullPerm ==> qpRange11(Seq#Index(xs2, i_3_2)) && invRecv11(Seq#Index(xs2, i_3_2)) == i_3_2
        );
        assume (forall o_9: Ref ::
          { invRecv11(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9) ==> Seq#Index(xs2, invRecv11(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_3_2: int ::
          { Seq#Index(xs2, i_3_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_3_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3_2) } { Seq#Index(xs2, i_3_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3_2) ==> Seq#Index(xs2, i_3_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs2, invRecv11(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: init(xs3) -- performance.vpr@44.22--44.31
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      assume (forall i_4_1: int, j_2_2: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_2_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_2_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_2_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_2_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#Index(xs3, j_2_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#Index(xs3, j_2_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_2_2), Seq#Index(xs3, i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_2_2), Seq#Index(xs3, i_4_1) } { Seq#Index(xs3, i_4_1), Seq#Index(xs3, j_2_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_4_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_2_2) && i_4_1 != j_2_2) ==> Seq#Index(xs3, i_4_1) != Seq#Index(xs3, j_2_2)
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs3[i].f might not be injective. (performance.vpr@44.22--44.31) [175706]"}
        (forall i_5_1: int, i_5_2: int ::
        
        (((i_5_1 != i_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs3, i_5_1) != Seq#Index(xs3, i_5_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_5_1: int ::
          { Seq#Index(xs3, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5_1) } { Seq#Index(xs3, i_5_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5_1) && NoPerm < FullPerm ==> qpRange12(Seq#Index(xs3, i_5_1)) && invRecv12(Seq#Index(xs3, i_5_1)) == i_5_1
        );
        assume (forall o_9: Ref ::
          { invRecv12(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv12(o_9)) && NoPerm < FullPerm) && qpRange12(o_9) ==> Seq#Index(xs3, invRecv12(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_5_1: int ::
          { Seq#Index(xs3, i_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5_1) } { Seq#Index(xs3, i_5_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5_1) ==> Seq#Index(xs3, i_5_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv12(o_9)) && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs3, invRecv12(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv12(o_9)) && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: split(xs1, write, 1 / 2) -- performance.vpr@46.3--46.25
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := FullPerm;
    arg_q := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method split might not hold. Assertion write == 2 * (1 / 2) might not hold. (performance.vpr@46.3--46.25) [175707]"}
        arg_p == real(2) * arg_q;
      assert {:msg "  The precondition of method split might not hold. Assertion write >= none might not hold. (performance.vpr@46.3--46.25) [175708]"}
        NoPerm <= arg_p;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_6_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_3) && i_6_2 != j_3)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@46.3--46.25) [175709]"}
            Seq#Index(xs1, i_6_2) != Seq#Index(xs1, j_3);
        }
        assume false;
      }
      assume (forall i_7_1_1: int, j_4_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#Index(xs1, j_4_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#Index(xs1, j_4_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_4_1_1), Seq#Index(xs1, i_7_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_4_1_1), Seq#Index(xs1, i_7_1_1) } { Seq#Index(xs1, i_7_1_1), Seq#Index(xs1, j_4_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_7_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) && i_7_1_1 != j_4_1_1) ==> Seq#Index(xs1, i_7_1_1) != Seq#Index(xs1, j_4_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction write might be negative. (performance.vpr@46.3--46.25) [175710]"}
          (forall i_8_1: int ::
          { Seq#Index(xs1, i_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_1) } { Seq#Index(xs1, i_8_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_1) && dummyFunction(Heap[Seq#Index(xs1, i_8_1), f_7]) ==> arg_p >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@46.3--46.25) [175711]"}
          (forall i_8_1: int, i_8_2: int ::
          { neverTriggered13(i_8_1), neverTriggered13(i_8_2) }
          (((i_8_1 != i_8_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_2)) && NoPerm < arg_p) && NoPerm < arg_p ==> Seq#Index(xs1, i_8_1) != Seq#Index(xs1, i_8_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@46.3--46.25) [175712]"}
          (forall i_8_1: int ::
          { Seq#Index(xs1, i_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_1) } { Seq#Index(xs1, i_8_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_1) ==> Mask[Seq#Index(xs1, i_8_1), f_7] >= arg_p
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_8_1: int ::
          { Seq#Index(xs1, i_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_1) } { Seq#Index(xs1, i_8_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_1) && NoPerm < arg_p ==> qpRange13(Seq#Index(xs1, i_8_1)) && invRecv13(Seq#Index(xs1, i_8_1)) == i_8_1
        );
        assume (forall o_9: Ref ::
          { invRecv13(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv13(o_9)) && (NoPerm < arg_p && qpRange13(o_9)) ==> Seq#Index(xs1, invRecv13(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv13(o_9)) && (NoPerm < arg_p && qpRange13(o_9)) ==> Seq#Index(xs1, invRecv13(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv13(o_9)) && (NoPerm < arg_p && qpRange13(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@46.3--46.25) [175713]"}
        (forall i_9_1: int, i_9_2: int ::
        
        (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_2)) && NoPerm < arg_q) && NoPerm < arg_q ==> Seq#Index(xs1, i_9_1) != Seq#Index(xs1, i_9_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_9_1: int ::
          { Seq#Index(xs1, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1) } { Seq#Index(xs1, i_9_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1) && NoPerm < arg_q ==> qpRange14(Seq#Index(xs1, i_9_1)) && invRecv14(Seq#Index(xs1, i_9_1)) == i_9_1
        );
        assume (forall o_9: Ref ::
          { invRecv14(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv14(o_9)) && NoPerm < arg_q) && qpRange14(o_9) ==> Seq#Index(xs1, invRecv14(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (performance.vpr@46.3--46.25) [175714]"}
        (forall i_9_1: int ::
        { Seq#Index(xs1, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1) } { Seq#Index(xs1, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1) ==> arg_q >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_9_1: int ::
          { Seq#Index(xs1, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1) } { Seq#Index(xs1, i_9_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1) && arg_q > NoPerm ==> Seq#Index(xs1, i_9_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv14(o_9)) && NoPerm < arg_q) && qpRange14(o_9) ==> (NoPerm < arg_q ==> Seq#Index(xs1, invRecv14(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv14(o_9)) && NoPerm < arg_q) && qpRange14(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@46.3--46.25) [175715]"}
        (forall i_10_1: int, i_10_2: int ::
        
        (((i_10_1 != i_10_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_2)) && NoPerm < arg_q) && NoPerm < arg_q ==> Seq#Index(xs1, i_10_1) != Seq#Index(xs1, i_10_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_10_1: int ::
          { Seq#Index(xs1, i_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1) } { Seq#Index(xs1, i_10_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1) && NoPerm < arg_q ==> qpRange15(Seq#Index(xs1, i_10_1)) && invRecv15(Seq#Index(xs1, i_10_1)) == i_10_1
        );
        assume (forall o_9: Ref ::
          { invRecv15(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv15(o_9)) && NoPerm < arg_q) && qpRange15(o_9) ==> Seq#Index(xs1, invRecv15(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (performance.vpr@46.3--46.25) [175716]"}
        (forall i_10_1: int ::
        { Seq#Index(xs1, i_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1) } { Seq#Index(xs1, i_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1) ==> arg_q >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_10_1: int ::
          { Seq#Index(xs1, i_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1) } { Seq#Index(xs1, i_10_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1) && arg_q > NoPerm ==> Seq#Index(xs1, i_10_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv15(o_9)) && NoPerm < arg_q) && qpRange15(o_9) ==> (NoPerm < arg_q ==> Seq#Index(xs1, invRecv15(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv15(o_9)) && NoPerm < arg_q) && qpRange15(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: split(xs2, 1 / 2, 1 / 4) -- performance.vpr@47.3--47.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_1 := 1 / 2;
    arg_q_1 := 1 / 4;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 == 2 * (1 / 4) might not hold. (performance.vpr@47.3--47.23) [175717]"}
        arg_p_1 == real(2) * arg_q_1;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@47.3--47.23) [175718]"}
        NoPerm <= arg_p_1;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_11_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_5) && i_11_1 != j_5)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs2[i] != xs2[j] might not hold. (performance.vpr@47.3--47.23) [175719]"}
            Seq#Index(xs2, i_11_1) != Seq#Index(xs2, j_5);
        }
        assume false;
      }
      assume (forall i_12_1_1: int, j_6_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#Index(xs2, j_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#Index(xs2, j_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_6_1), Seq#Index(xs2, i_12_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_6_1), Seq#Index(xs2, i_12_1_1) } { Seq#Index(xs2, i_12_1_1), Seq#Index(xs2, j_6_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_12_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_6_1) && i_12_1_1 != j_6_1) ==> Seq#Index(xs2, i_12_1_1) != Seq#Index(xs2, j_6_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction 1 / 2 might be negative. (performance.vpr@47.3--47.23) [175720]"}
          (forall i_13_1: int ::
          { Seq#Index(xs2, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Index(xs2, i_13_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) && dummyFunction(Heap[Seq#Index(xs2, i_13_1), f_7]) ==> arg_p_1 >= NoPerm
        );
      
      // -- check if receiver xs2[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs2[i].f might not be injective. (performance.vpr@47.3--47.23) [175721]"}
          (forall i_13_1: int, i_13_2: int ::
          { neverTriggered16(i_13_1), neverTriggered16(i_13_2) }
          (((i_13_1 != i_13_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_2)) && NoPerm < arg_p_1) && NoPerm < arg_p_1 ==> Seq#Index(xs2, i_13_1) != Seq#Index(xs2, i_13_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs2[i].f (performance.vpr@47.3--47.23) [175722]"}
          (forall i_13_1: int ::
          { Seq#Index(xs2, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Index(xs2, i_13_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) ==> Mask[Seq#Index(xs2, i_13_1), f_7] >= arg_p_1
        );
      
      // -- assumptions for inverse of receiver xs2[i]
        assume (forall i_13_1: int ::
          { Seq#Index(xs2, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Index(xs2, i_13_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) && NoPerm < arg_p_1 ==> qpRange16(Seq#Index(xs2, i_13_1)) && invRecv16(Seq#Index(xs2, i_13_1)) == i_13_1
        );
        assume (forall o_9: Ref ::
          { invRecv16(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv16(o_9)) && (NoPerm < arg_p_1 && qpRange16(o_9)) ==> Seq#Index(xs2, invRecv16(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv16(o_9)) && (NoPerm < arg_p_1 && qpRange16(o_9)) ==> Seq#Index(xs2, invRecv16(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv16(o_9)) && (NoPerm < arg_p_1 && qpRange16(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@47.3--47.23) [175723]"}
        (forall i_14_1: int, i_14_2: int ::
        
        (((i_14_1 != i_14_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_2)) && NoPerm < arg_q_1) && NoPerm < arg_q_1 ==> Seq#Index(xs2, i_14_1) != Seq#Index(xs2, i_14_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_14_1: int ::
          { Seq#Index(xs2, i_14_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_14_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1) } { Seq#Index(xs2, i_14_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1) && NoPerm < arg_q_1 ==> qpRange17(Seq#Index(xs2, i_14_1)) && invRecv17(Seq#Index(xs2, i_14_1)) == i_14_1
        );
        assume (forall o_9: Ref ::
          { invRecv17(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv17(o_9)) && NoPerm < arg_q_1) && qpRange17(o_9) ==> Seq#Index(xs2, invRecv17(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@47.3--47.23) [175724]"}
        (forall i_14_1: int ::
        { Seq#Index(xs2, i_14_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_14_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1) } { Seq#Index(xs2, i_14_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1) ==> arg_q_1 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_14_1: int ::
          { Seq#Index(xs2, i_14_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_14_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1) } { Seq#Index(xs2, i_14_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1) && arg_q_1 > NoPerm ==> Seq#Index(xs2, i_14_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv17(o_9)) && NoPerm < arg_q_1) && qpRange17(o_9) ==> (NoPerm < arg_q_1 ==> Seq#Index(xs2, invRecv17(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv17(o_9)) && NoPerm < arg_q_1) && qpRange17(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@47.3--47.23) [175725]"}
        (forall i_15_1: int, i_15_2: int ::
        
        (((i_15_1 != i_15_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_2)) && NoPerm < arg_q_1) && NoPerm < arg_q_1 ==> Seq#Index(xs2, i_15_1) != Seq#Index(xs2, i_15_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_15_1: int ::
          { Seq#Index(xs2, i_15_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_15_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_1) } { Seq#Index(xs2, i_15_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_1) && NoPerm < arg_q_1 ==> qpRange18(Seq#Index(xs2, i_15_1)) && invRecv18(Seq#Index(xs2, i_15_1)) == i_15_1
        );
        assume (forall o_9: Ref ::
          { invRecv18(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv18(o_9)) && NoPerm < arg_q_1) && qpRange18(o_9) ==> Seq#Index(xs2, invRecv18(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@47.3--47.23) [175726]"}
        (forall i_15_1: int ::
        { Seq#Index(xs2, i_15_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_15_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_1) } { Seq#Index(xs2, i_15_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_1) ==> arg_q_1 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_15_1: int ::
          { Seq#Index(xs2, i_15_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_15_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_1) } { Seq#Index(xs2, i_15_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_1) && arg_q_1 > NoPerm ==> Seq#Index(xs2, i_15_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv18(o_9)) && NoPerm < arg_q_1) && qpRange18(o_9) ==> (NoPerm < arg_q_1 ==> Seq#Index(xs2, invRecv18(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv18(o_9)) && NoPerm < arg_q_1) && qpRange18(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: split(xs3, write, 1 / 2) -- performance.vpr@48.3--48.25
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_2 := FullPerm;
    arg_q_2 := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method split might not hold. Assertion write == 2 * (1 / 2) might not hold. (performance.vpr@48.3--48.25) [175727]"}
        arg_p_2 == real(2) * arg_q_2;
      assert {:msg "  The precondition of method split might not hold. Assertion write >= none might not hold. (performance.vpr@48.3--48.25) [175728]"}
        NoPerm <= arg_p_2;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_16_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_7_1) && i_16_1 != j_7_1)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs3[i] != xs3[j] might not hold. (performance.vpr@48.3--48.25) [175729]"}
            Seq#Index(xs3, i_16_1) != Seq#Index(xs3, j_7_1);
        }
        assume false;
      }
      assume (forall i_17_1_1: int, j_8_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#Index(xs3, j_8_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#Index(xs3, j_8_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_8_1), Seq#Index(xs3, i_17_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_8_1), Seq#Index(xs3, i_17_1_1) } { Seq#Index(xs3, i_17_1_1), Seq#Index(xs3, j_8_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_17_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_8_1) && i_17_1_1 != j_8_1) ==> Seq#Index(xs3, i_17_1_1) != Seq#Index(xs3, j_8_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction write might be negative. (performance.vpr@48.3--48.25) [175730]"}
          (forall i_18_1: int ::
          { Seq#Index(xs3, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Index(xs3, i_18_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) && dummyFunction(Heap[Seq#Index(xs3, i_18_1), f_7]) ==> arg_p_2 >= NoPerm
        );
      
      // -- check if receiver xs3[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs3[i].f might not be injective. (performance.vpr@48.3--48.25) [175731]"}
          (forall i_18_1: int, i_18_2: int ::
          { neverTriggered19(i_18_1), neverTriggered19(i_18_2) }
          (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_2)) && NoPerm < arg_p_2) && NoPerm < arg_p_2 ==> Seq#Index(xs3, i_18_1) != Seq#Index(xs3, i_18_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs3[i].f (performance.vpr@48.3--48.25) [175732]"}
          (forall i_18_1: int ::
          { Seq#Index(xs3, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Index(xs3, i_18_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) ==> Mask[Seq#Index(xs3, i_18_1), f_7] >= arg_p_2
        );
      
      // -- assumptions for inverse of receiver xs3[i]
        assume (forall i_18_1: int ::
          { Seq#Index(xs3, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Index(xs3, i_18_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) && NoPerm < arg_p_2 ==> qpRange19(Seq#Index(xs3, i_18_1)) && invRecv19(Seq#Index(xs3, i_18_1)) == i_18_1
        );
        assume (forall o_9: Ref ::
          { invRecv19(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv19(o_9)) && (NoPerm < arg_p_2 && qpRange19(o_9)) ==> Seq#Index(xs3, invRecv19(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv19(o_9)) && (NoPerm < arg_p_2 && qpRange19(o_9)) ==> Seq#Index(xs3, invRecv19(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_2) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv19(o_9)) && (NoPerm < arg_p_2 && qpRange19(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs3[i].f might not be injective. (performance.vpr@48.3--48.25) [175733]"}
        (forall i_19_1: int, i_19_2: int ::
        
        (((i_19_1 != i_19_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_2)) && NoPerm < arg_q_2) && NoPerm < arg_q_2 ==> Seq#Index(xs3, i_19_1) != Seq#Index(xs3, i_19_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_19_1: int ::
          { Seq#Index(xs3, i_19_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_19_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_1) } { Seq#Index(xs3, i_19_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_1) && NoPerm < arg_q_2 ==> qpRange20(Seq#Index(xs3, i_19_1)) && invRecv20(Seq#Index(xs3, i_19_1)) == i_19_1
        );
        assume (forall o_9: Ref ::
          { invRecv20(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv20(o_9)) && NoPerm < arg_q_2) && qpRange20(o_9) ==> Seq#Index(xs3, invRecv20(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (performance.vpr@48.3--48.25) [175734]"}
        (forall i_19_1: int ::
        { Seq#Index(xs3, i_19_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_19_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_1) } { Seq#Index(xs3, i_19_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_1) ==> arg_q_2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_19_1: int ::
          { Seq#Index(xs3, i_19_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_19_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_1) } { Seq#Index(xs3, i_19_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_1) && arg_q_2 > NoPerm ==> Seq#Index(xs3, i_19_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv20(o_9)) && NoPerm < arg_q_2) && qpRange20(o_9) ==> (NoPerm < arg_q_2 ==> Seq#Index(xs3, invRecv20(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q_2) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv20(o_9)) && NoPerm < arg_q_2) && qpRange20(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs3[i].f might not be injective. (performance.vpr@48.3--48.25) [175735]"}
        (forall i_20_2: int, i_20_3: int ::
        
        (((i_20_2 != i_20_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_3)) && NoPerm < arg_q_2) && NoPerm < arg_q_2 ==> Seq#Index(xs3, i_20_2) != Seq#Index(xs3, i_20_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_20_2: int ::
          { Seq#Index(xs3, i_20_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_20_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_2) } { Seq#Index(xs3, i_20_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_2) && NoPerm < arg_q_2 ==> qpRange21(Seq#Index(xs3, i_20_2)) && invRecv21(Seq#Index(xs3, i_20_2)) == i_20_2
        );
        assume (forall o_9: Ref ::
          { invRecv21(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv21(o_9)) && NoPerm < arg_q_2) && qpRange21(o_9) ==> Seq#Index(xs3, invRecv21(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (performance.vpr@48.3--48.25) [175736]"}
        (forall i_20_2: int ::
        { Seq#Index(xs3, i_20_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_20_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_2) } { Seq#Index(xs3, i_20_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_2) ==> arg_q_2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_20_2: int ::
          { Seq#Index(xs3, i_20_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_20_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_2) } { Seq#Index(xs3, i_20_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_2) && arg_q_2 > NoPerm ==> Seq#Index(xs3, i_20_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv21(o_9)) && NoPerm < arg_q_2) && qpRange21(o_9) ==> (NoPerm < arg_q_2 ==> Seq#Index(xs3, invRecv21(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q_2) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv21(o_9)) && NoPerm < arg_q_2) && qpRange21(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs1, 1 / 2) -- performance.vpr@50.3--50.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_3 := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@50.3--50.17) [175737]"}
        NoPerm <= arg_p_3;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_21_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_9_1) && i_21_1 != j_9_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@50.3--50.17) [175738]"}
            Seq#Index(xs1, i_21_1) != Seq#Index(xs1, j_9_1);
        }
        assume false;
      }
      assume (forall i_22_1_1: int, j_10_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#Index(xs1, j_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#Index(xs1, j_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_10_1), Seq#Index(xs1, i_22_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_10_1), Seq#Index(xs1, i_22_1_1) } { Seq#Index(xs1, i_22_1_1), Seq#Index(xs1, j_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_22_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_10_1) && i_22_1_1 != j_10_1) ==> Seq#Index(xs1, i_22_1_1) != Seq#Index(xs1, j_10_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 2 might be negative. (performance.vpr@50.3--50.17) [175739]"}
          (forall i_23_1: int ::
          { Seq#Index(xs1, i_23_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_23_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_1) } { Seq#Index(xs1, i_23_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_1) && dummyFunction(Heap[Seq#Index(xs1, i_23_1), f_7]) ==> arg_p_3 >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@50.3--50.17) [175740]"}
          (forall i_23_1: int, i_23_2: int ::
          { neverTriggered22(i_23_1), neverTriggered22(i_23_2) }
          (((i_23_1 != i_23_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_2)) && NoPerm < arg_p_3) && NoPerm < arg_p_3 ==> Seq#Index(xs1, i_23_1) != Seq#Index(xs1, i_23_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@50.3--50.17) [175741]"}
          (forall i_23_1: int ::
          { Seq#Index(xs1, i_23_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_23_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_1) } { Seq#Index(xs1, i_23_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_1) ==> Mask[Seq#Index(xs1, i_23_1), f_7] >= arg_p_3
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_23_1: int ::
          { Seq#Index(xs1, i_23_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_23_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_1) } { Seq#Index(xs1, i_23_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_1) && NoPerm < arg_p_3 ==> qpRange22(Seq#Index(xs1, i_23_1)) && invRecv22(Seq#Index(xs1, i_23_1)) == i_23_1
        );
        assume (forall o_9: Ref ::
          { invRecv22(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv22(o_9)) && (NoPerm < arg_p_3 && qpRange22(o_9)) ==> Seq#Index(xs1, invRecv22(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv22(o_9)) && (NoPerm < arg_p_3 && qpRange22(o_9)) ==> Seq#Index(xs1, invRecv22(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_3) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv22(o_9)) && (NoPerm < arg_p_3 && qpRange22(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs2, 1 / 2) -- performance.vpr@51.3--51.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_4 := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@51.3--51.17) [175742]"}
        NoPerm <= arg_p_4;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_24_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_11_1) && i_24_1 != j_11_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs2[i] != xs2[j] might not hold. (performance.vpr@51.3--51.17) [175743]"}
            Seq#Index(xs2, i_24_1) != Seq#Index(xs2, j_11_1);
        }
        assume false;
      }
      assume (forall i_25_1_1: int, j_12_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_25_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_25_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_25_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_25_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_25_1_1), Seq#Index(xs2, j_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_25_1_1), Seq#Index(xs2, j_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_12_1), Seq#Index(xs2, i_25_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_12_1), Seq#Index(xs2, i_25_1_1) } { Seq#Index(xs2, i_25_1_1), Seq#Index(xs2, j_12_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_25_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_12_1) && i_25_1_1 != j_12_1) ==> Seq#Index(xs2, i_25_1_1) != Seq#Index(xs2, j_12_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 2 might be negative. (performance.vpr@51.3--51.17) [175744]"}
          (forall i_26_1: int ::
          { Seq#Index(xs2, i_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_1) } { Seq#Index(xs2, i_26_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_1) && dummyFunction(Heap[Seq#Index(xs2, i_26_1), f_7]) ==> arg_p_4 >= NoPerm
        );
      
      // -- check if receiver xs2[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs2[i].f might not be injective. (performance.vpr@51.3--51.17) [175745]"}
          (forall i_26_1: int, i_26_2: int ::
          { neverTriggered23(i_26_1), neverTriggered23(i_26_2) }
          (((i_26_1 != i_26_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_2)) && NoPerm < arg_p_4) && NoPerm < arg_p_4 ==> Seq#Index(xs2, i_26_1) != Seq#Index(xs2, i_26_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs2[i].f (performance.vpr@51.3--51.17) [175746]"}
          (forall i_26_1: int ::
          { Seq#Index(xs2, i_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_1) } { Seq#Index(xs2, i_26_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_1) ==> Mask[Seq#Index(xs2, i_26_1), f_7] >= arg_p_4
        );
      
      // -- assumptions for inverse of receiver xs2[i]
        assume (forall i_26_1: int ::
          { Seq#Index(xs2, i_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_1) } { Seq#Index(xs2, i_26_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_1) && NoPerm < arg_p_4 ==> qpRange23(Seq#Index(xs2, i_26_1)) && invRecv23(Seq#Index(xs2, i_26_1)) == i_26_1
        );
        assume (forall o_9: Ref ::
          { invRecv23(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv23(o_9)) && (NoPerm < arg_p_4 && qpRange23(o_9)) ==> Seq#Index(xs2, invRecv23(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv23(o_9)) && (NoPerm < arg_p_4 && qpRange23(o_9)) ==> Seq#Index(xs2, invRecv23(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_4) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv23(o_9)) && (NoPerm < arg_p_4 && qpRange23(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs3, 1 / 3) -- performance.vpr@52.3--52.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_5 := 1 / 3;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 3 >= none might not hold. (performance.vpr@52.3--52.17) [175747]"}
        NoPerm <= arg_p_5;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_27_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_13_2) && i_27_2 != j_13_2)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs3[i] != xs3[j] might not hold. (performance.vpr@52.3--52.17) [175748]"}
            Seq#Index(xs3, i_27_2) != Seq#Index(xs3, j_13_2);
        }
        assume false;
      }
      assume (forall i_28_1: int, j_14_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_28_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_14_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_28_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_14_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_28_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_14_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_28_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_14_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_28_1), Seq#Index(xs3, j_14_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_28_1), Seq#Index(xs3, j_14_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_14_1), Seq#Index(xs3, i_28_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_14_1), Seq#Index(xs3, i_28_1) } { Seq#Index(xs3, i_28_1), Seq#Index(xs3, j_14_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_28_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_14_1) && i_28_1 != j_14_1) ==> Seq#Index(xs3, i_28_1) != Seq#Index(xs3, j_14_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 3 might be negative. (performance.vpr@52.3--52.17) [175749]"}
          (forall i_29: int ::
          { Seq#Index(xs3, i_29) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_29) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29) } { Seq#Index(xs3, i_29) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29) && dummyFunction(Heap[Seq#Index(xs3, i_29), f_7]) ==> arg_p_5 >= NoPerm
        );
      
      // -- check if receiver xs3[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs3[i].f might not be injective. (performance.vpr@52.3--52.17) [175750]"}
          (forall i_29: int, i_29_2: int ::
          { neverTriggered24(i_29), neverTriggered24(i_29_2) }
          (((i_29 != i_29_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_2)) && NoPerm < arg_p_5) && NoPerm < arg_p_5 ==> Seq#Index(xs3, i_29) != Seq#Index(xs3, i_29_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs3[i].f (performance.vpr@52.3--52.17) [175751]"}
          (forall i_29: int ::
          { Seq#Index(xs3, i_29) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_29) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29) } { Seq#Index(xs3, i_29) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29) ==> Mask[Seq#Index(xs3, i_29), f_7] >= arg_p_5
        );
      
      // -- assumptions for inverse of receiver xs3[i]
        assume (forall i_29: int ::
          { Seq#Index(xs3, i_29) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_29) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29) } { Seq#Index(xs3, i_29) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29) && NoPerm < arg_p_5 ==> qpRange24(Seq#Index(xs3, i_29)) && invRecv24(Seq#Index(xs3, i_29)) == i_29
        );
        assume (forall o_9: Ref ::
          { invRecv24(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv24(o_9)) && (NoPerm < arg_p_5 && qpRange24(o_9)) ==> Seq#Index(xs3, invRecv24(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv24(o_9)) && (NoPerm < arg_p_5 && qpRange24(o_9)) ==> Seq#Index(xs3, invRecv24(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_5) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv24(o_9)) && (NoPerm < arg_p_5 && qpRange24(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: split(xs1, 1 / 2, 1 / 4) -- performance.vpr@56.3--56.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_6 := 1 / 2;
    arg_q_3 := 1 / 4;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 == 2 * (1 / 4) might not hold. (performance.vpr@56.3--56.23) [175752]"}
        arg_p_6 == real(2) * arg_q_3;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@56.3--56.23) [175753]"}
        NoPerm <= arg_p_6;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_30) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_15_2) && i_30 != j_15_2)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@56.3--56.23) [175754]"}
            Seq#Index(xs1, i_30) != Seq#Index(xs1, j_15_2);
        }
        assume false;
      }
      assume (forall i_31_1: int, j_16_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_31_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_16_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_31_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_16_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_31_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_16_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_31_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_16_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_31_1), Seq#Index(xs1, j_16_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_31_1), Seq#Index(xs1, j_16_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_16_1_1), Seq#Index(xs1, i_31_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_16_1_1), Seq#Index(xs1, i_31_1) } { Seq#Index(xs1, i_31_1), Seq#Index(xs1, j_16_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_31_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_16_1_1) && i_31_1 != j_16_1_1) ==> Seq#Index(xs1, i_31_1) != Seq#Index(xs1, j_16_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction 1 / 2 might be negative. (performance.vpr@56.3--56.23) [175755]"}
          (forall i_32: int ::
          { Seq#Index(xs1, i_32) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_32) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32) } { Seq#Index(xs1, i_32) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32) && dummyFunction(Heap[Seq#Index(xs1, i_32), f_7]) ==> arg_p_6 >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@56.3--56.23) [175756]"}
          (forall i_32: int, i_32_1: int ::
          { neverTriggered25(i_32), neverTriggered25(i_32_1) }
          (((i_32 != i_32_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_1)) && NoPerm < arg_p_6) && NoPerm < arg_p_6 ==> Seq#Index(xs1, i_32) != Seq#Index(xs1, i_32_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@56.3--56.23) [175757]"}
          (forall i_32: int ::
          { Seq#Index(xs1, i_32) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_32) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32) } { Seq#Index(xs1, i_32) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32) ==> Mask[Seq#Index(xs1, i_32), f_7] >= arg_p_6
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_32: int ::
          { Seq#Index(xs1, i_32) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_32) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32) } { Seq#Index(xs1, i_32) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32) && NoPerm < arg_p_6 ==> qpRange25(Seq#Index(xs1, i_32)) && invRecv25(Seq#Index(xs1, i_32)) == i_32
        );
        assume (forall o_9: Ref ::
          { invRecv25(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv25(o_9)) && (NoPerm < arg_p_6 && qpRange25(o_9)) ==> Seq#Index(xs1, invRecv25(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv25(o_9)) && (NoPerm < arg_p_6 && qpRange25(o_9)) ==> Seq#Index(xs1, invRecv25(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_6) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv25(o_9)) && (NoPerm < arg_p_6 && qpRange25(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@56.3--56.23) [175758]"}
        (forall i_33: int, i_33_2: int ::
        
        (((i_33 != i_33_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_2)) && NoPerm < arg_q_3) && NoPerm < arg_q_3 ==> Seq#Index(xs1, i_33) != Seq#Index(xs1, i_33_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_33: int ::
          { Seq#Index(xs1, i_33) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_33) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33) } { Seq#Index(xs1, i_33) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33) && NoPerm < arg_q_3 ==> qpRange26(Seq#Index(xs1, i_33)) && invRecv26(Seq#Index(xs1, i_33)) == i_33
        );
        assume (forall o_9: Ref ::
          { invRecv26(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv26(o_9)) && NoPerm < arg_q_3) && qpRange26(o_9) ==> Seq#Index(xs1, invRecv26(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@56.3--56.23) [175759]"}
        (forall i_33: int ::
        { Seq#Index(xs1, i_33) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_33) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33) } { Seq#Index(xs1, i_33) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33) ==> arg_q_3 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_33: int ::
          { Seq#Index(xs1, i_33) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_33) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33) } { Seq#Index(xs1, i_33) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33) && arg_q_3 > NoPerm ==> Seq#Index(xs1, i_33) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv26(o_9)) && NoPerm < arg_q_3) && qpRange26(o_9) ==> (NoPerm < arg_q_3 ==> Seq#Index(xs1, invRecv26(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q_3) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv26(o_9)) && NoPerm < arg_q_3) && qpRange26(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@56.3--56.23) [175760]"}
        (forall i_34: int, i_34_2: int ::
        
        (((i_34 != i_34_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_2)) && NoPerm < arg_q_3) && NoPerm < arg_q_3 ==> Seq#Index(xs1, i_34) != Seq#Index(xs1, i_34_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_34: int ::
          { Seq#Index(xs1, i_34) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_34) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34) } { Seq#Index(xs1, i_34) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34) && NoPerm < arg_q_3 ==> qpRange27(Seq#Index(xs1, i_34)) && invRecv27(Seq#Index(xs1, i_34)) == i_34
        );
        assume (forall o_9: Ref ::
          { invRecv27(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv27(o_9)) && NoPerm < arg_q_3) && qpRange27(o_9) ==> Seq#Index(xs1, invRecv27(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@56.3--56.23) [175761]"}
        (forall i_34: int ::
        { Seq#Index(xs1, i_34) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_34) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34) } { Seq#Index(xs1, i_34) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34) ==> arg_q_3 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_34: int ::
          { Seq#Index(xs1, i_34) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_34) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34) } { Seq#Index(xs1, i_34) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34) && arg_q_3 > NoPerm ==> Seq#Index(xs1, i_34) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv27(o_9)) && NoPerm < arg_q_3) && qpRange27(o_9) ==> (NoPerm < arg_q_3 ==> Seq#Index(xs1, invRecv27(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q_3) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv27(o_9)) && NoPerm < arg_q_3) && qpRange27(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs1, 1 / 4) -- performance.vpr@57.3--57.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_7 := 1 / 4;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 4 >= none might not hold. (performance.vpr@57.3--57.17) [175762]"}
        NoPerm <= arg_p_7;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_35) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_17_2) && i_35 != j_17_2)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@57.3--57.17) [175763]"}
            Seq#Index(xs1, i_35) != Seq#Index(xs1, j_17_2);
        }
        assume false;
      }
      assume (forall i_36_1: int, j_18_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#Index(xs1, j_18_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#Index(xs1, j_18_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_18_1_1), Seq#Index(xs1, i_36_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_18_1_1), Seq#Index(xs1, i_36_1) } { Seq#Index(xs1, i_36_1), Seq#Index(xs1, j_18_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_36_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) && i_36_1 != j_18_1_1) ==> Seq#Index(xs1, i_36_1) != Seq#Index(xs1, j_18_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 4 might be negative. (performance.vpr@57.3--57.17) [175764]"}
          (forall i_37: int ::
          { Seq#Index(xs1, i_37) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Index(xs1, i_37) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) && dummyFunction(Heap[Seq#Index(xs1, i_37), f_7]) ==> arg_p_7 >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@57.3--57.17) [175765]"}
          (forall i_37: int, i_37_1: int ::
          { neverTriggered28(i_37), neverTriggered28(i_37_1) }
          (((i_37 != i_37_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37_1)) && NoPerm < arg_p_7) && NoPerm < arg_p_7 ==> Seq#Index(xs1, i_37) != Seq#Index(xs1, i_37_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@57.3--57.17) [175766]"}
          (forall i_37: int ::
          { Seq#Index(xs1, i_37) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Index(xs1, i_37) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) ==> Mask[Seq#Index(xs1, i_37), f_7] >= arg_p_7
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_37: int ::
          { Seq#Index(xs1, i_37) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Index(xs1, i_37) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) && NoPerm < arg_p_7 ==> qpRange28(Seq#Index(xs1, i_37)) && invRecv28(Seq#Index(xs1, i_37)) == i_37
        );
        assume (forall o_9: Ref ::
          { invRecv28(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv28(o_9)) && (NoPerm < arg_p_7 && qpRange28(o_9)) ==> Seq#Index(xs1, invRecv28(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv28(o_9)) && (NoPerm < arg_p_7 && qpRange28(o_9)) ==> Seq#Index(xs1, invRecv28(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_7) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv28(o_9)) && (NoPerm < arg_p_7 && qpRange28(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs3, 1 / 3) -- performance.vpr@58.3--58.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_8 := 1 / 3;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 3 >= none might not hold. (performance.vpr@58.3--58.17) [175767]"}
        NoPerm <= arg_p_8;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_38) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_19_2) && i_38 != j_19_2)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs3[i] != xs3[j] might not hold. (performance.vpr@58.3--58.17) [175768]"}
            Seq#Index(xs3, i_38) != Seq#Index(xs3, j_19_2);
        }
        assume false;
      }
      assume (forall i_39_1_1: int, j_20_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#Index(xs3, j_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#Index(xs3, j_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_20_1), Seq#Index(xs3, i_39_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_20_1), Seq#Index(xs3, i_39_1_1) } { Seq#Index(xs3, i_39_1_1), Seq#Index(xs3, j_20_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_39_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_20_1) && i_39_1_1 != j_20_1) ==> Seq#Index(xs3, i_39_1_1) != Seq#Index(xs3, j_20_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 3 might be negative. (performance.vpr@58.3--58.17) [175769]"}
          (forall i_40: int ::
          { Seq#Index(xs3, i_40) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Index(xs3, i_40) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) && dummyFunction(Heap[Seq#Index(xs3, i_40), f_7]) ==> arg_p_8 >= NoPerm
        );
      
      // -- check if receiver xs3[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs3[i].f might not be injective. (performance.vpr@58.3--58.17) [175770]"}
          (forall i_40: int, i_40_2: int ::
          { neverTriggered29(i_40), neverTriggered29(i_40_2) }
          (((i_40 != i_40_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40_2)) && NoPerm < arg_p_8) && NoPerm < arg_p_8 ==> Seq#Index(xs3, i_40) != Seq#Index(xs3, i_40_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs3[i].f (performance.vpr@58.3--58.17) [175771]"}
          (forall i_40: int ::
          { Seq#Index(xs3, i_40) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Index(xs3, i_40) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) ==> Mask[Seq#Index(xs3, i_40), f_7] >= arg_p_8
        );
      
      // -- assumptions for inverse of receiver xs3[i]
        assume (forall i_40: int ::
          { Seq#Index(xs3, i_40) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Index(xs3, i_40) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) && NoPerm < arg_p_8 ==> qpRange29(Seq#Index(xs3, i_40)) && invRecv29(Seq#Index(xs3, i_40)) == i_40
        );
        assume (forall o_9: Ref ::
          { invRecv29(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv29(o_9)) && (NoPerm < arg_p_8 && qpRange29(o_9)) ==> Seq#Index(xs3, invRecv29(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv29(o_9)) && (NoPerm < arg_p_8 && qpRange29(o_9)) ==> Seq#Index(xs3, invRecv29(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_8) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv29(o_9)) && (NoPerm < arg_p_8 && qpRange29(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: split(xs2, 1 / 2, 1 / 4) -- performance.vpr@62.3--62.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_9 := 1 / 2;
    arg_q_4 := 1 / 4;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 == 2 * (1 / 4) might not hold. (performance.vpr@62.3--62.23) [175772]"}
        arg_p_9 == real(2) * arg_q_4;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@62.3--62.23) [175773]"}
        NoPerm <= arg_p_9;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_41) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_21_1) && i_41 != j_21_1)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs2[i] != xs2[j] might not hold. (performance.vpr@62.3--62.23) [175774]"}
            Seq#Index(xs2, i_41) != Seq#Index(xs2, j_21_1);
        }
        assume false;
      }
      assume (forall i_42_1_1: int, j_22_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_42_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_22_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_42_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_22_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_42_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_22_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_42_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_22_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_42_1_1), Seq#Index(xs2, j_22_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_42_1_1), Seq#Index(xs2, j_22_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_22_1_1), Seq#Index(xs2, i_42_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_22_1_1), Seq#Index(xs2, i_42_1_1) } { Seq#Index(xs2, i_42_1_1), Seq#Index(xs2, j_22_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_42_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_22_1_1) && i_42_1_1 != j_22_1_1) ==> Seq#Index(xs2, i_42_1_1) != Seq#Index(xs2, j_22_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction 1 / 2 might be negative. (performance.vpr@62.3--62.23) [175775]"}
          (forall i_43: int ::
          { Seq#Index(xs2, i_43) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_43) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43) } { Seq#Index(xs2, i_43) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43) && dummyFunction(Heap[Seq#Index(xs2, i_43), f_7]) ==> arg_p_9 >= NoPerm
        );
      
      // -- check if receiver xs2[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs2[i].f might not be injective. (performance.vpr@62.3--62.23) [175776]"}
          (forall i_43: int, i_43_1: int ::
          { neverTriggered30(i_43), neverTriggered30(i_43_1) }
          (((i_43 != i_43_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_1)) && NoPerm < arg_p_9) && NoPerm < arg_p_9 ==> Seq#Index(xs2, i_43) != Seq#Index(xs2, i_43_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs2[i].f (performance.vpr@62.3--62.23) [175777]"}
          (forall i_43: int ::
          { Seq#Index(xs2, i_43) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_43) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43) } { Seq#Index(xs2, i_43) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43) ==> Mask[Seq#Index(xs2, i_43), f_7] >= arg_p_9
        );
      
      // -- assumptions for inverse of receiver xs2[i]
        assume (forall i_43: int ::
          { Seq#Index(xs2, i_43) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_43) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43) } { Seq#Index(xs2, i_43) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43) && NoPerm < arg_p_9 ==> qpRange30(Seq#Index(xs2, i_43)) && invRecv30(Seq#Index(xs2, i_43)) == i_43
        );
        assume (forall o_9: Ref ::
          { invRecv30(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv30(o_9)) && (NoPerm < arg_p_9 && qpRange30(o_9)) ==> Seq#Index(xs2, invRecv30(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv30(o_9)) && (NoPerm < arg_p_9 && qpRange30(o_9)) ==> Seq#Index(xs2, invRecv30(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_9) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv30(o_9)) && (NoPerm < arg_p_9 && qpRange30(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@62.3--62.23) [175778]"}
        (forall i_44: int, i_44_1: int ::
        
        (((i_44 != i_44_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44_1)) && NoPerm < arg_q_4) && NoPerm < arg_q_4 ==> Seq#Index(xs2, i_44) != Seq#Index(xs2, i_44_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_44: int ::
          { Seq#Index(xs2, i_44) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_44) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44) } { Seq#Index(xs2, i_44) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44) && NoPerm < arg_q_4 ==> qpRange31(Seq#Index(xs2, i_44)) && invRecv31(Seq#Index(xs2, i_44)) == i_44
        );
        assume (forall o_9: Ref ::
          { invRecv31(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv31(o_9)) && NoPerm < arg_q_4) && qpRange31(o_9) ==> Seq#Index(xs2, invRecv31(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@62.3--62.23) [175779]"}
        (forall i_44: int ::
        { Seq#Index(xs2, i_44) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_44) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44) } { Seq#Index(xs2, i_44) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44) ==> arg_q_4 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_44: int ::
          { Seq#Index(xs2, i_44) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_44) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44) } { Seq#Index(xs2, i_44) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44) && arg_q_4 > NoPerm ==> Seq#Index(xs2, i_44) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv31(o_9)) && NoPerm < arg_q_4) && qpRange31(o_9) ==> (NoPerm < arg_q_4 ==> Seq#Index(xs2, invRecv31(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q_4) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv31(o_9)) && NoPerm < arg_q_4) && qpRange31(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@62.3--62.23) [175780]"}
        (forall i_45: int, i_45_2: int ::
        
        (((i_45 != i_45_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_2)) && NoPerm < arg_q_4) && NoPerm < arg_q_4 ==> Seq#Index(xs2, i_45) != Seq#Index(xs2, i_45_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_45: int ::
          { Seq#Index(xs2, i_45) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_45) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45) } { Seq#Index(xs2, i_45) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45) && NoPerm < arg_q_4 ==> qpRange32(Seq#Index(xs2, i_45)) && invRecv32(Seq#Index(xs2, i_45)) == i_45
        );
        assume (forall o_9: Ref ::
          { invRecv32(o_9) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv32(o_9)) && NoPerm < arg_q_4) && qpRange32(o_9) ==> Seq#Index(xs2, invRecv32(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@62.3--62.23) [175781]"}
        (forall i_45: int ::
        { Seq#Index(xs2, i_45) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_45) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45) } { Seq#Index(xs2, i_45) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45) ==> arg_q_4 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_45: int ::
          { Seq#Index(xs2, i_45) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_45) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45) } { Seq#Index(xs2, i_45) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45) && arg_q_4 > NoPerm ==> Seq#Index(xs2, i_45) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv32(o_9)) && NoPerm < arg_q_4) && qpRange32(o_9) ==> (NoPerm < arg_q_4 ==> Seq#Index(xs2, invRecv32(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_q_4) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv32(o_9)) && NoPerm < arg_q_4) && qpRange32(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs1, 1 / 4) -- performance.vpr@63.3--63.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_10 := 1 / 4;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 4 >= none might not hold. (performance.vpr@63.3--63.17) [175782]"}
        NoPerm <= arg_p_10;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_46) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_23_1) && i_46 != j_23_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@63.3--63.17) [175783]"}
            Seq#Index(xs1, i_46) != Seq#Index(xs1, j_23_1);
        }
        assume false;
      }
      assume (forall i_47_1: int, j_24_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_24_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_24_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_24_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_24_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#Index(xs1, j_24_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#Index(xs1, j_24_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_24_1_1), Seq#Index(xs1, i_47_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_24_1_1), Seq#Index(xs1, i_47_1) } { Seq#Index(xs1, i_47_1), Seq#Index(xs1, j_24_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_47_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_24_1_1) && i_47_1 != j_24_1_1) ==> Seq#Index(xs1, i_47_1) != Seq#Index(xs1, j_24_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 4 might be negative. (performance.vpr@63.3--63.17) [175784]"}
          (forall i_48: int ::
          { Seq#Index(xs1, i_48) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_48) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48) } { Seq#Index(xs1, i_48) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48) && dummyFunction(Heap[Seq#Index(xs1, i_48), f_7]) ==> arg_p_10 >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@63.3--63.17) [175785]"}
          (forall i_48: int, i_48_2: int ::
          { neverTriggered33(i_48), neverTriggered33(i_48_2) }
          (((i_48 != i_48_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_2)) && NoPerm < arg_p_10) && NoPerm < arg_p_10 ==> Seq#Index(xs1, i_48) != Seq#Index(xs1, i_48_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@63.3--63.17) [175786]"}
          (forall i_48: int ::
          { Seq#Index(xs1, i_48) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_48) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48) } { Seq#Index(xs1, i_48) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48) ==> Mask[Seq#Index(xs1, i_48), f_7] >= arg_p_10
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_48: int ::
          { Seq#Index(xs1, i_48) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_48) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48) } { Seq#Index(xs1, i_48) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48) && NoPerm < arg_p_10 ==> qpRange33(Seq#Index(xs1, i_48)) && invRecv33(Seq#Index(xs1, i_48)) == i_48
        );
        assume (forall o_9: Ref ::
          { invRecv33(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv33(o_9)) && (NoPerm < arg_p_10 && qpRange33(o_9)) ==> Seq#Index(xs1, invRecv33(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv33(o_9)) && (NoPerm < arg_p_10 && qpRange33(o_9)) ==> Seq#Index(xs1, invRecv33(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_10) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv33(o_9)) && (NoPerm < arg_p_10 && qpRange33(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs3, 1 / 3) -- performance.vpr@67.3--67.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_11 := 1 / 3;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 3 >= none might not hold. (performance.vpr@67.3--67.17) [175787]"}
        NoPerm <= arg_p_11;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_49) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_25_2) && i_49 != j_25_2)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs3[i] != xs3[j] might not hold. (performance.vpr@67.3--67.17) [175788]"}
            Seq#Index(xs3, i_49) != Seq#Index(xs3, j_25_2);
        }
        assume false;
      }
      assume (forall i_50_1: int, j_26_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_50_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_50_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_50_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_50_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_50_1), Seq#Index(xs3, j_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_50_1), Seq#Index(xs3, j_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_26_1), Seq#Index(xs3, i_50_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_26_1), Seq#Index(xs3, i_50_1) } { Seq#Index(xs3, i_50_1), Seq#Index(xs3, j_26_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_50_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_26_1) && i_50_1 != j_26_1) ==> Seq#Index(xs3, i_50_1) != Seq#Index(xs3, j_26_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 3 might be negative. (performance.vpr@67.3--67.17) [175789]"}
          (forall i_51_2: int ::
          { Seq#Index(xs3, i_51_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_51_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_2) } { Seq#Index(xs3, i_51_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_2) && dummyFunction(Heap[Seq#Index(xs3, i_51_2), f_7]) ==> arg_p_11 >= NoPerm
        );
      
      // -- check if receiver xs3[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs3[i].f might not be injective. (performance.vpr@67.3--67.17) [175790]"}
          (forall i_51_2: int, i_51_3: int ::
          { neverTriggered34(i_51_2), neverTriggered34(i_51_3) }
          (((i_51_2 != i_51_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_3)) && NoPerm < arg_p_11) && NoPerm < arg_p_11 ==> Seq#Index(xs3, i_51_2) != Seq#Index(xs3, i_51_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs3[i].f (performance.vpr@67.3--67.17) [175791]"}
          (forall i_51_2: int ::
          { Seq#Index(xs3, i_51_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_51_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_2) } { Seq#Index(xs3, i_51_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_2) ==> Mask[Seq#Index(xs3, i_51_2), f_7] >= arg_p_11
        );
      
      // -- assumptions for inverse of receiver xs3[i]
        assume (forall i_51_2: int ::
          { Seq#Index(xs3, i_51_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_51_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_2) } { Seq#Index(xs3, i_51_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_2) && NoPerm < arg_p_11 ==> qpRange34(Seq#Index(xs3, i_51_2)) && invRecv34(Seq#Index(xs3, i_51_2)) == i_51_2
        );
        assume (forall o_9: Ref ::
          { invRecv34(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv34(o_9)) && (NoPerm < arg_p_11 && qpRange34(o_9)) ==> Seq#Index(xs3, invRecv34(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv34(o_9)) && (NoPerm < arg_p_11 && qpRange34(o_9)) ==> Seq#Index(xs3, invRecv34(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_11) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv34(o_9)) && (NoPerm < arg_p_11 && qpRange34(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs2, 1 / 2) -- performance.vpr@68.3--68.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_12 := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@68.3--68.17) [175792]"}
        NoPerm <= arg_p_12;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_52) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_27_2) && i_52 != j_27_2)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs2[i] != xs2[j] might not hold. (performance.vpr@68.3--68.17) [175793]"}
            Seq#Index(xs2, i_52) != Seq#Index(xs2, j_27_2);
        }
        assume false;
      }
      assume (forall i_53_1: int, j_28_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_53_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_28_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_53_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_28_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_53_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_28_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_53_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_28_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_53_1), Seq#Index(xs2, j_28_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_53_1), Seq#Index(xs2, j_28_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_28_1), Seq#Index(xs2, i_53_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_28_1), Seq#Index(xs2, i_53_1) } { Seq#Index(xs2, i_53_1), Seq#Index(xs2, j_28_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_53_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_28_1) && i_53_1 != j_28_1) ==> Seq#Index(xs2, i_53_1) != Seq#Index(xs2, j_28_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 2 might be negative. (performance.vpr@68.3--68.17) [175794]"}
          (forall i_54: int ::
          { Seq#Index(xs2, i_54) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_54) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54) } { Seq#Index(xs2, i_54) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54) && dummyFunction(Heap[Seq#Index(xs2, i_54), f_7]) ==> arg_p_12 >= NoPerm
        );
      
      // -- check if receiver xs2[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs2[i].f might not be injective. (performance.vpr@68.3--68.17) [175795]"}
          (forall i_54: int, i_54_1: int ::
          { neverTriggered35(i_54), neverTriggered35(i_54_1) }
          (((i_54 != i_54_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_1)) && NoPerm < arg_p_12) && NoPerm < arg_p_12 ==> Seq#Index(xs2, i_54) != Seq#Index(xs2, i_54_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs2[i].f (performance.vpr@68.3--68.17) [175796]"}
          (forall i_54: int ::
          { Seq#Index(xs2, i_54) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_54) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54) } { Seq#Index(xs2, i_54) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54) ==> Mask[Seq#Index(xs2, i_54), f_7] >= arg_p_12
        );
      
      // -- assumptions for inverse of receiver xs2[i]
        assume (forall i_54: int ::
          { Seq#Index(xs2, i_54) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_54) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54) } { Seq#Index(xs2, i_54) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54) && NoPerm < arg_p_12 ==> qpRange35(Seq#Index(xs2, i_54)) && invRecv35(Seq#Index(xs2, i_54)) == i_54
        );
        assume (forall o_9: Ref ::
          { invRecv35(o_9) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv35(o_9)) && (NoPerm < arg_p_12 && qpRange35(o_9)) ==> Seq#Index(xs2, invRecv35(o_9)) == o_9
        );
      
      // -- assume permission updates for field f
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv35(o_9)) && (NoPerm < arg_p_12 && qpRange35(o_9)) ==> Seq#Index(xs2, invRecv35(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_12) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv35(o_9)) && (NoPerm < arg_p_12 && qpRange35(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}