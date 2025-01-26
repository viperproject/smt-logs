// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:27
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_58: Ref, f_70: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_58, f_70] }
  Heap[o_58, $allocated] ==> Heap[Heap[o_58, f_70], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_66: Ref, f_134: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_66, f_134] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_66, f_134) ==> Heap[o_66, f_134] == ExhaleHeap[o_66, f_134]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_53: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_53), ExhaleHeap[null, PredicateMaskField(pm_f_53)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_53) && IsPredicateField(pm_f_53) ==> Heap[null, PredicateMaskField(pm_f_53)] == ExhaleHeap[null, PredicateMaskField(pm_f_53)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_53: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_53) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_53) && IsPredicateField(pm_f_53) ==> (forall <A, B> o2_54: Ref, f_134: (Field A B) ::
    { ExhaleHeap[o2_54, f_134] }
    Heap[null, PredicateMaskField(pm_f_53)][o2_54, f_134] ==> Heap[o2_54, f_134] == ExhaleHeap[o2_54, f_134]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_53: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_53), ExhaleHeap[null, WandMaskField(pm_f_53)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_53) && IsWandField(pm_f_53) ==> Heap[null, WandMaskField(pm_f_53)] == ExhaleHeap[null, WandMaskField(pm_f_53)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_53: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_53) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_53) && IsWandField(pm_f_53) ==> (forall <A, B> o2_54: Ref, f_134: (Field A B) ::
    { ExhaleHeap[o2_54, f_134] }
    Heap[null, WandMaskField(pm_f_53)][o2_54, f_134] ==> Heap[o2_54, f_134] == ExhaleHeap[o2_54, f_134]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_66: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_66, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_66, $allocated] ==> ExhaleHeap[o_66, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_58: Ref, f_67: (Field A B), v: B ::
  { Heap[o_58, f_67:=v] }
  succHeap(Heap, Heap[o_58, f_67:=v])
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
function  neverTriggered2(i_7_1: int): bool;
function  neverTriggered3(i_11_1: int): bool;
function  neverTriggered4(i_15_1: int): bool;
function  neverTriggered5(i_18_1: int): bool;
function  neverTriggered6(i_21_1: int): bool;
function  neverTriggered7(i_23_1: int): bool;
function  neverTriggered8(i_25_1: int): bool;
function  neverTriggered9(i_27_2: int): bool;
function  neverTriggered10(i_29: int): bool;
function  neverTriggered11(i_31: int): bool;
function  neverTriggered12(i_33: int): bool;
function  neverTriggered13(i_35: int): bool;
function  neverTriggered14(i_37: int): bool;
function  neverTriggered15(k: int): bool;
function  neverTriggered16(l_1: int): bool;
function  neverTriggered17(i_43: int): bool;
function  neverTriggered18(i_45: int): bool;
function  neverTriggered19(k_1: int): bool;
function  neverTriggered20(l_1_2: int): bool;
function  neverTriggered21(i_7_1: int): bool;
function  neverTriggered22(i_11_1: int): bool;
function  neverTriggered23(i_14_1: int): bool;
function  neverTriggered24(i_17_1: int): bool;
function  neverTriggered25(i_18_1: int): bool;
function  neverTriggered26(i_19_1: int): bool;
function  neverTriggered27(i_21_1: int): bool;
function  neverTriggered28(i_23_1: int): bool;
function  neverTriggered29(i_24_1: int): bool;
function  neverTriggered30(i_25_1: int): bool;
function  neverTriggered31(i_26_1: int): bool;
function  neverTriggered32(i_27_2: int): bool;
function  neverTriggered33(i_28: int): bool;
function  neverTriggered34(i_29: int): bool;
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

const unique value_1: Field NormalField int;
axiom !IsPredicateField(value_1);
axiom !IsWandField(value_1);
const unique array_1: Field NormalField (Seq Ref);
axiom !IsPredicateField(array_1);
axiom !IsWandField(array_1);

// ==================================================
// Translation of method parallel_mergesort
// ==================================================

procedure parallel_mergesort(a_2: Ref, b_24: Ref, start_1: int, end_1: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_18: int;
  var j_14: int;
  var i_3: int;
  var QPMask: MaskType;
  var i_4: int;
  var j_12: int;
  var i_14: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_5: int;
  var j_2: int;
  var i_15: int;
  var i_7: int;
  var j_4: int;
  var i_21: int;
  var middle: int;
  var t1A: (Seq Ref);
  var t1B: (Seq Ref);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i_8: int;
  var i_19: int;
  var t2A: (Seq Ref);
  var t2B: (Seq Ref);
  var i_9: int;
  var i_10: int;
  var i_17: int;
  var i_11: int;
  var i_12: int;
  var i_13: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var i_38: int;
  var j_12_2: int;
  var i_40: int;
  var j_14_2: int;
  var i_16_1: int;
  var j_8_2: int;
  var i_19_1: int;
  var j_10_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    assume a_2 != null;
    Mask := Mask[a_2, array_1:=Mask[a_2, array_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume b_24 != null;
    Mask := Mask[b_24, array_1:=Mask[b_24, array_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume start_1 >= 0;
    
    // -- Check definedness of end <= |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@13.12--13.68) [185046]"}
        HasDirectPerm(Mask, a_2, array_1);
    assume end_1 <= Seq#Length(Heap[a_2, array_1]);
    
    // -- Check definedness of |a.array| == |b.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@13.12--13.68) [185047]"}
        HasDirectPerm(Mask, a_2, array_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@13.12--13.68) [185048]"}
        HasDirectPerm(Mask, b_24, array_1);
    assume Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_18) && (Seq#Contains(Seq#Range(start_1, end_1), j_14) && i_18 != j_14)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@14.12--14.112) [185049]"}
            HasDirectPerm(Mask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@14.12--14.112) [185050]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@14.12--14.112) [185051]"}
            i_18 < Seq#Length(Heap[a_2, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@14.12--14.112) [185052]"}
            HasDirectPerm(Mask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (mergesort.vpr@14.12--14.112) [185053]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (mergesort.vpr@14.12--14.112) [185054]"}
            j_14 < Seq#Length(Heap[a_2, array_1]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_1), Seq#Contains(Seq#Range(start_1, end_1), j_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_1), Seq#Contains(Seq#Range(start_1, end_1), j_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_1), Seq#Index(Heap[a_2, array_1], j_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_1), Seq#Index(Heap[a_2, array_1], j_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_1), Seq#Index(Heap[a_2, array_1], i_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_1), Seq#Index(Heap[a_2, array_1], i_1) } { Seq#Index(Heap[a_2, array_1], i_1), Seq#Index(Heap[a_2, array_1], j_1) }
      Seq#Contains(Seq#Range(start_1, end_1), i_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_1) && i_1 != j_1) ==> Seq#Index(Heap[a_2, array_1], i_1) != Seq#Index(Heap[a_2, array_1], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_3)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@15.12--15.78) [185055]"}
            HasDirectPerm(Mask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@15.12--15.78) [185056]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@15.12--15.78) [185057]"}
            i_3 < Seq#Length(Heap[a_2, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@15.12--15.78) [185058]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(start_1, end_1), i_3_2)) && Seq#Contains(Seq#Range(start_1, end_1), i_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_3_2) != Seq#Index(Heap[a_2, array_1], i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(Heap[a_2, array_1], i_3_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_3_2) } { Seq#Contains(Seq#Range(start_1, end_1), i_3_2) } { Seq#Index(Heap[a_2, array_1], i_3_2) }
        Seq#Contains(Seq#Range(start_1, end_1), i_3_2) && NoPerm < FullPerm ==> qpRange1(Seq#Index(Heap[a_2, array_1], i_3_2)) && invRecv1(Seq#Index(Heap[a_2, array_1], i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> Seq#Index(Heap[a_2, array_1], invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(Heap[a_2, array_1], i_3_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_3_2) } { Seq#Contains(Seq#Range(start_1, end_1), i_3_2) } { Seq#Index(Heap[a_2, array_1], i_3_2) }
        Seq#Contains(Seq#Range(start_1, end_1), i_3_2) ==> Seq#Index(Heap[a_2, array_1], i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(start_1, end_1), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], invRecv1(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_4) && (Seq#Contains(Seq#Range(start_1, end_1), j_12) && i_4 != j_12)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@16.12--16.112) [185059]"}
            HasDirectPerm(Mask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@16.12--16.112) [185060]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@16.12--16.112) [185061]"}
            i_4 < Seq#Length(Heap[b_24, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@16.12--16.112) [185062]"}
            HasDirectPerm(Mask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might be negative. (mergesort.vpr@16.12--16.112) [185063]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might exceed sequence length. (mergesort.vpr@16.12--16.112) [185064]"}
            j_12 < Seq#Length(Heap[b_24, array_1]);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_3: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_5_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_3) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_5_1), Seq#Contains(Seq#Range(start_1, end_1), j_3) } { Seq#Contains(Seq#Range(start_1, end_1), i_5_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_3) } { Seq#Contains(Seq#Range(start_1, end_1), i_5_1), Seq#Contains(Seq#Range(start_1, end_1), j_3) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_5_1), Seq#Index(Heap[b_24, array_1], j_3) } { Seq#Contains(Seq#Range(start_1, end_1), i_5_1), Seq#Index(Heap[b_24, array_1], j_3) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_3), Seq#Index(Heap[b_24, array_1], i_5_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_3), Seq#Index(Heap[b_24, array_1], i_5_1) } { Seq#Index(Heap[b_24, array_1], i_5_1), Seq#Index(Heap[b_24, array_1], j_3) }
      Seq#Contains(Seq#Range(start_1, end_1), i_5_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_3) && i_5_1 != j_3) ==> Seq#Index(Heap[b_24, array_1], i_5_1) != Seq#Index(Heap[b_24, array_1], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_14)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@17.12--17.78) [185065]"}
            HasDirectPerm(Mask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@17.12--17.78) [185066]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@17.12--17.78) [185067]"}
            i_14 < Seq#Length(Heap[b_24, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@17.12--17.78) [185068]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(start_1, end_1), i_7_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_7_1) != Seq#Index(Heap[b_24, array_1], i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(Heap[b_24, array_1], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_7_1) } { Seq#Index(Heap[b_24, array_1], i_7_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_7_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(Heap[b_24, array_1], i_7_1)) && invRecv2(Seq#Index(Heap[b_24, array_1], i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9) ==> Seq#Index(Heap[b_24, array_1], invRecv2(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(Heap[b_24, array_1], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_7_1) } { Seq#Index(Heap[b_24, array_1], i_7_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_7_1) ==> Seq#Index(Heap[b_24, array_1], i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(start_1, end_1), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], invRecv2(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv2(o_9)) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
    havoc wildcard;
    perm := wildcard;
    assume a_2 != null;
    PostMask := PostMask[a_2, array_1:=PostMask[a_2, array_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume b_24 != null;
    PostMask := PostMask[b_24, array_1:=PostMask[b_24, array_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume start_1 >= 0;
    
    // -- Check definedness of end <= |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@20.11--20.67) [185069]"}
        HasDirectPerm(PostMask, a_2, array_1);
    assume end_1 <= Seq#Length(PostHeap[a_2, array_1]);
    
    // -- Check definedness of |a.array| == |b.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@20.11--20.67) [185070]"}
        HasDirectPerm(PostMask, a_2, array_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@20.11--20.67) [185071]"}
        HasDirectPerm(PostMask, b_24, array_1);
    assume Seq#Length(PostHeap[a_2, array_1]) == Seq#Length(PostHeap[b_24, array_1]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_5) && (Seq#Contains(Seq#Range(start_1, end_1), j_2) && i_5 != j_2)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@21.11--21.111) [185072]"}
            HasDirectPerm(PostMask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@21.11--21.111) [185073]"}
            i_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@21.11--21.111) [185074]"}
            i_5 < Seq#Length(PostHeap[a_2, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@21.11--21.111) [185075]"}
            HasDirectPerm(PostMask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (mergesort.vpr@21.11--21.111) [185076]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (mergesort.vpr@21.11--21.111) [185077]"}
            j_2 < Seq#Length(PostHeap[a_2, array_1]);
        }
        assume false;
      }
    assume (forall i_9_1: int, j_5: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_9_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_5) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_9_1), Seq#Contains(Seq#Range(start_1, end_1), j_5) } { Seq#Contains(Seq#Range(start_1, end_1), i_9_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_5) } { Seq#Contains(Seq#Range(start_1, end_1), i_9_1), Seq#Contains(Seq#Range(start_1, end_1), j_5) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_9_1), Seq#Index(PostHeap[a_2, array_1], j_5) } { Seq#Contains(Seq#Range(start_1, end_1), i_9_1), Seq#Index(PostHeap[a_2, array_1], j_5) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_5), Seq#Index(PostHeap[a_2, array_1], i_9_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_5), Seq#Index(PostHeap[a_2, array_1], i_9_1) } { Seq#Index(PostHeap[a_2, array_1], i_9_1), Seq#Index(PostHeap[a_2, array_1], j_5) }
      Seq#Contains(Seq#Range(start_1, end_1), i_9_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_5) && i_9_1 != j_5) ==> Seq#Index(PostHeap[a_2, array_1], i_9_1) != Seq#Index(PostHeap[a_2, array_1], j_5)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_15)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@22.11--22.77) [185078]"}
            HasDirectPerm(PostMask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@22.11--22.77) [185079]"}
            i_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@22.11--22.77) [185080]"}
            i_15 < Seq#Length(PostHeap[a_2, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@22.11--22.77) [185081]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(start_1, end_1), i_11_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[a_2, array_1], i_11_1) != Seq#Index(PostHeap[a_2, array_1], i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[a_2, array_1], i_11_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_11_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_11_1) } { Seq#Index(PostHeap[a_2, array_1], i_11_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_11_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(PostHeap[a_2, array_1], i_11_1)) && invRecv3(Seq#Index(PostHeap[a_2, array_1], i_11_1)) == i_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(PostHeap[a_2, array_1], invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[a_2, array_1], i_11_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_11_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_11_1) } { Seq#Index(PostHeap[a_2, array_1], i_11_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_11_1) ==> Seq#Index(PostHeap[a_2, array_1], i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(start_1, end_1), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[a_2, array_1], invRecv3(o_9)) == o_9) && QPMask[o_9, value_1] == PostMask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, value_1] == PostMask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_7) && (Seq#Contains(Seq#Range(start_1, end_1), j_4) && i_7 != j_4)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@23.11--23.111) [185082]"}
            HasDirectPerm(PostMask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@23.11--23.111) [185083]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@23.11--23.111) [185084]"}
            i_7 < Seq#Length(PostHeap[b_24, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@23.11--23.111) [185085]"}
            HasDirectPerm(PostMask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might be negative. (mergesort.vpr@23.11--23.111) [185086]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might exceed sequence length. (mergesort.vpr@23.11--23.111) [185087]"}
            j_4 < Seq#Length(PostHeap[b_24, array_1]);
        }
        assume false;
      }
    assume (forall i_13_1: int, j_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_13_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_13_1), Seq#Contains(Seq#Range(start_1, end_1), j_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_13_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_13_1), Seq#Contains(Seq#Range(start_1, end_1), j_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_13_1), Seq#Index(PostHeap[b_24, array_1], j_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_13_1), Seq#Index(PostHeap[b_24, array_1], j_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_7_1), Seq#Index(PostHeap[b_24, array_1], i_13_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_7_1), Seq#Index(PostHeap[b_24, array_1], i_13_1) } { Seq#Index(PostHeap[b_24, array_1], i_13_1), Seq#Index(PostHeap[b_24, array_1], j_7_1) }
      Seq#Contains(Seq#Range(start_1, end_1), i_13_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_7_1) && i_13_1 != j_7_1) ==> Seq#Index(PostHeap[b_24, array_1], i_13_1) != Seq#Index(PostHeap[b_24, array_1], j_7_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_21)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@24.11--24.77) [185088]"}
            HasDirectPerm(PostMask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@24.11--24.77) [185089]"}
            i_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@24.11--24.77) [185090]"}
            i_21 < Seq#Length(PostHeap[b_24, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@24.11--24.77) [185091]"}
      (forall i_15_1: int, i_15_2: int ::
      
      (((i_15_1 != i_15_2 && Seq#Contains(Seq#Range(start_1, end_1), i_15_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_15_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[b_24, array_1], i_15_1) != Seq#Index(PostHeap[b_24, array_1], i_15_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_15_1: int ::
        { Seq#Index(PostHeap[b_24, array_1], i_15_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_15_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_15_1) } { Seq#Index(PostHeap[b_24, array_1], i_15_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_15_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(PostHeap[b_24, array_1], i_15_1)) && invRecv4(Seq#Index(PostHeap[b_24, array_1], i_15_1)) == i_15_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9) ==> Seq#Index(PostHeap[b_24, array_1], invRecv4(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_15_1: int ::
        { Seq#Index(PostHeap[b_24, array_1], i_15_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_15_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_15_1) } { Seq#Index(PostHeap[b_24, array_1], i_15_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_15_1) ==> Seq#Index(PostHeap[b_24, array_1], i_15_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(start_1, end_1), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[b_24, array_1], invRecv4(o_9)) == o_9) && QPMask[o_9, value_1] == PostMask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, value_1] == PostMask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a.array == old(a.array)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@25.11--25.34) [185092]"}
        HasDirectPerm(PostMask, a_2, array_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@25.11--25.34) [185093]"}
        HasDirectPerm(oldMask, a_2, array_1);
    assume Seq#Equal(PostHeap[a_2, array_1], oldHeap[a_2, array_1]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of b.array == old(b.array)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@26.11--26.34) [185094]"}
        HasDirectPerm(PostMask, b_24, array_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@26.11--26.34) [185095]"}
        HasDirectPerm(oldMask, b_24, array_1);
    assume Seq#Equal(PostHeap[b_24, array_1], oldHeap[b_24, array_1]);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (end - start > 1) -- mergesort.vpr@34.5--73.6
    if (end_1 - start_1 > 1) {
      
      // -- Translating statement: middle := start + (end - start) \ 2 -- mergesort.vpr@36.9--36.40
        middle := start_1 + (end_1 - start_1) div 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: t1A := a.array -- mergesort.vpr@39.3--39.17
        
        // -- Check definedness of a.array
          assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (mergesort.vpr@39.3--39.17) [185096]"}
            HasDirectPerm(Mask, a_2, array_1);
        t1A := Heap[a_2, array_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: t1B := b.array -- mergesort.vpr@40.3--40.17
        
        // -- Check definedness of b.array
          assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array (mergesort.vpr@40.3--40.17) [185097]"}
            HasDirectPerm(Mask, b_24, array_1);
        t1B := Heap[b_24, array_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(a.array, wildcard) -- mergesort.vpr@41.3--41.32
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@41.10--41.32) [185098]"}
          Mask[a_2, array_1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array_1];
        Mask := Mask[a_2, array_1:=Mask[a_2, array_1] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(b.array, wildcard) -- mergesort.vpr@42.9--42.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@42.16--42.38) [185099]"}
          Mask[b_24, array_1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[b_24, array_1];
        Mask := Mask[b_24, array_1:=Mask[b_24, array_1] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale start >= 0 && (middle <= |a.array| && |a.array| == |b.array|) -- mergesort.vpr@43.9--43.75
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion start >= 0 might not hold. (mergesort.vpr@43.16--43.75) [185100]"}
          start_1 >= 0;
        
        // -- Check definedness of middle <= |a.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@43.16--43.75) [185101]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array_1);
        assert {:msg "  Exhale might fail. Assertion middle <= |a.array| might not hold. (mergesort.vpr@43.16--43.75) [185102]"}
          middle <= Seq#Length(Heap[a_2, array_1]);
        
        // -- Check definedness of |a.array| == |b.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@43.16--43.75) [185103]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array_1);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@43.16--43.75) [185104]"}
            HasDirectPerm(ExhaleWellDef0Mask, b_24, array_1);
        assert {:msg "  Exhale might fail. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@43.16--43.75) [185105]"}
          Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [start..middle)) }
  //     { a.array[i] }
  //     (i in [start..middle)) ==> acc(a.array[i].value, write)) -- mergesort.vpr@44.9--44.85
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i: Int :: { (i in [start..middle)) } { a.array[i] } (i in [start..middle)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start_1, middle), i_8)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@44.16--44.85) [185106]"}
                HasDirectPerm(ExhaleWellDef0Mask, a_2, array_1);
              assert {:msg "  Exhale might fail. Index a.array[i] into a.array might be negative. (mergesort.vpr@44.16--44.85) [185107]"}
                i_8 >= 0;
              assert {:msg "  Exhale might fail. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@44.16--44.85) [185108]"}
                i_8 < Seq#Length(Heap[a_2, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a.array[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@44.16--44.85) [185110]"}
            (forall i_23_1: int, i_23_2: int ::
            { neverTriggered7(i_23_1), neverTriggered7(i_23_2) }
            (((i_23_1 != i_23_2 && Seq#Contains(Seq#Range(start_1, middle), i_23_1)) && Seq#Contains(Seq#Range(start_1, middle), i_23_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_23_1) != Seq#Index(Heap[a_2, array_1], i_23_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array[i].value (mergesort.vpr@44.16--44.85) [185111]"}
            (forall i_23_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_23_1) } { Seq#ContainsTrigger(Seq#Range(start_1, middle), i_23_1) } { Seq#Contains(Seq#Range(start_1, middle), i_23_1) } { Seq#Index(Heap[a_2, array_1], i_23_1) }
            Seq#Contains(Seq#Range(start_1, middle), i_23_1) ==> Mask[Seq#Index(Heap[a_2, array_1], i_23_1), value_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a.array[i]
          assume (forall i_23_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_23_1) } { Seq#ContainsTrigger(Seq#Range(start_1, middle), i_23_1) } { Seq#Contains(Seq#Range(start_1, middle), i_23_1) } { Seq#Index(Heap[a_2, array_1], i_23_1) }
            Seq#Contains(Seq#Range(start_1, middle), i_23_1) && NoPerm < FullPerm ==> qpRange7(Seq#Index(Heap[a_2, array_1], i_23_1)) && invRecv7(Seq#Index(Heap[a_2, array_1], i_23_1)) == i_23_1
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            Seq#Contains(Seq#Range(start_1, middle), invRecv7(o_9)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv7(o_9)) == o_9
          );
        
        // -- assume permission updates for field value
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            (Seq#Contains(Seq#Range(start_1, middle), invRecv7(o_9)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv7(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, middle), invRecv7(o_9)) && (NoPerm < FullPerm && qpRange7(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [start..middle)) }
  //     { b.array[i] }
  //     (i in [start..middle)) ==> acc(b.array[i].value, write)) -- mergesort.vpr@45.9--45.85
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i: Int :: { (i in [start..middle)) } { b.array[i] } (i in [start..middle)) ==> acc(b.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start_1, middle), i_19)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@45.16--45.85) [185112]"}
                HasDirectPerm(ExhaleWellDef0Mask, b_24, array_1);
              assert {:msg "  Exhale might fail. Index b.array[i] into b.array might be negative. (mergesort.vpr@45.16--45.85) [185113]"}
                i_19 >= 0;
              assert {:msg "  Exhale might fail. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@45.16--45.85) [185114]"}
                i_19 < Seq#Length(Heap[b_24, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b.array[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@45.16--45.85) [185116]"}
            (forall i_25_1: int, i_25_2: int ::
            { neverTriggered8(i_25_1), neverTriggered8(i_25_2) }
            (((i_25_1 != i_25_2 && Seq#Contains(Seq#Range(start_1, middle), i_25_1)) && Seq#Contains(Seq#Range(start_1, middle), i_25_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_25_1) != Seq#Index(Heap[b_24, array_1], i_25_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array[i].value (mergesort.vpr@45.16--45.85) [185117]"}
            (forall i_25_1: int ::
            { Seq#Index(Heap[b_24, array_1], i_25_1) } { Seq#ContainsTrigger(Seq#Range(start_1, middle), i_25_1) } { Seq#Contains(Seq#Range(start_1, middle), i_25_1) } { Seq#Index(Heap[b_24, array_1], i_25_1) }
            Seq#Contains(Seq#Range(start_1, middle), i_25_1) ==> Mask[Seq#Index(Heap[b_24, array_1], i_25_1), value_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b.array[i]
          assume (forall i_25_1: int ::
            { Seq#Index(Heap[b_24, array_1], i_25_1) } { Seq#ContainsTrigger(Seq#Range(start_1, middle), i_25_1) } { Seq#Contains(Seq#Range(start_1, middle), i_25_1) } { Seq#Index(Heap[b_24, array_1], i_25_1) }
            Seq#Contains(Seq#Range(start_1, middle), i_25_1) && NoPerm < FullPerm ==> qpRange8(Seq#Index(Heap[b_24, array_1], i_25_1)) && invRecv8(Seq#Index(Heap[b_24, array_1], i_25_1)) == i_25_1
          );
          assume (forall o_9: Ref ::
            { invRecv8(o_9) }
            Seq#Contains(Seq#Range(start_1, middle), invRecv8(o_9)) && (NoPerm < FullPerm && qpRange8(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv8(o_9)) == o_9
          );
        
        // -- assume permission updates for field value
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            (Seq#Contains(Seq#Range(start_1, middle), invRecv8(o_9)) && (NoPerm < FullPerm && qpRange8(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv8(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, middle), invRecv8(o_9)) && (NoPerm < FullPerm && qpRange8(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: t2A := a.array -- mergesort.vpr@48.3--48.17
        
        // -- Check definedness of a.array
          assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (mergesort.vpr@48.3--48.17) [185118]"}
            HasDirectPerm(Mask, a_2, array_1);
        t2A := Heap[a_2, array_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: t2B := b.array -- mergesort.vpr@49.3--49.17
        
        // -- Check definedness of b.array
          assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array (mergesort.vpr@49.3--49.17) [185119]"}
            HasDirectPerm(Mask, b_24, array_1);
        t2B := Heap[b_24, array_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(a.array, wildcard) -- mergesort.vpr@50.3--50.32
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@50.10--50.32) [185120]"}
          Mask[a_2, array_1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array_1];
        Mask := Mask[a_2, array_1:=Mask[a_2, array_1] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(b.array, wildcard) -- mergesort.vpr@51.9--51.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@51.16--51.38) [185121]"}
          Mask[b_24, array_1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[b_24, array_1];
        Mask := Mask[b_24, array_1:=Mask[b_24, array_1] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale middle >= 0 && (end <= |a.array| && |a.array| == |b.array|) -- mergesort.vpr@52.9--52.73
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion middle >= 0 might not hold. (mergesort.vpr@52.16--52.73) [185122]"}
          middle >= 0;
        
        // -- Check definedness of end <= |a.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@52.16--52.73) [185123]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array_1);
        assert {:msg "  Exhale might fail. Assertion end <= |a.array| might not hold. (mergesort.vpr@52.16--52.73) [185124]"}
          end_1 <= Seq#Length(Heap[a_2, array_1]);
        
        // -- Check definedness of |a.array| == |b.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@52.16--52.73) [185125]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array_1);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@52.16--52.73) [185126]"}
            HasDirectPerm(ExhaleWellDef0Mask, b_24, array_1);
        assert {:msg "  Exhale might fail. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@52.16--52.73) [185127]"}
          Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [middle..end)) }
  //     { a.array[i] }
  //     (i in [middle..end)) ==> acc(a.array[i].value, write)) -- mergesort.vpr@53.9--53.83
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i: Int :: { (i in [middle..end)) } { a.array[i] } (i in [middle..end)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end_1), i_9)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@53.16--53.83) [185128]"}
                HasDirectPerm(ExhaleWellDef0Mask, a_2, array_1);
              assert {:msg "  Exhale might fail. Index a.array[i] into a.array might be negative. (mergesort.vpr@53.16--53.83) [185129]"}
                i_9 >= 0;
              assert {:msg "  Exhale might fail. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@53.16--53.83) [185130]"}
                i_9 < Seq#Length(Heap[a_2, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a.array[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@53.16--53.83) [185132]"}
            (forall i_27_2: int, i_27_3: int ::
            { neverTriggered9(i_27_2), neverTriggered9(i_27_3) }
            (((i_27_2 != i_27_3 && Seq#Contains(Seq#Range(middle, end_1), i_27_2)) && Seq#Contains(Seq#Range(middle, end_1), i_27_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_27_2) != Seq#Index(Heap[a_2, array_1], i_27_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array[i].value (mergesort.vpr@53.16--53.83) [185133]"}
            (forall i_27_2: int ::
            { Seq#Index(Heap[a_2, array_1], i_27_2) } { Seq#ContainsTrigger(Seq#Range(middle, end_1), i_27_2) } { Seq#Contains(Seq#Range(middle, end_1), i_27_2) } { Seq#Index(Heap[a_2, array_1], i_27_2) }
            Seq#Contains(Seq#Range(middle, end_1), i_27_2) ==> Mask[Seq#Index(Heap[a_2, array_1], i_27_2), value_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a.array[i]
          assume (forall i_27_2: int ::
            { Seq#Index(Heap[a_2, array_1], i_27_2) } { Seq#ContainsTrigger(Seq#Range(middle, end_1), i_27_2) } { Seq#Contains(Seq#Range(middle, end_1), i_27_2) } { Seq#Index(Heap[a_2, array_1], i_27_2) }
            Seq#Contains(Seq#Range(middle, end_1), i_27_2) && NoPerm < FullPerm ==> qpRange9(Seq#Index(Heap[a_2, array_1], i_27_2)) && invRecv9(Seq#Index(Heap[a_2, array_1], i_27_2)) == i_27_2
          );
          assume (forall o_9: Ref ::
            { invRecv9(o_9) }
            Seq#Contains(Seq#Range(middle, end_1), invRecv9(o_9)) && (NoPerm < FullPerm && qpRange9(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv9(o_9)) == o_9
          );
        
        // -- assume permission updates for field value
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            (Seq#Contains(Seq#Range(middle, end_1), invRecv9(o_9)) && (NoPerm < FullPerm && qpRange9(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv9(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(middle, end_1), invRecv9(o_9)) && (NoPerm < FullPerm && qpRange9(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [middle..end)) }
  //     { b.array[i] }
  //     (i in [middle..end)) ==> acc(b.array[i].value, write)) -- mergesort.vpr@54.9--54.83
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i: Int :: { (i in [middle..end)) } { b.array[i] } (i in [middle..end)) ==> acc(b.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end_1), i_10)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@54.16--54.83) [185134]"}
                HasDirectPerm(ExhaleWellDef0Mask, b_24, array_1);
              assert {:msg "  Exhale might fail. Index b.array[i] into b.array might be negative. (mergesort.vpr@54.16--54.83) [185135]"}
                i_10 >= 0;
              assert {:msg "  Exhale might fail. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@54.16--54.83) [185136]"}
                i_10 < Seq#Length(Heap[b_24, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b.array[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@54.16--54.83) [185138]"}
            (forall i_29: int, i_29_2: int ::
            { neverTriggered10(i_29), neverTriggered10(i_29_2) }
            (((i_29 != i_29_2 && Seq#Contains(Seq#Range(middle, end_1), i_29)) && Seq#Contains(Seq#Range(middle, end_1), i_29_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_29) != Seq#Index(Heap[b_24, array_1], i_29_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array[i].value (mergesort.vpr@54.16--54.83) [185139]"}
            (forall i_29: int ::
            { Seq#Index(Heap[b_24, array_1], i_29) } { Seq#ContainsTrigger(Seq#Range(middle, end_1), i_29) } { Seq#Contains(Seq#Range(middle, end_1), i_29) } { Seq#Index(Heap[b_24, array_1], i_29) }
            Seq#Contains(Seq#Range(middle, end_1), i_29) ==> Mask[Seq#Index(Heap[b_24, array_1], i_29), value_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b.array[i]
          assume (forall i_29: int ::
            { Seq#Index(Heap[b_24, array_1], i_29) } { Seq#ContainsTrigger(Seq#Range(middle, end_1), i_29) } { Seq#Contains(Seq#Range(middle, end_1), i_29) } { Seq#Index(Heap[b_24, array_1], i_29) }
            Seq#Contains(Seq#Range(middle, end_1), i_29) && NoPerm < FullPerm ==> qpRange10(Seq#Index(Heap[b_24, array_1], i_29)) && invRecv10(Seq#Index(Heap[b_24, array_1], i_29)) == i_29
          );
          assume (forall o_9: Ref ::
            { invRecv10(o_9) }
            Seq#Contains(Seq#Range(middle, end_1), invRecv10(o_9)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv10(o_9)) == o_9
          );
        
        // -- assume permission updates for field value
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            (Seq#Contains(Seq#Range(middle, end_1), invRecv10(o_9)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv10(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(middle, end_1), invRecv10(o_9)) && (NoPerm < FullPerm && qpRange10(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(a.array, wildcard) -- mergesort.vpr@57.3--57.32
        havoc wildcard;
        perm := wildcard;
        assume a_2 != null;
        Mask := Mask[a_2, array_1:=Mask[a_2, array_1] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(b.array, wildcard) -- mergesort.vpr@58.9--58.38
        havoc wildcard;
        perm := wildcard;
        assume b_24 != null;
        Mask := Mask[b_24, array_1:=Mask[b_24, array_1] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [start..middle)) }
  //     { a.array[i] }
  //     (i in [start..middle)) ==> acc(a.array[i].value, write)) -- mergesort.vpr@59.9--59.85
        
        // -- Check definedness of (forall i: Int :: { (i in [start..middle)) } { a.array[i] } (i in [start..middle)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start_1, middle), i_17)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@59.16--59.85) [185140]"}
                HasDirectPerm(Mask, a_2, array_1);
              assert {:msg "  Inhale might fail. Index a.array[i] into a.array might be negative. (mergesort.vpr@59.16--59.85) [185141]"}
                i_17 >= 0;
              assert {:msg "  Inhale might fail. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@59.16--59.85) [185142]"}
                i_17 < Seq#Length(Heap[a_2, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@59.16--59.85) [185143]"}
          (forall i_31: int, i_31_2: int ::
          
          (((i_31 != i_31_2 && Seq#Contains(Seq#Range(start_1, middle), i_31)) && Seq#Contains(Seq#Range(start_1, middle), i_31_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_31) != Seq#Index(Heap[a_2, array_1], i_31_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_31: int ::
            { Seq#Index(Heap[a_2, array_1], i_31) } { Seq#ContainsTrigger(Seq#Range(start_1, middle), i_31) } { Seq#Contains(Seq#Range(start_1, middle), i_31) } { Seq#Index(Heap[a_2, array_1], i_31) }
            Seq#Contains(Seq#Range(start_1, middle), i_31) && NoPerm < FullPerm ==> qpRange11(Seq#Index(Heap[a_2, array_1], i_31)) && invRecv11(Seq#Index(Heap[a_2, array_1], i_31)) == i_31
          );
          assume (forall o_9: Ref ::
            { invRecv11(o_9) }
            (Seq#Contains(Seq#Range(start_1, middle), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9) ==> Seq#Index(Heap[a_2, array_1], invRecv11(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_31: int ::
            { Seq#Index(Heap[a_2, array_1], i_31) } { Seq#ContainsTrigger(Seq#Range(start_1, middle), i_31) } { Seq#Contains(Seq#Range(start_1, middle), i_31) } { Seq#Index(Heap[a_2, array_1], i_31) }
            Seq#Contains(Seq#Range(start_1, middle), i_31) ==> Seq#Index(Heap[a_2, array_1], i_31) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            ((Seq#Contains(Seq#Range(start_1, middle), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], invRecv11(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, middle), invRecv11(o_9)) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [start..middle)) }
  //     { b.array[i] }
  //     (i in [start..middle)) ==> acc(b.array[i].value, write)) -- mergesort.vpr@60.9--60.85
        
        // -- Check definedness of (forall i: Int :: { (i in [start..middle)) } { b.array[i] } (i in [start..middle)) ==> acc(b.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start_1, middle), i_11)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@60.16--60.85) [185144]"}
                HasDirectPerm(Mask, b_24, array_1);
              assert {:msg "  Inhale might fail. Index b.array[i] into b.array might be negative. (mergesort.vpr@60.16--60.85) [185145]"}
                i_11 >= 0;
              assert {:msg "  Inhale might fail. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@60.16--60.85) [185146]"}
                i_11 < Seq#Length(Heap[b_24, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@60.16--60.85) [185147]"}
          (forall i_33: int, i_33_2: int ::
          
          (((i_33 != i_33_2 && Seq#Contains(Seq#Range(start_1, middle), i_33)) && Seq#Contains(Seq#Range(start_1, middle), i_33_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_33) != Seq#Index(Heap[b_24, array_1], i_33_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_33: int ::
            { Seq#Index(Heap[b_24, array_1], i_33) } { Seq#ContainsTrigger(Seq#Range(start_1, middle), i_33) } { Seq#Contains(Seq#Range(start_1, middle), i_33) } { Seq#Index(Heap[b_24, array_1], i_33) }
            Seq#Contains(Seq#Range(start_1, middle), i_33) && NoPerm < FullPerm ==> qpRange12(Seq#Index(Heap[b_24, array_1], i_33)) && invRecv12(Seq#Index(Heap[b_24, array_1], i_33)) == i_33
          );
          assume (forall o_9: Ref ::
            { invRecv12(o_9) }
            (Seq#Contains(Seq#Range(start_1, middle), invRecv12(o_9)) && NoPerm < FullPerm) && qpRange12(o_9) ==> Seq#Index(Heap[b_24, array_1], invRecv12(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_33: int ::
            { Seq#Index(Heap[b_24, array_1], i_33) } { Seq#ContainsTrigger(Seq#Range(start_1, middle), i_33) } { Seq#Contains(Seq#Range(start_1, middle), i_33) } { Seq#Index(Heap[b_24, array_1], i_33) }
            Seq#Contains(Seq#Range(start_1, middle), i_33) ==> Seq#Index(Heap[b_24, array_1], i_33) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            ((Seq#Contains(Seq#Range(start_1, middle), invRecv12(o_9)) && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], invRecv12(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, middle), invRecv12(o_9)) && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale a.array == t1A -- mergesort.vpr@61.9--61.30
        
        // -- Check definedness of a.array == t1A
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@61.16--61.30) [185148]"}
            HasDirectPerm(Mask, a_2, array_1);
        assume Seq#Equal(Heap[a_2, array_1], t1A);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale b.array == t1B -- mergesort.vpr@62.9--62.30
        
        // -- Check definedness of b.array == t1B
          assert {:msg "  Inhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@62.16--62.30) [185149]"}
            HasDirectPerm(Mask, b_24, array_1);
        assume Seq#Equal(Heap[b_24, array_1], t1B);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(a.array, wildcard) -- mergesort.vpr@65.6--65.35
        havoc wildcard;
        perm := wildcard;
        assume a_2 != null;
        Mask := Mask[a_2, array_1:=Mask[a_2, array_1] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(b.array, wildcard) -- mergesort.vpr@66.9--66.38
        havoc wildcard;
        perm := wildcard;
        assume b_24 != null;
        Mask := Mask[b_24, array_1:=Mask[b_24, array_1] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [middle..end)) }
  //     { a.array[i] }
  //     (i in [middle..end)) ==> acc(a.array[i].value, write)) -- mergesort.vpr@67.9--67.83
        
        // -- Check definedness of (forall i: Int :: { (i in [middle..end)) } { a.array[i] } (i in [middle..end)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end_1), i_12)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@67.16--67.83) [185150]"}
                HasDirectPerm(Mask, a_2, array_1);
              assert {:msg "  Inhale might fail. Index a.array[i] into a.array might be negative. (mergesort.vpr@67.16--67.83) [185151]"}
                i_12 >= 0;
              assert {:msg "  Inhale might fail. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@67.16--67.83) [185152]"}
                i_12 < Seq#Length(Heap[a_2, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@67.16--67.83) [185153]"}
          (forall i_35: int, i_35_1: int ::
          
          (((i_35 != i_35_1 && Seq#Contains(Seq#Range(middle, end_1), i_35)) && Seq#Contains(Seq#Range(middle, end_1), i_35_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_35) != Seq#Index(Heap[a_2, array_1], i_35_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_35: int ::
            { Seq#Index(Heap[a_2, array_1], i_35) } { Seq#ContainsTrigger(Seq#Range(middle, end_1), i_35) } { Seq#Contains(Seq#Range(middle, end_1), i_35) } { Seq#Index(Heap[a_2, array_1], i_35) }
            Seq#Contains(Seq#Range(middle, end_1), i_35) && NoPerm < FullPerm ==> qpRange13(Seq#Index(Heap[a_2, array_1], i_35)) && invRecv13(Seq#Index(Heap[a_2, array_1], i_35)) == i_35
          );
          assume (forall o_9: Ref ::
            { invRecv13(o_9) }
            (Seq#Contains(Seq#Range(middle, end_1), invRecv13(o_9)) && NoPerm < FullPerm) && qpRange13(o_9) ==> Seq#Index(Heap[a_2, array_1], invRecv13(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_35: int ::
            { Seq#Index(Heap[a_2, array_1], i_35) } { Seq#ContainsTrigger(Seq#Range(middle, end_1), i_35) } { Seq#Contains(Seq#Range(middle, end_1), i_35) } { Seq#Index(Heap[a_2, array_1], i_35) }
            Seq#Contains(Seq#Range(middle, end_1), i_35) ==> Seq#Index(Heap[a_2, array_1], i_35) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            ((Seq#Contains(Seq#Range(middle, end_1), invRecv13(o_9)) && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], invRecv13(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(middle, end_1), invRecv13(o_9)) && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [middle..end)) }
  //     { b.array[i] }
  //     (i in [middle..end)) ==> acc(b.array[i].value, write)) -- mergesort.vpr@68.9--68.83
        
        // -- Check definedness of (forall i: Int :: { (i in [middle..end)) } { b.array[i] } (i in [middle..end)) ==> acc(b.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end_1), i_13)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@68.16--68.83) [185154]"}
                HasDirectPerm(Mask, b_24, array_1);
              assert {:msg "  Inhale might fail. Index b.array[i] into b.array might be negative. (mergesort.vpr@68.16--68.83) [185155]"}
                i_13 >= 0;
              assert {:msg "  Inhale might fail. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@68.16--68.83) [185156]"}
                i_13 < Seq#Length(Heap[b_24, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@68.16--68.83) [185157]"}
          (forall i_37: int, i_37_1: int ::
          
          (((i_37 != i_37_1 && Seq#Contains(Seq#Range(middle, end_1), i_37)) && Seq#Contains(Seq#Range(middle, end_1), i_37_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_37) != Seq#Index(Heap[b_24, array_1], i_37_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_37: int ::
            { Seq#Index(Heap[b_24, array_1], i_37) } { Seq#ContainsTrigger(Seq#Range(middle, end_1), i_37) } { Seq#Contains(Seq#Range(middle, end_1), i_37) } { Seq#Index(Heap[b_24, array_1], i_37) }
            Seq#Contains(Seq#Range(middle, end_1), i_37) && NoPerm < FullPerm ==> qpRange14(Seq#Index(Heap[b_24, array_1], i_37)) && invRecv14(Seq#Index(Heap[b_24, array_1], i_37)) == i_37
          );
          assume (forall o_9: Ref ::
            { invRecv14(o_9) }
            (Seq#Contains(Seq#Range(middle, end_1), invRecv14(o_9)) && NoPerm < FullPerm) && qpRange14(o_9) ==> Seq#Index(Heap[b_24, array_1], invRecv14(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_37: int ::
            { Seq#Index(Heap[b_24, array_1], i_37) } { Seq#ContainsTrigger(Seq#Range(middle, end_1), i_37) } { Seq#Contains(Seq#Range(middle, end_1), i_37) } { Seq#Index(Heap[b_24, array_1], i_37) }
            Seq#Contains(Seq#Range(middle, end_1), i_37) ==> Seq#Index(Heap[b_24, array_1], i_37) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            ((Seq#Contains(Seq#Range(middle, end_1), invRecv14(o_9)) && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], invRecv14(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(middle, end_1), invRecv14(o_9)) && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale a.array == t2A -- mergesort.vpr@69.9--69.30
        
        // -- Check definedness of a.array == t2A
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@69.16--69.30) [185158]"}
            HasDirectPerm(Mask, a_2, array_1);
        assume Seq#Equal(Heap[a_2, array_1], t2A);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale b.array == t2B -- mergesort.vpr@70.9--70.30
        
        // -- Check definedness of b.array == t2B
          assert {:msg "  Inhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@70.16--70.30) [185159]"}
            HasDirectPerm(Mask, b_24, array_1);
        assume Seq#Equal(Heap[b_24, array_1], t2B);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: merge(a, b, start, middle, end) -- mergesort.vpr@72.9--72.36
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method merge might not hold. There might be insufficient permission to access a.array (mergesort.vpr@72.9--72.36) [185160]"}
            Mask[a_2, array_1] > NoPerm;
          havoc wildcard;
          assume wildcard < Mask[a_2, array_1];
          Mask := Mask[a_2, array_1:=Mask[a_2, array_1] - wildcard];
          assert {:msg "  The precondition of method merge might not hold. There might be insufficient permission to access b.array (mergesort.vpr@72.9--72.36) [185161]"}
            Mask[b_24, array_1] > NoPerm;
          havoc wildcard;
          assume wildcard < Mask[b_24, array_1];
          Mask := Mask[b_24, array_1:=Mask[b_24, array_1] - wildcard];
          assert {:msg "  The precondition of method merge might not hold. Assertion 0 <= start might not hold. (mergesort.vpr@72.9--72.36) [185162]"}
            0 <= start_1;
          assert {:msg "  The precondition of method merge might not hold. Assertion end <= |a.array| might not hold. (mergesort.vpr@72.9--72.36) [185163]"}
            end_1 <= Seq#Length(Heap[a_2, array_1]);
          assert {:msg "  The precondition of method merge might not hold. Assertion |b.array| == |a.array| might not hold. (mergesort.vpr@72.9--72.36) [185164]"}
            Seq#Length(Heap[b_24, array_1]) == Seq#Length(Heap[a_2, array_1]);
          assert {:msg "  The precondition of method merge might not hold. Assertion start < middle might not hold. (mergesort.vpr@72.9--72.36) [185165]"}
            start_1 < middle;
          assert {:msg "  The precondition of method merge might not hold. Assertion middle < end might not hold. (mergesort.vpr@72.9--72.36) [185166]"}
            middle < end_1;
          if (*) {
            if (Seq#Contains(Seq#Range(start_1, end_1), i_38) && (Seq#Contains(Seq#Range(start_1, end_1), j_12_2) && i_38 != j_12_2)) {
              assert {:msg "  The precondition of method merge might not hold. Assertion a.array[i] != a.array[j] might not hold. (mergesort.vpr@72.9--72.36) [185167]"}
                Seq#Index(Heap[a_2, array_1], i_38) != Seq#Index(Heap[a_2, array_1], j_12_2);
            }
            assume false;
          }
          assume (forall i_39_1_1: int, j_13_1: int ::
            { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_39_1_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_13_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_39_1_1), Seq#Contains(Seq#Range(start_1, end_1), j_13_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_39_1_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_13_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_39_1_1), Seq#Contains(Seq#Range(start_1, end_1), j_13_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_39_1_1), Seq#Index(Heap[a_2, array_1], j_13_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_39_1_1), Seq#Index(Heap[a_2, array_1], j_13_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_13_1), Seq#Index(Heap[a_2, array_1], i_39_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_13_1), Seq#Index(Heap[a_2, array_1], i_39_1_1) } { Seq#Index(Heap[a_2, array_1], i_39_1_1), Seq#Index(Heap[a_2, array_1], j_13_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_39_1_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_13_1) && i_39_1_1 != j_13_1) ==> Seq#Index(Heap[a_2, array_1], i_39_1_1) != Seq#Index(Heap[a_2, array_1], j_13_1)
          );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver a.array[k] is injective
            assert {:msg "  The precondition of method merge might not hold. Quantified resource a.array[k].value might not be injective. (mergesort.vpr@72.9--72.36) [185168]"}
              (forall k: int, k_50: int ::
              { neverTriggered15(k), neverTriggered15(k_50) }
              (((k != k_50 && Seq#Contains(Seq#Range(start_1, end_1), k)) && Seq#Contains(Seq#Range(start_1, end_1), k_50)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], k) != Seq#Index(Heap[a_2, array_1], k_50)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method merge might not hold. There might be insufficient permission to access a.array[k].value (mergesort.vpr@72.9--72.36) [185169]"}
              (forall k: int ::
              { Seq#Index(Heap[a_2, array_1], k) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), k) } { Seq#Contains(Seq#Range(start_1, end_1), k) } { Seq#Index(Heap[a_2, array_1], k) }
              Seq#Contains(Seq#Range(start_1, end_1), k) ==> Mask[Seq#Index(Heap[a_2, array_1], k), value_1] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver a.array[k]
            assume (forall k: int ::
              { Seq#Index(Heap[a_2, array_1], k) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), k) } { Seq#Contains(Seq#Range(start_1, end_1), k) } { Seq#Index(Heap[a_2, array_1], k) }
              Seq#Contains(Seq#Range(start_1, end_1), k) && NoPerm < FullPerm ==> qpRange15(Seq#Index(Heap[a_2, array_1], k)) && invRecv15(Seq#Index(Heap[a_2, array_1], k)) == k
            );
            assume (forall o_9: Ref ::
              { invRecv15(o_9) }
              Seq#Contains(Seq#Range(start_1, end_1), invRecv15(o_9)) && (NoPerm < FullPerm && qpRange15(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv15(o_9)) == o_9
            );
          
          // -- assume permission updates for field value
            assume (forall o_9: Ref ::
              { QPMask[o_9, value_1] }
              (Seq#Contains(Seq#Range(start_1, end_1), invRecv15(o_9)) && (NoPerm < FullPerm && qpRange15(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv15(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv15(o_9)) && (NoPerm < FullPerm && qpRange15(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (Seq#Contains(Seq#Range(start_1, end_1), i_40) && (Seq#Contains(Seq#Range(start_1, end_1), j_14_2) && i_40 != j_14_2)) {
              assert {:msg "  The precondition of method merge might not hold. Assertion b.array[i] != b.array[j] might not hold. (mergesort.vpr@72.9--72.36) [185170]"}
                Seq#Index(Heap[b_24, array_1], i_40) != Seq#Index(Heap[b_24, array_1], j_14_2);
            }
            assume false;
          }
          assume (forall i_41_1: int, j_15_1: int ::
            { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_41_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_15_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_41_1), Seq#Contains(Seq#Range(start_1, end_1), j_15_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_41_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_15_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_41_1), Seq#Contains(Seq#Range(start_1, end_1), j_15_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_41_1), Seq#Index(Heap[b_24, array_1], j_15_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_41_1), Seq#Index(Heap[b_24, array_1], j_15_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_15_1), Seq#Index(Heap[b_24, array_1], i_41_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_15_1), Seq#Index(Heap[b_24, array_1], i_41_1) } { Seq#Index(Heap[b_24, array_1], i_41_1), Seq#Index(Heap[b_24, array_1], j_15_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_41_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_15_1) && i_41_1 != j_15_1) ==> Seq#Index(Heap[b_24, array_1], i_41_1) != Seq#Index(Heap[b_24, array_1], j_15_1)
          );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver b.array[l] is injective
            assert {:msg "  The precondition of method merge might not hold. Quantified resource b.array[l].value might not be injective. (mergesort.vpr@72.9--72.36) [185171]"}
              (forall l_1: int, l_11: int ::
              { neverTriggered16(l_1), neverTriggered16(l_11) }
              (((l_1 != l_11 && Seq#Contains(Seq#Range(start_1, end_1), l_1)) && Seq#Contains(Seq#Range(start_1, end_1), l_11)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], l_1) != Seq#Index(Heap[b_24, array_1], l_11)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method merge might not hold. There might be insufficient permission to access b.array[l].value (mergesort.vpr@72.9--72.36) [185172]"}
              (forall l_1: int ::
              { Seq#Index(Heap[b_24, array_1], l_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), l_1) } { Seq#Contains(Seq#Range(start_1, end_1), l_1) } { Seq#Index(Heap[b_24, array_1], l_1) }
              Seq#Contains(Seq#Range(start_1, end_1), l_1) ==> Mask[Seq#Index(Heap[b_24, array_1], l_1), value_1] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver b.array[l]
            assume (forall l_1: int ::
              { Seq#Index(Heap[b_24, array_1], l_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), l_1) } { Seq#Contains(Seq#Range(start_1, end_1), l_1) } { Seq#Index(Heap[b_24, array_1], l_1) }
              Seq#Contains(Seq#Range(start_1, end_1), l_1) && NoPerm < FullPerm ==> qpRange16(Seq#Index(Heap[b_24, array_1], l_1)) && invRecv16(Seq#Index(Heap[b_24, array_1], l_1)) == l_1
            );
            assume (forall o_9: Ref ::
              { invRecv16(o_9) }
              Seq#Contains(Seq#Range(start_1, end_1), invRecv16(o_9)) && (NoPerm < FullPerm && qpRange16(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv16(o_9)) == o_9
            );
          
          // -- assume permission updates for field value
            assume (forall o_9: Ref ::
              { QPMask[o_9, value_1] }
              (Seq#Contains(Seq#Range(start_1, end_1), invRecv16(o_9)) && (NoPerm < FullPerm && qpRange16(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv16(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv16(o_9)) && (NoPerm < FullPerm && qpRange16(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          havoc wildcard;
          perm := wildcard;
          assume a_2 != null;
          Mask := Mask[a_2, array_1:=Mask[a_2, array_1] + perm];
          assume state(Heap, Mask);
          havoc wildcard;
          perm := wildcard;
          assume b_24 != null;
          Mask := Mask[b_24, array_1:=Mask[b_24, array_1] + perm];
          assume state(Heap, Mask);
          assume Seq#Equal(Heap[a_2, array_1], PreCallHeap[a_2, array_1]);
          assume Seq#Equal(Heap[b_24, array_1], PreCallHeap[b_24, array_1]);
          assume (forall i_42_1: int, j_16_1: int ::
            { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_42_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_16_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_42_1), Seq#Contains(Seq#Range(start_1, end_1), j_16_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_42_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_16_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_42_1), Seq#Contains(Seq#Range(start_1, end_1), j_16_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_42_1), Seq#Index(Heap[a_2, array_1], j_16_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_42_1), Seq#Index(Heap[a_2, array_1], j_16_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_16_1), Seq#Index(Heap[a_2, array_1], i_42_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_16_1), Seq#Index(Heap[a_2, array_1], i_42_1) } { Seq#Index(Heap[a_2, array_1], i_42_1), Seq#Index(Heap[a_2, array_1], j_16_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_42_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_16_1) && i_42_1 != j_16_1) ==> Seq#Index(Heap[a_2, array_1], i_42_1) != Seq#Index(Heap[a_2, array_1], j_16_1)
          );
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@72.9--72.36) [185173]"}
            (forall i_43: int, i_43_1: int ::
            
            (((i_43 != i_43_1 && Seq#Contains(Seq#Range(start_1, end_1), i_43)) && Seq#Contains(Seq#Range(start_1, end_1), i_43_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_43) != Seq#Index(Heap[a_2, array_1], i_43_1)
          );
          
          // -- Define Inverse Function
            assume (forall i_43: int ::
              { Seq#Index(Heap[a_2, array_1], i_43) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_43) } { Seq#Contains(Seq#Range(start_1, end_1), i_43) } { Seq#Index(Heap[a_2, array_1], i_43) }
              Seq#Contains(Seq#Range(start_1, end_1), i_43) && NoPerm < FullPerm ==> qpRange17(Seq#Index(Heap[a_2, array_1], i_43)) && invRecv17(Seq#Index(Heap[a_2, array_1], i_43)) == i_43
            );
            assume (forall o_9: Ref ::
              { invRecv17(o_9) }
              (Seq#Contains(Seq#Range(start_1, end_1), invRecv17(o_9)) && NoPerm < FullPerm) && qpRange17(o_9) ==> Seq#Index(Heap[a_2, array_1], invRecv17(o_9)) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall i_43: int ::
              { Seq#Index(Heap[a_2, array_1], i_43) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_43) } { Seq#Contains(Seq#Range(start_1, end_1), i_43) } { Seq#Index(Heap[a_2, array_1], i_43) }
              Seq#Contains(Seq#Range(start_1, end_1), i_43) ==> Seq#Index(Heap[a_2, array_1], i_43) != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, value_1] }
              ((Seq#Contains(Seq#Range(start_1, end_1), invRecv17(o_9)) && NoPerm < FullPerm) && qpRange17(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], invRecv17(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv17(o_9)) && NoPerm < FullPerm) && qpRange17(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall i_44: int, j_17_2: int ::
            { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_44), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_17_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_44), Seq#Contains(Seq#Range(start_1, end_1), j_17_2) } { Seq#Contains(Seq#Range(start_1, end_1), i_44), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_17_2) } { Seq#Contains(Seq#Range(start_1, end_1), i_44), Seq#Contains(Seq#Range(start_1, end_1), j_17_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_44), Seq#Index(Heap[b_24, array_1], j_17_2) } { Seq#Contains(Seq#Range(start_1, end_1), i_44), Seq#Index(Heap[b_24, array_1], j_17_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_17_2), Seq#Index(Heap[b_24, array_1], i_44) } { Seq#Contains(Seq#Range(start_1, end_1), j_17_2), Seq#Index(Heap[b_24, array_1], i_44) } { Seq#Index(Heap[b_24, array_1], i_44), Seq#Index(Heap[b_24, array_1], j_17_2) }
            Seq#Contains(Seq#Range(start_1, end_1), i_44) && (Seq#Contains(Seq#Range(start_1, end_1), j_17_2) && i_44 != j_17_2) ==> Seq#Index(Heap[b_24, array_1], i_44) != Seq#Index(Heap[b_24, array_1], j_17_2)
          );
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@72.9--72.36) [185174]"}
            (forall i_45: int, i_45_2: int ::
            
            (((i_45 != i_45_2 && Seq#Contains(Seq#Range(start_1, end_1), i_45)) && Seq#Contains(Seq#Range(start_1, end_1), i_45_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_45) != Seq#Index(Heap[b_24, array_1], i_45_2)
          );
          
          // -- Define Inverse Function
            assume (forall i_45: int ::
              { Seq#Index(Heap[b_24, array_1], i_45) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_45) } { Seq#Contains(Seq#Range(start_1, end_1), i_45) } { Seq#Index(Heap[b_24, array_1], i_45) }
              Seq#Contains(Seq#Range(start_1, end_1), i_45) && NoPerm < FullPerm ==> qpRange18(Seq#Index(Heap[b_24, array_1], i_45)) && invRecv18(Seq#Index(Heap[b_24, array_1], i_45)) == i_45
            );
            assume (forall o_9: Ref ::
              { invRecv18(o_9) }
              (Seq#Contains(Seq#Range(start_1, end_1), invRecv18(o_9)) && NoPerm < FullPerm) && qpRange18(o_9) ==> Seq#Index(Heap[b_24, array_1], invRecv18(o_9)) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall i_45: int ::
              { Seq#Index(Heap[b_24, array_1], i_45) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_45) } { Seq#Contains(Seq#Range(start_1, end_1), i_45) } { Seq#Index(Heap[b_24, array_1], i_45) }
              Seq#Contains(Seq#Range(start_1, end_1), i_45) ==> Seq#Index(Heap[b_24, array_1], i_45) != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, value_1] }
              ((Seq#Contains(Seq#Range(start_1, end_1), invRecv18(o_9)) && NoPerm < FullPerm) && qpRange18(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], invRecv18(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv18(o_9)) && NoPerm < FullPerm) && qpRange18(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of parallel_mergesort might not hold. There might be insufficient permission to access a.array (mergesort.vpr@18.11--18.33) [185175]"}
      Mask[a_2, array_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[a_2, array_1];
    Mask := Mask[a_2, array_1:=Mask[a_2, array_1] - wildcard];
    assert {:msg "  Postcondition of parallel_mergesort might not hold. There might be insufficient permission to access b.array (mergesort.vpr@19.11--19.33) [185176]"}
      Mask[b_24, array_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[b_24, array_1];
    Mask := Mask[b_24, array_1:=Mask[b_24, array_1] - wildcard];
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion start >= 0 might not hold. (mergesort.vpr@20.11--20.67) [185177]"}
      start_1 >= 0;
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion end <= |a.array| might not hold. (mergesort.vpr@20.11--20.67) [185178]"}
      end_1 <= Seq#Length(Heap[a_2, array_1]);
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@20.11--20.67) [185179]"}
      Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
    if (*) {
      if (Seq#Contains(Seq#Range(start_1, end_1), i_16_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_8_2) && i_16_1 != j_8_2)) {
        assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion a.array[i] != a.array[j] might not hold. (mergesort.vpr@21.11--21.111) [185180]"}
          Seq#Index(Heap[a_2, array_1], i_16_1) != Seq#Index(Heap[a_2, array_1], j_8_2);
      }
      assume false;
    }
    assume (forall i_17_1_1: int, j_9_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_17_1_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_17_1_1), Seq#Contains(Seq#Range(start_1, end_1), j_9_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_17_1_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_9_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_17_1_1), Seq#Contains(Seq#Range(start_1, end_1), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_17_1_1), Seq#Index(Heap[a_2, array_1], j_9_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_17_1_1), Seq#Index(Heap[a_2, array_1], j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_9_1_1), Seq#Index(Heap[a_2, array_1], i_17_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_9_1_1), Seq#Index(Heap[a_2, array_1], i_17_1_1) } { Seq#Index(Heap[a_2, array_1], i_17_1_1), Seq#Index(Heap[a_2, array_1], j_9_1_1) }
      Seq#Contains(Seq#Range(start_1, end_1), i_17_1_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_9_1_1) && i_17_1_1 != j_9_1_1) ==> Seq#Index(Heap[a_2, array_1], i_17_1_1) != Seq#Index(Heap[a_2, array_1], j_9_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@22.11--22.77) [185181]"}
        (forall i_18_1: int, i_18_2: int ::
        { neverTriggered5(i_18_1), neverTriggered5(i_18_2) }
        (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(start_1, end_1), i_18_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_18_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_18_1) != Seq#Index(Heap[a_2, array_1], i_18_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of parallel_mergesort might not hold. There might be insufficient permission to access a.array[i].value (mergesort.vpr@22.11--22.77) [185182]"}
        (forall i_18_1: int ::
        { Seq#Index(Heap[a_2, array_1], i_18_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_18_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_18_1) } { Seq#Index(Heap[a_2, array_1], i_18_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_18_1) ==> Mask[Seq#Index(Heap[a_2, array_1], i_18_1), value_1] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a.array[i]
      assume (forall i_18_1: int ::
        { Seq#Index(Heap[a_2, array_1], i_18_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_18_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_18_1) } { Seq#Index(Heap[a_2, array_1], i_18_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_18_1) && NoPerm < FullPerm ==> qpRange5(Seq#Index(Heap[a_2, array_1], i_18_1)) && invRecv5(Seq#Index(Heap[a_2, array_1], i_18_1)) == i_18_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        Seq#Contains(Seq#Range(start_1, end_1), invRecv5(o_9)) && (NoPerm < FullPerm && qpRange5(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv5(o_9)) == o_9
      );
    
    // -- assume permission updates for field value
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv5(o_9)) && (NoPerm < FullPerm && qpRange5(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv5(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv5(o_9)) && (NoPerm < FullPerm && qpRange5(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(start_1, end_1), i_19_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_10_2) && i_19_1 != j_10_2)) {
        assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion b.array[i] != b.array[j] might not hold. (mergesort.vpr@23.11--23.111) [185183]"}
          Seq#Index(Heap[b_24, array_1], i_19_1) != Seq#Index(Heap[b_24, array_1], j_10_2);
      }
      assume false;
    }
    assume (forall i_20_1: int, j_11_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_20_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_11_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_20_1), Seq#Contains(Seq#Range(start_1, end_1), j_11_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_20_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_11_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_20_1), Seq#Contains(Seq#Range(start_1, end_1), j_11_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_20_1), Seq#Index(Heap[b_24, array_1], j_11_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_20_1), Seq#Index(Heap[b_24, array_1], j_11_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_11_1_1), Seq#Index(Heap[b_24, array_1], i_20_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_11_1_1), Seq#Index(Heap[b_24, array_1], i_20_1) } { Seq#Index(Heap[b_24, array_1], i_20_1), Seq#Index(Heap[b_24, array_1], j_11_1_1) }
      Seq#Contains(Seq#Range(start_1, end_1), i_20_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_11_1_1) && i_20_1 != j_11_1_1) ==> Seq#Index(Heap[b_24, array_1], i_20_1) != Seq#Index(Heap[b_24, array_1], j_11_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver b.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@24.11--24.77) [185184]"}
        (forall i_21_1: int, i_21_2: int ::
        { neverTriggered6(i_21_1), neverTriggered6(i_21_2) }
        (((i_21_1 != i_21_2 && Seq#Contains(Seq#Range(start_1, end_1), i_21_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_21_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_21_1) != Seq#Index(Heap[b_24, array_1], i_21_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of parallel_mergesort might not hold. There might be insufficient permission to access b.array[i].value (mergesort.vpr@24.11--24.77) [185185]"}
        (forall i_21_1: int ::
        { Seq#Index(Heap[b_24, array_1], i_21_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_21_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_21_1) } { Seq#Index(Heap[b_24, array_1], i_21_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_21_1) ==> Mask[Seq#Index(Heap[b_24, array_1], i_21_1), value_1] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver b.array[i]
      assume (forall i_21_1: int ::
        { Seq#Index(Heap[b_24, array_1], i_21_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_21_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_21_1) } { Seq#Index(Heap[b_24, array_1], i_21_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_21_1) && NoPerm < FullPerm ==> qpRange6(Seq#Index(Heap[b_24, array_1], i_21_1)) && invRecv6(Seq#Index(Heap[b_24, array_1], i_21_1)) == i_21_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        Seq#Contains(Seq#Range(start_1, end_1), invRecv6(o_9)) && (NoPerm < FullPerm && qpRange6(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv6(o_9)) == o_9
      );
    
    // -- assume permission updates for field value
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv6(o_9)) && (NoPerm < FullPerm && qpRange6(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv6(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv6(o_9)) && (NoPerm < FullPerm && qpRange6(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion a.array == old(a.array) might not hold. (mergesort.vpr@25.11--25.34) [185186]"}
      Seq#Equal(Heap[a_2, array_1], oldHeap[a_2, array_1]);
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion b.array == old(b.array) might not hold. (mergesort.vpr@26.11--26.34) [185187]"}
      Seq#Equal(Heap[b_24, array_1], oldHeap[b_24, array_1]);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method merge
// ==================================================

procedure merge(a_2: Ref, b_24: Ref, start_1: int, middle: int, end_1: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_23: int;
  var j_24: int;
  var k_37: int;
  var QPMask: MaskType;
  var i_25: int;
  var j_25: int;
  var l_12: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_16: int;
  var j_11: int;
  var i_42: int;
  var i_51: int;
  var j_35: int;
  var i_53: int;
  var I_1: int;
  var J: int;
  var N: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i_64: int;
  var i_55: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_12_1: int;
  var j_8_2: int;
  var i_15_1: int;
  var j_10_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    assume a_2 != null;
    Mask := Mask[a_2, array_1:=Mask[a_2, array_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume b_24 != null;
    Mask := Mask[b_24, array_1:=Mask[b_24, array_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= start_1;
    
    // -- Check definedness of end <= |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@79.12--79.102) [185188]"}
        HasDirectPerm(Mask, a_2, array_1);
    assume end_1 <= Seq#Length(Heap[a_2, array_1]);
    
    // -- Check definedness of |b.array| == |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@79.12--79.102) [185189]"}
        HasDirectPerm(Mask, b_24, array_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@79.12--79.102) [185190]"}
        HasDirectPerm(Mask, a_2, array_1);
    assume Seq#Length(Heap[b_24, array_1]) == Seq#Length(Heap[a_2, array_1]);
    assume start_1 < middle;
    assume middle < end_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_23) && (Seq#Contains(Seq#Range(start_1, end_1), j_24) && i_23 != j_24)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@80.12--80.112) [185191]"}
            HasDirectPerm(Mask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@80.12--80.112) [185192]"}
            i_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@80.12--80.112) [185193]"}
            i_23 < Seq#Length(Heap[a_2, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@80.12--80.112) [185194]"}
            HasDirectPerm(Mask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (mergesort.vpr@80.12--80.112) [185195]"}
            j_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (mergesort.vpr@80.12--80.112) [185196]"}
            j_24 < Seq#Length(Heap[a_2, array_1]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_1), Seq#Contains(Seq#Range(start_1, end_1), j_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_1), Seq#Contains(Seq#Range(start_1, end_1), j_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_1), Seq#Index(Heap[a_2, array_1], j_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_1), Seq#Index(Heap[a_2, array_1], j_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_1), Seq#Index(Heap[a_2, array_1], i_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_1), Seq#Index(Heap[a_2, array_1], i_1) } { Seq#Index(Heap[a_2, array_1], i_1), Seq#Index(Heap[a_2, array_1], j_1) }
      Seq#Contains(Seq#Range(start_1, end_1), i_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_1) && i_1 != j_1) ==> Seq#Index(Heap[a_2, array_1], i_1) != Seq#Index(Heap[a_2, array_1], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [start..end)) } { a.array[k] } (k in [start..end)) ==> acc(a.array[k].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), k_37)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@81.12--81.78) [185197]"}
            HasDirectPerm(Mask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[k] into a.array might be negative. (mergesort.vpr@81.12--81.78) [185198]"}
            k_37 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[k] into a.array might exceed sequence length. (mergesort.vpr@81.12--81.78) [185199]"}
            k_37 < Seq#Length(Heap[a_2, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[k].value might not be injective. (mergesort.vpr@81.12--81.78) [185200]"}
      (forall k_1: int, k_1_1: int ::
      
      (((k_1 != k_1_1 && Seq#Contains(Seq#Range(start_1, end_1), k_1)) && Seq#Contains(Seq#Range(start_1, end_1), k_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], k_1) != Seq#Index(Heap[a_2, array_1], k_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_1: int ::
        { Seq#Index(Heap[a_2, array_1], k_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), k_1) } { Seq#Contains(Seq#Range(start_1, end_1), k_1) } { Seq#Index(Heap[a_2, array_1], k_1) }
        Seq#Contains(Seq#Range(start_1, end_1), k_1) && NoPerm < FullPerm ==> qpRange19(Seq#Index(Heap[a_2, array_1], k_1)) && invRecv19(Seq#Index(Heap[a_2, array_1], k_1)) == k_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv19(o_9)) && NoPerm < FullPerm) && qpRange19(o_9) ==> Seq#Index(Heap[a_2, array_1], invRecv19(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1: int ::
        { Seq#Index(Heap[a_2, array_1], k_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), k_1) } { Seq#Contains(Seq#Range(start_1, end_1), k_1) } { Seq#Index(Heap[a_2, array_1], k_1) }
        Seq#Contains(Seq#Range(start_1, end_1), k_1) ==> Seq#Index(Heap[a_2, array_1], k_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(start_1, end_1), invRecv19(o_9)) && NoPerm < FullPerm) && qpRange19(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], invRecv19(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv19(o_9)) && NoPerm < FullPerm) && qpRange19(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_25) && (Seq#Contains(Seq#Range(start_1, end_1), j_25) && i_25 != j_25)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@82.12--82.112) [185201]"}
            HasDirectPerm(Mask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@82.12--82.112) [185202]"}
            i_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@82.12--82.112) [185203]"}
            i_25 < Seq#Length(Heap[b_24, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@82.12--82.112) [185204]"}
            HasDirectPerm(Mask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might be negative. (mergesort.vpr@82.12--82.112) [185205]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might exceed sequence length. (mergesort.vpr@82.12--82.112) [185206]"}
            j_25 < Seq#Length(Heap[b_24, array_1]);
        }
        assume false;
      }
    assume (forall i_3_2: int, j_3: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_3_2), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_3) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_3_2), Seq#Contains(Seq#Range(start_1, end_1), j_3) } { Seq#Contains(Seq#Range(start_1, end_1), i_3_2), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_3) } { Seq#Contains(Seq#Range(start_1, end_1), i_3_2), Seq#Contains(Seq#Range(start_1, end_1), j_3) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_3_2), Seq#Index(Heap[b_24, array_1], j_3) } { Seq#Contains(Seq#Range(start_1, end_1), i_3_2), Seq#Index(Heap[b_24, array_1], j_3) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_3), Seq#Index(Heap[b_24, array_1], i_3_2) } { Seq#Contains(Seq#Range(start_1, end_1), j_3), Seq#Index(Heap[b_24, array_1], i_3_2) } { Seq#Index(Heap[b_24, array_1], i_3_2), Seq#Index(Heap[b_24, array_1], j_3) }
      Seq#Contains(Seq#Range(start_1, end_1), i_3_2) && (Seq#Contains(Seq#Range(start_1, end_1), j_3) && i_3_2 != j_3) ==> Seq#Index(Heap[b_24, array_1], i_3_2) != Seq#Index(Heap[b_24, array_1], j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall l: Int :: { (l in [start..end)) } { b.array[l] } (l in [start..end)) ==> acc(b.array[l].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), l_12)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@83.12--83.78) [185207]"}
            HasDirectPerm(Mask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[l] into b.array might be negative. (mergesort.vpr@83.12--83.78) [185208]"}
            l_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[l] into b.array might exceed sequence length. (mergesort.vpr@83.12--83.78) [185209]"}
            l_12 < Seq#Length(Heap[b_24, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b.array[l].value might not be injective. (mergesort.vpr@83.12--83.78) [185210]"}
      (forall l_1_2: int, l_1_3: int ::
      
      (((l_1_2 != l_1_3 && Seq#Contains(Seq#Range(start_1, end_1), l_1_2)) && Seq#Contains(Seq#Range(start_1, end_1), l_1_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], l_1_2) != Seq#Index(Heap[b_24, array_1], l_1_3)
    );
    
    // -- Define Inverse Function
      assume (forall l_1_2: int ::
        { Seq#Index(Heap[b_24, array_1], l_1_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), l_1_2) } { Seq#Contains(Seq#Range(start_1, end_1), l_1_2) } { Seq#Index(Heap[b_24, array_1], l_1_2) }
        Seq#Contains(Seq#Range(start_1, end_1), l_1_2) && NoPerm < FullPerm ==> qpRange20(Seq#Index(Heap[b_24, array_1], l_1_2)) && invRecv20(Seq#Index(Heap[b_24, array_1], l_1_2)) == l_1_2
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv20(o_9)) && NoPerm < FullPerm) && qpRange20(o_9) ==> Seq#Index(Heap[b_24, array_1], invRecv20(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall l_1_2: int ::
        { Seq#Index(Heap[b_24, array_1], l_1_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), l_1_2) } { Seq#Contains(Seq#Range(start_1, end_1), l_1_2) } { Seq#Index(Heap[b_24, array_1], l_1_2) }
        Seq#Contains(Seq#Range(start_1, end_1), l_1_2) ==> Seq#Index(Heap[b_24, array_1], l_1_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(start_1, end_1), invRecv20(o_9)) && NoPerm < FullPerm) && qpRange20(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], invRecv20(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv20(o_9)) && NoPerm < FullPerm) && qpRange20(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
    havoc wildcard;
    perm := wildcard;
    assume a_2 != null;
    PostMask := PostMask[a_2, array_1:=PostMask[a_2, array_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume b_24 != null;
    PostMask := PostMask[b_24, array_1:=PostMask[b_24, array_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a.array == old(a.array)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@86.11--86.34) [185211]"}
        HasDirectPerm(PostMask, a_2, array_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@86.11--86.34) [185212]"}
        HasDirectPerm(oldMask, a_2, array_1);
    assume Seq#Equal(PostHeap[a_2, array_1], oldHeap[a_2, array_1]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of b.array == old(b.array)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@87.11--87.34) [185213]"}
        HasDirectPerm(PostMask, b_24, array_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@87.11--87.34) [185214]"}
        HasDirectPerm(oldMask, b_24, array_1);
    assume Seq#Equal(PostHeap[b_24, array_1], oldHeap[b_24, array_1]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_16) && (Seq#Contains(Seq#Range(start_1, end_1), j_11) && i_16 != j_11)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@88.11--88.111) [185215]"}
            HasDirectPerm(PostMask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@88.11--88.111) [185216]"}
            i_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@88.11--88.111) [185217]"}
            i_16 < Seq#Length(PostHeap[a_2, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@88.11--88.111) [185218]"}
            HasDirectPerm(PostMask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (mergesort.vpr@88.11--88.111) [185219]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (mergesort.vpr@88.11--88.111) [185220]"}
            j_11 < Seq#Length(PostHeap[a_2, array_1]);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_5: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_5_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_5) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_5_1), Seq#Contains(Seq#Range(start_1, end_1), j_5) } { Seq#Contains(Seq#Range(start_1, end_1), i_5_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_5) } { Seq#Contains(Seq#Range(start_1, end_1), i_5_1), Seq#Contains(Seq#Range(start_1, end_1), j_5) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_5_1), Seq#Index(PostHeap[a_2, array_1], j_5) } { Seq#Contains(Seq#Range(start_1, end_1), i_5_1), Seq#Index(PostHeap[a_2, array_1], j_5) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_5), Seq#Index(PostHeap[a_2, array_1], i_5_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_5), Seq#Index(PostHeap[a_2, array_1], i_5_1) } { Seq#Index(PostHeap[a_2, array_1], i_5_1), Seq#Index(PostHeap[a_2, array_1], j_5) }
      Seq#Contains(Seq#Range(start_1, end_1), i_5_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_5) && i_5_1 != j_5) ==> Seq#Index(PostHeap[a_2, array_1], i_5_1) != Seq#Index(PostHeap[a_2, array_1], j_5)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_42)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@89.11--89.77) [185221]"}
            HasDirectPerm(PostMask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@89.11--89.77) [185222]"}
            i_42 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@89.11--89.77) [185223]"}
            i_42 < Seq#Length(PostHeap[a_2, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@89.11--89.77) [185224]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(start_1, end_1), i_7_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[a_2, array_1], i_7_1) != Seq#Index(PostHeap[a_2, array_1], i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[a_2, array_1], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_7_1) } { Seq#Index(PostHeap[a_2, array_1], i_7_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_7_1) && NoPerm < FullPerm ==> qpRange21(Seq#Index(PostHeap[a_2, array_1], i_7_1)) && invRecv21(Seq#Index(PostHeap[a_2, array_1], i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv21(o_9)) && NoPerm < FullPerm) && qpRange21(o_9) ==> Seq#Index(PostHeap[a_2, array_1], invRecv21(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[a_2, array_1], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_7_1) } { Seq#Index(PostHeap[a_2, array_1], i_7_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_7_1) ==> Seq#Index(PostHeap[a_2, array_1], i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(start_1, end_1), invRecv21(o_9)) && NoPerm < FullPerm) && qpRange21(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[a_2, array_1], invRecv21(o_9)) == o_9) && QPMask[o_9, value_1] == PostMask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv21(o_9)) && NoPerm < FullPerm) && qpRange21(o_9)) ==> QPMask[o_9, value_1] == PostMask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_51) && (Seq#Contains(Seq#Range(start_1, end_1), j_35) && i_51 != j_35)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@90.11--90.111) [185225]"}
            HasDirectPerm(PostMask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@90.11--90.111) [185226]"}
            i_51 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@90.11--90.111) [185227]"}
            i_51 < Seq#Length(PostHeap[b_24, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@90.11--90.111) [185228]"}
            HasDirectPerm(PostMask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might be negative. (mergesort.vpr@90.11--90.111) [185229]"}
            j_35 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might exceed sequence length. (mergesort.vpr@90.11--90.111) [185230]"}
            j_35 < Seq#Length(PostHeap[b_24, array_1]);
        }
        assume false;
      }
    assume (forall i_9_1: int, j_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_9_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_9_1), Seq#Contains(Seq#Range(start_1, end_1), j_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_9_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_9_1), Seq#Contains(Seq#Range(start_1, end_1), j_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_9_1), Seq#Index(PostHeap[b_24, array_1], j_7_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_9_1), Seq#Index(PostHeap[b_24, array_1], j_7_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_7_1), Seq#Index(PostHeap[b_24, array_1], i_9_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_7_1), Seq#Index(PostHeap[b_24, array_1], i_9_1) } { Seq#Index(PostHeap[b_24, array_1], i_9_1), Seq#Index(PostHeap[b_24, array_1], j_7_1) }
      Seq#Contains(Seq#Range(start_1, end_1), i_9_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_7_1) && i_9_1 != j_7_1) ==> Seq#Index(PostHeap[b_24, array_1], i_9_1) != Seq#Index(PostHeap[b_24, array_1], j_7_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start_1, end_1), i_53)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@91.11--91.77) [185231]"}
            HasDirectPerm(PostMask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@91.11--91.77) [185232]"}
            i_53 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@91.11--91.77) [185233]"}
            i_53 < Seq#Length(PostHeap[b_24, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@91.11--91.77) [185234]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(start_1, end_1), i_11_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[b_24, array_1], i_11_1) != Seq#Index(PostHeap[b_24, array_1], i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[b_24, array_1], i_11_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_11_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_11_1) } { Seq#Index(PostHeap[b_24, array_1], i_11_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_11_1) && NoPerm < FullPerm ==> qpRange22(Seq#Index(PostHeap[b_24, array_1], i_11_1)) && invRecv22(Seq#Index(PostHeap[b_24, array_1], i_11_1)) == i_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv22(o_9)) && NoPerm < FullPerm) && qpRange22(o_9) ==> Seq#Index(PostHeap[b_24, array_1], invRecv22(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[b_24, array_1], i_11_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_11_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_11_1) } { Seq#Index(PostHeap[b_24, array_1], i_11_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_11_1) ==> Seq#Index(PostHeap[b_24, array_1], i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(start_1, end_1), invRecv22(o_9)) && NoPerm < FullPerm) && qpRange22(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[b_24, array_1], invRecv22(o_9)) == o_9) && QPMask[o_9, value_1] == PostMask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv22(o_9)) && NoPerm < FullPerm) && qpRange22(o_9)) ==> QPMask[o_9, value_1] == PostMask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: I := start -- mergesort.vpr@93.5--93.23
    I_1 := start_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: J := middle -- mergesort.vpr@94.5--94.24
    J := middle;
    assume state(Heap, Mask);
  
  // -- Translating statement: N := start -- mergesort.vpr@95.5--95.23
    N := start_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (N < end) -- mergesort.vpr@97.5--121.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant acc(a.array, wildcard) might not hold on entry. There might be insufficient permission to access a.array (mergesort.vpr@98.17--98.39) [185235]"}
          Mask[a_2, array_1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array_1];
        Mask := Mask[a_2, array_1:=Mask[a_2, array_1] - wildcard];
        assert {:msg "  Loop invariant acc(b.array, wildcard) might not hold on entry. There might be insufficient permission to access b.array (mergesort.vpr@99.17--99.39) [185236]"}
          Mask[b_24, array_1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[b_24, array_1];
        Mask := Mask[b_24, array_1:=Mask[b_24, array_1] - wildcard];
        assert {:msg "  Loop invariant 0 <= start && end <= |a.array| might not hold on entry. Assertion 0 <= start might not hold. (mergesort.vpr@100.17--100.47) [185237]"}
          0 <= start_1;
        assert {:msg "  Loop invariant 0 <= start && end <= |a.array| might not hold on entry. Assertion end <= |a.array| might not hold. (mergesort.vpr@100.17--100.47) [185238]"}
          end_1 <= Seq#Length(Heap[a_2, array_1]);
        assert {:msg "  Loop invariant N == I + J - middle && 0 <= start might not hold on entry. Assertion N == I + J - middle might not hold. (mergesort.vpr@101.17--101.46) [185239]"}
          N == I_1 + J - middle;
        assert {:msg "  Loop invariant N == I + J - middle && 0 <= start might not hold on entry. Assertion 0 <= start might not hold. (mergesort.vpr@101.17--101.46) [185240]"}
          0 <= start_1;
        assert {:msg "  Loop invariant start <= I might not hold on entry. Assertion start <= I might not hold. (mergesort.vpr@102.17--102.27) [185241]"}
          start_1 <= I_1;
        assert {:msg "  Loop invariant middle <= J might not hold on entry. Assertion middle <= J might not hold. (mergesort.vpr@103.17--103.28) [185242]"}
          middle <= J;
        assert {:msg "  Loop invariant J <= end might not hold on entry. Assertion J <= end might not hold. (mergesort.vpr@104.17--104.25) [185243]"}
          J <= end_1;
        assert {:msg "  Loop invariant |a.array| == |b.array| might not hold on entry. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@105.17--105.39) [185244]"}
          Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
        assert {:msg "  Loop invariant a.array == old(a.array) might not hold on entry. Assertion a.array == old(a.array) might not hold. (mergesort.vpr@106.17--106.40) [185245]"}
          Seq#Equal(Heap[a_2, array_1], oldHeap[a_2, array_1]);
        assert {:msg "  Loop invariant b.array == old(b.array) might not hold on entry. Assertion b.array == old(b.array) might not hold. (mergesort.vpr@107.14--107.37) [185246]"}
          Seq#Equal(Heap[b_24, array_1], oldHeap[b_24, array_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a.array[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write)) might not hold on entry. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [185247]"}
            (forall i_18_1: int, i_18_2: int ::
            { neverTriggered25(i_18_1), neverTriggered25(i_18_2) }
            (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(start_1, end_1), i_18_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_18_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_18_1) != Seq#Index(Heap[a_2, array_1], i_18_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write)) might not hold on entry. There might be insufficient permission to access a.array[i].value (mergesort.vpr@108.17--108.83) [185248]"}
            (forall i_18_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_18_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_18_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_18_1) } { Seq#Index(Heap[a_2, array_1], i_18_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_18_1) ==> Mask[Seq#Index(Heap[a_2, array_1], i_18_1), value_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a.array[i]
          assume (forall i_18_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_18_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_18_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_18_1) } { Seq#Index(Heap[a_2, array_1], i_18_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_18_1) && NoPerm < FullPerm ==> qpRange25(Seq#Index(Heap[a_2, array_1], i_18_1)) && invRecv25(Seq#Index(Heap[a_2, array_1], i_18_1)) == i_18_1
          );
          assume (forall o_9: Ref ::
            { invRecv25(o_9) }
            Seq#Contains(Seq#Range(start_1, end_1), invRecv25(o_9)) && (NoPerm < FullPerm && qpRange25(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv25(o_9)) == o_9
          );
        
        // -- assume permission updates for field value
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            (Seq#Contains(Seq#Range(start_1, end_1), invRecv25(o_9)) && (NoPerm < FullPerm && qpRange25(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv25(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv25(o_9)) && (NoPerm < FullPerm && qpRange25(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b.array[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write)) might not hold on entry. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [185249]"}
            (forall i_19_1: int, i_19_2: int ::
            { neverTriggered26(i_19_1), neverTriggered26(i_19_2) }
            (((i_19_1 != i_19_2 && Seq#Contains(Seq#Range(start_1, end_1), i_19_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_19_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_19_1) != Seq#Index(Heap[b_24, array_1], i_19_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write)) might not hold on entry. There might be insufficient permission to access b.array[i].value (mergesort.vpr@109.14--109.80) [185250]"}
            (forall i_19_1: int ::
            { Seq#Index(Heap[b_24, array_1], i_19_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_19_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_19_1) } { Seq#Index(Heap[b_24, array_1], i_19_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_19_1) ==> Mask[Seq#Index(Heap[b_24, array_1], i_19_1), value_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b.array[i]
          assume (forall i_19_1: int ::
            { Seq#Index(Heap[b_24, array_1], i_19_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_19_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_19_1) } { Seq#Index(Heap[b_24, array_1], i_19_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_19_1) && NoPerm < FullPerm ==> qpRange26(Seq#Index(Heap[b_24, array_1], i_19_1)) && invRecv26(Seq#Index(Heap[b_24, array_1], i_19_1)) == i_19_1
          );
          assume (forall o_9: Ref ::
            { invRecv26(o_9) }
            Seq#Contains(Seq#Range(start_1, end_1), invRecv26(o_9)) && (NoPerm < FullPerm && qpRange26(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv26(o_9)) == o_9
          );
        
        // -- assume permission updates for field value
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            (Seq#Contains(Seq#Range(start_1, end_1), invRecv26(o_9)) && (NoPerm < FullPerm && qpRange26(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv26(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv26(o_9)) && (NoPerm < FullPerm && qpRange26(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc N, J, I_1;
    
    // -- Check definedness of invariant
      if (*) {
        havoc wildcard;
        perm := wildcard;
        assume a_2 != null;
        Mask := Mask[a_2, array_1:=Mask[a_2, array_1] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume b_24 != null;
        Mask := Mask[b_24, array_1:=Mask[b_24, array_1] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume 0 <= start_1;
        
        // -- Check definedness of end <= |a.array|
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@100.17--100.47) [185251]"}
            HasDirectPerm(Mask, a_2, array_1);
        assume end_1 <= Seq#Length(Heap[a_2, array_1]);
        assume state(Heap, Mask);
        assume N == I_1 + J - middle;
        assume 0 <= start_1;
        assume state(Heap, Mask);
        assume start_1 <= I_1;
        assume state(Heap, Mask);
        assume middle <= J;
        assume state(Heap, Mask);
        assume J <= end_1;
        assume state(Heap, Mask);
        
        // -- Check definedness of |a.array| == |b.array|
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@105.17--105.39) [185252]"}
            HasDirectPerm(Mask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@105.17--105.39) [185253]"}
            HasDirectPerm(Mask, b_24, array_1);
        assume Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
        assume state(Heap, Mask);
        
        // -- Check definedness of a.array == old(a.array)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@106.17--106.40) [185254]"}
            HasDirectPerm(Mask, a_2, array_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@106.17--106.40) [185255]"}
            HasDirectPerm(oldMask, a_2, array_1);
        assume Seq#Equal(Heap[a_2, array_1], oldHeap[a_2, array_1]);
        assume state(Heap, Mask);
        
        // -- Check definedness of b.array == old(b.array)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@107.14--107.37) [185256]"}
            HasDirectPerm(Mask, b_24, array_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@107.14--107.37) [185257]"}
            HasDirectPerm(oldMask, b_24, array_1);
        assume Seq#Equal(Heap[b_24, array_1], oldHeap[b_24, array_1]);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start_1, end_1), i_64)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@108.17--108.83) [185258]"}
                HasDirectPerm(Mask, a_2, array_1);
              assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@108.17--108.83) [185259]"}
                i_64 >= 0;
              assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@108.17--108.83) [185260]"}
                i_64 < Seq#Length(Heap[a_2, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [185261]"}
          (forall i_21_1: int, i_21_2: int ::
          
          (((i_21_1 != i_21_2 && Seq#Contains(Seq#Range(start_1, end_1), i_21_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_21_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_21_1) != Seq#Index(Heap[a_2, array_1], i_21_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_21_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_21_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_21_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_21_1) } { Seq#Index(Heap[a_2, array_1], i_21_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_21_1) && NoPerm < FullPerm ==> qpRange27(Seq#Index(Heap[a_2, array_1], i_21_1)) && invRecv27(Seq#Index(Heap[a_2, array_1], i_21_1)) == i_21_1
          );
          assume (forall o_9: Ref ::
            { invRecv27(o_9) }
            (Seq#Contains(Seq#Range(start_1, end_1), invRecv27(o_9)) && NoPerm < FullPerm) && qpRange27(o_9) ==> Seq#Index(Heap[a_2, array_1], invRecv27(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_21_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_21_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_21_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_21_1) } { Seq#Index(Heap[a_2, array_1], i_21_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_21_1) ==> Seq#Index(Heap[a_2, array_1], i_21_1) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            ((Seq#Contains(Seq#Range(start_1, end_1), invRecv27(o_9)) && NoPerm < FullPerm) && qpRange27(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], invRecv27(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv27(o_9)) && NoPerm < FullPerm) && qpRange27(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start_1, end_1), i_55)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@109.14--109.80) [185262]"}
                HasDirectPerm(Mask, b_24, array_1);
              assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@109.14--109.80) [185263]"}
                i_55 >= 0;
              assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@109.14--109.80) [185264]"}
                i_55 < Seq#Length(Heap[b_24, array_1]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [185265]"}
          (forall i_23_1: int, i_23_2: int ::
          
          (((i_23_1 != i_23_2 && Seq#Contains(Seq#Range(start_1, end_1), i_23_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_23_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_23_1) != Seq#Index(Heap[b_24, array_1], i_23_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_23_1: int ::
            { Seq#Index(Heap[b_24, array_1], i_23_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_23_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_23_1) } { Seq#Index(Heap[b_24, array_1], i_23_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_23_1) && NoPerm < FullPerm ==> qpRange28(Seq#Index(Heap[b_24, array_1], i_23_1)) && invRecv28(Seq#Index(Heap[b_24, array_1], i_23_1)) == i_23_1
          );
          assume (forall o_9: Ref ::
            { invRecv28(o_9) }
            (Seq#Contains(Seq#Range(start_1, end_1), invRecv28(o_9)) && NoPerm < FullPerm) && qpRange28(o_9) ==> Seq#Index(Heap[b_24, array_1], invRecv28(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_23_1: int ::
            { Seq#Index(Heap[b_24, array_1], i_23_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_23_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_23_1) } { Seq#Index(Heap[b_24, array_1], i_23_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_23_1) ==> Seq#Index(Heap[b_24, array_1], i_23_1) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            ((Seq#Contains(Seq#Range(start_1, end_1), invRecv28(o_9)) && NoPerm < FullPerm) && qpRange28(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], invRecv28(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv28(o_9)) && NoPerm < FullPerm) && qpRange28(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
        havoc wildcard;
        perm := wildcard;
        assume a_2 != null;
        Mask := Mask[a_2, array_1:=Mask[a_2, array_1] + perm];
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume b_24 != null;
        Mask := Mask[b_24, array_1:=Mask[b_24, array_1] + perm];
        assume state(Heap, Mask);
        assume 0 <= start_1;
        assume end_1 <= Seq#Length(Heap[a_2, array_1]);
        assume N == I_1 + J - middle;
        assume 0 <= start_1;
        assume start_1 <= I_1;
        assume middle <= J;
        assume J <= end_1;
        assume Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
        assume Seq#Equal(Heap[a_2, array_1], oldHeap[a_2, array_1]);
        assume Seq#Equal(Heap[b_24, array_1], oldHeap[b_24, array_1]);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [185266]"}
          (forall i_24_1: int, i_24_2: int ::
          
          (((i_24_1 != i_24_2 && Seq#Contains(Seq#Range(start_1, end_1), i_24_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_24_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_24_1) != Seq#Index(Heap[a_2, array_1], i_24_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_24_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_24_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_24_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_24_1) } { Seq#Index(Heap[a_2, array_1], i_24_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_24_1) && NoPerm < FullPerm ==> qpRange29(Seq#Index(Heap[a_2, array_1], i_24_1)) && invRecv29(Seq#Index(Heap[a_2, array_1], i_24_1)) == i_24_1
          );
          assume (forall o_9: Ref ::
            { invRecv29(o_9) }
            (Seq#Contains(Seq#Range(start_1, end_1), invRecv29(o_9)) && NoPerm < FullPerm) && qpRange29(o_9) ==> Seq#Index(Heap[a_2, array_1], invRecv29(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_24_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_24_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_24_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_24_1) } { Seq#Index(Heap[a_2, array_1], i_24_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_24_1) ==> Seq#Index(Heap[a_2, array_1], i_24_1) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            ((Seq#Contains(Seq#Range(start_1, end_1), invRecv29(o_9)) && NoPerm < FullPerm) && qpRange29(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], invRecv29(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv29(o_9)) && NoPerm < FullPerm) && qpRange29(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [185267]"}
          (forall i_25_1: int, i_25_2: int ::
          
          (((i_25_1 != i_25_2 && Seq#Contains(Seq#Range(start_1, end_1), i_25_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_25_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_25_1) != Seq#Index(Heap[b_24, array_1], i_25_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_25_1: int ::
            { Seq#Index(Heap[b_24, array_1], i_25_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_25_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_25_1) } { Seq#Index(Heap[b_24, array_1], i_25_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_25_1) && NoPerm < FullPerm ==> qpRange30(Seq#Index(Heap[b_24, array_1], i_25_1)) && invRecv30(Seq#Index(Heap[b_24, array_1], i_25_1)) == i_25_1
          );
          assume (forall o_9: Ref ::
            { invRecv30(o_9) }
            (Seq#Contains(Seq#Range(start_1, end_1), invRecv30(o_9)) && NoPerm < FullPerm) && qpRange30(o_9) ==> Seq#Index(Heap[b_24, array_1], invRecv30(o_9)) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_25_1: int ::
            { Seq#Index(Heap[b_24, array_1], i_25_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_25_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_25_1) } { Seq#Index(Heap[b_24, array_1], i_25_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_25_1) ==> Seq#Index(Heap[b_24, array_1], i_25_1) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            ((Seq#Contains(Seq#Range(start_1, end_1), invRecv30(o_9)) && NoPerm < FullPerm) && qpRange30(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], invRecv30(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv30(o_9)) && NoPerm < FullPerm) && qpRange30(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume N < end_1;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: if (J == end || a.array[I].value < a.array[J].value) -- mergesort.vpr@111.9--119.10
            
            // -- Check definedness of J == end || a.array[I].value < a.array[J].value
              if (!(J == end_1)) {
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access a.array (mergesort.vpr@111.12--111.63) [185268]"}
                  HasDirectPerm(Mask, a_2, array_1);
                assert {:msg "  Conditional statement might fail. Index a.array[I] into a.array might be negative. (mergesort.vpr@111.12--111.63) [185269]"}
                  I_1 >= 0;
                assert {:msg "  Conditional statement might fail. Index a.array[I] into a.array might exceed sequence length. (mergesort.vpr@111.12--111.63) [185270]"}
                  I_1 < Seq#Length(Heap[a_2, array_1]);
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access a.array[I].value (mergesort.vpr@111.12--111.63) [185271]"}
                  HasDirectPerm(Mask, Seq#Index(Heap[a_2, array_1], I_1), value_1);
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access a.array (mergesort.vpr@111.12--111.63) [185272]"}
                  HasDirectPerm(Mask, a_2, array_1);
                assert {:msg "  Conditional statement might fail. Index a.array[J] into a.array might be negative. (mergesort.vpr@111.12--111.63) [185273]"}
                  J >= 0;
                assert {:msg "  Conditional statement might fail. Index a.array[J] into a.array might exceed sequence length. (mergesort.vpr@111.12--111.63) [185274]"}
                  J < Seq#Length(Heap[a_2, array_1]);
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access a.array[J].value (mergesort.vpr@111.12--111.63) [185275]"}
                  HasDirectPerm(Mask, Seq#Index(Heap[a_2, array_1], J), value_1);
              }
            if (J == end_1 || Heap[Seq#Index(Heap[a_2, array_1], I_1), value_1] < Heap[Seq#Index(Heap[a_2, array_1], J), value_1]) {
              
              // -- Translating statement: b.array[N].value := a.array[I].value -- mergesort.vpr@113.13--113.53
                
                // -- Check definedness of b.array[N]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array (mergesort.vpr@113.13--113.53) [185276]"}
                    HasDirectPerm(Mask, b_24, array_1);
                  assert {:msg "  Assignment might fail. Index b.array[N] into b.array might be negative. (mergesort.vpr@113.13--113.53) [185277]"}
                    N >= 0;
                  assert {:msg "  Assignment might fail. Index b.array[N] into b.array might exceed sequence length. (mergesort.vpr@113.13--113.53) [185278]"}
                    N < Seq#Length(Heap[b_24, array_1]);
                
                // -- Check definedness of a.array[I].value
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (mergesort.vpr@113.13--113.53) [185279]"}
                    HasDirectPerm(Mask, a_2, array_1);
                  assert {:msg "  Assignment might fail. Index a.array[I] into a.array might be negative. (mergesort.vpr@113.13--113.53) [185280]"}
                    I_1 >= 0;
                  assert {:msg "  Assignment might fail. Index a.array[I] into a.array might exceed sequence length. (mergesort.vpr@113.13--113.53) [185281]"}
                    I_1 < Seq#Length(Heap[a_2, array_1]);
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array[I].value (mergesort.vpr@113.13--113.53) [185282]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[a_2, array_1], I_1), value_1);
                assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array[N].value (mergesort.vpr@113.13--113.53) [185283]"}
                  FullPerm == Mask[Seq#Index(Heap[b_24, array_1], N), value_1];
                Heap := Heap[Seq#Index(Heap[b_24, array_1], N), value_1:=Heap[Seq#Index(Heap[a_2, array_1], I_1), value_1]];
                assume state(Heap, Mask);
              
              // -- Translating statement: I := I + 1 -- mergesort.vpr@114.13--114.19
                I_1 := I_1 + 1;
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: b.array[N].value := a.array[J].value -- mergesort.vpr@117.13--117.53
                
                // -- Check definedness of b.array[N]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array (mergesort.vpr@117.13--117.53) [185284]"}
                    HasDirectPerm(Mask, b_24, array_1);
                  assert {:msg "  Assignment might fail. Index b.array[N] into b.array might be negative. (mergesort.vpr@117.13--117.53) [185285]"}
                    N >= 0;
                  assert {:msg "  Assignment might fail. Index b.array[N] into b.array might exceed sequence length. (mergesort.vpr@117.13--117.53) [185286]"}
                    N < Seq#Length(Heap[b_24, array_1]);
                
                // -- Check definedness of a.array[J].value
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (mergesort.vpr@117.13--117.53) [185287]"}
                    HasDirectPerm(Mask, a_2, array_1);
                  assert {:msg "  Assignment might fail. Index a.array[J] into a.array might be negative. (mergesort.vpr@117.13--117.53) [185288]"}
                    J >= 0;
                  assert {:msg "  Assignment might fail. Index a.array[J] into a.array might exceed sequence length. (mergesort.vpr@117.13--117.53) [185289]"}
                    J < Seq#Length(Heap[a_2, array_1]);
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array[J].value (mergesort.vpr@117.13--117.53) [185290]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[a_2, array_1], J), value_1);
                assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array[N].value (mergesort.vpr@117.13--117.53) [185291]"}
                  FullPerm == Mask[Seq#Index(Heap[b_24, array_1], N), value_1];
                Heap := Heap[Seq#Index(Heap[b_24, array_1], N), value_1:=Heap[Seq#Index(Heap[a_2, array_1], J), value_1]];
                assume state(Heap, Mask);
              
              // -- Translating statement: J := J + 1 -- mergesort.vpr@118.13--118.19
                J := J + 1;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: N := N + 1 -- mergesort.vpr@120.9--120.15
            N := N + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant acc(a.array, wildcard) might not be preserved. There might be insufficient permission to access a.array (mergesort.vpr@98.17--98.39) [185292]"}
          Mask[a_2, array_1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array_1];
        Mask := Mask[a_2, array_1:=Mask[a_2, array_1] - wildcard];
        assert {:msg "  Loop invariant acc(b.array, wildcard) might not be preserved. There might be insufficient permission to access b.array (mergesort.vpr@99.17--99.39) [185293]"}
          Mask[b_24, array_1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[b_24, array_1];
        Mask := Mask[b_24, array_1:=Mask[b_24, array_1] - wildcard];
        assert {:msg "  Loop invariant 0 <= start && end <= |a.array| might not be preserved. Assertion 0 <= start might not hold. (mergesort.vpr@100.17--100.47) [185294]"}
          0 <= start_1;
        assert {:msg "  Loop invariant 0 <= start && end <= |a.array| might not be preserved. Assertion end <= |a.array| might not hold. (mergesort.vpr@100.17--100.47) [185295]"}
          end_1 <= Seq#Length(Heap[a_2, array_1]);
        assert {:msg "  Loop invariant N == I + J - middle && 0 <= start might not be preserved. Assertion N == I + J - middle might not hold. (mergesort.vpr@101.17--101.46) [185296]"}
          N == I_1 + J - middle;
        assert {:msg "  Loop invariant N == I + J - middle && 0 <= start might not be preserved. Assertion 0 <= start might not hold. (mergesort.vpr@101.17--101.46) [185297]"}
          0 <= start_1;
        assert {:msg "  Loop invariant start <= I might not be preserved. Assertion start <= I might not hold. (mergesort.vpr@102.17--102.27) [185298]"}
          start_1 <= I_1;
        assert {:msg "  Loop invariant middle <= J might not be preserved. Assertion middle <= J might not hold. (mergesort.vpr@103.17--103.28) [185299]"}
          middle <= J;
        assert {:msg "  Loop invariant J <= end might not be preserved. Assertion J <= end might not hold. (mergesort.vpr@104.17--104.25) [185300]"}
          J <= end_1;
        assert {:msg "  Loop invariant |a.array| == |b.array| might not be preserved. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@105.17--105.39) [185301]"}
          Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
        assert {:msg "  Loop invariant a.array == old(a.array) might not be preserved. Assertion a.array == old(a.array) might not hold. (mergesort.vpr@106.17--106.40) [185302]"}
          Seq#Equal(Heap[a_2, array_1], oldHeap[a_2, array_1]);
        assert {:msg "  Loop invariant b.array == old(b.array) might not be preserved. Assertion b.array == old(b.array) might not hold. (mergesort.vpr@107.14--107.37) [185303]"}
          Seq#Equal(Heap[b_24, array_1], oldHeap[b_24, array_1]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a.array[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write)) might not be preserved. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [185304]"}
            (forall i_26_1: int, i_26_2: int ::
            { neverTriggered31(i_26_1), neverTriggered31(i_26_2) }
            (((i_26_1 != i_26_2 && Seq#Contains(Seq#Range(start_1, end_1), i_26_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_26_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_26_1) != Seq#Index(Heap[a_2, array_1], i_26_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write)) might not be preserved. There might be insufficient permission to access a.array[i].value (mergesort.vpr@108.17--108.83) [185305]"}
            (forall i_26_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_26_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_26_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_26_1) } { Seq#Index(Heap[a_2, array_1], i_26_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_26_1) ==> Mask[Seq#Index(Heap[a_2, array_1], i_26_1), value_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a.array[i]
          assume (forall i_26_1: int ::
            { Seq#Index(Heap[a_2, array_1], i_26_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_26_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_26_1) } { Seq#Index(Heap[a_2, array_1], i_26_1) }
            Seq#Contains(Seq#Range(start_1, end_1), i_26_1) && NoPerm < FullPerm ==> qpRange31(Seq#Index(Heap[a_2, array_1], i_26_1)) && invRecv31(Seq#Index(Heap[a_2, array_1], i_26_1)) == i_26_1
          );
          assume (forall o_9: Ref ::
            { invRecv31(o_9) }
            Seq#Contains(Seq#Range(start_1, end_1), invRecv31(o_9)) && (NoPerm < FullPerm && qpRange31(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv31(o_9)) == o_9
          );
        
        // -- assume permission updates for field value
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            (Seq#Contains(Seq#Range(start_1, end_1), invRecv31(o_9)) && (NoPerm < FullPerm && qpRange31(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv31(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv31(o_9)) && (NoPerm < FullPerm && qpRange31(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b.array[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write)) might not be preserved. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [185306]"}
            (forall i_27_2: int, i_27_3: int ::
            { neverTriggered32(i_27_2), neverTriggered32(i_27_3) }
            (((i_27_2 != i_27_3 && Seq#Contains(Seq#Range(start_1, end_1), i_27_2)) && Seq#Contains(Seq#Range(start_1, end_1), i_27_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_27_2) != Seq#Index(Heap[b_24, array_1], i_27_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write)) might not be preserved. There might be insufficient permission to access b.array[i].value (mergesort.vpr@109.14--109.80) [185307]"}
            (forall i_27_2: int ::
            { Seq#Index(Heap[b_24, array_1], i_27_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_27_2) } { Seq#Contains(Seq#Range(start_1, end_1), i_27_2) } { Seq#Index(Heap[b_24, array_1], i_27_2) }
            Seq#Contains(Seq#Range(start_1, end_1), i_27_2) ==> Mask[Seq#Index(Heap[b_24, array_1], i_27_2), value_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b.array[i]
          assume (forall i_27_2: int ::
            { Seq#Index(Heap[b_24, array_1], i_27_2) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_27_2) } { Seq#Contains(Seq#Range(start_1, end_1), i_27_2) } { Seq#Index(Heap[b_24, array_1], i_27_2) }
            Seq#Contains(Seq#Range(start_1, end_1), i_27_2) && NoPerm < FullPerm ==> qpRange32(Seq#Index(Heap[b_24, array_1], i_27_2)) && invRecv32(Seq#Index(Heap[b_24, array_1], i_27_2)) == i_27_2
          );
          assume (forall o_9: Ref ::
            { invRecv32(o_9) }
            Seq#Contains(Seq#Range(start_1, end_1), invRecv32(o_9)) && (NoPerm < FullPerm && qpRange32(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv32(o_9)) == o_9
          );
        
        // -- assume permission updates for field value
          assume (forall o_9: Ref ::
            { QPMask[o_9, value_1] }
            (Seq#Contains(Seq#Range(start_1, end_1), invRecv32(o_9)) && (NoPerm < FullPerm && qpRange32(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv32(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv32(o_9)) && (NoPerm < FullPerm && qpRange32(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
      assume !(N < end_1);
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume a_2 != null;
      Mask := Mask[a_2, array_1:=Mask[a_2, array_1] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume b_24 != null;
      Mask := Mask[b_24, array_1:=Mask[b_24, array_1] + perm];
      assume state(Heap, Mask);
      assume 0 <= start_1;
      assume end_1 <= Seq#Length(Heap[a_2, array_1]);
      assume N == I_1 + J - middle;
      assume 0 <= start_1;
      assume start_1 <= I_1;
      assume middle <= J;
      assume J <= end_1;
      assume Seq#Length(Heap[a_2, array_1]) == Seq#Length(Heap[b_24, array_1]);
      assume Seq#Equal(Heap[a_2, array_1], oldHeap[a_2, array_1]);
      assume Seq#Equal(Heap[b_24, array_1], oldHeap[b_24, array_1]);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [185308]"}
        (forall i_28: int, i_28_2: int ::
        
        (((i_28 != i_28_2 && Seq#Contains(Seq#Range(start_1, end_1), i_28)) && Seq#Contains(Seq#Range(start_1, end_1), i_28_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_28) != Seq#Index(Heap[a_2, array_1], i_28_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_28: int ::
          { Seq#Index(Heap[a_2, array_1], i_28) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_28) } { Seq#Contains(Seq#Range(start_1, end_1), i_28) } { Seq#Index(Heap[a_2, array_1], i_28) }
          Seq#Contains(Seq#Range(start_1, end_1), i_28) && NoPerm < FullPerm ==> qpRange33(Seq#Index(Heap[a_2, array_1], i_28)) && invRecv33(Seq#Index(Heap[a_2, array_1], i_28)) == i_28
        );
        assume (forall o_9: Ref ::
          { invRecv33(o_9) }
          (Seq#Contains(Seq#Range(start_1, end_1), invRecv33(o_9)) && NoPerm < FullPerm) && qpRange33(o_9) ==> Seq#Index(Heap[a_2, array_1], invRecv33(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_28: int ::
          { Seq#Index(Heap[a_2, array_1], i_28) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_28) } { Seq#Contains(Seq#Range(start_1, end_1), i_28) } { Seq#Index(Heap[a_2, array_1], i_28) }
          Seq#Contains(Seq#Range(start_1, end_1), i_28) ==> Seq#Index(Heap[a_2, array_1], i_28) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, value_1] }
          ((Seq#Contains(Seq#Range(start_1, end_1), invRecv33(o_9)) && NoPerm < FullPerm) && qpRange33(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], invRecv33(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv33(o_9)) && NoPerm < FullPerm) && qpRange33(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [185309]"}
        (forall i_29: int, i_29_2: int ::
        
        (((i_29 != i_29_2 && Seq#Contains(Seq#Range(start_1, end_1), i_29)) && Seq#Contains(Seq#Range(start_1, end_1), i_29_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_29) != Seq#Index(Heap[b_24, array_1], i_29_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_29: int ::
          { Seq#Index(Heap[b_24, array_1], i_29) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_29) } { Seq#Contains(Seq#Range(start_1, end_1), i_29) } { Seq#Index(Heap[b_24, array_1], i_29) }
          Seq#Contains(Seq#Range(start_1, end_1), i_29) && NoPerm < FullPerm ==> qpRange34(Seq#Index(Heap[b_24, array_1], i_29)) && invRecv34(Seq#Index(Heap[b_24, array_1], i_29)) == i_29
        );
        assume (forall o_9: Ref ::
          { invRecv34(o_9) }
          (Seq#Contains(Seq#Range(start_1, end_1), invRecv34(o_9)) && NoPerm < FullPerm) && qpRange34(o_9) ==> Seq#Index(Heap[b_24, array_1], invRecv34(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_29: int ::
          { Seq#Index(Heap[b_24, array_1], i_29) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_29) } { Seq#Contains(Seq#Range(start_1, end_1), i_29) } { Seq#Index(Heap[b_24, array_1], i_29) }
          Seq#Contains(Seq#Range(start_1, end_1), i_29) ==> Seq#Index(Heap[b_24, array_1], i_29) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, value_1] }
          ((Seq#Contains(Seq#Range(start_1, end_1), invRecv34(o_9)) && NoPerm < FullPerm) && qpRange34(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], invRecv34(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(start_1, end_1), invRecv34(o_9)) && NoPerm < FullPerm) && qpRange34(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of merge might not hold. There might be insufficient permission to access a.array (mergesort.vpr@84.11--84.33) [185310]"}
      Mask[a_2, array_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[a_2, array_1];
    Mask := Mask[a_2, array_1:=Mask[a_2, array_1] - wildcard];
    assert {:msg "  Postcondition of merge might not hold. There might be insufficient permission to access b.array (mergesort.vpr@85.11--85.33) [185311]"}
      Mask[b_24, array_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[b_24, array_1];
    Mask := Mask[b_24, array_1:=Mask[b_24, array_1] - wildcard];
    assert {:msg "  Postcondition of merge might not hold. Assertion a.array == old(a.array) might not hold. (mergesort.vpr@86.11--86.34) [185312]"}
      Seq#Equal(Heap[a_2, array_1], oldHeap[a_2, array_1]);
    assert {:msg "  Postcondition of merge might not hold. Assertion b.array == old(b.array) might not hold. (mergesort.vpr@87.11--87.34) [185313]"}
      Seq#Equal(Heap[b_24, array_1], oldHeap[b_24, array_1]);
    if (*) {
      if (Seq#Contains(Seq#Range(start_1, end_1), i_12_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_8_2) && i_12_1 != j_8_2)) {
        assert {:msg "  Postcondition of merge might not hold. Assertion a.array[i] != a.array[j] might not hold. (mergesort.vpr@88.11--88.111) [185314]"}
          Seq#Index(Heap[a_2, array_1], i_12_1) != Seq#Index(Heap[a_2, array_1], j_8_2);
      }
      assume false;
    }
    assume (forall i_13_1_1: int, j_9_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_13_1_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_13_1_1), Seq#Contains(Seq#Range(start_1, end_1), j_9_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_13_1_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_9_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_13_1_1), Seq#Contains(Seq#Range(start_1, end_1), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_13_1_1), Seq#Index(Heap[a_2, array_1], j_9_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_13_1_1), Seq#Index(Heap[a_2, array_1], j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_9_1_1), Seq#Index(Heap[a_2, array_1], i_13_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_9_1_1), Seq#Index(Heap[a_2, array_1], i_13_1_1) } { Seq#Index(Heap[a_2, array_1], i_13_1_1), Seq#Index(Heap[a_2, array_1], j_9_1_1) }
      Seq#Contains(Seq#Range(start_1, end_1), i_13_1_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_9_1_1) && i_13_1_1 != j_9_1_1) ==> Seq#Index(Heap[a_2, array_1], i_13_1_1) != Seq#Index(Heap[a_2, array_1], j_9_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@89.11--89.77) [185315]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered23(i_14_1), neverTriggered23(i_14_2) }
        (((i_14_1 != i_14_2 && Seq#Contains(Seq#Range(start_1, end_1), i_14_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_14_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array_1], i_14_1) != Seq#Index(Heap[a_2, array_1], i_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of merge might not hold. There might be insufficient permission to access a.array[i].value (mergesort.vpr@89.11--89.77) [185316]"}
        (forall i_14_1: int ::
        { Seq#Index(Heap[a_2, array_1], i_14_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_14_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_14_1) } { Seq#Index(Heap[a_2, array_1], i_14_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_14_1) ==> Mask[Seq#Index(Heap[a_2, array_1], i_14_1), value_1] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a.array[i]
      assume (forall i_14_1: int ::
        { Seq#Index(Heap[a_2, array_1], i_14_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_14_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_14_1) } { Seq#Index(Heap[a_2, array_1], i_14_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_14_1) && NoPerm < FullPerm ==> qpRange23(Seq#Index(Heap[a_2, array_1], i_14_1)) && invRecv23(Seq#Index(Heap[a_2, array_1], i_14_1)) == i_14_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        Seq#Contains(Seq#Range(start_1, end_1), invRecv23(o_9)) && (NoPerm < FullPerm && qpRange23(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv23(o_9)) == o_9
      );
    
    // -- assume permission updates for field value
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv23(o_9)) && (NoPerm < FullPerm && qpRange23(o_9)) ==> Seq#Index(Heap[a_2, array_1], invRecv23(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv23(o_9)) && (NoPerm < FullPerm && qpRange23(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(start_1, end_1), i_15_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_10_2) && i_15_1 != j_10_2)) {
        assert {:msg "  Postcondition of merge might not hold. Assertion b.array[i] != b.array[j] might not hold. (mergesort.vpr@90.11--90.111) [185317]"}
          Seq#Index(Heap[b_24, array_1], i_15_1) != Seq#Index(Heap[b_24, array_1], j_10_2);
      }
      assume false;
    }
    assume (forall i_16_1_1: int, j_11_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_16_1_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_11_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_16_1_1), Seq#Contains(Seq#Range(start_1, end_1), j_11_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_16_1_1), Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_11_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_16_1_1), Seq#Contains(Seq#Range(start_1, end_1), j_11_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_16_1_1), Seq#Index(Heap[b_24, array_1], j_11_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_16_1_1), Seq#Index(Heap[b_24, array_1], j_11_1_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), j_11_1_1), Seq#Index(Heap[b_24, array_1], i_16_1_1) } { Seq#Contains(Seq#Range(start_1, end_1), j_11_1_1), Seq#Index(Heap[b_24, array_1], i_16_1_1) } { Seq#Index(Heap[b_24, array_1], i_16_1_1), Seq#Index(Heap[b_24, array_1], j_11_1_1) }
      Seq#Contains(Seq#Range(start_1, end_1), i_16_1_1) && (Seq#Contains(Seq#Range(start_1, end_1), j_11_1_1) && i_16_1_1 != j_11_1_1) ==> Seq#Index(Heap[b_24, array_1], i_16_1_1) != Seq#Index(Heap[b_24, array_1], j_11_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver b.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@91.11--91.77) [185318]"}
        (forall i_17_1: int, i_17_2: int ::
        { neverTriggered24(i_17_1), neverTriggered24(i_17_2) }
        (((i_17_1 != i_17_2 && Seq#Contains(Seq#Range(start_1, end_1), i_17_1)) && Seq#Contains(Seq#Range(start_1, end_1), i_17_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array_1], i_17_1) != Seq#Index(Heap[b_24, array_1], i_17_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of merge might not hold. There might be insufficient permission to access b.array[i].value (mergesort.vpr@91.11--91.77) [185319]"}
        (forall i_17_1: int ::
        { Seq#Index(Heap[b_24, array_1], i_17_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_17_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_17_1) } { Seq#Index(Heap[b_24, array_1], i_17_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_17_1) ==> Mask[Seq#Index(Heap[b_24, array_1], i_17_1), value_1] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver b.array[i]
      assume (forall i_17_1: int ::
        { Seq#Index(Heap[b_24, array_1], i_17_1) } { Seq#ContainsTrigger(Seq#Range(start_1, end_1), i_17_1) } { Seq#Contains(Seq#Range(start_1, end_1), i_17_1) } { Seq#Index(Heap[b_24, array_1], i_17_1) }
        Seq#Contains(Seq#Range(start_1, end_1), i_17_1) && NoPerm < FullPerm ==> qpRange24(Seq#Index(Heap[b_24, array_1], i_17_1)) && invRecv24(Seq#Index(Heap[b_24, array_1], i_17_1)) == i_17_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        Seq#Contains(Seq#Range(start_1, end_1), invRecv24(o_9)) && (NoPerm < FullPerm && qpRange24(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv24(o_9)) == o_9
      );
    
    // -- assume permission updates for field value
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        (Seq#Contains(Seq#Range(start_1, end_1), invRecv24(o_9)) && (NoPerm < FullPerm && qpRange24(o_9)) ==> Seq#Index(Heap[b_24, array_1], invRecv24(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(start_1, end_1), invRecv24(o_9)) && (NoPerm < FullPerm && qpRange24(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}