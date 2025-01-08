// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:35:44
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_29: Ref, f_33: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_29, f_33] }
  Heap[o_29, $allocated] ==> Heap[Heap[o_29, f_33], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_63: Ref, f_65: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_63, f_65] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_63, f_65) ==> Heap[o_63, f_65] == ExhaleHeap[o_63, f_65]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_33: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_33), ExhaleHeap[null, PredicateMaskField(pm_f_33)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_33) && IsPredicateField(pm_f_33) ==> Heap[null, PredicateMaskField(pm_f_33)] == ExhaleHeap[null, PredicateMaskField(pm_f_33)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_33: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_33) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_33) && IsPredicateField(pm_f_33) ==> (forall <A, B> o2_33: Ref, f_65: (Field A B) ::
    { ExhaleHeap[o2_33, f_65] }
    Heap[null, PredicateMaskField(pm_f_33)][o2_33, f_65] ==> Heap[o2_33, f_65] == ExhaleHeap[o2_33, f_65]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_33: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_33), ExhaleHeap[null, WandMaskField(pm_f_33)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_33) && IsWandField(pm_f_33) ==> Heap[null, WandMaskField(pm_f_33)] == ExhaleHeap[null, WandMaskField(pm_f_33)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_33: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_33) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_33) && IsWandField(pm_f_33) ==> (forall <A, B> o2_33: Ref, f_65: (Field A B) ::
    { ExhaleHeap[o2_33, f_65] }
    Heap[null, WandMaskField(pm_f_33)][o2_33, f_65] ==> Heap[o2_33, f_65] == ExhaleHeap[o2_33, f_65]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_63: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_63, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_63, $allocated] ==> ExhaleHeap[o_63, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_29: Ref, f_52: (Field A B), v: B ::
  { Heap[o_29, f_52:=v] }
  succHeap(Heap, Heap[o_29, f_52:=v])
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

function  neverTriggered1(k_3: int): bool;
function  neverTriggered2(k_5: int): bool;
function  neverTriggered3(k_7_1: int): bool;
function  neverTriggered4(k_7_1: int): bool;
function  neverTriggered5(k_9: int): bool;
function  neverTriggered6(k_3: int): bool;
function  neverTriggered7(k_5: int): bool;
function  neverTriggered8(k_7_1: int): bool;
function  neverTriggered9(k_3: int): bool;
function  neverTriggered10(k_3: int): bool;
function  neverTriggered11(k_1_1: int): bool;
function  neverTriggered12(k_2_1: int): bool;
function  neverTriggered13(k_3: int): bool;
function  neverTriggered14(k_1_1: int): bool;
function  neverTriggered15(k_3: int): bool;
function  neverTriggered16(k_4_1: int): bool;
function  neverTriggered17(k_5: int): bool;
function  neverTriggered18(k_6: int): bool;
function  neverTriggered19(k_7_1: int): bool;
function  neverTriggered20(k_1_1: int): bool;
function  neverTriggered21(k_3: int): bool;
function  neverTriggered22(k_4_1: int): bool;
function  neverTriggered23(k_5: int): bool;
function  neverTriggered24(k_6: int): bool;
function  neverTriggered25(k_7_1: int): bool;
function  neverTriggered26(k_1_1: int): bool;
function  neverTriggered27(k_2_1: int): bool;
function  neverTriggered28(k_3: int): bool;
function  neverTriggered29(k_1_1: int): bool;
function  neverTriggered30(k_3: int): bool;
function  neverTriggered31(k_4_1: int): bool;
function  neverTriggered32(k_5: int): bool;
function  neverTriggered33(k_6: int): bool;
function  neverTriggered34(k_7_1: int): bool;
function  neverTriggered35(k_8: int): bool;
function  neverTriggered36(k_9: int): bool;
function  neverTriggered37(k_10_2: int): bool;
function  neverTriggered38(k_11: int): bool;
function  neverTriggered39(k_1_1: int): bool;
function  neverTriggered40(k_2_1: int): bool;
function  neverTriggered41(k_3: int): bool;
function  neverTriggered42(k_4_1: int): bool;
function  neverTriggered43(k_1_1: int): bool;
function  neverTriggered44(k_2_1: int): bool;
function  neverTriggered45(k_3: int): bool;
function  neverTriggered46(k_4_1: int): bool;
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
function  invRecv36(recv: Ref): int;
function  invRecv37(recv: Ref): int;
function  invRecv38(recv: Ref): int;
function  invRecv39(recv: Ref): int;
function  invRecv40(recv: Ref): int;
function  invRecv41(recv: Ref): int;
function  invRecv42(recv: Ref): int;
function  invRecv43(recv: Ref): int;
function  invRecv44(recv: Ref): int;
function  invRecv45(recv: Ref): int;
function  invRecv46(recv: Ref): int;
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
function  qpRange36(recv: Ref): bool;
function  qpRange37(recv: Ref): bool;
function  qpRange38(recv: Ref): bool;
function  qpRange39(recv: Ref): bool;
function  qpRange40(recv: Ref): bool;
function  qpRange41(recv: Ref): bool;
function  qpRange42(recv: Ref): bool;
function  qpRange43(recv: Ref): bool;
function  qpRange44(recv: Ref): bool;
function  qpRange45(recv: Ref): bool;
function  qpRange46(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 6: fun03
// - height 5: fun04
// - height 4: fun02
// - height 3: fun01
// - height 2: fun05
// - height 1: fun06
// - height 0: fun07
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, xs: (Seq Ref)): int;
function  fun01'(Heap: HeapType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun01(Heap, xs) }
  fun01(Heap, xs) == fun01'(Heap, xs) && dummyFunction(fun01#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun01'(Heap, xs) }
  dummyFunction(fun01#triggerStateless(xs))
);

// Framing axioms
function  fun01#frame(frame: FrameType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun01'(Heap, xs) }
  state(Heap, Mask) ==> fun01'(Heap, xs) == fun01#frame(FrameFragment(fun01#condqp1(Heap, xs)), xs)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) in function fun01
// ==================================================

function  fun01#condqp1(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun01#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) && sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) < 3) && NoPerm < FullPerm <==> (0 <= sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) && sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) < 3) && NoPerm < FullPerm) && ((0 <= sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) && sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs))), f_7]) ==> fun01#condqp1(Heap2Heap, xs) == fun01#condqp1(Heap1Heap, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun01#triggerStateless(xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness(xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var i1_17: int;
  var i2_7: int;
  var k_2: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_17) && (Seq#Contains(Seq#Range(0, 3), i2_7) && i1_17 != i2_7)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@9.12--9.100) [73084]"}
            i1_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@9.12--9.100) [73085]"}
            i1_17 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@9.12--9.100) [73086]"}
            i2_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@9.12--9.100) [73087]"}
            i2_7 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_2_1: int, i2_2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#Contains(Seq#Range(0, 3), i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#Contains(Seq#Range(0, 3), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Contains(Seq#Range(0, 3), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Index(xs, i1_2_1), Seq#Index(xs, i2_2_1) }
      Seq#Contains(Seq#Range(0, 3), i1_2_1) && (Seq#Contains(Seq#Range(0, 3), i2_2_1) && i1_2_1 != i2_2_1) ==> Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_2 && k_2 < 3) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@10.12--10.61) [73088]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@10.12--10.61) [73089]"}
            k_2 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@10.12--10.61) [73090]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && (0 <= k_3 && k_3 < 3)) && (0 <= k_3_1 && k_3_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        (0 <= k_3 && k_3 < 3) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, k_3)) && invRecv1(Seq#Index(xs, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < 3) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(xs, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        0 <= k_3 && k_3 < 3 ==> Seq#Index(xs, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < 3) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < 3) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun02
// ==================================================

// Uninterpreted function definitions
function  fun02(Heap: HeapType, xs: (Seq Ref)): int;
function  fun02'(Heap: HeapType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun02(Heap, xs) }
  fun02(Heap, xs) == fun02'(Heap, xs) && dummyFunction(fun02#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun02'(Heap, xs) }
  dummyFunction(fun02#triggerStateless(xs))
);

// Framing axioms
function  fun02#frame(frame: FrameType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun02'(Heap, xs) }
  state(Heap, Mask) ==> fun02'(Heap, xs) == fun02#frame(CombineFrames(FrameFragment(fun02#condqp2(Heap, xs)), FrameFragment(fun02#condqp3(Heap, xs))), xs)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) in function fun02
// ==================================================

function  fun02#condqp2(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun02#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) < 3) && NoPerm < FullPerm <==> (0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) < 3) && NoPerm < FullPerm) && ((0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs))), f_7]) ==> fun02#condqp2(Heap2Heap, xs) == fun02#condqp2(Heap1Heap, xs)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write)) in function fun02
// ==================================================

