// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_143: Ref, f_57: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_143, f_57] }
  Heap[o_143, $allocated] ==> Heap[Heap[o_143, f_57], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_144: Ref, f_75: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_144, f_75] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_144, f_75) ==> Heap[o_144, f_75] == ExhaleHeap[o_144, f_75]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_52), ExhaleHeap[null, PredicateMaskField(pm_f_52)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsPredicateField(pm_f_52) ==> Heap[null, PredicateMaskField(pm_f_52)] == ExhaleHeap[null, PredicateMaskField(pm_f_52)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_52) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsPredicateField(pm_f_52) ==> (forall <A, B> o2_53: Ref, f_75: (Field A B) ::
    { ExhaleHeap[o2_53, f_75] }
    Heap[null, PredicateMaskField(pm_f_52)][o2_53, f_75] ==> Heap[o2_53, f_75] == ExhaleHeap[o2_53, f_75]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_52), ExhaleHeap[null, WandMaskField(pm_f_52)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsWandField(pm_f_52) ==> Heap[null, WandMaskField(pm_f_52)] == ExhaleHeap[null, WandMaskField(pm_f_52)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_52) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsWandField(pm_f_52) ==> (forall <A, B> o2_53: Ref, f_75: (Field A B) ::
    { ExhaleHeap[o2_53, f_75] }
    Heap[null, WandMaskField(pm_f_52)][o2_53, f_75] ==> Heap[o2_53, f_75] == ExhaleHeap[o2_53, f_75]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_144: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_144, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_144, $allocated] ==> ExhaleHeap[o_144, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_143: Ref, f_27: (Field A B), v: B ::
  { Heap[o_143, f_27:=v] }
  succHeap(Heap, Heap[o_143, f_27:=v])
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
function  neverTriggered12(i_9_1: int): bool;
function  neverTriggered13(i_11_1: int): bool;
function  neverTriggered14(i_13_1: int): bool;
function  neverTriggered15(i_15_1: int): bool;
function  neverTriggered16(i_22_1: int): bool;
function  neverTriggered17(i_23_1: int): bool;
function  neverTriggered18(i_24_1: int): bool;
function  neverTriggered19(i_25_1: int): bool;
function  neverTriggered20(i_1: int): bool;
function  neverTriggered21(i_3_2: int): bool;
function  neverTriggered22(i_5_1: int): bool;
function  neverTriggered23(i_7_1: int): bool;
function  neverTriggered24(i_9_1: int): bool;
function  neverTriggered25(i_11_1: int): bool;
function  neverTriggered26(i_18_1: int): bool;
function  neverTriggered27(i_19_1: int): bool;
function  neverTriggered28(i_20_2: int): bool;
function  neverTriggered29(i_27_2: int): bool;
function  neverTriggered30(i_28: int): bool;
function  neverTriggered31(i_29: int): bool;
function  neverTriggered32(i_32: int): bool;
function  neverTriggered33(i_33: int): bool;
function  neverTriggered34(i_34: int): bool;
function  neverTriggered35(i_35: int): bool;
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
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_c.vpr@6.1--11.2) [130736]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_c.vpr@6.1--11.2) [130737]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (test_forward_dep_c.vpr@10.21--10.44) [130738]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (test_forward_dep_c.vpr@10.21--10.44) [130739]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (test_forward_dep_c.vpr@10.21--10.44) [130740]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar_1)) && (forall k: int, j: int ::
    { Seq#Index(ar_1, k), Seq#Index(ar_1, j) }
    k >= 0 && (k < Seq#Length(ar_1) && (j >= 0 && (j < Seq#Length(ar_1) && k != j))) ==> Seq#Index(ar_1, k) != Seq#Index(ar_1, j)
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
  var k_16: int;
  var j_14: int;
  var k_6: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9_1: int;
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
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_16 >= 0 && (k_16 < Seq#Length(ar_1) && (j_14 >= 0 && (j_14 < Seq#Length(ar_1) && k_16 != j_14)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_c.vpr@16.12--16.104) [130741]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_c.vpr@16.12--16.104) [130742]"}
            k_16 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_forward_dep_c.vpr@16.12--16.104) [130743]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_forward_dep_c.vpr@16.12--16.104) [130744]"}
            j_14 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall k_6_2: int, j_3: int ::
      { Seq#Index(ar_1, k_6_2), Seq#Index(ar_1, j_3) }
      k_6_2 >= 0 && (k_6_2 < Seq#Length(ar_1) && (j_3 >= 0 && (j_3 < Seq#Length(ar_1) && k_6_2 != j_3))) ==> Seq#Index(ar_1, k_6_2) != Seq#Index(ar_1, j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (lo <= k_6 && k_6 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_c.vpr@17.13--17.95) [130745]"}
            k_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_c.vpr@17.13--17.95) [130746]"}
            k_6 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@17.13--17.95) [130747]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_c.vpr@13.1--20.2) [130748]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_c.vpr@13.1--20.2) [130749]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_forward_dep_c.vpr@13.1--20.2) [130750]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (test_forward_dep_c.vpr@19.40--19.68) [130751]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (test_forward_dep_c.vpr@19.40--19.68) [130752]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (test_forward_dep_c.vpr@19.40--19.68) [130753]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (test_forward_dep_c.vpr@19.40--19.68) [130754]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (k_9_1 >= 0 && (k_9_1 < Seq#Length(ar_1) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar_1) && k_9_1 != j_4_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[k] != ar[j] might not hold. (test_forward_dep_c.vpr@19.40--19.68) [130755]"}
                Seq#Index(ar_1, k_9_1) != Seq#Index(ar_1, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar_1, k_10_1), Seq#Index(ar_1, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar_1) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar_1) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar_1, k_10_1) != Seq#Index(ar_1, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_c.vpr@19.40--19.68) [130756]"}
            (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            lo <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (test_forward_dep_c.vpr@19.40--19.68) [130757]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (lo <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@19.40--19.68) [130758]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered2(k_11), neverTriggered2(k_11_1) }
              (((k_11 != k_11_1 && (lo <= k_11 && k_11 < hi)) && (lo <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_c.vpr@19.40--19.68) [130759]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1))) && vmax_1 <= Seq#Length(ar_1)) && (forall k: int, j: int ::
    { Seq#Index(ar_1, k), Seq#Index(ar_1, j) }
    k >= 0 && (k < Seq#Length(ar_1) && (j >= 0 && (j < Seq#Length(ar_1) && k != j))) ==> Seq#Index(ar_1, k) != Seq#Index(ar_1, j)
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
  var k_19: int;
  var j_12: int;
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9_1: int;
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
    assume i <= vmax_1;
    assume state(Heap, Mask);
    assume vmax_1 <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_19 >= 0 && (k_19 < Seq#Length(ar_1) && (j_12 >= 0 && (j_12 < Seq#Length(ar_1) && k_19 != j_12)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_c.vpr@26.12--26.104) [130760]"}
            k_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_c.vpr@26.12--26.104) [130761]"}
            k_19 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_forward_dep_c.vpr@26.12--26.104) [130762]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_forward_dep_c.vpr@26.12--26.104) [130763]"}
            j_12 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall k_6_2: int, j_3: int ::
      { Seq#Index(ar_1, k_6_2), Seq#Index(ar_1, j_3) }
      k_6_2 >= 0 && (k_6_2 < Seq#Length(ar_1) && (j_3 >= 0 && (j_3 < Seq#Length(ar_1) && k_6_2 != j_3))) ==> Seq#Index(ar_1, k_6_2) != Seq#Index(ar_1, j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_7) {
          if (k_7 < vmax_1) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_forward_dep_c.vpr@27.13--27.136) [130764]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_forward_dep_c.vpr@27.13--27.136) [130765]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax_1 && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_c.vpr@27.13--27.136) [130766]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_c.vpr@27.13--27.136) [130767]"}
            k_7 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@27.13--27.136) [130768]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_forward_dep_c.vpr@22.1--30.2) [130769]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_forward_dep_c.vpr@22.1--30.2) [130770]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_c.vpr@22.1--30.2) [130771]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_c.vpr@22.1--30.2) [130772]"}
            i < Seq#Length(ar_1);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_forward_dep_c.vpr@22.1--30.2) [130773]"}
            HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130774]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130775]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130776]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130777]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130778]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130779]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130780]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130781]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (k_9_1 >= 0 && (k_9_1 < Seq#Length(ar_1) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar_1) && k_9_1 != j_4_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[k] != ar[j] might not hold. (test_forward_dep_c.vpr@29.85--29.130) [130782]"}
                Seq#Index(ar_1, k_9_1) != Seq#Index(ar_1, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar_1, k_10_1), Seq#Index(ar_1, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar_1) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar_1) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar_1, k_10_1) != Seq#Index(ar_1, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_c.vpr@29.85--29.130) [130783]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (test_forward_dep_c.vpr@29.85--29.130) [130784]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@29.85--29.130) [130785]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered4(k_11), neverTriggered4(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_c.vpr@29.85--29.130) [130786]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax_1))) && vmax_1 <= Seq#Length(ar_1)) && (forall k: int, j: int ::
    { Seq#Index(ar_1, k), Seq#Index(ar_1, j) }
    k >= 0 && (k < Seq#Length(ar_1) && (j >= 0 && (j < Seq#Length(ar_1) && k != j))) ==> Seq#Index(ar_1, k) != Seq#Index(ar_1, j)
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
  var k_4: int;
  var j_2: int;
  var k_14: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9_1: int;
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
    assume i <= vmax_1;
    assume state(Heap, Mask);
    assume vmax_1 <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_4 >= 0 && (k_4 < Seq#Length(ar_1) && (j_2 >= 0 && (j_2 < Seq#Length(ar_1) && k_4 != j_2)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_c.vpr@36.12--36.104) [130787]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_c.vpr@36.12--36.104) [130788]"}
            k_4 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_forward_dep_c.vpr@36.12--36.104) [130789]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_forward_dep_c.vpr@36.12--36.104) [130790]"}
            j_2 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall k_6_2: int, j_3: int ::
      { Seq#Index(ar_1, k_6_2), Seq#Index(ar_1, j_3) }
      k_6_2 >= 0 && (k_6_2 < Seq#Length(ar_1) && (j_3 >= 0 && (j_3 < Seq#Length(ar_1) && k_6_2 != j_3))) ==> Seq#Index(ar_1, k_6_2) != Seq#Index(ar_1, j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_14) {
          if (k_14 < vmax_1) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_forward_dep_c.vpr@37.13--37.136) [130791]"}
              step != 0;
            if (lo <= k_14 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_forward_dep_c.vpr@37.13--37.136) [130792]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_14 && (k_14 < vmax_1 && (lo <= k_14 mod step && k_14 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_c.vpr@37.13--37.136) [130793]"}
            k_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_c.vpr@37.13--37.136) [130794]"}
            k_14 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@37.13--37.136) [130795]"}
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
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_forward_dep_c.vpr@32.1--40.2) [130796]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_forward_dep_c.vpr@32.1--40.2) [130797]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_c.vpr@32.1--40.2) [130798]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_c.vpr@32.1--40.2) [130799]"}
              i < Seq#Length(ar_1);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_forward_dep_c.vpr@32.1--40.2) [130800]"}
              HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130801]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130802]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130803]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130804]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130805]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130806]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130807]"}
            i + 1 <= vmax_1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130808]"}
            vmax_1 <= Seq#Length(ar_1);
          if (*) {
            if (k_9_1 >= 0 && (k_9_1 < Seq#Length(ar_1) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar_1) && k_9_1 != j_4_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[k] != ar[j] might not hold. (test_forward_dep_c.vpr@39.97--39.147) [130809]"}
                Seq#Index(ar_1, k_9_1) != Seq#Index(ar_1, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar_1, k_10_1), Seq#Index(ar_1, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar_1) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar_1) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar_1, k_10_1) != Seq#Index(ar_1, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_c.vpr@39.97--39.147) [130810]"}
            (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (test_forward_dep_c.vpr@39.97--39.147) [130811]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@39.97--39.147) [130812]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered6(k_11), neverTriggered6(k_11_1) }
              (((k_11 != k_11_1 && (vmin <= k_11 && (k_11 < vmax_1 && (lo <= k_11 mod step && k_11 mod step < hi)))) && (vmin <= k_11_1 && (k_11_1 < vmax_1 && (lo <= k_11_1 mod step && k_11_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_c.vpr@39.97--39.147) [130813]"}
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
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_c.vpr@42.1--47.2) [130814]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_c.vpr@42.1--47.2) [130815]"}
          i < Seq#Length(ar_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (test_forward_dep_c.vpr@46.36--46.64) [130816]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (test_forward_dep_c.vpr@46.36--46.64) [130817]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (test_forward_dep_c.vpr@46.36--46.64) [130818]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar_1)) && (forall k: int, j: int ::
    { Seq#Index(ar_1, k), Seq#Index(ar_1, j) }
    k >= 0 && (k < Seq#Length(ar_1) && (j >= 0 && (j < Seq#Length(ar_1) && k != j))) ==> Seq#Index(ar_1, k) != Seq#Index(ar_1, j)
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
  var k_9: int;
  var j_4: int;
  var k_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_9_1: int;
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
    assume hi <= Seq#Length(ar_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { ar[k], ar[j] } k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
      if (*) {
        if (k_9 >= 0 && (k_9 < Seq#Length(ar_1) && (j_4 >= 0 && (j_4 < Seq#Length(ar_1) && k_9 != j_4)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_c.vpr@52.12--52.104) [130819]"}
            k_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_c.vpr@52.12--52.104) [130820]"}
            k_9 < Seq#Length(ar_1);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (test_forward_dep_c.vpr@52.12--52.104) [130821]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (test_forward_dep_c.vpr@52.12--52.104) [130822]"}
            j_4 < Seq#Length(ar_1);
        }
        assume false;
      }
    assume (forall k_6_2: int, j_3: int ::
      { Seq#Index(ar_1, k_6_2), Seq#Index(ar_1, j_3) }
      k_6_2 >= 0 && (k_6_2 < Seq#Length(ar_1) && (j_3 >= 0 && (j_3 < Seq#Length(ar_1) && k_6_2 != j_3))) ==> Seq#Index(ar_1, k_6_2) != Seq#Index(ar_1, j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (0 <= k_2 && k_2 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_forward_dep_c.vpr@53.13--53.94) [130823]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_forward_dep_c.vpr@53.13--53.94) [130824]"}
            k_2 < Seq#Length(ar_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@53.13--53.94) [130825]"}
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
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_forward_dep_c.vpr@49.1--56.2) [130826]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_forward_dep_c.vpr@49.1--56.2) [130827]"}
          i < Seq#Length(ar_1);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_forward_dep_c.vpr@49.1--56.2) [130828]"}
          HasDirectPerm(Mask, Seq#Index(ar_1, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (test_forward_dep_c.vpr@55.55--55.84) [130829]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (test_forward_dep_c.vpr@55.55--55.84) [130830]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (test_forward_dep_c.vpr@55.55--55.84) [130831]"}
            hi <= Seq#Length(ar_1);
          if (*) {
            if (k_9_1 >= 0 && (k_9_1 < Seq#Length(ar_1) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(ar_1) && k_9_1 != j_4_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[k] != ar[j] might not hold. (test_forward_dep_c.vpr@55.55--55.84) [130832]"}
                Seq#Index(ar_1, k_9_1) != Seq#Index(ar_1, j_4_1);
            }
            assume false;
          }
          assume (forall k_10_1: int, j_5_1_1: int ::
            { Seq#Index(ar_1, k_10_1), Seq#Index(ar_1, j_5_1_1) }
            k_10_1 >= 0 && (k_10_1 < Seq#Length(ar_1) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(ar_1) && k_10_1 != j_5_1_1))) ==> Seq#Index(ar_1, k_10_1) != Seq#Index(ar_1, j_5_1_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_c.vpr@55.55--55.84) [130833]"}
            (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> Mask[Seq#Index(ar_1, k_11), Ref__Integer_value] > NoPerm
          );
          assume (forall k_11: int ::
            
            0 <= k_11 && k_11 < hi ==> wildcard < Mask[Seq#Index(ar_1, k_11), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (test_forward_dep_c.vpr@55.55--55.84) [130834]"}
              (forall k_11: int ::
              { Seq#Index(ar_1, k_11) } { Seq#Index(ar_1, k_11) }
              (0 <= k_11 && k_11 < hi) && dummyFunction(Heap[Seq#Index(ar_1, k_11), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@55.55--55.84) [130835]"}
              (forall k_11: int, k_11_1: int ::
              { neverTriggered8(k_11), neverTriggered8(k_11_1) }
              (((k_11 != k_11_1 && (0 <= k_11 && k_11 < hi)) && (0 <= k_11_1 && k_11_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar_1, k_11) != Seq#Index(ar_1, k_11_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_forward_dep_c.vpr@55.55--55.84) [130836]"}
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
// Translation of method Ref__loop_main_67
// ==================================================

procedure Ref__loop_main_67(diz: Ref, current_thread_id: int, b_24: (Seq Ref), len_3: int, a_2: (Seq Ref), c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k_25: int;
  var j_6: int;
  var k_22: int;
  var j_10: int;
  var k_29: int;
  var j_7: int;
  var i_10: int;
  var QPMask: MaskType;
  var i_17: int;
  var i_11: int;
  var i_12: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_13: int;
  var i_23: int;
  var i_24: int;
  var i_25: int;
  var perm: Perm;
  var i_27: int;
  var i_16: int;
  var i_42: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_26_1: int;
  var i_28: int;
  var i_30: int;
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
      assume Seq#Length(a_2) == len_3;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { a[k], a[j] } k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j])
      if (*) {
        if (k_25 >= 0 && (k_25 < Seq#Length(a_2) && (j_6 >= 0 && (j_6 < Seq#Length(a_2) && k_25 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might be negative. (test_forward_dep_c.vpr@62.12--62.100) [130837]"}
            k_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might exceed sequence length. (test_forward_dep_c.vpr@62.12--62.100) [130838]"}
            k_25 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might be negative. (test_forward_dep_c.vpr@62.12--62.100) [130839]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might exceed sequence length. (test_forward_dep_c.vpr@62.12--62.100) [130840]"}
            j_6 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall k_1: int, j_1: int ::
      { Seq#Index(a_2, k_1), Seq#Index(a_2, j_1) }
      k_1 >= 0 && (k_1 < Seq#Length(a_2) && (j_1 >= 0 && (j_1 < Seq#Length(a_2) && k_1 != j_1))) ==> Seq#Index(a_2, k_1) != Seq#Index(a_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { b[k], b[j] } k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j])
      if (*) {
        if (k_22 >= 0 && (k_22 < Seq#Length(b_24) && (j_10 >= 0 && (j_10 < Seq#Length(b_24) && k_22 != j_10)))) {
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might be negative. (test_forward_dep_c.vpr@63.12--63.100) [130841]"}
            k_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might exceed sequence length. (test_forward_dep_c.vpr@63.12--63.100) [130842]"}
            k_22 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might be negative. (test_forward_dep_c.vpr@63.12--63.100) [130843]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might exceed sequence length. (test_forward_dep_c.vpr@63.12--63.100) [130844]"}
            j_10 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall k_3: int, j_3: int ::
      { Seq#Index(b_24, k_3), Seq#Index(b_24, j_3) }
      k_3 >= 0 && (k_3 < Seq#Length(b_24) && (j_3 >= 0 && (j_3 < Seq#Length(b_24) && k_3 != j_3))) ==> Seq#Index(b_24, k_3) != Seq#Index(b_24, j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { c[k], c[j] } k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j])
      if (*) {
        if (k_29 >= 0 && (k_29 < Seq#Length(c) && (j_7 >= 0 && (j_7 < Seq#Length(c) && k_29 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might be negative. (test_forward_dep_c.vpr@64.12--64.100) [130845]"}
            k_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might exceed sequence length. (test_forward_dep_c.vpr@64.12--64.100) [130846]"}
            k_29 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might be negative. (test_forward_dep_c.vpr@64.12--64.100) [130847]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might exceed sequence length. (test_forward_dep_c.vpr@64.12--64.100) [130848]"}
            j_7 < Seq#Length(c);
        }
        assume false;
      }
    assume (forall k_5: int, j_5: int ::
      { Seq#Index(c, k_5), Seq#Index(c, j_5) }
      k_5 >= 0 && (k_5 < Seq#Length(c) && (j_5 >= 0 && (j_5 < Seq#Length(c) && k_5 != j_5))) ==> Seq#Index(c, k_5) != Seq#Index(c, j_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_10 && i_10 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@65.13--65.91) [130849]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@65.13--65.91) [130850]"}
            i_10 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@65.13--65.91) [130851]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len_3)) && (0 <= i_1_1 && i_1_1 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len_3) && NoPerm < FullPerm ==> qpRange9(Seq#Index(a_2, i_1)) && invRecv9(Seq#Index(a_2, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < len_3) && NoPerm < FullPerm) && qpRange9(o_9) ==> Seq#Index(a_2, invRecv9(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        0 <= i_1 && i_1 < len_3 ==> Seq#Index(a_2, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv9(o_9) && invRecv9(o_9) < len_3) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv9(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < len_3) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (0 < len_3) {
      assume Seq#Length(b_24) == len_3;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_17 && i_17 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@67.13--67.91) [130852]"}
            i_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@67.13--67.91) [130853]"}
            i_17 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@67.13--67.91) [130854]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < len_3)) && (0 <= i_3_3 && i_3_3 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_3_2) != Seq#Index(b_24, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(b_24, i_3_2) } { Seq#Index(b_24, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && NoPerm < 1 / 2 ==> qpRange10(Seq#Index(b_24, i_3_2)) && invRecv10(Seq#Index(b_24, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < 1 / 2) && qpRange10(o_9) ==> Seq#Index(b_24, invRecv10(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@67.13--67.91) [130855]"}
      (forall i_3_2: int ::
      { Seq#Index(b_24, i_3_2) } { Seq#Index(b_24, i_3_2) }
      0 <= i_3_2 && i_3_2 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(b_24, i_3_2) } { Seq#Index(b_24, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < 1 / 2) && qpRange10(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv10(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv10(o_9) && invRecv10(o_9) < len_3) && NoPerm < 1 / 2) && qpRange10(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (0 < len_3) {
      assume Seq#Length(c) == len_3;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_11 && i_11 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@69.13--69.91) [130856]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@69.13--69.91) [130857]"}
            i_11 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@69.13--69.91) [130858]"}
      (forall i_5_1: int, i_5_2: int ::
      
      (((i_5_1 != i_5_2 && (0 <= i_5_1 && i_5_1 < len_3)) && (0 <= i_5_2 && i_5_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_5_1) != Seq#Index(c, i_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_5_1: int ::
        { Seq#Index(c, i_5_1) } { Seq#Index(c, i_5_1) }
        (0 <= i_5_1 && i_5_1 < len_3) && NoPerm < FullPerm ==> qpRange11(Seq#Index(c, i_5_1)) && invRecv11(Seq#Index(c, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && NoPerm < FullPerm) && qpRange11(o_9) ==> Seq#Index(c, invRecv11(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5_1: int ::
        { Seq#Index(c, i_5_1) } { Seq#Index(c, i_5_1) }
        0 <= i_5_1 && i_5_1 < len_3 ==> Seq#Index(c, i_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv11(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv11(o_9) && invRecv11(o_9) < len_3) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
      if (*) {
        if (0 <= i_12 && i_12 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@70.13--70.86) [130859]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@70.13--70.86) [130860]"}
            i_12 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@70.13--70.86) [130861]"}
            HasDirectPerm(Mask, Seq#Index(b_24, i_12), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_7_1: int ::
      { Seq#Index(b_24, i_7_1) }
      0 <= i_7_1 && i_7_1 < len_3 ==> Heap[Seq#Index(b_24, i_7_1), Ref__Integer_value] == i_7_1
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
    if (0 < len_3) {
      assume Seq#Length(a_2) == len_3;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_13 && i_13 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@72.12--72.90) [130862]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@72.12--72.90) [130863]"}
            i_13 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@72.12--72.90) [130864]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len_3)) && (0 <= i_9_2 && i_9_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_9_1) != Seq#Index(a_2, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(a_2, i_9_1) } { Seq#Index(a_2, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len_3) && NoPerm < 1 / 2 ==> qpRange12(Seq#Index(a_2, i_9_1)) && invRecv12(Seq#Index(a_2, i_9_1)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < 1 / 2) && qpRange12(o_9) ==> Seq#Index(a_2, invRecv12(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@72.12--72.90) [130865]"}
      (forall i_9_1: int ::
      { Seq#Index(a_2, i_9_1) } { Seq#Index(a_2, i_9_1) }
      0 <= i_9_1 && i_9_1 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(a_2, i_9_1) } { Seq#Index(a_2, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < 1 / 2) && qpRange12(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv12(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < len_3) && NoPerm < 1 / 2) && qpRange12(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 < len_3) {
      assume Seq#Length(b_24) == len_3;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_23 && i_23 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@74.12--74.90) [130866]"}
            i_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@74.12--74.90) [130867]"}
            i_23 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@74.12--74.90) [130868]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len_3)) && (0 <= i_11_2 && i_11_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_11_1) != Seq#Index(b_24, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(b_24, i_11_1) } { Seq#Index(b_24, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len_3) && NoPerm < 1 / 2 ==> qpRange13(Seq#Index(b_24, i_11_1)) && invRecv13(Seq#Index(b_24, i_11_1)) == i_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < 1 / 2) && qpRange13(o_9) ==> Seq#Index(b_24, invRecv13(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@74.12--74.90) [130869]"}
      (forall i_11_1: int ::
      { Seq#Index(b_24, i_11_1) } { Seq#Index(b_24, i_11_1) }
      0 <= i_11_1 && i_11_1 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(b_24, i_11_1) } { Seq#Index(b_24, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < 1 / 2) && qpRange13(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv13(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv13(o_9) && invRecv13(o_9) < len_3) && NoPerm < 1 / 2) && qpRange13(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 < len_3) {
      assume Seq#Length(c) == len_3;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_24 && i_24 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@76.12--76.90) [130870]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@76.12--76.90) [130871]"}
            i_24 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@76.12--76.90) [130872]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < len_3)) && (0 <= i_13_2 && i_13_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_13_1) != Seq#Index(c, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(c, i_13_1) } { Seq#Index(c, i_13_1) }
        (0 <= i_13_1 && i_13_1 < len_3) && NoPerm < FullPerm ==> qpRange14(Seq#Index(c, i_13_1)) && invRecv14(Seq#Index(c, i_13_1)) == i_13_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        ((0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && NoPerm < FullPerm) && qpRange14(o_9) ==> Seq#Index(c, invRecv14(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(c, i_13_1) } { Seq#Index(c, i_13_1) }
        0 <= i_13_1 && i_13_1 < len_3 ==> Seq#Index(c, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv14(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv14(o_9) && invRecv14(o_9) < len_3) && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } (0 <= 0 ? 1 : 0) - 1 <= i && i < len - 1 ==> acc(a[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_25 && i_25 < len_3 - 1) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@77.12--77.113) [130873]"}
            i_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@77.12--77.113) [130874]"}
            i_25 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@77.12--77.113) [130875]"}
      (forall i_15_1: int, i_15_2: int ::
      
      (((i_15_1 != i_15_2 && (0 <= i_15_1 && i_15_1 < len_3 - 1)) && (0 <= i_15_2 && i_15_2 < len_3 - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_15_1) != Seq#Index(a_2, i_15_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_15_1: int ::
        { Seq#Index(a_2, i_15_1) } { Seq#Index(a_2, i_15_1) }
        (0 <= i_15_1 && i_15_1 < len_3 - 1) && NoPerm < 1 / 2 ==> qpRange15(Seq#Index(a_2, i_15_1)) && invRecv15(Seq#Index(a_2, i_15_1)) == i_15_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        ((0 <= invRecv15(o_9) && invRecv15(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange15(o_9) ==> Seq#Index(a_2, invRecv15(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@77.12--77.113) [130876]"}
      (forall i_15_1: int ::
      { Seq#Index(a_2, i_15_1) } { Seq#Index(a_2, i_15_1) }
      0 <= i_15_1 && i_15_1 < len_3 - 1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_15_1: int ::
        { Seq#Index(a_2, i_15_1) } { Seq#Index(a_2, i_15_1) }
        (0 <= i_15_1 && i_15_1 < len_3 - 1) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_15_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv15(o_9) && invRecv15(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange15(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv15(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv15(o_9) && invRecv15(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange15(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 <= Seq#Length(a_2) - 1 && Seq#Length(a_2) - 1 < len_3) {
      
      // -- Check definedness of acc(a[|a| - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[|a| - 1] into a might be negative. (test_forward_dep_c.vpr@78.11--78.90) [130877]"}
          Seq#Length(a_2) - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[|a| - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@78.11--78.90) [130878]"}
          Seq#Length(a_2) - 1 < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@78.11--78.90) [130879]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, Seq#Length(a_2) - 1) != null;
      PostMask := PostMask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value:=PostMask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
      if (*) {
        if (0 <= i_27 && i_27 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@79.12--79.89) [130880]"}
            i_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@79.12--79.89) [130881]"}
            i_27 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@79.12--79.89) [130882]"}
            HasDirectPerm(PostMask, Seq#Index(a_2, i_27), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_17_1: int ::
      { Seq#Index(a_2, i_17_1) }
      0 <= i_17_1 && i_17_1 < len_3 ==> PostHeap[Seq#Index(a_2, i_17_1), Ref__Integer_value] == i_17_1 + 1
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
      if (*) {
        if (0 <= i_16 && i_16 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@80.12--80.85) [130883]"}
            i_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@80.12--80.85) [130884]"}
            i_16 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@80.12--80.85) [130885]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_16), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_19_1: int ::
      { Seq#Index(b_24, i_19_1) }
      0 <= i_19_1 && i_19_1 < len_3 ==> PostHeap[Seq#Index(b_24, i_19_1), Ref__Integer_value] == i_19_1
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2)
      if (*) {
        if (1 <= i_42 && i_42 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@81.12--81.104) [130886]"}
            i_42 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@81.12--81.104) [130887]"}
            i_42 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_c.vpr@81.12--81.104) [130888]"}
            HasDirectPerm(PostMask, Seq#Index(c, i_42), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_21_1: int ::
      { Seq#Index(c, i_21_1) }
      1 <= i_21_1 && i_21_1 < len_3 ==> PostHeap[Seq#Index(c, i_21_1), Ref__Integer_value] == i_21_1 + 2
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_forward_dep_c.vpr@83.3--83.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (0 < len_3) {
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Assertion |a| == len might not hold. (test_forward_dep_c.vpr@71.11--71.37) [130889]"}
        Seq#Length(a_2) == len_3;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@72.12--72.90) [130890]"}
        (forall i_22_1: int ::
        { Seq#Index(a_2, i_22_1) } { Seq#Index(a_2, i_22_1) }
        (0 <= i_22_1 && i_22_1 < len_3) && dummyFunction(Heap[Seq#Index(a_2, i_22_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@72.12--72.90) [130891]"}
        (forall i_22_1: int, i_22_2: int ::
        { neverTriggered16(i_22_1), neverTriggered16(i_22_2) }
        (((i_22_1 != i_22_2 && (0 <= i_22_1 && i_22_1 < len_3)) && (0 <= i_22_2 && i_22_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_22_1) != Seq#Index(a_2, i_22_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@72.12--72.90) [130892]"}
        (forall i_22_1: int ::
        { Seq#Index(a_2, i_22_1) } { Seq#Index(a_2, i_22_1) }
        0 <= i_22_1 && i_22_1 < len_3 ==> Mask[Seq#Index(a_2, i_22_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_22_1: int ::
        { Seq#Index(a_2, i_22_1) } { Seq#Index(a_2, i_22_1) }
        (0 <= i_22_1 && i_22_1 < len_3) && NoPerm < 1 / 2 ==> qpRange16(Seq#Index(a_2, i_22_1)) && invRecv16(Seq#Index(a_2, i_22_1)) == i_22_1
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        (0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange16(o_9)) ==> Seq#Index(a_2, invRecv16(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange16(o_9)) ==> Seq#Index(a_2, invRecv16(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv16(o_9) && invRecv16(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange16(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (0 < len_3) {
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Assertion |b| == len might not hold. (test_forward_dep_c.vpr@73.11--73.37) [130893]"}
        Seq#Length(b_24) == len_3;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@74.12--74.90) [130894]"}
        (forall i_23_1: int ::
        { Seq#Index(b_24, i_23_1) } { Seq#Index(b_24, i_23_1) }
        (0 <= i_23_1 && i_23_1 < len_3) && dummyFunction(Heap[Seq#Index(b_24, i_23_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@74.12--74.90) [130895]"}
        (forall i_23_1: int, i_23_2: int ::
        { neverTriggered17(i_23_1), neverTriggered17(i_23_2) }
        (((i_23_1 != i_23_2 && (0 <= i_23_1 && i_23_1 < len_3)) && (0 <= i_23_2 && i_23_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_23_1) != Seq#Index(b_24, i_23_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@74.12--74.90) [130896]"}
        (forall i_23_1: int ::
        { Seq#Index(b_24, i_23_1) } { Seq#Index(b_24, i_23_1) }
        0 <= i_23_1 && i_23_1 < len_3 ==> Mask[Seq#Index(b_24, i_23_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_23_1: int ::
        { Seq#Index(b_24, i_23_1) } { Seq#Index(b_24, i_23_1) }
        (0 <= i_23_1 && i_23_1 < len_3) && NoPerm < 1 / 2 ==> qpRange17(Seq#Index(b_24, i_23_1)) && invRecv17(Seq#Index(b_24, i_23_1)) == i_23_1
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        (0 <= invRecv17(o_9) && invRecv17(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange17(o_9)) ==> Seq#Index(b_24, invRecv17(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv17(o_9) && invRecv17(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange17(o_9)) ==> Seq#Index(b_24, invRecv17(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv17(o_9) && invRecv17(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange17(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (0 < len_3) {
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Assertion |c| == len might not hold. (test_forward_dep_c.vpr@75.11--75.37) [130897]"}
        Seq#Length(c) == len_3;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver c[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@76.12--76.90) [130898]"}
        (forall i_24_1: int, i_24_2: int ::
        { neverTriggered18(i_24_1), neverTriggered18(i_24_2) }
        (((i_24_1 != i_24_2 && (0 <= i_24_1 && i_24_1 < len_3)) && (0 <= i_24_2 && i_24_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_24_1) != Seq#Index(c, i_24_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_c.vpr@76.12--76.90) [130899]"}
        (forall i_24_1: int ::
        { Seq#Index(c, i_24_1) } { Seq#Index(c, i_24_1) }
        0 <= i_24_1 && i_24_1 < len_3 ==> Mask[Seq#Index(c, i_24_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver c[i]
      assume (forall i_24_1: int ::
        { Seq#Index(c, i_24_1) } { Seq#Index(c, i_24_1) }
        (0 <= i_24_1 && i_24_1 < len_3) && NoPerm < FullPerm ==> qpRange18(Seq#Index(c, i_24_1)) && invRecv18(Seq#Index(c, i_24_1)) == i_24_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        (0 <= invRecv18(o_9) && invRecv18(o_9) < len_3) && (NoPerm < FullPerm && qpRange18(o_9)) ==> Seq#Index(c, invRecv18(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv18(o_9) && invRecv18(o_9) < len_3) && (NoPerm < FullPerm && qpRange18(o_9)) ==> Seq#Index(c, invRecv18(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv18(o_9) && invRecv18(o_9) < len_3) && (NoPerm < FullPerm && qpRange18(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@77.12--77.113) [130900]"}
        (forall i_25_1: int ::
        { Seq#Index(a_2, i_25_1) } { Seq#Index(a_2, i_25_1) }
        (0 <= i_25_1 && i_25_1 < len_3 - 1) && dummyFunction(Heap[Seq#Index(a_2, i_25_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@77.12--77.113) [130901]"}
        (forall i_25_1: int, i_25_2: int ::
        { neverTriggered19(i_25_1), neverTriggered19(i_25_2) }
        (((i_25_1 != i_25_2 && (0 <= i_25_1 && i_25_1 < len_3 - 1)) && (0 <= i_25_2 && i_25_2 < len_3 - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_25_1) != Seq#Index(a_2, i_25_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@77.12--77.113) [130902]"}
        (forall i_25_1: int ::
        { Seq#Index(a_2, i_25_1) } { Seq#Index(a_2, i_25_1) }
        0 <= i_25_1 && i_25_1 < len_3 - 1 ==> Mask[Seq#Index(a_2, i_25_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_25_1: int ::
        { Seq#Index(a_2, i_25_1) } { Seq#Index(a_2, i_25_1) }
        (0 <= i_25_1 && i_25_1 < len_3 - 1) && NoPerm < 1 / 2 ==> qpRange19(Seq#Index(a_2, i_25_1)) && invRecv19(Seq#Index(a_2, i_25_1)) == i_25_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        (0 <= invRecv19(o_9) && invRecv19(o_9) < len_3 - 1) && (NoPerm < 1 / 2 && qpRange19(o_9)) ==> Seq#Index(a_2, invRecv19(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv19(o_9) && invRecv19(o_9) < len_3 - 1) && (NoPerm < 1 / 2 && qpRange19(o_9)) ==> Seq#Index(a_2, invRecv19(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv19(o_9) && invRecv19(o_9) < len_3 - 1) && (NoPerm < 1 / 2 && qpRange19(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (0 <= Seq#Length(a_2) - 1 && Seq#Length(a_2) - 1 < len_3) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@78.11--78.90) [130903]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. There might be insufficient permission to access a[|a| - 1].Ref__Integer_value (test_forward_dep_c.vpr@78.11--78.90) [130904]"}
          perm <= Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value] - perm];
    }
    if (*) {
      if (0 <= i_26_1 && i_26_1 < len_3) {
        assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Assertion a[i].Ref__Integer_value == i + 1 might not hold. (test_forward_dep_c.vpr@79.12--79.89) [130905]"}
          Heap[Seq#Index(a_2, i_26_1), Ref__Integer_value] == i_26_1 + 1;
      }
      assume false;
    }
    assume (forall i_27_1: int ::
      { Seq#Index(a_2, i_27_1) }
      0 <= i_27_1 && i_27_1 < len_3 ==> Heap[Seq#Index(a_2, i_27_1), Ref__Integer_value] == i_27_1 + 1
    );
    if (*) {
      if (0 <= i_28 && i_28 < len_3) {
        assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Assertion b[i].Ref__Integer_value == i might not hold. (test_forward_dep_c.vpr@80.12--80.85) [130906]"}
          Heap[Seq#Index(b_24, i_28), Ref__Integer_value] == i_28;
      }
      assume false;
    }
    assume (forall i_29_1: int ::
      { Seq#Index(b_24, i_29_1) }
      0 <= i_29_1 && i_29_1 < len_3 ==> Heap[Seq#Index(b_24, i_29_1), Ref__Integer_value] == i_29_1
    );
    if (*) {
      if (1 <= i_30 && i_30 < len_3) {
        assert {:msg "  Postcondition of Ref__loop_main_67 might not hold. Assertion c[i].Ref__Integer_value == i + 2 might not hold. (test_forward_dep_c.vpr@81.12--81.104) [130907]"}
          Heap[Seq#Index(c, i_30), Ref__Integer_value] == i_30 + 2;
      }
      assume false;
    }
    assume (forall i_31_1: int ::
      { Seq#Index(c, i_31_1) }
      1 <= i_31_1 && i_31_1 < len_3 ==> Heap[Seq#Index(c, i_31_1), Ref__Integer_value] == i_31_1 + 2
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__send_body_183
// ==================================================

procedure Ref__send_body_183(diz: Ref, current_thread_id: int, a_2: (Seq Ref), i: int) returns ()
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
    assume 0 <= i;
    assume i < Seq#Length(a_2);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@90.12--90.47) [130908]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@90.12--90.47) [130909]"}
        i < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@90.12--90.47) [130910]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of a[i].Ref__Integer_value == i + 1
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@91.12--91.44) [130911]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@91.12--91.44) [130912]"}
        i < Seq#Length(a_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@91.12--91.44) [130913]"}
        HasDirectPerm(Mask, Seq#Index(a_2, i), Ref__Integer_value);
    assume Heap[Seq#Index(a_2, i), Ref__Integer_value] == i + 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- test_forward_dep_c.vpr@93.3--93.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__recv_body_185
// ==================================================

procedure Ref__recv_body_185(diz: Ref, current_thread_id: int, a_2: (Seq Ref), i: int) returns ()
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
    assume 0 < i;
    assume i <= Seq#Length(a_2);
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
    
    // -- Check definedness of acc(a[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_c.vpr@100.11--100.50) [130914]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@100.11--100.50) [130915]"}
        i - 1 < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@100.11--100.50) [130916]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
    PostMask := PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value:=PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a[i - 1].Ref__Integer_value == i
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_c.vpr@101.11--101.43) [130917]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@101.11--101.43) [130918]"}
        i - 1 < Seq#Length(a_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_c.vpr@101.11--101.43) [130919]"}
        HasDirectPerm(PostMask, Seq#Index(a_2, i - 1), Ref__Integer_value);
    assume PostHeap[Seq#Index(a_2, i - 1), Ref__Integer_value] == i;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_forward_dep_c.vpr@103.3--103.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__recv_body_185 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@100.11--100.50) [130920]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__recv_body_185 might not hold. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_c.vpr@100.11--100.50) [130921]"}
        perm <= Mask[Seq#Index(a_2, i - 1), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__recv_body_185 might not hold. Assertion a[i - 1].Ref__Integer_value == i might not hold. (test_forward_dep_c.vpr@101.11--101.43) [130922]"}
      Heap[Seq#Index(a_2, i - 1), Ref__Integer_value] == i;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_67
// ==================================================

procedure Ref__loop_body_67(diz: Ref, current_thread_id: int, len_3: int, b_24: (Seq Ref), a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_4: Ref;
  var __flatten_6: Ref;
  var __flatten_9: Ref;
  var __flatten_11: Ref;
  var __flatten_5: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    assume Seq#Length(a_2) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@111.12--111.47) [130923]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@111.12--111.47) [130924]"}
        i < Seq#Length(a_2);
    perm := FullPerm;
    assume Seq#Index(a_2, i) != null;
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(b_24) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(b[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@113.12--113.47) [130925]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@113.12--113.47) [130926]"}
        i < Seq#Length(b_24);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@113.12--113.47) [130927]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(b_24, i) != null;
    Mask := Mask[Seq#Index(b_24, i), Ref__Integer_value:=Mask[Seq#Index(b_24, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(c) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(c[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@115.12--115.47) [130928]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@115.12--115.47) [130929]"}
        i < Seq#Length(c);
    perm := FullPerm;
    assume Seq#Index(c, i) != null;
    Mask := Mask[Seq#Index(c, i), Ref__Integer_value:=Mask[Seq#Index(c, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of b[i].Ref__Integer_value == i
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@116.12--116.40) [130930]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@116.12--116.40) [130931]"}
        i < Seq#Length(b_24);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@116.12--116.40) [130932]"}
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
    assume 0 <= i;
    assume i < len_3;
    assume state(PostHeap, PostMask);
    assume Seq#Length(a_2) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@119.11--119.46) [130933]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@119.11--119.46) [130934]"}
        i < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@119.11--119.46) [130935]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
    PostMask := PostMask[Seq#Index(a_2, i), Ref__Integer_value:=PostMask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(b_24) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(b[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@121.11--121.46) [130936]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@121.11--121.46) [130937]"}
        i < Seq#Length(b_24);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@121.11--121.46) [130938]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(b_24, i) != null;
    PostMask := PostMask[Seq#Index(b_24, i), Ref__Integer_value:=PostMask[Seq#Index(b_24, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(c) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(c[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@123.11--123.46) [130939]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@123.11--123.46) [130940]"}
        i < Seq#Length(c);
    perm := FullPerm;
    assume Seq#Index(c, i) != null;
    PostMask := PostMask[Seq#Index(c, i), Ref__Integer_value:=PostMask[Seq#Index(c, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i > 0) {
      
      // -- Check definedness of acc(a[i - 1].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_c.vpr@124.11--124.62) [130941]"}
          i - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@124.11--124.62) [130942]"}
          i - 1 < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@124.11--124.62) [130943]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
      PostMask := PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value:=PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (i == Seq#Length(a_2) - 1) {
      
      // -- Check definedness of acc(a[i].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@125.11--125.65) [130944]"}
          i >= 0;
        assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@125.11--125.65) [130945]"}
          i < Seq#Length(a_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@125.11--125.65) [130946]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(a_2, i) != null;
      PostMask := PostMask[Seq#Index(a_2, i), Ref__Integer_value:=PostMask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a[i].Ref__Integer_value == i + 1
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@126.11--126.43) [130947]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@126.11--126.43) [130948]"}
        i < Seq#Length(a_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@126.11--126.43) [130949]"}
        HasDirectPerm(PostMask, Seq#Index(a_2, i), Ref__Integer_value);
    assume PostHeap[Seq#Index(a_2, i), Ref__Integer_value] == i + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of b[i].Ref__Integer_value == i
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@127.11--127.39) [130950]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@127.11--127.39) [130951]"}
        i < Seq#Length(b_24);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@127.11--127.39) [130952]"}
        HasDirectPerm(PostMask, Seq#Index(b_24, i), Ref__Integer_value);
    assume PostHeap[Seq#Index(b_24, i), Ref__Integer_value] == i;
    assume state(PostHeap, PostMask);
    if (i > 0) {
      
      // -- Check definedness of c[i].Ref__Integer_value == i + 2
        assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@128.11--128.57) [130953]"}
          i >= 0;
        assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@128.11--128.57) [130954]"}
          i < Seq#Length(c);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_c.vpr@128.11--128.57) [130955]"}
          HasDirectPerm(PostMask, Seq#Index(c, i), Ref__Integer_value);
      assume PostHeap[Seq#Index(c, i), Ref__Integer_value] == i + 2;
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
  
  // -- Translating statement: __flatten_4 := a[i] -- test_forward_dep_c.vpr@136.3--136.22
    
    // -- Check definedness of a[i]
      assert {:msg "  Assignment might fail. Index a[i] into a might be negative. (test_forward_dep_c.vpr@136.3--136.22) [130956]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@136.3--136.22) [130957]"}
        i < Seq#Length(a_2);
    __flatten_4 := Seq#Index(a_2, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := b[i] -- test_forward_dep_c.vpr@137.3--137.22
    
    // -- Check definedness of b[i]
      assert {:msg "  Assignment might fail. Index b[i] into b might be negative. (test_forward_dep_c.vpr@137.3--137.22) [130958]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@137.3--137.22) [130959]"}
        i < Seq#Length(b_24);
    __flatten_6 := Seq#Index(b_24, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := __flatten_6.Ref__Integer_value + 1 -- test_forward_dep_c.vpr@138.3--138.52
    
    // -- Check definedness of __flatten_6.Ref__Integer_value + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (test_forward_dep_c.vpr@138.3--138.52) [130960]"}
        HasDirectPerm(Mask, __flatten_6, Ref__Integer_value);
    __flatten_5 := Heap[__flatten_6, Ref__Integer_value] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4.Ref__Integer_value := __flatten_5 -- test_forward_dep_c.vpr@139.3--139.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_forward_dep_c.vpr@139.3--139.48) [130961]"}
      FullPerm == Mask[__flatten_4, Ref__Integer_value];
    Heap := Heap[__flatten_4, Ref__Integer_value:=__flatten_5];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i < len - 1) -- test_forward_dep_c.vpr@140.3--142.4
    if (i < len_3 - 1) {
      
      // -- Translating statement: Ref__send_body_183(diz, current_thread_id, a, i) -- test_forward_dep_c.vpr@141.5--141.53
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Ref__send_body_183 might not hold. Assertion diz != null might not hold. (test_forward_dep_c.vpr@141.5--141.53) [130962]"}
            diz != null;
          assert {:msg "  The precondition of method Ref__send_body_183 might not hold. Assertion current_thread_id >= 0 might not hold. (test_forward_dep_c.vpr@141.5--141.53) [130963]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Ref__send_body_183 might not hold. Assertion 0 <= i might not hold. (test_forward_dep_c.vpr@141.5--141.53) [130964]"}
            0 <= i;
          assert {:msg "  The precondition of method Ref__send_body_183 might not hold. Assertion i < |a| might not hold. (test_forward_dep_c.vpr@141.5--141.53) [130965]"}
            i < Seq#Length(a_2);
          perm := 1 / 2;
          assert {:msg "  The precondition of method Ref__send_body_183 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@141.5--141.53) [130966]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__send_body_183 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@141.5--141.53) [130967]"}
              perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
          }
          Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
          assert {:msg "  The precondition of method Ref__send_body_183 might not hold. Assertion a[i].Ref__Integer_value == i + 1 might not hold. (test_forward_dep_c.vpr@141.5--141.53) [130968]"}
            Heap[Seq#Index(a_2, i), Ref__Integer_value] == i + 1;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i > 0) -- test_forward_dep_c.vpr@143.3--149.4
    if (i > 0) {
      
      // -- Translating statement: Ref__recv_body_185(diz, current_thread_id, a, i) -- test_forward_dep_c.vpr@144.5--144.53
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Ref__recv_body_185 might not hold. Assertion diz != null might not hold. (test_forward_dep_c.vpr@144.5--144.53) [130969]"}
            diz != null;
          assert {:msg "  The precondition of method Ref__recv_body_185 might not hold. Assertion current_thread_id >= 0 might not hold. (test_forward_dep_c.vpr@144.5--144.53) [130970]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Ref__recv_body_185 might not hold. Assertion 0 < i might not hold. (test_forward_dep_c.vpr@144.5--144.53) [130971]"}
            0 < i;
          assert {:msg "  The precondition of method Ref__recv_body_185 might not hold. Assertion i <= |a| might not hold. (test_forward_dep_c.vpr@144.5--144.53) [130972]"}
            i <= Seq#Length(a_2);
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@144.5--144.53) [130973]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
          Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
          assume state(Heap, Mask);
          assume Heap[Seq#Index(a_2, i - 1), Ref__Integer_value] == i;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9 := c[i] -- test_forward_dep_c.vpr@145.5--145.24
        
        // -- Check definedness of c[i]
          assert {:msg "  Assignment might fail. Index c[i] into c might be negative. (test_forward_dep_c.vpr@145.5--145.24) [130974]"}
            i >= 0;
          assert {:msg "  Assignment might fail. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@145.5--145.24) [130975]"}
            i < Seq#Length(c);
        __flatten_9 := Seq#Index(c, i);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_11 := a[i - 1] -- test_forward_dep_c.vpr@146.5--146.29
        
        // -- Check definedness of a[i - 1]
          assert {:msg "  Assignment might fail. Index a[i - 1] into a might be negative. (test_forward_dep_c.vpr@146.5--146.29) [130976]"}
            i - 1 >= 0;
          assert {:msg "  Assignment might fail. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@146.5--146.29) [130977]"}
            i - 1 < Seq#Length(a_2);
        __flatten_11 := Seq#Index(a_2, i - 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_10 := __flatten_11.Ref__Integer_value + 2 -- test_forward_dep_c.vpr@147.5--147.56
        
        // -- Check definedness of __flatten_11.Ref__Integer_value + 2
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_11.Ref__Integer_value (test_forward_dep_c.vpr@147.5--147.56) [130978]"}
            HasDirectPerm(Mask, __flatten_11, Ref__Integer_value);
        __flatten_10 := Heap[__flatten_11, Ref__Integer_value] + 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9.Ref__Integer_value := __flatten_10 -- test_forward_dep_c.vpr@148.5--148.51
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_9.Ref__Integer_value (test_forward_dep_c.vpr@148.5--148.51) [130979]"}
          FullPerm == Mask[__flatten_9, Ref__Integer_value];
        Heap := Heap[__flatten_9, Ref__Integer_value:=__flatten_10];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Assertion 0 <= i might not hold. (test_forward_dep_c.vpr@117.11--117.32) [130980]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Assertion i < len might not hold. (test_forward_dep_c.vpr@117.11--117.32) [130981]"}
      i < len_3;
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Assertion |a| == len might not hold. (test_forward_dep_c.vpr@118.11--118.21) [130982]"}
      Seq#Length(a_2) == len_3;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@119.11--119.46) [130983]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@119.11--119.46) [130984]"}
        perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Assertion |b| == len might not hold. (test_forward_dep_c.vpr@120.11--120.21) [130985]"}
      Seq#Length(b_24) == len_3;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@121.11--121.46) [130986]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@121.11--121.46) [130987]"}
        perm <= Mask[Seq#Index(b_24, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(b_24, i), Ref__Integer_value:=Mask[Seq#Index(b_24, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Assertion |c| == len might not hold. (test_forward_dep_c.vpr@122.11--122.21) [130988]"}
      Seq#Length(c) == len_3;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_c.vpr@123.11--123.46) [130989]"}
        perm <= Mask[Seq#Index(c, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(c, i), Ref__Integer_value:=Mask[Seq#Index(c, i), Ref__Integer_value] - perm];
    if (i > 0) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@124.11--124.62) [130990]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_c.vpr@124.11--124.62) [130991]"}
          perm <= Mask[Seq#Index(a_2, i - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] - perm];
    }
    if (i == Seq#Length(a_2) - 1) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@125.11--125.65) [130992]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@125.11--125.65) [130993]"}
          perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Assertion a[i].Ref__Integer_value == i + 1 might not hold. (test_forward_dep_c.vpr@126.11--126.43) [130994]"}
      Heap[Seq#Index(a_2, i), Ref__Integer_value] == i + 1;
    assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Assertion b[i].Ref__Integer_value == i might not hold. (test_forward_dep_c.vpr@127.11--127.39) [130995]"}
      Heap[Seq#Index(b_24, i), Ref__Integer_value] == i;
    if (i > 0) {
      assert {:msg "  Postcondition of Ref__loop_body_67 might not hold. Assertion c[i].Ref__Integer_value == i + 2 might not hold. (test_forward_dep_c.vpr@128.11--128.57) [130996]"}
        Heap[Seq#Index(c, i), Ref__Integer_value] == i + 2;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__guard_check_S1_S2
// ==================================================

procedure Ref__guard_check_S1_S2(diz: Ref, current_thread_id: int, len_3: int, b_24: (Seq Ref), a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
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
    assume i < len_3;
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
    assume i - 1 < len_3 - 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__guard_check_S1_S2 might not hold. Assertion 1 <= i might not hold. (test_forward_dep_c.vpr@157.11--157.17) [130997]"}
      1 <= i;
    assert {:msg "  Postcondition of Ref__guard_check_S1_S2 might not hold. Assertion i - 1 < len - 1 might not hold. (test_forward_dep_c.vpr@158.11--158.26) [130998]"}
      i - 1 < len_3 - 1;
}

// ==================================================
// Translation of method Ref__resource_check_S1_S2
// ==================================================

procedure Ref__resource_check_S1_S2(diz: Ref, current_thread_id: int, len_3: int, b_24: (Seq Ref), a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
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
    assume i < len_3;
    assume state(Heap, Mask);
    assume i - 1 < len_3 - 1;
    assume state(Heap, Mask);
    assume i > 0;
    assume state(Heap, Mask);
    assume len_3 <= Seq#Length(a_2);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_c.vpr@169.12--169.51) [130999]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@169.12--169.51) [131000]"}
        i - 1 < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@169.12--169.51) [131001]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
    Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of a[i - 1].Ref__Integer_value == i - 1 + 1
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_c.vpr@170.12--170.52) [131002]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@170.12--170.52) [131003]"}
        i - 1 < Seq#Length(a_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_c.vpr@170.12--170.52) [131004]"}
        HasDirectPerm(Mask, Seq#Index(a_2, i - 1), Ref__Integer_value);
    assume Heap[Seq#Index(a_2, i - 1), Ref__Integer_value] == i - 1 + 1;
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
    assume i - 1 < len_3 - 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(a[i - 1].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_c.vpr@172.11--172.50) [131005]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@172.11--172.50) [131006]"}
        i - 1 < Seq#Length(a_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@172.11--172.50) [131007]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(a_2, i - 1) != null;
    PostMask := PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value:=PostMask[Seq#Index(a_2, i - 1), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a[i - 1].Ref__Integer_value == i
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might be negative. (test_forward_dep_c.vpr@173.11--173.43) [131008]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i - 1] into a might exceed sequence length. (test_forward_dep_c.vpr@173.11--173.43) [131009]"}
        i - 1 < Seq#Length(a_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_c.vpr@173.11--173.43) [131010]"}
        HasDirectPerm(PostMask, Seq#Index(a_2, i - 1), Ref__Integer_value);
    assume PostHeap[Seq#Index(a_2, i - 1), Ref__Integer_value] == i;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. Assertion i - 1 < len - 1 might not hold. (test_forward_dep_c.vpr@171.11--171.26) [131011]"}
      i - 1 < len_3 - 1;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@172.11--172.50) [131012]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. There might be insufficient permission to access a[i - 1].Ref__Integer_value (test_forward_dep_c.vpr@172.11--172.50) [131013]"}
        perm <= Mask[Seq#Index(a_2, i - 1), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, i - 1), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__resource_check_S1_S2 might not hold. Assertion a[i - 1].Ref__Integer_value == i might not hold. (test_forward_dep_c.vpr@173.11--173.43) [131014]"}
      Heap[Seq#Index(a_2, i - 1), Ref__Integer_value] == i;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__example
// ==================================================

procedure Ref__example(diz: Ref, current_thread_id: int, a_2: (Seq Ref), b_24: (Seq Ref), c: (Seq Ref), len_3: int) returns ()
  modifies Heap, Mask;
{
  var k_28: int;
  var j_35: int;
  var k_33: int;
  var j_31: int;
  var k_36: int;
  var j_33: int;
  var i_55: int;
  var QPMask: MaskType;
  var i_65: int;
  var i_74: int;
  var tid_17: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_67: int;
  var i_75: int;
  var i_68: int;
  var i_69: int;
  var i_70: int;
  var i_71: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var k_6_2: int;
  var j_6_2: int;
  var k_8: int;
  var j_8_2: int;
  var k_10: int;
  var j_10_2: int;
  var i_30: int;
  var ExhaleHeap: HeapType;
  var perm: Perm;
  var i_21_1: int;
  var i_23_1: int;
  var i_25_1: int;
  
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
        if (k_28 >= 0 && (k_28 < Seq#Length(a_2) && (j_35 >= 0 && (j_35 < Seq#Length(a_2) && k_28 != j_35)))) {
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might be negative. (test_forward_dep_c.vpr@180.12--180.100) [131015]"}
            k_28 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[k] into a might exceed sequence length. (test_forward_dep_c.vpr@180.12--180.100) [131016]"}
            k_28 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might be negative. (test_forward_dep_c.vpr@180.12--180.100) [131017]"}
            j_35 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might exceed sequence length. (test_forward_dep_c.vpr@180.12--180.100) [131018]"}
            j_35 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall k_1: int, j_1: int ::
      { Seq#Index(a_2, k_1), Seq#Index(a_2, j_1) }
      k_1 >= 0 && (k_1 < Seq#Length(a_2) && (j_1 >= 0 && (j_1 < Seq#Length(a_2) && k_1 != j_1))) ==> Seq#Index(a_2, k_1) != Seq#Index(a_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { b[k], b[j] } k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j])
      if (*) {
        if (k_33 >= 0 && (k_33 < Seq#Length(b_24) && (j_31 >= 0 && (j_31 < Seq#Length(b_24) && k_33 != j_31)))) {
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might be negative. (test_forward_dep_c.vpr@181.12--181.100) [131019]"}
            k_33 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[k] into b might exceed sequence length. (test_forward_dep_c.vpr@181.12--181.100) [131020]"}
            k_33 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might be negative. (test_forward_dep_c.vpr@181.12--181.100) [131021]"}
            j_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might exceed sequence length. (test_forward_dep_c.vpr@181.12--181.100) [131022]"}
            j_31 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall k_3: int, j_3: int ::
      { Seq#Index(b_24, k_3), Seq#Index(b_24, j_3) }
      k_3 >= 0 && (k_3 < Seq#Length(b_24) && (j_3 >= 0 && (j_3 < Seq#Length(b_24) && k_3 != j_3))) ==> Seq#Index(b_24, k_3) != Seq#Index(b_24, j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { c[k], c[j] } k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j])
      if (*) {
        if (k_36 >= 0 && (k_36 < Seq#Length(c) && (j_33 >= 0 && (j_33 < Seq#Length(c) && k_36 != j_33)))) {
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might be negative. (test_forward_dep_c.vpr@182.12--182.100) [131023]"}
            k_36 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[k] into c might exceed sequence length. (test_forward_dep_c.vpr@182.12--182.100) [131024]"}
            k_36 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might be negative. (test_forward_dep_c.vpr@182.12--182.100) [131025]"}
            j_33 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[j] into c might exceed sequence length. (test_forward_dep_c.vpr@182.12--182.100) [131026]"}
            j_33 < Seq#Length(c);
        }
        assume false;
      }
    assume (forall k_5: int, j_5: int ::
      { Seq#Index(c, k_5), Seq#Index(c, j_5) }
      k_5 >= 0 && (k_5 < Seq#Length(c) && (j_5 >= 0 && (j_5 < Seq#Length(c) && k_5 != j_5))) ==> Seq#Index(c, k_5) != Seq#Index(c, j_5)
    );
    assume state(Heap, Mask);
    assume Seq#Length(a_2) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_55 && i_55 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@184.13--184.91) [131027]"}
            i_55 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@184.13--184.91) [131028]"}
            i_55 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@184.13--184.91) [131029]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len_3)) && (0 <= i_1_1 && i_1_1 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len_3) && NoPerm < FullPerm ==> qpRange20(Seq#Index(a_2, i_1)) && invRecv20(Seq#Index(a_2, i_1)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        ((0 <= invRecv20(o_9) && invRecv20(o_9) < len_3) && NoPerm < FullPerm) && qpRange20(o_9) ==> Seq#Index(a_2, invRecv20(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        0 <= i_1 && i_1 < len_3 ==> Seq#Index(a_2, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv20(o_9) && invRecv20(o_9) < len_3) && NoPerm < FullPerm) && qpRange20(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv20(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv20(o_9) && invRecv20(o_9) < len_3) && NoPerm < FullPerm) && qpRange20(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(b_24) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_65 && i_65 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@186.13--186.91) [131030]"}
            i_65 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@186.13--186.91) [131031]"}
            i_65 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@186.13--186.91) [131032]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < len_3)) && (0 <= i_3_3 && i_3_3 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_3_2) != Seq#Index(b_24, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(b_24, i_3_2) } { Seq#Index(b_24, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && NoPerm < 1 / 2 ==> qpRange21(Seq#Index(b_24, i_3_2)) && invRecv21(Seq#Index(b_24, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        ((0 <= invRecv21(o_9) && invRecv21(o_9) < len_3) && NoPerm < 1 / 2) && qpRange21(o_9) ==> Seq#Index(b_24, invRecv21(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@186.13--186.91) [131033]"}
      (forall i_3_2: int ::
      { Seq#Index(b_24, i_3_2) } { Seq#Index(b_24, i_3_2) }
      0 <= i_3_2 && i_3_2 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(b_24, i_3_2) } { Seq#Index(b_24, i_3_2) }
        (0 <= i_3_2 && i_3_2 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv21(o_9) && invRecv21(o_9) < len_3) && NoPerm < 1 / 2) && qpRange21(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv21(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv21(o_9) && invRecv21(o_9) < len_3) && NoPerm < 1 / 2) && qpRange21(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(c) == len_3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_74 && i_74 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@188.13--188.91) [131034]"}
            i_74 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@188.13--188.91) [131035]"}
            i_74 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@188.13--188.91) [131036]"}
      (forall i_5_1: int, i_5_2: int ::
      
      (((i_5_1 != i_5_2 && (0 <= i_5_1 && i_5_1 < len_3)) && (0 <= i_5_2 && i_5_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_5_1) != Seq#Index(c, i_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_5_1: int ::
        { Seq#Index(c, i_5_1) } { Seq#Index(c, i_5_1) }
        (0 <= i_5_1 && i_5_1 < len_3) && NoPerm < FullPerm ==> qpRange22(Seq#Index(c, i_5_1)) && invRecv22(Seq#Index(c, i_5_1)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        ((0 <= invRecv22(o_9) && invRecv22(o_9) < len_3) && NoPerm < FullPerm) && qpRange22(o_9) ==> Seq#Index(c, invRecv22(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5_1: int ::
        { Seq#Index(c, i_5_1) } { Seq#Index(c, i_5_1) }
        0 <= i_5_1 && i_5_1 < len_3 ==> Seq#Index(c, i_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv22(o_9) && invRecv22(o_9) < len_3) && NoPerm < FullPerm) && qpRange22(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv22(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv22(o_9) && invRecv22(o_9) < len_3) && NoPerm < FullPerm) && qpRange22(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { b[tid] } 0 <= tid && tid < len ==> b[tid].Ref__Integer_value == tid)
      if (*) {
        if (0 <= tid_17 && tid_17 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index b[tid] into b might be negative. (test_forward_dep_c.vpr@189.13--189.96) [131037]"}
            tid_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[tid] into b might exceed sequence length. (test_forward_dep_c.vpr@189.13--189.96) [131038]"}
            tid_17 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[tid].Ref__Integer_value (test_forward_dep_c.vpr@189.13--189.96) [131039]"}
            HasDirectPerm(Mask, Seq#Index(b_24, tid_17), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall tid_1: int ::
      { Seq#Index(b_24, tid_1) }
      0 <= tid_1 && tid_1 < len_3 ==> Heap[Seq#Index(b_24, tid_1), Ref__Integer_value] == tid_1
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
    assume Seq#Length(a_2) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_67 && i_67 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@191.12--191.90) [131040]"}
            i_67 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@191.12--191.90) [131041]"}
            i_67 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@191.12--191.90) [131042]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len_3)) && (0 <= i_7_2 && i_7_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_7_1) != Seq#Index(a_2, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len_3) && NoPerm < FullPerm ==> qpRange23(Seq#Index(a_2, i_7_1)) && invRecv23(Seq#Index(a_2, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        ((0 <= invRecv23(o_9) && invRecv23(o_9) < len_3) && NoPerm < FullPerm) && qpRange23(o_9) ==> Seq#Index(a_2, invRecv23(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        0 <= i_7_1 && i_7_1 < len_3 ==> Seq#Index(a_2, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv23(o_9) && invRecv23(o_9) < len_3) && NoPerm < FullPerm) && qpRange23(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv23(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv23(o_9) && invRecv23(o_9) < len_3) && NoPerm < FullPerm) && qpRange23(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(b_24) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_75 && i_75 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@193.12--193.90) [131043]"}
            i_75 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@193.12--193.90) [131044]"}
            i_75 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@193.12--193.90) [131045]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len_3)) && (0 <= i_9_2 && i_9_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_9_1) != Seq#Index(b_24, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len_3) && NoPerm < 1 / 2 ==> qpRange24(Seq#Index(b_24, i_9_1)) && invRecv24(Seq#Index(b_24, i_9_1)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        ((0 <= invRecv24(o_9) && invRecv24(o_9) < len_3) && NoPerm < 1 / 2) && qpRange24(o_9) ==> Seq#Index(b_24, invRecv24(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@193.12--193.90) [131046]"}
      (forall i_9_1: int ::
      { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
      0 <= i_9_1 && i_9_1 < len_3 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv24(o_9) && invRecv24(o_9) < len_3) && NoPerm < 1 / 2) && qpRange24(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv24(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv24(o_9) && invRecv24(o_9) < len_3) && NoPerm < 1 / 2) && qpRange24(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(c) == len_3;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_68 && i_68 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@195.12--195.90) [131047]"}
            i_68 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@195.12--195.90) [131048]"}
            i_68 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@195.12--195.90) [131049]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len_3)) && (0 <= i_11_2 && i_11_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_11_1) != Seq#Index(c, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len_3) && NoPerm < FullPerm ==> qpRange25(Seq#Index(c, i_11_1)) && invRecv25(Seq#Index(c, i_11_1)) == i_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        ((0 <= invRecv25(o_9) && invRecv25(o_9) < len_3) && NoPerm < FullPerm) && qpRange25(o_9) ==> Seq#Index(c, invRecv25(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        0 <= i_11_1 && i_11_1 < len_3 ==> Seq#Index(c, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        (((0 <= invRecv25(o_9) && invRecv25(o_9) < len_3) && NoPerm < FullPerm) && qpRange25(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv25(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv25(o_9) && invRecv25(o_9) < len_3) && NoPerm < FullPerm) && qpRange25(o_9)) ==> QPMask[o_9, Ref__Integer_value] == PostMask[o_9, Ref__Integer_value])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
      if (*) {
        if (0 <= i_69 && i_69 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_forward_dep_c.vpr@196.12--196.89) [131050]"}
            i_69 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_forward_dep_c.vpr@196.12--196.89) [131051]"}
            i_69 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@196.12--196.89) [131052]"}
            HasDirectPerm(PostMask, Seq#Index(a_2, i_69), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_13_1: int ::
      { Seq#Index(a_2, i_13_1) }
      0 <= i_13_1 && i_13_1 < len_3 ==> PostHeap[Seq#Index(a_2, i_13_1), Ref__Integer_value] == i_13_1 + 1
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
      if (*) {
        if (0 <= i_70 && i_70 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_forward_dep_c.vpr@197.12--197.85) [131053]"}
            i_70 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_forward_dep_c.vpr@197.12--197.85) [131054]"}
            i_70 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@197.12--197.85) [131055]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_70), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_15_1: int ::
      { Seq#Index(b_24, i_15_1) }
      0 <= i_15_1 && i_15_1 < len_3 ==> PostHeap[Seq#Index(b_24, i_15_1), Ref__Integer_value] == i_15_1
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 < i && i < len ==> c[i].Ref__Integer_value == i + 2)
      if (*) {
        if (0 < i_71 && i_71 < len_3) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_forward_dep_c.vpr@198.12--198.88) [131056]"}
            i_71 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_forward_dep_c.vpr@198.12--198.88) [131057]"}
            i_71 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_c.vpr@198.12--198.88) [131058]"}
            HasDirectPerm(PostMask, Seq#Index(c, i_71), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_17_1: int ::
      { Seq#Index(c, i_17_1) }
      0 < i_17_1 && i_17_1 < len_3 ==> PostHeap[Seq#Index(c, i_17_1), Ref__Integer_value] == i_17_1 + 2
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_67(diz, current_thread_id, b, len, a, c) -- test_forward_dep_c.vpr@200.3--200.58
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion diz != null might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131059]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion current_thread_id >= 0 might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131060]"}
        current_thread_id >= 0;
      if (0 < len_3) {
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion |a| == len might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131061]"}
          Seq#Length(a_2) == len_3;
      }
      if (*) {
        if (k_6_2 >= 0 && (k_6_2 < Seq#Length(a_2) && (j_6_2 >= 0 && (j_6_2 < Seq#Length(a_2) && k_6_2 != j_6_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion a[k] != a[j] might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131062]"}
            Seq#Index(a_2, k_6_2) != Seq#Index(a_2, j_6_2);
        }
        assume false;
      }
      assume (forall k_7_1_1: int, j_7_1_1: int ::
        { Seq#Index(a_2, k_7_1_1), Seq#Index(a_2, j_7_1_1) }
        k_7_1_1 >= 0 && (k_7_1_1 < Seq#Length(a_2) && (j_7_1_1 >= 0 && (j_7_1_1 < Seq#Length(a_2) && k_7_1_1 != j_7_1_1))) ==> Seq#Index(a_2, k_7_1_1) != Seq#Index(a_2, j_7_1_1)
      );
      if (*) {
        if (k_8 >= 0 && (k_8 < Seq#Length(b_24) && (j_8_2 >= 0 && (j_8_2 < Seq#Length(b_24) && k_8 != j_8_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion b[k] != b[j] might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131063]"}
            Seq#Index(b_24, k_8) != Seq#Index(b_24, j_8_2);
        }
        assume false;
      }
      assume (forall k_9_1_1: int, j_9_1_1: int ::
        { Seq#Index(b_24, k_9_1_1), Seq#Index(b_24, j_9_1_1) }
        k_9_1_1 >= 0 && (k_9_1_1 < Seq#Length(b_24) && (j_9_1_1 >= 0 && (j_9_1_1 < Seq#Length(b_24) && k_9_1_1 != j_9_1_1))) ==> Seq#Index(b_24, k_9_1_1) != Seq#Index(b_24, j_9_1_1)
      );
      if (*) {
        if (k_10 >= 0 && (k_10 < Seq#Length(c) && (j_10_2 >= 0 && (j_10_2 < Seq#Length(c) && k_10 != j_10_2)))) {
          assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion c[k] != c[j] might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131064]"}
            Seq#Index(c, k_10) != Seq#Index(c, j_10_2);
        }
        assume false;
      }
      assume (forall k_11_1_1: int, j_11_1_1: int ::
        { Seq#Index(c, k_11_1_1), Seq#Index(c, j_11_1_1) }
        k_11_1_1 >= 0 && (k_11_1_1 < Seq#Length(c) && (j_11_1_1 >= 0 && (j_11_1_1 < Seq#Length(c) && k_11_1_1 != j_11_1_1))) ==> Seq#Index(c, k_11_1_1) != Seq#Index(c, j_11_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver a[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@200.3--200.58) [131065]"}
          (forall i_27_2: int, i_27_3: int ::
          { neverTriggered29(i_27_2), neverTriggered29(i_27_3) }
          (((i_27_2 != i_27_3 && (0 <= i_27_2 && i_27_2 < len_3)) && (0 <= i_27_3 && i_27_3 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_27_2) != Seq#Index(a_2, i_27_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@200.3--200.58) [131066]"}
          (forall i_27_2: int ::
          { Seq#Index(a_2, i_27_2) } { Seq#Index(a_2, i_27_2) }
          0 <= i_27_2 && i_27_2 < len_3 ==> Mask[Seq#Index(a_2, i_27_2), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver a[i]
        assume (forall i_27_2: int ::
          { Seq#Index(a_2, i_27_2) } { Seq#Index(a_2, i_27_2) }
          (0 <= i_27_2 && i_27_2 < len_3) && NoPerm < FullPerm ==> qpRange29(Seq#Index(a_2, i_27_2)) && invRecv29(Seq#Index(a_2, i_27_2)) == i_27_2
        );
        assume (forall o_9: Ref ::
          { invRecv29(o_9) }
          (0 <= invRecv29(o_9) && invRecv29(o_9) < len_3) && (NoPerm < FullPerm && qpRange29(o_9)) ==> Seq#Index(a_2, invRecv29(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv29(o_9) && invRecv29(o_9) < len_3) && (NoPerm < FullPerm && qpRange29(o_9)) ==> Seq#Index(a_2, invRecv29(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv29(o_9) && invRecv29(o_9) < len_3) && (NoPerm < FullPerm && qpRange29(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (0 < len_3) {
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion |b| == len might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131067]"}
          Seq#Length(b_24) == len_3;
      }
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@200.3--200.58) [131068]"}
          (forall i_28: int ::
          { Seq#Index(b_24, i_28) } { Seq#Index(b_24, i_28) }
          (0 <= i_28 && i_28 < len_3) && dummyFunction(Heap[Seq#Index(b_24, i_28), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver b[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@200.3--200.58) [131069]"}
          (forall i_28: int, i_28_2: int ::
          { neverTriggered30(i_28), neverTriggered30(i_28_2) }
          (((i_28 != i_28_2 && (0 <= i_28 && i_28 < len_3)) && (0 <= i_28_2 && i_28_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_28) != Seq#Index(b_24, i_28_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@200.3--200.58) [131070]"}
          (forall i_28: int ::
          { Seq#Index(b_24, i_28) } { Seq#Index(b_24, i_28) }
          0 <= i_28 && i_28 < len_3 ==> Mask[Seq#Index(b_24, i_28), Ref__Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver b[i]
        assume (forall i_28: int ::
          { Seq#Index(b_24, i_28) } { Seq#Index(b_24, i_28) }
          (0 <= i_28 && i_28 < len_3) && NoPerm < 1 / 2 ==> qpRange30(Seq#Index(b_24, i_28)) && invRecv30(Seq#Index(b_24, i_28)) == i_28
        );
        assume (forall o_9: Ref ::
          { invRecv30(o_9) }
          (0 <= invRecv30(o_9) && invRecv30(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange30(o_9)) ==> Seq#Index(b_24, invRecv30(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv30(o_9) && invRecv30(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange30(o_9)) ==> Seq#Index(b_24, invRecv30(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv30(o_9) && invRecv30(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange30(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (0 < len_3) {
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion |c| == len might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131071]"}
          Seq#Length(c) == len_3;
      }
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver c[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@200.3--200.58) [131072]"}
          (forall i_29: int, i_29_2: int ::
          { neverTriggered31(i_29), neverTriggered31(i_29_2) }
          (((i_29 != i_29_2 && (0 <= i_29 && i_29 < len_3)) && (0 <= i_29_2 && i_29_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_29) != Seq#Index(c, i_29_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_c.vpr@200.3--200.58) [131073]"}
          (forall i_29: int ::
          { Seq#Index(c, i_29) } { Seq#Index(c, i_29) }
          0 <= i_29 && i_29 < len_3 ==> Mask[Seq#Index(c, i_29), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver c[i]
        assume (forall i_29: int ::
          { Seq#Index(c, i_29) } { Seq#Index(c, i_29) }
          (0 <= i_29 && i_29 < len_3) && NoPerm < FullPerm ==> qpRange31(Seq#Index(c, i_29)) && invRecv31(Seq#Index(c, i_29)) == i_29
        );
        assume (forall o_9: Ref ::
          { invRecv31(o_9) }
          (0 <= invRecv31(o_9) && invRecv31(o_9) < len_3) && (NoPerm < FullPerm && qpRange31(o_9)) ==> Seq#Index(c, invRecv31(o_9)) == o_9
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          ((0 <= invRecv31(o_9) && invRecv31(o_9) < len_3) && (NoPerm < FullPerm && qpRange31(o_9)) ==> Seq#Index(c, invRecv31(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv31(o_9) && invRecv31(o_9) < len_3) && (NoPerm < FullPerm && qpRange31(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (0 <= i_30 && i_30 < len_3) {
          assert {:msg "  The precondition of method Ref__loop_main_67 might not hold. Assertion b[i].Ref__Integer_value == i might not hold. (test_forward_dep_c.vpr@200.3--200.58) [131074]"}
            Heap[Seq#Index(b_24, i_30), Ref__Integer_value] == i_30;
        }
        assume false;
      }
      assume (forall i_31_1: int ::
        { Seq#Index(b_24, i_31_1) }
        0 <= i_31_1 && i_31_1 < len_3 ==> Heap[Seq#Index(b_24, i_31_1), Ref__Integer_value] == i_31_1
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      if (0 < len_3) {
        assume Seq#Length(a_2) == len_3;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@200.3--200.58) [131075]"}
        (forall i_32: int, i_32_1: int ::
        
        (((i_32 != i_32_1 && (0 <= i_32 && i_32 < len_3)) && (0 <= i_32_1 && i_32_1 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_32) != Seq#Index(a_2, i_32_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_32: int ::
          { Seq#Index(a_2, i_32) } { Seq#Index(a_2, i_32) }
          (0 <= i_32 && i_32 < len_3) && NoPerm < 1 / 2 ==> qpRange32(Seq#Index(a_2, i_32)) && invRecv32(Seq#Index(a_2, i_32)) == i_32
        );
        assume (forall o_9: Ref ::
          { invRecv32(o_9) }
          ((0 <= invRecv32(o_9) && invRecv32(o_9) < len_3) && NoPerm < 1 / 2) && qpRange32(o_9) ==> Seq#Index(a_2, invRecv32(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@200.3--200.58) [131076]"}
        (forall i_32: int ::
        { Seq#Index(a_2, i_32) } { Seq#Index(a_2, i_32) }
        0 <= i_32 && i_32 < len_3 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_32: int ::
          { Seq#Index(a_2, i_32) } { Seq#Index(a_2, i_32) }
          (0 <= i_32 && i_32 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_32) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv32(o_9) && invRecv32(o_9) < len_3) && NoPerm < 1 / 2) && qpRange32(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv32(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv32(o_9) && invRecv32(o_9) < len_3) && NoPerm < 1 / 2) && qpRange32(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 < len_3) {
        assume Seq#Length(b_24) == len_3;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@200.3--200.58) [131077]"}
        (forall i_33: int, i_33_2: int ::
        
        (((i_33 != i_33_2 && (0 <= i_33 && i_33 < len_3)) && (0 <= i_33_2 && i_33_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_33) != Seq#Index(b_24, i_33_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_33: int ::
          { Seq#Index(b_24, i_33) } { Seq#Index(b_24, i_33) }
          (0 <= i_33 && i_33 < len_3) && NoPerm < 1 / 2 ==> qpRange33(Seq#Index(b_24, i_33)) && invRecv33(Seq#Index(b_24, i_33)) == i_33
        );
        assume (forall o_9: Ref ::
          { invRecv33(o_9) }
          ((0 <= invRecv33(o_9) && invRecv33(o_9) < len_3) && NoPerm < 1 / 2) && qpRange33(o_9) ==> Seq#Index(b_24, invRecv33(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@200.3--200.58) [131078]"}
        (forall i_33: int ::
        { Seq#Index(b_24, i_33) } { Seq#Index(b_24, i_33) }
        0 <= i_33 && i_33 < len_3 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_33: int ::
          { Seq#Index(b_24, i_33) } { Seq#Index(b_24, i_33) }
          (0 <= i_33 && i_33 < len_3) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_33) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv33(o_9) && invRecv33(o_9) < len_3) && NoPerm < 1 / 2) && qpRange33(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv33(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv33(o_9) && invRecv33(o_9) < len_3) && NoPerm < 1 / 2) && qpRange33(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 < len_3) {
        assume Seq#Length(c) == len_3;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@200.3--200.58) [131079]"}
        (forall i_34: int, i_34_2: int ::
        
        (((i_34 != i_34_2 && (0 <= i_34 && i_34 < len_3)) && (0 <= i_34_2 && i_34_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_34) != Seq#Index(c, i_34_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_34: int ::
          { Seq#Index(c, i_34) } { Seq#Index(c, i_34) }
          (0 <= i_34 && i_34 < len_3) && NoPerm < FullPerm ==> qpRange34(Seq#Index(c, i_34)) && invRecv34(Seq#Index(c, i_34)) == i_34
        );
        assume (forall o_9: Ref ::
          { invRecv34(o_9) }
          ((0 <= invRecv34(o_9) && invRecv34(o_9) < len_3) && NoPerm < FullPerm) && qpRange34(o_9) ==> Seq#Index(c, invRecv34(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_34: int ::
          { Seq#Index(c, i_34) } { Seq#Index(c, i_34) }
          0 <= i_34 && i_34 < len_3 ==> Seq#Index(c, i_34) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv34(o_9) && invRecv34(o_9) < len_3) && NoPerm < FullPerm) && qpRange34(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(c, invRecv34(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv34(o_9) && invRecv34(o_9) < len_3) && NoPerm < FullPerm) && qpRange34(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@200.3--200.58) [131080]"}
        (forall i_35: int, i_35_1: int ::
        
        (((i_35 != i_35_1 && (0 <= i_35 && i_35 < len_3 - 1)) && (0 <= i_35_1 && i_35_1 < len_3 - 1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(a_2, i_35) != Seq#Index(a_2, i_35_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_35: int ::
          { Seq#Index(a_2, i_35) } { Seq#Index(a_2, i_35) }
          (0 <= i_35 && i_35 < len_3 - 1) && NoPerm < 1 / 2 ==> qpRange35(Seq#Index(a_2, i_35)) && invRecv35(Seq#Index(a_2, i_35)) == i_35
        );
        assume (forall o_9: Ref ::
          { invRecv35(o_9) }
          ((0 <= invRecv35(o_9) && invRecv35(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange35(o_9) ==> Seq#Index(a_2, invRecv35(o_9)) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@200.3--200.58) [131081]"}
        (forall i_35: int ::
        { Seq#Index(a_2, i_35) } { Seq#Index(a_2, i_35) }
        0 <= i_35 && i_35 < len_3 - 1 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_35: int ::
          { Seq#Index(a_2, i_35) } { Seq#Index(a_2, i_35) }
          (0 <= i_35 && i_35 < len_3 - 1) && 1 / 2 > NoPerm ==> Seq#Index(a_2, i_35) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, Ref__Integer_value] }
          (((0 <= invRecv35(o_9) && invRecv35(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange35(o_9) ==> (NoPerm < 1 / 2 ==> Seq#Index(a_2, invRecv35(o_9)) == o_9) && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv35(o_9) && invRecv35(o_9) < len_3 - 1) && NoPerm < 1 / 2) && qpRange35(o_9)) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 <= Seq#Length(a_2) - 1 && Seq#Length(a_2) - 1 < len_3) {
        perm := 1 / 2;
        assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@200.3--200.58) [131082]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Seq#Index(a_2, Seq#Length(a_2) - 1) != null;
        Mask := Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value:=Mask[Seq#Index(a_2, Seq#Length(a_2) - 1), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
      }
      assume (forall i_36: int ::
        { Seq#Index(a_2, i_36) }
        0 <= i_36 && i_36 < len_3 ==> Heap[Seq#Index(a_2, i_36), Ref__Integer_value] == i_36 + 1
      );
      assume (forall i_37: int ::
        { Seq#Index(b_24, i_37) }
        0 <= i_37 && i_37 < len_3 ==> Heap[Seq#Index(b_24, i_37), Ref__Integer_value] == i_37
      );
      assume (forall i_38: int ::
        { Seq#Index(c, i_38) }
        1 <= i_38 && i_38 < len_3 ==> Heap[Seq#Index(c, i_38), Ref__Integer_value] == i_38 + 2
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |a| == len might not hold. (test_forward_dep_c.vpr@190.11--190.21) [131083]"}
      Seq#Length(a_2) == len_3;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@191.12--191.90) [131084]"}
        (forall i_18_1: int, i_18_2: int ::
        { neverTriggered26(i_18_1), neverTriggered26(i_18_2) }
        (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < len_3)) && (0 <= i_18_2 && i_18_2 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_18_1) != Seq#Index(a_2, i_18_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_forward_dep_c.vpr@191.12--191.90) [131085]"}
        (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        0 <= i_18_1 && i_18_1 < len_3 ==> Mask[Seq#Index(a_2, i_18_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        (0 <= i_18_1 && i_18_1 < len_3) && NoPerm < FullPerm ==> qpRange26(Seq#Index(a_2, i_18_1)) && invRecv26(Seq#Index(a_2, i_18_1)) == i_18_1
      );
      assume (forall o_9: Ref ::
        { invRecv26(o_9) }
        (0 <= invRecv26(o_9) && invRecv26(o_9) < len_3) && (NoPerm < FullPerm && qpRange26(o_9)) ==> Seq#Index(a_2, invRecv26(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv26(o_9) && invRecv26(o_9) < len_3) && (NoPerm < FullPerm && qpRange26(o_9)) ==> Seq#Index(a_2, invRecv26(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv26(o_9) && invRecv26(o_9) < len_3) && (NoPerm < FullPerm && qpRange26(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |b| == len might not hold. (test_forward_dep_c.vpr@192.11--192.21) [131086]"}
      Seq#Length(b_24) == len_3;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__example might not hold. Fraction 1 / 2 might be negative. (test_forward_dep_c.vpr@193.12--193.90) [131087]"}
        (forall i_19_1: int ::
        { Seq#Index(b_24, i_19_1) } { Seq#Index(b_24, i_19_1) }
        (0 <= i_19_1 && i_19_1 < len_3) && dummyFunction(Heap[Seq#Index(b_24, i_19_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@193.12--193.90) [131088]"}
        (forall i_19_1: int, i_19_2: int ::
        { neverTriggered27(i_19_1), neverTriggered27(i_19_2) }
        (((i_19_1 != i_19_2 && (0 <= i_19_1 && i_19_1 < len_3)) && (0 <= i_19_2 && i_19_2 < len_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_19_1) != Seq#Index(b_24, i_19_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_forward_dep_c.vpr@193.12--193.90) [131089]"}
        (forall i_19_1: int ::
        { Seq#Index(b_24, i_19_1) } { Seq#Index(b_24, i_19_1) }
        0 <= i_19_1 && i_19_1 < len_3 ==> Mask[Seq#Index(b_24, i_19_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_19_1: int ::
        { Seq#Index(b_24, i_19_1) } { Seq#Index(b_24, i_19_1) }
        (0 <= i_19_1 && i_19_1 < len_3) && NoPerm < 1 / 2 ==> qpRange27(Seq#Index(b_24, i_19_1)) && invRecv27(Seq#Index(b_24, i_19_1)) == i_19_1
      );
      assume (forall o_9: Ref ::
        { invRecv27(o_9) }
        (0 <= invRecv27(o_9) && invRecv27(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> Seq#Index(b_24, invRecv27(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv27(o_9) && invRecv27(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> Seq#Index(b_24, invRecv27(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv27(o_9) && invRecv27(o_9) < len_3) && (NoPerm < 1 / 2 && qpRange27(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__example might not hold. Assertion |c| == len might not hold. (test_forward_dep_c.vpr@194.11--194.21) [131090]"}
      Seq#Length(c) == len_3;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver c[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_forward_dep_c.vpr@195.12--195.90) [131091]"}
        (forall i_20_2: int, i_20_3: int ::
        { neverTriggered28(i_20_2), neverTriggered28(i_20_3) }
        (((i_20_2 != i_20_3 && (0 <= i_20_2 && i_20_2 < len_3)) && (0 <= i_20_3 && i_20_3 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(c, i_20_2) != Seq#Index(c, i_20_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__example might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_forward_dep_c.vpr@195.12--195.90) [131092]"}
        (forall i_20_2: int ::
        { Seq#Index(c, i_20_2) } { Seq#Index(c, i_20_2) }
        0 <= i_20_2 && i_20_2 < len_3 ==> Mask[Seq#Index(c, i_20_2), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver c[i]
      assume (forall i_20_2: int ::
        { Seq#Index(c, i_20_2) } { Seq#Index(c, i_20_2) }
        (0 <= i_20_2 && i_20_2 < len_3) && NoPerm < FullPerm ==> qpRange28(Seq#Index(c, i_20_2)) && invRecv28(Seq#Index(c, i_20_2)) == i_20_2
      );
      assume (forall o_9: Ref ::
        { invRecv28(o_9) }
        (0 <= invRecv28(o_9) && invRecv28(o_9) < len_3) && (NoPerm < FullPerm && qpRange28(o_9)) ==> Seq#Index(c, invRecv28(o_9)) == o_9
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_9: Ref ::
        { QPMask[o_9, Ref__Integer_value] }
        ((0 <= invRecv28(o_9) && invRecv28(o_9) < len_3) && (NoPerm < FullPerm && qpRange28(o_9)) ==> Seq#Index(c, invRecv28(o_9)) == o_9 && QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv28(o_9) && invRecv28(o_9) < len_3) && (NoPerm < FullPerm && qpRange28(o_9))) ==> QPMask[o_9, Ref__Integer_value] == Mask[o_9, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_21_1 && i_21_1 < len_3) {
        assert {:msg "  Postcondition of Ref__example might not hold. Assertion a[i].Ref__Integer_value == i + 1 might not hold. (test_forward_dep_c.vpr@196.12--196.89) [131093]"}
          Heap[Seq#Index(a_2, i_21_1), Ref__Integer_value] == i_21_1 + 1;
      }
      assume false;
    }
    assume (forall i_22_1_1: int ::
      { Seq#Index(a_2, i_22_1_1) }
      0 <= i_22_1_1 && i_22_1_1 < len_3 ==> Heap[Seq#Index(a_2, i_22_1_1), Ref__Integer_value] == i_22_1_1 + 1
    );
    if (*) {
      if (0 <= i_23_1 && i_23_1 < len_3) {
        assert {:msg "  Postcondition of Ref__example might not hold. Assertion b[i].Ref__Integer_value == i might not hold. (test_forward_dep_c.vpr@197.12--197.85) [131094]"}
          Heap[Seq#Index(b_24, i_23_1), Ref__Integer_value] == i_23_1;
      }
      assume false;
    }
    assume (forall i_24_1_1: int ::
      { Seq#Index(b_24, i_24_1_1) }
      0 <= i_24_1_1 && i_24_1_1 < len_3 ==> Heap[Seq#Index(b_24, i_24_1_1), Ref__Integer_value] == i_24_1_1
    );
    if (*) {
      if (0 < i_25_1 && i_25_1 < len_3) {
        assert {:msg "  Postcondition of Ref__example might not hold. Assertion c[i].Ref__Integer_value == i + 2 might not hold. (test_forward_dep_c.vpr@198.12--198.88) [131095]"}
          Heap[Seq#Index(c, i_25_1), Ref__Integer_value] == i_25_1 + 2;
      }
      assume false;
    }
    assume (forall i_26_1_1: int ::
      { Seq#Index(c, i_26_1_1) }
      0 < i_26_1_1 && i_26_1_1 < len_3 ==> Heap[Seq#Index(c, i_26_1_1), Ref__Integer_value] == i_26_1_1 + 2
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}