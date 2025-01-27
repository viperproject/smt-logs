// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:33:29
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_53: Ref, f_67: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_53, f_67] }
  Heap[o_53, $allocated] ==> Heap[Heap[o_53, f_67], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_24: Ref, f_34: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_24, f_34] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_24, f_34) ==> Heap[o_24, f_34] == ExhaleHeap[o_24, f_34]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48), ExhaleHeap[null, PredicateMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> Heap[null, PredicateMaskField(pm_f_48)] == ExhaleHeap[null, PredicateMaskField(pm_f_48)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> (forall <A, B> o2_49: Ref, f_34: (Field A B) ::
    { ExhaleHeap[o2_49, f_34] }
    Heap[null, PredicateMaskField(pm_f_48)][o2_49, f_34] ==> Heap[o2_49, f_34] == ExhaleHeap[o2_49, f_34]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48), ExhaleHeap[null, WandMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> Heap[null, WandMaskField(pm_f_48)] == ExhaleHeap[null, WandMaskField(pm_f_48)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> (forall <A, B> o2_49: Ref, f_34: (Field A B) ::
    { ExhaleHeap[o2_49, f_34] }
    Heap[null, WandMaskField(pm_f_48)][o2_49, f_34] ==> Heap[o2_49, f_34] == ExhaleHeap[o2_49, f_34]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_24: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_24, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_24, $allocated] ==> ExhaleHeap[o_24, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_53: Ref, f_16: (Field A B), v: B ::
  { Heap[o_53, f_16:=v] }
  succHeap(Heap, Heap[o_53, f_16:=v])
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
function  neverTriggered11(i_5_1: int): bool;
function  neverTriggered12(i_7_1: int): bool;
function  neverTriggered13(i_9_1: int): bool;
function  neverTriggered14(i_11_1: int): bool;
function  neverTriggered15(i_13_1: int): bool;
function  neverTriggered16(i_14_1: int): bool;
function  neverTriggered17(i_15_1: int): bool;
function  neverTriggered18(i_16_1: int): bool;
function  neverTriggered19(i_17_1: int): bool;
function  neverTriggered20(i_1: int): bool;
function  neverTriggered21(i_3_2: int): bool;
function  neverTriggered22(i_5_1: int): bool;
function  neverTriggered23(i_7_1: int): bool;
function  neverTriggered24(i_9_1: int): bool;
function  neverTriggered25(i_11_1: int): bool;
function  neverTriggered26(i_12_1: int): bool;
function  neverTriggered27(i_13_1: int): bool;
function  neverTriggered28(i_14_1: int): bool;
function  neverTriggered29(i_15_1: int): bool;
function  neverTriggered30(i_16_1: int): bool;
function  neverTriggered31(i_17_1: int): bool;
function  neverTriggered32(i_18_1: int): bool;
function  neverTriggered33(i_19_1: int): bool;
function  neverTriggered34(i_20_2: int): bool;
function  neverTriggered35(i_21_1: int): bool;
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@6.1--11.2) [138746]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@6.1--11.2) [138747]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (testDepParLoopE1.vpr@10.21--10.44) [138748]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (testDepParLoopE1.vpr@10.21--10.44) [138749]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (testDepParLoopE1.vpr@10.21--10.44) [138750]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testDepParLoopE1.vpr@16.12--16.102) [138751]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testDepParLoopE1.vpr@16.12--16.102) [138752]"}
            j_14 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@16.12--16.102) [138753]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@16.12--16.102) [138754]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@17.13--17.95) [138755]"}
            k_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@17.13--17.95) [138756]"}
            k_6 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@17.13--17.95) [138757]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@13.1--20.2) [138758]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@13.1--20.2) [138759]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@13.1--20.2) [138760]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (testDepParLoopE1.vpr@19.40--19.68) [138761]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (testDepParLoopE1.vpr@19.40--19.68) [138762]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (testDepParLoopE1.vpr@19.40--19.68) [138763]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (testDepParLoopE1.vpr@19.40--19.68) [138764]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9_1 && (k_9_1 < hi && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[j] != ar[k] might not hold. (testDepParLoopE1.vpr@19.40--19.68) [138765]"}
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
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testDepParLoopE1.vpr@19.40--19.68) [138766]"}
            (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (testDepParLoopE1.vpr@19.40--19.68) [138767]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (lo <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@19.40--19.68) [138768]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && (lo <= k_11 && k_11 < hi)) && (lo <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testDepParLoopE1.vpr@19.40--19.68) [138769]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testDepParLoopE1.vpr@26.12--26.104) [138770]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testDepParLoopE1.vpr@26.12--26.104) [138771]"}
            j_12 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@26.12--26.104) [138772]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@26.12--26.104) [138773]"}
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
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testDepParLoopE1.vpr@27.13--27.136) [138774]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testDepParLoopE1.vpr@27.13--27.136) [138775]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax_1 && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@27.13--27.136) [138776]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@27.13--27.136) [138777]"}
            k_7 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@27.13--27.136) [138778]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testDepParLoopE1.vpr@22.1--30.2) [138779]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testDepParLoopE1.vpr@22.1--30.2) [138780]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@22.1--30.2) [138781]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@22.1--30.2) [138782]"}
            i < Seq#Length(ar_1);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@22.1--30.2) [138783]"}
            HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138784]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138785]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138786]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138787]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138788]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138789]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138790]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138791]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax_1 && (0 <= k_9_1 && (k_9_1 < vmax_1 && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[j] != ar[k] might not hold. (testDepParLoopE1.vpr@29.85--29.130) [138792]"}
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
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testDepParLoopE1.vpr@29.85--29.130) [138793]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (testDepParLoopE1.vpr@29.85--29.130) [138794]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@29.85--29.130) [138795]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testDepParLoopE1.vpr@29.85--29.130) [138796]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testDepParLoopE1.vpr@36.12--36.104) [138797]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testDepParLoopE1.vpr@36.12--36.104) [138798]"}
            j_2 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@36.12--36.104) [138799]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@36.12--36.104) [138800]"}
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
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testDepParLoopE1.vpr@37.13--37.136) [138801]"}
              step != 0;
            if (lo <= k_14 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (testDepParLoopE1.vpr@37.13--37.136) [138802]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_14 && (k_14 < vmax_1 && (lo <= k_14 mod step && k_14 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@37.13--37.136) [138803]"}
            k_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@37.13--37.136) [138804]"}
            k_14 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@37.13--37.136) [138805]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testDepParLoopE1.vpr@32.1--40.2) [138806]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (testDepParLoopE1.vpr@32.1--40.2) [138807]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@32.1--40.2) [138808]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@32.1--40.2) [138809]"}
              i < Seq#Length(ar_1);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@32.1--40.2) [138810]"}
              HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138811]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138812]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138813]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138814]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138815]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138816]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138817]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138818]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax_1 && (0 <= k_9_1 && (k_9_1 < vmax_1 && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[j] != ar[k] might not hold. (testDepParLoopE1.vpr@39.97--39.147) [138819]"}
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
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testDepParLoopE1.vpr@39.97--39.147) [138820]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (testDepParLoopE1.vpr@39.97--39.147) [138821]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@39.97--39.147) [138822]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testDepParLoopE1.vpr@39.97--39.147) [138823]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@42.1--47.2) [138824]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@42.1--47.2) [138825]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (testDepParLoopE1.vpr@46.36--46.64) [138826]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (testDepParLoopE1.vpr@46.36--46.64) [138827]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (testDepParLoopE1.vpr@46.36--46.64) [138828]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testDepParLoopE1.vpr@52.12--52.102) [138829]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testDepParLoopE1.vpr@52.12--52.102) [138830]"}
            j_4 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@52.12--52.102) [138831]"}
            k_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@52.12--52.102) [138832]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@53.13--53.94) [138833]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@53.13--53.94) [138834]"}
            k_2 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@53.13--53.94) [138835]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@49.1--56.2) [138836]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@49.1--56.2) [138837]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@49.1--56.2) [138838]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (testDepParLoopE1.vpr@55.55--55.84) [138839]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (testDepParLoopE1.vpr@55.55--55.84) [138840]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (testDepParLoopE1.vpr@55.55--55.84) [138841]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9_1 && (k_9_1 < hi && j_4_1 != k_9_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[j] != ar[k] might not hold. (testDepParLoopE1.vpr@55.55--55.84) [138842]"}
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
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testDepParLoopE1.vpr@55.55--55.84) [138843]"}
            (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (testDepParLoopE1.vpr@55.55--55.84) [138844]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (0 <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@55.55--55.84) [138845]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && (0 <= k_11 && k_11 < hi)) && (0 <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (testDepParLoopE1.vpr@55.55--55.84) [138846]"}
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
// Translation of method Ref__loop_main_54
// ==================================================

procedure Ref__loop_main_54(diz: Ref, current_thread_id: int, len_3: int, ar_1: (Seq Ref), br: (Seq Ref), cr: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_6: int;
  var k_25: int;
  var i_19: int;
  var QPMask: MaskType;
  var j_7: int;
  var k_29: int;
  var i_10: int;
  var j_22: int;
  var k_31: int;
  var i_11: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_12: int;
  var i_13: int;
  var i_23: int;
  var i_24: int;
  var perm: Perm;
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
    if (0 < len_3) {
      assume Seq#Length(ar_1) == len_3;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_6 && (j_6 < Seq#Length(ar_1) && (0 <= k_25 && (k_25 < Seq#Length(ar_1) && j_6 != k_25)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testDepParLoopE1.vpr@62.12--62.106) [138847]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testDepParLoopE1.vpr@62.12--62.106) [138848]"}
            j_6 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@62.12--62.106) [138849]"}
            k_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@62.12--62.106) [138850]"}
            k_25 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(ar_1, j_1), Seq#Index(ar_1, k_1) }
      0 <= j_1 && (j_1 < Seq#Length(ar_1) && (0 <= k_1 && (k_1 < Seq#Length(ar_1) && j_1 != k_1))) ==> Seq#Index(ar_1, j_1) != Seq#Index(ar_1, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } 0 <= i && i < len ==> acc(ar[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_19 && i_19 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@63.13--63.92) [138851]"}
            i_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@63.13--63.92) [138852]"}
            i_19 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@63.13--63.92) [138853]"}
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
    if (0 < len_3) {
      assume Seq#Length(br) == len_3;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
      if (*) {
        if (0 <= j_7 && (j_7 < Seq#Length(br) && (0 <= k_29 && (k_29 < Seq#Length(br) && j_7 != k_29)))) {
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might be negative. (testDepParLoopE1.vpr@65.12--65.106) [138854]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might exceed sequence length. (testDepParLoopE1.vpr@65.12--65.106) [138855]"}
            j_7 < Seq#Length(br);
          assert {:msg "  Contract might not be well-formed. Index br[k] into br might be negative. (testDepParLoopE1.vpr@65.12--65.106) [138856]"}
            k_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[k] into br might exceed sequence length. (testDepParLoopE1.vpr@65.12--65.106) [138857]"}
            k_29 < Seq#Length(br);
        }
        assume false;
      }
    assume (forall j_3: int, k_3: int ::
      { Seq#Index(br, j_3), Seq#Index(br, k_3) }
      0 <= j_3 && (j_3 < Seq#Length(br) && (0 <= k_3 && (k_3 < Seq#Length(br) && j_3 != k_3))) ==> Seq#Index(br, j_3) != Seq#Index(br, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { br[i] } 0 <= i && i < len ==> acc(br[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_10 && i_10 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (testDepParLoopE1.vpr@66.13--66.92) [138858]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (testDepParLoopE1.vpr@66.13--66.92) [138859]"}
            i_10 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@66.13--66.92) [138860]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < len_3)) && (0 <= i_3_3 && i_3_3 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_3_2) != Seq#Index(br, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(br, i_3_2) } { Seq#Index(br, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && NoPerm < 1 / 2 ==> qpRange10(Seq#Index(br, i_3_2)) && invRecv10(Seq#Index(br, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < 1 / 2) && qpRange10(o_9) ==> Seq#Index(br, invRecv10(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@66.13--66.92) [138861]"}
      (forall i_3_2: int ::
      { Seq#Index(br, i_3_2) } { Seq#Index(br, i_3_2) }
      0 <= i_3_2 && i_3_2 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(br, i_3_2) } { Seq#Index(br, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(br, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < 1 / 2) && qpRange10(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv10(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < 1 / 2) && qpRange10(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (0 < len_3) {
      assume Seq#Length(cr) == len_3;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
      if (*) {
        if (0 <= j_22 && (j_22 < Seq#Length(cr) && (0 <= k_31 && (k_31 < Seq#Length(cr) && j_22 != k_31)))) {
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might be negative. (testDepParLoopE1.vpr@68.12--68.106) [138862]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might exceed sequence length. (testDepParLoopE1.vpr@68.12--68.106) [138863]"}
            j_22 < Seq#Length(cr);
          assert {:msg "  Contract might not be well-formed. Index cr[k] into cr might be negative. (testDepParLoopE1.vpr@68.12--68.106) [138864]"}
            k_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[k] into cr might exceed sequence length. (testDepParLoopE1.vpr@68.12--68.106) [138865]"}
            k_31 < Seq#Length(cr);
        }
        assume false;
      }
    assume (forall j_5: int, k_5: int ::
      { Seq#Index(cr, j_5), Seq#Index(cr, k_5) }
      0 <= j_5 && (j_5 < Seq#Length(cr) && (0 <= k_5 && (k_5 < Seq#Length(cr) && j_5 != k_5))) ==> Seq#Index(cr, j_5) != Seq#Index(cr, k_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { cr[i] } 0 <= i && i < len ==> acc(cr[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_11 && i_11 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (testDepParLoopE1.vpr@69.13--69.92) [138866]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (testDepParLoopE1.vpr@69.13--69.92) [138867]"}
            i_11 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@69.13--69.92) [138868]"}
      (forall i_5_1: int, i_5_2: int ::
      
      (((i_5_1 != i_5_2 && (0 <= i_5_1 && i_5_1 < len_3)) && (0 <= i_5_2 && i_5_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_5_1) != Seq#Index(cr, i_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_5_1: int ::
        { Seq#Index(cr, i_5_1) } { Seq#Index(cr, i_5_1) }
        (0 <= i_5_1 && i_5_1 < len_3) && NoPerm < FullPerm ==> qpRange11(Seq#Index(cr, i_5_1)) && invRecv11(Seq#Index(cr, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && NoPerm < FullPerm) && qpRange11(o_9) ==> Seq#Index(cr, invRecv11(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5_1: int ::
        { Seq#Index(cr, i_5_1) } { Seq#Index(cr, i_5_1) }
        0 <= i_5_1 && i_5_1 < len_3 ==> Seq#Index(cr, i_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv11(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
    
    // -- Check definedness of (forall i: Int :: { ar[i] } 0 <= i && i < len ==> acc(ar[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_12 && i_12 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@71.12--71.91) [138869]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@71.12--71.91) [138870]"}
            i_12 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@71.12--71.91) [138871]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len_3)) && (0 <= i_7_2 && i_7_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar_1, i_7_1) != Seq#Index(ar_1, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(ar_1, i_7_1) } { Seq#Index(ar_1, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len_3) && NoPerm < 1 / 2 ==> qpRange12(Seq#Index(ar_1, i_7_1)) && invRecv12(Seq#Index(ar_1, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < 1 / 2) && qpRange12(o_9) ==> Seq#Index(ar_1, invRecv12(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@71.12--71.91) [138872]"}
      (forall i_7_1: int ::
      { Seq#Index(ar_1, i_7_1) } { Seq#Index(ar_1, i_7_1) }
      0 <= i_7_1 && i_7_1 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(ar_1, i_7_1) } { Seq#Index(ar_1, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(ar_1, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < 1 / 2) && qpRange12(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar_1, invRecv12(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < 1 / 2) && qpRange12(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 < len_3) {
      assume Seq#Length(br) == len_3;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { br[i] } 0 <= i && i < len ==> acc(br[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_13 && i_13 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (testDepParLoopE1.vpr@73.12--73.91) [138873]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (testDepParLoopE1.vpr@73.12--73.91) [138874]"}
            i_13 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@73.12--73.91) [138875]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len_3)) && (0 <= i_9_2 && i_9_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_9_1) != Seq#Index(br, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(br, i_9_1) } { Seq#Index(br, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len_3) && NoPerm < 1 / 2 ==> qpRange13(Seq#Index(br, i_9_1)) && invRecv13(Seq#Index(br, i_9_1)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < 1 / 2) && qpRange13(o_9) ==> Seq#Index(br, invRecv13(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@73.12--73.91) [138876]"}
      (forall i_9_1: int ::
      { Seq#Index(br, i_9_1) } { Seq#Index(br, i_9_1) }
      0 <= i_9_1 && i_9_1 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(br, i_9_1) } { Seq#Index(br, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(br, i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < 1 / 2) && qpRange13(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv13(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < 1 / 2) && qpRange13(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 < len_3) {
      assume Seq#Length(cr) == len_3;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { cr[i] } 0 <= i && i < len ==> acc(cr[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_23 && i_23 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (testDepParLoopE1.vpr@75.12--75.91) [138877]"}
            i_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (testDepParLoopE1.vpr@75.12--75.91) [138878]"}
            i_23 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@75.12--75.91) [138879]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len_3)) && (0 <= i_11_2 && i_11_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_11_1) != Seq#Index(cr, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#Index(cr, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len_3) && NoPerm < FullPerm ==> qpRange14(Seq#Index(cr, i_11_1)) && invRecv14(Seq#Index(cr, i_11_1)) == i_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        ((0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && NoPerm < FullPerm) && qpRange14(o_9) ==> Seq#Index(cr, invRecv14(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#Index(cr, i_11_1) }
        0 <= i_11_1 && i_11_1 < len_3 ==> Seq#Index(cr, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv14(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } (0 <= 0 ? 1 : 0) - 1 <= i && i < len - 1 ==> acc(ar[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_24 && i_24 < len_3 - 1) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@76.12--76.114) [138880]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@76.12--76.114) [138881]"}
            i_24 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@76.12--76.114) [138882]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < len_3 - 1)) && (0 <= i_13_2 && i_13_2 < len_3 - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar_1, i_13_1) != Seq#Index(ar_1, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(ar_1, i_13_1) } { Seq#Index(ar_1, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len_3 - 1) && NoPerm < 1 / 2 ==> qpRange15(Seq#Index(ar_1, i_13_1)) && invRecv15(Seq#Index(ar_1, i_13_1)) == i_13_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        ((0 <= invRecv15(o_9) && invRecv15(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange15(o_9) ==> Seq#Index(ar_1, invRecv15(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@76.12--76.114) [138883]"}
      (forall i_13_1: int ::
      { Seq#Index(ar_1, i_13_1) } { Seq#Index(ar_1, i_13_1) }
      0 <= i_13_1 && i_13_1 < len_3 - 1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(ar_1, i_13_1) } { Seq#Index(ar_1, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len_3 - 1) && 1 / 2 > NoPerm ==> Seq#Index(ar_1, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv15(o_9) && invRecv15(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange15(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar_1, invRecv15(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv15(o_9) && invRecv15(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange15(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 <= Seq#Length(ar_1) - 1 && Seq#Length(ar_1) - 1 < len_3) {
      
      // -- Check definedness of acc(ar[|ar| - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index ar[|ar| - 1] into ar might be negative. (testDepParLoopE1.vpr@77.11--77.94) [138884]"}
          Seq#Length(ar_1) - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index ar[|ar| - 1] into ar might exceed sequence length. (testDepParLoopE1.vpr@77.11--77.94) [138885]"}
          Seq#Length(ar_1) - 1 < Seq#Length(ar_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@77.11--77.94) [138886]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(ar_1, Seq#Length(ar_1) - 1) != null;
      PostMask := PostMask[Seq#Index(ar_1, Seq#Length(ar_1) - 1), Ref__Integer_value:=PostMask[Seq#Index(ar_1, Seq#Length(ar_1) - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testDepParLoopE1.vpr@79.3--79.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (0 < len_3) {
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Assertion |ar| == len might not hold. (testDepParLoopE1.vpr@70.11--70.38) [138887]"}
        Seq#Length(ar_1) == len_3;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@71.12--71.91) [138888]"}
        (forall i_14_1: int ::
        { Seq#Index(ar_1, i_14_1) } { Seq#Index(ar_1, i_14_1) }
        (0 <= i_14_1 && i_14_1 < len_3) && dummyFunction(Heap[Seq#Index(ar_1, i_14_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@71.12--71.91) [138889]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered16(i_14_1), neverTriggered16(i_14_2) }
        (((i_14_1 != i_14_2 && (0 <= i_14_1 && i_14_1 < len_3)) && (0 <= i_14_2 && i_14_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar_1, i_14_1) != Seq#Index(ar_1, i_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@71.12--71.91) [138890]"}
        (forall i_14_1: int ::
        { Seq#Index(ar_1, i_14_1) } { Seq#Index(ar_1, i_14_1) }
        0 <= i_14_1 && i_14_1 < len_3 ==> Mask[Seq#Index(ar_1, i_14_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_14_1: int ::
        { Seq#Index(ar_1, i_14_1) } { Seq#Index(ar_1, i_14_1) }
        (0 <= i_14_1 && i_14_1 < len_3) && NoPerm < 1 / 2 ==> qpRange16(Seq#Index(ar_1, i_14_1)) && invRecv16(Seq#Index(ar_1, i_14_1)) == i_14_1
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        (0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange16(o_9)) ==> Seq#Index(ar_1, invRecv16(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange16(o_9)) ==> Seq#Index(ar_1, invRecv16(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange16(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (0 < len_3) {
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Assertion |br| == len might not hold. (testDepParLoopE1.vpr@72.11--72.38) [138891]"}
        Seq#Length(br) == len_3;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@73.12--73.91) [138892]"}
        (forall i_15_1: int ::
        { Seq#Index(br, i_15_1) } { Seq#Index(br, i_15_1) }
        (0 <= i_15_1 && i_15_1 < len_3) && dummyFunction(Heap[Seq#Index(br, i_15_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver br[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@73.12--73.91) [138893]"}
        (forall i_15_1: int, i_15_2: int ::
        { neverTriggered17(i_15_1), neverTriggered17(i_15_2) }
        (((i_15_1 != i_15_2 && (0 <= i_15_1 && i_15_1 < len_3)) && (0 <= i_15_2 && i_15_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_15_1) != Seq#Index(br, i_15_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access br[i].Ref__Integer_value (testDepParLoopE1.vpr@73.12--73.91) [138894]"}
        (forall i_15_1: int ::
        { Seq#Index(br, i_15_1) } { Seq#Index(br, i_15_1) }
        0 <= i_15_1 && i_15_1 < len_3 ==> Mask[Seq#Index(br, i_15_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver br[i]
      assume (forall i_15_1: int ::
        { Seq#Index(br, i_15_1) } { Seq#Index(br, i_15_1) }
        (0 <= i_15_1 && i_15_1 < len_3) && NoPerm < 1 / 2 ==> qpRange17(Seq#Index(br, i_15_1)) && invRecv17(Seq#Index(br, i_15_1)) == i_15_1
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        (0 <= invRecv17(o_9) && invRecv17(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange17(o_9)) ==> Seq#Index(br, invRecv17(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv17(o_9) && invRecv17(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange17(o_9)) ==> Seq#Index(br, invRecv17(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv17(o_9) && invRecv17(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange17(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (0 < len_3) {
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Assertion |cr| == len might not hold. (testDepParLoopE1.vpr@74.11--74.38) [138895]"}
        Seq#Length(cr) == len_3;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver cr[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@75.12--75.91) [138896]"}
        (forall i_16_1: int, i_16_2: int ::
        { neverTriggered18(i_16_1), neverTriggered18(i_16_2) }
        (((i_16_1 != i_16_2 && (0 <= i_16_1 && i_16_1 < len_3)) && (0 <= i_16_2 && i_16_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_16_1) != Seq#Index(cr, i_16_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access cr[i].Ref__Integer_value (testDepParLoopE1.vpr@75.12--75.91) [138897]"}
        (forall i_16_1: int ::
        { Seq#Index(cr, i_16_1) } { Seq#Index(cr, i_16_1) }
        0 <= i_16_1 && i_16_1 < len_3 ==> Mask[Seq#Index(cr, i_16_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver cr[i]
      assume (forall i_16_1: int ::
        { Seq#Index(cr, i_16_1) } { Seq#Index(cr, i_16_1) }
        (0 <= i_16_1 && i_16_1 < len_3) && NoPerm < FullPerm ==> qpRange18(Seq#Index(cr, i_16_1)) && invRecv18(Seq#Index(cr, i_16_1)) == i_16_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        (0 <= invRecv18(o_9) && invRecv18(o_9) < len_3) && (NoPerm < FullPerm && qpRange18(o_9)) ==> Seq#Index(cr, invRecv18(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv18(o_9) && invRecv18(o_9) < len_3) && (NoPerm < FullPerm && qpRange18(o_9)) ==> Seq#Index(cr, invRecv18(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv18(o_9) && invRecv18(o_9) < len_3) && (NoPerm < FullPerm && qpRange18(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@76.12--76.114) [138898]"}
        (forall i_17_1: int ::
        { Seq#Index(ar_1, i_17_1) } { Seq#Index(ar_1, i_17_1) }
        (0 <= i_17_1 && i_17_1 < len_3 - 1) && dummyFunction(Heap[Seq#Index(ar_1, i_17_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@76.12--76.114) [138899]"}
        (forall i_17_1: int, i_17_2: int ::
        { neverTriggered19(i_17_1), neverTriggered19(i_17_2) }
        (((i_17_1 != i_17_2 && (0 <= i_17_1 && i_17_1 < len_3 - 1)) && (0 <= i_17_2 && i_17_2 < len_3 - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar_1, i_17_1) != Seq#Index(ar_1, i_17_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@76.12--76.114) [138900]"}
        (forall i_17_1: int ::
        { Seq#Index(ar_1, i_17_1) } { Seq#Index(ar_1, i_17_1) }
        0 <= i_17_1 && i_17_1 < len_3 - 1 ==> Mask[Seq#Index(ar_1, i_17_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_17_1: int ::
        { Seq#Index(ar_1, i_17_1) } { Seq#Index(ar_1, i_17_1) }
        (0 <= i_17_1 && i_17_1 < len_3 - 1) && NoPerm < 1 / 2 ==> qpRange19(Seq#Index(ar_1, i_17_1)) && invRecv19(Seq#Index(ar_1, i_17_1)) == i_17_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        (0 <= invRecv19(o_9) && invRecv19(o_9) < len_3 - 1) && (NoPerm < 1 / 2 && qpRange19(o_9)) ==> Seq#Index(ar_1, invRecv19(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv19(o_9) && invRecv19(o_9) < len_3 - 1) && (NoPerm < 1 / 2 && qpRange19(o_9)) ==> Seq#Index(ar_1, invRecv19(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv19(o_9) && invRecv19(o_9) < len_3 - 1) && (NoPerm < 1 / 2 && qpRange19(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (0 <= Seq#Length(ar_1) - 1 && Seq#Length(ar_1) - 1 < len_3) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@77.11--77.94) [138901]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access ar[|ar| - 1].Ref__Integer_value (testDepParLoopE1.vpr@77.11--77.94) [138902]"}
          perm <= Mask[Seq#Index(ar_1, Seq#Length(ar_1) - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(ar_1, Seq#Length(ar_1) - 1), Ref__Integer_value:=Mask[Seq#Index(ar_1, Seq#Length(ar_1) - 1), Ref__Integer_value] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__send_body_146
// ==================================================

procedure Ref__send_body_146(diz: Ref, current_thread_id: int, ar_1: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
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
    assume i < Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(ar[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@86.12--86.48) [138903]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@86.12--86.48) [138904]"}
        i < Seq#Length(ar_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@86.12--86.48) [138905]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar_1, i) != null;
    Mask := Mask[Seq#Index(ar_1, i), Ref__Integer_value:=Mask[Seq#Index(ar_1, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testDepParLoopE1.vpr@88.3--88.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__recv_body_148
// ==================================================

procedure Ref__recv_body_148(diz: Ref, current_thread_id: int, ar_1: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
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
    assume 0 < i;
    assume i <= Seq#Length(ar_1);
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
    
    // -- Check definedness of acc(ar[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might be negative. (testDepParLoopE1.vpr@95.11--95.51) [138906]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might exceed sequence length. (testDepParLoopE1.vpr@95.11--95.51) [138907]"}
        i - 1 < Seq#Length(ar_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@95.11--95.51) [138908]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar_1, i - 1) != null;
    PostMask := PostMask[Seq#Index(ar_1, i - 1), Ref__Integer_value:=PostMask[Seq#Index(ar_1, i - 1), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testDepParLoopE1.vpr@97.3--97.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__recv_body_148 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@95.11--95.51) [138909]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__recv_body_148 might not hold. There might be insufficient permission to access ar[i - 1].Ref__Integer_value (testDepParLoopE1.vpr@95.11--95.51) [138910]"}
        perm <= Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value:=Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_54
// ==================================================

procedure Ref__loop_body_54(diz: Ref, current_thread_id: int, len_3: int, ar_1: (Seq Ref), br: (Seq Ref), i: int, cr: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_4: Ref;
  var __flatten_6: Ref;
  var __flatten_9: Ref;
  var __flatten_11: Ref;
  var __flatten_5: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var __flatten_10: int;
  
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
    assume Seq#Length(ar_1) == len_3 + 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(ar[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@105.12--105.48) [138911]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@105.12--105.48) [138912]"}
        i < Seq#Length(ar_1);
    perm := FullPerm;
    assume Seq#Index(ar_1, i) != null;
    Mask := Mask[Seq#Index(ar_1, i), Ref__Integer_value:=Mask[Seq#Index(ar_1, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(br) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(br[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (testDepParLoopE1.vpr@107.12--107.48) [138913]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (testDepParLoopE1.vpr@107.12--107.48) [138914]"}
        i < Seq#Length(br);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@107.12--107.48) [138915]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(br, i) != null;
    Mask := Mask[Seq#Index(br, i), Ref__Integer_value:=Mask[Seq#Index(br, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(cr) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(cr[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (testDepParLoopE1.vpr@109.12--109.48) [138916]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (testDepParLoopE1.vpr@109.12--109.48) [138917]"}
        i < Seq#Length(cr);
    perm := FullPerm;
    assume Seq#Index(cr, i) != null;
    Mask := Mask[Seq#Index(cr, i), Ref__Integer_value:=Mask[Seq#Index(cr, i), Ref__Integer_value] + perm];
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
    assume Seq#Length(ar_1) == len_3 + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(ar[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@112.11--112.47) [138918]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@112.11--112.47) [138919]"}
        i < Seq#Length(ar_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@112.11--112.47) [138920]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar_1, i) != null;
    PostMask := PostMask[Seq#Index(ar_1, i), Ref__Integer_value:=PostMask[Seq#Index(ar_1, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(br) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(br[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (testDepParLoopE1.vpr@114.11--114.47) [138921]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (testDepParLoopE1.vpr@114.11--114.47) [138922]"}
        i < Seq#Length(br);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@114.11--114.47) [138923]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(br, i) != null;
    PostMask := PostMask[Seq#Index(br, i), Ref__Integer_value:=PostMask[Seq#Index(br, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(cr) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(cr[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (testDepParLoopE1.vpr@116.11--116.47) [138924]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (testDepParLoopE1.vpr@116.11--116.47) [138925]"}
        i < Seq#Length(cr);
    perm := FullPerm;
    assume Seq#Index(cr, i) != null;
    PostMask := PostMask[Seq#Index(cr, i), Ref__Integer_value:=PostMask[Seq#Index(cr, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i > 0) {
      
      // -- Check definedness of acc(ar[i - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might be negative. (testDepParLoopE1.vpr@117.11--117.63) [138926]"}
          i - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might exceed sequence length. (testDepParLoopE1.vpr@117.11--117.63) [138927]"}
          i - 1 < Seq#Length(ar_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@117.11--117.63) [138928]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(ar_1, i - 1) != null;
      PostMask := PostMask[Seq#Index(ar_1, i - 1), Ref__Integer_value:=PostMask[Seq#Index(ar_1, i - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (i == Seq#Length(ar_1) - 1) {
      
      // -- Check definedness of acc(ar[i].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@118.11--118.67) [138929]"}
          i >= 0;
        assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@118.11--118.67) [138930]"}
          i < Seq#Length(ar_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@118.11--118.67) [138931]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(ar_1, i) != null;
      PostMask := PostMask[Seq#Index(ar_1, i), Ref__Integer_value:=PostMask[Seq#Index(ar_1, i), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_6, $allocated];
    assume Heap[__flatten_9, $allocated];
    assume Heap[__flatten_11, $allocated];
  
  // -- Translating statement: __flatten_4 := ar[i] -- testDepParLoopE1.vpr@126.3--126.23
    
    // -- Check definedness of ar[i]
      assert {:msg "  Assignment might fail. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@126.3--126.23) [138932]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@126.3--126.23) [138933]"}
        i < Seq#Length(ar_1);
    __flatten_4 := Seq#Index(ar_1, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := br[i] -- testDepParLoopE1.vpr@127.3--127.23
    
    // -- Check definedness of br[i]
      assert {:msg "  Assignment might fail. Index br[i] into br might be negative. (testDepParLoopE1.vpr@127.3--127.23) [138934]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index br[i] into br might exceed sequence length. (testDepParLoopE1.vpr@127.3--127.23) [138935]"}
        i < Seq#Length(br);
    __flatten_6 := Seq#Index(br, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := __flatten_6.Ref__Integer_value + 1 -- testDepParLoopE1.vpr@128.3--128.52
    
    // -- Check definedness of __flatten_6.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (testDepParLoopE1.vpr@128.3--128.52) [138936]"}
        HasDirectPerm(Mask, __flatten_6, Ref__Integer_value);
    __flatten_5 := Heap[__flatten_6, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4.Ref__Integer_value := __flatten_5 -- testDepParLoopE1.vpr@129.3--129.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (testDepParLoopE1.vpr@129.3--129.48) [138937]"}
      FullPerm == Mask[__flatten_4, Ref__Integer_value];
    Heap := Heap[__flatten_4, Ref__Integer_value:=__flatten_5];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i < len - 1) -- testDepParLoopE1.vpr@130.3--132.4
    if (i < len_3 - 1) {
      
      // -- Translating statement: Ref__send_body_146(diz, current_thread_id, ar, i) -- testDepParLoopE1.vpr@131.5--131.54
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Assertion diz != null might not hold. (testDepParLoopE1.vpr@131.5--131.54) [138938]"}
            diz != null;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Assertion current_thread_id >= 0 might not hold. (testDepParLoopE1.vpr@131.5--131.54) [138939]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Assertion 0 <= i might not hold. (testDepParLoopE1.vpr@131.5--131.54) [138940]"}
            0 <= i;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Assertion i < |ar| might not hold. (testDepParLoopE1.vpr@131.5--131.54) [138941]"}
            i < Seq#Length(ar_1);
          perm := 1 / 2;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@131.5--131.54) [138942]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__send_body_146 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@131.5--131.54) [138943]"}
              perm <= Mask[Seq#Index(ar_1, i), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(ar_1, i), Ref__Integer_value:=Mask[Seq#Index(ar_1, i), Ref__Integer_value] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i > 0) -- testDepParLoopE1.vpr@133.3--141.4
    if (i > 0) {
      
      // -- Translating statement: Ref__recv_body_148(diz, current_thread_id, ar, i) -- testDepParLoopE1.vpr@134.5--134.54
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__recv_body_148 might not hold. Assertion diz != null might not hold. (testDepParLoopE1.vpr@134.5--134.54) [138944]"}
            diz != null;
          assert {:msg "  The precondition of method Ref__recv_body_148 might not hold. Assertion current_thread_id >= 0 might not hold. (testDepParLoopE1.vpr@134.5--134.54) [138945]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Ref__recv_body_148 might not hold. Assertion 0 < i might not hold. (testDepParLoopE1.vpr@134.5--134.54) [138946]"}
            0 < i;
          assert {:msg "  The precondition of method Ref__recv_body_148 might not hold. Assertion i <= |ar| might not hold. (testDepParLoopE1.vpr@134.5--134.54) [138947]"}
            i <= Seq#Length(ar_1);
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@134.5--134.54) [138948]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Seq#Index(ar_1, i - 1) != null;
          Mask := Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value:=Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9 := cr[i] -- testDepParLoopE1.vpr@135.5--135.25
        
        // -- Check definedness of cr[i]
          assert {:msg "  Assignment might fail. Index cr[i] into cr might be negative. (testDepParLoopE1.vpr@135.5--135.25) [138949]"}
            i >= 0;
          assert {:msg "  Assignment might fail. Index cr[i] into cr might exceed sequence length. (testDepParLoopE1.vpr@135.5--135.25) [138950]"}
            i < Seq#Length(cr);
        __flatten_9 := Seq#Index(cr, i);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_11 := ar[i + 1] -- testDepParLoopE1.vpr@136.5--136.30
        
        // -- Check definedness of ar[i + 1]
          assert {:msg "  Assignment might fail. Index ar[i + 1] into ar might be negative. (testDepParLoopE1.vpr@136.5--136.30) [138951]"}
            i + 1 >= 0;
          assert {:msg "  Assignment might fail. Index ar[i + 1] into ar might exceed sequence length. (testDepParLoopE1.vpr@136.5--136.30) [138952]"}
            i + 1 < Seq#Length(ar_1);
        __flatten_11 := Seq#Index(ar_1, i + 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_10 := __flatten_11.Ref__Integer_value + 2 -- testDepParLoopE1.vpr@139.5--139.56
        
        // -- Check definedness of __flatten_11.Ref__Integer_value + 2
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_11.Ref__Integer_value (testDepParLoopE1.vpr@139.5--139.56) [138953]"}
            HasDirectPerm(Mask, __flatten_11, Ref__Integer_value);
        __flatten_10 := Heap[__flatten_11, Ref__Integer_value] + 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9.Ref__Integer_value := __flatten_10 -- testDepParLoopE1.vpr@140.5--140.51
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_9.Ref__Integer_value (testDepParLoopE1.vpr@140.5--140.51) [138954]"}
          FullPerm == Mask[__flatten_9, Ref__Integer_value];
        Heap := Heap[__flatten_9, Ref__Integer_value:=__flatten_10];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion 0 <= i might not hold. (testDepParLoopE1.vpr@110.11--110.32) [138955]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion i < len might not hold. (testDepParLoopE1.vpr@110.11--110.32) [138956]"}
      i < len_3;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion |ar| == len + 1 might not hold. (testDepParLoopE1.vpr@111.11--111.26) [138957]"}
      Seq#Length(ar_1) == len_3 + 1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@112.11--112.47) [138958]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@112.11--112.47) [138959]"}
        perm <= Mask[Seq#Index(ar_1, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(ar_1, i), Ref__Integer_value:=Mask[Seq#Index(ar_1, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion |br| == len might not hold. (testDepParLoopE1.vpr@113.11--113.22) [138960]"}
      Seq#Length(br) == len_3;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@114.11--114.47) [138961]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access br[i].Ref__Integer_value (testDepParLoopE1.vpr@114.11--114.47) [138962]"}
        perm <= Mask[Seq#Index(br, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(br, i), Ref__Integer_value:=Mask[Seq#Index(br, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion |cr| == len might not hold. (testDepParLoopE1.vpr@115.11--115.22) [138963]"}
      Seq#Length(cr) == len_3;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access cr[i].Ref__Integer_value (testDepParLoopE1.vpr@116.11--116.47) [138964]"}
        perm <= Mask[Seq#Index(cr, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(cr, i), Ref__Integer_value:=Mask[Seq#Index(cr, i), Ref__Integer_value] - perm];
    if (i > 0) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@117.11--117.63) [138965]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access ar[i - 1].Ref__Integer_value (testDepParLoopE1.vpr@117.11--117.63) [138966]"}
          perm <= Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value:=Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value] - perm];
    }
    if (i == Seq#Length(ar_1) - 1) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@118.11--118.67) [138967]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@118.11--118.67) [138968]"}
          perm <= Mask[Seq#Index(ar_1, i), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(ar_1, i), Ref__Integer_value:=Mask[Seq#Index(ar_1, i), Ref__Integer_value] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__guard_check_S1_S2
// ==================================================

procedure Ref__guard_check_S1_S2(diz: Ref, current_thread_id: int, len_3: int, ar_1: (Seq Ref), br: (Seq Ref), i: int, cr: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
    assume i > 0;
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
    assume 1 <= i;
    assume state(PostHeap, PostMask);
    assume i - 1 < len_3 - 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__guard_check_S1_S2 might not hold. Assertion 1 <= i might not hold. (testDepParLoopE1.vpr@149.11--149.17) [138969]"}
      1 <= i;
    assert {:msg "  Postcondition of Ref__guard_check_S1_S2 might not hold. Assertion i - 1 < len - 1 might not hold. (testDepParLoopE1.vpr@150.11--150.26) [138970]"}
      i - 1 < len_3 - 1;
}

// ==================================================
// Translation of method Ref__resource_check_S1_S2
// ==================================================

procedure Ref__resource_check_S1_S2(diz: Ref, current_thread_id: int, len_3: int, ar_1: (Seq Ref), br: (Seq Ref), i: int, cr: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
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
    assume i - 1 < len_3 - 1;
    assume state(Heap, Mask);
    assume i > 0;
    assume state(Heap, Mask);
    assume len_3 <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(ar[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might be negative. (testDepParLoopE1.vpr@161.12--161.52) [138971]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might exceed sequence length. (testDepParLoopE1.vpr@161.12--161.52) [138972]"}
        i - 1 < Seq#Length(ar_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@161.12--161.52) [138973]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar_1, i - 1) != null;
    Mask := Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value:=Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value] + perm];
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
    assume i - 1 < len_3 - 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(ar[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might be negative. (testDepParLoopE1.vpr@163.11--163.51) [138974]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might exceed sequence length. (testDepParLoopE1.vpr@163.11--163.51) [138975]"}
        i - 1 < Seq#Length(ar_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@163.11--163.51) [138976]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar_1, i - 1) != null;
    PostMask := PostMask[Seq#Index(ar_1, i - 1), Ref__Integer_value:=PostMask[Seq#Index(ar_1, i - 1), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. Assertion i - 1 < len - 1 might not hold. (testDepParLoopE1.vpr@162.11--162.26) [138977]"}
      i - 1 < len_3 - 1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@163.11--163.51) [138978]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. There might be insufficient permission to access ar[i - 1].Ref__Integer_value (testDepParLoopE1.vpr@163.11--163.51) [138979]"}
        perm <= Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value:=Mask[Seq#Index(ar_1, i - 1), Ref__Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__zero_array
// ==================================================

procedure Ref__zero_array(diz: Ref, current_thread_id: int, ar_1: (Seq Ref), br: (Seq Ref), cr: (Seq Ref), len_3: int) returns ()
  modifies Heap, Mask;
{
  var j_25: int;
  var k_26: int;
  var i_27: int;
  var QPMask: MaskType;
  var j_11: int;
  var k_27: int;
  var i_42: int;
  var j_35: int;
  var k_28: int;
  var i_53: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_64: int;
  var i_55: int;
  var i_65: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var j_6_2: int;
  var k_6_2: int;
  var j_8_2: int;
  var k_8: int;
  var j_10_2: int;
  var k_10: int;
  var ExhaleHeap: HeapType;
  var perm: Perm;
  
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
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_25 && (j_25 < Seq#Length(ar_1) && (0 <= k_26 && (k_26 < Seq#Length(ar_1) && j_25 != k_26)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (testDepParLoopE1.vpr@171.12--171.106) [138980]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (testDepParLoopE1.vpr@171.12--171.106) [138981]"}
            j_25 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (testDepParLoopE1.vpr@171.12--171.106) [138982]"}
            k_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (testDepParLoopE1.vpr@171.12--171.106) [138983]"}
            k_26 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall j_1: int, k_1: int ::
      { Seq#Index(ar_1, j_1), Seq#Index(ar_1, k_1) }
      0 <= j_1 && (j_1 < Seq#Length(ar_1) && (0 <= k_1 && (k_1 < Seq#Length(ar_1) && j_1 != k_1))) ==> Seq#Index(ar_1, j_1) != Seq#Index(ar_1, k_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } 0 <= i && i < len ==> acc(ar[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_27 && i_27 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@172.13--172.92) [138984]"}
            i_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@172.13--172.92) [138985]"}
            i_27 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@172.13--172.92) [138986]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len_3)) && (0 <= i_1_1 && i_1_1 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_1) != Seq#Index(ar_1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(ar_1, i_1) } { Seq#Index(ar_1, i_1) }
        (0 <= i_1 && i_1 < len_3) && NoPerm < FullPerm ==> qpRange20(Seq#Index(ar_1, i_1)) && invRecv20(Seq#Index(ar_1, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        ((0 <= invRecv20(o_9) && invRecv20(o_9) < len_3) && NoPerm < FullPerm) && qpRange20(o_9) ==> Seq#Index(ar_1, invRecv20(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(ar_1, i_1) } { Seq#Index(ar_1, i_1) }
        0 <= i_1 && i_1 < len_3 ==> Seq#Index(ar_1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv20(o_9) && invRecv20(o_9) < len_3) && NoPerm < FullPerm) && qpRange20(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(ar_1, invRecv20(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv20(o_9) && invRecv20(o_9) < len_3) && NoPerm < FullPerm) && qpRange20(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(br) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
      if (*) {
        if (0 <= j_11 && (j_11 < Seq#Length(br) && (0 <= k_27 && (k_27 < Seq#Length(br) && j_11 != k_27)))) {
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might be negative. (testDepParLoopE1.vpr@174.12--174.106) [138987]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might exceed sequence length. (testDepParLoopE1.vpr@174.12--174.106) [138988]"}
            j_11 < Seq#Length(br);
          assert {:msg "  Contract might not be well-formed. Index br[k] into br might be negative. (testDepParLoopE1.vpr@174.12--174.106) [138989]"}
            k_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[k] into br might exceed sequence length. (testDepParLoopE1.vpr@174.12--174.106) [138990]"}
            k_27 < Seq#Length(br);
        }
        assume false;
      }
    assume (forall j_3: int, k_3: int ::
      { Seq#Index(br, j_3), Seq#Index(br, k_3) }
      0 <= j_3 && (j_3 < Seq#Length(br) && (0 <= k_3 && (k_3 < Seq#Length(br) && j_3 != k_3))) ==> Seq#Index(br, j_3) != Seq#Index(br, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { br[i] } 0 <= i && i < len ==> acc(br[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_42 && i_42 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (testDepParLoopE1.vpr@175.13--175.92) [138991]"}
            i_42 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (testDepParLoopE1.vpr@175.13--175.92) [138992]"}
            i_42 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@175.13--175.92) [138993]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < len_3)) && (0 <= i_3_3 && i_3_3 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_3_2) != Seq#Index(br, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(br, i_3_2) } { Seq#Index(br, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && NoPerm < 1 / 2 ==> qpRange21(Seq#Index(br, i_3_2)) && invRecv21(Seq#Index(br, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        ((0 <= invRecv21(o_9) && invRecv21(o_9) < len_3) && NoPerm < 1 / 2) && qpRange21(o_9) ==> Seq#Index(br, invRecv21(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@175.13--175.92) [138994]"}
      (forall i_3_2: int ::
      { Seq#Index(br, i_3_2) } { Seq#Index(br, i_3_2) }
      0 <= i_3_2 && i_3_2 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(br, i_3_2) } { Seq#Index(br, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(br, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv21(o_9) && invRecv21(o_9) < len_3) && NoPerm < 1 / 2) && qpRange21(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv21(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv21(o_9) && invRecv21(o_9) < len_3) && NoPerm < 1 / 2) && qpRange21(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(cr) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
      if (*) {
        if (0 <= j_35 && (j_35 < Seq#Length(cr) && (0 <= k_28 && (k_28 < Seq#Length(cr) && j_35 != k_28)))) {
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might be negative. (testDepParLoopE1.vpr@177.12--177.106) [138995]"}
            j_35 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might exceed sequence length. (testDepParLoopE1.vpr@177.12--177.106) [138996]"}
            j_35 < Seq#Length(cr);
          assert {:msg "  Contract might not be well-formed. Index cr[k] into cr might be negative. (testDepParLoopE1.vpr@177.12--177.106) [138997]"}
            k_28 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[k] into cr might exceed sequence length. (testDepParLoopE1.vpr@177.12--177.106) [138998]"}
            k_28 < Seq#Length(cr);
        }
        assume false;
      }
    assume (forall j_5: int, k_5: int ::
      { Seq#Index(cr, j_5), Seq#Index(cr, k_5) }
      0 <= j_5 && (j_5 < Seq#Length(cr) && (0 <= k_5 && (k_5 < Seq#Length(cr) && j_5 != k_5))) ==> Seq#Index(cr, j_5) != Seq#Index(cr, k_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { cr[i] } 0 <= i && i < len ==> acc(cr[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_53 && i_53 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (testDepParLoopE1.vpr@178.13--178.92) [138999]"}
            i_53 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (testDepParLoopE1.vpr@178.13--178.92) [139000]"}
            i_53 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@178.13--178.92) [139001]"}
      (forall i_5_1: int, i_5_2: int ::
      
      (((i_5_1 != i_5_2 && (0 <= i_5_1 && i_5_1 < len_3)) && (0 <= i_5_2 && i_5_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_5_1) != Seq#Index(cr, i_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_5_1: int ::
        { Seq#Index(cr, i_5_1) } { Seq#Index(cr, i_5_1) }
        (0 <= i_5_1 && i_5_1 < len_3) && NoPerm < FullPerm ==> qpRange22(Seq#Index(cr, i_5_1)) && invRecv22(Seq#Index(cr, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        ((0 <= invRecv22(o_9) && invRecv22(o_9) < len_3) && NoPerm < FullPerm) && qpRange22(o_9) ==> Seq#Index(cr, invRecv22(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5_1: int ::
        { Seq#Index(cr, i_5_1) } { Seq#Index(cr, i_5_1) }
        0 <= i_5_1 && i_5_1 < len_3 ==> Seq#Index(cr, i_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv22(o_9) && invRecv22(o_9) < len_3) && NoPerm < FullPerm) && qpRange22(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv22(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv22(o_9) && invRecv22(o_9) < len_3) && NoPerm < FullPerm) && qpRange22(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
        if (0 <= i_64 && i_64 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (testDepParLoopE1.vpr@180.12--180.91) [139002]"}
            i_64 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (testDepParLoopE1.vpr@180.12--180.91) [139003]"}
            i_64 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@180.12--180.91) [139004]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len_3)) && (0 <= i_7_2 && i_7_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_7_1) != Seq#Index(ar_1, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(ar_1, i_7_1) } { Seq#Index(ar_1, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len_3) && NoPerm < FullPerm ==> qpRange23(Seq#Index(ar_1, i_7_1)) && invRecv23(Seq#Index(ar_1, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        ((0 <= invRecv23(o_9) && invRecv23(o_9) < len_3) && NoPerm < FullPerm) && qpRange23(o_9) ==> Seq#Index(ar_1, invRecv23(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(ar_1, i_7_1) } { Seq#Index(ar_1, i_7_1) }
        0 <= i_7_1 && i_7_1 < len_3 ==> Seq#Index(ar_1, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv23(o_9) && invRecv23(o_9) < len_3) && NoPerm < FullPerm) && qpRange23(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(ar_1, invRecv23(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv23(o_9) && invRecv23(o_9) < len_3) && NoPerm < FullPerm) && qpRange23(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(br) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { br[i] } 0 <= i && i < len ==> acc(br[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_55 && i_55 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (testDepParLoopE1.vpr@182.12--182.91) [139005]"}
            i_55 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (testDepParLoopE1.vpr@182.12--182.91) [139006]"}
            i_55 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@182.12--182.91) [139007]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len_3)) && (0 <= i_9_2 && i_9_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_9_1) != Seq#Index(br, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(br, i_9_1) } { Seq#Index(br, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len_3) && NoPerm < 1 / 2 ==> qpRange24(Seq#Index(br, i_9_1)) && invRecv24(Seq#Index(br, i_9_1)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        ((0 <= invRecv24(o_9) && invRecv24(o_9) < len_3) && NoPerm < 1 / 2) && qpRange24(o_9) ==> Seq#Index(br, invRecv24(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@182.12--182.91) [139008]"}
      (forall i_9_1: int ::
      { Seq#Index(br, i_9_1) } { Seq#Index(br, i_9_1) }
      0 <= i_9_1 && i_9_1 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(br, i_9_1) } { Seq#Index(br, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(br, i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv24(o_9) && invRecv24(o_9) < len_3) && NoPerm < 1 / 2) && qpRange24(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv24(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv24(o_9) && invRecv24(o_9) < len_3) && NoPerm < 1 / 2) && qpRange24(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(cr) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { cr[i] } 0 <= i && i < len ==> acc(cr[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_65 && i_65 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (testDepParLoopE1.vpr@184.12--184.91) [139009]"}
            i_65 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (testDepParLoopE1.vpr@184.12--184.91) [139010]"}
            i_65 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@184.12--184.91) [139011]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len_3)) && (0 <= i_11_2 && i_11_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_11_1) != Seq#Index(cr, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#Index(cr, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len_3) && NoPerm < FullPerm ==> qpRange25(Seq#Index(cr, i_11_1)) && invRecv25(Seq#Index(cr, i_11_1)) == i_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        ((0 <= invRecv25(o_9) && invRecv25(o_9) < len_3) && NoPerm < FullPerm) && qpRange25(o_9) ==> Seq#Index(cr, invRecv25(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#Index(cr, i_11_1) }
        0 <= i_11_1 && i_11_1 < len_3 ==> Seq#Index(cr, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv25(o_9) && invRecv25(o_9) < len_3) && NoPerm < FullPerm) && qpRange25(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv25(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv25(o_9) && invRecv25(o_9) < len_3) && NoPerm < FullPerm) && qpRange25(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert |ar| == len -- testDepParLoopE1.vpr@186.3--186.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |ar| == len might not hold. (testDepParLoopE1.vpr@186.10--186.21) [139012]"}
      Seq#Length(ar_1) == len_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |br| == len -- testDepParLoopE1.vpr@187.3--187.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |br| == len might not hold. (testDepParLoopE1.vpr@187.10--187.21) [139013]"}
      Seq#Length(br) == len_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |cr| == len -- testDepParLoopE1.vpr@188.3--188.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |cr| == len might not hold. (testDepParLoopE1.vpr@188.10--188.21) [139014]"}
      Seq#Length(cr) == len_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__loop_main_54(diz, current_thread_id, len, ar, br, cr) -- testDepParLoopE1.vpr@189.3--189.61
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion diz != null might not hold. (testDepParLoopE1.vpr@189.3--189.61) [139015]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion current_thread_id >= 0 might not hold. (testDepParLoopE1.vpr@189.3--189.61) [139016]"}
        current_thread_id >= 0;
      if (0 < len_3) {
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion |ar| == len might not hold. (testDepParLoopE1.vpr@189.3--189.61) [139017]"}
          Seq#Length(ar_1) == len_3;
      }
      if (*) {
        if (0 <= j_6_2 && (j_6_2 < Seq#Length(ar_1) && (0 <= k_6_2 && (k_6_2 < Seq#Length(ar_1) && j_6_2 != k_6_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion ar[j] != ar[k] might not hold. (testDepParLoopE1.vpr@189.3--189.61) [139018]"}
            Seq#Index(ar_1, j_6_2) != Seq#Index(ar_1, k_6_2);
        }
        assume false;
      }
      assume (forall j_7_1_1: int, k_7_1_1: int ::
        { Seq#Index(ar_1, j_7_1_1), Seq#Index(ar_1, k_7_1_1) }
        0 <= j_7_1_1 && (j_7_1_1 < Seq#Length(ar_1) && (0 <= k_7_1_1 && (k_7_1_1 < Seq#Length(ar_1) && j_7_1_1 != k_7_1_1))) ==> Seq#Index(ar_1, j_7_1_1) != Seq#Index(ar_1, k_7_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver ar[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@189.3--189.61) [139019]"}
          (forall i_15_1: int, i_15_2: int ::
          { neverTriggered29(i_15_1), neverTriggered29(i_15_2) }
          (((i_15_1 != i_15_2 && (0 <= i_15_1 && i_15_1 < len_3)) && (0 <= i_15_2 && i_15_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_15_1) != Seq#Index(ar_1, i_15_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@189.3--189.61) [139020]"}
          (forall i_15_1: int ::
          { Seq#Index(ar_1, i_15_1) } { Seq#Index(ar_1, i_15_1) }
          0 <= i_15_1 && i_15_1 < len_3 ==> Mask[Seq#Index(ar_1, i_15_1), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver ar[i]
        assume (forall i_15_1: int ::
          { Seq#Index(ar_1, i_15_1) } { Seq#Index(ar_1, i_15_1) }
          (0 <= i_15_1 && i_15_1 < len_3) && NoPerm < FullPerm ==> qpRange29(Seq#Index(ar_1, i_15_1)) && invRecv29(Seq#Index(ar_1, i_15_1)) == i_15_1
        );
        assume (forall o_9: Ref ::
          { invRecv29(o_9) }
          (0 <= invRecv29(o_9) && invRecv29(o_9) < len_3) && (NoPerm < FullPerm && qpRange29(o_9)) ==> Seq#Index(ar_1, invRecv29(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv29(o_9) && invRecv29(o_9) < len_3) && (NoPerm < FullPerm && qpRange29(o_9)) ==> Seq#Index(ar_1, invRecv29(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv29(o_9) && invRecv29(o_9) < len_3) && (NoPerm < FullPerm && qpRange29(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (0 < len_3) {
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion |br| == len might not hold. (testDepParLoopE1.vpr@189.3--189.61) [139021]"}
          Seq#Length(br) == len_3;
      }
      if (*) {
        if (0 <= j_8_2 && (j_8_2 < Seq#Length(br) && (0 <= k_8 && (k_8 < Seq#Length(br) && j_8_2 != k_8)))) {
          assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion br[j] != br[k] might not hold. (testDepParLoopE1.vpr@189.3--189.61) [139022]"}
            Seq#Index(br, j_8_2) != Seq#Index(br, k_8);
        }
        assume false;
      }
      assume (forall j_9_1_1: int, k_9_1_1: int ::
        { Seq#Index(br, j_9_1_1), Seq#Index(br, k_9_1_1) }
        0 <= j_9_1_1 && (j_9_1_1 < Seq#Length(br) && (0 <= k_9_1_1 && (k_9_1_1 < Seq#Length(br) && j_9_1_1 != k_9_1_1))) ==> Seq#Index(br, j_9_1_1) != Seq#Index(br, k_9_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@189.3--189.61) [139023]"}
          (forall i_16_1: int ::
          { Seq#Index(br, i_16_1) } { Seq#Index(br, i_16_1) }
          (0 <= i_16_1 && i_16_1 < len_3) && dummyFunction(Heap[Seq#Index(br, i_16_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver br[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Quantified resource br[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@189.3--189.61) [139024]"}
          (forall i_16_1: int, i_16_2: int ::
          { neverTriggered30(i_16_1), neverTriggered30(i_16_2) }
          (((i_16_1 != i_16_2 && (0 <= i_16_1 && i_16_1 < len_3)) && (0 <= i_16_2 && i_16_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_16_1) != Seq#Index(br, i_16_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. There might be insufficient permission to access br[i].Ref__Integer_value (testDepParLoopE1.vpr@189.3--189.61) [139025]"}
          (forall i_16_1: int ::
          { Seq#Index(br, i_16_1) } { Seq#Index(br, i_16_1) }
          0 <= i_16_1 && i_16_1 < len_3 ==> Mask[Seq#Index(br, i_16_1), Ref__Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver br[i]
        assume (forall i_16_1: int ::
          { Seq#Index(br, i_16_1) } { Seq#Index(br, i_16_1) }
          (0 <= i_16_1 && i_16_1 < len_3) && NoPerm < 1 / 2 ==> qpRange30(Seq#Index(br, i_16_1)) && invRecv30(Seq#Index(br, i_16_1)) == i_16_1
        );
        assume (forall o_9: Ref ::
          { invRecv30(o_9) }
          (0 <= invRecv30(o_9) && invRecv30(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange30(o_9)) ==> Seq#Index(br, invRecv30(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv30(o_9) && invRecv30(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange30(o_9)) ==> Seq#Index(br, invRecv30(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv30(o_9) && invRecv30(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange30(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (0 < len_3) {
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion |cr| == len might not hold. (testDepParLoopE1.vpr@189.3--189.61) [139026]"}
          Seq#Length(cr) == len_3;
      }
      if (*) {
        if (0 <= j_10_2 && (j_10_2 < Seq#Length(cr) && (0 <= k_10 && (k_10 < Seq#Length(cr) && j_10_2 != k_10)))) {
          assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion cr[j] != cr[k] might not hold. (testDepParLoopE1.vpr@189.3--189.61) [139027]"}
            Seq#Index(cr, j_10_2) != Seq#Index(cr, k_10);
        }
        assume false;
      }
      assume (forall j_11_1_1: int, k_11_1_1: int ::
        { Seq#Index(cr, j_11_1_1), Seq#Index(cr, k_11_1_1) }
        0 <= j_11_1_1 && (j_11_1_1 < Seq#Length(cr) && (0 <= k_11_1_1 && (k_11_1_1 < Seq#Length(cr) && j_11_1_1 != k_11_1_1))) ==> Seq#Index(cr, j_11_1_1) != Seq#Index(cr, k_11_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver cr[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Quantified resource cr[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@189.3--189.61) [139028]"}
          (forall i_17_1: int, i_17_2: int ::
          { neverTriggered31(i_17_1), neverTriggered31(i_17_2) }
          (((i_17_1 != i_17_2 && (0 <= i_17_1 && i_17_1 < len_3)) && (0 <= i_17_2 && i_17_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_17_1) != Seq#Index(cr, i_17_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. There might be insufficient permission to access cr[i].Ref__Integer_value (testDepParLoopE1.vpr@189.3--189.61) [139029]"}
          (forall i_17_1: int ::
          { Seq#Index(cr, i_17_1) } { Seq#Index(cr, i_17_1) }
          0 <= i_17_1 && i_17_1 < len_3 ==> Mask[Seq#Index(cr, i_17_1), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver cr[i]
        assume (forall i_17_1: int ::
          { Seq#Index(cr, i_17_1) } { Seq#Index(cr, i_17_1) }
          (0 <= i_17_1 && i_17_1 < len_3) && NoPerm < FullPerm ==> qpRange31(Seq#Index(cr, i_17_1)) && invRecv31(Seq#Index(cr, i_17_1)) == i_17_1
        );
        assume (forall o_9: Ref ::
          { invRecv31(o_9) }
          (0 <= invRecv31(o_9) && invRecv31(o_9) < len_3) && (NoPerm < FullPerm && qpRange31(o_9)) ==> Seq#Index(cr, invRecv31(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv31(o_9) && invRecv31(o_9) < len_3) && (NoPerm < FullPerm && qpRange31(o_9)) ==> Seq#Index(cr, invRecv31(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv31(o_9) && invRecv31(o_9) < len_3) && (NoPerm < FullPerm && qpRange31(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
      assert {:msg "  Method call might fail. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@189.3--189.61) [139030]"}
        (forall i_18_1: int, i_18_2: int ::
        
        (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < len_3)) && (0 <= i_18_2 && i_18_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar_1, i_18_1) != Seq#Index(ar_1, i_18_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_18_1: int ::
          { Seq#Index(ar_1, i_18_1) } { Seq#Index(ar_1, i_18_1) }
          (0 <= i_18_1 && i_18_1 < len_3) && NoPerm < 1 / 2 ==> qpRange32(Seq#Index(ar_1, i_18_1)) && invRecv32(Seq#Index(ar_1, i_18_1)) == i_18_1
        );
        assume (forall o_9: Ref ::
          { invRecv32(o_9) }
          ((0 <= invRecv32(o_9) && invRecv32(o_9) < len_3) && NoPerm < 1 / 2) && qpRange32(o_9) ==> Seq#Index(ar_1, invRecv32(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@189.3--189.61) [139031]"}
        (forall i_18_1: int ::
        { Seq#Index(ar_1, i_18_1) } { Seq#Index(ar_1, i_18_1) }
        0 <= i_18_1 && i_18_1 < len_3 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_18_1: int ::
          { Seq#Index(ar_1, i_18_1) } { Seq#Index(ar_1, i_18_1) }
          (0 <= i_18_1 && i_18_1 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(ar_1, i_18_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv32(o_9) && invRecv32(o_9) < len_3) && NoPerm < 1 / 2) && qpRange32(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar_1, invRecv32(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv32(o_9) && invRecv32(o_9) < len_3) && NoPerm < 1 / 2) && qpRange32(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 < len_3) {
        assume Seq#Length(br) == len_3;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource br[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@189.3--189.61) [139032]"}
        (forall i_19_1: int, i_19_2: int ::
        
        (((i_19_1 != i_19_2 && (0 <= i_19_1 && i_19_1 < len_3)) && (0 <= i_19_2 && i_19_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_19_1) != Seq#Index(br, i_19_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_19_1: int ::
          { Seq#Index(br, i_19_1) } { Seq#Index(br, i_19_1) }
          (0 <= i_19_1 && i_19_1 < len_3) && NoPerm < 1 / 2 ==> qpRange33(Seq#Index(br, i_19_1)) && invRecv33(Seq#Index(br, i_19_1)) == i_19_1
        );
        assume (forall o_9: Ref ::
          { invRecv33(o_9) }
          ((0 <= invRecv33(o_9) && invRecv33(o_9) < len_3) && NoPerm < 1 / 2) && qpRange33(o_9) ==> Seq#Index(br, invRecv33(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@189.3--189.61) [139033]"}
        (forall i_19_1: int ::
        { Seq#Index(br, i_19_1) } { Seq#Index(br, i_19_1) }
        0 <= i_19_1 && i_19_1 < len_3 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_19_1: int ::
          { Seq#Index(br, i_19_1) } { Seq#Index(br, i_19_1) }
          (0 <= i_19_1 && i_19_1 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(br, i_19_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv33(o_9) && invRecv33(o_9) < len_3) && NoPerm < 1 / 2) && qpRange33(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv33(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv33(o_9) && invRecv33(o_9) < len_3) && NoPerm < 1 / 2) && qpRange33(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 < len_3) {
        assume Seq#Length(cr) == len_3;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource cr[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@189.3--189.61) [139034]"}
        (forall i_20_2: int, i_20_3: int ::
        
        (((i_20_2 != i_20_3 && (0 <= i_20_2 && i_20_2 < len_3)) && (0 <= i_20_3 && i_20_3 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_20_2) != Seq#Index(cr, i_20_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_20_2: int ::
          { Seq#Index(cr, i_20_2) } { Seq#Index(cr, i_20_2) }
          (0 <= i_20_2 && i_20_2 < len_3) && NoPerm < FullPerm ==> qpRange34(Seq#Index(cr, i_20_2)) && invRecv34(Seq#Index(cr, i_20_2)) == i_20_2
        );
        assume (forall o_9: Ref ::
          { invRecv34(o_9) }
          ((0 <= invRecv34(o_9) && invRecv34(o_9) < len_3) && NoPerm < FullPerm) && qpRange34(o_9) ==> Seq#Index(cr, invRecv34(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_20_2: int ::
          { Seq#Index(cr, i_20_2) } { Seq#Index(cr, i_20_2) }
          0 <= i_20_2 && i_20_2 < len_3 ==> Seq#Index(cr, i_20_2) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv34(o_9) && invRecv34(o_9) < len_3) && NoPerm < FullPerm) && qpRange34(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv34(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv34(o_9) && invRecv34(o_9) < len_3) && NoPerm < FullPerm) && qpRange34(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@189.3--189.61) [139035]"}
        (forall i_21_1: int, i_21_2: int ::
        
        (((i_21_1 != i_21_2 && (0 <= i_21_1 && i_21_1 < len_3 - 1)) && (0 <= i_21_2 && i_21_2 < len_3 - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar_1, i_21_1) != Seq#Index(ar_1, i_21_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_21_1: int ::
          { Seq#Index(ar_1, i_21_1) } { Seq#Index(ar_1, i_21_1) }
          (0 <= i_21_1 && i_21_1 < len_3 - 1) && NoPerm < 1 / 2 ==> qpRange35(Seq#Index(ar_1, i_21_1)) && invRecv35(Seq#Index(ar_1, i_21_1)) == i_21_1
        );
        assume (forall o_9: Ref ::
          { invRecv35(o_9) }
          ((0 <= invRecv35(o_9) && invRecv35(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange35(o_9) ==> Seq#Index(ar_1, invRecv35(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@189.3--189.61) [139036]"}
        (forall i_21_1: int ::
        { Seq#Index(ar_1, i_21_1) } { Seq#Index(ar_1, i_21_1) }
        0 <= i_21_1 && i_21_1 < len_3 - 1 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_21_1: int ::
          { Seq#Index(ar_1, i_21_1) } { Seq#Index(ar_1, i_21_1) }
          (0 <= i_21_1 && i_21_1 < len_3 - 1) && 1 / 2 > NoPerm ==> Seq#Index(ar_1, i_21_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv35(o_9) && invRecv35(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange35(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar_1, invRecv35(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv35(o_9) && invRecv35(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange35(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 <= Seq#Length(ar_1) - 1 && Seq#Length(ar_1) - 1 < len_3) {
        perm := 1 / 2;
        assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@189.3--189.61) [139037]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(ar_1, Seq#Length(ar_1) - 1) != null;
        Mask := Mask[Seq#Index(ar_1, Seq#Length(ar_1) - 1), Ref__Integer_value:=Mask[Seq#Index(ar_1, Seq#Length(ar_1) - 1), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__zero_array might not hold. Assertion |ar| == len might not hold. (testDepParLoopE1.vpr@179.11--179.22) [139038]"}
      Seq#Length(ar_1) == len_3;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@180.12--180.91) [139039]"}
        (forall i_12_1: int, i_12_2: int ::
        { neverTriggered26(i_12_1), neverTriggered26(i_12_2) }
        (((i_12_1 != i_12_2 && (0 <= i_12_1 && i_12_1 < len_3)) && (0 <= i_12_2 && i_12_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar_1, i_12_1) != Seq#Index(ar_1, i_12_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__zero_array might not hold. There might be insufficient permission to access ar[i].Ref__Integer_value (testDepParLoopE1.vpr@180.12--180.91) [139040]"}
        (forall i_12_1: int ::
        { Seq#Index(ar_1, i_12_1) } { Seq#Index(ar_1, i_12_1) }
        0 <= i_12_1 && i_12_1 < len_3 ==> Mask[Seq#Index(ar_1, i_12_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_12_1: int ::
        { Seq#Index(ar_1, i_12_1) } { Seq#Index(ar_1, i_12_1) }
        (0 <= i_12_1 && i_12_1 < len_3) && NoPerm < FullPerm ==> qpRange26(Seq#Index(ar_1, i_12_1)) && invRecv26(Seq#Index(ar_1, i_12_1)) == i_12_1
      );
      assume (forall o_9: Ref ::
        { invRecv26(o_9) }
        (0 <= invRecv26(o_9) && invRecv26(o_9) < len_3) && (NoPerm < FullPerm && qpRange26(o_9)) ==> Seq#Index(ar_1, invRecv26(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv26(o_9) && invRecv26(o_9) < len_3) && (NoPerm < FullPerm && qpRange26(o_9)) ==> Seq#Index(ar_1, invRecv26(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv26(o_9) && invRecv26(o_9) < len_3) && (NoPerm < FullPerm && qpRange26(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__zero_array might not hold. Assertion |br| == len might not hold. (testDepParLoopE1.vpr@181.11--181.22) [139041]"}
      Seq#Length(br) == len_3;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__zero_array might not hold. Fraction 1 / 2 might be negative. (testDepParLoopE1.vpr@182.12--182.91) [139042]"}
        (forall i_13_1: int ::
        { Seq#Index(br, i_13_1) } { Seq#Index(br, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len_3) && dummyFunction(Heap[Seq#Index(br, i_13_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver br[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@182.12--182.91) [139043]"}
        (forall i_13_1: int, i_13_2: int ::
        { neverTriggered27(i_13_1), neverTriggered27(i_13_2) }
        (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < len_3)) && (0 <= i_13_2 && i_13_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_13_1) != Seq#Index(br, i_13_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__zero_array might not hold. There might be insufficient permission to access br[i].Ref__Integer_value (testDepParLoopE1.vpr@182.12--182.91) [139044]"}
        (forall i_13_1: int ::
        { Seq#Index(br, i_13_1) } { Seq#Index(br, i_13_1) }
        0 <= i_13_1 && i_13_1 < len_3 ==> Mask[Seq#Index(br, i_13_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver br[i]
      assume (forall i_13_1: int ::
        { Seq#Index(br, i_13_1) } { Seq#Index(br, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len_3) && NoPerm < 1 / 2 ==> qpRange27(Seq#Index(br, i_13_1)) && invRecv27(Seq#Index(br, i_13_1)) == i_13_1
      );
      assume (forall o_9: Ref ::
        { invRecv27(o_9) }
        (0 <= invRecv27(o_9) && invRecv27(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> Seq#Index(br, invRecv27(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv27(o_9) && invRecv27(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> Seq#Index(br, invRecv27(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv27(o_9) && invRecv27(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange27(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__zero_array might not hold. Assertion |cr| == len might not hold. (testDepParLoopE1.vpr@183.11--183.22) [139045]"}
      Seq#Length(cr) == len_3;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver cr[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Ref__Integer_value might not be injective. (testDepParLoopE1.vpr@184.12--184.91) [139046]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered28(i_14_1), neverTriggered28(i_14_2) }
        (((i_14_1 != i_14_2 && (0 <= i_14_1 && i_14_1 < len_3)) && (0 <= i_14_2 && i_14_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_14_1) != Seq#Index(cr, i_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__zero_array might not hold. There might be insufficient permission to access cr[i].Ref__Integer_value (testDepParLoopE1.vpr@184.12--184.91) [139047]"}
        (forall i_14_1: int ::
        { Seq#Index(cr, i_14_1) } { Seq#Index(cr, i_14_1) }
        0 <= i_14_1 && i_14_1 < len_3 ==> Mask[Seq#Index(cr, i_14_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver cr[i]
      assume (forall i_14_1: int ::
        { Seq#Index(cr, i_14_1) } { Seq#Index(cr, i_14_1) }
        (0 <= i_14_1 && i_14_1 < len_3) && NoPerm < FullPerm ==> qpRange28(Seq#Index(cr, i_14_1)) && invRecv28(Seq#Index(cr, i_14_1)) == i_14_1
      );
      assume (forall o_9: Ref ::
        { invRecv28(o_9) }
        (0 <= invRecv28(o_9) && invRecv28(o_9) < len_3) && (NoPerm < FullPerm && qpRange28(o_9)) ==> Seq#Index(cr, invRecv28(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv28(o_9) && invRecv28(o_9) < len_3) && (NoPerm < FullPerm && qpRange28(o_9)) ==> Seq#Index(cr, invRecv28(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv28(o_9) && invRecv28(o_9) < len_3) && (NoPerm < FullPerm && qpRange28(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
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
}