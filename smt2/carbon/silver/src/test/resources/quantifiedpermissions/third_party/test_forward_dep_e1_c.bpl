// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:13:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_e1_c.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_e1_c-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_36: Ref, f_41: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_36, f_41] }
  Heap[o_36, $allocated] ==> Heap[Heap[o_36, f_41], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_37: Ref, f_42: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_37, f_42] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_37, f_42) ==> Heap[o_37, f_42] == ExhaleHeap[o_37, f_42]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_14), ExhaleHeap[null, PredicateMaskField(pm_f_14)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsPredicateField(pm_f_14) ==> Heap[null, PredicateMaskField(pm_f_14)] == ExhaleHeap[null, PredicateMaskField(pm_f_14)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_14) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsPredicateField(pm_f_14) ==> (forall <A, B> o2_14: Ref, f_42: (Field A B) ::
    { ExhaleHeap[o2_14, f_42] }
    Heap[null, PredicateMaskField(pm_f_14)][o2_14, f_42] ==> Heap[o2_14, f_42] == ExhaleHeap[o2_14, f_42]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_14), ExhaleHeap[null, WandMaskField(pm_f_14)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsWandField(pm_f_14) ==> Heap[null, WandMaskField(pm_f_14)] == ExhaleHeap[null, WandMaskField(pm_f_14)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_14) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsWandField(pm_f_14) ==> (forall <A, B> o2_14: Ref, f_42: (Field A B) ::
    { ExhaleHeap[o2_14, f_42] }
    Heap[null, WandMaskField(pm_f_14)][o2_14, f_42] ==> Heap[o2_14, f_42] == ExhaleHeap[o2_14, f_42]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_37: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_37, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_37, $allocated] ==> ExhaleHeap[o_37, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_36: Ref, f_43: (Field A B), v: B ::
  { Heap[o_36, f_43:=v] }
  succHeap(Heap, Heap[o_36, f_43:=v])
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
function  neverTriggered13(i_9_1: int): bool;
function  neverTriggered14(i_11_1: int): bool;
function  neverTriggered15(i_13_1: int): bool;
function  neverTriggered16(i_14_1: int): bool;
function  neverTriggered17(i_15: int): bool;
function  neverTriggered18(i_16_1: int): bool;
function  neverTriggered19(i_17: int): bool;
function  neverTriggered20(i_1: int): bool;
function  neverTriggered21(i_3: int): bool;
function  neverTriggered22(i_5: int): bool;
function  neverTriggered23(i_7_1: int): bool;
function  neverTriggered24(i_9_1: int): bool;
function  neverTriggered25(i_11_1: int): bool;
function  neverTriggered26(i_12_1: int): bool;
function  neverTriggered27(i_13_1: int): bool;
function  neverTriggered28(i_14_1: int): bool;
function  neverTriggered29(i_15: int): bool;
function  neverTriggered30(i_16_1: int): bool;
function  neverTriggered31(i_17: int): bool;
function  neverTriggered32(i_18_1: int): bool;
function  neverTriggered33(i_19: int): bool;
function  neverTriggered34(i_20_1: int): bool;
function  neverTriggered35(i_21: int): bool;
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
// - height 3: count_array
// - height 2: sum_square
// - height 1: sum_array
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
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_e1_c.vpr@6.1--11.2) [30598]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@6.1--11.2) [30599]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (test_forward_dep_e1_c.vpr@10.21--10.44) [30600]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (test_forward_dep_e1_c.vpr@10.21--10.44) [30601]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (test_forward_dep_e1_c.vpr@10.21--10.44) [30602]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar)) && (forall k: int, j_9: int ::
    { Seq#Index(ar, k), Seq#Index(ar, j_9) }
    k >= 0 && (k < Seq#Length(ar) && (j_9 >= 0 && (j_9 < Seq#Length(ar) && k != j_9))) ==> Seq#Index(ar, k) != Seq#Index(ar, j_9)
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
  var k_1: int;
  var j_5: int;
  var k_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_9: int;
  var j_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_1 >= 0 && (k_1 < Seq#Length(ar) && (j_5 >= 0 && (j_5 < Seq#Length(ar) && k_1 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_e1_c.vpr@16.12--16.104) [30603]"}
            k_1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@16.12--16.104) [30604]"}
            k_1 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_forward_dep_e1_c.vpr@16.12--16.104) [30605]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@16.12--16.104) [30606]"}
            j_5 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k_6: int, j_3_1: int ::
      { Seq#Index(ar, k_6), Seq#Index(ar, j_3_1) }
      k_6 >= 0 && (k_6 < Seq#Length(ar) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ar) && k_6 != j_3_1))) ==> Seq#Index(ar, k_6) != Seq#Index(ar, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (lo <= k_2 && k_2 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_e1_c.vpr@17.13--17.95) [30607]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@17.13--17.95) [30608]"}
            k_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@17.13--17.95) [30609]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_e1_c.vpr@13.1--20.2) [30610]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@13.1--20.2) [30611]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@13.1--20.2) [30612]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (test_forward_dep_e1_c.vpr@19.40--19.68) [30613]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (test_forward_dep_e1_c.vpr@19.40--19.68) [30614]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (test_forward_dep_e1_c.vpr@19.40--19.68) [30615]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (test_forward_dep_e1_c.vpr@19.40--19.68) [30616]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (k_9 >= 0 && (k_9 < Seq#Length(ar) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar) && k_9 != j_4_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[k] != ar[j] might not hold. (test_forward_dep_e1_c.vpr@19.40--19.68) [30617]"}
                Seq#Index(ar, k_9) != Seq#Index(ar, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar, k_10_1), Seq#Index(ar, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar, k_10_1) != Seq#Index(ar, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_e1_c.vpr@19.40--19.68) [30618]"}
            (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (test_forward_dep_e1_c.vpr@19.40--19.68) [30619]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (lo <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@19.40--19.68) [30620]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && (lo <= k_11 && k_11 < hi)) && (lo <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_e1_c.vpr@19.40--19.68) [30621]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall k: int, j_9: int ::
    { Seq#Index(ar, k), Seq#Index(ar, j_9) }
    k >= 0 && (k < Seq#Length(ar) && (j_9 >= 0 && (j_9 < Seq#Length(ar) && k != j_9))) ==> Seq#Index(ar, k) != Seq#Index(ar, j_9)
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
  var k_4: int;
  var j_6: int;
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_9: int;
  var j_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
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
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_4 >= 0 && (k_4 < Seq#Length(ar) && (j_6 >= 0 && (j_6 < Seq#Length(ar) && k_4 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_e1_c.vpr@26.12--26.104) [30622]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@26.12--26.104) [30623]"}
            k_4 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_forward_dep_e1_c.vpr@26.12--26.104) [30624]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@26.12--26.104) [30625]"}
            j_6 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k_6: int, j_3_1: int ::
      { Seq#Index(ar, k_6), Seq#Index(ar, j_3_1) }
      k_6 >= 0 && (k_6 < Seq#Length(ar) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ar) && k_6 != j_3_1))) ==> Seq#Index(ar, k_6) != Seq#Index(ar, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_7) {
          if (k_7 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_forward_dep_e1_c.vpr@27.13--27.136) [30626]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_forward_dep_e1_c.vpr@27.13--27.136) [30627]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_e1_c.vpr@27.13--27.136) [30628]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@27.13--27.136) [30629]"}
            k_7 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@27.13--27.136) [30630]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_forward_dep_e1_c.vpr@22.1--30.2) [30631]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_forward_dep_e1_c.vpr@22.1--30.2) [30632]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_e1_c.vpr@22.1--30.2) [30633]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@22.1--30.2) [30634]"}
            i < Seq#Length(ar);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@22.1--30.2) [30635]"}
            HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30636]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30637]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30638]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30639]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30640]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30641]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30642]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30643]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (k_9 >= 0 && (k_9 < Seq#Length(ar) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar) && k_9 != j_4_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[k] != ar[j] might not hold. (test_forward_dep_e1_c.vpr@29.85--29.130) [30644]"}
                Seq#Index(ar, k_9) != Seq#Index(ar, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar, k_10_1), Seq#Index(ar, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar, k_10_1) != Seq#Index(ar, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_e1_c.vpr@29.85--29.130) [30645]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (test_forward_dep_e1_c.vpr@29.85--29.130) [30646]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@29.85--29.130) [30647]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_e1_c.vpr@29.85--29.130) [30648]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall k: int, j_9: int ::
    { Seq#Index(ar, k), Seq#Index(ar, j_9) }
    k >= 0 && (k < Seq#Length(ar) && (j_9 >= 0 && (j_9 < Seq#Length(ar) && k != j_9))) ==> Seq#Index(ar, k) != Seq#Index(ar, j_9)
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
  var k_10: int;
  var j_7: int;
  var k_12: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_9: int;
  var j_4_1: int;
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
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_10 >= 0 && (k_10 < Seq#Length(ar) && (j_7 >= 0 && (j_7 < Seq#Length(ar) && k_10 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_e1_c.vpr@36.12--36.104) [30649]"}
            k_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@36.12--36.104) [30650]"}
            k_10 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_forward_dep_e1_c.vpr@36.12--36.104) [30651]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@36.12--36.104) [30652]"}
            j_7 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k_6: int, j_3_1: int ::
      { Seq#Index(ar, k_6), Seq#Index(ar, j_3_1) }
      k_6 >= 0 && (k_6 < Seq#Length(ar) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ar) && k_6 != j_3_1))) ==> Seq#Index(ar, k_6) != Seq#Index(ar, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_12) {
          if (k_12 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_forward_dep_e1_c.vpr@37.13--37.136) [30653]"}
              step != 0;
            if (lo <= k_12 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_forward_dep_e1_c.vpr@37.13--37.136) [30654]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_12 && (k_12 < vmax && (lo <= k_12 mod step && k_12 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_e1_c.vpr@37.13--37.136) [30655]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@37.13--37.136) [30656]"}
            k_12 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@37.13--37.136) [30657]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_forward_dep_e1_c.vpr@32.1--40.2) [30658]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_forward_dep_e1_c.vpr@32.1--40.2) [30659]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_e1_c.vpr@32.1--40.2) [30660]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@32.1--40.2) [30661]"}
              i < Seq#Length(ar);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@32.1--40.2) [30662]"}
              HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30663]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30664]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30665]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30666]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30667]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30668]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30669]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30670]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (k_9 >= 0 && (k_9 < Seq#Length(ar) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar) && k_9 != j_4_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[k] != ar[j] might not hold. (test_forward_dep_e1_c.vpr@39.97--39.147) [30671]"}
                Seq#Index(ar, k_9) != Seq#Index(ar, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar, k_10_1), Seq#Index(ar, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar, k_10_1) != Seq#Index(ar, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_e1_c.vpr@39.97--39.147) [30672]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (test_forward_dep_e1_c.vpr@39.97--39.147) [30673]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@39.97--39.147) [30674]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_e1_c.vpr@39.97--39.147) [30675]"}
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
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_e1_c.vpr@42.1--47.2) [30676]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@42.1--47.2) [30677]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (test_forward_dep_e1_c.vpr@46.36--46.64) [30678]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (test_forward_dep_e1_c.vpr@46.36--46.64) [30679]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (test_forward_dep_e1_c.vpr@46.36--46.64) [30680]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar)) && (forall k: int, j_9: int ::
    { Seq#Index(ar, k), Seq#Index(ar, j_9) }
    k >= 0 && (k < Seq#Length(ar) && (j_9 >= 0 && (j_9 < Seq#Length(ar) && k != j_9))) ==> Seq#Index(ar, k) != Seq#Index(ar, j_9)
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
  var k_15: int;
  var j_10: int;
  var k_16: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_9: int;
  var j_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_15 >= 0 && (k_15 < Seq#Length(ar) && (j_10 >= 0 && (j_10 < Seq#Length(ar) && k_15 != j_10)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_e1_c.vpr@52.12--52.104) [30681]"}
            k_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@52.12--52.104) [30682]"}
            k_15 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_forward_dep_e1_c.vpr@52.12--52.104) [30683]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@52.12--52.104) [30684]"}
            j_10 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k_6: int, j_3_1: int ::
      { Seq#Index(ar, k_6), Seq#Index(ar, j_3_1) }
      k_6 >= 0 && (k_6 < Seq#Length(ar) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(ar) && k_6 != j_3_1))) ==> Seq#Index(ar, k_6) != Seq#Index(ar, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (0 <= k_16 && k_16 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_e1_c.vpr@53.13--53.94) [30685]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@53.13--53.94) [30686]"}
            k_16 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@53.13--53.94) [30687]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_e1_c.vpr@49.1--56.2) [30688]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_e1_c.vpr@49.1--56.2) [30689]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@49.1--56.2) [30690]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (test_forward_dep_e1_c.vpr@55.55--55.84) [30691]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (test_forward_dep_e1_c.vpr@55.55--55.84) [30692]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (test_forward_dep_e1_c.vpr@55.55--55.84) [30693]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (k_9 >= 0 && (k_9 < Seq#Length(ar) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar) && k_9 != j_4_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[k] != ar[j] might not hold. (test_forward_dep_e1_c.vpr@55.55--55.84) [30694]"}
                Seq#Index(ar, k_9) != Seq#Index(ar, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar, k_10_1), Seq#Index(ar, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar, k_10_1) != Seq#Index(ar, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_e1_c.vpr@55.55--55.84) [30695]"}
            (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (test_forward_dep_e1_c.vpr@55.55--55.84) [30696]"}
              (forall k_11: int ::
              { Seq#Index(ar, k_11) } { Seq#Index(ar, k_11) }
              (0 <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@55.55--55.84) [30697]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && (0 <= k_11 && k_11 < hi)) && (0 <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_11) != Seq#Index(ar, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_e1_c.vpr@55.55--55.84) [30698]"}
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
// Translation of method Ref__loop_main_54
// ==================================================

procedure Ref__loop_main_54(diz: Ref, current_thread_id: int, b_24: (Seq Ref), len: int, a_2: (Seq Ref), c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_17: int;
  var j_11: int;
  var k_18: int;
  var j_25: int;
  var k_19: int;
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
  var i_30: int;
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
    
    // -- Check definedness of (forall k: Int, j: Int :: { a[k], a[j] } k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j])
      if (*) {
        if (k_17 >= 0 && (k_17 < Seq#Length(a_2) && (j_11 >= 0 && (j_11 < Seq#Length(a_2) && k_17 != j_11)))) {
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might be negative. (test_forward_dep_e1_c.vpr@61.12--61.100) [30699]"}
            k_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@61.12--61.100) [30700]"}
            k_17 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might be negative. (test_forward_dep_e1_c.vpr@61.12--61.100) [30701]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@61.12--61.100) [30702]"}
            j_11 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_1: int ::
      { Seq#Index(a_2, k_1_1), Seq#Index(a_2, j_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(a_2) && (j_1 >= 0 && (j_1 < Seq#Length(a_2) && k_1_1 != j_1))) ==> Seq#Index(a_2, k_1_1) != Seq#Index(a_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { b[k], b[j] } k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j])
      if (*) {
        if (k_18 >= 0 && (k_18 < Seq#Length(b_24) && (j_25 >= 0 && (j_25 < Seq#Length(b_24) && k_18 != j_25)))) {
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might be negative. (test_forward_dep_e1_c.vpr@62.12--62.100) [30703]"}
            k_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@62.12--62.100) [30704]"}
            k_18 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might be negative. (test_forward_dep_e1_c.vpr@62.12--62.100) [30705]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@62.12--62.100) [30706]"}
            j_25 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall k_3: int, j_3_1: int ::
      { Seq#Index(b_24, k_3), Seq#Index(b_24, j_3_1) }
      k_3 >= 0 && (k_3 < Seq#Length(b_24) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(b_24) && k_3 != j_3_1))) ==> Seq#Index(b_24, k_3) != Seq#Index(b_24, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { c[k], c[j] } k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j])
      if (*) {
        if (k_19 >= 0 && (k_19 < Seq#Length(c) && (j_18 >= 0 && (j_18 < Seq#Length(c) && k_19 != j_18)))) {
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might be negative. (test_forward_dep_e1_c.vpr@63.12--63.100) [30707]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@63.12--63.100) [30708]"}
            k_19 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might be negative. (test_forward_dep_e1_c.vpr@63.12--63.100) [30709]"}
            j_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@63.12--63.100) [30710]"}
            j_18 < Seq#Length(c);
        }
        assume false;
      }
    assume (forall k_5: int, j_5_1: int ::
      { Seq#Index(c, k_5), Seq#Index(c, j_5_1) }
      k_5 >= 0 && (k_5 < Seq#Length(c) && (j_5_1 >= 0 && (j_5_1 < Seq#Length(c) && k_5 != j_5_1))) ==> Seq#Index(c, k_5) != Seq#Index(c, j_5_1)
    );
    assume state(Heap, Mask);
    if (0 < len) {
      assume Seq#Length(a_2) == len;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_18 && i_18 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@65.13--65.91) [30711]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@65.13--65.91) [30712]"}
            i_18 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@65.13--65.91) [30713]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len)) && (0 <= i_1_1 && i_1_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len) && NoPerm < FullPerm ==> qpRange9(Seq#Index(a_2, i_1)) && invRecv9(Seq#Index(a_2, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(a_2, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        0 <= i_1 && i_1 < len ==> Seq#Index(a_2, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv9(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (0 < len) {
      assume Seq#Length(b_24) == len;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_13 && i_13 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_e1_c.vpr@67.13--67.91) [30714]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@67.13--67.91) [30715]"}
            i_13 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@67.13--67.91) [30716]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < len)) && (0 <= i_3_1 && i_3_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_3) != Seq#Index(b_24, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
        (0 <= i_3 && i_3 < len) && NoPerm < 1 / 2 ==> qpRange10(Seq#Index(b_24, i_3)) && invRecv10(Seq#Index(b_24, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((0 <= invRecv10(o_4) && invRecv10(o_4) < len) && NoPerm < 1 / 2) && qpRange10(o_4) ==> Seq#Index(b_24, invRecv10(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@67.13--67.91) [30717]"}
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
        (((0 <= invRecv10(o_4) && invRecv10(o_4) < len) && NoPerm < 1 / 2) && qpRange10(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv10(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv10(o_4) && invRecv10(o_4) < len) && NoPerm < 1 / 2) && qpRange10(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (0 < len) {
      assume Seq#Length(c) == len;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_20 && i_20 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_e1_c.vpr@69.13--69.91) [30718]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@69.13--69.91) [30719]"}
            i_20 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@69.13--69.91) [30720]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < len)) && (0 <= i_5_1 && i_5_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_5) != Seq#Index(c, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        (0 <= i_5 && i_5 < len) && NoPerm < FullPerm ==> qpRange11(Seq#Index(c, i_5)) && invRecv11(Seq#Index(c, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(c, invRecv11(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        0 <= i_5 && i_5 < len ==> Seq#Index(c, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv11(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
    if (0 < len) {
      assume Seq#Length(a_2) == len;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_22 && i_22 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@71.12--71.90) [30721]"}
            i_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@71.12--71.90) [30722]"}
            i_22 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@71.12--71.90) [30723]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len)) && (0 <= i_7_2 && i_7_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_7_1) != Seq#Index(a_2, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len) && NoPerm < 1 / 2 ==> qpRange12(Seq#Index(a_2, i_7_1)) && invRecv12(Seq#Index(a_2, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < 1 / 2) && qpRange12(o_4) ==> Seq#Index(a_2, invRecv12(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@71.12--71.90) [30724]"}
      (forall i_7_1: int ::
      { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
      0 <= i_7_1 && i_7_1 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < 1 / 2) && qpRange12(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv12(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < 1 / 2) && qpRange12(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 < len) {
      assume Seq#Length(b_24) == len;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_24 && i_24 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_e1_c.vpr@73.12--73.90) [30725]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@73.12--73.90) [30726]"}
            i_24 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@73.12--73.90) [30727]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len)) && (0 <= i_9_2 && i_9_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_9_1) != Seq#Index(b_24, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len) && NoPerm < 1 / 2 ==> qpRange13(Seq#Index(b_24, i_9_1)) && invRecv13(Seq#Index(b_24, i_9_1)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < 1 / 2) && qpRange13(o_4) ==> Seq#Index(b_24, invRecv13(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@73.12--73.90) [30728]"}
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
        (((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < 1 / 2) && qpRange13(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < 1 / 2) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 < len) {
      assume Seq#Length(c) == len;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_29 && i_29 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_e1_c.vpr@75.12--75.90) [30729]"}
            i_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@75.12--75.90) [30730]"}
            i_29 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@75.12--75.90) [30731]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len)) && (0 <= i_11_2 && i_11_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_11_1) != Seq#Index(c, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len) && NoPerm < FullPerm ==> qpRange14(Seq#Index(c, i_11_1)) && invRecv14(Seq#Index(c, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(c, invRecv14(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        0 <= i_11_1 && i_11_1 < len ==> Seq#Index(c, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv14(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } (0 <= 0 ? 1 : 0) - 1 <= i && i < len - 1 ==> acc(a[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_30 && i_30 < len - 1) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@76.12--76.113) [30732]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@76.12--76.113) [30733]"}
            i_30 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@76.12--76.113) [30734]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < len - 1)) && (0 <= i_13_2 && i_13_2 < len - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_13_1) != Seq#Index(a_2, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(a_2, i_13_1) } { Seq#Index(a_2, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len - 1) && NoPerm < 1 / 2 ==> qpRange15(Seq#Index(a_2, i_13_1)) && invRecv15(Seq#Index(a_2, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        ((0 <= invRecv15(o_4) && invRecv15(o_4) < len - 1) && NoPerm < 1 / 2) && qpRange15(o_4) ==> Seq#Index(a_2, invRecv15(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@76.12--76.113) [30735]"}
      (forall i_13_1: int ::
      { Seq#Index(a_2, i_13_1) } { Seq#Index(a_2, i_13_1) }
      0 <= i_13_1 && i_13_1 < len - 1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(a_2, i_13_1) } { Seq#Index(a_2, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len - 1) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv15(o_4) && invRecv15(o_4) < len - 1) && NoPerm < 1 / 2) && qpRange15(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv15(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv15(o_4) && invRecv15(o_4) < len - 1) && NoPerm < 1 / 2) && qpRange15(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 <= Seq#Length(a_2) - 1 && Seq#Length(a_2) - 1 < len) {
      
      // -- Check definedness of acc(a[|a| - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[|a| - 1] into a might be negative. (test_forward_dep_e1_c.vpr@77.11--77.90) [30736]"}
          Seq#Length(a_2) - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[|a| - 1] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@77.11--77.90) [30737]"}
          Seq#Length(a_2) - 1 < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@77.11--77.90) [30738]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, Seq#Length(a_2) - 1) != null;
      PostMask := PostMask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value:=PostMask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_forward_dep_e1_c.vpr@79.3--79.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (0 < len) {
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Assertion |a| == len might not hold. (test_forward_dep_e1_c.vpr@70.11--70.37) [30739]"}
        Seq#Length(a_2) == len;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@71.12--71.90) [30740]"}
        (forall i_14_1: int ::
        { Seq#Index(a_2, i_14_1) } { Seq#Index(a_2, i_14_1) }
        (0 <= i_14_1 && i_14_1 < len) && dummyFunction(Heap[Seq#Index(a_2, i_14_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@71.12--71.90) [30741]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered16(i_14_1), neverTriggered16(i_14_2) }
        (((i_14_1 != i_14_2 && (0 <= i_14_1 && i_14_1 < len)) && (0 <= i_14_2 && i_14_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_14_1) != Seq#Index(a_2, i_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@71.12--71.90) [30742]"}
        (forall i_14_1: int ::
        { Seq#Index(a_2, i_14_1) } { Seq#Index(a_2, i_14_1) }
        0 <= i_14_1 && i_14_1 < len ==> Mask[Seq#Index(a_2, i_14_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_14_1: int ::
        { Seq#Index(a_2, i_14_1) } { Seq#Index(a_2, i_14_1) }
        (0 <= i_14_1 && i_14_1 < len) && NoPerm < 1 / 2 ==> qpRange16(Seq#Index(a_2, i_14_1)) && invRecv16(Seq#Index(a_2, i_14_1)) == i_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> Seq#Index(a_2, invRecv16(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> Seq#Index(a_2, invRecv16(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < 1 / 2 && qpRange16(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (0 < len) {
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Assertion |b| == len might not hold. (test_forward_dep_e1_c.vpr@72.11--72.37) [30743]"}
        Seq#Length(b_24) == len;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@73.12--73.90) [30744]"}
        (forall i_15: int ::
        { Seq#Index(b_24, i_15) } { Seq#Index(b_24, i_15) }
        (0 <= i_15 && i_15 < len) && dummyFunction(Heap[Seq#Index(b_24, i_15), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@73.12--73.90) [30745]"}
        (forall i_15: int, i_15_1: int ::
        { neverTriggered17(i_15), neverTriggered17(i_15_1) }
        (((i_15 != i_15_1 && (0 <= i_15 && i_15 < len)) && (0 <= i_15_1 && i_15_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_15) != Seq#Index(b_24, i_15_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@73.12--73.90) [30746]"}
        (forall i_15: int ::
        { Seq#Index(b_24, i_15) } { Seq#Index(b_24, i_15) }
        0 <= i_15 && i_15 < len ==> Mask[Seq#Index(b_24, i_15), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_15: int ::
        { Seq#Index(b_24, i_15) } { Seq#Index(b_24, i_15) }
        (0 <= i_15 && i_15 < len) && NoPerm < 1 / 2 ==> qpRange17(Seq#Index(b_24, i_15)) && invRecv17(Seq#Index(b_24, i_15)) == i_15
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
    if (0 < len) {
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Assertion |c| == len might not hold. (test_forward_dep_e1_c.vpr@74.11--74.37) [30747]"}
        Seq#Length(c) == len;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver c[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@75.12--75.90) [30748]"}
        (forall i_16_1: int, i_16_2: int ::
        { neverTriggered18(i_16_1), neverTriggered18(i_16_2) }
        (((i_16_1 != i_16_2 && (0 <= i_16_1 && i_16_1 < len)) && (0 <= i_16_2 && i_16_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_16_1) != Seq#Index(c, i_16_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@75.12--75.90) [30749]"}
        (forall i_16_1: int ::
        { Seq#Index(c, i_16_1) } { Seq#Index(c, i_16_1) }
        0 <= i_16_1 && i_16_1 < len ==> Mask[Seq#Index(c, i_16_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver c[i]
      assume (forall i_16_1: int ::
        { Seq#Index(c, i_16_1) } { Seq#Index(c, i_16_1) }
        (0 <= i_16_1 && i_16_1 < len) && NoPerm < FullPerm ==> qpRange18(Seq#Index(c, i_16_1)) && invRecv18(Seq#Index(c, i_16_1)) == i_16_1
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
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@76.12--76.113) [30750]"}
        (forall i_17: int ::
        { Seq#Index(a_2, i_17) } { Seq#Index(a_2, i_17) }
        (0 <= i_17 && i_17 < len - 1) && dummyFunction(Heap[Seq#Index(a_2, i_17), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@76.12--76.113) [30751]"}
        (forall i_17: int, i_17_1: int ::
        { neverTriggered19(i_17), neverTriggered19(i_17_1) }
        (((i_17 != i_17_1 && (0 <= i_17 && i_17 < len - 1)) && (0 <= i_17_1 && i_17_1 < len - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_17) != Seq#Index(a_2, i_17_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@76.12--76.113) [30752]"}
        (forall i_17: int ::
        { Seq#Index(a_2, i_17) } { Seq#Index(a_2, i_17) }
        0 <= i_17 && i_17 < len - 1 ==> Mask[Seq#Index(a_2, i_17), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_17: int ::
        { Seq#Index(a_2, i_17) } { Seq#Index(a_2, i_17) }
        (0 <= i_17 && i_17 < len - 1) && NoPerm < 1 / 2 ==> qpRange19(Seq#Index(a_2, i_17)) && invRecv19(Seq#Index(a_2, i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        (0 <= invRecv19(o_4) && invRecv19(o_4) < len - 1) && (NoPerm < 1 / 2 && qpRange19(o_4)) ==> Seq#Index(a_2, invRecv19(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv19(o_4) && invRecv19(o_4) < len - 1) && (NoPerm < 1 / 2 && qpRange19(o_4)) ==> Seq#Index(a_2, invRecv19(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv19(o_4) && invRecv19(o_4) < len - 1) && (NoPerm < 1 / 2 && qpRange19(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (0 <= Seq#Length(a_2) - 1 && Seq#Length(a_2) - 1 < len) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@77.11--77.90) [30753]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_main_54 might not hold. There might be insufficient permission to access a[|a| - 1].Ref__Integer_value (test_forward_dep_e1_c.vpr@77.11--77.90) [30754]"}
          perm <= Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__send_body_146
// ==================================================

procedure Ref__send_body_146(diz: Ref, current_thread_id: int, a_2: (Seq Ref), i: int) returns ()
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
    assume i < Seq#Length(a_2);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@86.12--86.47) [30755]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@86.12--86.47) [30756]"}
        i < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@86.12--86.47) [30757]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- test_forward_dep_e1_c.vpr@88.3--88.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__recv_body_148
// ==================================================

procedure Ref__recv_body_148(diz: Ref, current_thread_id: int, a_2: (Seq Ref), i: int) returns ()
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
    assume i <= Seq#Length(a_2);
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
    
    // -- Check definedness of acc(a[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_e1_c.vpr@95.11--95.50) [30758]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@95.11--95.50) [30759]"}
        i - 1 < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@95.11--95.50) [30760]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
    PostMask := PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value:=PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_forward_dep_e1_c.vpr@97.3--97.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__recv_body_148 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@95.11--95.50) [30761]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__recv_body_148 might not hold. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_e1_c.vpr@95.11--95.50) [30762]"}
        perm <= Mask[Seq#Index(a_2, i - 1), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_54
// ==================================================

procedure Ref__loop_body_54(diz: Ref, current_thread_id: int, len: int, b_24: (Seq Ref), a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
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
    assume i < len;
    assume state(Heap, Mask);
    assume Seq#Length(a_2) == len + 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@105.12--105.47) [30763]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@105.12--105.47) [30764]"}
        i < Seq#Length(a_2);
    perm := FullPerm;
    assume Seq#Index(a_2, i) != null;
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(b_24) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(b[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_e1_c.vpr@107.12--107.47) [30765]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@107.12--107.47) [30766]"}
        i < Seq#Length(b_24);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@107.12--107.47) [30767]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(b_24, i) != null;
    Mask := Mask[Seq#Index(b_24, i), Ref__Integer_value:=Mask[Seq#Index(b_24, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(c) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(c[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_e1_c.vpr@109.12--109.47) [30768]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@109.12--109.47) [30769]"}
        i < Seq#Length(c);
    perm := FullPerm;
    assume Seq#Index(c, i) != null;
    Mask := Mask[Seq#Index(c, i), Ref__Integer_value:=Mask[Seq#Index(c, i), Ref__Integer_value] + perm];
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
    assume i < len;
    assume state(PostHeap, PostMask);
    assume Seq#Length(a_2) == len + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@112.11--112.46) [30770]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@112.11--112.46) [30771]"}
        i < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@112.11--112.46) [30772]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
    PostMask := PostMask[Seq#Index(a_2, i), Ref__Integer_value:=PostMask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(b_24) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(b[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_e1_c.vpr@114.11--114.46) [30773]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@114.11--114.46) [30774]"}
        i < Seq#Length(b_24);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@114.11--114.46) [30775]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(b_24, i) != null;
    PostMask := PostMask[Seq#Index(b_24, i), Ref__Integer_value:=PostMask[Seq#Index(b_24, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(c) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(c[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_e1_c.vpr@116.11--116.46) [30776]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@116.11--116.46) [30777]"}
        i < Seq#Length(c);
    perm := FullPerm;
    assume Seq#Index(c, i) != null;
    PostMask := PostMask[Seq#Index(c, i), Ref__Integer_value:=PostMask[Seq#Index(c, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i > 0) {
      
      // -- Check definedness of acc(a[i - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_e1_c.vpr@117.11--117.62) [30778]"}
          i - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@117.11--117.62) [30779]"}
          i - 1 < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@117.11--117.62) [30780]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
      PostMask := PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value:=PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (i == Seq#Length(a_2) - 1) {
      
      // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@118.11--118.65) [30781]"}
          i >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@118.11--118.65) [30782]"}
          i < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@118.11--118.65) [30783]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
      PostMask := PostMask[Seq#Index(a_2, i), Ref__Integer_value:=PostMask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
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
  
  // -- Translating statement: __flatten_4 := a[i] -- test_forward_dep_e1_c.vpr@126.3--126.22
    
    // -- Check definedness of a[i]
      assert {:msg "  Assignment might fail. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@126.3--126.22) [30784]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@126.3--126.22) [30785]"}
        i < Seq#Length(a_2);
    __flatten_4 := Seq#Index(a_2, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := b[i] -- test_forward_dep_e1_c.vpr@127.3--127.22
    
    // -- Check definedness of b[i]
      assert {:msg "  Assignment might fail. Index b[i] into b might be negative. (test_forward_dep_e1_c.vpr@127.3--127.22) [30786]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index b[i] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@127.3--127.22) [30787]"}
        i < Seq#Length(b_24);
    __flatten_6 := Seq#Index(b_24, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := __flatten_6.Ref__Integer_value + 1 -- test_forward_dep_e1_c.vpr@128.3--128.52
    
    // -- Check definedness of __flatten_6.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (test_forward_dep_e1_c.vpr@128.3--128.52) [30788]"}
        HasDirectPerm(Mask, __flatten_6, Ref__Integer_value);
    __flatten_5 := Heap[__flatten_6, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4.Ref__Integer_value := __flatten_5 -- test_forward_dep_e1_c.vpr@129.3--129.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_forward_dep_e1_c.vpr@129.3--129.48) [30789]"}
      FullPerm == Mask[__flatten_4, Ref__Integer_value];
    Heap := Heap[__flatten_4, Ref__Integer_value:=__flatten_5];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i < len - 1) -- test_forward_dep_e1_c.vpr@130.3--132.4
    if (i < len - 1) {
      
      // -- Translating statement: Ref__send_body_146(diz, current_thread_id, a, i) -- test_forward_dep_e1_c.vpr@131.5--131.53
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Assertion diz != null might not hold. (test_forward_dep_e1_c.vpr@131.5--131.53) [30790]"}
            diz != null;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Assertion current_thread_id >= 0 might not hold. (test_forward_dep_e1_c.vpr@131.5--131.53) [30791]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Assertion 0 <= i might not hold. (test_forward_dep_e1_c.vpr@131.5--131.53) [30792]"}
            0 <= i;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Assertion i < |a| might not hold. (test_forward_dep_e1_c.vpr@131.5--131.53) [30793]"}
            i < Seq#Length(a_2);
          perm := 1 / 2;
          assert {:msg "  The precondition of method Ref__send_body_146 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@131.5--131.53) [30794]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__send_body_146 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@131.5--131.53) [30795]"}
              perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i > 0) -- test_forward_dep_e1_c.vpr@133.3--141.4
    if (i > 0) {
      
      // -- Translating statement: Ref__recv_body_148(diz, current_thread_id, a, i) -- test_forward_dep_e1_c.vpr@134.5--134.53
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__recv_body_148 might not hold. Assertion diz != null might not hold. (test_forward_dep_e1_c.vpr@134.5--134.53) [30796]"}
            diz != null;
          assert {:msg "  The precondition of method Ref__recv_body_148 might not hold. Assertion current_thread_id >= 0 might not hold. (test_forward_dep_e1_c.vpr@134.5--134.53) [30797]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Ref__recv_body_148 might not hold. Assertion 0 < i might not hold. (test_forward_dep_e1_c.vpr@134.5--134.53) [30798]"}
            0 < i;
          assert {:msg "  The precondition of method Ref__recv_body_148 might not hold. Assertion i <= |a| might not hold. (test_forward_dep_e1_c.vpr@134.5--134.53) [30799]"}
            i <= Seq#Length(a_2);
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@134.5--134.53) [30800]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
          Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9 := c[i] -- test_forward_dep_e1_c.vpr@135.5--135.24
        
        // -- Check definedness of c[i]
          assert {:msg "  Assignment might fail. Index c[i] into c might be negative. (test_forward_dep_e1_c.vpr@135.5--135.24) [30801]"}
            i >= 0;
          assert {:msg "  Assignment might fail. Index c[i] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@135.5--135.24) [30802]"}
            i < Seq#Length(c);
        __flatten_9 := Seq#Index(c, i);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_11 := a[i + 1] -- test_forward_dep_e1_c.vpr@136.5--136.29
        
        // -- Check definedness of a[i + 1]
          assert {:msg "  Assignment might fail. Index a[i + 1] into a might be negative. (test_forward_dep_e1_c.vpr@136.5--136.29) [30803]"}
            i + 1 >= 0;
          assert {:msg "  Assignment might fail. Index a[i + 1] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@136.5--136.29) [30804]"}
            i + 1 < Seq#Length(a_2);
        __flatten_11 := Seq#Index(a_2, i + 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_10 := __flatten_11.Ref__Integer_value + 2 -- test_forward_dep_e1_c.vpr@139.5--139.56
        
        // -- Check definedness of __flatten_11.Ref__Integer_value + 2
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_11.Ref__Integer_value (test_forward_dep_e1_c.vpr@139.5--139.56) [30805]"}
            HasDirectPerm(Mask, __flatten_11, Ref__Integer_value);
        __flatten_10 := Heap[__flatten_11, Ref__Integer_value] + 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9.Ref__Integer_value := __flatten_10 -- test_forward_dep_e1_c.vpr@140.5--140.51
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_9.Ref__Integer_value (test_forward_dep_e1_c.vpr@140.5--140.51) [30806]"}
          FullPerm == Mask[__flatten_9, Ref__Integer_value];
        Heap := Heap[__flatten_9, Ref__Integer_value:=__flatten_10];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion 0 <= i might not hold. (test_forward_dep_e1_c.vpr@110.11--110.32) [30807]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion i < len might not hold. (test_forward_dep_e1_c.vpr@110.11--110.32) [30808]"}
      i < len;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion |a| == len + 1 might not hold. (test_forward_dep_e1_c.vpr@111.11--111.25) [30809]"}
      Seq#Length(a_2) == len + 1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@112.11--112.46) [30810]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@112.11--112.46) [30811]"}
        perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion |b| == len might not hold. (test_forward_dep_e1_c.vpr@113.11--113.21) [30812]"}
      Seq#Length(b_24) == len;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@114.11--114.46) [30813]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@114.11--114.46) [30814]"}
        perm <= Mask[Seq#Index(b_24, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(b_24, i), Ref__Integer_value:=Mask[Seq#Index(b_24, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Assertion |c| == len might not hold. (test_forward_dep_e1_c.vpr@115.11--115.21) [30815]"}
      Seq#Length(c) == len;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@116.11--116.46) [30816]"}
        perm <= Mask[Seq#Index(c, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(c, i), Ref__Integer_value:=Mask[Seq#Index(c, i), Ref__Integer_value] - perm];
    if (i > 0) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@117.11--117.62) [30817]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_e1_c.vpr@117.11--117.62) [30818]"}
          perm <= Mask[Seq#Index(a_2, i - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] - perm];
    }
    if (i == Seq#Length(a_2) - 1) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@118.11--118.65) [30819]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_body_54 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@118.11--118.65) [30820]"}
          perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__guard_check_S1_S2
// ==================================================

procedure Ref__guard_check_S1_S2(diz: Ref, current_thread_id: int, len: int, b_24: (Seq Ref), a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
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
    assume i < len;
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
    assume i - 1 < len - 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__guard_check_S1_S2 might not hold. Assertion 1 <= i might not hold. (test_forward_dep_e1_c.vpr@149.11--149.17) [30821]"}
      1 <= i;
    assert {:msg "  Postcondition of Ref__guard_check_S1_S2 might not hold. Assertion i - 1 < len - 1 might not hold. (test_forward_dep_e1_c.vpr@150.11--150.26) [30822]"}
      i - 1 < len - 1;
}

// ==================================================
// Translation of method Ref__resource_check_S1_S2
// ==================================================

procedure Ref__resource_check_S1_S2(diz: Ref, current_thread_id: int, len: int, b_24: (Seq Ref), a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
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
    assume i < len;
    assume state(Heap, Mask);
    assume i - 1 < len - 1;
    assume state(Heap, Mask);
    assume i > 0;
    assume state(Heap, Mask);
    assume len <= Seq#Length(a_2);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_e1_c.vpr@161.12--161.51) [30823]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@161.12--161.51) [30824]"}
        i - 1 < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@161.12--161.51) [30825]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
    Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
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
    assume i - 1 < len - 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(a[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_e1_c.vpr@163.11--163.50) [30826]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@163.11--163.50) [30827]"}
        i - 1 < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@163.11--163.50) [30828]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
    PostMask := PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value:=PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. Assertion i - 1 < len - 1 might not hold. (test_forward_dep_e1_c.vpr@162.11--162.26) [30829]"}
      i - 1 < len - 1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@163.11--163.50) [30830]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_e1_c.vpr@163.11--163.50) [30831]"}
        perm <= Mask[Seq#Index(a_2, i - 1), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] - perm];
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
  var k_24: int;
  var j_19: int;
  var k_25: int;
  var j_23: int;
  var k_26: int;
  var j_17: int;
  var i_34: int;
  var QPMask: MaskType;
  var i_35: int;
  var i_36: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_41: int;
  var i_43: int;
  var i_45: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var k_6: int;
  var j_6_1: int;
  var k_8: int;
  var j_8: int;
  var k_10_2: int;
  var j_10_2: int;
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
    
    // -- Check definedness of (forall k: Int, j: Int :: { a[k], a[j] } k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j])
      if (*) {
        if (k_24 >= 0 && (k_24 < Seq#Length(a_2) && (j_19 >= 0 && (j_19 < Seq#Length(a_2) && k_24 != j_19)))) {
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might be negative. (test_forward_dep_e1_c.vpr@170.12--170.100) [30832]"}
            k_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@170.12--170.100) [30833]"}
            k_24 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might be negative. (test_forward_dep_e1_c.vpr@170.12--170.100) [30834]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@170.12--170.100) [30835]"}
            j_19 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_1: int ::
      { Seq#Index(a_2, k_1_1), Seq#Index(a_2, j_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(a_2) && (j_1 >= 0 && (j_1 < Seq#Length(a_2) && k_1_1 != j_1))) ==> Seq#Index(a_2, k_1_1) != Seq#Index(a_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { b[k], b[j] } k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j])
      if (*) {
        if (k_25 >= 0 && (k_25 < Seq#Length(b_24) && (j_23 >= 0 && (j_23 < Seq#Length(b_24) && k_25 != j_23)))) {
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might be negative. (test_forward_dep_e1_c.vpr@171.12--171.100) [30836]"}
            k_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@171.12--171.100) [30837]"}
            k_25 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might be negative. (test_forward_dep_e1_c.vpr@171.12--171.100) [30838]"}
            j_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@171.12--171.100) [30839]"}
            j_23 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall k_3: int, j_3_1: int ::
      { Seq#Index(b_24, k_3), Seq#Index(b_24, j_3_1) }
      k_3 >= 0 && (k_3 < Seq#Length(b_24) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(b_24) && k_3 != j_3_1))) ==> Seq#Index(b_24, k_3) != Seq#Index(b_24, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { c[k], c[j] } k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j])
      if (*) {
        if (k_26 >= 0 && (k_26 < Seq#Length(c) && (j_17 >= 0 && (j_17 < Seq#Length(c) && k_26 != j_17)))) {
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might be negative. (test_forward_dep_e1_c.vpr@172.12--172.100) [30840]"}
            k_26 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@172.12--172.100) [30841]"}
            k_26 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might be negative. (test_forward_dep_e1_c.vpr@172.12--172.100) [30842]"}
            j_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@172.12--172.100) [30843]"}
            j_17 < Seq#Length(c);
        }
        assume false;
      }
    assume (forall k_5: int, j_5_1: int ::
      { Seq#Index(c, k_5), Seq#Index(c, j_5_1) }
      k_5 >= 0 && (k_5 < Seq#Length(c) && (j_5_1 >= 0 && (j_5_1 < Seq#Length(c) && k_5 != j_5_1))) ==> Seq#Index(c, k_5) != Seq#Index(c, j_5_1)
    );
    assume state(Heap, Mask);
    assume Seq#Length(a_2) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_34 && i_34 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@174.13--174.91) [30844]"}
            i_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@174.13--174.91) [30845]"}
            i_34 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@174.13--174.91) [30846]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len)) && (0 <= i_1_1 && i_1_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len) && NoPerm < FullPerm ==> qpRange20(Seq#Index(a_2, i_1)) && invRecv20(Seq#Index(a_2, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        ((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < FullPerm) && qpRange20(o_4) ==> Seq#Index(a_2, invRecv20(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        0 <= i_1 && i_1 < len ==> Seq#Index(a_2, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv20(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_35 && i_35 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_e1_c.vpr@176.13--176.91) [30847]"}
            i_35 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@176.13--176.91) [30848]"}
            i_35 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@176.13--176.91) [30849]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < len)) && (0 <= i_3_1 && i_3_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_3) != Seq#Index(b_24, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
        (0 <= i_3 && i_3 < len) && NoPerm < 1 / 2 ==> qpRange21(Seq#Index(b_24, i_3)) && invRecv21(Seq#Index(b_24, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        ((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < 1 / 2) && qpRange21(o_4) ==> Seq#Index(b_24, invRecv21(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@176.13--176.91) [30850]"}
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
        (((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < 1 / 2) && qpRange21(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv21(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < 1 / 2) && qpRange21(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_36 && i_36 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_e1_c.vpr@178.13--178.91) [30851]"}
            i_36 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@178.13--178.91) [30852]"}
            i_36 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@178.13--178.91) [30853]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < len)) && (0 <= i_5_1 && i_5_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_5) != Seq#Index(c, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        (0 <= i_5 && i_5 < len) && NoPerm < FullPerm ==> qpRange22(Seq#Index(c, i_5)) && invRecv22(Seq#Index(c, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        ((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < FullPerm) && qpRange22(o_4) ==> Seq#Index(c, invRecv22(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        0 <= i_5 && i_5 < len ==> Seq#Index(c, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < FullPerm) && qpRange22(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv22(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < FullPerm) && qpRange22(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
    assume Seq#Length(a_2) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_41 && i_41 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_e1_c.vpr@180.12--180.90) [30854]"}
            i_41 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_e1_c.vpr@180.12--180.90) [30855]"}
            i_41 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@180.12--180.90) [30856]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len)) && (0 <= i_7_2 && i_7_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_7_1) != Seq#Index(a_2, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len) && NoPerm < FullPerm ==> qpRange23(Seq#Index(a_2, i_7_1)) && invRecv23(Seq#Index(a_2, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        ((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < FullPerm) && qpRange23(o_4) ==> Seq#Index(a_2, invRecv23(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        0 <= i_7_1 && i_7_1 < len ==> Seq#Index(a_2, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < FullPerm) && qpRange23(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv23(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < FullPerm) && qpRange23(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
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
        if (0 <= i_43 && i_43 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_e1_c.vpr@182.12--182.90) [30857]"}
            i_43 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_e1_c.vpr@182.12--182.90) [30858]"}
            i_43 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@182.12--182.90) [30859]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len)) && (0 <= i_9_2 && i_9_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_9_1) != Seq#Index(b_24, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len) && NoPerm < 1 / 2 ==> qpRange24(Seq#Index(b_24, i_9_1)) && invRecv24(Seq#Index(b_24, i_9_1)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        ((0 <= invRecv24(o_4) && invRecv24(o_4) < len) && NoPerm < 1 / 2) && qpRange24(o_4) ==> Seq#Index(b_24, invRecv24(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@182.12--182.90) [30860]"}
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
        (((0 <= invRecv24(o_4) && invRecv24(o_4) < len) && NoPerm < 1 / 2) && qpRange24(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv24(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv24(o_4) && invRecv24(o_4) < len) && NoPerm < 1 / 2) && qpRange24(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
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
        if (0 <= i_45 && i_45 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_e1_c.vpr@184.12--184.90) [30861]"}
            i_45 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_e1_c.vpr@184.12--184.90) [30862]"}
            i_45 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@184.12--184.90) [30863]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len)) && (0 <= i_11_2 && i_11_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_11_1) != Seq#Index(c, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len) && NoPerm < FullPerm ==> qpRange25(Seq#Index(c, i_11_1)) && invRecv25(Seq#Index(c, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv25(o_4) }
        ((0 <= invRecv25(o_4) && invRecv25(o_4) < len) && NoPerm < FullPerm) && qpRange25(o_4) ==> Seq#Index(c, invRecv25(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        0 <= i_11_1 && i_11_1 < len ==> Seq#Index(c, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv25(o_4) && invRecv25(o_4) < len) && NoPerm < FullPerm) && qpRange25(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv25(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv25(o_4) && invRecv25(o_4) < len) && NoPerm < FullPerm) && qpRange25(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert |a| == len -- test_forward_dep_e1_c.vpr@186.3--186.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a| == len might not hold. (test_forward_dep_e1_c.vpr@186.10--186.20) [30864]"}
      Seq#Length(a_2) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |b| == len -- test_forward_dep_e1_c.vpr@187.3--187.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |b| == len might not hold. (test_forward_dep_e1_c.vpr@187.10--187.20) [30865]"}
      Seq#Length(b_24) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |c| == len -- test_forward_dep_e1_c.vpr@188.3--188.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |c| == len might not hold. (test_forward_dep_e1_c.vpr@188.10--188.20) [30866]"}
      Seq#Length(c) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: Ref__loop_main_54(diz, current_thread_id, b, len, a, c) -- test_forward_dep_e1_c.vpr@189.3--189.58
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion diz != null might not hold. (test_forward_dep_e1_c.vpr@189.3--189.58) [30867]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion current_thread_id >= 0 might not hold. (test_forward_dep_e1_c.vpr@189.3--189.58) [30868]"}
        current_thread_id >= 0;
      if (*) {
        if (k_6 >= 0 && (k_6 < Seq#Length(a_2) && (j_6_1 >= 0 && (j_6_1 < Seq#Length(a_2) && k_6 != j_6_1)))) {
          assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion a[k] != a[j] might not hold. (test_forward_dep_e1_c.vpr@189.3--189.58) [30869]"}
            Seq#Index(a_2, k_6) != Seq#Index(a_2, j_6_1);
        }
        assume false;
      }
      assume (forall k_7_1_1: int, j_7_1_1: int ::
        { Seq#Index(a_2, k_7_1_1), Seq#Index(a_2, j_7_1_1) }
        k_7_1_1 >= 0 && (k_7_1_1 < Seq#Length(a_2) && (j_7_1_1 >= 0 && (j_7_1_1 < Seq#Length(a_2) && k_7_1_1 != j_7_1_1))) ==> Seq#Index(a_2, k_7_1_1) != Seq#Index(a_2, j_7_1_1)
      );
      if (*) {
        if (k_8 >= 0 && (k_8 < Seq#Length(b_24) && (j_8 >= 0 && (j_8 < Seq#Length(b_24) && k_8 != j_8)))) {
          assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion b[k] != b[j] might not hold. (test_forward_dep_e1_c.vpr@189.3--189.58) [30870]"}
            Seq#Index(b_24, k_8) != Seq#Index(b_24, j_8);
        }
        assume false;
      }
      assume (forall k_9_1: int, j_9_1_1: int ::
        { Seq#Index(b_24, k_9_1), Seq#Index(b_24, j_9_1_1) }
        k_9_1 >= 0 && (k_9_1 < Seq#Length(b_24) && (j_9_1_1 >= 0 && (j_9_1_1 < Seq#Length(b_24) && k_9_1 != j_9_1_1))) ==> Seq#Index(b_24, k_9_1) != Seq#Index(b_24, j_9_1_1)
      );
      if (*) {
        if (k_10_2 >= 0 && (k_10_2 < Seq#Length(c) && (j_10_2 >= 0 && (j_10_2 < Seq#Length(c) && k_10_2 != j_10_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion c[k] != c[j] might not hold. (test_forward_dep_e1_c.vpr@189.3--189.58) [30871]"}
            Seq#Index(c, k_10_2) != Seq#Index(c, j_10_2);
        }
        assume false;
      }
      assume (forall k_11_1_1: int, j_11_1: int ::
        { Seq#Index(c, k_11_1_1), Seq#Index(c, j_11_1) }
        k_11_1_1 >= 0 && (k_11_1_1 < Seq#Length(c) && (j_11_1 >= 0 && (j_11_1 < Seq#Length(c) && k_11_1_1 != j_11_1))) ==> Seq#Index(c, k_11_1_1) != Seq#Index(c, j_11_1)
      );
      if (0 < len) {
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion |a| == len might not hold. (test_forward_dep_e1_c.vpr@189.3--189.58) [30872]"}
          Seq#Length(a_2) == len;
      }
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver a[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@189.3--189.58) [30873]"}
          (forall i_15: int, i_15_1: int ::
          { neverTriggered29(i_15), neverTriggered29(i_15_1) }
          (((i_15 != i_15_1 && (0 <= i_15 && i_15 < len)) && (0 <= i_15_1 && i_15_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_15) != Seq#Index(a_2, i_15_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@189.3--189.58) [30874]"}
          (forall i_15: int ::
          { Seq#Index(a_2, i_15) } { Seq#Index(a_2, i_15) }
          0 <= i_15 && i_15 < len ==> Mask[Seq#Index(a_2, i_15), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver a[i]
        assume (forall i_15: int ::
          { Seq#Index(a_2, i_15) } { Seq#Index(a_2, i_15) }
          (0 <= i_15 && i_15 < len) && NoPerm < FullPerm ==> qpRange29(Seq#Index(a_2, i_15)) && invRecv29(Seq#Index(a_2, i_15)) == i_15
        );
        assume (forall o_4: Ref ::
          { invRecv29(o_4) }
          (0 <= invRecv29(o_4) && invRecv29(o_4) < len) && (NoPerm < FullPerm && qpRange29(o_4)) ==> Seq#Index(a_2, invRecv29(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv29(o_4) && invRecv29(o_4) < len) && (NoPerm < FullPerm && qpRange29(o_4)) ==> Seq#Index(a_2, invRecv29(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv29(o_4) && invRecv29(o_4) < len) && (NoPerm < FullPerm && qpRange29(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (0 < len) {
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion |b| == len might not hold. (test_forward_dep_e1_c.vpr@189.3--189.58) [30875]"}
          Seq#Length(b_24) == len;
      }
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@189.3--189.58) [30876]"}
          (forall i_16_1: int ::
          { Seq#Index(b_24, i_16_1) } { Seq#Index(b_24, i_16_1) }
          (0 <= i_16_1 && i_16_1 < len) && dummyFunction(Heap[Seq#Index(b_24, i_16_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver b[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@189.3--189.58) [30877]"}
          (forall i_16_1: int, i_16_2: int ::
          { neverTriggered30(i_16_1), neverTriggered30(i_16_2) }
          (((i_16_1 != i_16_2 && (0 <= i_16_1 && i_16_1 < len)) && (0 <= i_16_2 && i_16_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_16_1) != Seq#Index(b_24, i_16_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@189.3--189.58) [30878]"}
          (forall i_16_1: int ::
          { Seq#Index(b_24, i_16_1) } { Seq#Index(b_24, i_16_1) }
          0 <= i_16_1 && i_16_1 < len ==> Mask[Seq#Index(b_24, i_16_1), Ref__Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver b[i]
        assume (forall i_16_1: int ::
          { Seq#Index(b_24, i_16_1) } { Seq#Index(b_24, i_16_1) }
          (0 <= i_16_1 && i_16_1 < len) && NoPerm < 1 / 2 ==> qpRange30(Seq#Index(b_24, i_16_1)) && invRecv30(Seq#Index(b_24, i_16_1)) == i_16_1
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
      if (0 < len) {
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Assertion |c| == len might not hold. (test_forward_dep_e1_c.vpr@189.3--189.58) [30879]"}
          Seq#Length(c) == len;
      }
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver c[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@189.3--189.58) [30880]"}
          (forall i_17: int, i_17_1: int ::
          { neverTriggered31(i_17), neverTriggered31(i_17_1) }
          (((i_17 != i_17_1 && (0 <= i_17 && i_17 < len)) && (0 <= i_17_1 && i_17_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_17) != Seq#Index(c, i_17_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_54 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@189.3--189.58) [30881]"}
          (forall i_17: int ::
          { Seq#Index(c, i_17) } { Seq#Index(c, i_17) }
          0 <= i_17 && i_17 < len ==> Mask[Seq#Index(c, i_17), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver c[i]
        assume (forall i_17: int ::
          { Seq#Index(c, i_17) } { Seq#Index(c, i_17) }
          (0 <= i_17 && i_17 < len) && NoPerm < FullPerm ==> qpRange31(Seq#Index(c, i_17)) && invRecv31(Seq#Index(c, i_17)) == i_17
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
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      if (0 < len) {
        assume Seq#Length(a_2) == len;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@189.3--189.58) [30882]"}
        (forall i_18_1: int, i_18_2: int ::
        
        (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < len)) && (0 <= i_18_2 && i_18_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_18_1) != Seq#Index(a_2, i_18_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_18_1: int ::
          { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
          (0 <= i_18_1 && i_18_1 < len) && NoPerm < 1 / 2 ==> qpRange32(Seq#Index(a_2, i_18_1)) && invRecv32(Seq#Index(a_2, i_18_1)) == i_18_1
        );
        assume (forall o_4: Ref ::
          { invRecv32(o_4) }
          ((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < 1 / 2) && qpRange32(o_4) ==> Seq#Index(a_2, invRecv32(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@189.3--189.58) [30883]"}
        (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        0 <= i_18_1 && i_18_1 < len ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_18_1: int ::
          { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
          (0 <= i_18_1 && i_18_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_18_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < 1 / 2) && qpRange32(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv32(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < 1 / 2) && qpRange32(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 < len) {
        assume Seq#Length(b_24) == len;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@189.3--189.58) [30884]"}
        (forall i_19: int, i_19_1: int ::
        
        (((i_19 != i_19_1 && (0 <= i_19 && i_19 < len)) && (0 <= i_19_1 && i_19_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_19) != Seq#Index(b_24, i_19_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_19: int ::
          { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
          (0 <= i_19 && i_19 < len) && NoPerm < 1 / 2 ==> qpRange33(Seq#Index(b_24, i_19)) && invRecv33(Seq#Index(b_24, i_19)) == i_19
        );
        assume (forall o_4: Ref ::
          { invRecv33(o_4) }
          ((0 <= invRecv33(o_4) && invRecv33(o_4) < len) && NoPerm < 1 / 2) && qpRange33(o_4) ==> Seq#Index(b_24, invRecv33(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@189.3--189.58) [30885]"}
        (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        0 <= i_19 && i_19 < len ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_19: int ::
          { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
          (0 <= i_19 && i_19 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_19) != null
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
      if (0 < len) {
        assume Seq#Length(c) == len;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@189.3--189.58) [30886]"}
        (forall i_20_1: int, i_20_2: int ::
        
        (((i_20_1 != i_20_2 && (0 <= i_20_1 && i_20_1 < len)) && (0 <= i_20_2 && i_20_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_20_1) != Seq#Index(c, i_20_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_20_1: int ::
          { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
          (0 <= i_20_1 && i_20_1 < len) && NoPerm < FullPerm ==> qpRange34(Seq#Index(c, i_20_1)) && invRecv34(Seq#Index(c, i_20_1)) == i_20_1
        );
        assume (forall o_4: Ref ::
          { invRecv34(o_4) }
          ((0 <= invRecv34(o_4) && invRecv34(o_4) < len) && NoPerm < FullPerm) && qpRange34(o_4) ==> Seq#Index(c, invRecv34(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_20_1: int ::
          { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
          0 <= i_20_1 && i_20_1 < len ==> Seq#Index(c, i_20_1) != null
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
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@189.3--189.58) [30887]"}
        (forall i_21: int, i_21_1: int ::
        
        (((i_21 != i_21_1 && (0 <= i_21 && i_21 < len - 1)) && (0 <= i_21_1 && i_21_1 < len - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_21) != Seq#Index(a_2, i_21_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_21: int ::
          { Seq#Index(a_2, i_21) } { Seq#Index(a_2, i_21) }
          (0 <= i_21 && i_21 < len - 1) && NoPerm < 1 / 2 ==> qpRange35(Seq#Index(a_2, i_21)) && invRecv35(Seq#Index(a_2, i_21)) == i_21
        );
        assume (forall o_4: Ref ::
          { invRecv35(o_4) }
          ((0 <= invRecv35(o_4) && invRecv35(o_4) < len - 1) && NoPerm < 1 / 2) && qpRange35(o_4) ==> Seq#Index(a_2, invRecv35(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@189.3--189.58) [30888]"}
        (forall i_21: int ::
        { Seq#Index(a_2, i_21) } { Seq#Index(a_2, i_21) }
        0 <= i_21 && i_21 < len - 1 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_21: int ::
          { Seq#Index(a_2, i_21) } { Seq#Index(a_2, i_21) }
          (0 <= i_21 && i_21 < len - 1) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_21) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv35(o_4) && invRecv35(o_4) < len - 1) && NoPerm < 1 / 2) && qpRange35(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv35(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv35(o_4) && invRecv35(o_4) < len - 1) && NoPerm < 1 / 2) && qpRange35(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 <= Seq#Length(a_2) - 1 && Seq#Length(a_2) - 1 < len) {
        perm := 1 / 2;
        assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@189.3--189.58) [30889]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(a_2, Seq#Length(a_2) - 1) != null;
        Mask := Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |a| == len might not hold. (test_forward_dep_e1_c.vpr@179.11--179.21) [30890]"}
      Seq#Length(a_2) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@180.12--180.90) [30891]"}
        (forall i_12_1: int, i_12_2: int ::
        { neverTriggered26(i_12_1), neverTriggered26(i_12_2) }
        (((i_12_1 != i_12_2 && (0 <= i_12_1 && i_12_1 < len)) && (0 <= i_12_2 && i_12_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_12_1) != Seq#Index(a_2, i_12_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@180.12--180.90) [30892]"}
        (forall i_12_1: int ::
        { Seq#Index(a_2, i_12_1) } { Seq#Index(a_2, i_12_1) }
        0 <= i_12_1 && i_12_1 < len ==> Mask[Seq#Index(a_2, i_12_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_12_1: int ::
        { Seq#Index(a_2, i_12_1) } { Seq#Index(a_2, i_12_1) }
        (0 <= i_12_1 && i_12_1 < len) && NoPerm < FullPerm ==> qpRange26(Seq#Index(a_2, i_12_1)) && invRecv26(Seq#Index(a_2, i_12_1)) == i_12_1
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        (0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < FullPerm && qpRange26(o_4)) ==> Seq#Index(a_2, invRecv26(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < FullPerm && qpRange26(o_4)) ==> Seq#Index(a_2, invRecv26(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < FullPerm && qpRange26(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |b| == len might not hold. (test_forward_dep_e1_c.vpr@181.11--181.21) [30893]"}
      Seq#Length(b_24) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__example might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_e1_c.vpr@182.12--182.90) [30894]"}
        (forall i_13_1: int ::
        { Seq#Index(b_24, i_13_1) } { Seq#Index(b_24, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len) && dummyFunction(Heap[Seq#Index(b_24, i_13_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@182.12--182.90) [30895]"}
        (forall i_13_1: int, i_13_2: int ::
        { neverTriggered27(i_13_1), neverTriggered27(i_13_2) }
        (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < len)) && (0 <= i_13_2 && i_13_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_13_1) != Seq#Index(b_24, i_13_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@182.12--182.90) [30896]"}
        (forall i_13_1: int ::
        { Seq#Index(b_24, i_13_1) } { Seq#Index(b_24, i_13_1) }
        0 <= i_13_1 && i_13_1 < len ==> Mask[Seq#Index(b_24, i_13_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_13_1: int ::
        { Seq#Index(b_24, i_13_1) } { Seq#Index(b_24, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len) && NoPerm < 1 / 2 ==> qpRange27(Seq#Index(b_24, i_13_1)) && invRecv27(Seq#Index(b_24, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv27(o_4) }
        (0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> Seq#Index(b_24, invRecv27(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> Seq#Index(b_24, invRecv27(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < 1 / 2 && qpRange27(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |c| == len might not hold. (test_forward_dep_e1_c.vpr@183.11--183.21) [30897]"}
      Seq#Length(c) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver c[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_e1_c.vpr@184.12--184.90) [30898]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered28(i_14_1), neverTriggered28(i_14_2) }
        (((i_14_1 != i_14_2 && (0 <= i_14_1 && i_14_1 < len)) && (0 <= i_14_2 && i_14_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_14_1) != Seq#Index(c, i_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_e1_c.vpr@184.12--184.90) [30899]"}
        (forall i_14_1: int ::
        { Seq#Index(c, i_14_1) } { Seq#Index(c, i_14_1) }
        0 <= i_14_1 && i_14_1 < len ==> Mask[Seq#Index(c, i_14_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver c[i]
      assume (forall i_14_1: int ::
        { Seq#Index(c, i_14_1) } { Seq#Index(c, i_14_1) }
        (0 <= i_14_1 && i_14_1 < len) && NoPerm < FullPerm ==> qpRange28(Seq#Index(c, i_14_1)) && invRecv28(Seq#Index(c, i_14_1)) == i_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv28(o_4) }
        (0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < FullPerm && qpRange28(o_4)) ==> Seq#Index(c, invRecv28(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < FullPerm && qpRange28(o_4)) ==> Seq#Index(c, invRecv28(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < FullPerm && qpRange28(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
}