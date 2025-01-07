// 
// Translation of Viper program.
// 
// Date:         2025-01-07 13:59:54
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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
function  neverTriggered2(i_6_1: int): bool;
function  neverTriggered3(i_10_1: int): bool;
function  neverTriggered4(i_3: int): bool;
function  neverTriggered5(i_3: int): bool;
function  neverTriggered6(i_5: int): bool;
function  neverTriggered7(i_7_1: int): bool;
function  neverTriggered8(i_8_2: int): bool;
function  neverTriggered9(i_9_1: int): bool;
function  neverTriggered10(i_1: int): bool;
function  neverTriggered11(i_3: int): bool;
function  neverTriggered12(i_5: int): bool;
function  neverTriggered13(i_8_2: int): bool;
function  neverTriggered14(i_9_1: int): bool;
function  neverTriggered15(i_10_1: int): bool;
function  neverTriggered16(i_13_1: int): bool;
function  neverTriggered17(i_14_1: int): bool;
function  neverTriggered18(i_15: int): bool;
function  neverTriggered19(i_18_1: int): bool;
function  neverTriggered20(i_19: int): bool;
function  neverTriggered21(i_20_1: int): bool;
function  neverTriggered22(i_23: int): bool;
function  neverTriggered23(i_26: int): bool;
function  neverTriggered24(i_29_1: int): bool;
function  neverTriggered25(i_32_2: int): bool;
function  neverTriggered26(i_33_1: int): bool;
function  neverTriggered27(i_34_2: int): bool;
function  neverTriggered28(i_37: int): bool;
function  neverTriggered29(i_40: int): bool;
function  neverTriggered30(i_43_2: int): bool;
function  neverTriggered31(i_44: int): bool;
function  neverTriggered32(i_45_2: int): bool;
function  neverTriggered33(i_48_2: int): bool;
function  neverTriggered34(i_51: int): bool;
function  neverTriggered35(i_54_1: int): bool;
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var QPMask: MaskType;
  var i_4: int;
  var j_6: int;
  var i_6: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_4_1: int;
  var j_2_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_14) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5) && i_14 != j_5)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@7.11--7.97) [69155]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@7.11--7.97) [69156]"}
            i_14 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (performance.vpr@7.11--7.97) [69157]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (performance.vpr@7.11--7.97) [69158]"}
            j_5 < Seq#Length(xs);
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
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_2)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@8.11--8.59) [69159]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@8.11--8.59) [69160]"}
            i_2 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@8.11--8.59) [69161]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, i_3)) && invRecv1(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(xs, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) ==> Seq#Index(xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_6) && i_4 != j_6)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (performance.vpr@10.10--10.96) [69162]"}
            i_4 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (performance.vpr@10.10--10.96) [69163]"}
            i_4 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (performance.vpr@10.10--10.96) [69164]"}
            j_6 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (performance.vpr@10.10--10.96) [69165]"}
            j_6 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_8_2: int, j_5_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_2), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_2), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_2), Seq#Index(xs, j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2), Seq#Index(xs, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_5_1), Seq#Index(xs, i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5_1), Seq#Index(xs, i_8_2) } { Seq#Index(xs, i_8_2), Seq#Index(xs, j_5_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_5_1) && i_8_2 != j_5_1) ==> Seq#Index(xs, i_8_2) != Seq#Index(xs, j_5_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [0..|xs|)) }
  //     { xs[i] }
  //     (i in [0..|xs|)) ==> acc(xs[i].f, write)) -- performance.vpr@11.3--11.58
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (performance.vpr@11.10--11.58) [69166]"}
            i_6 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (performance.vpr@11.10--11.58) [69167]"}
            i_6 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (performance.vpr@11.10--11.58) [69168]"}
      (forall i_10_1: int, i_10_2: int ::
      
      (((i_10_1 != i_10_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_10_1) != Seq#Index(xs, i_10_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_10_1: int ::
        { Seq#Index(xs, i_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1) } { Seq#Index(xs, i_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(xs, i_10_1)) && invRecv3(Seq#Index(xs, i_10_1)) == i_10_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(xs, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_10_1: int ::
        { Seq#Index(xs, i_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1) } { Seq#Index(xs, i_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10_1) ==> Seq#Index(xs, i_10_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv3(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_4_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_2_1) && i_4_1 != j_2_1)) {
        assert {:msg "  Postcondition of init might not hold. Assertion xs[i] != xs[j] might not hold. (performance.vpr@7.11--7.97) [69169]"}
          Seq#Index(xs, i_4_1) != Seq#Index(xs, j_2_1);
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
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@8.11--8.59) [69170]"}
        (forall i_6_1: int, i_6_2: int ::
        { neverTriggered2(i_6_1), neverTriggered2(i_6_2) }
        (((i_6_1 != i_6_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_6_1) != Seq#Index(xs, i_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access xs[i].f (performance.vpr@8.11--8.59) [69171]"}
        (forall i_6_1: int ::
        { Seq#Index(xs, i_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_1) } { Seq#Index(xs, i_6_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_1) ==> Mask[Seq#Index(xs, i_6_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_6_1: int ::
        { Seq#Index(xs, i_6_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_6_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_1) } { Seq#Index(xs, i_6_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_6_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(xs, i_6_1)) && invRecv2(Seq#Index(xs, i_6_1)) == i_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> Seq#Index(xs, invRecv2(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> Seq#Index(xs, invRecv2(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method leak
// ==================================================

procedure leak(xs: (Seq Ref), p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var i_7: int;
  var j_7: int;
  var i_8: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_7) && i_7 != j_7)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@16.12--16.98) [69172]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@16.12--16.98) [69173]"}
            i_7 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (performance.vpr@16.12--16.98) [69174]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (performance.vpr@16.12--16.98) [69175]"}
            j_7 < Seq#Length(xs);
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
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@17.12--17.63) [69176]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@17.12--17.63) [69177]"}
            i_8 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@17.12--17.63) [69178]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_1)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) && NoPerm < p_1 ==> qpRange4(Seq#Index(xs, i_3)) && invRecv4(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_4)) && NoPerm < p_1) && qpRange4(o_4) ==> Seq#Index(xs, invRecv4(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (performance.vpr@17.12--17.63) [69179]"}
      (forall i_3: int ::
      { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Index(xs, i_3) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) && p_1 > NoPerm ==> Seq#Index(xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_4)) && NoPerm < p_1) && qpRange4(o_4) ==> (NoPerm < p_1 ==> Seq#Index(xs, invRecv4(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv4(o_4)) && NoPerm < p_1) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method split
// ==================================================

procedure split(xs: (Seq Ref), p_1: Perm, q_1: Perm) returns ()
  modifies Heap, Mask;
{
  var i_9: int;
  var j_10: int;
  var i_10: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_11: int;
  var i_12: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_10) && i_9 != j_10)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@23.12--23.98) [69180]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@23.12--23.98) [69181]"}
            i_9 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (performance.vpr@23.12--23.98) [69182]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (performance.vpr@23.12--23.98) [69183]"}
            j_10 < Seq#Length(xs);
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
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_10)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@24.12--24.63) [69184]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@24.12--24.63) [69185]"}
            i_10 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@24.12--24.63) [69186]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3_1)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) && NoPerm < p_1 ==> qpRange5(Seq#Index(xs, i_3)) && invRecv5(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv5(o_4)) && NoPerm < p_1) && qpRange5(o_4) ==> Seq#Index(xs, invRecv5(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (performance.vpr@24.12--24.63) [69187]"}
      (forall i_3: int ::
      { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Index(xs, i_3) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) } { Seq#Index(xs, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_3) && p_1 > NoPerm ==> Seq#Index(xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv5(o_4)) && NoPerm < p_1) && qpRange5(o_4) ==> (NoPerm < p_1 ==> Seq#Index(xs, invRecv5(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv5(o_4)) && NoPerm < p_1) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, q))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_11)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@25.11--25.62) [69188]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@25.11--25.62) [69189]"}
            i_11 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@25.11--25.62) [69190]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5_1)) && NoPerm < q_1) && NoPerm < q_1 ==> Seq#Index(xs, i_5) != Seq#Index(xs, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(xs, i_5) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5) } { Seq#Index(xs, i_5) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5) && NoPerm < q_1 ==> qpRange6(Seq#Index(xs, i_5)) && invRecv6(Seq#Index(xs, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv6(o_4)) && NoPerm < q_1) && qpRange6(o_4) ==> Seq#Index(xs, invRecv6(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction q might be negative. (performance.vpr@25.11--25.62) [69191]"}
      (forall i_5: int ::
      { Seq#Index(xs, i_5) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5) } { Seq#Index(xs, i_5) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5) ==> q_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(xs, i_5) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_5) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5) } { Seq#Index(xs, i_5) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_5) && q_1 > NoPerm ==> Seq#Index(xs, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv6(o_4)) && NoPerm < q_1) && qpRange6(o_4) ==> (NoPerm < q_1 ==> Seq#Index(xs, invRecv6(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + q_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv6(o_4)) && NoPerm < q_1) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|xs|)) } { xs[i] } (i in [0..|xs|)) ==> acc(xs[i].f, q))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_12)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (performance.vpr@26.11--26.62) [69192]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (performance.vpr@26.11--26.62) [69193]"}
            i_12 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@26.11--26.62) [69194]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_2)) && NoPerm < q_1) && NoPerm < q_1 ==> Seq#Index(xs, i_7_1) != Seq#Index(xs, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(xs, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1) } { Seq#Index(xs, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_7_1) && NoPerm < q_1 ==> qpRange7(Seq#Index(xs, i_7_1)) && invRecv7(Seq#Index(xs, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv7(o_4)) && NoPerm < q_1) && qpRange7(o_4) ==> Seq#Index(xs, invRecv7(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction q might be negative. (performance.vpr@26.11--26.62) [69195]"}
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
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv7(o_4)) && NoPerm < q_1) && qpRange7(o_4) ==> (NoPerm < q_1 ==> Seq#Index(xs, invRecv7(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + q_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv7(o_4)) && NoPerm < q_1) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of split might not hold. Fraction q might be negative. (performance.vpr@25.11--25.62) [69196]"}
        (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2) } { Seq#Index(xs, i_8_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2) && dummyFunction(Heap[Seq#Index(xs, i_8_2), f_7]) ==> q_1 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@25.11--25.62) [69197]"}
        (forall i_8_2: int, i_8_3: int ::
        { neverTriggered8(i_8_2), neverTriggered8(i_8_3) }
        (((i_8_2 != i_8_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_3)) && NoPerm < q_1) && NoPerm < q_1 ==> Seq#Index(xs, i_8_2) != Seq#Index(xs, i_8_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of split might not hold. There might be insufficient permission to access xs[i].f (performance.vpr@25.11--25.62) [69198]"}
        (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2) } { Seq#Index(xs, i_8_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2) ==> Mask[Seq#Index(xs, i_8_2), f_7] >= q_1
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2) } { Seq#Index(xs, i_8_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_8_2) && NoPerm < q_1 ==> qpRange8(Seq#Index(xs, i_8_2)) && invRecv8(Seq#Index(xs, i_8_2)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv8(o_4)) && (NoPerm < q_1 && qpRange8(o_4)) ==> Seq#Index(xs, invRecv8(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv8(o_4)) && (NoPerm < q_1 && qpRange8(o_4)) ==> Seq#Index(xs, invRecv8(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - q_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv8(o_4)) && (NoPerm < q_1 && qpRange8(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of split might not hold. Fraction q might be negative. (performance.vpr@26.11--26.62) [69199]"}
        (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Index(xs, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) && dummyFunction(Heap[Seq#Index(xs, i_9_1), f_7]) ==> q_1 >= NoPerm
      );
    
    // -- check if receiver xs[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (performance.vpr@26.11--26.62) [69200]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered9(i_9_1), neverTriggered9(i_9_2) }
        (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_2)) && NoPerm < q_1) && NoPerm < q_1 ==> Seq#Index(xs, i_9_1) != Seq#Index(xs, i_9_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of split might not hold. There might be insufficient permission to access xs[i].f (performance.vpr@26.11--26.62) [69201]"}
        (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Index(xs, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) ==> Mask[Seq#Index(xs, i_9_1), f_7] >= q_1
      );
    
    // -- assumptions for inverse of receiver xs[i]
      assume (forall i_9_1: int ::
        { Seq#Index(xs, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) } { Seq#Index(xs, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_9_1) && NoPerm < q_1 ==> qpRange9(Seq#Index(xs, i_9_1)) && invRecv9(Seq#Index(xs, i_9_1)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_4)) && (NoPerm < q_1 && qpRange9(o_4)) ==> Seq#Index(xs, invRecv9(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_4)) && (NoPerm < q_1 && qpRange9(o_4)) ==> Seq#Index(xs, invRecv9(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - q_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv9(o_4)) && (NoPerm < q_1 && qpRange9(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var xs1: (Seq Ref);
  var QPMask: MaskType;
  var xs2: (Seq Ref);
  var xs3: (Seq Ref);
  var arg_p: Perm;
  var arg_q: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_6_1: int;
  var j_3_1: int;
  var ExhaleHeap: HeapType;
  var arg_p_1: Perm;
  var arg_q_1: Perm;
  var i_11_1: int;
  var j_5_1: int;
  var arg_p_2: Perm;
  var arg_q_2: Perm;
  var i_16_1: int;
  var j_7_1: int;
  var arg_p_3: Perm;
  var i_21: int;
  var j_9_1: int;
  var arg_p_4: Perm;
  var i_24_1: int;
  var j_11_2: int;
  var arg_p_5: Perm;
  var i_27: int;
  var j_13_2: int;
  var arg_p_6: Perm;
  var arg_q_3: Perm;
  var i_30_2: int;
  var j_15_1: int;
  var arg_p_7: Perm;
  var i_35_1: int;
  var j_17_1: int;
  var arg_p_8: Perm;
  var i_38: int;
  var j_19_1: int;
  var arg_p_9: Perm;
  var arg_q_4: Perm;
  var i_41_2: int;
  var j_21_1: int;
  var arg_p_10: Perm;
  var i_46: int;
  var j_23_1: int;
  var arg_p_11: Perm;
  var i_49: int;
  var j_25_1: int;
  var arg_p_12: Perm;
  var i_52_1: int;
  var j_27_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: init(xs1) -- performance.vpr@42.22--42.31
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      assume (forall i: int, j_9: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_9) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_9) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_9) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_9) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i), Seq#Index(xs1, j_9) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i), Seq#Index(xs1, j_9) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_9), Seq#Index(xs1, i) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_9), Seq#Index(xs1, i) } { Seq#Index(xs1, i), Seq#Index(xs1, j_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_9) && i != j_9) ==> Seq#Index(xs1, i) != Seq#Index(xs1, j_9)
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@42.22--42.31) [69202]"}
        (forall i_1: int, i_1_1: int ::
        
        (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs1, i_1) != Seq#Index(xs1, i_1_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_1: int ::
          { Seq#Index(xs1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1) } { Seq#Index(xs1, i_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1) && NoPerm < FullPerm ==> qpRange10(Seq#Index(xs1, i_1)) && invRecv10(Seq#Index(xs1, i_1)) == i_1
        );
        assume (forall o_4: Ref ::
          { invRecv10(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> Seq#Index(xs1, invRecv10(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_1: int ::
          { Seq#Index(xs1, i_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1) } { Seq#Index(xs1, i_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_1) ==> Seq#Index(xs1, i_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs1, invRecv10(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: init(xs2) -- performance.vpr@43.22--43.31
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      assume (forall i_2_1: int, j_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_2_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_2_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_2_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_2_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_2_1), Seq#Index(xs2, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_2_1), Seq#Index(xs2, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_1), Seq#Index(xs2, i_2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_1), Seq#Index(xs2, i_2_1) } { Seq#Index(xs2, i_2_1), Seq#Index(xs2, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_2_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_1) && i_2_1 != j_1) ==> Seq#Index(xs2, i_2_1) != Seq#Index(xs2, j_1)
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@43.22--43.31) [69203]"}
        (forall i_3: int, i_3_1: int ::
        
        (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs2, i_3) != Seq#Index(xs2, i_3_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_3: int ::
          { Seq#Index(xs2, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3) } { Seq#Index(xs2, i_3) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3) && NoPerm < FullPerm ==> qpRange11(Seq#Index(xs2, i_3)) && invRecv11(Seq#Index(xs2, i_3)) == i_3
        );
        assume (forall o_4: Ref ::
          { invRecv11(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(xs2, invRecv11(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_3: int ::
          { Seq#Index(xs2, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3) } { Seq#Index(xs2, i_3) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_3) ==> Seq#Index(xs2, i_3) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs2, invRecv11(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: init(xs3) -- performance.vpr@44.22--44.31
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      assume (forall i_4_1: int, j_2_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#Index(xs3, j_2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_4_1), Seq#Index(xs3, j_2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_2_1), Seq#Index(xs3, i_4_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_2_1), Seq#Index(xs3, i_4_1) } { Seq#Index(xs3, i_4_1), Seq#Index(xs3, j_2_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_4_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_2_1) && i_4_1 != j_2_1) ==> Seq#Index(xs3, i_4_1) != Seq#Index(xs3, j_2_1)
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs3[i].f might not be injective. (performance.vpr@44.22--44.31) [69204]"}
        (forall i_5: int, i_5_1: int ::
        
        (((i_5 != i_5_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs3, i_5) != Seq#Index(xs3, i_5_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_5: int ::
          { Seq#Index(xs3, i_5) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_5) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5) } { Seq#Index(xs3, i_5) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5) && NoPerm < FullPerm ==> qpRange12(Seq#Index(xs3, i_5)) && invRecv12(Seq#Index(xs3, i_5)) == i_5
        );
        assume (forall o_4: Ref ::
          { invRecv12(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(xs3, invRecv12(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_5: int ::
          { Seq#Index(xs3, i_5) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_5) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5) } { Seq#Index(xs3, i_5) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_5) ==> Seq#Index(xs3, i_5) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs3, invRecv12(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method split might not hold. Assertion write == 2 * (1 / 2) might not hold. (performance.vpr@46.3--46.25) [69205]"}
        arg_p == real(2) * arg_q;
      assert {:msg "  The precondition of method split might not hold. Assertion write >= none might not hold. (performance.vpr@46.3--46.25) [69206]"}
        NoPerm <= arg_p;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_6_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_3_1) && i_6_1 != j_3_1)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@46.3--46.25) [69207]"}
            Seq#Index(xs1, i_6_1) != Seq#Index(xs1, j_3_1);
        }
        assume false;
      }
      assume (forall i_7_1_1: int, j_4_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#Index(xs1, j_4_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_7_1_1), Seq#Index(xs1, j_4_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_4_1_1), Seq#Index(xs1, i_7_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_4_1_1), Seq#Index(xs1, i_7_1_1) } { Seq#Index(xs1, i_7_1_1), Seq#Index(xs1, j_4_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_7_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_4_1_1) && i_7_1_1 != j_4_1_1) ==> Seq#Index(xs1, i_7_1_1) != Seq#Index(xs1, j_4_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction write might be negative. (performance.vpr@46.3--46.25) [69208]"}
          (forall i_8_2: int ::
          { Seq#Index(xs1, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_2) } { Seq#Index(xs1, i_8_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_2) && dummyFunction(Heap[Seq#Index(xs1, i_8_2), f_7]) ==> arg_p >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@46.3--46.25) [69209]"}
          (forall i_8_2: int, i_8_3: int ::
          { neverTriggered13(i_8_2), neverTriggered13(i_8_3) }
          (((i_8_2 != i_8_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_3)) && NoPerm < arg_p) && NoPerm < arg_p ==> Seq#Index(xs1, i_8_2) != Seq#Index(xs1, i_8_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@46.3--46.25) [69210]"}
          (forall i_8_2: int ::
          { Seq#Index(xs1, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_2) } { Seq#Index(xs1, i_8_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_2) ==> Mask[Seq#Index(xs1, i_8_2), f_7] >= arg_p
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_8_2: int ::
          { Seq#Index(xs1, i_8_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_8_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_2) } { Seq#Index(xs1, i_8_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_8_2) && NoPerm < arg_p ==> qpRange13(Seq#Index(xs1, i_8_2)) && invRecv13(Seq#Index(xs1, i_8_2)) == i_8_2
        );
        assume (forall o_4: Ref ::
          { invRecv13(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv13(o_4)) && (NoPerm < arg_p && qpRange13(o_4)) ==> Seq#Index(xs1, invRecv13(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv13(o_4)) && (NoPerm < arg_p && qpRange13(o_4)) ==> Seq#Index(xs1, invRecv13(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv13(o_4)) && (NoPerm < arg_p && qpRange13(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@46.3--46.25) [69211]"}
        (forall i_9_1: int, i_9_2: int ::
        
        (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_2)) && NoPerm < arg_q) && NoPerm < arg_q ==> Seq#Index(xs1, i_9_1) != Seq#Index(xs1, i_9_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_9_1: int ::
          { Seq#Index(xs1, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_9_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1) } { Seq#Index(xs1, i_9_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_9_1) && NoPerm < arg_q ==> qpRange14(Seq#Index(xs1, i_9_1)) && invRecv14(Seq#Index(xs1, i_9_1)) == i_9_1
        );
        assume (forall o_4: Ref ::
          { invRecv14(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv14(o_4)) && NoPerm < arg_q) && qpRange14(o_4) ==> Seq#Index(xs1, invRecv14(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (performance.vpr@46.3--46.25) [69212]"}
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
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv14(o_4)) && NoPerm < arg_q) && qpRange14(o_4) ==> (NoPerm < arg_q ==> Seq#Index(xs1, invRecv14(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv14(o_4)) && NoPerm < arg_q) && qpRange14(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@46.3--46.25) [69213]"}
        (forall i_10_1: int, i_10_2: int ::
        
        (((i_10_1 != i_10_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_2)) && NoPerm < arg_q) && NoPerm < arg_q ==> Seq#Index(xs1, i_10_1) != Seq#Index(xs1, i_10_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_10_1: int ::
          { Seq#Index(xs1, i_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1) } { Seq#Index(xs1, i_10_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_10_1) && NoPerm < arg_q ==> qpRange15(Seq#Index(xs1, i_10_1)) && invRecv15(Seq#Index(xs1, i_10_1)) == i_10_1
        );
        assume (forall o_4: Ref ::
          { invRecv15(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv15(o_4)) && NoPerm < arg_q) && qpRange15(o_4) ==> Seq#Index(xs1, invRecv15(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (performance.vpr@46.3--46.25) [69214]"}
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
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv15(o_4)) && NoPerm < arg_q) && qpRange15(o_4) ==> (NoPerm < arg_q ==> Seq#Index(xs1, invRecv15(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv15(o_4)) && NoPerm < arg_q) && qpRange15(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 == 2 * (1 / 4) might not hold. (performance.vpr@47.3--47.23) [69215]"}
        arg_p_1 == real(2) * arg_q_1;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@47.3--47.23) [69216]"}
        NoPerm <= arg_p_1;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_11_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_5_1) && i_11_1 != j_5_1)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs2[i] != xs2[j] might not hold. (performance.vpr@47.3--47.23) [69217]"}
            Seq#Index(xs2, i_11_1) != Seq#Index(xs2, j_5_1);
        }
        assume false;
      }
      assume (forall i_12_1_1: int, j_6_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_6_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_6_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_6_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_6_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#Index(xs2, j_6_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_12_1_1), Seq#Index(xs2, j_6_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_6_1_1), Seq#Index(xs2, i_12_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_6_1_1), Seq#Index(xs2, i_12_1_1) } { Seq#Index(xs2, i_12_1_1), Seq#Index(xs2, j_6_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_12_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_6_1_1) && i_12_1_1 != j_6_1_1) ==> Seq#Index(xs2, i_12_1_1) != Seq#Index(xs2, j_6_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction 1 / 2 might be negative. (performance.vpr@47.3--47.23) [69218]"}
          (forall i_13_1: int ::
          { Seq#Index(xs2, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Index(xs2, i_13_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) && dummyFunction(Heap[Seq#Index(xs2, i_13_1), f_7]) ==> arg_p_1 >= NoPerm
        );
      
      // -- check if receiver xs2[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs2[i].f might not be injective. (performance.vpr@47.3--47.23) [69219]"}
          (forall i_13_1: int, i_13_2: int ::
          { neverTriggered16(i_13_1), neverTriggered16(i_13_2) }
          (((i_13_1 != i_13_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_2)) && NoPerm < arg_p_1) && NoPerm < arg_p_1 ==> Seq#Index(xs2, i_13_1) != Seq#Index(xs2, i_13_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs2[i].f (performance.vpr@47.3--47.23) [69220]"}
          (forall i_13_1: int ::
          { Seq#Index(xs2, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Index(xs2, i_13_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) ==> Mask[Seq#Index(xs2, i_13_1), f_7] >= arg_p_1
        );
      
      // -- assumptions for inverse of receiver xs2[i]
        assume (forall i_13_1: int ::
          { Seq#Index(xs2, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) } { Seq#Index(xs2, i_13_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_13_1) && NoPerm < arg_p_1 ==> qpRange16(Seq#Index(xs2, i_13_1)) && invRecv16(Seq#Index(xs2, i_13_1)) == i_13_1
        );
        assume (forall o_4: Ref ::
          { invRecv16(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv16(o_4)) && (NoPerm < arg_p_1 && qpRange16(o_4)) ==> Seq#Index(xs2, invRecv16(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv16(o_4)) && (NoPerm < arg_p_1 && qpRange16(o_4)) ==> Seq#Index(xs2, invRecv16(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv16(o_4)) && (NoPerm < arg_p_1 && qpRange16(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@47.3--47.23) [69221]"}
        (forall i_14_1: int, i_14_2: int ::
        
        (((i_14_1 != i_14_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_2)) && NoPerm < arg_q_1) && NoPerm < arg_q_1 ==> Seq#Index(xs2, i_14_1) != Seq#Index(xs2, i_14_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_14_1: int ::
          { Seq#Index(xs2, i_14_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_14_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1) } { Seq#Index(xs2, i_14_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_14_1) && NoPerm < arg_q_1 ==> qpRange17(Seq#Index(xs2, i_14_1)) && invRecv17(Seq#Index(xs2, i_14_1)) == i_14_1
        );
        assume (forall o_4: Ref ::
          { invRecv17(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv17(o_4)) && NoPerm < arg_q_1) && qpRange17(o_4) ==> Seq#Index(xs2, invRecv17(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@47.3--47.23) [69222]"}
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
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv17(o_4)) && NoPerm < arg_q_1) && qpRange17(o_4) ==> (NoPerm < arg_q_1 ==> Seq#Index(xs2, invRecv17(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv17(o_4)) && NoPerm < arg_q_1) && qpRange17(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@47.3--47.23) [69223]"}
        (forall i_15: int, i_15_1: int ::
        
        (((i_15 != i_15_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15_1)) && NoPerm < arg_q_1) && NoPerm < arg_q_1 ==> Seq#Index(xs2, i_15) != Seq#Index(xs2, i_15_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_15: int ::
          { Seq#Index(xs2, i_15) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_15) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15) } { Seq#Index(xs2, i_15) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15) && NoPerm < arg_q_1 ==> qpRange18(Seq#Index(xs2, i_15)) && invRecv18(Seq#Index(xs2, i_15)) == i_15
        );
        assume (forall o_4: Ref ::
          { invRecv18(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv18(o_4)) && NoPerm < arg_q_1) && qpRange18(o_4) ==> Seq#Index(xs2, invRecv18(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@47.3--47.23) [69224]"}
        (forall i_15: int ::
        { Seq#Index(xs2, i_15) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_15) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15) } { Seq#Index(xs2, i_15) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15) ==> arg_q_1 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_15: int ::
          { Seq#Index(xs2, i_15) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_15) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15) } { Seq#Index(xs2, i_15) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_15) && arg_q_1 > NoPerm ==> Seq#Index(xs2, i_15) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv18(o_4)) && NoPerm < arg_q_1) && qpRange18(o_4) ==> (NoPerm < arg_q_1 ==> Seq#Index(xs2, invRecv18(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv18(o_4)) && NoPerm < arg_q_1) && qpRange18(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method split might not hold. Assertion write == 2 * (1 / 2) might not hold. (performance.vpr@48.3--48.25) [69225]"}
        arg_p_2 == real(2) * arg_q_2;
      assert {:msg "  The precondition of method split might not hold. Assertion write >= none might not hold. (performance.vpr@48.3--48.25) [69226]"}
        NoPerm <= arg_p_2;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_16_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_7_1) && i_16_1 != j_7_1)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs3[i] != xs3[j] might not hold. (performance.vpr@48.3--48.25) [69227]"}
            Seq#Index(xs3, i_16_1) != Seq#Index(xs3, j_7_1);
        }
        assume false;
      }
      assume (forall i_17_1_1: int, j_8_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_8_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_8_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_8_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_8_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#Index(xs3, j_8_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_17_1_1), Seq#Index(xs3, j_8_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_8_1_1), Seq#Index(xs3, i_17_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_8_1_1), Seq#Index(xs3, i_17_1_1) } { Seq#Index(xs3, i_17_1_1), Seq#Index(xs3, j_8_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_17_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_8_1_1) && i_17_1_1 != j_8_1_1) ==> Seq#Index(xs3, i_17_1_1) != Seq#Index(xs3, j_8_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction write might be negative. (performance.vpr@48.3--48.25) [69228]"}
          (forall i_18_1: int ::
          { Seq#Index(xs3, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Index(xs3, i_18_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) && dummyFunction(Heap[Seq#Index(xs3, i_18_1), f_7]) ==> arg_p_2 >= NoPerm
        );
      
      // -- check if receiver xs3[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs3[i].f might not be injective. (performance.vpr@48.3--48.25) [69229]"}
          (forall i_18_1: int, i_18_2: int ::
          { neverTriggered19(i_18_1), neverTriggered19(i_18_2) }
          (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_2)) && NoPerm < arg_p_2) && NoPerm < arg_p_2 ==> Seq#Index(xs3, i_18_1) != Seq#Index(xs3, i_18_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs3[i].f (performance.vpr@48.3--48.25) [69230]"}
          (forall i_18_1: int ::
          { Seq#Index(xs3, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Index(xs3, i_18_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) ==> Mask[Seq#Index(xs3, i_18_1), f_7] >= arg_p_2
        );
      
      // -- assumptions for inverse of receiver xs3[i]
        assume (forall i_18_1: int ::
          { Seq#Index(xs3, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) } { Seq#Index(xs3, i_18_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_18_1) && NoPerm < arg_p_2 ==> qpRange19(Seq#Index(xs3, i_18_1)) && invRecv19(Seq#Index(xs3, i_18_1)) == i_18_1
        );
        assume (forall o_4: Ref ::
          { invRecv19(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv19(o_4)) && (NoPerm < arg_p_2 && qpRange19(o_4)) ==> Seq#Index(xs3, invRecv19(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv19(o_4)) && (NoPerm < arg_p_2 && qpRange19(o_4)) ==> Seq#Index(xs3, invRecv19(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_2) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv19(o_4)) && (NoPerm < arg_p_2 && qpRange19(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs3[i].f might not be injective. (performance.vpr@48.3--48.25) [69231]"}
        (forall i_19: int, i_19_1: int ::
        
        (((i_19 != i_19_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19_1)) && NoPerm < arg_q_2) && NoPerm < arg_q_2 ==> Seq#Index(xs3, i_19) != Seq#Index(xs3, i_19_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_19: int ::
          { Seq#Index(xs3, i_19) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_19) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19) } { Seq#Index(xs3, i_19) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19) && NoPerm < arg_q_2 ==> qpRange20(Seq#Index(xs3, i_19)) && invRecv20(Seq#Index(xs3, i_19)) == i_19
        );
        assume (forall o_4: Ref ::
          { invRecv20(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv20(o_4)) && NoPerm < arg_q_2) && qpRange20(o_4) ==> Seq#Index(xs3, invRecv20(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (performance.vpr@48.3--48.25) [69232]"}
        (forall i_19: int ::
        { Seq#Index(xs3, i_19) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_19) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19) } { Seq#Index(xs3, i_19) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19) ==> arg_q_2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_19: int ::
          { Seq#Index(xs3, i_19) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_19) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19) } { Seq#Index(xs3, i_19) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_19) && arg_q_2 > NoPerm ==> Seq#Index(xs3, i_19) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv20(o_4)) && NoPerm < arg_q_2) && qpRange20(o_4) ==> (NoPerm < arg_q_2 ==> Seq#Index(xs3, invRecv20(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q_2) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv20(o_4)) && NoPerm < arg_q_2) && qpRange20(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs3[i].f might not be injective. (performance.vpr@48.3--48.25) [69233]"}
        (forall i_20_1: int, i_20_2: int ::
        
        (((i_20_1 != i_20_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_2)) && NoPerm < arg_q_2) && NoPerm < arg_q_2 ==> Seq#Index(xs3, i_20_1) != Seq#Index(xs3, i_20_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_20_1: int ::
          { Seq#Index(xs3, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_1) } { Seq#Index(xs3, i_20_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_1) && NoPerm < arg_q_2 ==> qpRange21(Seq#Index(xs3, i_20_1)) && invRecv21(Seq#Index(xs3, i_20_1)) == i_20_1
        );
        assume (forall o_4: Ref ::
          { invRecv21(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv21(o_4)) && NoPerm < arg_q_2) && qpRange21(o_4) ==> Seq#Index(xs3, invRecv21(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (performance.vpr@48.3--48.25) [69234]"}
        (forall i_20_1: int ::
        { Seq#Index(xs3, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_1) } { Seq#Index(xs3, i_20_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_1) ==> arg_q_2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_20_1: int ::
          { Seq#Index(xs3, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_1) } { Seq#Index(xs3, i_20_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_20_1) && arg_q_2 > NoPerm ==> Seq#Index(xs3, i_20_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv21(o_4)) && NoPerm < arg_q_2) && qpRange21(o_4) ==> (NoPerm < arg_q_2 ==> Seq#Index(xs3, invRecv21(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q_2) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv21(o_4)) && NoPerm < arg_q_2) && qpRange21(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@50.3--50.17) [69235]"}
        NoPerm <= arg_p_3;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_21) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_9_1) && i_21 != j_9_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@50.3--50.17) [69236]"}
            Seq#Index(xs1, i_21) != Seq#Index(xs1, j_9_1);
        }
        assume false;
      }
      assume (forall i_22_1_1: int, j_10_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#Index(xs1, j_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_22_1_1), Seq#Index(xs1, j_10_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_10_1), Seq#Index(xs1, i_22_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_10_1), Seq#Index(xs1, i_22_1_1) } { Seq#Index(xs1, i_22_1_1), Seq#Index(xs1, j_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_22_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_10_1) && i_22_1_1 != j_10_1) ==> Seq#Index(xs1, i_22_1_1) != Seq#Index(xs1, j_10_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 2 might be negative. (performance.vpr@50.3--50.17) [69237]"}
          (forall i_23: int ::
          { Seq#Index(xs1, i_23) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_23) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23) } { Seq#Index(xs1, i_23) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23) && dummyFunction(Heap[Seq#Index(xs1, i_23), f_7]) ==> arg_p_3 >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@50.3--50.17) [69238]"}
          (forall i_23: int, i_23_1: int ::
          { neverTriggered22(i_23), neverTriggered22(i_23_1) }
          (((i_23 != i_23_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23_1)) && NoPerm < arg_p_3) && NoPerm < arg_p_3 ==> Seq#Index(xs1, i_23) != Seq#Index(xs1, i_23_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@50.3--50.17) [69239]"}
          (forall i_23: int ::
          { Seq#Index(xs1, i_23) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_23) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23) } { Seq#Index(xs1, i_23) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23) ==> Mask[Seq#Index(xs1, i_23), f_7] >= arg_p_3
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_23: int ::
          { Seq#Index(xs1, i_23) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_23) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23) } { Seq#Index(xs1, i_23) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_23) && NoPerm < arg_p_3 ==> qpRange22(Seq#Index(xs1, i_23)) && invRecv22(Seq#Index(xs1, i_23)) == i_23
        );
        assume (forall o_4: Ref ::
          { invRecv22(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv22(o_4)) && (NoPerm < arg_p_3 && qpRange22(o_4)) ==> Seq#Index(xs1, invRecv22(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv22(o_4)) && (NoPerm < arg_p_3 && qpRange22(o_4)) ==> Seq#Index(xs1, invRecv22(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_3) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv22(o_4)) && (NoPerm < arg_p_3 && qpRange22(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs2, 1 / 2) -- performance.vpr@51.3--51.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_4 := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@51.3--51.17) [69240]"}
        NoPerm <= arg_p_4;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_24_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_11_2) && i_24_1 != j_11_2)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs2[i] != xs2[j] might not hold. (performance.vpr@51.3--51.17) [69241]"}
            Seq#Index(xs2, i_24_1) != Seq#Index(xs2, j_11_2);
        }
        assume false;
      }
      assume (forall i_25_1: int, j_12_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_25_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_25_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_25_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_25_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_25_1), Seq#Index(xs2, j_12_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_25_1), Seq#Index(xs2, j_12_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_12_1), Seq#Index(xs2, i_25_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_12_1), Seq#Index(xs2, i_25_1) } { Seq#Index(xs2, i_25_1), Seq#Index(xs2, j_12_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_25_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_12_1) && i_25_1 != j_12_1) ==> Seq#Index(xs2, i_25_1) != Seq#Index(xs2, j_12_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 2 might be negative. (performance.vpr@51.3--51.17) [69242]"}
          (forall i_26: int ::
          { Seq#Index(xs2, i_26) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_26) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26) } { Seq#Index(xs2, i_26) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26) && dummyFunction(Heap[Seq#Index(xs2, i_26), f_7]) ==> arg_p_4 >= NoPerm
        );
      
      // -- check if receiver xs2[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs2[i].f might not be injective. (performance.vpr@51.3--51.17) [69243]"}
          (forall i_26: int, i_26_1: int ::
          { neverTriggered23(i_26), neverTriggered23(i_26_1) }
          (((i_26 != i_26_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26_1)) && NoPerm < arg_p_4) && NoPerm < arg_p_4 ==> Seq#Index(xs2, i_26) != Seq#Index(xs2, i_26_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs2[i].f (performance.vpr@51.3--51.17) [69244]"}
          (forall i_26: int ::
          { Seq#Index(xs2, i_26) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_26) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26) } { Seq#Index(xs2, i_26) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26) ==> Mask[Seq#Index(xs2, i_26), f_7] >= arg_p_4
        );
      
      // -- assumptions for inverse of receiver xs2[i]
        assume (forall i_26: int ::
          { Seq#Index(xs2, i_26) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_26) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26) } { Seq#Index(xs2, i_26) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_26) && NoPerm < arg_p_4 ==> qpRange23(Seq#Index(xs2, i_26)) && invRecv23(Seq#Index(xs2, i_26)) == i_26
        );
        assume (forall o_4: Ref ::
          { invRecv23(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv23(o_4)) && (NoPerm < arg_p_4 && qpRange23(o_4)) ==> Seq#Index(xs2, invRecv23(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv23(o_4)) && (NoPerm < arg_p_4 && qpRange23(o_4)) ==> Seq#Index(xs2, invRecv23(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_4) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv23(o_4)) && (NoPerm < arg_p_4 && qpRange23(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs3, 1 / 3) -- performance.vpr@52.3--52.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_5 := 1 / 3;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 3 >= none might not hold. (performance.vpr@52.3--52.17) [69245]"}
        NoPerm <= arg_p_5;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_27) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_13_2) && i_27 != j_13_2)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs3[i] != xs3[j] might not hold. (performance.vpr@52.3--52.17) [69246]"}
            Seq#Index(xs3, i_27) != Seq#Index(xs3, j_13_2);
        }
        assume false;
      }
      assume (forall i_28_1_1: int, j_14_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_28_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_14_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_28_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_14_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_28_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_14_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_28_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_14_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_28_1_1), Seq#Index(xs3, j_14_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_28_1_1), Seq#Index(xs3, j_14_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_14_1_1), Seq#Index(xs3, i_28_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_14_1_1), Seq#Index(xs3, i_28_1_1) } { Seq#Index(xs3, i_28_1_1), Seq#Index(xs3, j_14_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_28_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_14_1_1) && i_28_1_1 != j_14_1_1) ==> Seq#Index(xs3, i_28_1_1) != Seq#Index(xs3, j_14_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 3 might be negative. (performance.vpr@52.3--52.17) [69247]"}
          (forall i_29_1: int ::
          { Seq#Index(xs3, i_29_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_29_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_1) } { Seq#Index(xs3, i_29_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_1) && dummyFunction(Heap[Seq#Index(xs3, i_29_1), f_7]) ==> arg_p_5 >= NoPerm
        );
      
      // -- check if receiver xs3[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs3[i].f might not be injective. (performance.vpr@52.3--52.17) [69248]"}
          (forall i_29_1: int, i_29_2: int ::
          { neverTriggered24(i_29_1), neverTriggered24(i_29_2) }
          (((i_29_1 != i_29_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_2)) && NoPerm < arg_p_5) && NoPerm < arg_p_5 ==> Seq#Index(xs3, i_29_1) != Seq#Index(xs3, i_29_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs3[i].f (performance.vpr@52.3--52.17) [69249]"}
          (forall i_29_1: int ::
          { Seq#Index(xs3, i_29_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_29_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_1) } { Seq#Index(xs3, i_29_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_1) ==> Mask[Seq#Index(xs3, i_29_1), f_7] >= arg_p_5
        );
      
      // -- assumptions for inverse of receiver xs3[i]
        assume (forall i_29_1: int ::
          { Seq#Index(xs3, i_29_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_29_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_1) } { Seq#Index(xs3, i_29_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_29_1) && NoPerm < arg_p_5 ==> qpRange24(Seq#Index(xs3, i_29_1)) && invRecv24(Seq#Index(xs3, i_29_1)) == i_29_1
        );
        assume (forall o_4: Ref ::
          { invRecv24(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv24(o_4)) && (NoPerm < arg_p_5 && qpRange24(o_4)) ==> Seq#Index(xs3, invRecv24(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv24(o_4)) && (NoPerm < arg_p_5 && qpRange24(o_4)) ==> Seq#Index(xs3, invRecv24(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_5) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv24(o_4)) && (NoPerm < arg_p_5 && qpRange24(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: split(xs1, 1 / 2, 1 / 4) -- performance.vpr@56.3--56.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_6 := 1 / 2;
    arg_q_3 := 1 / 4;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 == 2 * (1 / 4) might not hold. (performance.vpr@56.3--56.23) [69250]"}
        arg_p_6 == real(2) * arg_q_3;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@56.3--56.23) [69251]"}
        NoPerm <= arg_p_6;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_30_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_15_1) && i_30_2 != j_15_1)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@56.3--56.23) [69252]"}
            Seq#Index(xs1, i_30_2) != Seq#Index(xs1, j_15_1);
        }
        assume false;
      }
      assume (forall i_31_1_1: int, j_16_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_31_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_16_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_31_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_16_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_31_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_16_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_31_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_16_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_31_1_1), Seq#Index(xs1, j_16_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_31_1_1), Seq#Index(xs1, j_16_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_16_1), Seq#Index(xs1, i_31_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_16_1), Seq#Index(xs1, i_31_1_1) } { Seq#Index(xs1, i_31_1_1), Seq#Index(xs1, j_16_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_31_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_16_1) && i_31_1_1 != j_16_1) ==> Seq#Index(xs1, i_31_1_1) != Seq#Index(xs1, j_16_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction 1 / 2 might be negative. (performance.vpr@56.3--56.23) [69253]"}
          (forall i_32_2: int ::
          { Seq#Index(xs1, i_32_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_32_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_2) } { Seq#Index(xs1, i_32_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_2) && dummyFunction(Heap[Seq#Index(xs1, i_32_2), f_7]) ==> arg_p_6 >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@56.3--56.23) [69254]"}
          (forall i_32_2: int, i_32_3: int ::
          { neverTriggered25(i_32_2), neverTriggered25(i_32_3) }
          (((i_32_2 != i_32_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_3)) && NoPerm < arg_p_6) && NoPerm < arg_p_6 ==> Seq#Index(xs1, i_32_2) != Seq#Index(xs1, i_32_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@56.3--56.23) [69255]"}
          (forall i_32_2: int ::
          { Seq#Index(xs1, i_32_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_32_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_2) } { Seq#Index(xs1, i_32_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_2) ==> Mask[Seq#Index(xs1, i_32_2), f_7] >= arg_p_6
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_32_2: int ::
          { Seq#Index(xs1, i_32_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_32_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_2) } { Seq#Index(xs1, i_32_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_32_2) && NoPerm < arg_p_6 ==> qpRange25(Seq#Index(xs1, i_32_2)) && invRecv25(Seq#Index(xs1, i_32_2)) == i_32_2
        );
        assume (forall o_4: Ref ::
          { invRecv25(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv25(o_4)) && (NoPerm < arg_p_6 && qpRange25(o_4)) ==> Seq#Index(xs1, invRecv25(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv25(o_4)) && (NoPerm < arg_p_6 && qpRange25(o_4)) ==> Seq#Index(xs1, invRecv25(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_6) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv25(o_4)) && (NoPerm < arg_p_6 && qpRange25(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@56.3--56.23) [69256]"}
        (forall i_33_1: int, i_33_2: int ::
        
        (((i_33_1 != i_33_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_2)) && NoPerm < arg_q_3) && NoPerm < arg_q_3 ==> Seq#Index(xs1, i_33_1) != Seq#Index(xs1, i_33_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_33_1: int ::
          { Seq#Index(xs1, i_33_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_33_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_1) } { Seq#Index(xs1, i_33_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_1) && NoPerm < arg_q_3 ==> qpRange26(Seq#Index(xs1, i_33_1)) && invRecv26(Seq#Index(xs1, i_33_1)) == i_33_1
        );
        assume (forall o_4: Ref ::
          { invRecv26(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv26(o_4)) && NoPerm < arg_q_3) && qpRange26(o_4) ==> Seq#Index(xs1, invRecv26(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@56.3--56.23) [69257]"}
        (forall i_33_1: int ::
        { Seq#Index(xs1, i_33_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_33_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_1) } { Seq#Index(xs1, i_33_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_1) ==> arg_q_3 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_33_1: int ::
          { Seq#Index(xs1, i_33_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_33_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_1) } { Seq#Index(xs1, i_33_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_33_1) && arg_q_3 > NoPerm ==> Seq#Index(xs1, i_33_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv26(o_4)) && NoPerm < arg_q_3) && qpRange26(o_4) ==> (NoPerm < arg_q_3 ==> Seq#Index(xs1, invRecv26(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q_3) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv26(o_4)) && NoPerm < arg_q_3) && qpRange26(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs1[i].f might not be injective. (performance.vpr@56.3--56.23) [69258]"}
        (forall i_34_2: int, i_34_3: int ::
        
        (((i_34_2 != i_34_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_3)) && NoPerm < arg_q_3) && NoPerm < arg_q_3 ==> Seq#Index(xs1, i_34_2) != Seq#Index(xs1, i_34_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_34_2: int ::
          { Seq#Index(xs1, i_34_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_34_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_2) } { Seq#Index(xs1, i_34_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_2) && NoPerm < arg_q_3 ==> qpRange27(Seq#Index(xs1, i_34_2)) && invRecv27(Seq#Index(xs1, i_34_2)) == i_34_2
        );
        assume (forall o_4: Ref ::
          { invRecv27(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv27(o_4)) && NoPerm < arg_q_3) && qpRange27(o_4) ==> Seq#Index(xs1, invRecv27(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@56.3--56.23) [69259]"}
        (forall i_34_2: int ::
        { Seq#Index(xs1, i_34_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_34_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_2) } { Seq#Index(xs1, i_34_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_2) ==> arg_q_3 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_34_2: int ::
          { Seq#Index(xs1, i_34_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_34_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_2) } { Seq#Index(xs1, i_34_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_34_2) && arg_q_3 > NoPerm ==> Seq#Index(xs1, i_34_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv27(o_4)) && NoPerm < arg_q_3) && qpRange27(o_4) ==> (NoPerm < arg_q_3 ==> Seq#Index(xs1, invRecv27(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q_3) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv27(o_4)) && NoPerm < arg_q_3) && qpRange27(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 4 >= none might not hold. (performance.vpr@57.3--57.17) [69260]"}
        NoPerm <= arg_p_7;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_35_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_17_1) && i_35_1 != j_17_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@57.3--57.17) [69261]"}
            Seq#Index(xs1, i_35_1) != Seq#Index(xs1, j_17_1);
        }
        assume false;
      }
      assume (forall i_36_1: int, j_18_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#Index(xs1, j_18_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_36_1), Seq#Index(xs1, j_18_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_18_1_1), Seq#Index(xs1, i_36_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_18_1_1), Seq#Index(xs1, i_36_1) } { Seq#Index(xs1, i_36_1), Seq#Index(xs1, j_18_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_36_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_18_1_1) && i_36_1 != j_18_1_1) ==> Seq#Index(xs1, i_36_1) != Seq#Index(xs1, j_18_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 4 might be negative. (performance.vpr@57.3--57.17) [69262]"}
          (forall i_37: int ::
          { Seq#Index(xs1, i_37) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Index(xs1, i_37) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) && dummyFunction(Heap[Seq#Index(xs1, i_37), f_7]) ==> arg_p_7 >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@57.3--57.17) [69263]"}
          (forall i_37: int, i_37_1: int ::
          { neverTriggered28(i_37), neverTriggered28(i_37_1) }
          (((i_37 != i_37_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37_1)) && NoPerm < arg_p_7) && NoPerm < arg_p_7 ==> Seq#Index(xs1, i_37) != Seq#Index(xs1, i_37_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@57.3--57.17) [69264]"}
          (forall i_37: int ::
          { Seq#Index(xs1, i_37) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Index(xs1, i_37) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) ==> Mask[Seq#Index(xs1, i_37), f_7] >= arg_p_7
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_37: int ::
          { Seq#Index(xs1, i_37) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) } { Seq#Index(xs1, i_37) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_37) && NoPerm < arg_p_7 ==> qpRange28(Seq#Index(xs1, i_37)) && invRecv28(Seq#Index(xs1, i_37)) == i_37
        );
        assume (forall o_4: Ref ::
          { invRecv28(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv28(o_4)) && (NoPerm < arg_p_7 && qpRange28(o_4)) ==> Seq#Index(xs1, invRecv28(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv28(o_4)) && (NoPerm < arg_p_7 && qpRange28(o_4)) ==> Seq#Index(xs1, invRecv28(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_7) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv28(o_4)) && (NoPerm < arg_p_7 && qpRange28(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs3, 1 / 3) -- performance.vpr@58.3--58.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_8 := 1 / 3;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 3 >= none might not hold. (performance.vpr@58.3--58.17) [69265]"}
        NoPerm <= arg_p_8;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_38) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_19_1) && i_38 != j_19_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs3[i] != xs3[j] might not hold. (performance.vpr@58.3--58.17) [69266]"}
            Seq#Index(xs3, i_38) != Seq#Index(xs3, j_19_1);
        }
        assume false;
      }
      assume (forall i_39_1_1: int, j_20_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#Index(xs3, j_20_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_39_1_1), Seq#Index(xs3, j_20_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_20_1), Seq#Index(xs3, i_39_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_20_1), Seq#Index(xs3, i_39_1_1) } { Seq#Index(xs3, i_39_1_1), Seq#Index(xs3, j_20_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_39_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_20_1) && i_39_1_1 != j_20_1) ==> Seq#Index(xs3, i_39_1_1) != Seq#Index(xs3, j_20_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 3 might be negative. (performance.vpr@58.3--58.17) [69267]"}
          (forall i_40: int ::
          { Seq#Index(xs3, i_40) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Index(xs3, i_40) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) && dummyFunction(Heap[Seq#Index(xs3, i_40), f_7]) ==> arg_p_8 >= NoPerm
        );
      
      // -- check if receiver xs3[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs3[i].f might not be injective. (performance.vpr@58.3--58.17) [69268]"}
          (forall i_40: int, i_40_2: int ::
          { neverTriggered29(i_40), neverTriggered29(i_40_2) }
          (((i_40 != i_40_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40_2)) && NoPerm < arg_p_8) && NoPerm < arg_p_8 ==> Seq#Index(xs3, i_40) != Seq#Index(xs3, i_40_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs3[i].f (performance.vpr@58.3--58.17) [69269]"}
          (forall i_40: int ::
          { Seq#Index(xs3, i_40) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Index(xs3, i_40) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) ==> Mask[Seq#Index(xs3, i_40), f_7] >= arg_p_8
        );
      
      // -- assumptions for inverse of receiver xs3[i]
        assume (forall i_40: int ::
          { Seq#Index(xs3, i_40) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) } { Seq#Index(xs3, i_40) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_40) && NoPerm < arg_p_8 ==> qpRange29(Seq#Index(xs3, i_40)) && invRecv29(Seq#Index(xs3, i_40)) == i_40
        );
        assume (forall o_4: Ref ::
          { invRecv29(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv29(o_4)) && (NoPerm < arg_p_8 && qpRange29(o_4)) ==> Seq#Index(xs3, invRecv29(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv29(o_4)) && (NoPerm < arg_p_8 && qpRange29(o_4)) ==> Seq#Index(xs3, invRecv29(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_8) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv29(o_4)) && (NoPerm < arg_p_8 && qpRange29(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: split(xs2, 1 / 2, 1 / 4) -- performance.vpr@62.3--62.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_9 := 1 / 2;
    arg_q_4 := 1 / 4;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 == 2 * (1 / 4) might not hold. (performance.vpr@62.3--62.23) [69270]"}
        arg_p_9 == real(2) * arg_q_4;
      assert {:msg "  The precondition of method split might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@62.3--62.23) [69271]"}
        NoPerm <= arg_p_9;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_41_2) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_21_1) && i_41_2 != j_21_1)) {
          assert {:msg "  The precondition of method split might not hold. Assertion xs2[i] != xs2[j] might not hold. (performance.vpr@62.3--62.23) [69272]"}
            Seq#Index(xs2, i_41_2) != Seq#Index(xs2, j_21_1);
        }
        assume false;
      }
      assume (forall i_42_1: int, j_22_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_42_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_22_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_42_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_22_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_42_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_22_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_42_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_22_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_42_1), Seq#Index(xs2, j_22_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_42_1), Seq#Index(xs2, j_22_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_22_1), Seq#Index(xs2, i_42_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_22_1), Seq#Index(xs2, i_42_1) } { Seq#Index(xs2, i_42_1), Seq#Index(xs2, j_22_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_42_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_22_1) && i_42_1 != j_22_1) ==> Seq#Index(xs2, i_42_1) != Seq#Index(xs2, j_22_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method split might not hold. Fraction 1 / 2 might be negative. (performance.vpr@62.3--62.23) [69273]"}
          (forall i_43_2: int ::
          { Seq#Index(xs2, i_43_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_43_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_2) } { Seq#Index(xs2, i_43_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_2) && dummyFunction(Heap[Seq#Index(xs2, i_43_2), f_7]) ==> arg_p_9 >= NoPerm
        );
      
      // -- check if receiver xs2[i] is injective
        assert {:msg "  The precondition of method split might not hold. Quantified resource xs2[i].f might not be injective. (performance.vpr@62.3--62.23) [69274]"}
          (forall i_43_2: int, i_43_3: int ::
          { neverTriggered30(i_43_2), neverTriggered30(i_43_3) }
          (((i_43_2 != i_43_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_3)) && NoPerm < arg_p_9) && NoPerm < arg_p_9 ==> Seq#Index(xs2, i_43_2) != Seq#Index(xs2, i_43_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method split might not hold. There might be insufficient permission to access xs2[i].f (performance.vpr@62.3--62.23) [69275]"}
          (forall i_43_2: int ::
          { Seq#Index(xs2, i_43_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_43_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_2) } { Seq#Index(xs2, i_43_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_2) ==> Mask[Seq#Index(xs2, i_43_2), f_7] >= arg_p_9
        );
      
      // -- assumptions for inverse of receiver xs2[i]
        assume (forall i_43_2: int ::
          { Seq#Index(xs2, i_43_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_43_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_2) } { Seq#Index(xs2, i_43_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_43_2) && NoPerm < arg_p_9 ==> qpRange30(Seq#Index(xs2, i_43_2)) && invRecv30(Seq#Index(xs2, i_43_2)) == i_43_2
        );
        assume (forall o_4: Ref ::
          { invRecv30(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv30(o_4)) && (NoPerm < arg_p_9 && qpRange30(o_4)) ==> Seq#Index(xs2, invRecv30(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv30(o_4)) && (NoPerm < arg_p_9 && qpRange30(o_4)) ==> Seq#Index(xs2, invRecv30(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_9) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv30(o_4)) && (NoPerm < arg_p_9 && qpRange30(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@62.3--62.23) [69276]"}
        (forall i_44: int, i_44_1: int ::
        
        (((i_44 != i_44_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44_1)) && NoPerm < arg_q_4) && NoPerm < arg_q_4 ==> Seq#Index(xs2, i_44) != Seq#Index(xs2, i_44_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_44: int ::
          { Seq#Index(xs2, i_44) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_44) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44) } { Seq#Index(xs2, i_44) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_44) && NoPerm < arg_q_4 ==> qpRange31(Seq#Index(xs2, i_44)) && invRecv31(Seq#Index(xs2, i_44)) == i_44
        );
        assume (forall o_4: Ref ::
          { invRecv31(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv31(o_4)) && NoPerm < arg_q_4) && qpRange31(o_4) ==> Seq#Index(xs2, invRecv31(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@62.3--62.23) [69277]"}
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
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv31(o_4)) && NoPerm < arg_q_4) && qpRange31(o_4) ==> (NoPerm < arg_q_4 ==> Seq#Index(xs2, invRecv31(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q_4) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv31(o_4)) && NoPerm < arg_q_4) && qpRange31(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource xs2[i].f might not be injective. (performance.vpr@62.3--62.23) [69278]"}
        (forall i_45_2: int, i_45_3: int ::
        
        (((i_45_2 != i_45_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_3)) && NoPerm < arg_q_4) && NoPerm < arg_q_4 ==> Seq#Index(xs2, i_45_2) != Seq#Index(xs2, i_45_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_45_2: int ::
          { Seq#Index(xs2, i_45_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_45_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_2) } { Seq#Index(xs2, i_45_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_2) && NoPerm < arg_q_4 ==> qpRange32(Seq#Index(xs2, i_45_2)) && invRecv32(Seq#Index(xs2, i_45_2)) == i_45_2
        );
        assume (forall o_4: Ref ::
          { invRecv32(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv32(o_4)) && NoPerm < arg_q_4) && qpRange32(o_4) ==> Seq#Index(xs2, invRecv32(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 4 might be negative. (performance.vpr@62.3--62.23) [69279]"}
        (forall i_45_2: int ::
        { Seq#Index(xs2, i_45_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_45_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_2) } { Seq#Index(xs2, i_45_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_2) ==> arg_q_4 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_45_2: int ::
          { Seq#Index(xs2, i_45_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_45_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_2) } { Seq#Index(xs2, i_45_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_45_2) && arg_q_4 > NoPerm ==> Seq#Index(xs2, i_45_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv32(o_4)) && NoPerm < arg_q_4) && qpRange32(o_4) ==> (NoPerm < arg_q_4 ==> Seq#Index(xs2, invRecv32(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + arg_q_4) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv32(o_4)) && NoPerm < arg_q_4) && qpRange32(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 4 >= none might not hold. (performance.vpr@63.3--63.17) [69280]"}
        NoPerm <= arg_p_10;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_46) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_23_1) && i_46 != j_23_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs1[i] != xs1[j] might not hold. (performance.vpr@63.3--63.17) [69281]"}
            Seq#Index(xs1, i_46) != Seq#Index(xs1, j_23_1);
        }
        assume false;
      }
      assume (forall i_47_1: int, j_24_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_24_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_24_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_24_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_24_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#Index(xs1, j_24_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_47_1), Seq#Index(xs1, j_24_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), j_24_1), Seq#Index(xs1, i_47_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_24_1), Seq#Index(xs1, i_47_1) } { Seq#Index(xs1, i_47_1), Seq#Index(xs1, j_24_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_47_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), j_24_1) && i_47_1 != j_24_1) ==> Seq#Index(xs1, i_47_1) != Seq#Index(xs1, j_24_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 4 might be negative. (performance.vpr@63.3--63.17) [69282]"}
          (forall i_48_2: int ::
          { Seq#Index(xs1, i_48_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_48_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_2) } { Seq#Index(xs1, i_48_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_2) && dummyFunction(Heap[Seq#Index(xs1, i_48_2), f_7]) ==> arg_p_10 >= NoPerm
        );
      
      // -- check if receiver xs1[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs1[i].f might not be injective. (performance.vpr@63.3--63.17) [69283]"}
          (forall i_48_2: int, i_48_3: int ::
          { neverTriggered33(i_48_2), neverTriggered33(i_48_3) }
          (((i_48_2 != i_48_3 && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_2)) && Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_3)) && NoPerm < arg_p_10) && NoPerm < arg_p_10 ==> Seq#Index(xs1, i_48_2) != Seq#Index(xs1, i_48_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs1[i].f (performance.vpr@63.3--63.17) [69284]"}
          (forall i_48_2: int ::
          { Seq#Index(xs1, i_48_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_48_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_2) } { Seq#Index(xs1, i_48_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_2) ==> Mask[Seq#Index(xs1, i_48_2), f_7] >= arg_p_10
        );
      
      // -- assumptions for inverse of receiver xs1[i]
        assume (forall i_48_2: int ::
          { Seq#Index(xs1, i_48_2) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs1)), i_48_2) } { Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_2) } { Seq#Index(xs1, i_48_2) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), i_48_2) && NoPerm < arg_p_10 ==> qpRange33(Seq#Index(xs1, i_48_2)) && invRecv33(Seq#Index(xs1, i_48_2)) == i_48_2
        );
        assume (forall o_4: Ref ::
          { invRecv33(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv33(o_4)) && (NoPerm < arg_p_10 && qpRange33(o_4)) ==> Seq#Index(xs1, invRecv33(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv33(o_4)) && (NoPerm < arg_p_10 && qpRange33(o_4)) ==> Seq#Index(xs1, invRecv33(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_10) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs1)), invRecv33(o_4)) && (NoPerm < arg_p_10 && qpRange33(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs3, 1 / 3) -- performance.vpr@67.3--67.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_11 := 1 / 3;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 3 >= none might not hold. (performance.vpr@67.3--67.17) [69285]"}
        NoPerm <= arg_p_11;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_49) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_25_1) && i_49 != j_25_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs3[i] != xs3[j] might not hold. (performance.vpr@67.3--67.17) [69286]"}
            Seq#Index(xs3, i_49) != Seq#Index(xs3, j_25_1);
        }
        assume false;
      }
      assume (forall i_50_1_1: int, j_26_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_50_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_50_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_50_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_50_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_50_1_1), Seq#Index(xs3, j_26_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_50_1_1), Seq#Index(xs3, j_26_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), j_26_1), Seq#Index(xs3, i_50_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_26_1), Seq#Index(xs3, i_50_1_1) } { Seq#Index(xs3, i_50_1_1), Seq#Index(xs3, j_26_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_50_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), j_26_1) && i_50_1_1 != j_26_1) ==> Seq#Index(xs3, i_50_1_1) != Seq#Index(xs3, j_26_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 3 might be negative. (performance.vpr@67.3--67.17) [69287]"}
          (forall i_51: int ::
          { Seq#Index(xs3, i_51) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_51) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51) } { Seq#Index(xs3, i_51) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51) && dummyFunction(Heap[Seq#Index(xs3, i_51), f_7]) ==> arg_p_11 >= NoPerm
        );
      
      // -- check if receiver xs3[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs3[i].f might not be injective. (performance.vpr@67.3--67.17) [69288]"}
          (forall i_51: int, i_51_1: int ::
          { neverTriggered34(i_51), neverTriggered34(i_51_1) }
          (((i_51 != i_51_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51)) && Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51_1)) && NoPerm < arg_p_11) && NoPerm < arg_p_11 ==> Seq#Index(xs3, i_51) != Seq#Index(xs3, i_51_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs3[i].f (performance.vpr@67.3--67.17) [69289]"}
          (forall i_51: int ::
          { Seq#Index(xs3, i_51) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_51) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51) } { Seq#Index(xs3, i_51) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51) ==> Mask[Seq#Index(xs3, i_51), f_7] >= arg_p_11
        );
      
      // -- assumptions for inverse of receiver xs3[i]
        assume (forall i_51: int ::
          { Seq#Index(xs3, i_51) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs3)), i_51) } { Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51) } { Seq#Index(xs3, i_51) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), i_51) && NoPerm < arg_p_11 ==> qpRange34(Seq#Index(xs3, i_51)) && invRecv34(Seq#Index(xs3, i_51)) == i_51
        );
        assume (forall o_4: Ref ::
          { invRecv34(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv34(o_4)) && (NoPerm < arg_p_11 && qpRange34(o_4)) ==> Seq#Index(xs3, invRecv34(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv34(o_4)) && (NoPerm < arg_p_11 && qpRange34(o_4)) ==> Seq#Index(xs3, invRecv34(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_11) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs3)), invRecv34(o_4)) && (NoPerm < arg_p_11 && qpRange34(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: leak(xs2, 1 / 2) -- performance.vpr@68.3--68.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_12 := 1 / 2;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method leak might not hold. Assertion 1 / 2 >= none might not hold. (performance.vpr@68.3--68.17) [69290]"}
        NoPerm <= arg_p_12;
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_52_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_27_1) && i_52_1 != j_27_1)) {
          assert {:msg "  The precondition of method leak might not hold. Assertion xs2[i] != xs2[j] might not hold. (performance.vpr@68.3--68.17) [69291]"}
            Seq#Index(xs2, i_52_1) != Seq#Index(xs2, j_27_1);
        }
        assume false;
      }
      assume (forall i_53_1_1: int, j_28_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_53_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_28_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_53_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_28_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_53_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_28_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_53_1_1), Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_28_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_53_1_1), Seq#Index(xs2, j_28_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_53_1_1), Seq#Index(xs2, j_28_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), j_28_1), Seq#Index(xs2, i_53_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_28_1), Seq#Index(xs2, i_53_1_1) } { Seq#Index(xs2, i_53_1_1), Seq#Index(xs2, j_28_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_53_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), j_28_1) && i_53_1_1 != j_28_1) ==> Seq#Index(xs2, i_53_1_1) != Seq#Index(xs2, j_28_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method leak might not hold. Fraction 1 / 2 might be negative. (performance.vpr@68.3--68.17) [69292]"}
          (forall i_54_1: int ::
          { Seq#Index(xs2, i_54_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_54_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_1) } { Seq#Index(xs2, i_54_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_1) && dummyFunction(Heap[Seq#Index(xs2, i_54_1), f_7]) ==> arg_p_12 >= NoPerm
        );
      
      // -- check if receiver xs2[i] is injective
        assert {:msg "  The precondition of method leak might not hold. Quantified resource xs2[i].f might not be injective. (performance.vpr@68.3--68.17) [69293]"}
          (forall i_54_1: int, i_54_2: int ::
          { neverTriggered35(i_54_1), neverTriggered35(i_54_2) }
          (((i_54_1 != i_54_2 && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_2)) && NoPerm < arg_p_12) && NoPerm < arg_p_12 ==> Seq#Index(xs2, i_54_1) != Seq#Index(xs2, i_54_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method leak might not hold. There might be insufficient permission to access xs2[i].f (performance.vpr@68.3--68.17) [69294]"}
          (forall i_54_1: int ::
          { Seq#Index(xs2, i_54_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_54_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_1) } { Seq#Index(xs2, i_54_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_1) ==> Mask[Seq#Index(xs2, i_54_1), f_7] >= arg_p_12
        );
      
      // -- assumptions for inverse of receiver xs2[i]
        assume (forall i_54_1: int ::
          { Seq#Index(xs2, i_54_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs2)), i_54_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_1) } { Seq#Index(xs2, i_54_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), i_54_1) && NoPerm < arg_p_12 ==> qpRange35(Seq#Index(xs2, i_54_1)) && invRecv35(Seq#Index(xs2, i_54_1)) == i_54_1
        );
        assume (forall o_4: Ref ::
          { invRecv35(o_4) }
          Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv35(o_4)) && (NoPerm < arg_p_12 && qpRange35(o_4)) ==> Seq#Index(xs2, invRecv35(o_4)) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv35(o_4)) && (NoPerm < arg_p_12 && qpRange35(o_4)) ==> Seq#Index(xs2, invRecv35(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - arg_p_12) && (!(Seq#Contains(Seq#Range(0, Seq#Length(xs2)), invRecv35(o_4)) && (NoPerm < arg_p_12 && qpRange35(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}