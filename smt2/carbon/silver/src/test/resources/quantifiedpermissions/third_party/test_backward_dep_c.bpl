// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:30:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_40: Ref, f_46: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_40, f_46] }
  Heap[o_40, $allocated] ==> Heap[Heap[o_40, f_46], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_45: Ref, f_49: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_45, f_49] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_45, f_49) ==> Heap[o_45, f_49] == ExhaleHeap[o_45, f_49]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20), ExhaleHeap[null, PredicateMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> Heap[null, PredicateMaskField(pm_f_20)] == ExhaleHeap[null, PredicateMaskField(pm_f_20)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_49: (Field A B) ::
    { ExhaleHeap[o2_20, f_49] }
    Heap[null, PredicateMaskField(pm_f_20)][o2_20, f_49] ==> Heap[o2_20, f_49] == ExhaleHeap[o2_20, f_49]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20), ExhaleHeap[null, WandMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> Heap[null, WandMaskField(pm_f_20)] == ExhaleHeap[null, WandMaskField(pm_f_20)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_49: (Field A B) ::
    { ExhaleHeap[o2_20, f_49] }
    Heap[null, WandMaskField(pm_f_20)][o2_20, f_49] ==> Heap[o2_20, f_49] == ExhaleHeap[o2_20, f_49]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_45: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_45, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_45, $allocated] ==> ExhaleHeap[o_45, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_40: Ref, f_50: (Field A B), v: B ::
  { Heap[o_40, f_50:=v] }
  succHeap(Heap, Heap[o_40, f_50:=v])
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
function  neverTriggered10(i_3: int): bool;
function  neverTriggered11(i_5: int): bool;
function  neverTriggered12(i_7_1: int): bool;
function  neverTriggered13(i_13_1: int): bool;
function  neverTriggered14(i_15: int): bool;
function  neverTriggered15(i_17: int): bool;
function  neverTriggered16(i_24_1: int): bool;
function  neverTriggered17(i_25: int): bool;
function  neverTriggered18(i_26: int): bool;
function  neverTriggered19(i_1: int): bool;
function  neverTriggered20(i_3: int): bool;
function  neverTriggered21(i_5: int): bool;
function  neverTriggered22(i_7_1: int): bool;
function  neverTriggered23(i_9_1: int): bool;
function  neverTriggered24(i_11_1: int): bool;
function  neverTriggered25(i_18_1: int): bool;
function  neverTriggered26(i_19: int): bool;
function  neverTriggered27(i_20_1: int): bool;
function  neverTriggered28(i_27: int): bool;
function  neverTriggered29(i_28: int): bool;
function  neverTriggered30(i_29_1: int): bool;
function  neverTriggered31(i_30_2: int): bool;
function  neverTriggered32(i_35_1: int): bool;
function  neverTriggered33(i_36_2: int): bool;
function  neverTriggered34(i_37: int): bool;
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
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar) ==> sum_list(Heap, i, hi, ar) == (if i < hi then Seq#Index(ar, i) + sum_list'(Heap, i + 1, hi, ar) else 0)
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_backward_dep_c.vpr@6.1--11.2) [19906]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_backward_dep_c.vpr@6.1--11.2) [19907]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (test_backward_dep_c.vpr@10.21--10.44) [19908]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (test_backward_dep_c.vpr@10.21--10.44) [19909]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (test_backward_dep_c.vpr@10.21--10.44) [19910]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar)) && (forall j_9: int, k: int ::
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_4_1: int;
  var k_9: int;
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
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_5 && (j_5 < hi && (0 <= k_1 && (k_1 < hi && j_5 != k_1)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_backward_dep_c.vpr@16.12--16.102) [19911]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_backward_dep_c.vpr@16.12--16.102) [19912]"}
            j_5 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_backward_dep_c.vpr@16.12--16.102) [19913]"}
            k_1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_backward_dep_c.vpr@16.12--16.102) [19914]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_backward_dep_c.vpr@17.13--17.95) [19915]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_backward_dep_c.vpr@17.13--17.95) [19916]"}
            k_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@17.13--17.95) [19917]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_backward_dep_c.vpr@13.1--20.2) [19918]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_backward_dep_c.vpr@13.1--20.2) [19919]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_backward_dep_c.vpr@13.1--20.2) [19920]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (test_backward_dep_c.vpr@19.40--19.68) [19921]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (test_backward_dep_c.vpr@19.40--19.68) [19922]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (test_backward_dep_c.vpr@19.40--19.68) [19923]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (test_backward_dep_c.vpr@19.40--19.68) [19924]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9 && (k_9 < hi && j_4_1 != k_9)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[j] != ar[k] might not hold. (test_backward_dep_c.vpr@19.40--19.68) [19925]"}
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
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_backward_dep_c.vpr@19.40--19.68) [19926]"}
            (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (test_backward_dep_c.vpr@19.40--19.68) [19927]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (lo <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@19.40--19.68) [19928]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && (lo <= k_11 && k_11 < hi)) && (lo <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_backward_dep_c.vpr@19.40--19.68) [19929]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall j_9: int, k: int ::
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_backward_dep_c.vpr@26.12--26.104) [19930]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_backward_dep_c.vpr@26.12--26.104) [19931]"}
            j_6 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_backward_dep_c.vpr@26.12--26.104) [19932]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_backward_dep_c.vpr@26.12--26.104) [19933]"}
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
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_backward_dep_c.vpr@27.13--27.136) [19934]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_backward_dep_c.vpr@27.13--27.136) [19935]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_backward_dep_c.vpr@27.13--27.136) [19936]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_backward_dep_c.vpr@27.13--27.136) [19937]"}
            k_7 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@27.13--27.136) [19938]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_backward_dep_c.vpr@22.1--30.2) [19939]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_backward_dep_c.vpr@22.1--30.2) [19940]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_backward_dep_c.vpr@22.1--30.2) [19941]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_backward_dep_c.vpr@22.1--30.2) [19942]"}
            i < Seq#Length(ar);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_backward_dep_c.vpr@22.1--30.2) [19943]"}
            HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19944]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19945]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19946]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19947]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19948]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19949]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19950]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19951]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax && (0 <= k_9 && (k_9 < vmax && j_4_1 != k_9)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[j] != ar[k] might not hold. (test_backward_dep_c.vpr@29.85--29.130) [19952]"}
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
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_backward_dep_c.vpr@29.85--29.130) [19953]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (test_backward_dep_c.vpr@29.85--29.130) [19954]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@29.85--29.130) [19955]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_backward_dep_c.vpr@29.85--29.130) [19956]"}
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_backward_dep_c.vpr@36.12--36.104) [19957]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_backward_dep_c.vpr@36.12--36.104) [19958]"}
            j_7 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_backward_dep_c.vpr@36.12--36.104) [19959]"}
            k_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_backward_dep_c.vpr@36.12--36.104) [19960]"}
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
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_backward_dep_c.vpr@37.13--37.136) [19961]"}
              step != 0;
            if (lo <= k_12 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_backward_dep_c.vpr@37.13--37.136) [19962]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_12 && (k_12 < vmax && (lo <= k_12 mod step && k_12 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_backward_dep_c.vpr@37.13--37.136) [19963]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_backward_dep_c.vpr@37.13--37.136) [19964]"}
            k_12 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@37.13--37.136) [19965]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_backward_dep_c.vpr@32.1--40.2) [19966]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_backward_dep_c.vpr@32.1--40.2) [19967]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_backward_dep_c.vpr@32.1--40.2) [19968]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_backward_dep_c.vpr@32.1--40.2) [19969]"}
              i < Seq#Length(ar);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_backward_dep_c.vpr@32.1--40.2) [19970]"}
              HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19971]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19972]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19973]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19974]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19975]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19976]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19977]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19978]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < vmax && (0 <= k_9 && (k_9 < vmax && j_4_1 != k_9)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[j] != ar[k] might not hold. (test_backward_dep_c.vpr@39.97--39.147) [19979]"}
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
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_backward_dep_c.vpr@39.97--39.147) [19980]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (test_backward_dep_c.vpr@39.97--39.147) [19981]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@39.97--39.147) [19982]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_backward_dep_c.vpr@39.97--39.147) [19983]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar) ==> count_list(Heap, i, hi, ar, v_2) == (if i < hi then (if Seq#Index(ar, i) == v_2 then 1 else 0) + count_list'(Heap, i + 1, hi, ar, v_2) else 0)
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
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_backward_dep_c.vpr@42.1--47.2) [19984]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_backward_dep_c.vpr@42.1--47.2) [19985]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (test_backward_dep_c.vpr@46.36--46.64) [19986]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (test_backward_dep_c.vpr@46.36--46.64) [19987]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (test_backward_dep_c.vpr@46.36--46.64) [19988]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar)) && (forall j_9: int, k: int ::
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_4_1: int;
  var k_9: int;
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
    
    // -- Check definedness of (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
      if (*) {
        if (0 <= j_10 && (j_10 < hi && (0 <= k_15 && (k_15 < hi && j_10 != k_15)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_backward_dep_c.vpr@52.12--52.102) [19989]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_backward_dep_c.vpr@52.12--52.102) [19990]"}
            j_10 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_backward_dep_c.vpr@52.12--52.102) [19991]"}
            k_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_backward_dep_c.vpr@52.12--52.102) [19992]"}
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
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_backward_dep_c.vpr@53.13--53.94) [19993]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_backward_dep_c.vpr@53.13--53.94) [19994]"}
            k_16 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@53.13--53.94) [19995]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_backward_dep_c.vpr@49.1--56.2) [19996]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_backward_dep_c.vpr@49.1--56.2) [19997]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_backward_dep_c.vpr@49.1--56.2) [19998]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (test_backward_dep_c.vpr@55.55--55.84) [19999]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (test_backward_dep_c.vpr@55.55--55.84) [20000]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (test_backward_dep_c.vpr@55.55--55.84) [20001]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (0 <= j_4_1 && (j_4_1 < hi && (0 <= k_9 && (k_9 < hi && j_4_1 != k_9)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[j] != ar[k] might not hold. (test_backward_dep_c.vpr@55.55--55.84) [20002]"}
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
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_backward_dep_c.vpr@55.55--55.84) [20003]"}
            (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (test_backward_dep_c.vpr@55.55--55.84) [20004]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (0 <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@55.55--55.84) [20005]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && (0 <= k_11 && k_11 < hi)) && (0 <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_backward_dep_c.vpr@55.55--55.84) [20006]"}
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
// Translation of method Ref__loop_main_72
// ==================================================

procedure Ref__loop_main_72(diz: Ref, current_thread_id: int, len: int, b_24: (Seq Ref), a_2: (Seq Ref), c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j_11: int;
  var k_17: int;
  var i_12: int;
  var QPMask: MaskType;
  var perm: Perm;
  var i_16: int;
  var j_21: int;
  var k_20: int;
  var i_13: int;
  var j_13: int;
  var k_30: int;
  var i_22: int;
  var i_24: int;
  var i_29: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_30: int;
  var i_31: int;
  var i_32: int;
  var i_33: int;
  var i_34: int;
  var i_35: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_27: int;
  var i_29_1: int;
  var i_31_1: int;
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
    assume Seq#Length(a_2) == len;
    assume Seq#Length(b_24) == len;
    assume Seq#Length(c) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { a[j], a[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> a[j] != a[k])
      if (*) {
        if (0 <= j_11 && (j_11 < len && (0 <= k_17 && (k_17 < len && j_11 != k_17)))) {
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might be negative. (test_backward_dep_c.vpr@62.12--62.102) [20007]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might exceed sequence length. (test_backward_dep_c.vpr@62.12--62.102) [20008]"}
            j_11 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might be negative. (test_backward_dep_c.vpr@62.12--62.102) [20009]"}
            k_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might exceed sequence length. (test_backward_dep_c.vpr@62.12--62.102) [20010]"}
            k_17 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall j_1: int, k_1_1: int ::
      { Seq#Index(a_2, j_1), Seq#Index(a_2, k_1_1) }
      0 <= j_1 && (j_1 < len && (0 <= k_1_1 && (k_1_1 < len && j_1 != k_1_1))) ==> Seq#Index(a_2, j_1) != Seq#Index(a_2, k_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_12 && i_12 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@63.13--63.91) [20011]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@63.13--63.91) [20012]"}
            i_12 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@63.13--63.91) [20013]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len)) && (0 <= i_1_1 && i_1_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len) && NoPerm < 1 / 2 ==> qpRange9(Seq#Index(a_2, i_1)) && invRecv9(Seq#Index(a_2, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < 1 / 2) && qpRange9(o_4) ==> Seq#Index(a_2, invRecv9(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@63.13--63.91) [20014]"}
      (forall i_1: int ::
      { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
      0 <= i_1 && i_1 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < 1 / 2) && qpRange9(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv9(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < 1 / 2) && qpRange9(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (0 < len) {
      
      // -- Check definedness of acc(a[0].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[0] into a might exceed sequence length. (test_backward_dep_c.vpr@64.12--64.73) [20015]"}
          0 < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@64.12--64.73) [20016]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, 0) != null;
      Mask := Mask[Seq#Index(a_2, 0), Ref__Integer_value:=Mask[Seq#Index(a_2, 0), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 1 <= i && i < (len - 1 < len ? len - 1 : len) + 1 ==> acc(a[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (1 <= i_16 && i_16 < (if len - 1 < len then len - 1 else len) + 1) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@65.13--65.123) [20017]"}
            i_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@65.13--65.123) [20018]"}
            i_16 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@65.13--65.123) [20019]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (1 <= i_3 && i_3 < (if len - 1 < len then len - 1 else len) + 1)) && (1 <= i_3_1 && i_3_1 < (if len - 1 < len then len - 1 else len) + 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_3) != Seq#Index(a_2, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(a_2, i_3) } { Seq#Index(a_2, i_3) }
        (1 <= i_3 && i_3 < (if len - 1 < len then len - 1 else len) + 1) && NoPerm < 1 / 2 ==> qpRange10(Seq#Index(a_2, i_3)) && invRecv10(Seq#Index(a_2, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((1 <= invRecv10(o_4) && invRecv10(o_4) < (if len - 1 < len then len - 1 else len) + 1) && NoPerm < 1 / 2) && qpRange10(o_4) ==> Seq#Index(a_2, invRecv10(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@65.13--65.123) [20020]"}
      (forall i_3: int ::
      { Seq#Index(a_2, i_3) } { Seq#Index(a_2, i_3) }
      1 <= i_3 && i_3 < (if len - 1 < len then len - 1 else len) + 1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(a_2, i_3) } { Seq#Index(a_2, i_3) }
        (1 <= i_3 && i_3 < (if len - 1 < len then len - 1 else len) + 1) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((1 <= invRecv10(o_4) && invRecv10(o_4) < (if len - 1 < len then len - 1 else len) + 1) && NoPerm < 1 / 2) && qpRange10(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv10(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((1 <= invRecv10(o_4) && invRecv10(o_4) < (if len - 1 < len then len - 1 else len) + 1) && NoPerm < 1 / 2) && qpRange10(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { b[j], b[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k])
      if (*) {
        if (0 <= j_21 && (j_21 < len && (0 <= k_20 && (k_20 < len && j_21 != k_20)))) {
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might be negative. (test_backward_dep_c.vpr@66.12--66.102) [20021]"}
            j_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might exceed sequence length. (test_backward_dep_c.vpr@66.12--66.102) [20022]"}
            j_21 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might be negative. (test_backward_dep_c.vpr@66.12--66.102) [20023]"}
            k_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might exceed sequence length. (test_backward_dep_c.vpr@66.12--66.102) [20024]"}
            k_20 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall j_3_1: int, k_3: int ::
      { Seq#Index(b_24, j_3_1), Seq#Index(b_24, k_3) }
      0 <= j_3_1 && (j_3_1 < len && (0 <= k_3 && (k_3 < len && j_3_1 != k_3))) ==> Seq#Index(b_24, j_3_1) != Seq#Index(b_24, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_13 && i_13 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@67.13--67.91) [20025]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@67.13--67.91) [20026]"}
            i_13 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@67.13--67.91) [20027]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < len)) && (0 <= i_5_1 && i_5_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_5) != Seq#Index(b_24, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(b_24, i_5) } { Seq#Index(b_24, i_5) }
        (0 <= i_5 && i_5 < len) && NoPerm < 1 / 2 ==> qpRange11(Seq#Index(b_24, i_5)) && invRecv11(Seq#Index(b_24, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < 1 / 2) && qpRange11(o_4) ==> Seq#Index(b_24, invRecv11(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@67.13--67.91) [20028]"}
      (forall i_5: int ::
      { Seq#Index(b_24, i_5) } { Seq#Index(b_24, i_5) }
      0 <= i_5 && i_5 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(b_24, i_5) } { Seq#Index(b_24, i_5) }
        (0 <= i_5 && i_5 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < 1 / 2) && qpRange11(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv11(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < 1 / 2) && qpRange11(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { c[j], c[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k])
      if (*) {
        if (0 <= j_13 && (j_13 < len && (0 <= k_30 && (k_30 < len && j_13 != k_30)))) {
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might be negative. (test_backward_dep_c.vpr@68.12--68.102) [20029]"}
            j_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might exceed sequence length. (test_backward_dep_c.vpr@68.12--68.102) [20030]"}
            j_13 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might be negative. (test_backward_dep_c.vpr@68.12--68.102) [20031]"}
            k_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might exceed sequence length. (test_backward_dep_c.vpr@68.12--68.102) [20032]"}
            k_30 < Seq#Length(c);
        }
        assume false;
      }
    assume (forall j_5_1: int, k_5: int ::
      { Seq#Index(c, j_5_1), Seq#Index(c, k_5) }
      0 <= j_5_1 && (j_5_1 < len && (0 <= k_5 && (k_5 < len && j_5_1 != k_5))) ==> Seq#Index(c, j_5_1) != Seq#Index(c, k_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_22 && i_22 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@69.13--69.91) [20033]"}
            i_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@69.13--69.91) [20034]"}
            i_22 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@69.13--69.91) [20035]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len)) && (0 <= i_7_2 && i_7_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_7_1) != Seq#Index(c, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(c, i_7_1) } { Seq#Index(c, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len) && NoPerm < FullPerm ==> qpRange12(Seq#Index(c, i_7_1)) && invRecv12(Seq#Index(c, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(c, invRecv12(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(c, i_7_1) } { Seq#Index(c, i_7_1) }
        0 <= i_7_1 && i_7_1 < len ==> Seq#Index(c, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv12(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::0 <= i && i < (len - 1 < len ? len - 1 : len) ==> a[i + 1].Ref__Integer_value == 0)
      if (*) {
        if (0 <= i_24 && i_24 < (if len - 1 < len then len - 1 else len)) {
          assert {:msg "  Contract might not be well-formed. Index a[i + 1] into a might be negative. (test_backward_dep_c.vpr@70.13--70.118) [20036]"}
            i_24 + 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i + 1] into a might exceed sequence length. (test_backward_dep_c.vpr@70.13--70.118) [20037]"}
            i_24 + 1 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i + 1].Ref__Integer_value (test_backward_dep_c.vpr@70.13--70.118) [20038]"}
            HasDirectPerm(Mask, Seq#Index(a_2, i_24 + 1), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_9_1: int ::
      
      0 <= i_9_1 && i_9_1 < (if len - 1 < len then len - 1 else len) ==> Heap[Seq#Index(a_2, i_9_1 + 1), Ref__Integer_value] == 0
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
      if (*) {
        if (0 <= i_29 && i_29 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@71.13--71.86) [20039]"}
            i_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@71.13--71.86) [20040]"}
            i_29 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@71.13--71.86) [20041]"}
            HasDirectPerm(Mask, Seq#Index(b_24, i_29), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_11_1: int ::
      { Seq#Index(b_24, i_11_1) }
      0 <= i_11_1 && i_11_1 < len ==> Heap[Seq#Index(b_24, i_11_1), Ref__Integer_value] == i_11_1
    );
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
    assume Seq#Length(a_2) == len;
    assume Seq#Length(b_24) == len;
    assume Seq#Length(c) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_30 && i_30 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@73.12--73.90) [20042]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@73.12--73.90) [20043]"}
            i_30 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@73.12--73.90) [20044]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < len)) && (0 <= i_13_2 && i_13_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_13_1) != Seq#Index(a_2, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(a_2, i_13_1) } { Seq#Index(a_2, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len) && NoPerm < FullPerm ==> qpRange13(Seq#Index(a_2, i_13_1)) && invRecv13(Seq#Index(a_2, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(a_2, invRecv13(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(a_2, i_13_1) } { Seq#Index(a_2, i_13_1) }
        0 <= i_13_1 && i_13_1 < len ==> Seq#Index(a_2, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_31 && i_31 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@74.12--74.90) [20045]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@74.12--74.90) [20046]"}
            i_31 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@74.12--74.90) [20047]"}
      (forall i_15: int, i_15_1: int ::
      
      (((i_15 != i_15_1 && (0 <= i_15 && i_15 < len)) && (0 <= i_15_1 && i_15_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_15) != Seq#Index(b_24, i_15_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_15: int ::
        { Seq#Index(b_24, i_15) } { Seq#Index(b_24, i_15) }
        (0 <= i_15 && i_15 < len) && NoPerm < 1 / 2 ==> qpRange14(Seq#Index(b_24, i_15)) && invRecv14(Seq#Index(b_24, i_15)) == i_15
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < 1 / 2) && qpRange14(o_4) ==> Seq#Index(b_24, invRecv14(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@74.12--74.90) [20048]"}
      (forall i_15: int ::
      { Seq#Index(b_24, i_15) } { Seq#Index(b_24, i_15) }
      0 <= i_15 && i_15 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_15: int ::
        { Seq#Index(b_24, i_15) } { Seq#Index(b_24, i_15) }
        (0 <= i_15 && i_15 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_15) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < 1 / 2) && qpRange14(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv14(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < 1 / 2) && qpRange14(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_32 && i_32 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@75.12--75.90) [20049]"}
            i_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@75.12--75.90) [20050]"}
            i_32 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@75.12--75.90) [20051]"}
      (forall i_17: int, i_17_1: int ::
      
      (((i_17 != i_17_1 && (0 <= i_17 && i_17 < len)) && (0 <= i_17_1 && i_17_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_17) != Seq#Index(c, i_17_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_17: int ::
        { Seq#Index(c, i_17) } { Seq#Index(c, i_17) }
        (0 <= i_17 && i_17 < len) && NoPerm < FullPerm ==> qpRange15(Seq#Index(c, i_17)) && invRecv15(Seq#Index(c, i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        ((0 <= invRecv15(o_4) && invRecv15(o_4) < len) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(c, invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_17: int ::
        { Seq#Index(c, i_17) } { Seq#Index(c, i_17) }
        0 <= i_17 && i_17 < len ==> Seq#Index(c, i_17) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv15(o_4) && invRecv15(o_4) < len) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv15(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv15(o_4) && invRecv15(o_4) < len) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
      if (*) {
        if (0 <= i_33 && i_33 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@76.12--76.89) [20052]"}
            i_33 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@76.12--76.89) [20053]"}
            i_33 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@76.12--76.89) [20054]"}
            HasDirectPerm(PostMask, Seq#Index(a_2, i_33), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_19: int ::
      { Seq#Index(a_2, i_19) }
      0 <= i_19 && i_19 < len ==> PostHeap[Seq#Index(a_2, i_19), Ref__Integer_value] == i_19 + 1
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
      if (*) {
        if (0 <= i_34 && i_34 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@77.12--77.85) [20055]"}
            i_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@77.12--77.85) [20056]"}
            i_34 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@77.12--77.85) [20057]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_34), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_21: int ::
      { Seq#Index(b_24, i_21) }
      0 <= i_21 && i_21 < len ==> PostHeap[Seq#Index(b_24, i_21), Ref__Integer_value] == i_21
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2)
      if (*) {
        if (0 <= i_35 && i_35 < (if len - 1 < len then len - 1 else len)) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@78.12--78.113) [20058]"}
            i_35 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@78.12--78.113) [20059]"}
            i_35 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_backward_dep_c.vpr@78.12--78.113) [20060]"}
            HasDirectPerm(PostMask, Seq#Index(c, i_35), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_23: int ::
      { Seq#Index(c, i_23) }
      0 <= i_23 && i_23 < (if len - 1 < len then len - 1 else len) ==> PostHeap[Seq#Index(c, i_23), Ref__Integer_value] == 2
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_backward_dep_c.vpr@80.3--80.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. Assertion |a| == len might not hold. (test_backward_dep_c.vpr@72.11--72.55) [20061]"}
      Seq#Length(a_2) == len;
    assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. Assertion |b| == len might not hold. (test_backward_dep_c.vpr@72.11--72.55) [20062]"}
      Seq#Length(b_24) == len;
    assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. Assertion |c| == len might not hold. (test_backward_dep_c.vpr@72.11--72.55) [20063]"}
      Seq#Length(c) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@73.12--73.90) [20064]"}
        (forall i_24_1: int, i_24_2: int ::
        { neverTriggered16(i_24_1), neverTriggered16(i_24_2) }
        (((i_24_1 != i_24_2 && (0 <= i_24_1 && i_24_1 < len)) && (0 <= i_24_2 && i_24_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_24_1) != Seq#Index(a_2, i_24_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@73.12--73.90) [20065]"}
        (forall i_24_1: int ::
        { Seq#Index(a_2, i_24_1) } { Seq#Index(a_2, i_24_1) }
        0 <= i_24_1 && i_24_1 < len ==> Mask[Seq#Index(a_2, i_24_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_24_1: int ::
        { Seq#Index(a_2, i_24_1) } { Seq#Index(a_2, i_24_1) }
        (0 <= i_24_1 && i_24_1 < len) && NoPerm < FullPerm ==> qpRange16(Seq#Index(a_2, i_24_1)) && invRecv16(Seq#Index(a_2, i_24_1)) == i_24_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < FullPerm && qpRange16(o_4)) ==> Seq#Index(a_2, invRecv16(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < FullPerm && qpRange16(o_4)) ==> Seq#Index(a_2, invRecv16(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < FullPerm && qpRange16(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@74.12--74.90) [20066]"}
        (forall i_25: int ::
        { Seq#Index(b_24, i_25) } { Seq#Index(b_24, i_25) }
        (0 <= i_25 && i_25 < len) && dummyFunction(Heap[Seq#Index(b_24, i_25), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@74.12--74.90) [20067]"}
        (forall i_25: int, i_25_2: int ::
        { neverTriggered17(i_25), neverTriggered17(i_25_2) }
        (((i_25 != i_25_2 && (0 <= i_25 && i_25 < len)) && (0 <= i_25_2 && i_25_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_25) != Seq#Index(b_24, i_25_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@74.12--74.90) [20068]"}
        (forall i_25: int ::
        { Seq#Index(b_24, i_25) } { Seq#Index(b_24, i_25) }
        0 <= i_25 && i_25 < len ==> Mask[Seq#Index(b_24, i_25), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_25: int ::
        { Seq#Index(b_24, i_25) } { Seq#Index(b_24, i_25) }
        (0 <= i_25 && i_25 < len) && NoPerm < 1 / 2 ==> qpRange17(Seq#Index(b_24, i_25)) && invRecv17(Seq#Index(b_24, i_25)) == i_25
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        (0 <= invRecv17(o_4) && invRecv17(o_4) < len) && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> Seq#Index(b_24, invRecv17(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv17(o_4) && invRecv17(o_4) < len) && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> Seq#Index(b_24, invRecv17(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv17(o_4) && invRecv17(o_4) < len) && (NoPerm < 1 / 2 && qpRange17(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver c[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@75.12--75.90) [20069]"}
        (forall i_26: int, i_26_1: int ::
        { neverTriggered18(i_26), neverTriggered18(i_26_1) }
        (((i_26 != i_26_1 && (0 <= i_26 && i_26 < len)) && (0 <= i_26_1 && i_26_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_26) != Seq#Index(c, i_26_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_backward_dep_c.vpr@75.12--75.90) [20070]"}
        (forall i_26: int ::
        { Seq#Index(c, i_26) } { Seq#Index(c, i_26) }
        0 <= i_26 && i_26 < len ==> Mask[Seq#Index(c, i_26), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver c[i]
      assume (forall i_26: int ::
        { Seq#Index(c, i_26) } { Seq#Index(c, i_26) }
        (0 <= i_26 && i_26 < len) && NoPerm < FullPerm ==> qpRange18(Seq#Index(c, i_26)) && invRecv18(Seq#Index(c, i_26)) == i_26
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        (0 <= invRecv18(o_4) && invRecv18(o_4) < len) && (NoPerm < FullPerm && qpRange18(o_4)) ==> Seq#Index(c, invRecv18(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv18(o_4) && invRecv18(o_4) < len) && (NoPerm < FullPerm && qpRange18(o_4)) ==> Seq#Index(c, invRecv18(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv18(o_4) && invRecv18(o_4) < len) && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_27 && i_27 < len) {
        assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. Assertion a[i].Ref__Integer_value == i + 1 might not hold. (test_backward_dep_c.vpr@76.12--76.89) [20071]"}
          Heap[Seq#Index(a_2, i_27), Ref__Integer_value] == i_27 + 1;
      }
      assume false;
    }
    assume (forall i_28_1_1: int ::
      { Seq#Index(a_2, i_28_1_1) }
      0 <= i_28_1_1 && i_28_1_1 < len ==> Heap[Seq#Index(a_2, i_28_1_1), Ref__Integer_value] == i_28_1_1 + 1
    );
    if (*) {
      if (0 <= i_29_1 && i_29_1 < len) {
        assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. Assertion b[i].Ref__Integer_value == i might not hold. (test_backward_dep_c.vpr@77.12--77.85) [20072]"}
          Heap[Seq#Index(b_24, i_29_1), Ref__Integer_value] == i_29_1;
      }
      assume false;
    }
    assume (forall i_30_1: int ::
      { Seq#Index(b_24, i_30_1) }
      0 <= i_30_1 && i_30_1 < len ==> Heap[Seq#Index(b_24, i_30_1), Ref__Integer_value] == i_30_1
    );
    if (*) {
      if (0 <= i_31_1 && i_31_1 < (if len - 1 < len then len - 1 else len)) {
        assert {:msg "  Postcondition of Ref__loop_main_72 might not hold. Assertion c[i].Ref__Integer_value == 2 might not hold. (test_backward_dep_c.vpr@78.12--78.113) [20073]"}
          Heap[Seq#Index(c, i_31_1), Ref__Integer_value] == 2;
      }
      assume false;
    }
    assume (forall i_32_1: int ::
      { Seq#Index(c, i_32_1) }
      0 <= i_32_1 && i_32_1 < (if len - 1 < len then len - 1 else len) ==> Heap[Seq#Index(c, i_32_1), Ref__Integer_value] == 2
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__recv_body_202
// ==================================================

procedure Ref__recv_body_202(diz: Ref, current_thread_id: int, len: int, a_2: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    assume i < Seq#Length(a_2);
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
    assume i == i - 1 + 1;
    assume state(PostHeap, PostMask);
    assume Seq#Length(a_2) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@89.11--89.46) [20074]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@89.11--89.46) [20075]"}
        i < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@89.11--89.46) [20076]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
    PostMask := PostMask[Seq#Index(a_2, i), Ref__Integer_value:=PostMask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_backward_dep_c.vpr@91.3--91.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__recv_body_202 might not hold. Assertion i == i - 1 + 1 might not hold. (test_backward_dep_c.vpr@87.11--87.25) [20077]"}
      i == i - 1 + 1;
    assert {:msg "  Postcondition of Ref__recv_body_202 might not hold. Assertion |a| == len might not hold. (test_backward_dep_c.vpr@88.11--88.21) [20078]"}
      Seq#Length(a_2) == len;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__recv_body_202 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@89.11--89.46) [20079]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__recv_body_202 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@89.11--89.46) [20080]"}
        perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__send_body_212
// ==================================================

procedure Ref__send_body_212(diz: Ref, current_thread_id: int, len: int, a_2: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
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
    assume Seq#Length(a_2) == len;
    assume state(Heap, Mask);
    assume -1 <= i;
    assume i < Seq#Length(a_2) - 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i + 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i + 1] into a might be negative. (test_backward_dep_c.vpr@99.12--99.51) [20081]"}
        i + 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i + 1] into a might exceed sequence length. (test_backward_dep_c.vpr@99.12--99.51) [20082]"}
        i + 1 < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@99.12--99.51) [20083]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i + 1) != null;
    Mask := Mask[Seq#Index(a_2, i + 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i + 1), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- test_backward_dep_c.vpr@101.3--101.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__loop_body_72
// ==================================================

procedure Ref__loop_body_72(diz: Ref, current_thread_id: int, b_24: (Seq Ref), len: int, a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_5: Ref;
  var __flatten_7: Ref;
  var __flatten_8: Ref;
  var __flatten_10: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var __flatten_6: int;
  var __flatten_9: int;
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
    assume Seq#Length(a_2) == len;
    assume Seq#Length(b_24) == len;
    assume Seq#Length(c) == len;
    assume state(Heap, Mask);
    assume 0 <= i;
    assume i < len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@109.12--109.47) [20084]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@109.12--109.47) [20085]"}
        i < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@109.12--109.47) [20086]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (i == 0) {
      
      // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@110.12--110.60) [20087]"}
          i >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@110.12--110.60) [20088]"}
          i < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@110.12--110.60) [20089]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
      Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (i < len - 1) {
      
      // -- Check definedness of acc(a[i + 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[i + 1] into a might be negative. (test_backward_dep_c.vpr@111.12--111.69) [20090]"}
          i + 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[i + 1] into a might exceed sequence length. (test_backward_dep_c.vpr@111.12--111.69) [20091]"}
          i + 1 < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@111.12--111.69) [20092]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, i + 1) != null;
      Mask := Mask[Seq#Index(a_2, i + 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i + 1), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(b[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@112.12--112.47) [20093]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@112.12--112.47) [20094]"}
        i < Seq#Length(b_24);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@112.12--112.47) [20095]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(b_24, i) != null;
    Mask := Mask[Seq#Index(b_24, i), Ref__Integer_value:=Mask[Seq#Index(b_24, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(c[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@113.12--113.47) [20096]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@113.12--113.47) [20097]"}
        i < Seq#Length(c);
    perm := FullPerm;
    assume Seq#Index(c, i) != null;
    Mask := Mask[Seq#Index(c, i), Ref__Integer_value:=Mask[Seq#Index(c, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (i < len - 1) {
      
      // -- Check definedness of a[i + 1].Ref__Integer_value == 0
        assert {:msg "  Contract might not be well-formed. Index a[i + 1] into a might be negative. (test_backward_dep_c.vpr@114.12--114.64) [20098]"}
          i + 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[i + 1] into a might exceed sequence length. (test_backward_dep_c.vpr@114.12--114.64) [20099]"}
          i + 1 < Seq#Length(a_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i + 1].Ref__Integer_value (test_backward_dep_c.vpr@114.12--114.64) [20100]"}
          HasDirectPerm(Mask, Seq#Index(a_2, i + 1), Ref__Integer_value);
      assume Heap[Seq#Index(a_2, i + 1), Ref__Integer_value] == 0;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of b[i].Ref__Integer_value == i
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@115.12--115.40) [20101]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@115.12--115.40) [20102]"}
        i < Seq#Length(b_24);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@115.12--115.40) [20103]"}
        HasDirectPerm(Mask, Seq#Index(b_24, i), Ref__Integer_value);
    assume Heap[Seq#Index(b_24, i), Ref__Integer_value] == i;
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
    assume Seq#Length(a_2) == len;
    assume Seq#Length(b_24) == len;
    assume Seq#Length(c) == len;
    assume state(PostHeap, PostMask);
    assume 0 <= i;
    assume i < len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@118.11--118.46) [20104]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@118.11--118.46) [20105]"}
        i < Seq#Length(a_2);
    perm := FullPerm;
    assume Seq#Index(a_2, i) != null;
    PostMask := PostMask[Seq#Index(a_2, i), Ref__Integer_value:=PostMask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(b[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@119.11--119.46) [20106]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@119.11--119.46) [20107]"}
        i < Seq#Length(b_24);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@119.11--119.46) [20108]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(b_24, i) != null;
    PostMask := PostMask[Seq#Index(b_24, i), Ref__Integer_value:=PostMask[Seq#Index(b_24, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(c[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@120.11--120.46) [20109]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@120.11--120.46) [20110]"}
        i < Seq#Length(c);
    perm := FullPerm;
    assume Seq#Index(c, i) != null;
    PostMask := PostMask[Seq#Index(c, i), Ref__Integer_value:=PostMask[Seq#Index(c, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a[i].Ref__Integer_value == i + 1
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@121.11--121.43) [20111]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@121.11--121.43) [20112]"}
        i < Seq#Length(a_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@121.11--121.43) [20113]"}
        HasDirectPerm(PostMask, Seq#Index(a_2, i), Ref__Integer_value);
    assume PostHeap[Seq#Index(a_2, i), Ref__Integer_value] == i + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of b[i].Ref__Integer_value == i
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@122.11--122.39) [20114]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@122.11--122.39) [20115]"}
        i < Seq#Length(b_24);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@122.11--122.39) [20116]"}
        HasDirectPerm(PostMask, Seq#Index(b_24, i), Ref__Integer_value);
    assume PostHeap[Seq#Index(b_24, i), Ref__Integer_value] == i;
    assume state(PostHeap, PostMask);
    if (i < len - 1) {
      
      // -- Check definedness of c[i].Ref__Integer_value == 2
        assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@123.11--123.59) [20117]"}
          i >= 0;
        assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@123.11--123.59) [20118]"}
          i < Seq#Length(c);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_backward_dep_c.vpr@123.11--123.59) [20119]"}
          HasDirectPerm(PostMask, Seq#Index(c, i), Ref__Integer_value);
      assume PostHeap[Seq#Index(c, i), Ref__Integer_value] == 2;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_5, $allocated];
    assume Heap[__flatten_7, $allocated];
    assume Heap[__flatten_8, $allocated];
    assume Heap[__flatten_10, $allocated];
  
  // -- Translating statement: if (i > 0) -- test_backward_dep_c.vpr@131.3--133.4
    if (i > 0) {
      
      // -- Translating statement: Ref__recv_body_202(diz, current_thread_id, len, a, i) -- test_backward_dep_c.vpr@132.5--132.58
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Ref__recv_body_202 might not hold. Assertion diz != null might not hold. (test_backward_dep_c.vpr@132.5--132.58) [20120]"}
            diz != null;
          assert {:msg "  The precondition of method Ref__recv_body_202 might not hold. Assertion current_thread_id >= 0 might not hold. (test_backward_dep_c.vpr@132.5--132.58) [20121]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Ref__recv_body_202 might not hold. Assertion 0 <= i might not hold. (test_backward_dep_c.vpr@132.5--132.58) [20122]"}
            0 <= i;
          assert {:msg "  The precondition of method Ref__recv_body_202 might not hold. Assertion i < |a| might not hold. (test_backward_dep_c.vpr@132.5--132.58) [20123]"}
            i < Seq#Length(a_2);
        
        // -- Inhaling postcondition
          assume i == i - 1 + 1;
          assume Seq#Length(a_2) == len;
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@132.5--132.58) [20124]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
          Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := a[i] -- test_backward_dep_c.vpr@134.3--134.22
    
    // -- Check definedness of a[i]
      assert {:msg "  Assignment might fail. Index a[i] into a might be negative. (test_backward_dep_c.vpr@134.3--134.22) [20125]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@134.3--134.22) [20126]"}
        i < Seq#Length(a_2);
    __flatten_5 := Seq#Index(a_2, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := b[i] -- test_backward_dep_c.vpr@135.3--135.22
    
    // -- Check definedness of b[i]
      assert {:msg "  Assignment might fail. Index b[i] into b might be negative. (test_backward_dep_c.vpr@135.3--135.22) [20127]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@135.3--135.22) [20128]"}
        i < Seq#Length(b_24);
    __flatten_7 := Seq#Index(b_24, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := __flatten_7.Ref__Integer_value + 1 -- test_backward_dep_c.vpr@136.3--136.52
    
    // -- Check definedness of __flatten_7.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_7.Ref__Integer_value (test_backward_dep_c.vpr@136.3--136.52) [20129]"}
        HasDirectPerm(Mask, __flatten_7, Ref__Integer_value);
    __flatten_6 := Heap[__flatten_7, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5.Ref__Integer_value := __flatten_6 -- test_backward_dep_c.vpr@137.3--137.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_5.Ref__Integer_value (test_backward_dep_c.vpr@137.3--137.48) [20130]"}
      FullPerm == Mask[__flatten_5, Ref__Integer_value];
    Heap := Heap[__flatten_5, Ref__Integer_value:=__flatten_6];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i < len - 1) -- test_backward_dep_c.vpr@138.3--144.4
    if (i < len - 1) {
      
      // -- Translating statement: __flatten_8 := c[i] -- test_backward_dep_c.vpr@139.5--139.24
        
        // -- Check definedness of c[i]
          assert {:msg "  Assignment might fail. Index c[i] into c might be negative. (test_backward_dep_c.vpr@139.5--139.24) [20131]"}
            i >= 0;
          assert {:msg "  Assignment might fail. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@139.5--139.24) [20132]"}
            i < Seq#Length(c);
        __flatten_8 := Seq#Index(c, i);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_10 := a[i + 1] -- test_backward_dep_c.vpr@140.5--140.29
        
        // -- Check definedness of a[i + 1]
          assert {:msg "  Assignment might fail. Index a[i + 1] into a might be negative. (test_backward_dep_c.vpr@140.5--140.29) [20133]"}
            i + 1 >= 0;
          assert {:msg "  Assignment might fail. Index a[i + 1] into a might exceed sequence length. (test_backward_dep_c.vpr@140.5--140.29) [20134]"}
            i + 1 < Seq#Length(a_2);
        __flatten_10 := Seq#Index(a_2, i + 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9 := __flatten_10.Ref__Integer_value + 2 -- test_backward_dep_c.vpr@141.5--141.55
        
        // -- Check definedness of __flatten_10.Ref__Integer_value + 2
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_10.Ref__Integer_value (test_backward_dep_c.vpr@141.5--141.55) [20135]"}
            HasDirectPerm(Mask, __flatten_10, Ref__Integer_value);
        __flatten_9 := Heap[__flatten_10, Ref__Integer_value] + 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_8.Ref__Integer_value := __flatten_9 -- test_backward_dep_c.vpr@142.5--142.50
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (test_backward_dep_c.vpr@142.5--142.50) [20136]"}
          FullPerm == Mask[__flatten_8, Ref__Integer_value];
        Heap := Heap[__flatten_8, Ref__Integer_value:=__flatten_9];
        assume state(Heap, Mask);
      
      // -- Translating statement: Ref__send_body_212(diz, current_thread_id, len, a, i) -- test_backward_dep_c.vpr@143.5--143.58
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Ref__send_body_212 might not hold. Assertion diz != null might not hold. (test_backward_dep_c.vpr@143.5--143.58) [20137]"}
            diz != null;
          assert {:msg "  The precondition of method Ref__send_body_212 might not hold. Assertion current_thread_id >= 0 might not hold. (test_backward_dep_c.vpr@143.5--143.58) [20138]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Ref__send_body_212 might not hold. Assertion |a| == len might not hold. (test_backward_dep_c.vpr@143.5--143.58) [20139]"}
            Seq#Length(a_2) == len;
          assert {:msg "  The precondition of method Ref__send_body_212 might not hold. Assertion -1 <= i might not hold. (test_backward_dep_c.vpr@143.5--143.58) [20140]"}
            -1 <= i;
          assert {:msg "  The precondition of method Ref__send_body_212 might not hold. Assertion i < |a| - 1 might not hold. (test_backward_dep_c.vpr@143.5--143.58) [20141]"}
            i < Seq#Length(a_2) - 1;
          perm := 1 / 2;
          assert {:msg "  The precondition of method Ref__send_body_212 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@143.5--143.58) [20142]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__send_body_212 might not hold. There might be insufficient permission to access a[i + 1].Ref__Integer_value (test_backward_dep_c.vpr@143.5--143.58) [20143]"}
              perm <= Mask[Seq#Index(a_2, i + 1), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(a_2, i + 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i + 1), Ref__Integer_value] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Assertion |a| == len might not hold. (test_backward_dep_c.vpr@116.11--116.55) [20144]"}
      Seq#Length(a_2) == len;
    assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Assertion |b| == len might not hold. (test_backward_dep_c.vpr@116.11--116.55) [20145]"}
      Seq#Length(b_24) == len;
    assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Assertion |c| == len might not hold. (test_backward_dep_c.vpr@116.11--116.55) [20146]"}
      Seq#Length(c) == len;
    assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Assertion 0 <= i might not hold. (test_backward_dep_c.vpr@117.11--117.32) [20147]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Assertion i < len might not hold. (test_backward_dep_c.vpr@117.11--117.32) [20148]"}
      i < len;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@118.11--118.46) [20149]"}
        perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@119.11--119.46) [20150]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@119.11--119.46) [20151]"}
        perm <= Mask[Seq#Index(b_24, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(b_24, i), Ref__Integer_value:=Mask[Seq#Index(b_24, i), Ref__Integer_value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_backward_dep_c.vpr@120.11--120.46) [20152]"}
        perm <= Mask[Seq#Index(c, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(c, i), Ref__Integer_value:=Mask[Seq#Index(c, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Assertion a[i].Ref__Integer_value == i + 1 might not hold. (test_backward_dep_c.vpr@121.11--121.43) [20153]"}
      Heap[Seq#Index(a_2, i), Ref__Integer_value] == i + 1;
    assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Assertion b[i].Ref__Integer_value == i might not hold. (test_backward_dep_c.vpr@122.11--122.39) [20154]"}
      Heap[Seq#Index(b_24, i), Ref__Integer_value] == i;
    if (i < len - 1) {
      assert {:msg "  Postcondition of Ref__loop_body_72 might not hold. Assertion c[i].Ref__Integer_value == 2 might not hold. (test_backward_dep_c.vpr@123.11--123.59) [20155]"}
        Heap[Seq#Index(c, i), Ref__Integer_value] == 2;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__guard_check_S2_S1
// ==================================================

procedure Ref__guard_check_S2_S1(diz: Ref, current_thread_id: int, b_24: (Seq Ref), len: int, a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
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
    assume i < len;
    assume state(Heap, Mask);
    assume i > 0;
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
    assume 1 <= i;
    assume state(PostHeap, PostMask);
    assume i - 1 < len - 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__guard_check_S2_S1 might not hold. Assertion 1 <= i might not hold. (test_backward_dep_c.vpr@152.11--152.17) [20156]"}
      1 <= i;
    assert {:msg "  Postcondition of Ref__guard_check_S2_S1 might not hold. Assertion i - 1 < len - 1 might not hold. (test_backward_dep_c.vpr@153.11--153.26) [20157]"}
      i - 1 < len - 1;
}

// ==================================================
// Translation of method Ref__resource_check_S2_S1
// ==================================================

procedure Ref__resource_check_S2_S1(diz: Ref, current_thread_id: int, b_24: (Seq Ref), len: int, a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    assume i < len;
    assume state(Heap, Mask);
    assume i - 1 < len - 1;
    assume state(Heap, Mask);
    assume i > 0;
    assume state(Heap, Mask);
    assume Seq#Length(a_2) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i - 1 + 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i - 1 + 1] into a might be negative. (test_backward_dep_c.vpr@164.12--164.55) [20158]"}
        i - 1 + 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1 + 1] into a might exceed sequence length. (test_backward_dep_c.vpr@164.12--164.55) [20159]"}
        i - 1 + 1 < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@164.12--164.55) [20160]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i - 1 + 1) != null;
    Mask := Mask[Seq#Index(a_2, i - 1 + 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1 + 1), Ref__Integer_value] + perm];
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
    assume i - 1 < len - 1;
    assume state(PostHeap, PostMask);
    assume i == i - 1 + 1;
    assume state(PostHeap, PostMask);
    assume Seq#Length(a_2) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@168.11--168.46) [20161]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@168.11--168.46) [20162]"}
        i < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@168.11--168.46) [20163]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
    PostMask := PostMask[Seq#Index(a_2, i), Ref__Integer_value:=PostMask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__resource_check_S2_S1 might not hold. Assertion i - 1 < len - 1 might not hold. (test_backward_dep_c.vpr@165.11--165.26) [20164]"}
      i - 1 < len - 1;
    assert {:msg "  Postcondition of Ref__resource_check_S2_S1 might not hold. Assertion i == i - 1 + 1 might not hold. (test_backward_dep_c.vpr@166.11--166.25) [20165]"}
      i == i - 1 + 1;
    assert {:msg "  Postcondition of Ref__resource_check_S2_S1 might not hold. Assertion |a| == len might not hold. (test_backward_dep_c.vpr@167.11--167.21) [20166]"}
      Seq#Length(a_2) == len;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__resource_check_S2_S1 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@168.11--168.46) [20167]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__resource_check_S2_S1 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@168.11--168.46) [20168]"}
        perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__example
// ==================================================

procedure Ref__example(diz: Ref, current_thread_id: int, a_2: (Seq Ref), b_24: (Seq Ref), c: (Seq Ref), len: int) returns ()
  modifies Heap, Mask;
{
  var j_27: int;
  var k_29: int;
  var i_41: int;
  var QPMask: MaskType;
  var j_28: int;
  var k_33: int;
  var i_45: int;
  var j_29: int;
  var k_34: int;
  var i_47: int;
  var tid_22: int;
  var tid_23: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_50: int;
  var i_52: int;
  var i_54: int;
  var i_60: int;
  var i_73: int;
  var i_75: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_6_1: int;
  var k_6: int;
  var perm: Perm;
  var j_8: int;
  var k_8: int;
  var j_10_2: int;
  var k_10_2: int;
  var i_31_1: int;
  var i_33_1: int;
  var ExhaleHeap: HeapType;
  var i_21: int;
  var i_23: int;
  var i_25: int;
  
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
    assume Seq#Length(a_2) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { a[j], a[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> a[j] != a[k])
      if (*) {
        if (0 <= j_27 && (j_27 < len && (0 <= k_29 && (k_29 < len && j_27 != k_29)))) {
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might be negative. (test_backward_dep_c.vpr@176.12--176.102) [20169]"}
            j_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might exceed sequence length. (test_backward_dep_c.vpr@176.12--176.102) [20170]"}
            j_27 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might be negative. (test_backward_dep_c.vpr@176.12--176.102) [20171]"}
            k_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might exceed sequence length. (test_backward_dep_c.vpr@176.12--176.102) [20172]"}
            k_29 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall j_1: int, k_1_1: int ::
      { Seq#Index(a_2, j_1), Seq#Index(a_2, k_1_1) }
      0 <= j_1 && (j_1 < len && (0 <= k_1_1 && (k_1_1 < len && j_1 != k_1_1))) ==> Seq#Index(a_2, j_1) != Seq#Index(a_2, k_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_41 && i_41 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@177.13--177.91) [20173]"}
            i_41 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@177.13--177.91) [20174]"}
            i_41 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@177.13--177.91) [20175]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len)) && (0 <= i_1_1 && i_1_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len) && NoPerm < FullPerm ==> qpRange19(Seq#Index(a_2, i_1)) && invRecv19(Seq#Index(a_2, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        ((0 <= invRecv19(o_4) && invRecv19(o_4) < len) && NoPerm < FullPerm) && qpRange19(o_4) ==> Seq#Index(a_2, invRecv19(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        0 <= i_1 && i_1 < len ==> Seq#Index(a_2, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv19(o_4) && invRecv19(o_4) < len) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv19(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv19(o_4) && invRecv19(o_4) < len) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(b_24) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { b[j], b[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k])
      if (*) {
        if (0 <= j_28 && (j_28 < len && (0 <= k_33 && (k_33 < len && j_28 != k_33)))) {
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might be negative. (test_backward_dep_c.vpr@179.12--179.102) [20176]"}
            j_28 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might exceed sequence length. (test_backward_dep_c.vpr@179.12--179.102) [20177]"}
            j_28 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might be negative. (test_backward_dep_c.vpr@179.12--179.102) [20178]"}
            k_33 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might exceed sequence length. (test_backward_dep_c.vpr@179.12--179.102) [20179]"}
            k_33 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall j_3_1: int, k_3: int ::
      { Seq#Index(b_24, j_3_1), Seq#Index(b_24, k_3) }
      0 <= j_3_1 && (j_3_1 < len && (0 <= k_3 && (k_3 < len && j_3_1 != k_3))) ==> Seq#Index(b_24, j_3_1) != Seq#Index(b_24, k_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_45 && i_45 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@180.13--180.91) [20180]"}
            i_45 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@180.13--180.91) [20181]"}
            i_45 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@180.13--180.91) [20182]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < len)) && (0 <= i_3_1 && i_3_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_3) != Seq#Index(b_24, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
        (0 <= i_3 && i_3 < len) && NoPerm < 1 / 2 ==> qpRange20(Seq#Index(b_24, i_3)) && invRecv20(Seq#Index(b_24, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        ((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < 1 / 2) && qpRange20(o_4) ==> Seq#Index(b_24, invRecv20(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@180.13--180.91) [20183]"}
      (forall i_3: int ::
      { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
      0 <= i_3 && i_3 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
        (0 <= i_3 && i_3 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < 1 / 2) && qpRange20(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv20(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < 1 / 2) && qpRange20(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(c) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int, k: Int :: { c[j], c[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k])
      if (*) {
        if (0 <= j_29 && (j_29 < len && (0 <= k_34 && (k_34 < len && j_29 != k_34)))) {
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might be negative. (test_backward_dep_c.vpr@182.12--182.102) [20184]"}
            j_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might exceed sequence length. (test_backward_dep_c.vpr@182.12--182.102) [20185]"}
            j_29 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might be negative. (test_backward_dep_c.vpr@182.12--182.102) [20186]"}
            k_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might exceed sequence length. (test_backward_dep_c.vpr@182.12--182.102) [20187]"}
            k_34 < Seq#Length(c);
        }
        assume false;
      }
    assume (forall j_5_1: int, k_5: int ::
      { Seq#Index(c, j_5_1), Seq#Index(c, k_5) }
      0 <= j_5_1 && (j_5_1 < len && (0 <= k_5 && (k_5 < len && j_5_1 != k_5))) ==> Seq#Index(c, j_5_1) != Seq#Index(c, k_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_47 && i_47 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@183.13--183.91) [20188]"}
            i_47 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@183.13--183.91) [20189]"}
            i_47 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@183.13--183.91) [20190]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < len)) && (0 <= i_5_1 && i_5_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_5) != Seq#Index(c, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        (0 <= i_5 && i_5 < len) && NoPerm < FullPerm ==> qpRange21(Seq#Index(c, i_5)) && invRecv21(Seq#Index(c, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        ((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < FullPerm) && qpRange21(o_4) ==> Seq#Index(c, invRecv21(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        0 <= i_5 && i_5 < len ==> Seq#Index(c, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv21(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { a[tid] } 0 <= tid && tid < len ==> a[tid].Ref__Integer_value == 0)
      if (*) {
        if (0 <= tid_22 && tid_22 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[tid] into a might be negative. (test_backward_dep_c.vpr@184.13--184.94) [20191]"}
            tid_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[tid] into a might exceed sequence length. (test_backward_dep_c.vpr@184.13--184.94) [20192]"}
            tid_22 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[tid].Ref__Integer_value (test_backward_dep_c.vpr@184.13--184.94) [20193]"}
            HasDirectPerm(Mask, Seq#Index(a_2, tid_22), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall tid_1: int ::
      { Seq#Index(a_2, tid_1) }
      0 <= tid_1 && tid_1 < len ==> Heap[Seq#Index(a_2, tid_1), Ref__Integer_value] == 0
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { b[tid] } 0 <= tid && tid < len ==> b[tid].Ref__Integer_value == tid)
      if (*) {
        if (0 <= tid_23 && tid_23 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[tid] into b might be negative. (test_backward_dep_c.vpr@185.13--185.96) [20194]"}
            tid_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[tid] into b might exceed sequence length. (test_backward_dep_c.vpr@185.13--185.96) [20195]"}
            tid_23 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[tid].Ref__Integer_value (test_backward_dep_c.vpr@185.13--185.96) [20196]"}
            HasDirectPerm(Mask, Seq#Index(b_24, tid_23), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall tid_3: int ::
      { Seq#Index(b_24, tid_3) }
      0 <= tid_3 && tid_3 < len ==> Heap[Seq#Index(b_24, tid_3), Ref__Integer_value] == tid_3
    );
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
    assume Seq#Length(a_2) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_50 && i_50 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@187.12--187.90) [20197]"}
            i_50 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@187.12--187.90) [20198]"}
            i_50 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@187.12--187.90) [20199]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len)) && (0 <= i_7_2 && i_7_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_7_1) != Seq#Index(a_2, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len) && NoPerm < FullPerm ==> qpRange22(Seq#Index(a_2, i_7_1)) && invRecv22(Seq#Index(a_2, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        ((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < FullPerm) && qpRange22(o_4) ==> Seq#Index(a_2, invRecv22(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        0 <= i_7_1 && i_7_1 < len ==> Seq#Index(a_2, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < FullPerm) && qpRange22(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv22(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < FullPerm) && qpRange22(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(b_24) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_52 && i_52 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@189.12--189.90) [20200]"}
            i_52 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@189.12--189.90) [20201]"}
            i_52 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@189.12--189.90) [20202]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len)) && (0 <= i_9_2 && i_9_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_9_1) != Seq#Index(b_24, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len) && NoPerm < 1 / 2 ==> qpRange23(Seq#Index(b_24, i_9_1)) && invRecv23(Seq#Index(b_24, i_9_1)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        ((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < 1 / 2) && qpRange23(o_4) ==> Seq#Index(b_24, invRecv23(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@189.12--189.90) [20203]"}
      (forall i_9_1: int ::
      { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
      0 <= i_9_1 && i_9_1 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < 1 / 2) && qpRange23(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv23(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < 1 / 2) && qpRange23(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(c) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_54 && i_54 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@191.12--191.90) [20204]"}
            i_54 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@191.12--191.90) [20205]"}
            i_54 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@191.12--191.90) [20206]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len)) && (0 <= i_11_2 && i_11_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_11_1) != Seq#Index(c, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len) && NoPerm < FullPerm ==> qpRange24(Seq#Index(c, i_11_1)) && invRecv24(Seq#Index(c, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        ((0 <= invRecv24(o_4) && invRecv24(o_4) < len) && NoPerm < FullPerm) && qpRange24(o_4) ==> Seq#Index(c, invRecv24(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        0 <= i_11_1 && i_11_1 < len ==> Seq#Index(c, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv24(o_4) && invRecv24(o_4) < len) && NoPerm < FullPerm) && qpRange24(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv24(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv24(o_4) && invRecv24(o_4) < len) && NoPerm < FullPerm) && qpRange24(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
      if (*) {
        if (0 <= i_60 && i_60 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_backward_dep_c.vpr@192.12--192.89) [20207]"}
            i_60 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_backward_dep_c.vpr@192.12--192.89) [20208]"}
            i_60 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@192.12--192.89) [20209]"}
            HasDirectPerm(PostMask, Seq#Index(a_2, i_60), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_13_1: int ::
      { Seq#Index(a_2, i_13_1) }
      0 <= i_13_1 && i_13_1 < len ==> PostHeap[Seq#Index(a_2, i_13_1), Ref__Integer_value] == i_13_1 + 1
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
      if (*) {
        if (0 <= i_73 && i_73 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_backward_dep_c.vpr@193.12--193.85) [20210]"}
            i_73 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_backward_dep_c.vpr@193.12--193.85) [20211]"}
            i_73 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@193.12--193.85) [20212]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_73), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_15: int ::
      { Seq#Index(b_24, i_15) }
      0 <= i_15 && i_15 < len ==> PostHeap[Seq#Index(b_24, i_15), Ref__Integer_value] == i_15
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len - 1 ==> c[i].Ref__Integer_value == 2)
      if (*) {
        if (0 <= i_75 && i_75 < len - 1) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_backward_dep_c.vpr@194.12--194.89) [20213]"}
            i_75 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_backward_dep_c.vpr@194.12--194.89) [20214]"}
            i_75 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_backward_dep_c.vpr@194.12--194.89) [20215]"}
            HasDirectPerm(PostMask, Seq#Index(c, i_75), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_17: int ::
      { Seq#Index(c, i_17) }
      0 <= i_17 && i_17 < len - 1 ==> PostHeap[Seq#Index(c, i_17), Ref__Integer_value] == 2
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_72(diz, current_thread_id, len, b, a, c) -- test_backward_dep_c.vpr@196.3--196.58
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion diz != null might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20216]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion current_thread_id >= 0 might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20217]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion |a| == len might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20218]"}
        Seq#Length(a_2) == len;
      assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion |b| == len might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20219]"}
        Seq#Length(b_24) == len;
      assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion |c| == len might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20220]"}
        Seq#Length(c) == len;
      if (*) {
        if (0 <= j_6_1 && (j_6_1 < len && (0 <= k_6 && (k_6 < len && j_6_1 != k_6)))) {
          assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion a[j] != a[k] might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20221]"}
            Seq#Index(a_2, j_6_1) != Seq#Index(a_2, k_6);
        }
        assume false;
      }
      assume (forall j_7_1_1: int, k_7_1_1: int ::
        { Seq#Index(a_2, j_7_1_1), Seq#Index(a_2, k_7_1_1) }
        0 <= j_7_1_1 && (j_7_1_1 < len && (0 <= k_7_1_1 && (k_7_1_1 < len && j_7_1_1 != k_7_1_1))) ==> Seq#Index(a_2, j_7_1_1) != Seq#Index(a_2, k_7_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@196.3--196.58) [20222]"}
          (forall i_27: int ::
          { Seq#Index(a_2, i_27) } { Seq#Index(a_2, i_27) }
          (0 <= i_27 && i_27 < len) && dummyFunction(Heap[Seq#Index(a_2, i_27), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver a[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@196.3--196.58) [20223]"}
          (forall i_27: int, i_27_1: int ::
          { neverTriggered28(i_27), neverTriggered28(i_27_1) }
          (((i_27 != i_27_1 && (0 <= i_27 && i_27 < len)) && (0 <= i_27_1 && i_27_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_27) != Seq#Index(a_2, i_27_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@196.3--196.58) [20224]"}
          (forall i_27: int ::
          { Seq#Index(a_2, i_27) } { Seq#Index(a_2, i_27) }
          0 <= i_27 && i_27 < len ==> Mask[Seq#Index(a_2, i_27), Ref__Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver a[i]
        assume (forall i_27: int ::
          { Seq#Index(a_2, i_27) } { Seq#Index(a_2, i_27) }
          (0 <= i_27 && i_27 < len) && NoPerm < 1 / 2 ==> qpRange28(Seq#Index(a_2, i_27)) && invRecv28(Seq#Index(a_2, i_27)) == i_27
        );
        assume (forall o_4: Ref ::
          { invRecv28(o_4) }
          (0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < 1 / 2 && qpRange28(o_4)) ==> Seq#Index(a_2, invRecv28(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < 1 / 2 && qpRange28(o_4)) ==> Seq#Index(a_2, invRecv28(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < 1 / 2 && qpRange28(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (0 < len) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@196.3--196.58) [20225]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. There might be insufficient permission to access a[0].Ref__Integer_value (test_backward_dep_c.vpr@196.3--196.58) [20226]"}
            perm <= Mask[Seq#Index(a_2, 0), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(a_2, 0), Ref__Integer_value:=Mask[Seq#Index(a_2, 0), Ref__Integer_value] - perm];
      }
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@196.3--196.58) [20227]"}
          (forall i_28: int ::
          { Seq#Index(a_2, i_28) } { Seq#Index(a_2, i_28) }
          (1 <= i_28 && i_28 < (if len - 1 < len then len - 1 else len) + 1) && dummyFunction(Heap[Seq#Index(a_2, i_28), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver a[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@196.3--196.58) [20228]"}
          (forall i_28: int, i_28_1: int ::
          { neverTriggered29(i_28), neverTriggered29(i_28_1) }
          (((i_28 != i_28_1 && (1 <= i_28 && i_28 < (if len - 1 < len then len - 1 else len) + 1)) && (1 <= i_28_1 && i_28_1 < (if len - 1 < len then len - 1 else len) + 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_28) != Seq#Index(a_2, i_28_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@196.3--196.58) [20229]"}
          (forall i_28: int ::
          { Seq#Index(a_2, i_28) } { Seq#Index(a_2, i_28) }
          1 <= i_28 && i_28 < (if len - 1 < len then len - 1 else len) + 1 ==> Mask[Seq#Index(a_2, i_28), Ref__Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver a[i]
        assume (forall i_28: int ::
          { Seq#Index(a_2, i_28) } { Seq#Index(a_2, i_28) }
          (1 <= i_28 && i_28 < (if len - 1 < len then len - 1 else len) + 1) && NoPerm < 1 / 2 ==> qpRange29(Seq#Index(a_2, i_28)) && invRecv29(Seq#Index(a_2, i_28)) == i_28
        );
        assume (forall o_4: Ref ::
          { invRecv29(o_4) }
          (1 <= invRecv29(o_4) && invRecv29(o_4) < (if len - 1 < len then len - 1 else len) + 1) && (NoPerm < 1 / 2 && qpRange29(o_4)) ==> Seq#Index(a_2, invRecv29(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((1 <= invRecv29(o_4) && invRecv29(o_4) < (if len - 1 < len then len - 1 else len) + 1) && (NoPerm < 1 / 2 && qpRange29(o_4)) ==> Seq#Index(a_2, invRecv29(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((1 <= invRecv29(o_4) && invRecv29(o_4) < (if len - 1 < len then len - 1 else len) + 1) && (NoPerm < 1 / 2 && qpRange29(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (0 <= j_8 && (j_8 < len && (0 <= k_8 && (k_8 < len && j_8 != k_8)))) {
          assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion b[j] != b[k] might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20230]"}
            Seq#Index(b_24, j_8) != Seq#Index(b_24, k_8);
        }
        assume false;
      }
      assume (forall j_9_1_1: int, k_9_1: int ::
        { Seq#Index(b_24, j_9_1_1), Seq#Index(b_24, k_9_1) }
        0 <= j_9_1_1 && (j_9_1_1 < len && (0 <= k_9_1 && (k_9_1 < len && j_9_1_1 != k_9_1))) ==> Seq#Index(b_24, j_9_1_1) != Seq#Index(b_24, k_9_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@196.3--196.58) [20231]"}
          (forall i_29_1: int ::
          { Seq#Index(b_24, i_29_1) } { Seq#Index(b_24, i_29_1) }
          (0 <= i_29_1 && i_29_1 < len) && dummyFunction(Heap[Seq#Index(b_24, i_29_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver b[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Quantified resource b[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@196.3--196.58) [20232]"}
          (forall i_29_1: int, i_29_2: int ::
          { neverTriggered30(i_29_1), neverTriggered30(i_29_2) }
          (((i_29_1 != i_29_2 && (0 <= i_29_1 && i_29_1 < len)) && (0 <= i_29_2 && i_29_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_29_1) != Seq#Index(b_24, i_29_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@196.3--196.58) [20233]"}
          (forall i_29_1: int ::
          { Seq#Index(b_24, i_29_1) } { Seq#Index(b_24, i_29_1) }
          0 <= i_29_1 && i_29_1 < len ==> Mask[Seq#Index(b_24, i_29_1), Ref__Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver b[i]
        assume (forall i_29_1: int ::
          { Seq#Index(b_24, i_29_1) } { Seq#Index(b_24, i_29_1) }
          (0 <= i_29_1 && i_29_1 < len) && NoPerm < 1 / 2 ==> qpRange30(Seq#Index(b_24, i_29_1)) && invRecv30(Seq#Index(b_24, i_29_1)) == i_29_1
        );
        assume (forall o_4: Ref ::
          { invRecv30(o_4) }
          (0 <= invRecv30(o_4) && invRecv30(o_4) < len) && (NoPerm < 1 / 2 && qpRange30(o_4)) ==> Seq#Index(b_24, invRecv30(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv30(o_4) && invRecv30(o_4) < len) && (NoPerm < 1 / 2 && qpRange30(o_4)) ==> Seq#Index(b_24, invRecv30(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv30(o_4) && invRecv30(o_4) < len) && (NoPerm < 1 / 2 && qpRange30(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (0 <= j_10_2 && (j_10_2 < len && (0 <= k_10_2 && (k_10_2 < len && j_10_2 != k_10_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion c[j] != c[k] might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20234]"}
            Seq#Index(c, j_10_2) != Seq#Index(c, k_10_2);
        }
        assume false;
      }
      assume (forall j_11_1: int, k_11_1_1: int ::
        { Seq#Index(c, j_11_1), Seq#Index(c, k_11_1_1) }
        0 <= j_11_1 && (j_11_1 < len && (0 <= k_11_1_1 && (k_11_1_1 < len && j_11_1 != k_11_1_1))) ==> Seq#Index(c, j_11_1) != Seq#Index(c, k_11_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver c[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Quantified resource c[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@196.3--196.58) [20235]"}
          (forall i_30_2: int, i_30_3: int ::
          { neverTriggered31(i_30_2), neverTriggered31(i_30_3) }
          (((i_30_2 != i_30_3 && (0 <= i_30_2 && i_30_2 < len)) && (0 <= i_30_3 && i_30_3 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_30_2) != Seq#Index(c, i_30_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_backward_dep_c.vpr@196.3--196.58) [20236]"}
          (forall i_30_2: int ::
          { Seq#Index(c, i_30_2) } { Seq#Index(c, i_30_2) }
          0 <= i_30_2 && i_30_2 < len ==> Mask[Seq#Index(c, i_30_2), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver c[i]
        assume (forall i_30_2: int ::
          { Seq#Index(c, i_30_2) } { Seq#Index(c, i_30_2) }
          (0 <= i_30_2 && i_30_2 < len) && NoPerm < FullPerm ==> qpRange31(Seq#Index(c, i_30_2)) && invRecv31(Seq#Index(c, i_30_2)) == i_30_2
        );
        assume (forall o_4: Ref ::
          { invRecv31(o_4) }
          (0 <= invRecv31(o_4) && invRecv31(o_4) < len) && (NoPerm < FullPerm && qpRange31(o_4)) ==> Seq#Index(c, invRecv31(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv31(o_4) && invRecv31(o_4) < len) && (NoPerm < FullPerm && qpRange31(o_4)) ==> Seq#Index(c, invRecv31(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv31(o_4) && invRecv31(o_4) < len) && (NoPerm < FullPerm && qpRange31(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (0 <= i_31_1 && i_31_1 < (if len - 1 < len then len - 1 else len)) {
          assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion a[i + 1].Ref__Integer_value == 0 might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20237]"}
            Heap[Seq#Index(a_2, i_31_1 + 1), Ref__Integer_value] == 0;
        }
        assume false;
      }
      assume (forall i_32_1: int ::
        
        0 <= i_32_1 && i_32_1 < (if len - 1 < len then len - 1 else len) ==> Heap[Seq#Index(a_2, i_32_1 + 1), Ref__Integer_value] == 0
      );
      if (*) {
        if (0 <= i_33_1 && i_33_1 < len) {
          assert {:msg "  The precondition of method Ref__loop_main_72 might not hold. Assertion b[i].Ref__Integer_value == i might not hold. (test_backward_dep_c.vpr@196.3--196.58) [20238]"}
            Heap[Seq#Index(b_24, i_33_1), Ref__Integer_value] == i_33_1;
        }
        assume false;
      }
      assume (forall i_34_1: int ::
        { Seq#Index(b_24, i_34_1) }
        0 <= i_34_1 && i_34_1 < len ==> Heap[Seq#Index(b_24, i_34_1), Ref__Integer_value] == i_34_1
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume Seq#Length(a_2) == len;
      assume Seq#Length(b_24) == len;
      assume Seq#Length(c) == len;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@196.3--196.58) [20239]"}
        (forall i_35_1: int, i_35_2: int ::
        
        (((i_35_1 != i_35_2 && (0 <= i_35_1 && i_35_1 < len)) && (0 <= i_35_2 && i_35_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_35_1) != Seq#Index(a_2, i_35_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_35_1: int ::
          { Seq#Index(a_2, i_35_1) } { Seq#Index(a_2, i_35_1) }
          (0 <= i_35_1 && i_35_1 < len) && NoPerm < FullPerm ==> qpRange32(Seq#Index(a_2, i_35_1)) && invRecv32(Seq#Index(a_2, i_35_1)) == i_35_1
        );
        assume (forall o_4: Ref ::
          { invRecv32(o_4) }
          ((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < FullPerm) && qpRange32(o_4) ==> Seq#Index(a_2, invRecv32(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_35_1: int ::
          { Seq#Index(a_2, i_35_1) } { Seq#Index(a_2, i_35_1) }
          0 <= i_35_1 && i_35_1 < len ==> Seq#Index(a_2, i_35_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < FullPerm) && qpRange32(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv32(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < FullPerm) && qpRange32(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource b[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@196.3--196.58) [20240]"}
        (forall i_36_2: int, i_36_3: int ::
        
        (((i_36_2 != i_36_3 && (0 <= i_36_2 && i_36_2 < len)) && (0 <= i_36_3 && i_36_3 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_36_2) != Seq#Index(b_24, i_36_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_36_2: int ::
          { Seq#Index(b_24, i_36_2) } { Seq#Index(b_24, i_36_2) }
          (0 <= i_36_2 && i_36_2 < len) && NoPerm < 1 / 2 ==> qpRange33(Seq#Index(b_24, i_36_2)) && invRecv33(Seq#Index(b_24, i_36_2)) == i_36_2
        );
        assume (forall o_4: Ref ::
          { invRecv33(o_4) }
          ((0 <= invRecv33(o_4) && invRecv33(o_4) < len) && NoPerm < 1 / 2) && qpRange33(o_4) ==> Seq#Index(b_24, invRecv33(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@196.3--196.58) [20241]"}
        (forall i_36_2: int ::
        { Seq#Index(b_24, i_36_2) } { Seq#Index(b_24, i_36_2) }
        0 <= i_36_2 && i_36_2 < len ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_36_2: int ::
          { Seq#Index(b_24, i_36_2) } { Seq#Index(b_24, i_36_2) }
          (0 <= i_36_2 && i_36_2 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_36_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv33(o_4) && invRecv33(o_4) < len) && NoPerm < 1 / 2) && qpRange33(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv33(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv33(o_4) && invRecv33(o_4) < len) && NoPerm < 1 / 2) && qpRange33(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource c[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@196.3--196.58) [20242]"}
        (forall i_37: int, i_37_1: int ::
        
        (((i_37 != i_37_1 && (0 <= i_37 && i_37 < len)) && (0 <= i_37_1 && i_37_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_37) != Seq#Index(c, i_37_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_37: int ::
          { Seq#Index(c, i_37) } { Seq#Index(c, i_37) }
          (0 <= i_37 && i_37 < len) && NoPerm < FullPerm ==> qpRange34(Seq#Index(c, i_37)) && invRecv34(Seq#Index(c, i_37)) == i_37
        );
        assume (forall o_4: Ref ::
          { invRecv34(o_4) }
          ((0 <= invRecv34(o_4) && invRecv34(o_4) < len) && NoPerm < FullPerm) && qpRange34(o_4) ==> Seq#Index(c, invRecv34(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_37: int ::
          { Seq#Index(c, i_37) } { Seq#Index(c, i_37) }
          0 <= i_37 && i_37 < len ==> Seq#Index(c, i_37) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv34(o_4) && invRecv34(o_4) < len) && NoPerm < FullPerm) && qpRange34(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv34(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv34(o_4) && invRecv34(o_4) < len) && NoPerm < FullPerm) && qpRange34(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall i_38: int ::
        { Seq#Index(a_2, i_38) }
        0 <= i_38 && i_38 < len ==> Heap[Seq#Index(a_2, i_38), Ref__Integer_value] == i_38 + 1
      );
      assume (forall i_39: int ::
        { Seq#Index(b_24, i_39) }
        0 <= i_39 && i_39 < len ==> Heap[Seq#Index(b_24, i_39), Ref__Integer_value] == i_39
      );
      assume (forall i_40: int ::
        { Seq#Index(c, i_40) }
        0 <= i_40 && i_40 < (if len - 1 < len then len - 1 else len) ==> Heap[Seq#Index(c, i_40), Ref__Integer_value] == 2
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |a| == len might not hold. (test_backward_dep_c.vpr@186.11--186.21) [20243]"}
      Seq#Length(a_2) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@187.12--187.90) [20244]"}
        (forall i_18_1: int, i_18_2: int ::
        { neverTriggered25(i_18_1), neverTriggered25(i_18_2) }
        (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < len)) && (0 <= i_18_2 && i_18_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_18_1) != Seq#Index(a_2, i_18_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_backward_dep_c.vpr@187.12--187.90) [20245]"}
        (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        0 <= i_18_1 && i_18_1 < len ==> Mask[Seq#Index(a_2, i_18_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        (0 <= i_18_1 && i_18_1 < len) && NoPerm < FullPerm ==> qpRange25(Seq#Index(a_2, i_18_1)) && invRecv25(Seq#Index(a_2, i_18_1)) == i_18_1
      );
      assume (forall o_4: Ref ::
        { invRecv25(o_4) }
        (0 <= invRecv25(o_4) && invRecv25(o_4) < len) && (NoPerm < FullPerm && qpRange25(o_4)) ==> Seq#Index(a_2, invRecv25(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv25(o_4) && invRecv25(o_4) < len) && (NoPerm < FullPerm && qpRange25(o_4)) ==> Seq#Index(a_2, invRecv25(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv25(o_4) && invRecv25(o_4) < len) && (NoPerm < FullPerm && qpRange25(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |b| == len might not hold. (test_backward_dep_c.vpr@188.11--188.21) [20246]"}
      Seq#Length(b_24) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__example might not hold. Fraction 1 / 2 might be negative. (test_backward_dep_c.vpr@189.12--189.90) [20247]"}
        (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        (0 <= i_19 && i_19 < len) && dummyFunction(Heap[Seq#Index(b_24, i_19), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@189.12--189.90) [20248]"}
        (forall i_19: int, i_19_1: int ::
        { neverTriggered26(i_19), neverTriggered26(i_19_1) }
        (((i_19 != i_19_1 && (0 <= i_19 && i_19 < len)) && (0 <= i_19_1 && i_19_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_19) != Seq#Index(b_24, i_19_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_backward_dep_c.vpr@189.12--189.90) [20249]"}
        (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        0 <= i_19 && i_19 < len ==> Mask[Seq#Index(b_24, i_19), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        (0 <= i_19 && i_19 < len) && NoPerm < 1 / 2 ==> qpRange26(Seq#Index(b_24, i_19)) && invRecv26(Seq#Index(b_24, i_19)) == i_19
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        (0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < 1 / 2 && qpRange26(o_4)) ==> Seq#Index(b_24, invRecv26(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < 1 / 2 && qpRange26(o_4)) ==> Seq#Index(b_24, invRecv26(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < 1 / 2 && qpRange26(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |c| == len might not hold. (test_backward_dep_c.vpr@190.11--190.21) [20250]"}
      Seq#Length(c) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver c[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_backward_dep_c.vpr@191.12--191.90) [20251]"}
        (forall i_20_1: int, i_20_2: int ::
        { neverTriggered27(i_20_1), neverTriggered27(i_20_2) }
        (((i_20_1 != i_20_2 && (0 <= i_20_1 && i_20_1 < len)) && (0 <= i_20_2 && i_20_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_20_1) != Seq#Index(c, i_20_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_backward_dep_c.vpr@191.12--191.90) [20252]"}
        (forall i_20_1: int ::
        { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
        0 <= i_20_1 && i_20_1 < len ==> Mask[Seq#Index(c, i_20_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver c[i]
      assume (forall i_20_1: int ::
        { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
        (0 <= i_20_1 && i_20_1 < len) && NoPerm < FullPerm ==> qpRange27(Seq#Index(c, i_20_1)) && invRecv27(Seq#Index(c, i_20_1)) == i_20_1
      );
      assume (forall o_4: Ref ::
        { invRecv27(o_4) }
        (0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < FullPerm && qpRange27(o_4)) ==> Seq#Index(c, invRecv27(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < FullPerm && qpRange27(o_4)) ==> Seq#Index(c, invRecv27(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < FullPerm && qpRange27(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_21 && i_21 < len) {
        assert {:msg "  Postcondition of Ref__example might not hold. Assertion a[i].Ref__Integer_value == i + 1 might not hold. (test_backward_dep_c.vpr@192.12--192.89) [20253]"}
          Heap[Seq#Index(a_2, i_21), Ref__Integer_value] == i_21 + 1;
      }
      assume false;
    }
    assume (forall i_22_1_1: int ::
      { Seq#Index(a_2, i_22_1_1) }
      0 <= i_22_1_1 && i_22_1_1 < len ==> Heap[Seq#Index(a_2, i_22_1_1), Ref__Integer_value] == i_22_1_1 + 1
    );
    if (*) {
      if (0 <= i_23 && i_23 < len) {
        assert {:msg "  Postcondition of Ref__example might not hold. Assertion b[i].Ref__Integer_value == i might not hold. (test_backward_dep_c.vpr@193.12--193.85) [20254]"}
          Heap[Seq#Index(b_24, i_23), Ref__Integer_value] == i_23;
      }
      assume false;
    }
    assume (forall i_24_1_1: int ::
      { Seq#Index(b_24, i_24_1_1) }
      0 <= i_24_1_1 && i_24_1_1 < len ==> Heap[Seq#Index(b_24, i_24_1_1), Ref__Integer_value] == i_24_1_1
    );
    if (*) {
      if (0 <= i_25 && i_25 < len - 1) {
        assert {:msg "  Postcondition of Ref__example might not hold. Assertion c[i].Ref__Integer_value == 2 might not hold. (test_backward_dep_c.vpr@194.12--194.89) [20255]"}
          Heap[Seq#Index(c, i_25), Ref__Integer_value] == 2;
      }
      assume false;
    }
    assume (forall i_26_1_1: int ::
      { Seq#Index(c, i_26_1_1) }
      0 <= i_26_1_1 && i_26_1_1 < len - 1 ==> Heap[Seq#Index(c, i_26_1_1), Ref__Integer_value] == 2
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}