function  fun02#condqp3(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun02#condqp3(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((6 <= sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs)) && sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs)) < 9) && NoPerm < FullPerm <==> (6 <= sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs)) && sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs)) < 9) && NoPerm < FullPerm) && ((6 <= sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs)) && sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs)) < 9) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs), fun02#condqp3(Heap1Heap, xs))), f_7]) ==> fun02#condqp3(Heap2Heap, xs) == fun02#condqp3(Heap1Heap, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun02#triggerStateless(xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun02#definedness(xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var i1_18: int;
  var i2_8: int;
  var k_7: int;
  var QPMask: MaskType;
  var i1_12: int;
  var i2_2: int;
  var k_12: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_18) && (Seq#Contains(Seq#Range(0, 3), i2_8) && i1_18 != i2_8)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@26.12--26.100) [73091]"}
            i1_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@26.12--26.100) [73092]"}
            i1_18 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@26.12--26.100) [73093]"}
            i2_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@26.12--26.100) [73094]"}
            i2_8 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_3: int, i2_3: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3), Seq#Contains(Seq#Range(0, 3), i2_3) } { Seq#Contains(Seq#Range(0, 3), i1_3), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3) } { Seq#Contains(Seq#Range(0, 3), i1_3), Seq#Contains(Seq#Range(0, 3), i2_3) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3), Seq#Index(xs, i2_3) } { Seq#Contains(Seq#Range(0, 3), i1_3), Seq#Index(xs, i2_3) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_3), Seq#Index(xs, i1_3) } { Seq#Contains(Seq#Range(0, 3), i2_3), Seq#Index(xs, i1_3) } { Seq#Index(xs, i1_3), Seq#Index(xs, i2_3) }
      Seq#Contains(Seq#Range(0, 3), i1_3) && (Seq#Contains(Seq#Range(0, 3), i2_3) && i1_3 != i2_3) ==> Seq#Index(xs, i1_3) != Seq#Index(xs, i2_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_7 && k_7 < 3) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@27.12--27.61) [73095]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@27.12--27.61) [73096]"}
            k_7 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@27.12--27.61) [73097]"}
      (forall k_5: int, k_5_1: int ::
      
      (((k_5 != k_5_1 && (0 <= k_5 && k_5 < 3)) && (0 <= k_5_1 && k_5_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_5) != Seq#Index(xs, k_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_5: int ::
        { Seq#Index(xs, k_5) } { Seq#Index(xs, k_5) }
        (0 <= k_5 && k_5 < 3) && NoPerm < FullPerm ==> qpRange2(Seq#Index(xs, k_5)) && invRecv2(Seq#Index(xs, k_5)) == k_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < 3) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(xs, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_5: int ::
        { Seq#Index(xs, k_5) } { Seq#Index(xs, k_5) }
        0 <= k_5 && k_5 < 3 ==> Seq#Index(xs, k_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < 3) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv2(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < 3) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(6, 9), i1_12) && (Seq#Contains(Seq#Range(6, 9), i2_2) && i1_12 != i2_2)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@28.12--28.100) [73098]"}
            i1_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@28.12--28.100) [73099]"}
            i1_12 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@28.12--28.100) [73100]"}
            i2_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@28.12--28.100) [73101]"}
            i2_2 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_5: int, i2_5: int ::
      { Seq#ContainsTrigger(Seq#Range(6, 9), i1_5), Seq#ContainsTrigger(Seq#Range(6, 9), i2_5) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_5), Seq#Contains(Seq#Range(6, 9), i2_5) } { Seq#Contains(Seq#Range(6, 9), i1_5), Seq#ContainsTrigger(Seq#Range(6, 9), i2_5) } { Seq#Contains(Seq#Range(6, 9), i1_5), Seq#Contains(Seq#Range(6, 9), i2_5) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_5), Seq#Index(xs, i2_5) } { Seq#Contains(Seq#Range(6, 9), i1_5), Seq#Index(xs, i2_5) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_5), Seq#Index(xs, i1_5) } { Seq#Contains(Seq#Range(6, 9), i2_5), Seq#Index(xs, i1_5) } { Seq#Index(xs, i1_5), Seq#Index(xs, i2_5) }
      Seq#Contains(Seq#Range(6, 9), i1_5) && (Seq#Contains(Seq#Range(6, 9), i2_5) && i1_5 != i2_5) ==> Seq#Index(xs, i1_5) != Seq#Index(xs, i2_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write))
      if (*) {
        if (6 <= k_12 && k_12 < 9) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@29.12--29.61) [73102]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@29.12--29.61) [73103]"}
            k_12 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@29.12--29.61) [73104]"}
      (forall k_7_1: int, k_7_2: int ::
      
      (((k_7_1 != k_7_2 && (6 <= k_7_1 && k_7_1 < 9)) && (6 <= k_7_2 && k_7_2 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_7_1) != Seq#Index(xs, k_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_7_1: int ::
        { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
        (6 <= k_7_1 && k_7_1 < 9) && NoPerm < FullPerm ==> qpRange3(Seq#Index(xs, k_7_1)) && invRecv3(Seq#Index(xs, k_7_1)) == k_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((6 <= invRecv3(o_4) && invRecv3(o_4) < 9) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(xs, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_7_1: int ::
        { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
        6 <= k_7_1 && k_7_1 < 9 ==> Seq#Index(xs, k_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((6 <= invRecv3(o_4) && invRecv3(o_4) < 9) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv3(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((6 <= invRecv3(o_4) && invRecv3(o_4) < 9) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun03
// ==================================================

// Uninterpreted function definitions
function  fun03(Heap: HeapType, xs: (Seq Ref)): int;
function  fun03'(Heap: HeapType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun03(Heap, xs) }
  fun03(Heap, xs) == fun03'(Heap, xs) && dummyFunction(fun03#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun03'(Heap, xs) }
  dummyFunction(fun03#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun03(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> (Seq#Length(xs) > 10 && (forall i1: int, i2_1: int ::
    { Seq#ContainsTrigger(Seq#Range(0, 3), i1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1), Seq#Contains(Seq#Range(0, 3), i2_1) } { Seq#Contains(Seq#Range(0, 3), i1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1) } { Seq#Contains(Seq#Range(0, 3), i1), Seq#Contains(Seq#Range(0, 3), i2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1), Seq#Index(xs, i2_1) } { Seq#Contains(Seq#Range(0, 3), i1), Seq#Index(xs, i2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_1), Seq#Index(xs, i1) } { Seq#Contains(Seq#Range(0, 3), i2_1), Seq#Index(xs, i1) } { Seq#Index(xs, i1), Seq#Index(xs, i2_1) }
    Seq#Contains(Seq#Range(0, 3), i1) && (Seq#Contains(Seq#Range(0, 3), i2_1) && i1 != i2_1) ==> Seq#Index(xs, i1) != Seq#Index(xs, i2_1)
  )) && (forall i1_1_1: int, i2_1_1: int ::
    { Seq#ContainsTrigger(Seq#Range(6, 9), i1_1_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_1_1), Seq#Contains(Seq#Range(6, 9), i2_1_1) } { Seq#Contains(Seq#Range(6, 9), i1_1_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_1_1) } { Seq#Contains(Seq#Range(6, 9), i1_1_1), Seq#Contains(Seq#Range(6, 9), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(6, 9), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(6, 9), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
    Seq#Contains(Seq#Range(6, 9), i1_1_1) && (Seq#Contains(Seq#Range(6, 9), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
  ) ==> fun03(Heap, xs) == Heap[Seq#Index(xs, 2), f_7] + Heap[Seq#Index(xs, 6), f_7]
);

// Framing axioms
function  fun03#frame(frame: FrameType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun03'(Heap, xs) }
  state(Heap, Mask) ==> fun03'(Heap, xs) == fun03#frame(CombineFrames(FrameFragment(fun03#condqp4(Heap, xs)), FrameFragment(fun03#condqp5(Heap, xs))), xs)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) in function fun03
// ==================================================

function  fun03#condqp4(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun03#condqp4(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs)) && sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs)) < 3) && NoPerm < FullPerm <==> (0 <= sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs)) && sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs)) < 3) && NoPerm < FullPerm) && ((0 <= sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs)) && sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs), fun03#condqp4(Heap1Heap, xs))), f_7]) ==> fun03#condqp4(Heap2Heap, xs) == fun03#condqp4(Heap1Heap, xs)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write)) in function fun03
// ==================================================

function  fun03#condqp5(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun03#condqp5(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((6 <= sk_fun03#condqp5(fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs)) && sk_fun03#condqp5(fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs)) < 9) && NoPerm < FullPerm <==> (6 <= sk_fun03#condqp5(fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs)) && sk_fun03#condqp5(fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs)) < 9) && NoPerm < FullPerm) && ((6 <= sk_fun03#condqp5(fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs)) && sk_fun03#condqp5(fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs)) < 9) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun03#condqp5(fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun03#condqp5(fun03#condqp5(Heap2Heap, xs), fun03#condqp5(Heap1Heap, xs))), f_7]) ==> fun03#condqp5(Heap2Heap, xs) == fun03#condqp5(Heap1Heap, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun03#trigger(frame: FrameType, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun03#triggerStateless(xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun03#definedness(xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var i1_19: int;
  var i2_9: int;
  var k_16: int;
  var QPMask: MaskType;
  var i1_20: int;
  var i2_10: int;
  var k_18: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_19) && (Seq#Contains(Seq#Range(0, 3), i2_9) && i1_19 != i2_9)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@47.12--47.100) [73105]"}
            i1_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@47.12--47.100) [73106]"}
            i1_19 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@47.12--47.100) [73107]"}
            i2_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@47.12--47.100) [73108]"}
            i2_9 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_5: int, i2_5: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5), Seq#Contains(Seq#Range(0, 3), i2_5) } { Seq#Contains(Seq#Range(0, 3), i1_5), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5) } { Seq#Contains(Seq#Range(0, 3), i1_5), Seq#Contains(Seq#Range(0, 3), i2_5) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5), Seq#Index(xs, i2_5) } { Seq#Contains(Seq#Range(0, 3), i1_5), Seq#Index(xs, i2_5) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_5), Seq#Index(xs, i1_5) } { Seq#Contains(Seq#Range(0, 3), i2_5), Seq#Index(xs, i1_5) } { Seq#Index(xs, i1_5), Seq#Index(xs, i2_5) }
      Seq#Contains(Seq#Range(0, 3), i1_5) && (Seq#Contains(Seq#Range(0, 3), i2_5) && i1_5 != i2_5) ==> Seq#Index(xs, i1_5) != Seq#Index(xs, i2_5)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_16 && k_16 < 3) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@48.12--48.61) [73109]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@48.12--48.61) [73110]"}
            k_16 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@48.12--48.61) [73111]"}
      (forall k_7_1: int, k_7_2: int ::
      
      (((k_7_1 != k_7_2 && (0 <= k_7_1 && k_7_1 < 3)) && (0 <= k_7_2 && k_7_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_7_1) != Seq#Index(xs, k_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_7_1: int ::
        { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
        (0 <= k_7_1 && k_7_1 < 3) && NoPerm < FullPerm ==> qpRange4(Seq#Index(xs, k_7_1)) && invRecv4(Seq#Index(xs, k_7_1)) == k_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < 3) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(xs, invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_7_1: int ::
        { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
        0 <= k_7_1 && k_7_1 < 3 ==> Seq#Index(xs, k_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < 3) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv4(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < 3) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(6, 9), i1_20) && (Seq#Contains(Seq#Range(6, 9), i2_10) && i1_20 != i2_10)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@49.12--49.100) [73112]"}
            i1_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@49.12--49.100) [73113]"}
            i1_20 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@49.12--49.100) [73114]"}
            i2_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@49.12--49.100) [73115]"}
            i2_10 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_7: int, i2_7_2: int ::
      { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7), Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_2) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7), Seq#Contains(Seq#Range(6, 9), i2_7_2) } { Seq#Contains(Seq#Range(6, 9), i1_7), Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_2) } { Seq#Contains(Seq#Range(6, 9), i1_7), Seq#Contains(Seq#Range(6, 9), i2_7_2) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7), Seq#Index(xs, i2_7_2) } { Seq#Contains(Seq#Range(6, 9), i1_7), Seq#Index(xs, i2_7_2) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_2), Seq#Index(xs, i1_7) } { Seq#Contains(Seq#Range(6, 9), i2_7_2), Seq#Index(xs, i1_7) } { Seq#Index(xs, i1_7), Seq#Index(xs, i2_7_2) }
      Seq#Contains(Seq#Range(6, 9), i1_7) && (Seq#Contains(Seq#Range(6, 9), i2_7_2) && i1_7 != i2_7_2) ==> Seq#Index(xs, i1_7) != Seq#Index(xs, i2_7_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write))
      if (*) {
        if (6 <= k_18 && k_18 < 9) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@50.12--50.61) [73116]"}
            k_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@50.12--50.61) [73117]"}
            k_18 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@50.12--50.61) [73118]"}
      (forall k_9: int, k_9_2: int ::
      
      (((k_9 != k_9_2 && (6 <= k_9 && k_9 < 9)) && (6 <= k_9_2 && k_9_2 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_9) != Seq#Index(xs, k_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_9: int ::
        { Seq#Index(xs, k_9) } { Seq#Index(xs, k_9) }
        (6 <= k_9 && k_9 < 9) && NoPerm < FullPerm ==> qpRange5(Seq#Index(xs, k_9)) && invRecv5(Seq#Index(xs, k_9)) == k_9
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        ((6 <= invRecv5(o_4) && invRecv5(o_4) < 9) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(xs, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_9: int ::
        { Seq#Index(xs, k_9) } { Seq#Index(xs, k_9) }
        6 <= k_9 && k_9 < 9 ==> Seq#Index(xs, k_9) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((6 <= invRecv5(o_4) && invRecv5(o_4) < 9) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv5(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((6 <= invRecv5(o_4) && invRecv5(o_4) < 9) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[2].f + xs[6].f
      assert {:msg "  Function might not be well-formed. Index xs[2] into xs might exceed sequence length. (issue_0139.vpr@45.1--51.22) [73119]"}
        2 < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[2].f (issue_0139.vpr@45.1--51.22) [73120]"}
        HasDirectPerm(Mask, Seq#Index(xs, 2), f_7);
      assert {:msg "  Function might not be well-formed. Index xs[6] into xs might exceed sequence length. (issue_0139.vpr@45.1--51.22) [73121]"}
        6 < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[6].f (issue_0139.vpr@45.1--51.22) [73122]"}
        HasDirectPerm(Mask, Seq#Index(xs, 6), f_7);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, 2), f_7] + Heap[Seq#Index(xs, 6), f_7];
}

// ==================================================
// Translation of function fun07
// ==================================================

// Uninterpreted function definitions
function  fun07(Heap: HeapType, xs: (Seq Ref)): int;
function  fun07'(Heap: HeapType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun07(Heap, xs) }
  fun07(Heap, xs) == fun07'(Heap, xs) && dummyFunction(fun07#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: (Seq Ref) ::
  { fun07'(Heap, xs) }
  dummyFunction(fun07#triggerStateless(xs))
);

// Framing axioms
function  fun07#frame(frame: FrameType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun07'(Heap, xs) }
  state(Heap, Mask) ==> fun07'(Heap, xs) == fun07#frame(FrameFragment(fun07#condqp6(Heap, xs)), xs)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) in function fun07
// ==================================================

function  fun07#condqp6(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun07#condqp6(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun07#condqp6(fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs)) && sk_fun07#condqp6(fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs)) < 3) && NoPerm < FullPerm <==> (0 <= sk_fun07#condqp6(fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs)) && sk_fun07#condqp6(fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs)) < 3) && NoPerm < FullPerm) && ((0 <= sk_fun07#condqp6(fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs)) && sk_fun07#condqp6(fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun07#condqp6(fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun07#condqp6(fun07#condqp6(Heap2Heap, xs), fun07#condqp6(Heap1Heap, xs))), f_7]) ==> fun07#condqp6(Heap2Heap, xs) == fun07#condqp6(Heap1Heap, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun07#trigger(frame: FrameType, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun07#triggerStateless(xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun07#definedness(xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var i1_21: int;
  var i2_11: int;
  var k_20: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_21) && (Seq#Contains(Seq#Range(0, 3), i2_11) && i1_21 != i2_11)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@69.12--69.100) [73123]"}
            i1_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@69.12--69.100) [73124]"}
            i1_21 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@69.12--69.100) [73125]"}
            i2_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@69.12--69.100) [73126]"}
            i2_11 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_2_1: int, i2_2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#Contains(Seq#Range(0, 3), i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#Contains(Seq#Range(0, 3), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Contains(Seq#Range(0, 3), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Index(xs, i1_2_1), Seq#Index(xs, i2_2_1) }
      Seq#Contains(Seq#Range(0, 3), i1_2_1) && (Seq#Contains(Seq#Range(0, 3), i2_2_1) && i1_2_1 != i2_2_1) ==> Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_20 && k_20 < 3) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@70.12--70.61) [73127]"}
            k_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@70.12--70.61) [73128]"}
            k_20 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@70.12--70.61) [73129]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && (0 <= k_3 && k_3 < 3)) && (0 <= k_3_1 && k_3_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        (0 <= k_3 && k_3 < 3) && NoPerm < FullPerm ==> qpRange6(Seq#Index(xs, k_3)) && invRecv6(Seq#Index(xs, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((0 <= invRecv6(o_4) && invRecv6(o_4) < 3) && NoPerm < FullPerm) && qpRange6(o_4) ==> Seq#Index(xs, invRecv6(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        0 <= k_3 && k_3 < 3 ==> Seq#Index(xs, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv6(o_4) && invRecv6(o_4) < 3) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv6(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < 3) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun04
// ==================================================

// Uninterpreted function definitions
function  fun04(Heap: HeapType, xs: (Seq Ref), b_24: bool): int;
function  fun04'(Heap: HeapType, xs: (Seq Ref), b_24: bool): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), b_24: bool ::
  { fun04(Heap, xs, b_24) }
  fun04(Heap, xs, b_24) == fun04'(Heap, xs, b_24) && dummyFunction(fun04#triggerStateless(xs, b_24))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), b_24: bool ::
  { fun04'(Heap, xs, b_24) }
  dummyFunction(fun04#triggerStateless(xs, b_24))
);

// Framing axioms
function  fun04#frame(frame: FrameType, xs: (Seq Ref), b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), b_24: bool ::
  { state(Heap, Mask), fun04'(Heap, xs, b_24) }
  state(Heap, Mask) ==> fun04'(Heap, xs, b_24) == fun04#frame(CombineFrames(FrameFragment((if b_24 then EmptyFrame else EmptyFrame)), FrameFragment((if b_24 then FrameFragment(fun04#condqp7(Heap, xs, b_24)) else FrameFragment(fun04#condqp8(Heap, xs, b_24))))), xs, b_24)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) in function fun04
// ==================================================

function  fun04#condqp7(Heap: HeapType, xs_1_1: (Seq Ref), b_1_1_1: bool): int;
function  sk_fun04#condqp7(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), b_24: bool ::
  { fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun04#condqp7(fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24)) && sk_fun04#condqp7(fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24)) < 3) && NoPerm < FullPerm <==> (0 <= sk_fun04#condqp7(fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24)) && sk_fun04#condqp7(fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24)) < 3) && NoPerm < FullPerm) && ((0 <= sk_fun04#condqp7(fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24)) && sk_fun04#condqp7(fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun04#condqp7(fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun04#condqp7(fun04#condqp7(Heap2Heap, xs, b_24), fun04#condqp7(Heap1Heap, xs, b_24))), f_7]) ==> fun04#condqp7(Heap2Heap, xs, b_24) == fun04#condqp7(Heap1Heap, xs, b_24)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write)) in function fun04
// ==================================================

function  fun04#condqp8(Heap: HeapType, xs_1_1: (Seq Ref), b_1_1_1: bool): int;
function  sk_fun04#condqp8(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), b_24: bool ::
  { fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((6 <= sk_fun04#condqp8(fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24)) && sk_fun04#condqp8(fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24)) < 9) && NoPerm < FullPerm <==> (6 <= sk_fun04#condqp8(fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24)) && sk_fun04#condqp8(fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24)) < 9) && NoPerm < FullPerm) && ((6 <= sk_fun04#condqp8(fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24)) && sk_fun04#condqp8(fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24)) < 9) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun04#condqp8(fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun04#condqp8(fun04#condqp8(Heap2Heap, xs, b_24), fun04#condqp8(Heap1Heap, xs, b_24))), f_7]) ==> fun04#condqp8(Heap2Heap, xs, b_24) == fun04#condqp8(Heap1Heap, xs, b_24)
);

// Trigger function (controlling recursive postconditions)
function  fun04#trigger(frame: FrameType, xs: (Seq Ref), b_24: bool): bool;

// State-independent trigger function
function  fun04#triggerStateless(xs: (Seq Ref), b_24: bool): int;

// Check contract well-formedness and postcondition
procedure fun04#definedness(xs: (Seq Ref), b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var i1_26: int;
  var i2_15: int;
  var i1_27: int;
  var i2_16: int;
  var k_31: int;
  var QPMask: MaskType;
  var k_32: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    if (b_24) {
      
      // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_26) && (Seq#Contains(Seq#Range(0, 3), i2_15) && i1_26 != i2_15)) {
            assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@86.12--87.106) [73130]"}
              i1_26 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@86.12--87.106) [73131]"}
              i1_26 < Seq#Length(xs);
            assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@86.12--87.106) [73132]"}
              i2_15 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@86.12--87.106) [73133]"}
              i2_15 < Seq#Length(xs);
          }
          assume false;
        }
      assume (forall i1_3: int, i2_3: int ::
        { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3), Seq#Contains(Seq#Range(0, 3), i2_3) } { Seq#Contains(Seq#Range(0, 3), i1_3), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3) } { Seq#Contains(Seq#Range(0, 3), i1_3), Seq#Contains(Seq#Range(0, 3), i2_3) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3), Seq#Index(xs, i2_3) } { Seq#Contains(Seq#Range(0, 3), i1_3), Seq#Index(xs, i2_3) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_3), Seq#Index(xs, i1_3) } { Seq#Contains(Seq#Range(0, 3), i2_3), Seq#Index(xs, i1_3) } { Seq#Index(xs, i1_3), Seq#Index(xs, i2_3) }
        Seq#Contains(Seq#Range(0, 3), i1_3) && (Seq#Contains(Seq#Range(0, 3), i2_3) && i1_3 != i2_3) ==> Seq#Index(xs, i1_3) != Seq#Index(xs, i2_3)
      );
    } else {
      
      // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
        if (*) {
          if (Seq#Contains(Seq#Range(6, 9), i1_27) && (Seq#Contains(Seq#Range(6, 9), i2_16) && i1_27 != i2_16)) {
            assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@86.12--87.106) [73134]"}
              i1_27 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@86.12--87.106) [73135]"}
              i1_27 < Seq#Length(xs);
            assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@86.12--87.106) [73136]"}
              i2_16 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@86.12--87.106) [73137]"}
              i2_16 < Seq#Length(xs);
          }
          assume false;
        }
      assume (forall i1_5: int, i2_5: int ::
        { Seq#ContainsTrigger(Seq#Range(6, 9), i1_5), Seq#ContainsTrigger(Seq#Range(6, 9), i2_5) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_5), Seq#Contains(Seq#Range(6, 9), i2_5) } { Seq#Contains(Seq#Range(6, 9), i1_5), Seq#ContainsTrigger(Seq#Range(6, 9), i2_5) } { Seq#Contains(Seq#Range(6, 9), i1_5), Seq#Contains(Seq#Range(6, 9), i2_5) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_5), Seq#Index(xs, i2_5) } { Seq#Contains(Seq#Range(6, 9), i1_5), Seq#Index(xs, i2_5) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_5), Seq#Index(xs, i1_5) } { Seq#Contains(Seq#Range(6, 9), i2_5), Seq#Index(xs, i1_5) } { Seq#Index(xs, i1_5), Seq#Index(xs, i2_5) }
        Seq#Contains(Seq#Range(6, 9), i1_5) && (Seq#Contains(Seq#Range(6, 9), i2_5) && i1_5 != i2_5) ==> Seq#Index(xs, i1_5) != Seq#Index(xs, i2_5)
      );
    }
    assume state(Heap, Mask);
    if (b_24) {
      
      // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
        if (*) {
          if (0 <= k_31 && k_31 < 3) {
            assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@88.12--89.67) [73138]"}
              k_31 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@88.12--89.67) [73139]"}
              k_31 < Seq#Length(xs);
          }
          assume false;
        }
      havoc QPMask;
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@88.12--89.67) [73140]"}
        (forall k_5: int, k_5_1: int ::
        
        (((k_5 != k_5_1 && (0 <= k_5 && k_5 < 3)) && (0 <= k_5_1 && k_5_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_5) != Seq#Index(xs, k_5_1)
      );
      
      // -- Define Inverse Function
        assume (forall k_5: int ::
          { Seq#Index(xs, k_5) } { Seq#Index(xs, k_5) }
          (0 <= k_5 && k_5 < 3) && NoPerm < FullPerm ==> qpRange7(Seq#Index(xs, k_5)) && invRecv7(Seq#Index(xs, k_5)) == k_5
        );
        assume (forall o_4: Ref ::
          { invRecv7(o_4) }
          ((0 <= invRecv7(o_4) && invRecv7(o_4) < 3) && NoPerm < FullPerm) && qpRange7(o_4) ==> Seq#Index(xs, invRecv7(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_5: int ::
          { Seq#Index(xs, k_5) } { Seq#Index(xs, k_5) }
          0 <= k_5 && k_5 < 3 ==> Seq#Index(xs, k_5) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (((0 <= invRecv7(o_4) && invRecv7(o_4) < 3) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv7(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv7(o_4) && invRecv7(o_4) < 3) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
    } else {
      
      // -- Check definedness of (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write))
        if (*) {
          if (6 <= k_32 && k_32 < 9) {
            assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@88.12--89.67) [73141]"}
              k_32 >= 0;
            assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@88.12--89.67) [73142]"}
              k_32 < Seq#Length(xs);
          }
          assume false;
        }
      havoc QPMask;
      assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@88.12--89.67) [73143]"}
        (forall k_7_1: int, k_7_2: int ::
        
        (((k_7_1 != k_7_2 && (6 <= k_7_1 && k_7_1 < 9)) && (6 <= k_7_2 && k_7_2 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_7_1) != Seq#Index(xs, k_7_2)
      );
      
      // -- Define Inverse Function
        assume (forall k_7_1: int ::
          { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
          (6 <= k_7_1 && k_7_1 < 9) && NoPerm < FullPerm ==> qpRange8(Seq#Index(xs, k_7_1)) && invRecv8(Seq#Index(xs, k_7_1)) == k_7_1
        );
        assume (forall o_4: Ref ::
          { invRecv8(o_4) }
          ((6 <= invRecv8(o_4) && invRecv8(o_4) < 9) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(xs, invRecv8(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_7_1: int ::
          { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
          6 <= k_7_1 && k_7_1 < 9 ==> Seq#Index(xs, k_7_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (((6 <= invRecv8(o_4) && invRecv8(o_4) < 9) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv8(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((6 <= invRecv8(o_4) && invRecv8(o_4) < 9) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun05
// ==================================================

// Uninterpreted function definitions
function  fun05(Heap: HeapType, x: Ref, xs: (Seq Ref)): int;
function  fun05'(Heap: HeapType, x: Ref, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, x: Ref, xs: (Seq Ref) ::
  { fun05(Heap, x, xs) }
  fun05(Heap, x, xs) == fun05'(Heap, x, xs) && dummyFunction(fun05#triggerStateless(x, xs))
);
axiom (forall Heap: HeapType, x: Ref, xs: (Seq Ref) ::
  { fun05'(Heap, x, xs) }
  dummyFunction(fun05#triggerStateless(x, xs))
);

// Framing axioms
function  fun05#frame(frame: FrameType, x: Ref, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, xs: (Seq Ref) ::
  { state(Heap, Mask), fun05'(Heap, x, xs) }
  state(Heap, Mask) ==> fun05'(Heap, x, xs) == fun05#frame(CombineFrames(FrameFragment(Heap[x, g]), FrameFragment(fun05#condqp9(Heap, x, xs))), x, xs)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) in function fun05
// ==================================================

function  fun05#condqp9(Heap: HeapType, x_1_1_1: Ref, xs_1_1: (Seq Ref)): int;
function  sk_fun05#condqp9(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, xs: (Seq Ref) ::
  { fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun05#condqp9(fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs)) && sk_fun05#condqp9(fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs)) < 3) && NoPerm < FullPerm <==> (0 <= sk_fun05#condqp9(fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs)) && sk_fun05#condqp9(fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs)) < 3) && NoPerm < FullPerm) && ((0 <= sk_fun05#condqp9(fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs)) && sk_fun05#condqp9(fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun05#condqp9(fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun05#condqp9(fun05#condqp9(Heap2Heap, x, xs), fun05#condqp9(Heap1Heap, x, xs))), f_7]) ==> fun05#condqp9(Heap2Heap, x, xs) == fun05#condqp9(Heap1Heap, x, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun05#trigger(frame: FrameType, x: Ref, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun05#triggerStateless(x: Ref, xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun05#definedness(x: Ref, xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var i1_28: int;
  var i2_17: int;
  var k_23: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 3 <= Seq#Length(xs);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_28) && (Seq#Contains(Seq#Range(0, 3), i2_17) && i1_28 != i2_17)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@112.12--112.100) [73144]"}
            i1_28 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@112.12--112.100) [73145]"}
            i1_28 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@112.12--112.100) [73146]"}
            i2_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@112.12--112.100) [73147]"}
            i2_17 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_2_1: int, i2_2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#Contains(Seq#Range(0, 3), i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#Contains(Seq#Range(0, 3), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Contains(Seq#Range(0, 3), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Index(xs, i1_2_1), Seq#Index(xs, i2_2_1) }
      Seq#Contains(Seq#Range(0, 3), i1_2_1) && (Seq#Contains(Seq#Range(0, 3), i2_2_1) && i1_2_1 != i2_2_1) ==> Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_23 && k_23 < 3) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@113.12--113.61) [73148]"}
            k_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@113.12--113.61) [73149]"}
            k_23 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@113.12--113.61) [73150]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && (0 <= k_3 && k_3 < 3)) && (0 <= k_3_1 && k_3_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        (0 <= k_3 && k_3 < 3) && NoPerm < FullPerm ==> qpRange9(Seq#Index(xs, k_3)) && invRecv9(Seq#Index(xs, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < 3) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(xs, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        0 <= k_3 && k_3 < 3 ==> Seq#Index(xs, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < 3) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv9(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < 3) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun06
// ==================================================

// Uninterpreted function definitions
function  fun06(Heap: HeapType, x: Ref, i: int, xs: (Seq Ref)): int;
function  fun06'(Heap: HeapType, x: Ref, i: int, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, x: Ref, i: int, xs: (Seq Ref) ::
  { fun06(Heap, x, i, xs) }
  fun06(Heap, x, i, xs) == fun06'(Heap, x, i, xs) && dummyFunction(fun06#triggerStateless(x, i, xs))
);
axiom (forall Heap: HeapType, x: Ref, i: int, xs: (Seq Ref) ::
  { fun06'(Heap, x, i, xs) }
  dummyFunction(fun06#triggerStateless(x, i, xs))
);

// Framing axioms
function  fun06#frame(frame: FrameType, x: Ref, i: int, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, i: int, xs: (Seq Ref) ::
  { state(Heap, Mask), fun06'(Heap, x, i, xs) }
  state(Heap, Mask) ==> fun06'(Heap, x, i, xs) == fun06#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(fun06#condqp10(Heap, x, i, xs))), x, i, xs)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) in function fun06
// ==================================================

function  fun06#condqp10(Heap: HeapType, x_1_1_1: Ref, i_1_1_1: int, xs_1_1: (Seq Ref)): int;
function  sk_fun06#condqp10(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, i: int, xs: (Seq Ref) ::
  { fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun06#condqp10(fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs)) && sk_fun06#condqp10(fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs)) < 3) && NoPerm < FullPerm <==> (0 <= sk_fun06#condqp10(fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs)) && sk_fun06#condqp10(fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs)) < 3) && NoPerm < FullPerm) && ((0 <= sk_fun06#condqp10(fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs)) && sk_fun06#condqp10(fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun06#condqp10(fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun06#condqp10(fun06#condqp10(Heap2Heap, x, i, xs), fun06#condqp10(Heap1Heap, x, i, xs))), f_7]) ==> fun06#condqp10(Heap2Heap, x, i, xs) == fun06#condqp10(Heap1Heap, x, i, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun06#trigger(frame: FrameType, x: Ref, i: int, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun06#triggerStateless(x: Ref, i: int, xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun06#definedness(x: Ref, i: int, xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var i1_29: int;
  var i2_18: int;
  var k_25: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume i > 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_29) && (Seq#Contains(Seq#Range(0, 3), i2_18) && i1_29 != i2_18)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might be negative. (issue_0139.vpr@132.12--132.100) [73151]"}
            i1_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@132.12--132.100) [73152]"}
            i1_29 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might be negative. (issue_0139.vpr@132.12--132.100) [73153]"}
            i2_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@132.12--132.100) [73154]"}
            i2_18 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_2_1: int, i2_2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#Contains(Seq#Range(0, 3), i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#Contains(Seq#Range(0, 3), i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#Contains(Seq#Range(0, 3), i1_2_1), Seq#Index(xs, i2_2_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Contains(Seq#Range(0, 3), i2_2_1), Seq#Index(xs, i1_2_1) } { Seq#Index(xs, i1_2_1), Seq#Index(xs, i2_2_1) }
      Seq#Contains(Seq#Range(0, 3), i1_2_1) && (Seq#Contains(Seq#Range(0, 3), i2_2_1) && i1_2_1 != i2_2_1) ==> Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_25 && k_25 < 3) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (issue_0139.vpr@133.12--133.61) [73155]"}
            k_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@133.12--133.61) [73156]"}
            k_25 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@133.12--133.61) [73157]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && (0 <= k_3 && k_3 < 3)) && (0 <= k_3_1 && k_3_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        (0 <= k_3 && k_3 < 3) && NoPerm < FullPerm ==> qpRange10(Seq#Index(xs, k_3)) && invRecv10(Seq#Index(xs, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((0 <= invRecv10(o_4) && invRecv10(o_4) < 3) && NoPerm < FullPerm) && qpRange10(o_4) ==> Seq#Index(xs, invRecv10(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        0 <= k_3 && k_3 < 3 ==> Seq#Index(xs, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv10(o_4) && invRecv10(o_4) < 3) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv10(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv10(o_4) && invRecv10(o_4) < 3) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i1_1: int;
  var i2_19: int;
  var k_27: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_2_1: int;
  var i2_2_1: int;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i1_4_1: int;
  var i2_4: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |xs| > 10 -- issue_0139.vpr@13.3--13.19
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..3)), (i2 in [0..3)) }
  //     { (i1 in [0..3)), xs[i2] }
  //     { (i2 in [0..3)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@14.3--14.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_1) && (Seq#Contains(Seq#Range(0, 3), i2_19) && i1_1 != i2_19)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@14.10--14.98) [73158]"}
            i1_1 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@14.10--14.98) [73159]"}
            i1_1 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@14.10--14.98) [73160]"}
            i2_19 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@14.10--14.98) [73161]"}
            i2_19 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, 3), i1_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) -- issue_0139.vpr@15.3--15.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_27 && k_27 < 3) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@15.10--15.59) [73162]"}
            k_27 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@15.10--15.59) [73163]"}
            k_27 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@15.10--15.59) [73164]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < 3)) && (0 <= k_1_2 && k_1_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        (0 <= k_1_1 && k_1_1 < 3) && NoPerm < FullPerm ==> qpRange11(Seq#Index(xs, k_1_1)) && invRecv11(Seq#Index(xs, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < 3) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(xs, invRecv11(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        0 <= k_1_1 && k_1_1 < 3 ==> Seq#Index(xs, k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv11(o_4) && invRecv11(o_4) < 3) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv11(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < 3) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 == fun01(xs) -- issue_0139.vpr@17.3--17.25
    assume state(Heap, Mask);
    
    // -- Check definedness of 10 == fun01(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun01 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@17.16--17.25) [73165]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_2_1) && (Seq#Contains(Seq#Range(0, 3), i2_2_1) && i1_2_1 != i2_2_1)) {
            assert {:msg "  Precondition of function fun01 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@17.16--17.25) [73166]"}
              Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1);
          }
          assume false;
        }
        assume (forall i1_3_1_1: int, i2_3_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#Contains(Seq#Range(0, 3), i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#Contains(Seq#Range(0, 3), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Index(xs, i1_3_1_1), Seq#Index(xs, i2_3_1) }
          Seq#Contains(Seq#Range(0, 3), i1_3_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_3_1) && i1_3_1_1 != i2_3_1) ==> Seq#Index(xs, i1_3_1_1) != Seq#Index(xs, i2_3_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun01 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@17.16--17.25) [73167]"}
            (forall k_2_1: int, k_2_2: int ::
            { neverTriggered12(k_2_1), neverTriggered12(k_2_2) }
            (((k_2_1 != k_2_2 && (0 <= k_2_1 && k_2_1 < 3)) && (0 <= k_2_2 && k_2_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_2_1) != Seq#Index(xs, k_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@17.16--17.25) [73168]"}
            (forall k_2_1: int ::
            { Seq#Index(xs, k_2_1) } { Seq#Index(xs, k_2_1) }
            0 <= k_2_1 && k_2_1 < 3 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_2_1: int ::
            { Seq#Index(xs, k_2_1) } { Seq#Index(xs, k_2_1) }
            (0 <= k_2_1 && k_2_1 < 3) && NoPerm < FullPerm ==> qpRange12(Seq#Index(xs, k_2_1)) && invRecv12(Seq#Index(xs, k_2_1)) == k_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            (0 <= invRecv12(o_4) && invRecv12(o_4) < 3) && (NoPerm < FullPerm && qpRange12(o_4)) ==> Seq#Index(xs, invRecv12(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 10 == fun01(Heap, xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 10 == fun01(xs) -- issue_0139.vpr@18.3--18.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 10 == fun01(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun01 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@18.16--18.25) [73169]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_4_1) && (Seq#Contains(Seq#Range(0, 3), i2_4) && i1_4_1 != i2_4)) {
            assert {:msg "  Precondition of function fun01 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@18.16--18.25) [73170]"}
              Seq#Index(xs, i1_4_1) != Seq#Index(xs, i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Contains(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Index(xs, i1_5_1), Seq#Index(xs, i2_5_1_1) }
          Seq#Contains(Seq#Range(0, 3), i1_5_1) && (Seq#Contains(Seq#Range(0, 3), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(xs, i1_5_1) != Seq#Index(xs, i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun01 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@18.16--18.25) [73171]"}
            (forall k_3: int, k_3_1: int ::
            { neverTriggered13(k_3), neverTriggered13(k_3_1) }
            (((k_3 != k_3_1 && (0 <= k_3 && k_3 < 3)) && (0 <= k_3_1 && k_3_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@18.16--18.25) [73172]"}
            (forall k_3: int ::
            { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
            0 <= k_3 && k_3 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_3: int ::
            { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
            (0 <= k_3 && k_3 < 3) && NoPerm < FullPerm ==> qpRange13(Seq#Index(xs, k_3)) && invRecv13(Seq#Index(xs, k_3)) == k_3
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            (0 <= invRecv13(o_4) && invRecv13(o_4) < 3) && (NoPerm < FullPerm && qpRange13(o_4)) ==> Seq#Index(xs, invRecv13(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 10 == fun01(xs) might not hold. (issue_0139.vpr@18.10--18.25) [73173]"}
      10 == fun01(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- issue_0139.vpr@21.3--21.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (issue_0139.vpr@21.10--21.15) [73174]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i1_30: int;
  var i2_20: int;
  var k_29: int;
  var QPMask: MaskType;
  var i1_6: int;
  var i2_21: int;
  var k_33: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_4_1: int;
  var i2_4: int;
  var i1_6_1: int;
  var i2_6: int;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i1_8: int;
  var i2_8_1: int;
  var i1_10: int;
  var i2_10_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |xs| > 10 -- issue_0139.vpr@32.3--32.19
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..3)), (i2 in [0..3)) }
  //     { (i1 in [0..3)), xs[i2] }
  //     { (i2 in [0..3)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@33.3--33.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_30) && (Seq#Contains(Seq#Range(0, 3), i2_20) && i1_30 != i2_20)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@33.10--33.98) [73175]"}
            i1_30 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@33.10--33.98) [73176]"}
            i1_30 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@33.10--33.98) [73177]"}
            i2_20 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@33.10--33.98) [73178]"}
            i2_20 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, 3), i1_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) -- issue_0139.vpr@34.3--34.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_29 && k_29 < 3) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@34.10--34.59) [73179]"}
            k_29 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@34.10--34.59) [73180]"}
            k_29 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@34.10--34.59) [73181]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < 3)) && (0 <= k_1_2 && k_1_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        (0 <= k_1_1 && k_1_1 < 3) && NoPerm < FullPerm ==> qpRange14(Seq#Index(xs, k_1_1)) && invRecv14(Seq#Index(xs, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < 3) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(xs, invRecv14(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        0 <= k_1_1 && k_1_1 < 3 ==> Seq#Index(xs, k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv14(o_4) && invRecv14(o_4) < 3) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv14(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv14(o_4) && invRecv14(o_4) < 3) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [6..9)), (i2 in [6..9)) }
  //     { (i1 in [6..9)), xs[i2] }
  //     { (i2 in [6..9)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@35.3--35.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(6, 9), i1_6) && (Seq#Contains(Seq#Range(6, 9), i2_21) && i1_6 != i2_21)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@35.10--35.98) [73182]"}
            i1_6 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@35.10--35.98) [73183]"}
            i1_6 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@35.10--35.98) [73184]"}
            i2_21 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@35.10--35.98) [73185]"}
            i2_21 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_3: int, i2_3: int ::
      { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#ContainsTrigger(Seq#Range(6, 9), i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#Contains(Seq#Range(6, 9), i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#ContainsTrigger(Seq#Range(6, 9), i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#Contains(Seq#Range(6, 9), i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#Index(xs, i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#Index(xs, i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_3), Seq#Index(xs, i1_3) } { Seq#Contains(Seq#Range(6, 9), i2_3), Seq#Index(xs, i1_3) } { Seq#Index(xs, i1_3), Seq#Index(xs, i2_3) }
      Seq#Contains(Seq#Range(6, 9), i1_3) && (Seq#Contains(Seq#Range(6, 9), i2_3) && i1_3 != i2_3) ==> Seq#Index(xs, i1_3) != Seq#Index(xs, i2_3)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write)) -- issue_0139.vpr@36.3--36.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write))
      if (*) {
        if (6 <= k_33 && k_33 < 9) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@36.10--36.59) [73186]"}
            k_33 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@36.10--36.59) [73187]"}
            k_33 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@36.10--36.59) [73188]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && (6 <= k_3 && k_3 < 9)) && (6 <= k_3_1 && k_3_1 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        (6 <= k_3 && k_3 < 9) && NoPerm < FullPerm ==> qpRange15(Seq#Index(xs, k_3)) && invRecv15(Seq#Index(xs, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        ((6 <= invRecv15(o_4) && invRecv15(o_4) < 9) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(xs, invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        6 <= k_3 && k_3 < 9 ==> Seq#Index(xs, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((6 <= invRecv15(o_4) && invRecv15(o_4) < 9) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv15(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((6 <= invRecv15(o_4) && invRecv15(o_4) < 9) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 == fun02(xs) -- issue_0139.vpr@38.3--38.25
    assume state(Heap, Mask);
    
    // -- Check definedness of 10 == fun02(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun02 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@38.16--38.25) [73189]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_4_1) && (Seq#Contains(Seq#Range(0, 3), i2_4) && i1_4_1 != i2_4)) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@38.16--38.25) [73190]"}
              Seq#Index(xs, i1_4_1) != Seq#Index(xs, i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Contains(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Index(xs, i1_5_1), Seq#Index(xs, i2_5_1_1) }
          Seq#Contains(Seq#Range(0, 3), i1_5_1) && (Seq#Contains(Seq#Range(0, 3), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(xs, i1_5_1) != Seq#Index(xs, i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@38.16--38.25) [73191]"}
            (forall k_4_1: int, k_4_2: int ::
            { neverTriggered16(k_4_1), neverTriggered16(k_4_2) }
            (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < 3)) && (0 <= k_4_2 && k_4_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_4_1) != Seq#Index(xs, k_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@38.16--38.25) [73192]"}
            (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            0 <= k_4_1 && k_4_1 < 3 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            (0 <= k_4_1 && k_4_1 < 3) && NoPerm < FullPerm ==> qpRange16(Seq#Index(xs, k_4_1)) && invRecv16(Seq#Index(xs, k_4_1)) == k_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv16(o_4) }
            (0 <= invRecv16(o_4) && invRecv16(o_4) < 3) && (NoPerm < FullPerm && qpRange16(o_4)) ==> Seq#Index(xs, invRecv16(o_4)) == o_4
          );
        if (*) {
          if (Seq#Contains(Seq#Range(6, 9), i1_6_1) && (Seq#Contains(Seq#Range(6, 9), i2_6) && i1_6_1 != i2_6)) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@38.16--38.25) [73193]"}
              Seq#Index(xs, i1_6_1) != Seq#Index(xs, i2_6);
          }
          assume false;
        }
        assume (forall i1_7_1_1: int, i2_7_1: int ::
          { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7_1_1), Seq#Contains(Seq#Range(6, 9), i2_7_1) } { Seq#Contains(Seq#Range(6, 9), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_1) } { Seq#Contains(Seq#Range(6, 9), i1_7_1_1), Seq#Contains(Seq#Range(6, 9), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7_1_1), Seq#Index(xs, i2_7_1) } { Seq#Contains(Seq#Range(6, 9), i1_7_1_1), Seq#Index(xs, i2_7_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_1), Seq#Index(xs, i1_7_1_1) } { Seq#Contains(Seq#Range(6, 9), i2_7_1), Seq#Index(xs, i1_7_1_1) } { Seq#Index(xs, i1_7_1_1), Seq#Index(xs, i2_7_1) }
          Seq#Contains(Seq#Range(6, 9), i1_7_1_1) && (Seq#Contains(Seq#Range(6, 9), i2_7_1) && i1_7_1_1 != i2_7_1) ==> Seq#Index(xs, i1_7_1_1) != Seq#Index(xs, i2_7_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@38.16--38.25) [73194]"}
            (forall k_5: int, k_5_1: int ::
            { neverTriggered17(k_5), neverTriggered17(k_5_1) }
            (((k_5 != k_5_1 && (6 <= k_5 && k_5 < 9)) && (6 <= k_5_1 && k_5_1 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_5) != Seq#Index(xs, k_5_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@38.16--38.25) [73195]"}
            (forall k_5: int ::
            { Seq#Index(xs, k_5) } { Seq#Index(xs, k_5) }
            6 <= k_5 && k_5 < 9 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_5), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_5: int ::
            { Seq#Index(xs, k_5) } { Seq#Index(xs, k_5) }
            (6 <= k_5 && k_5 < 9) && NoPerm < FullPerm ==> qpRange17(Seq#Index(xs, k_5)) && invRecv17(Seq#Index(xs, k_5)) == k_5
          );
          assume (forall o_4: Ref ::
            { invRecv17(o_4) }
            (6 <= invRecv17(o_4) && invRecv17(o_4) < 9) && (NoPerm < FullPerm && qpRange17(o_4)) ==> Seq#Index(xs, invRecv17(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 10 == fun02(Heap, xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 10 == fun02(xs) -- issue_0139.vpr@39.3--39.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 10 == fun02(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun02 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@39.16--39.25) [73196]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_8) && (Seq#Contains(Seq#Range(0, 3), i2_8_1) && i1_8 != i2_8_1)) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@39.16--39.25) [73197]"}
              Seq#Index(xs, i1_8) != Seq#Index(xs, i2_8_1);
          }
          assume false;
        }
        assume (forall i1_9_1: int, i2_9_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_9_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_9_1), Seq#Contains(Seq#Range(0, 3), i2_9_1) } { Seq#Contains(Seq#Range(0, 3), i1_9_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_9_1) } { Seq#Contains(Seq#Range(0, 3), i1_9_1), Seq#Contains(Seq#Range(0, 3), i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_9_1), Seq#Index(xs, i2_9_1) } { Seq#Contains(Seq#Range(0, 3), i1_9_1), Seq#Index(xs, i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_9_1), Seq#Index(xs, i1_9_1) } { Seq#Contains(Seq#Range(0, 3), i2_9_1), Seq#Index(xs, i1_9_1) } { Seq#Index(xs, i1_9_1), Seq#Index(xs, i2_9_1) }
          Seq#Contains(Seq#Range(0, 3), i1_9_1) && (Seq#Contains(Seq#Range(0, 3), i2_9_1) && i1_9_1 != i2_9_1) ==> Seq#Index(xs, i1_9_1) != Seq#Index(xs, i2_9_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@39.16--39.25) [73198]"}
            (forall k_6: int, k_6_1: int ::
            { neverTriggered18(k_6), neverTriggered18(k_6_1) }
            (((k_6 != k_6_1 && (0 <= k_6 && k_6 < 3)) && (0 <= k_6_1 && k_6_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_6) != Seq#Index(xs, k_6_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@39.16--39.25) [73199]"}
            (forall k_6: int ::
            { Seq#Index(xs, k_6) } { Seq#Index(xs, k_6) }
            0 <= k_6 && k_6 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_6), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_6: int ::
            { Seq#Index(xs, k_6) } { Seq#Index(xs, k_6) }
            (0 <= k_6 && k_6 < 3) && NoPerm < FullPerm ==> qpRange18(Seq#Index(xs, k_6)) && invRecv18(Seq#Index(xs, k_6)) == k_6
          );
          assume (forall o_4: Ref ::
            { invRecv18(o_4) }
            (0 <= invRecv18(o_4) && invRecv18(o_4) < 3) && (NoPerm < FullPerm && qpRange18(o_4)) ==> Seq#Index(xs, invRecv18(o_4)) == o_4
          );
        if (*) {
          if (Seq#Contains(Seq#Range(6, 9), i1_10) && (Seq#Contains(Seq#Range(6, 9), i2_10_1) && i1_10 != i2_10_1)) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@39.16--39.25) [73200]"}
              Seq#Index(xs, i1_10) != Seq#Index(xs, i2_10_1);
          }
          assume false;
        }
        assume (forall i1_11_1: int, i2_11_1: int ::
          { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#Contains(Seq#Range(6, 9), i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#Contains(Seq#Range(6, 9), i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#Index(xs, i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#Index(xs, i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1), Seq#Index(xs, i1_11_1) } { Seq#Contains(Seq#Range(6, 9), i2_11_1), Seq#Index(xs, i1_11_1) } { Seq#Index(xs, i1_11_1), Seq#Index(xs, i2_11_1) }
          Seq#Contains(Seq#Range(6, 9), i1_11_1) && (Seq#Contains(Seq#Range(6, 9), i2_11_1) && i1_11_1 != i2_11_1) ==> Seq#Index(xs, i1_11_1) != Seq#Index(xs, i2_11_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@39.16--39.25) [73201]"}
            (forall k_7_1: int, k_7_2: int ::
            { neverTriggered19(k_7_1), neverTriggered19(k_7_2) }
            (((k_7_1 != k_7_2 && (6 <= k_7_1 && k_7_1 < 9)) && (6 <= k_7_2 && k_7_2 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_7_1) != Seq#Index(xs, k_7_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@39.16--39.25) [73202]"}
            (forall k_7_1: int ::
            { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
            6 <= k_7_1 && k_7_1 < 9 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_7_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_7_1: int ::
            { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
            (6 <= k_7_1 && k_7_1 < 9) && NoPerm < FullPerm ==> qpRange19(Seq#Index(xs, k_7_1)) && invRecv19(Seq#Index(xs, k_7_1)) == k_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv19(o_4) }
            (6 <= invRecv19(o_4) && invRecv19(o_4) < 9) && (NoPerm < FullPerm && qpRange19(o_4)) ==> Seq#Index(xs, invRecv19(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 10 == fun02(xs) might not hold. (issue_0139.vpr@39.10--39.25) [73203]"}
      10 == fun02(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- issue_0139.vpr@42.3--42.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (issue_0139.vpr@42.10--42.15) [73204]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i1_31: int;
  var i2_22: int;
  var k_34: int;
  var QPMask: MaskType;
  var i1_15: int;
  var i2_23: int;
  var k_40: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_4_1: int;
  var i2_4: int;
  var i1_6_1: int;
  var i2_6: int;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i1_8: int;
  var i2_8_1: int;
  var i1_10: int;
  var i2_10_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |xs| > 10 -- issue_0139.vpr@54.3--54.19
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..3)), (i2 in [0..3)) }
  //     { (i1 in [0..3)), xs[i2] }
  //     { (i2 in [0..3)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@55.3--55.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_31) && (Seq#Contains(Seq#Range(0, 3), i2_22) && i1_31 != i2_22)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@55.10--55.98) [73205]"}
            i1_31 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@55.10--55.98) [73206]"}
            i1_31 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@55.10--55.98) [73207]"}
            i2_22 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@55.10--55.98) [73208]"}
            i2_22 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, 3), i1_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) -- issue_0139.vpr@56.3--56.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_34 && k_34 < 3) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@56.10--56.59) [73209]"}
            k_34 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@56.10--56.59) [73210]"}
            k_34 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@56.10--56.59) [73211]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < 3)) && (0 <= k_1_2 && k_1_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        (0 <= k_1_1 && k_1_1 < 3) && NoPerm < FullPerm ==> qpRange20(Seq#Index(xs, k_1_1)) && invRecv20(Seq#Index(xs, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        ((0 <= invRecv20(o_4) && invRecv20(o_4) < 3) && NoPerm < FullPerm) && qpRange20(o_4) ==> Seq#Index(xs, invRecv20(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        0 <= k_1_1 && k_1_1 < 3 ==> Seq#Index(xs, k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv20(o_4) && invRecv20(o_4) < 3) && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv20(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv20(o_4) && invRecv20(o_4) < 3) && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [6..9)), (i2 in [6..9)) }
  //     { (i1 in [6..9)), xs[i2] }
  //     { (i2 in [6..9)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@57.3--57.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(6, 9), i1_15) && (Seq#Contains(Seq#Range(6, 9), i2_23) && i1_15 != i2_23)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@57.10--57.98) [73212]"}
            i1_15 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@57.10--57.98) [73213]"}
            i1_15 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@57.10--57.98) [73214]"}
            i2_23 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@57.10--57.98) [73215]"}
            i2_23 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_3: int, i2_3: int ::
      { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#ContainsTrigger(Seq#Range(6, 9), i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#Contains(Seq#Range(6, 9), i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#ContainsTrigger(Seq#Range(6, 9), i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#Contains(Seq#Range(6, 9), i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#Index(xs, i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#Index(xs, i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_3), Seq#Index(xs, i1_3) } { Seq#Contains(Seq#Range(6, 9), i2_3), Seq#Index(xs, i1_3) } { Seq#Index(xs, i1_3), Seq#Index(xs, i2_3) }
      Seq#Contains(Seq#Range(6, 9), i1_3) && (Seq#Contains(Seq#Range(6, 9), i2_3) && i1_3 != i2_3) ==> Seq#Index(xs, i1_3) != Seq#Index(xs, i2_3)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write)) -- issue_0139.vpr@58.3--58.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write))
      if (*) {
        if (6 <= k_40 && k_40 < 9) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@58.10--58.59) [73216]"}
            k_40 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@58.10--58.59) [73217]"}
            k_40 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@58.10--58.59) [73218]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && (6 <= k_3 && k_3 < 9)) && (6 <= k_3_1 && k_3_1 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        (6 <= k_3 && k_3 < 9) && NoPerm < FullPerm ==> qpRange21(Seq#Index(xs, k_3)) && invRecv21(Seq#Index(xs, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        ((6 <= invRecv21(o_4) && invRecv21(o_4) < 9) && NoPerm < FullPerm) && qpRange21(o_4) ==> Seq#Index(xs, invRecv21(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        6 <= k_3 && k_3 < 9 ==> Seq#Index(xs, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((6 <= invRecv21(o_4) && invRecv21(o_4) < 9) && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv21(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((6 <= invRecv21(o_4) && invRecv21(o_4) < 9) && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 == fun03(xs) -- issue_0139.vpr@60.3--60.25
    assume state(Heap, Mask);
    
    // -- Check definedness of 10 == fun03(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun03 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@60.16--60.25) [73219]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_4_1) && (Seq#Contains(Seq#Range(0, 3), i2_4) && i1_4_1 != i2_4)) {
            assert {:msg "  Precondition of function fun03 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@60.16--60.25) [73220]"}
              Seq#Index(xs, i1_4_1) != Seq#Index(xs, i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Contains(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Index(xs, i1_5_1), Seq#Index(xs, i2_5_1_1) }
          Seq#Contains(Seq#Range(0, 3), i1_5_1) && (Seq#Contains(Seq#Range(0, 3), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(xs, i1_5_1) != Seq#Index(xs, i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun03 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@60.16--60.25) [73221]"}
            (forall k_4_1: int, k_4_2: int ::
            { neverTriggered22(k_4_1), neverTriggered22(k_4_2) }
            (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < 3)) && (0 <= k_4_2 && k_4_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_4_1) != Seq#Index(xs, k_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@60.16--60.25) [73222]"}
            (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            0 <= k_4_1 && k_4_1 < 3 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            (0 <= k_4_1 && k_4_1 < 3) && NoPerm < FullPerm ==> qpRange22(Seq#Index(xs, k_4_1)) && invRecv22(Seq#Index(xs, k_4_1)) == k_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv22(o_4) }
            (0 <= invRecv22(o_4) && invRecv22(o_4) < 3) && (NoPerm < FullPerm && qpRange22(o_4)) ==> Seq#Index(xs, invRecv22(o_4)) == o_4
          );
        if (*) {
          if (Seq#Contains(Seq#Range(6, 9), i1_6_1) && (Seq#Contains(Seq#Range(6, 9), i2_6) && i1_6_1 != i2_6)) {
            assert {:msg "  Precondition of function fun03 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@60.16--60.25) [73223]"}
              Seq#Index(xs, i1_6_1) != Seq#Index(xs, i2_6);
          }
          assume false;
        }
        assume (forall i1_7_1_1: int, i2_7_1: int ::
          { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7_1_1), Seq#Contains(Seq#Range(6, 9), i2_7_1) } { Seq#Contains(Seq#Range(6, 9), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_1) } { Seq#Contains(Seq#Range(6, 9), i1_7_1_1), Seq#Contains(Seq#Range(6, 9), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_7_1_1), Seq#Index(xs, i2_7_1) } { Seq#Contains(Seq#Range(6, 9), i1_7_1_1), Seq#Index(xs, i2_7_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_7_1), Seq#Index(xs, i1_7_1_1) } { Seq#Contains(Seq#Range(6, 9), i2_7_1), Seq#Index(xs, i1_7_1_1) } { Seq#Index(xs, i1_7_1_1), Seq#Index(xs, i2_7_1) }
          Seq#Contains(Seq#Range(6, 9), i1_7_1_1) && (Seq#Contains(Seq#Range(6, 9), i2_7_1) && i1_7_1_1 != i2_7_1) ==> Seq#Index(xs, i1_7_1_1) != Seq#Index(xs, i2_7_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun03 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@60.16--60.25) [73224]"}
            (forall k_5: int, k_5_1: int ::
            { neverTriggered23(k_5), neverTriggered23(k_5_1) }
            (((k_5 != k_5_1 && (6 <= k_5 && k_5 < 9)) && (6 <= k_5_1 && k_5_1 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_5) != Seq#Index(xs, k_5_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@60.16--60.25) [73225]"}
            (forall k_5: int ::
            { Seq#Index(xs, k_5) } { Seq#Index(xs, k_5) }
            6 <= k_5 && k_5 < 9 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_5), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_5: int ::
            { Seq#Index(xs, k_5) } { Seq#Index(xs, k_5) }
            (6 <= k_5 && k_5 < 9) && NoPerm < FullPerm ==> qpRange23(Seq#Index(xs, k_5)) && invRecv23(Seq#Index(xs, k_5)) == k_5
          );
          assume (forall o_4: Ref ::
            { invRecv23(o_4) }
            (6 <= invRecv23(o_4) && invRecv23(o_4) < 9) && (NoPerm < FullPerm && qpRange23(o_4)) ==> Seq#Index(xs, invRecv23(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 10 == fun03(Heap, xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 10 == fun03(xs) -- issue_0139.vpr@61.3--61.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 10 == fun03(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun03 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@61.16--61.25) [73226]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_8) && (Seq#Contains(Seq#Range(0, 3), i2_8_1) && i1_8 != i2_8_1)) {
            assert {:msg "  Precondition of function fun03 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@61.16--61.25) [73227]"}
              Seq#Index(xs, i1_8) != Seq#Index(xs, i2_8_1);
          }
          assume false;
        }
        assume (forall i1_9_1: int, i2_9_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_9_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_9_1), Seq#Contains(Seq#Range(0, 3), i2_9_1) } { Seq#Contains(Seq#Range(0, 3), i1_9_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_9_1) } { Seq#Contains(Seq#Range(0, 3), i1_9_1), Seq#Contains(Seq#Range(0, 3), i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_9_1), Seq#Index(xs, i2_9_1) } { Seq#Contains(Seq#Range(0, 3), i1_9_1), Seq#Index(xs, i2_9_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_9_1), Seq#Index(xs, i1_9_1) } { Seq#Contains(Seq#Range(0, 3), i2_9_1), Seq#Index(xs, i1_9_1) } { Seq#Index(xs, i1_9_1), Seq#Index(xs, i2_9_1) }
          Seq#Contains(Seq#Range(0, 3), i1_9_1) && (Seq#Contains(Seq#Range(0, 3), i2_9_1) && i1_9_1 != i2_9_1) ==> Seq#Index(xs, i1_9_1) != Seq#Index(xs, i2_9_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun03 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@61.16--61.25) [73228]"}
            (forall k_6: int, k_6_1: int ::
            { neverTriggered24(k_6), neverTriggered24(k_6_1) }
            (((k_6 != k_6_1 && (0 <= k_6 && k_6 < 3)) && (0 <= k_6_1 && k_6_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_6) != Seq#Index(xs, k_6_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@61.16--61.25) [73229]"}
            (forall k_6: int ::
            { Seq#Index(xs, k_6) } { Seq#Index(xs, k_6) }
            0 <= k_6 && k_6 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_6), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_6: int ::
            { Seq#Index(xs, k_6) } { Seq#Index(xs, k_6) }
            (0 <= k_6 && k_6 < 3) && NoPerm < FullPerm ==> qpRange24(Seq#Index(xs, k_6)) && invRecv24(Seq#Index(xs, k_6)) == k_6
          );
          assume (forall o_4: Ref ::
            { invRecv24(o_4) }
            (0 <= invRecv24(o_4) && invRecv24(o_4) < 3) && (NoPerm < FullPerm && qpRange24(o_4)) ==> Seq#Index(xs, invRecv24(o_4)) == o_4
          );
        if (*) {
          if (Seq#Contains(Seq#Range(6, 9), i1_10) && (Seq#Contains(Seq#Range(6, 9), i2_10_1) && i1_10 != i2_10_1)) {
            assert {:msg "  Precondition of function fun03 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@61.16--61.25) [73230]"}
              Seq#Index(xs, i1_10) != Seq#Index(xs, i2_10_1);
          }
          assume false;
        }
        assume (forall i1_11_1: int, i2_11_1: int ::
          { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#Contains(Seq#Range(6, 9), i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#Contains(Seq#Range(6, 9), i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#Index(xs, i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#Index(xs, i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1), Seq#Index(xs, i1_11_1) } { Seq#Contains(Seq#Range(6, 9), i2_11_1), Seq#Index(xs, i1_11_1) } { Seq#Index(xs, i1_11_1), Seq#Index(xs, i2_11_1) }
          Seq#Contains(Seq#Range(6, 9), i1_11_1) && (Seq#Contains(Seq#Range(6, 9), i2_11_1) && i1_11_1 != i2_11_1) ==> Seq#Index(xs, i1_11_1) != Seq#Index(xs, i2_11_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun03 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@61.16--61.25) [73231]"}
            (forall k_7_1: int, k_7_2: int ::
            { neverTriggered25(k_7_1), neverTriggered25(k_7_2) }
            (((k_7_1 != k_7_2 && (6 <= k_7_1 && k_7_1 < 9)) && (6 <= k_7_2 && k_7_2 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_7_1) != Seq#Index(xs, k_7_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@61.16--61.25) [73232]"}
            (forall k_7_1: int ::
            { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
            6 <= k_7_1 && k_7_1 < 9 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_7_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_7_1: int ::
            { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
            (6 <= k_7_1 && k_7_1 < 9) && NoPerm < FullPerm ==> qpRange25(Seq#Index(xs, k_7_1)) && invRecv25(Seq#Index(xs, k_7_1)) == k_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv25(o_4) }
            (6 <= invRecv25(o_4) && invRecv25(o_4) < 9) && (NoPerm < FullPerm && qpRange25(o_4)) ==> Seq#Index(xs, invRecv25(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 10 == fun03(xs) might not hold. (issue_0139.vpr@61.10--61.25) [73233]"}
      10 == fun03(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- issue_0139.vpr@64.3--64.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (issue_0139.vpr@64.10--64.15) [73234]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i1_16: int;
  var i2_24: int;
  var k_38: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_2_1: int;
  var i2_2_1: int;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i1_4_1: int;
  var i2_4: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |xs| > 10 -- issue_0139.vpr@73.3--73.19
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..10)), (i2 in [0..10)) }
  //     { (i1 in [0..10)), xs[i2] }
  //     { (i2 in [0..10)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..10)) && ((i2 in [0..10)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@74.3--74.100
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..10)), (i2 in [0..10)) } { (i1 in [0..10)), xs[i2] } { (i2 in [0..10)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..10)) && ((i2 in [0..10)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 10), i1_16) && (Seq#Contains(Seq#Range(0, 10), i2_24) && i1_16 != i2_24)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@74.10--74.100) [73235]"}
            i1_16 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@74.10--74.100) [73236]"}
            i1_16 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@74.10--74.100) [73237]"}
            i2_24 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@74.10--74.100) [73238]"}
            i2_24 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 10), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 10), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 10), i1_1_1), Seq#Contains(Seq#Range(0, 10), i2_1_1) } { Seq#Contains(Seq#Range(0, 10), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 10), i2_1_1) } { Seq#Contains(Seq#Range(0, 10), i1_1_1), Seq#Contains(Seq#Range(0, 10), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 10), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, 10), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 10), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, 10), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, 10), i1_1_1) && (Seq#Contains(Seq#Range(0, 10), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int ::
  //     { xs[k] }
  //     0 <= k && k < 10 ==> acc(xs[k].f, write)) -- issue_0139.vpr@75.3--75.60
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 10 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_38 && k_38 < 10) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@75.10--75.60) [73239]"}
            k_38 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@75.10--75.60) [73240]"}
            k_38 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@75.10--75.60) [73241]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < 10)) && (0 <= k_1_2 && k_1_2 < 10)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        (0 <= k_1_1 && k_1_1 < 10) && NoPerm < FullPerm ==> qpRange26(Seq#Index(xs, k_1_1)) && invRecv26(Seq#Index(xs, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        ((0 <= invRecv26(o_4) && invRecv26(o_4) < 10) && NoPerm < FullPerm) && qpRange26(o_4) ==> Seq#Index(xs, invRecv26(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        0 <= k_1_1 && k_1_1 < 10 ==> Seq#Index(xs, k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv26(o_4) && invRecv26(o_4) < 10) && NoPerm < FullPerm) && qpRange26(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv26(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv26(o_4) && invRecv26(o_4) < 10) && NoPerm < FullPerm) && qpRange26(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 == fun07(xs) -- issue_0139.vpr@77.3--77.25
    assume state(Heap, Mask);
    
    // -- Check definedness of 10 == fun07(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun07 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@77.16--77.25) [73242]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_2_1) && (Seq#Contains(Seq#Range(0, 3), i2_2_1) && i1_2_1 != i2_2_1)) {
            assert {:msg "  Precondition of function fun07 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@77.16--77.25) [73243]"}
              Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1);
          }
          assume false;
        }
        assume (forall i1_3_1_1: int, i2_3_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#Contains(Seq#Range(0, 3), i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#Contains(Seq#Range(0, 3), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Index(xs, i1_3_1_1), Seq#Index(xs, i2_3_1) }
          Seq#Contains(Seq#Range(0, 3), i1_3_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_3_1) && i1_3_1_1 != i2_3_1) ==> Seq#Index(xs, i1_3_1_1) != Seq#Index(xs, i2_3_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun07 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@77.16--77.25) [73244]"}
            (forall k_2_1: int, k_2_2: int ::
            { neverTriggered27(k_2_1), neverTriggered27(k_2_2) }
            (((k_2_1 != k_2_2 && (0 <= k_2_1 && k_2_1 < 3)) && (0 <= k_2_2 && k_2_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_2_1) != Seq#Index(xs, k_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun07 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@77.16--77.25) [73245]"}
            (forall k_2_1: int ::
            { Seq#Index(xs, k_2_1) } { Seq#Index(xs, k_2_1) }
            0 <= k_2_1 && k_2_1 < 3 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_2_1: int ::
            { Seq#Index(xs, k_2_1) } { Seq#Index(xs, k_2_1) }
            (0 <= k_2_1 && k_2_1 < 3) && NoPerm < FullPerm ==> qpRange27(Seq#Index(xs, k_2_1)) && invRecv27(Seq#Index(xs, k_2_1)) == k_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv27(o_4) }
            (0 <= invRecv27(o_4) && invRecv27(o_4) < 3) && (NoPerm < FullPerm && qpRange27(o_4)) ==> Seq#Index(xs, invRecv27(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 10 == fun07(Heap, xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[6].f := 0 -- issue_0139.vpr@79.3--79.15
    
    // -- Check definedness of xs[6]
      assert {:msg "  Assignment might fail. Index xs[6] into xs might exceed sequence length. (issue_0139.vpr@79.3--79.15) [73246]"}
        6 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[6].f (issue_0139.vpr@79.3--79.15) [73247]"}
      FullPerm == Mask[Seq#Index(xs, 6), f_7];
    Heap := Heap[Seq#Index(xs, 6), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 10 == fun07(xs) -- issue_0139.vpr@81.3--81.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 10 == fun07(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun07 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@81.16--81.25) [73248]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_4_1) && (Seq#Contains(Seq#Range(0, 3), i2_4) && i1_4_1 != i2_4)) {
            assert {:msg "  Precondition of function fun07 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@81.16--81.25) [73249]"}
              Seq#Index(xs, i1_4_1) != Seq#Index(xs, i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Contains(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Index(xs, i1_5_1), Seq#Index(xs, i2_5_1_1) }
          Seq#Contains(Seq#Range(0, 3), i1_5_1) && (Seq#Contains(Seq#Range(0, 3), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(xs, i1_5_1) != Seq#Index(xs, i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun07 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@81.16--81.25) [73250]"}
            (forall k_3: int, k_3_1: int ::
            { neverTriggered28(k_3), neverTriggered28(k_3_1) }
            (((k_3 != k_3_1 && (0 <= k_3 && k_3 < 3)) && (0 <= k_3_1 && k_3_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun07 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@81.16--81.25) [73251]"}
            (forall k_3: int ::
            { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
            0 <= k_3 && k_3 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_3: int ::
            { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
            (0 <= k_3 && k_3 < 3) && NoPerm < FullPerm ==> qpRange28(Seq#Index(xs, k_3)) && invRecv28(Seq#Index(xs, k_3)) == k_3
          );
          assume (forall o_4: Ref ::
            { invRecv28(o_4) }
            (0 <= invRecv28(o_4) && invRecv28(o_4) < 3) && (NoPerm < FullPerm && qpRange28(o_4)) ==> Seq#Index(xs, invRecv28(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 10 == fun07(xs) might not hold. (issue_0139.vpr@81.10--81.25) [73252]"}
      10 == fun07(Heap, xs);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i1_9: int;
  var i2_25: int;
  var k_41: int;
  var QPMask: MaskType;
  var i1_11: int;
  var i2_26: int;
  var k_39: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_4_1: int;
  var i2_4: int;
  var ExhaleHeap: HeapType;
  var i1_10: int;
  var i2_10_1: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i1_12_1: int;
  var i2_12_1: int;
  var i1_18_1: int;
  var i2_18_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |xs| > 10 -- issue_0139.vpr@92.3--92.19
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..3)), (i2 in [0..3)) }
  //     { (i1 in [0..3)), xs[i2] }
  //     { (i2 in [0..3)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@93.3--93.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_9) && (Seq#Contains(Seq#Range(0, 3), i2_25) && i1_9 != i2_25)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@93.10--93.98) [73253]"}
            i1_9 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@93.10--93.98) [73254]"}
            i1_9 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@93.10--93.98) [73255]"}
            i2_25 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@93.10--93.98) [73256]"}
            i2_25 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, 3), i1_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) -- issue_0139.vpr@94.3--94.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_41 && k_41 < 3) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@94.10--94.59) [73257]"}
            k_41 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@94.10--94.59) [73258]"}
            k_41 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@94.10--94.59) [73259]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < 3)) && (0 <= k_1_2 && k_1_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        (0 <= k_1_1 && k_1_1 < 3) && NoPerm < FullPerm ==> qpRange29(Seq#Index(xs, k_1_1)) && invRecv29(Seq#Index(xs, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv29(o_4) }
        ((0 <= invRecv29(o_4) && invRecv29(o_4) < 3) && NoPerm < FullPerm) && qpRange29(o_4) ==> Seq#Index(xs, invRecv29(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        0 <= k_1_1 && k_1_1 < 3 ==> Seq#Index(xs, k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv29(o_4) && invRecv29(o_4) < 3) && NoPerm < FullPerm) && qpRange29(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv29(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv29(o_4) && invRecv29(o_4) < 3) && NoPerm < FullPerm) && qpRange29(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [6..9)), (i2 in [6..9)) }
  //     { (i1 in [6..9)), xs[i2] }
  //     { (i2 in [6..9)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@95.3--95.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(6, 9), i1_11) && (Seq#Contains(Seq#Range(6, 9), i2_26) && i1_11 != i2_26)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@95.10--95.98) [73260]"}
            i1_11 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@95.10--95.98) [73261]"}
            i1_11 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@95.10--95.98) [73262]"}
            i2_26 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@95.10--95.98) [73263]"}
            i2_26 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_3: int, i2_3: int ::
      { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#ContainsTrigger(Seq#Range(6, 9), i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#Contains(Seq#Range(6, 9), i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#ContainsTrigger(Seq#Range(6, 9), i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#Contains(Seq#Range(6, 9), i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_3), Seq#Index(xs, i2_3) } { Seq#Contains(Seq#Range(6, 9), i1_3), Seq#Index(xs, i2_3) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_3), Seq#Index(xs, i1_3) } { Seq#Contains(Seq#Range(6, 9), i2_3), Seq#Index(xs, i1_3) } { Seq#Index(xs, i1_3), Seq#Index(xs, i2_3) }
      Seq#Contains(Seq#Range(6, 9), i1_3) && (Seq#Contains(Seq#Range(6, 9), i2_3) && i1_3 != i2_3) ==> Seq#Index(xs, i1_3) != Seq#Index(xs, i2_3)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write)) -- issue_0139.vpr@96.3--96.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 6 <= k && k < 9 ==> acc(xs[k].f, write))
      if (*) {
        if (6 <= k_39 && k_39 < 9) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@96.10--96.59) [73264]"}
            k_39 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@96.10--96.59) [73265]"}
            k_39 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@96.10--96.59) [73266]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && (6 <= k_3 && k_3 < 9)) && (6 <= k_3_1 && k_3_1 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        (6 <= k_3 && k_3 < 9) && NoPerm < FullPerm ==> qpRange30(Seq#Index(xs, k_3)) && invRecv30(Seq#Index(xs, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv30(o_4) }
        ((6 <= invRecv30(o_4) && invRecv30(o_4) < 9) && NoPerm < FullPerm) && qpRange30(o_4) ==> Seq#Index(xs, invRecv30(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
        6 <= k_3 && k_3 < 9 ==> Seq#Index(xs, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((6 <= invRecv30(o_4) && invRecv30(o_4) < 9) && NoPerm < FullPerm) && qpRange30(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv30(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((6 <= invRecv30(o_4) && invRecv30(o_4) < 9) && NoPerm < FullPerm) && qpRange30(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 == fun04(xs, true) -- issue_0139.vpr@98.3--98.31
    assume state(Heap, Mask);
    
    // -- Check definedness of 10 == fun04(xs, true)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun04 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@98.16--98.31) [73267]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_4_1) && (Seq#Contains(Seq#Range(0, 3), i2_4) && i1_4_1 != i2_4)) {
            assert {:msg "  Precondition of function fun04 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@98.16--98.31) [73268]"}
              Seq#Index(xs, i1_4_1) != Seq#Index(xs, i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Contains(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Index(xs, i1_5_1), Seq#Index(xs, i2_5_1_1) }
          Seq#Contains(Seq#Range(0, 3), i1_5_1) && (Seq#Contains(Seq#Range(0, 3), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(xs, i1_5_1) != Seq#Index(xs, i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun04 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@98.16--98.31) [73269]"}
            (forall k_4_1: int, k_4_2: int ::
            { neverTriggered31(k_4_1), neverTriggered31(k_4_2) }
            (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < 3)) && (0 <= k_4_2 && k_4_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_4_1) != Seq#Index(xs, k_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@98.16--98.31) [73270]"}
            (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            0 <= k_4_1 && k_4_1 < 3 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            (0 <= k_4_1 && k_4_1 < 3) && NoPerm < FullPerm ==> qpRange31(Seq#Index(xs, k_4_1)) && invRecv31(Seq#Index(xs, k_4_1)) == k_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv31(o_4) }
            (0 <= invRecv31(o_4) && invRecv31(o_4) < 3) && (NoPerm < FullPerm && qpRange31(o_4)) ==> Seq#Index(xs, invRecv31(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 10 == fun04(Heap, xs, true);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 20 == fun04(xs, false) -- issue_0139.vpr@99.3--99.32
    assume state(Heap, Mask);
    
    // -- Check definedness of 20 == fun04(xs, false)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun04 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@99.16--99.32) [73271]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(6, 9), i1_10) && (Seq#Contains(Seq#Range(6, 9), i2_10_1) && i1_10 != i2_10_1)) {
            assert {:msg "  Precondition of function fun04 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@99.16--99.32) [73272]"}
              Seq#Index(xs, i1_10) != Seq#Index(xs, i2_10_1);
          }
          assume false;
        }
        assume (forall i1_11_1: int, i2_11_1: int ::
          { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#Contains(Seq#Range(6, 9), i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#Contains(Seq#Range(6, 9), i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_11_1), Seq#Index(xs, i2_11_1) } { Seq#Contains(Seq#Range(6, 9), i1_11_1), Seq#Index(xs, i2_11_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_11_1), Seq#Index(xs, i1_11_1) } { Seq#Contains(Seq#Range(6, 9), i2_11_1), Seq#Index(xs, i1_11_1) } { Seq#Index(xs, i1_11_1), Seq#Index(xs, i2_11_1) }
          Seq#Contains(Seq#Range(6, 9), i1_11_1) && (Seq#Contains(Seq#Range(6, 9), i2_11_1) && i1_11_1 != i2_11_1) ==> Seq#Index(xs, i1_11_1) != Seq#Index(xs, i2_11_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun04 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@99.16--99.32) [73273]"}
            (forall k_7_1: int, k_7_2: int ::
            { neverTriggered34(k_7_1), neverTriggered34(k_7_2) }
            (((k_7_1 != k_7_2 && (6 <= k_7_1 && k_7_1 < 9)) && (6 <= k_7_2 && k_7_2 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_7_1) != Seq#Index(xs, k_7_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@99.16--99.32) [73274]"}
            (forall k_7_1: int ::
            { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
            6 <= k_7_1 && k_7_1 < 9 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_7_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_7_1: int ::
            { Seq#Index(xs, k_7_1) } { Seq#Index(xs, k_7_1) }
            (6 <= k_7_1 && k_7_1 < 9) && NoPerm < FullPerm ==> qpRange34(Seq#Index(xs, k_7_1)) && invRecv34(Seq#Index(xs, k_7_1)) == k_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv34(o_4) }
            (6 <= invRecv34(o_4) && invRecv34(o_4) < 9) && (NoPerm < FullPerm && qpRange34(o_4)) ==> Seq#Index(xs, invRecv34(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 20 == fun04(Heap, xs, false);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[8].f := 0 -- issue_0139.vpr@101.3--101.15
    
    // -- Check definedness of xs[8]
      assert {:msg "  Assignment might fail. Index xs[8] into xs might exceed sequence length. (issue_0139.vpr@101.3--101.15) [73275]"}
        8 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[8].f (issue_0139.vpr@101.3--101.15) [73276]"}
      FullPerm == Mask[Seq#Index(xs, 8), f_7];
    Heap := Heap[Seq#Index(xs, 8), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 10 == fun04(xs, true) -- issue_0139.vpr@103.3--103.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 10 == fun04(xs, true)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun04 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@103.16--103.31) [73277]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_12_1) && (Seq#Contains(Seq#Range(0, 3), i2_12_1) && i1_12_1 != i2_12_1)) {
            assert {:msg "  Precondition of function fun04 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@103.16--103.31) [73278]"}
              Seq#Index(xs, i1_12_1) != Seq#Index(xs, i2_12_1);
          }
          assume false;
        }
        assume (forall i1_13_1: int, i2_13_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_13_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_13_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_13_1), Seq#Contains(Seq#Range(0, 3), i2_13_1) } { Seq#Contains(Seq#Range(0, 3), i1_13_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_13_1) } { Seq#Contains(Seq#Range(0, 3), i1_13_1), Seq#Contains(Seq#Range(0, 3), i2_13_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_13_1), Seq#Index(xs, i2_13_1) } { Seq#Contains(Seq#Range(0, 3), i1_13_1), Seq#Index(xs, i2_13_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_13_1), Seq#Index(xs, i1_13_1) } { Seq#Contains(Seq#Range(0, 3), i2_13_1), Seq#Index(xs, i1_13_1) } { Seq#Index(xs, i1_13_1), Seq#Index(xs, i2_13_1) }
          Seq#Contains(Seq#Range(0, 3), i1_13_1) && (Seq#Contains(Seq#Range(0, 3), i2_13_1) && i1_13_1 != i2_13_1) ==> Seq#Index(xs, i1_13_1) != Seq#Index(xs, i2_13_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun04 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@103.16--103.31) [73279]"}
            (forall k_8: int, k_8_1: int ::
            { neverTriggered35(k_8), neverTriggered35(k_8_1) }
            (((k_8 != k_8_1 && (0 <= k_8 && k_8 < 3)) && (0 <= k_8_1 && k_8_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_8) != Seq#Index(xs, k_8_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@103.16--103.31) [73280]"}
            (forall k_8: int ::
            { Seq#Index(xs, k_8) } { Seq#Index(xs, k_8) }
            0 <= k_8 && k_8 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_8), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_8: int ::
            { Seq#Index(xs, k_8) } { Seq#Index(xs, k_8) }
            (0 <= k_8 && k_8 < 3) && NoPerm < FullPerm ==> qpRange35(Seq#Index(xs, k_8)) && invRecv35(Seq#Index(xs, k_8)) == k_8
          );
          assume (forall o_4: Ref ::
            { invRecv35(o_4) }
            (0 <= invRecv35(o_4) && invRecv35(o_4) < 3) && (NoPerm < FullPerm && qpRange35(o_4)) ==> Seq#Index(xs, invRecv35(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 10 == fun04(xs, true) might not hold. (issue_0139.vpr@103.10--103.31) [73281]"}
      10 == fun04(Heap, xs, true);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 20 == fun04(xs, false) -- issue_0139.vpr@106.3--106.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 20 == fun04(xs, false)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun04 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@106.16--106.32) [73282]"}
          Seq#Length(xs) > 10;
        if (*) {
          if (Seq#Contains(Seq#Range(6, 9), i1_18_1) && (Seq#Contains(Seq#Range(6, 9), i2_18_1) && i1_18_1 != i2_18_1)) {
            assert {:msg "  Precondition of function fun04 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@106.16--106.32) [73283]"}
              Seq#Index(xs, i1_18_1) != Seq#Index(xs, i2_18_1);
          }
          assume false;
        }
        assume (forall i1_19_1: int, i2_19_1: int ::
          { Seq#ContainsTrigger(Seq#Range(6, 9), i1_19_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_19_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_19_1), Seq#Contains(Seq#Range(6, 9), i2_19_1) } { Seq#Contains(Seq#Range(6, 9), i1_19_1), Seq#ContainsTrigger(Seq#Range(6, 9), i2_19_1) } { Seq#Contains(Seq#Range(6, 9), i1_19_1), Seq#Contains(Seq#Range(6, 9), i2_19_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i1_19_1), Seq#Index(xs, i2_19_1) } { Seq#Contains(Seq#Range(6, 9), i1_19_1), Seq#Index(xs, i2_19_1) } { Seq#ContainsTrigger(Seq#Range(6, 9), i2_19_1), Seq#Index(xs, i1_19_1) } { Seq#Contains(Seq#Range(6, 9), i2_19_1), Seq#Index(xs, i1_19_1) } { Seq#Index(xs, i1_19_1), Seq#Index(xs, i2_19_1) }
          Seq#Contains(Seq#Range(6, 9), i1_19_1) && (Seq#Contains(Seq#Range(6, 9), i2_19_1) && i1_19_1 != i2_19_1) ==> Seq#Index(xs, i1_19_1) != Seq#Index(xs, i2_19_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun04 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@106.16--106.32) [73284]"}
            (forall k_11: int, k_11_1: int ::
            { neverTriggered38(k_11), neverTriggered38(k_11_1) }
            (((k_11 != k_11_1 && (6 <= k_11 && k_11 < 9)) && (6 <= k_11_1 && k_11_1 < 9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_11) != Seq#Index(xs, k_11_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun04 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@106.16--106.32) [73285]"}
            (forall k_11: int ::
            { Seq#Index(xs, k_11) } { Seq#Index(xs, k_11) }
            6 <= k_11 && k_11 < 9 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_11), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_11: int ::
            { Seq#Index(xs, k_11) } { Seq#Index(xs, k_11) }
            (6 <= k_11 && k_11 < 9) && NoPerm < FullPerm ==> qpRange38(Seq#Index(xs, k_11)) && invRecv38(Seq#Index(xs, k_11)) == k_11
          );
          assume (forall o_4: Ref ::
            { invRecv38(o_4) }
            (6 <= invRecv38(o_4) && invRecv38(o_4) < 9) && (NoPerm < FullPerm && qpRange38(o_4)) ==> Seq#Index(xs, invRecv38(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 20 == fun04(xs, false) might not hold. (issue_0139.vpr@106.10--106.32) [73286]"}
      20 == fun04(Heap, xs, false);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var i1_32: int;
  var i2_27: int;
  var k_45: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_2_1: int;
  var i2_2_1: int;
  var ExhaleHeap: HeapType;
  var i1_4_1: int;
  var i2_4: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i1_6_1: int;
  var i2_6: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.g, write) -- issue_0139.vpr@116.3--116.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 3 <= |xs| -- issue_0139.vpr@117.3--117.19
    assume 3 <= Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..3)), (i2 in [0..3)) }
  //     { (i1 in [0..3)), xs[i2] }
  //     { (i2 in [0..3)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@118.3--118.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_32) && (Seq#Contains(Seq#Range(0, 3), i2_27) && i1_32 != i2_27)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@118.10--118.98) [73288]"}
            i1_32 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@118.10--118.98) [73289]"}
            i1_32 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@118.10--118.98) [73290]"}
            i2_27 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@118.10--118.98) [73291]"}
            i2_27 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, 3), i1_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) -- issue_0139.vpr@119.3--119.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_45 && k_45 < 3) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@119.10--119.59) [73292]"}
            k_45 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@119.10--119.59) [73293]"}
            k_45 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@119.10--119.59) [73294]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < 3)) && (0 <= k_1_2 && k_1_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        (0 <= k_1_1 && k_1_1 < 3) && NoPerm < FullPerm ==> qpRange39(Seq#Index(xs, k_1_1)) && invRecv39(Seq#Index(xs, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv39(o_4) }
        ((0 <= invRecv39(o_4) && invRecv39(o_4) < 3) && NoPerm < FullPerm) && qpRange39(o_4) ==> Seq#Index(xs, invRecv39(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        0 <= k_1_1 && k_1_1 < 3 ==> Seq#Index(xs, k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv39(o_4) && invRecv39(o_4) < 3) && NoPerm < FullPerm) && qpRange39(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv39(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv39(o_4) && invRecv39(o_4) < 3) && NoPerm < FullPerm) && qpRange39(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 == fun05(x, xs) -- issue_0139.vpr@121.3--121.28
    assume state(Heap, Mask);
    
    // -- Check definedness of 10 == fun05(x, xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun05 might not hold. There might be insufficient permission to access x.g (issue_0139.vpr@121.16--121.28) [73295]"}
          NoPerm < perm ==> NoPerm < Mask[x, g];
        assert {:msg "  Precondition of function fun05 might not hold. Assertion 3 <= |xs| might not hold. (issue_0139.vpr@121.16--121.28) [73296]"}
          3 <= Seq#Length(xs);
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_2_1) && (Seq#Contains(Seq#Range(0, 3), i2_2_1) && i1_2_1 != i2_2_1)) {
            assert {:msg "  Precondition of function fun05 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@121.16--121.28) [73297]"}
              Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1);
          }
          assume false;
        }
        assume (forall i1_3_1_1: int, i2_3_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#Contains(Seq#Range(0, 3), i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#Contains(Seq#Range(0, 3), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Index(xs, i1_3_1_1), Seq#Index(xs, i2_3_1) }
          Seq#Contains(Seq#Range(0, 3), i1_3_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_3_1) && i1_3_1_1 != i2_3_1) ==> Seq#Index(xs, i1_3_1_1) != Seq#Index(xs, i2_3_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun05 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@121.16--121.28) [73298]"}
            (forall k_2_1: int, k_2_2: int ::
            { neverTriggered40(k_2_1), neverTriggered40(k_2_2) }
            (((k_2_1 != k_2_2 && (0 <= k_2_1 && k_2_1 < 3)) && (0 <= k_2_2 && k_2_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_2_1) != Seq#Index(xs, k_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun05 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@121.16--121.28) [73299]"}
            (forall k_2_1: int ::
            { Seq#Index(xs, k_2_1) } { Seq#Index(xs, k_2_1) }
            0 <= k_2_1 && k_2_1 < 3 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_2_1: int ::
            { Seq#Index(xs, k_2_1) } { Seq#Index(xs, k_2_1) }
            (0 <= k_2_1 && k_2_1 < 3) && NoPerm < FullPerm ==> qpRange40(Seq#Index(xs, k_2_1)) && invRecv40(Seq#Index(xs, k_2_1)) == k_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv40(o_4) }
            (0 <= invRecv40(o_4) && invRecv40(o_4) < 3) && (NoPerm < FullPerm && qpRange40(o_4)) ==> Seq#Index(xs, invRecv40(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 10 == fun05(Heap, x, xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 == fun05(x, xs) -- issue_0139.vpr@122.3--122.28
    assume state(Heap, Mask);
    
    // -- Check definedness of 10 == fun05(x, xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun05 might not hold. There might be insufficient permission to access x.g (issue_0139.vpr@122.16--122.28) [73300]"}
          NoPerm < perm ==> NoPerm < Mask[x, g];
        assert {:msg "  Precondition of function fun05 might not hold. Assertion 3 <= |xs| might not hold. (issue_0139.vpr@122.16--122.28) [73301]"}
          3 <= Seq#Length(xs);
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_4_1) && (Seq#Contains(Seq#Range(0, 3), i2_4) && i1_4_1 != i2_4)) {
            assert {:msg "  Precondition of function fun05 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@122.16--122.28) [73302]"}
              Seq#Index(xs, i1_4_1) != Seq#Index(xs, i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Contains(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Index(xs, i1_5_1), Seq#Index(xs, i2_5_1_1) }
          Seq#Contains(Seq#Range(0, 3), i1_5_1) && (Seq#Contains(Seq#Range(0, 3), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(xs, i1_5_1) != Seq#Index(xs, i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun05 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@122.16--122.28) [73303]"}
            (forall k_3: int, k_3_1: int ::
            { neverTriggered41(k_3), neverTriggered41(k_3_1) }
            (((k_3 != k_3_1 && (0 <= k_3 && k_3 < 3)) && (0 <= k_3_1 && k_3_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun05 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@122.16--122.28) [73304]"}
            (forall k_3: int ::
            { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
            0 <= k_3 && k_3 < 3 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_3: int ::
            { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
            (0 <= k_3 && k_3 < 3) && NoPerm < FullPerm ==> qpRange41(Seq#Index(xs, k_3)) && invRecv41(Seq#Index(xs, k_3)) == k_3
          );
          assume (forall o_4: Ref ::
            { invRecv41(o_4) }
            (0 <= invRecv41(o_4) && invRecv41(o_4) < 3) && (NoPerm < FullPerm && qpRange41(o_4)) ==> Seq#Index(xs, invRecv41(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 10 == fun05(Heap, x, xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := 0 -- issue_0139.vpr@123.3--123.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (issue_0139.vpr@123.3--123.11) [73305]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 10 == fun05(x, xs) -- issue_0139.vpr@125.3--125.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 10 == fun05(x, xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun05 might not hold. There might be insufficient permission to access x.g (issue_0139.vpr@125.16--125.28) [73306]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, g];
        assert {:msg "  Precondition of function fun05 might not hold. Assertion 3 <= |xs| might not hold. (issue_0139.vpr@125.16--125.28) [73307]"}
          3 <= Seq#Length(xs);
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_6_1) && (Seq#Contains(Seq#Range(0, 3), i2_6) && i1_6_1 != i2_6)) {
            assert {:msg "  Precondition of function fun05 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@125.16--125.28) [73308]"}
              Seq#Index(xs, i1_6_1) != Seq#Index(xs, i2_6);
          }
          assume false;
        }
        assume (forall i1_7_1_1: int, i2_7_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_7_1_1), Seq#Contains(Seq#Range(0, 3), i2_7_1) } { Seq#Contains(Seq#Range(0, 3), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_7_1) } { Seq#Contains(Seq#Range(0, 3), i1_7_1_1), Seq#Contains(Seq#Range(0, 3), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_7_1_1), Seq#Index(xs, i2_7_1) } { Seq#Contains(Seq#Range(0, 3), i1_7_1_1), Seq#Index(xs, i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_7_1), Seq#Index(xs, i1_7_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_7_1), Seq#Index(xs, i1_7_1_1) } { Seq#Index(xs, i1_7_1_1), Seq#Index(xs, i2_7_1) }
          Seq#Contains(Seq#Range(0, 3), i1_7_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_7_1) && i1_7_1_1 != i2_7_1) ==> Seq#Index(xs, i1_7_1_1) != Seq#Index(xs, i2_7_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun05 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@125.16--125.28) [73309]"}
            (forall k_4_1: int, k_4_2: int ::
            { neverTriggered42(k_4_1), neverTriggered42(k_4_2) }
            (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < 3)) && (0 <= k_4_2 && k_4_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_4_1) != Seq#Index(xs, k_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun05 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@125.16--125.28) [73310]"}
            (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            0 <= k_4_1 && k_4_1 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            (0 <= k_4_1 && k_4_1 < 3) && NoPerm < FullPerm ==> qpRange42(Seq#Index(xs, k_4_1)) && invRecv42(Seq#Index(xs, k_4_1)) == k_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv42(o_4) }
            (0 <= invRecv42(o_4) && invRecv42(o_4) < 3) && (NoPerm < FullPerm && qpRange42(o_4)) ==> Seq#Index(xs, invRecv42(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 10 == fun05(x, xs) might not hold. (issue_0139.vpr@125.10--125.28) [73311]"}
      10 == fun05(Heap, x, xs);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(x: Ref, i: int, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var i1_33: int;
  var i2_28: int;
  var k_46: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_2_1: int;
  var i2_2_1: int;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i1_4_1: int;
  var i2_4: int;
  var i1_6_1: int;
  var i2_6: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |xs| > 10 -- issue_0139.vpr@136.3--136.19
    assume Seq#Length(xs) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- issue_0139.vpr@137.3--137.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale i > 0 -- issue_0139.vpr@138.3--138.15
    assume i > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (i1 in [0..3)), (i2 in [0..3)) }
  //     { (i1 in [0..3)), xs[i2] }
  //     { (i2 in [0..3)), xs[i1] }
  //     { xs[i1], xs[i2] }
  //     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) -- issue_0139.vpr@139.3--139.98
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, 3), i1_33) && (Seq#Contains(Seq#Range(0, 3), i2_28) && i1_33 != i2_28)) {
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might be negative. (issue_0139.vpr@139.10--139.98) [73313]"}
            i1_33 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i1] into xs might exceed sequence length. (issue_0139.vpr@139.10--139.98) [73314]"}
            i1_33 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might be negative. (issue_0139.vpr@139.10--139.98) [73315]"}
            i2_28 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i2] into xs might exceed sequence length. (issue_0139.vpr@139.10--139.98) [73316]"}
            i2_28 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i1_1_1: int, i2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Contains(Seq#Range(0, 3), i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_1_1), Seq#Index(xs, i2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_1_1), Seq#Index(xs, i1_1_1) } { Seq#Index(xs, i1_1_1), Seq#Index(xs, i2_1_1) }
      Seq#Contains(Seq#Range(0, 3), i1_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_1_1) && i1_1_1 != i2_1_1) ==> Seq#Index(xs, i1_1_1) != Seq#Index(xs, i2_1_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write)) -- issue_0139.vpr@140.3--140.59
    
    // -- Check definedness of (forall k: Int :: { xs[k] } 0 <= k && k < 3 ==> acc(xs[k].f, write))
      if (*) {
        if (0 <= k_46 && k_46 < 3) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (issue_0139.vpr@140.10--140.59) [73317]"}
            k_46 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (issue_0139.vpr@140.10--140.59) [73318]"}
            k_46 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@140.10--140.59) [73319]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < 3)) && (0 <= k_1_2 && k_1_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        (0 <= k_1_1 && k_1_1 < 3) && NoPerm < FullPerm ==> qpRange43(Seq#Index(xs, k_1_1)) && invRecv43(Seq#Index(xs, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv43(o_4) }
        ((0 <= invRecv43(o_4) && invRecv43(o_4) < 3) && NoPerm < FullPerm) && qpRange43(o_4) ==> Seq#Index(xs, invRecv43(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(xs, k_1_1) } { Seq#Index(xs, k_1_1) }
        0 <= k_1_1 && k_1_1 < 3 ==> Seq#Index(xs, k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv43(o_4) && invRecv43(o_4) < 3) && NoPerm < FullPerm) && qpRange43(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv43(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv43(o_4) && invRecv43(o_4) < 3) && NoPerm < FullPerm) && qpRange43(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 10 == fun06(x, i, xs) -- issue_0139.vpr@142.3--142.31
    assume state(Heap, Mask);
    
    // -- Check definedness of 10 == fun06(x, i, xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun06 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@142.16--142.31) [73320]"}
          Seq#Length(xs) > 10;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun06 might not hold. There might be insufficient permission to access x.f (issue_0139.vpr@142.16--142.31) [73321]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        assert {:msg "  Precondition of function fun06 might not hold. Assertion i > 0 might not hold. (issue_0139.vpr@142.16--142.31) [73322]"}
          i > 0;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_2_1) && (Seq#Contains(Seq#Range(0, 3), i2_2_1) && i1_2_1 != i2_2_1)) {
            assert {:msg "  Precondition of function fun06 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@142.16--142.31) [73323]"}
              Seq#Index(xs, i1_2_1) != Seq#Index(xs, i2_2_1);
          }
          assume false;
        }
        assume (forall i1_3_1_1: int, i2_3_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#Contains(Seq#Range(0, 3), i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#Contains(Seq#Range(0, 3), i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#Contains(Seq#Range(0, 3), i1_3_1_1), Seq#Index(xs, i2_3_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_3_1), Seq#Index(xs, i1_3_1_1) } { Seq#Index(xs, i1_3_1_1), Seq#Index(xs, i2_3_1) }
          Seq#Contains(Seq#Range(0, 3), i1_3_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_3_1) && i1_3_1_1 != i2_3_1) ==> Seq#Index(xs, i1_3_1_1) != Seq#Index(xs, i2_3_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun06 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@142.16--142.31) [73324]"}
            (forall k_2_1: int, k_2_2: int ::
            { neverTriggered44(k_2_1), neverTriggered44(k_2_2) }
            (((k_2_1 != k_2_2 && (0 <= k_2_1 && k_2_1 < 3)) && (0 <= k_2_2 && k_2_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_2_1) != Seq#Index(xs, k_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun06 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@142.16--142.31) [73325]"}
            (forall k_2_1: int ::
            { Seq#Index(xs, k_2_1) } { Seq#Index(xs, k_2_1) }
            0 <= k_2_1 && k_2_1 < 3 ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, k_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_2_1: int ::
            { Seq#Index(xs, k_2_1) } { Seq#Index(xs, k_2_1) }
            (0 <= k_2_1 && k_2_1 < 3) && NoPerm < FullPerm ==> qpRange44(Seq#Index(xs, k_2_1)) && invRecv44(Seq#Index(xs, k_2_1)) == k_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv44(o_4) }
            (0 <= invRecv44(o_4) && invRecv44(o_4) < 3) && (NoPerm < FullPerm && qpRange44(o_4)) ==> Seq#Index(xs, invRecv44(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 10 == fun06(Heap, x, i, xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 10 == fun06(x, i, xs) -- issue_0139.vpr@143.3--143.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 10 == fun06(x, i, xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun06 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@143.16--143.31) [73326]"}
          Seq#Length(xs) > 10;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun06 might not hold. There might be insufficient permission to access x.f (issue_0139.vpr@143.16--143.31) [73327]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        assert {:msg "  Precondition of function fun06 might not hold. Assertion i > 0 might not hold. (issue_0139.vpr@143.16--143.31) [73328]"}
          i > 0;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_4_1) && (Seq#Contains(Seq#Range(0, 3), i2_4) && i1_4_1 != i2_4)) {
            assert {:msg "  Precondition of function fun06 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@143.16--143.31) [73329]"}
              Seq#Index(xs, i1_4_1) != Seq#Index(xs, i2_4);
          }
          assume false;
        }
        assume (forall i1_5_1: int, i2_5_1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Contains(Seq#Range(0, 3), i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#Contains(Seq#Range(0, 3), i1_5_1), Seq#Index(xs, i2_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Contains(Seq#Range(0, 3), i2_5_1_1), Seq#Index(xs, i1_5_1) } { Seq#Index(xs, i1_5_1), Seq#Index(xs, i2_5_1_1) }
          Seq#Contains(Seq#Range(0, 3), i1_5_1) && (Seq#Contains(Seq#Range(0, 3), i2_5_1_1) && i1_5_1 != i2_5_1_1) ==> Seq#Index(xs, i1_5_1) != Seq#Index(xs, i2_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun06 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@143.16--143.31) [73330]"}
            (forall k_3: int, k_3_1: int ::
            { neverTriggered45(k_3), neverTriggered45(k_3_1) }
            (((k_3 != k_3_1 && (0 <= k_3 && k_3 < 3)) && (0 <= k_3_1 && k_3_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_3) != Seq#Index(xs, k_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun06 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@143.16--143.31) [73331]"}
            (forall k_3: int ::
            { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
            0 <= k_3 && k_3 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_3: int ::
            { Seq#Index(xs, k_3) } { Seq#Index(xs, k_3) }
            (0 <= k_3 && k_3 < 3) && NoPerm < FullPerm ==> qpRange45(Seq#Index(xs, k_3)) && invRecv45(Seq#Index(xs, k_3)) == k_3
          );
          assume (forall o_4: Ref ::
            { invRecv45(o_4) }
            (0 <= invRecv45(o_4) && invRecv45(o_4) < 3) && (NoPerm < FullPerm && qpRange45(o_4)) ==> Seq#Index(xs, invRecv45(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 10 == fun06(x, i, xs) might not hold. (issue_0139.vpr@143.10--143.31) [73332]"}
      10 == fun06(Heap, x, i, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 0 -- issue_0139.vpr@145.3--145.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (issue_0139.vpr@145.3--145.11) [73333]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 10 == fun06(x, i, xs) -- issue_0139.vpr@148.3--148.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 10 == fun06(x, i, xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun06 might not hold. Assertion |xs| > 10 might not hold. (issue_0139.vpr@148.16--148.31) [73334]"}
          Seq#Length(xs) > 10;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun06 might not hold. There might be insufficient permission to access x.f (issue_0139.vpr@148.16--148.31) [73335]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        assert {:msg "  Precondition of function fun06 might not hold. Assertion i > 0 might not hold. (issue_0139.vpr@148.16--148.31) [73336]"}
          i > 0;
        if (*) {
          if (Seq#Contains(Seq#Range(0, 3), i1_6_1) && (Seq#Contains(Seq#Range(0, 3), i2_6) && i1_6_1 != i2_6)) {
            assert {:msg "  Precondition of function fun06 might not hold. Assertion xs[i1] != xs[i2] might not hold. (issue_0139.vpr@148.16--148.31) [73337]"}
              Seq#Index(xs, i1_6_1) != Seq#Index(xs, i2_6);
          }
          assume false;
        }
        assume (forall i1_7_1_1: int, i2_7_1: int ::
          { Seq#ContainsTrigger(Seq#Range(0, 3), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_7_1_1), Seq#Contains(Seq#Range(0, 3), i2_7_1) } { Seq#Contains(Seq#Range(0, 3), i1_7_1_1), Seq#ContainsTrigger(Seq#Range(0, 3), i2_7_1) } { Seq#Contains(Seq#Range(0, 3), i1_7_1_1), Seq#Contains(Seq#Range(0, 3), i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i1_7_1_1), Seq#Index(xs, i2_7_1) } { Seq#Contains(Seq#Range(0, 3), i1_7_1_1), Seq#Index(xs, i2_7_1) } { Seq#ContainsTrigger(Seq#Range(0, 3), i2_7_1), Seq#Index(xs, i1_7_1_1) } { Seq#Contains(Seq#Range(0, 3), i2_7_1), Seq#Index(xs, i1_7_1_1) } { Seq#Index(xs, i1_7_1_1), Seq#Index(xs, i2_7_1) }
          Seq#Contains(Seq#Range(0, 3), i1_7_1_1) && (Seq#Contains(Seq#Range(0, 3), i2_7_1) && i1_7_1_1 != i2_7_1) ==> Seq#Index(xs, i1_7_1_1) != Seq#Index(xs, i2_7_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[k] is injective
          assert {:msg "  Precondition of function fun06 might not hold. Quantified resource xs[k].f might not be injective. (issue_0139.vpr@148.16--148.31) [73338]"}
            (forall k_4_1: int, k_4_2: int ::
            { neverTriggered46(k_4_1), neverTriggered46(k_4_2) }
            (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < 3)) && (0 <= k_4_2 && k_4_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, k_4_1) != Seq#Index(xs, k_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun06 might not hold. There might be insufficient permission to access xs[k].f (issue_0139.vpr@148.16--148.31) [73339]"}
            (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            0 <= k_4_1 && k_4_1 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, k_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[k]
          assume (forall k_4_1: int ::
            { Seq#Index(xs, k_4_1) } { Seq#Index(xs, k_4_1) }
            (0 <= k_4_1 && k_4_1 < 3) && NoPerm < FullPerm ==> qpRange46(Seq#Index(xs, k_4_1)) && invRecv46(Seq#Index(xs, k_4_1)) == k_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv46(o_4) }
            (0 <= invRecv46(o_4) && invRecv46(o_4) < 3) && (NoPerm < FullPerm && qpRange46(o_4)) ==> Seq#Index(xs, invRecv46(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion 10 == fun06(x, i, xs) might not hold. (issue_0139.vpr@148.10--148.31) [73340]"}
      10 == fun06(Heap, x, i, xs);
    assume state(Heap, Mask);
}