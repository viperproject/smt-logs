// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:39:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/forall.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/forall-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_51: Ref, f_50: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_51, f_50] }
  Heap[o_51, $allocated] ==> Heap[Heap[o_51, f_50], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_78: Ref, f_64: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_78, f_64] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_78, f_64) ==> Heap[o_78, f_64] == ExhaleHeap[o_78, f_64]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_43), ExhaleHeap[null, PredicateMaskField(pm_f_43)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsPredicateField(pm_f_43) ==> Heap[null, PredicateMaskField(pm_f_43)] == ExhaleHeap[null, PredicateMaskField(pm_f_43)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_43) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsPredicateField(pm_f_43) ==> (forall <A, B> o2_43: Ref, f_64: (Field A B) ::
    { ExhaleHeap[o2_43, f_64] }
    Heap[null, PredicateMaskField(pm_f_43)][o2_43, f_64] ==> Heap[o2_43, f_64] == ExhaleHeap[o2_43, f_64]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_43), ExhaleHeap[null, WandMaskField(pm_f_43)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsWandField(pm_f_43) ==> Heap[null, WandMaskField(pm_f_43)] == ExhaleHeap[null, WandMaskField(pm_f_43)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_43) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsWandField(pm_f_43) ==> (forall <A, B> o2_43: Ref, f_64: (Field A B) ::
    { ExhaleHeap[o2_43, f_64] }
    Heap[null, WandMaskField(pm_f_43)][o2_43, f_64] ==> Heap[o2_43, f_64] == ExhaleHeap[o2_43, f_64]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_78: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_78, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_78, $allocated] ==> ExhaleHeap[o_78, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_51: Ref, f_81: (Field A B), v: B ::
  { Heap[o_51, f_81:=v] }
  succHeap(Heap, Heap[o_51, f_81:=v])
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

function  neverTriggered1(x_1: Ref): bool;
function  neverTriggered2(x_3: Ref): bool;
function  neverTriggered3(x_4: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_5: Ref): bool;
function  neverTriggered6(x_8_1: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_3: Ref): bool;
function  neverTriggered9(x_5: Ref): bool;
function  neverTriggered10(x_7: Ref): bool;
function  neverTriggered11(x_8_1: Ref): bool;
function  neverTriggered12(x_9_2: Ref): bool;
function  neverTriggered13(x_1: Ref): bool;
function  neverTriggered14(x_5: Ref): bool;
function  neverTriggered15(x_7: Ref): bool;
function  neverTriggered16(x_11_1: Ref): bool;
function  neverTriggered17(x_12_2: Ref): bool;
function  neverTriggered18(x_14_1: Ref): bool;
function  neverTriggered19(x_1: Ref): bool;
function  neverTriggered20(x_3: Ref): bool;
function  neverTriggered21(x_7: Ref): bool;
function  neverTriggered22(x_9_2: Ref): bool;
function  neverTriggered23(x_12_2: Ref): bool;
function  neverTriggered24(x_13_2: Ref): bool;
function  neverTriggered25(x_1: Ref): bool;
function  neverTriggered26(x_5: Ref): bool;
function  neverTriggered27(x_9_2: Ref): bool;
function  neverTriggered28(x_13_2: Ref): bool;
function  neverTriggered29(x_16_1: Ref): bool;
function  neverTriggered30(x_18_2: Ref): bool;
function  neverTriggered31(x_1: Ref): bool;
function  neverTriggered32(x_3: Ref): bool;
function  neverTriggered33(x_5: Ref): bool;
function  neverTriggered34(x_11_1: Ref): bool;
function  neverTriggered35(x_13_2: Ref): bool;
function  neverTriggered36(x_15_2: Ref): bool;
function  neverTriggered37(x_20_2: Ref): bool;
function  neverTriggered38(x_21_1: Ref): bool;
function  neverTriggered39(x_22_1: Ref): bool;
function  neverTriggered40(x_1: Ref): bool;
function  neverTriggered41(x_3: Ref): bool;
function  neverTriggered42(x_1: Ref): bool;
function  neverTriggered43(x_3: Ref): bool;
function  neverTriggered44(x_5: Ref): bool;
function  neverTriggered45(x_11_1: Ref): bool;
function  neverTriggered46(x_13_2: Ref): bool;
function  neverTriggered47(x_15_2: Ref): bool;
function  neverTriggered48(x_20_2: Ref): bool;
function  neverTriggered49(x_21_1: Ref): bool;
function  neverTriggered50(x_22_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(x_2_1: Ref): Ref;
function  invRecv5(x_6_1_1: Ref): Ref;
function  invRecv6(x_9_1: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(x_2_1: Ref): Ref;
function  invRecv14(recv: Ref): Ref;
function  invRecv15(x_8_1_1: Ref): Ref;
function  invRecv16(recv: Ref): Ref;
function  invRecv17(x_13_1: Ref): Ref;
function  invRecv18(recv: Ref): Ref;
function  invRecv19(recv: Ref): Ref;
function  invRecv20(x_4_1_1: Ref): Ref;
function  invRecv21(recv: Ref): Ref;
function  invRecv22(x_10_1_1: Ref): Ref;
function  invRecv23(recv: Ref): Ref;
function  invRecv24(x_14_1_1: Ref): Ref;
function  invRecv25(x_2_1: Ref): Ref;
function  invRecv26(x_6_1_1: Ref): Ref;
function  invRecv27(x_10_1_1: Ref): Ref;
function  invRecv28(x_14_1_1: Ref): Ref;
function  invRecv29(x_17_1_1: Ref): Ref;
function  invRecv30(x_19_1_1: Ref): Ref;
function  invRecv31(recv: Ref): Ref;
function  invRecv32(recv: Ref): Ref;
function  invRecv33(x_6_1_1: Ref): Ref;
function  invRecv34(recv: Ref): Ref;
function  invRecv35(recv: Ref): Ref;
function  invRecv36(x_16_1_1: Ref): Ref;
function  invRecv37(recv: Ref): Ref;
function  invRecv38(recv: Ref): Ref;
function  invRecv39(x_23_1_1: Ref): Ref;
function  invRecv40(recv: Ref): Ref;
function  invRecv41(recv: Ref): Ref;
function  invRecv42(recv: Ref): Ref;
function  invRecv43(recv: Ref): Ref;
function  invRecv44(x_6_1_1: Ref): Ref;
function  invRecv45(recv: Ref): Ref;
function  invRecv46(recv: Ref): Ref;
function  invRecv47(x_16_1_1: Ref): Ref;
function  invRecv48(recv: Ref): Ref;
function  invRecv49(recv: Ref): Ref;
function  invRecv50(x_23_1_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(x_2_1: Ref): bool;
function  qpRange5(x_6_1_1: Ref): bool;
function  qpRange6(x_9_1: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(x_2_1: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(x_8_1_1: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(x_13_1: Ref): bool;
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(x_4_1_1: Ref): bool;
function  qpRange21(recv: Ref): bool;
function  qpRange22(x_10_1_1: Ref): bool;
function  qpRange23(recv: Ref): bool;
function  qpRange24(x_14_1_1: Ref): bool;
function  qpRange25(x_2_1: Ref): bool;
function  qpRange26(x_6_1_1: Ref): bool;
function  qpRange27(x_10_1_1: Ref): bool;
function  qpRange28(x_14_1_1: Ref): bool;
function  qpRange29(x_17_1_1: Ref): bool;
function  qpRange30(x_19_1_1: Ref): bool;
function  qpRange31(recv: Ref): bool;
function  qpRange32(recv: Ref): bool;
function  qpRange33(x_6_1_1: Ref): bool;
function  qpRange34(recv: Ref): bool;
function  qpRange35(recv: Ref): bool;
function  qpRange36(x_16_1_1: Ref): bool;
function  qpRange37(recv: Ref): bool;
function  qpRange38(recv: Ref): bool;
function  qpRange39(x_23_1_1: Ref): bool;
function  qpRange40(recv: Ref): bool;
function  qpRange41(recv: Ref): bool;
function  qpRange42(recv: Ref): bool;
function  qpRange43(recv: Ref): bool;
function  qpRange44(x_6_1_1: Ref): bool;
function  qpRange45(recv: Ref): bool;
function  qpRange46(recv: Ref): bool;
function  qpRange47(x_16_1_1: Ref): bool;
function  qpRange48(recv: Ref): bool;
function  qpRange49(recv: Ref): bool;
function  qpRange50(x_23_1_1: Ref): bool;

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
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of predicate pred
// ==================================================

type PredicateType_pred;
function  pred_3(x: Ref): Field PredicateType_pred FrameType;
function  pred#sm(x: Ref): Field PredicateType_pred PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(pred_3(x)) }
  PredicateMaskField(pred_3(x)) == pred#sm(x)
);
axiom (forall x: Ref ::
  { pred_3(x) }
  IsPredicateField(pred_3(x))
);
axiom (forall x: Ref ::
  { pred_3(x) }
  getPredWandId(pred_3(x)) == 0
);
function  pred#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { pred_3(x), pred_3(x2) }
  pred_3(x) == pred_3(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { pred#sm(x), pred#sm(x2) }
  pred#sm(x) == pred#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { pred#trigger(Heap, pred_3(x)) }
  pred#everUsed(pred_3(x))
);

procedure pred#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@12.10--12.46) [103039]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange1(x_1) && invRecv1(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(xs, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@13.9--13.45) [103040]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> qpRange2(x_3) && invRecv2(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(xs, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@13.9--13.45) [103041]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered3(x_4), neverTriggered3(x_4_1) }
        (((x_4 != x_4_1 && Seq#Contains(xs, x_4)) && Seq#Contains(xs, x_4_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1 might not hold. There might be insufficient permission to access x.f (forall.vpr@13.9--13.45) [103042]"}
        (forall x_4: Ref ::
        { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) ==> Mask[x_4, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4: Ref ::
        { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) && NoPerm < FullPerm ==> qpRange3(x_4) && invRecv3(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(xs, invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
// Translation of method m2
// ==================================================

procedure m2(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@17.10--17.50) [103043]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered4(x_1), neverTriggered4(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv4(x_1) == x_1 && qpRange4(x_1)
      );
      assume (forall x_2_1: Ref ::
        { invRecv4(x_2_1) }
        (Seq#Contains(xs, invRecv4(x_2_1)) && NoPerm < FullPerm) && qpRange4(x_2_1) ==> invRecv4(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        (Seq#Contains(xs, invRecv4(x_2_1)) && NoPerm < FullPerm) && qpRange4(x_2_1) ==> (NoPerm < FullPerm ==> invRecv4(x_2_1) == x_2_1) && QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        !((Seq#Contains(xs, invRecv4(x_2_1)) && NoPerm < FullPerm) && qpRange4(x_2_1)) ==> QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)]
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@18.9--18.49) [103044]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered5(x_5), neverTriggered5(x_5_1) }
        (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
      );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { PostHeap[null, pred_3(x_5)] } { PostMask[null, pred_3(x_5)] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> invRecv5(x_5) == x_5 && qpRange5(x_5)
      );
      assume (forall x_6_1_1: Ref ::
        { invRecv5(x_6_1_1) }
        (Seq#Contains(xs, invRecv5(x_6_1_1)) && NoPerm < FullPerm) && qpRange5(x_6_1_1) ==> invRecv5(x_6_1_1) == x_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, pred_3(x_6_1_1)] }
        (Seq#Contains(xs, invRecv5(x_6_1_1)) && NoPerm < FullPerm) && qpRange5(x_6_1_1) ==> (NoPerm < FullPerm ==> invRecv5(x_6_1_1) == x_6_1_1) && QPMask[null, pred_3(x_6_1_1)] == PostMask[null, pred_3(x_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, pred_3(x_6_1_1)] }
        !((Seq#Contains(xs, invRecv5(x_6_1_1)) && NoPerm < FullPerm) && qpRange5(x_6_1_1)) ==> QPMask[null, pred_3(x_6_1_1)] == PostMask[null, pred_3(x_6_1_1)]
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
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@18.9--18.49) [103045]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered6(x_8_1), neverTriggered6(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access pred(x) (forall.vpr@18.9--18.49) [103046]"}
        (forall x_8_1: Ref ::
        { Heap[null, pred_3(x_8_1)] } { Mask[null, pred_3(x_8_1)] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) ==> Mask[null, pred_3(x_8_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_8_1: Ref ::
        { Heap[null, pred_3(x_8_1)] } { Mask[null, pred_3(x_8_1)] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> invRecv6(x_8_1) == x_8_1 && qpRange6(x_8_1)
      );
      assume (forall x_9_1: Ref ::
        { invRecv6(x_9_1) }
        (Seq#Contains(xs, invRecv6(x_9_1)) && NoPerm < FullPerm) && qpRange6(x_9_1) ==> invRecv6(x_9_1) == x_9_1
      );
    
    // -- assume permission updates
      assume (forall x_9_1: Ref ::
        { QPMask[null, pred_3(x_9_1)] }
        (Seq#Contains(xs, invRecv6(x_9_1)) && NoPerm < FullPerm) && qpRange6(x_9_1) ==> invRecv6(x_9_1) == x_9_1 && QPMask[null, pred_3(x_9_1)] == Mask[null, pred_3(x_9_1)] - FullPerm
      );
      assume (forall x_9_1: Ref ::
        { QPMask[null, pred_3(x_9_1)] }
        !((Seq#Contains(xs, invRecv6(x_9_1)) && NoPerm < FullPerm) && qpRange6(x_9_1)) ==> QPMask[null, pred_3(x_9_1)] == Mask[null, pred_3(x_9_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@22.10--22.58) [103047]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange7(x_1) && invRecv7(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (Seq#Contains(xs, invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@22.10--22.58) [103048]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> qpRange8(x_3) && invRecv8(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (Seq#Contains(xs, invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@23.9--23.57) [103049]"}
      (forall x_5: Ref, x_5_1: Ref ::
      
      (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
    );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> qpRange9(x_5) && invRecv9(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (Seq#Contains(xs, invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4) ==> invRecv9(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) ==> x_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> invRecv9(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@23.9--23.57) [103050]"}
      (forall x_7: Ref, x_7_1: Ref ::
      
      (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
    );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> qpRange10(x_7) && invRecv10(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (Seq#Contains(xs, invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> invRecv10(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) ==> x_7 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> invRecv10(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@23.9--23.57) [103051]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered11(x_8_1), neverTriggered11(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access x.f (forall.vpr@23.9--23.57) [103052]"}
        (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) ==> Mask[x_8_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> qpRange11(x_8_1) && invRecv11(x_8_1) == x_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        Seq#Contains(xs, invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@23.9--23.57) [103053]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered12(x_9_2), neverTriggered12(x_9_3) }
        (((x_9_2 != x_9_3 && Seq#Contains(xs, x_9_2)) && Seq#Contains(xs, x_9_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access x.g (forall.vpr@23.9--23.57) [103054]"}
        (forall x_9_2: Ref ::
        { Heap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) ==> Mask[x_9_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_9_2: Ref ::
        { Heap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && NoPerm < FullPerm ==> qpRange12(x_9_2) && invRecv12(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        Seq#Contains(xs, invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Seq#Contains(xs, invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(Seq#Contains(xs, invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@27.10--27.62) [103055]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered13(x_1), neverTriggered13(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv13(x_1) == x_1 && qpRange13(x_1)
      );
      assume (forall x_2_1: Ref ::
        { invRecv13(x_2_1) }
        (Seq#Contains(xs, invRecv13(x_2_1)) && NoPerm < FullPerm) && qpRange13(x_2_1) ==> invRecv13(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        (Seq#Contains(xs, invRecv13(x_2_1)) && NoPerm < FullPerm) && qpRange13(x_2_1) ==> (NoPerm < FullPerm ==> invRecv13(x_2_1) == x_2_1) && QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        !((Seq#Contains(xs, invRecv13(x_2_1)) && NoPerm < FullPerm) && qpRange13(x_2_1)) ==> QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@27.10--27.62) [103056]"}
      (forall x_5: Ref, x_5_1: Ref ::
      
      (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
    );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { QPMask[x_5, g] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> qpRange14(x_5) && invRecv14(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (Seq#Contains(xs, invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> invRecv14(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { QPMask[x_5, g] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) ==> x_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> invRecv14(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@28.9--28.61) [103057]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered15(x_7), neverTriggered15(x_7_1) }
        (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
      );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { PostHeap[null, pred_3(x_7)] } { PostMask[null, pred_3(x_7)] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> invRecv15(x_7) == x_7 && qpRange15(x_7)
      );
      assume (forall x_8_1_1: Ref ::
        { invRecv15(x_8_1_1) }
        (Seq#Contains(xs, invRecv15(x_8_1_1)) && NoPerm < FullPerm) && qpRange15(x_8_1_1) ==> invRecv15(x_8_1_1) == x_8_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_8_1_1: Ref ::
        { QPMask[null, pred_3(x_8_1_1)] }
        (Seq#Contains(xs, invRecv15(x_8_1_1)) && NoPerm < FullPerm) && qpRange15(x_8_1_1) ==> (NoPerm < FullPerm ==> invRecv15(x_8_1_1) == x_8_1_1) && QPMask[null, pred_3(x_8_1_1)] == PostMask[null, pred_3(x_8_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_8_1_1: Ref ::
        { QPMask[null, pred_3(x_8_1_1)] }
        !((Seq#Contains(xs, invRecv15(x_8_1_1)) && NoPerm < FullPerm) && qpRange15(x_8_1_1)) ==> QPMask[null, pred_3(x_8_1_1)] == PostMask[null, pred_3(x_8_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@28.9--28.61) [103058]"}
      (forall x_11_1: Ref, x_11_2: Ref ::
      
      (((x_11_1 != x_11_2 && Seq#Contains(xs, x_11_1)) && Seq#Contains(xs, x_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
    );
    
    // -- Define Inverse Function
      assume (forall x_11_1: Ref ::
        { PostHeap[x_11_1, g] } { QPMask[x_11_1, g] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && NoPerm < FullPerm ==> qpRange16(x_11_1) && invRecv16(x_11_1) == x_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (Seq#Contains(xs, invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> invRecv16(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_11_1: Ref ::
        { PostHeap[x_11_1, g] } { QPMask[x_11_1, g] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) ==> x_11_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> invRecv16(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@28.9--28.61) [103059]"}
        (forall x_12_2: Ref, x_12_3: Ref ::
        { neverTriggered17(x_12_2), neverTriggered17(x_12_3) }
        (((x_12_2 != x_12_3 && Seq#Contains(xs, x_12_2)) && Seq#Contains(xs, x_12_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_12_2 != x_12_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access pred(x) (forall.vpr@28.9--28.61) [103060]"}
        (forall x_12_2: Ref ::
        { Heap[null, pred_3(x_12_2)] } { Mask[null, pred_3(x_12_2)] } { Seq#ContainsTrigger(xs, x_12_2) } { Seq#Contains(xs, x_12_2) }
        Seq#Contains(xs, x_12_2) ==> Mask[null, pred_3(x_12_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_12_2: Ref ::
        { Heap[null, pred_3(x_12_2)] } { Mask[null, pred_3(x_12_2)] } { Seq#ContainsTrigger(xs, x_12_2) } { Seq#Contains(xs, x_12_2) }
        Seq#Contains(xs, x_12_2) && NoPerm < FullPerm ==> invRecv17(x_12_2) == x_12_2 && qpRange17(x_12_2)
      );
      assume (forall x_13_1: Ref ::
        { invRecv17(x_13_1) }
        (Seq#Contains(xs, invRecv17(x_13_1)) && NoPerm < FullPerm) && qpRange17(x_13_1) ==> invRecv17(x_13_1) == x_13_1
      );
    
    // -- assume permission updates
      assume (forall x_13_1: Ref ::
        { QPMask[null, pred_3(x_13_1)] }
        (Seq#Contains(xs, invRecv17(x_13_1)) && NoPerm < FullPerm) && qpRange17(x_13_1) ==> invRecv17(x_13_1) == x_13_1 && QPMask[null, pred_3(x_13_1)] == Mask[null, pred_3(x_13_1)] - FullPerm
      );
      assume (forall x_13_1: Ref ::
        { QPMask[null, pred_3(x_13_1)] }
        !((Seq#Contains(xs, invRecv17(x_13_1)) && NoPerm < FullPerm) && qpRange17(x_13_1)) ==> QPMask[null, pred_3(x_13_1)] == Mask[null, pred_3(x_13_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@28.9--28.61) [103061]"}
        (forall x_14_1: Ref, x_14_2: Ref ::
        { neverTriggered18(x_14_1), neverTriggered18(x_14_2) }
        (((x_14_1 != x_14_2 && Seq#Contains(xs, x_14_1)) && Seq#Contains(xs, x_14_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_14_1 != x_14_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access x.g (forall.vpr@28.9--28.61) [103062]"}
        (forall x_14_1: Ref ::
        { Heap[x_14_1, g] } { QPMask[x_14_1, g] } { Seq#ContainsTrigger(xs, x_14_1) } { Seq#Contains(xs, x_14_1) }
        Seq#Contains(xs, x_14_1) ==> Mask[x_14_1, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_14_1: Ref ::
        { Heap[x_14_1, g] } { QPMask[x_14_1, g] } { Seq#ContainsTrigger(xs, x_14_1) } { Seq#Contains(xs, x_14_1) }
        Seq#Contains(xs, x_14_1) && NoPerm < FullPerm ==> qpRange18(x_14_1) && invRecv18(x_14_1) == x_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m5
// ==================================================

procedure m5(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@32.10--32.63) [103063]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, g] } { QPMask[x_1, g] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange19(x_1) && invRecv19(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        (Seq#Contains(xs, invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> invRecv19(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, g] } { QPMask[x_1, g] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> invRecv19(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@32.10--32.63) [103064]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered20(x_3), neverTriggered20(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[null, pred_3(x_3)] } { Mask[null, pred_3(x_3)] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> invRecv20(x_3) == x_3 && qpRange20(x_3)
      );
      assume (forall x_4_1_1: Ref ::
        { invRecv20(x_4_1_1) }
        (Seq#Contains(xs, invRecv20(x_4_1_1)) && NoPerm < FullPerm) && qpRange20(x_4_1_1) ==> invRecv20(x_4_1_1) == x_4_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_4_1_1: Ref ::
        { QPMask[null, pred_3(x_4_1_1)] }
        (Seq#Contains(xs, invRecv20(x_4_1_1)) && NoPerm < FullPerm) && qpRange20(x_4_1_1) ==> (NoPerm < FullPerm ==> invRecv20(x_4_1_1) == x_4_1_1) && QPMask[null, pred_3(x_4_1_1)] == Mask[null, pred_3(x_4_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_4_1_1: Ref ::
        { QPMask[null, pred_3(x_4_1_1)] }
        !((Seq#Contains(xs, invRecv20(x_4_1_1)) && NoPerm < FullPerm) && qpRange20(x_4_1_1)) ==> QPMask[null, pred_3(x_4_1_1)] == Mask[null, pred_3(x_4_1_1)]
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@33.9--33.62) [103065]"}
      (forall x_7: Ref, x_7_1: Ref ::
      
      (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
    );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> qpRange21(x_7) && invRecv21(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        (Seq#Contains(xs, invRecv21(o_4)) && NoPerm < FullPerm) && qpRange21(o_4) ==> invRecv21(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) ==> x_7 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv21(o_4)) && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> invRecv21(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv21(o_4)) && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@33.9--33.62) [103066]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered22(x_9_2), neverTriggered22(x_9_3) }
        (((x_9_2 != x_9_3 && Seq#Contains(xs, x_9_2)) && Seq#Contains(xs, x_9_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
      );
    
    // -- Define Inverse Function
      assume (forall x_9_2: Ref ::
        { PostHeap[null, pred_3(x_9_2)] } { PostMask[null, pred_3(x_9_2)] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && NoPerm < FullPerm ==> invRecv22(x_9_2) == x_9_2 && qpRange22(x_9_2)
      );
      assume (forall x_10_1_1: Ref ::
        { invRecv22(x_10_1_1) }
        (Seq#Contains(xs, invRecv22(x_10_1_1)) && NoPerm < FullPerm) && qpRange22(x_10_1_1) ==> invRecv22(x_10_1_1) == x_10_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_10_1_1: Ref ::
        { QPMask[null, pred_3(x_10_1_1)] }
        (Seq#Contains(xs, invRecv22(x_10_1_1)) && NoPerm < FullPerm) && qpRange22(x_10_1_1) ==> (NoPerm < FullPerm ==> invRecv22(x_10_1_1) == x_10_1_1) && QPMask[null, pred_3(x_10_1_1)] == PostMask[null, pred_3(x_10_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_10_1_1: Ref ::
        { QPMask[null, pred_3(x_10_1_1)] }
        !((Seq#Contains(xs, invRecv22(x_10_1_1)) && NoPerm < FullPerm) && qpRange22(x_10_1_1)) ==> QPMask[null, pred_3(x_10_1_1)] == PostMask[null, pred_3(x_10_1_1)]
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
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@33.9--33.62) [103067]"}
        (forall x_12_2: Ref, x_12_3: Ref ::
        { neverTriggered23(x_12_2), neverTriggered23(x_12_3) }
        (((x_12_2 != x_12_3 && Seq#Contains(xs, x_12_2)) && Seq#Contains(xs, x_12_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_12_2 != x_12_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m5 might not hold. There might be insufficient permission to access x.g (forall.vpr@33.9--33.62) [103068]"}
        (forall x_12_2: Ref ::
        { Heap[x_12_2, g] } { QPMask[x_12_2, g] } { Seq#ContainsTrigger(xs, x_12_2) } { Seq#Contains(xs, x_12_2) }
        Seq#Contains(xs, x_12_2) ==> Mask[x_12_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_12_2: Ref ::
        { Heap[x_12_2, g] } { QPMask[x_12_2, g] } { Seq#ContainsTrigger(xs, x_12_2) } { Seq#Contains(xs, x_12_2) }
        Seq#Contains(xs, x_12_2) && NoPerm < FullPerm ==> qpRange23(x_12_2) && invRecv23(x_12_2) == x_12_2
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        Seq#Contains(xs, invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Seq#Contains(xs, invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(Seq#Contains(xs, invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@33.9--33.62) [103069]"}
        (forall x_13_2: Ref, x_13_3: Ref ::
        { neverTriggered24(x_13_2), neverTriggered24(x_13_3) }
        (((x_13_2 != x_13_3 && Seq#Contains(xs, x_13_2)) && Seq#Contains(xs, x_13_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_13_2 != x_13_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m5 might not hold. There might be insufficient permission to access pred(x) (forall.vpr@33.9--33.62) [103070]"}
        (forall x_13_2: Ref ::
        { Heap[null, pred_3(x_13_2)] } { Mask[null, pred_3(x_13_2)] } { Seq#ContainsTrigger(xs, x_13_2) } { Seq#Contains(xs, x_13_2) }
        Seq#Contains(xs, x_13_2) ==> Mask[null, pred_3(x_13_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_13_2: Ref ::
        { Heap[null, pred_3(x_13_2)] } { Mask[null, pred_3(x_13_2)] } { Seq#ContainsTrigger(xs, x_13_2) } { Seq#Contains(xs, x_13_2) }
        Seq#Contains(xs, x_13_2) && NoPerm < FullPerm ==> invRecv24(x_13_2) == x_13_2 && qpRange24(x_13_2)
      );
      assume (forall x_14_1_1: Ref ::
        { invRecv24(x_14_1_1) }
        (Seq#Contains(xs, invRecv24(x_14_1_1)) && NoPerm < FullPerm) && qpRange24(x_14_1_1) ==> invRecv24(x_14_1_1) == x_14_1_1
      );
    
    // -- assume permission updates
      assume (forall x_14_1_1: Ref ::
        { QPMask[null, pred_3(x_14_1_1)] }
        (Seq#Contains(xs, invRecv24(x_14_1_1)) && NoPerm < FullPerm) && qpRange24(x_14_1_1) ==> invRecv24(x_14_1_1) == x_14_1_1 && QPMask[null, pred_3(x_14_1_1)] == Mask[null, pred_3(x_14_1_1)] - FullPerm
      );
      assume (forall x_14_1_1: Ref ::
        { QPMask[null, pred_3(x_14_1_1)] }
        !((Seq#Contains(xs, invRecv24(x_14_1_1)) && NoPerm < FullPerm) && qpRange24(x_14_1_1)) ==> QPMask[null, pred_3(x_14_1_1)] == Mask[null, pred_3(x_14_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m6
// ==================================================

procedure m6(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@37.10--37.67) [103071]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered25(x_1), neverTriggered25(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv25(x_1) == x_1 && qpRange25(x_1)
      );
      assume (forall x_2_1: Ref ::
        { invRecv25(x_2_1) }
        (Seq#Contains(xs, invRecv25(x_2_1)) && NoPerm < FullPerm) && qpRange25(x_2_1) ==> invRecv25(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        (Seq#Contains(xs, invRecv25(x_2_1)) && NoPerm < FullPerm) && qpRange25(x_2_1) ==> (NoPerm < FullPerm ==> invRecv25(x_2_1) == x_2_1) && QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        !((Seq#Contains(xs, invRecv25(x_2_1)) && NoPerm < FullPerm) && qpRange25(x_2_1)) ==> QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@37.10--37.67) [103072]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered26(x_5), neverTriggered26(x_5_1) }
        (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
      );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { Heap[null, pred_3(x_5)] } { Mask[null, pred_3(x_5)] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> invRecv26(x_5) == x_5 && qpRange26(x_5)
      );
      assume (forall x_6_1_1: Ref ::
        { invRecv26(x_6_1_1) }
        (Seq#Contains(xs, invRecv26(x_6_1_1)) && NoPerm < FullPerm) && qpRange26(x_6_1_1) ==> invRecv26(x_6_1_1) == x_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, pred_3(x_6_1_1)] }
        (Seq#Contains(xs, invRecv26(x_6_1_1)) && NoPerm < FullPerm) && qpRange26(x_6_1_1) ==> (NoPerm < FullPerm ==> invRecv26(x_6_1_1) == x_6_1_1) && QPMask[null, pred_3(x_6_1_1)] == Mask[null, pred_3(x_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, pred_3(x_6_1_1)] }
        !((Seq#Contains(xs, invRecv26(x_6_1_1)) && NoPerm < FullPerm) && qpRange26(x_6_1_1)) ==> QPMask[null, pred_3(x_6_1_1)] == Mask[null, pred_3(x_6_1_1)]
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@38.9--38.66) [103073]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered27(x_9_2), neverTriggered27(x_9_3) }
        (((x_9_2 != x_9_3 && Seq#Contains(xs, x_9_2)) && Seq#Contains(xs, x_9_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
      );
    
    // -- Define Inverse Function
      assume (forall x_9_2: Ref ::
        { PostHeap[null, pred_3(x_9_2)] } { PostMask[null, pred_3(x_9_2)] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && NoPerm < FullPerm ==> invRecv27(x_9_2) == x_9_2 && qpRange27(x_9_2)
      );
      assume (forall x_10_1_1: Ref ::
        { invRecv27(x_10_1_1) }
        (Seq#Contains(xs, invRecv27(x_10_1_1)) && NoPerm < FullPerm) && qpRange27(x_10_1_1) ==> invRecv27(x_10_1_1) == x_10_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_10_1_1: Ref ::
        { QPMask[null, pred_3(x_10_1_1)] }
        (Seq#Contains(xs, invRecv27(x_10_1_1)) && NoPerm < FullPerm) && qpRange27(x_10_1_1) ==> (NoPerm < FullPerm ==> invRecv27(x_10_1_1) == x_10_1_1) && QPMask[null, pred_3(x_10_1_1)] == PostMask[null, pred_3(x_10_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_10_1_1: Ref ::
        { QPMask[null, pred_3(x_10_1_1)] }
        !((Seq#Contains(xs, invRecv27(x_10_1_1)) && NoPerm < FullPerm) && qpRange27(x_10_1_1)) ==> QPMask[null, pred_3(x_10_1_1)] == PostMask[null, pred_3(x_10_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@38.9--38.66) [103074]"}
        (forall x_13_2: Ref, x_13_3: Ref ::
        { neverTriggered28(x_13_2), neverTriggered28(x_13_3) }
        (((x_13_2 != x_13_3 && Seq#Contains(xs, x_13_2)) && Seq#Contains(xs, x_13_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_13_2 != x_13_3
      );
    
    // -- Define Inverse Function
      assume (forall x_13_2: Ref ::
        { PostHeap[null, pred_3(x_13_2)] } { PostMask[null, pred_3(x_13_2)] } { Seq#ContainsTrigger(xs, x_13_2) } { Seq#Contains(xs, x_13_2) }
        Seq#Contains(xs, x_13_2) && NoPerm < FullPerm ==> invRecv28(x_13_2) == x_13_2 && qpRange28(x_13_2)
      );
      assume (forall x_14_1_1: Ref ::
        { invRecv28(x_14_1_1) }
        (Seq#Contains(xs, invRecv28(x_14_1_1)) && NoPerm < FullPerm) && qpRange28(x_14_1_1) ==> invRecv28(x_14_1_1) == x_14_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_14_1_1: Ref ::
        { QPMask[null, pred_3(x_14_1_1)] }
        (Seq#Contains(xs, invRecv28(x_14_1_1)) && NoPerm < FullPerm) && qpRange28(x_14_1_1) ==> (NoPerm < FullPerm ==> invRecv28(x_14_1_1) == x_14_1_1) && QPMask[null, pred_3(x_14_1_1)] == PostMask[null, pred_3(x_14_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_14_1_1: Ref ::
        { QPMask[null, pred_3(x_14_1_1)] }
        !((Seq#Contains(xs, invRecv28(x_14_1_1)) && NoPerm < FullPerm) && qpRange28(x_14_1_1)) ==> QPMask[null, pred_3(x_14_1_1)] == PostMask[null, pred_3(x_14_1_1)]
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
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@38.9--38.66) [103075]"}
        (forall x_16_1: Ref, x_16_2: Ref ::
        { neverTriggered29(x_16_1), neverTriggered29(x_16_2) }
        (((x_16_1 != x_16_2 && Seq#Contains(xs, x_16_1)) && Seq#Contains(xs, x_16_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_16_1 != x_16_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m6 might not hold. There might be insufficient permission to access pred(x) (forall.vpr@38.9--38.66) [103076]"}
        (forall x_16_1: Ref ::
        { Heap[null, pred_3(x_16_1)] } { Mask[null, pred_3(x_16_1)] } { Seq#ContainsTrigger(xs, x_16_1) } { Seq#Contains(xs, x_16_1) }
        Seq#Contains(xs, x_16_1) ==> Mask[null, pred_3(x_16_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_16_1: Ref ::
        { Heap[null, pred_3(x_16_1)] } { Mask[null, pred_3(x_16_1)] } { Seq#ContainsTrigger(xs, x_16_1) } { Seq#Contains(xs, x_16_1) }
        Seq#Contains(xs, x_16_1) && NoPerm < FullPerm ==> invRecv29(x_16_1) == x_16_1 && qpRange29(x_16_1)
      );
      assume (forall x_17_1_1: Ref ::
        { invRecv29(x_17_1_1) }
        (Seq#Contains(xs, invRecv29(x_17_1_1)) && NoPerm < FullPerm) && qpRange29(x_17_1_1) ==> invRecv29(x_17_1_1) == x_17_1_1
      );
    
    // -- assume permission updates
      assume (forall x_17_1_1: Ref ::
        { QPMask[null, pred_3(x_17_1_1)] }
        (Seq#Contains(xs, invRecv29(x_17_1_1)) && NoPerm < FullPerm) && qpRange29(x_17_1_1) ==> invRecv29(x_17_1_1) == x_17_1_1 && QPMask[null, pred_3(x_17_1_1)] == Mask[null, pred_3(x_17_1_1)] - FullPerm
      );
      assume (forall x_17_1_1: Ref ::
        { QPMask[null, pred_3(x_17_1_1)] }
        !((Seq#Contains(xs, invRecv29(x_17_1_1)) && NoPerm < FullPerm) && qpRange29(x_17_1_1)) ==> QPMask[null, pred_3(x_17_1_1)] == Mask[null, pred_3(x_17_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@38.9--38.66) [103077]"}
        (forall x_18_2: Ref, x_18_3: Ref ::
        { neverTriggered30(x_18_2), neverTriggered30(x_18_3) }
        (((x_18_2 != x_18_3 && Seq#Contains(xs, x_18_2)) && Seq#Contains(xs, x_18_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_18_2 != x_18_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m6 might not hold. There might be insufficient permission to access pred(x) (forall.vpr@38.9--38.66) [103078]"}
        (forall x_18_2: Ref ::
        { Heap[null, pred_3(x_18_2)] } { Mask[null, pred_3(x_18_2)] } { Seq#ContainsTrigger(xs, x_18_2) } { Seq#Contains(xs, x_18_2) }
        Seq#Contains(xs, x_18_2) ==> Mask[null, pred_3(x_18_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_18_2: Ref ::
        { Heap[null, pred_3(x_18_2)] } { Mask[null, pred_3(x_18_2)] } { Seq#ContainsTrigger(xs, x_18_2) } { Seq#Contains(xs, x_18_2) }
        Seq#Contains(xs, x_18_2) && NoPerm < FullPerm ==> invRecv30(x_18_2) == x_18_2 && qpRange30(x_18_2)
      );
      assume (forall x_19_1_1: Ref ::
        { invRecv30(x_19_1_1) }
        (Seq#Contains(xs, invRecv30(x_19_1_1)) && NoPerm < FullPerm) && qpRange30(x_19_1_1) ==> invRecv30(x_19_1_1) == x_19_1_1
      );
    
    // -- assume permission updates
      assume (forall x_19_1_1: Ref ::
        { QPMask[null, pred_3(x_19_1_1)] }
        (Seq#Contains(xs, invRecv30(x_19_1_1)) && NoPerm < FullPerm) && qpRange30(x_19_1_1) ==> invRecv30(x_19_1_1) == x_19_1_1 && QPMask[null, pred_3(x_19_1_1)] == Mask[null, pred_3(x_19_1_1)] - FullPerm
      );
      assume (forall x_19_1_1: Ref ::
        { QPMask[null, pred_3(x_19_1_1)] }
        !((Seq#Contains(xs, invRecv30(x_19_1_1)) && NoPerm < FullPerm) && qpRange30(x_19_1_1)) ==> QPMask[null, pred_3(x_19_1_1)] == Mask[null, pred_3(x_19_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m7
// ==================================================

procedure m7(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_30: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_41: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x_24_2: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@42.10--42.75) [103079]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange31(x_1) && invRecv31(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv31(o_4) }
        (Seq#Contains(xs, invRecv31(o_4)) && NoPerm < FullPerm) && qpRange31(o_4) ==> invRecv31(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv31(o_4)) && NoPerm < FullPerm) && qpRange31(o_4) ==> (NoPerm < FullPerm ==> invRecv31(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv31(o_4)) && NoPerm < FullPerm) && qpRange31(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@42.10--42.75) [103080]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> qpRange32(x_3) && invRecv32(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv32(o_4) }
        (Seq#Contains(xs, invRecv32(o_4)) && NoPerm < FullPerm) && qpRange32(o_4) ==> invRecv32(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv32(o_4)) && NoPerm < FullPerm) && qpRange32(o_4) ==> (NoPerm < FullPerm ==> invRecv32(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv32(o_4)) && NoPerm < FullPerm) && qpRange32(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@42.10--42.75) [103081]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered33(x_5), neverTriggered33(x_5_1) }
        (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
      );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { Heap[null, pred_3(x_5)] } { Mask[null, pred_3(x_5)] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> invRecv33(x_5) == x_5 && qpRange33(x_5)
      );
      assume (forall x_6_1_1: Ref ::
        { invRecv33(x_6_1_1) }
        (Seq#Contains(xs, invRecv33(x_6_1_1)) && NoPerm < FullPerm) && qpRange33(x_6_1_1) ==> invRecv33(x_6_1_1) == x_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, pred_3(x_6_1_1)] }
        (Seq#Contains(xs, invRecv33(x_6_1_1)) && NoPerm < FullPerm) && qpRange33(x_6_1_1) ==> (NoPerm < FullPerm ==> invRecv33(x_6_1_1) == x_6_1_1) && QPMask[null, pred_3(x_6_1_1)] == Mask[null, pred_3(x_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, pred_3(x_6_1_1)] }
        !((Seq#Contains(xs, invRecv33(x_6_1_1)) && NoPerm < FullPerm) && qpRange33(x_6_1_1)) ==> QPMask[null, pred_3(x_6_1_1)] == Mask[null, pred_3(x_6_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (Seq#Contains(xs, x_30)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (forall.vpr@43.10--43.45) [103082]"}
            HasDirectPerm(Mask, x_30, f_7);
        }
        assume false;
      }
    assume (forall x_9_2: Ref ::
      { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
      Seq#Contains(xs, x_9_2) ==> Heap[x_9_2, f_7] > 0
    );
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@44.9--44.74) [103083]"}
      (forall x_11_1: Ref, x_11_2: Ref ::
      
      (((x_11_1 != x_11_2 && Seq#Contains(xs, x_11_1)) && Seq#Contains(xs, x_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
    );
    
    // -- Define Inverse Function
      assume (forall x_11_1: Ref ::
        { PostHeap[x_11_1, f_7] } { QPMask[x_11_1, f_7] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && NoPerm < FullPerm ==> qpRange34(x_11_1) && invRecv34(x_11_1) == x_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv34(o_4) }
        (Seq#Contains(xs, invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> invRecv34(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_11_1: Ref ::
        { PostHeap[x_11_1, f_7] } { QPMask[x_11_1, f_7] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) ==> x_11_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> (NoPerm < FullPerm ==> invRecv34(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@44.9--44.74) [103084]"}
      (forall x_13_2: Ref, x_13_3: Ref ::
      
      (((x_13_2 != x_13_3 && Seq#Contains(xs, x_13_2)) && Seq#Contains(xs, x_13_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_13_2 != x_13_3
    );
    
    // -- Define Inverse Function
      assume (forall x_13_2: Ref ::
        { PostHeap[x_13_2, g] } { QPMask[x_13_2, g] } { Seq#ContainsTrigger(xs, x_13_2) } { Seq#Contains(xs, x_13_2) }
        Seq#Contains(xs, x_13_2) && NoPerm < FullPerm ==> qpRange35(x_13_2) && invRecv35(x_13_2) == x_13_2
      );
      assume (forall o_4: Ref ::
        { invRecv35(o_4) }
        (Seq#Contains(xs, invRecv35(o_4)) && NoPerm < FullPerm) && qpRange35(o_4) ==> invRecv35(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_13_2: Ref ::
        { PostHeap[x_13_2, g] } { QPMask[x_13_2, g] } { Seq#ContainsTrigger(xs, x_13_2) } { Seq#Contains(xs, x_13_2) }
        Seq#Contains(xs, x_13_2) ==> x_13_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv35(o_4)) && NoPerm < FullPerm) && qpRange35(o_4) ==> (NoPerm < FullPerm ==> invRecv35(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv35(o_4)) && NoPerm < FullPerm) && qpRange35(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@44.9--44.74) [103085]"}
        (forall x_15_2: Ref, x_15_3: Ref ::
        { neverTriggered36(x_15_2), neverTriggered36(x_15_3) }
        (((x_15_2 != x_15_3 && Seq#Contains(xs, x_15_2)) && Seq#Contains(xs, x_15_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_15_2 != x_15_3
      );
    
    // -- Define Inverse Function
      assume (forall x_15_2: Ref ::
        { PostHeap[null, pred_3(x_15_2)] } { PostMask[null, pred_3(x_15_2)] } { Seq#ContainsTrigger(xs, x_15_2) } { Seq#Contains(xs, x_15_2) }
        Seq#Contains(xs, x_15_2) && NoPerm < FullPerm ==> invRecv36(x_15_2) == x_15_2 && qpRange36(x_15_2)
      );
      assume (forall x_16_1_1: Ref ::
        { invRecv36(x_16_1_1) }
        (Seq#Contains(xs, invRecv36(x_16_1_1)) && NoPerm < FullPerm) && qpRange36(x_16_1_1) ==> invRecv36(x_16_1_1) == x_16_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_16_1_1: Ref ::
        { QPMask[null, pred_3(x_16_1_1)] }
        (Seq#Contains(xs, invRecv36(x_16_1_1)) && NoPerm < FullPerm) && qpRange36(x_16_1_1) ==> (NoPerm < FullPerm ==> invRecv36(x_16_1_1) == x_16_1_1) && QPMask[null, pred_3(x_16_1_1)] == PostMask[null, pred_3(x_16_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_16_1_1: Ref ::
        { QPMask[null, pred_3(x_16_1_1)] }
        !((Seq#Contains(xs, invRecv36(x_16_1_1)) && NoPerm < FullPerm) && qpRange36(x_16_1_1)) ==> QPMask[null, pred_3(x_16_1_1)] == PostMask[null, pred_3(x_16_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (Seq#Contains(xs, x_41)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (forall.vpr@45.10--45.45) [103086]"}
            HasDirectPerm(PostMask, x_41, f_7);
        }
        assume false;
      }
    assume (forall x_19_1: Ref ::
      { Seq#ContainsTrigger(xs, x_19_1) } { Seq#Contains(xs, x_19_1) }
      Seq#Contains(xs, x_19_1) ==> PostHeap[x_19_1, f_7] > 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@44.9--44.74) [103087]"}
        (forall x_20_2: Ref, x_20_3: Ref ::
        { neverTriggered37(x_20_2), neverTriggered37(x_20_3) }
        (((x_20_2 != x_20_3 && Seq#Contains(xs, x_20_2)) && Seq#Contains(xs, x_20_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_20_2 != x_20_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m7 might not hold. There might be insufficient permission to access x.f (forall.vpr@44.9--44.74) [103088]"}
        (forall x_20_2: Ref ::
        { Heap[x_20_2, f_7] } { QPMask[x_20_2, f_7] } { Seq#ContainsTrigger(xs, x_20_2) } { Seq#Contains(xs, x_20_2) }
        Seq#Contains(xs, x_20_2) ==> Mask[x_20_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_20_2: Ref ::
        { Heap[x_20_2, f_7] } { QPMask[x_20_2, f_7] } { Seq#ContainsTrigger(xs, x_20_2) } { Seq#Contains(xs, x_20_2) }
        Seq#Contains(xs, x_20_2) && NoPerm < FullPerm ==> qpRange37(x_20_2) && invRecv37(x_20_2) == x_20_2
      );
      assume (forall o_4: Ref ::
        { invRecv37(o_4) }
        Seq#Contains(xs, invRecv37(o_4)) && (NoPerm < FullPerm && qpRange37(o_4)) ==> invRecv37(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv37(o_4)) && (NoPerm < FullPerm && qpRange37(o_4)) ==> invRecv37(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv37(o_4)) && (NoPerm < FullPerm && qpRange37(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@44.9--44.74) [103089]"}
        (forall x_21_1: Ref, x_21_2: Ref ::
        { neverTriggered38(x_21_1), neverTriggered38(x_21_2) }
        (((x_21_1 != x_21_2 && Seq#Contains(xs, x_21_1)) && Seq#Contains(xs, x_21_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_21_1 != x_21_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m7 might not hold. There might be insufficient permission to access x.g (forall.vpr@44.9--44.74) [103090]"}
        (forall x_21_1: Ref ::
        { Heap[x_21_1, g] } { QPMask[x_21_1, g] } { Seq#ContainsTrigger(xs, x_21_1) } { Seq#Contains(xs, x_21_1) }
        Seq#Contains(xs, x_21_1) ==> Mask[x_21_1, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_21_1: Ref ::
        { Heap[x_21_1, g] } { QPMask[x_21_1, g] } { Seq#ContainsTrigger(xs, x_21_1) } { Seq#Contains(xs, x_21_1) }
        Seq#Contains(xs, x_21_1) && NoPerm < FullPerm ==> qpRange38(x_21_1) && invRecv38(x_21_1) == x_21_1
      );
      assume (forall o_4: Ref ::
        { invRecv38(o_4) }
        Seq#Contains(xs, invRecv38(o_4)) && (NoPerm < FullPerm && qpRange38(o_4)) ==> invRecv38(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Seq#Contains(xs, invRecv38(o_4)) && (NoPerm < FullPerm && qpRange38(o_4)) ==> invRecv38(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(Seq#Contains(xs, invRecv38(o_4)) && (NoPerm < FullPerm && qpRange38(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@44.9--44.74) [103091]"}
        (forall x_22_1: Ref, x_22_2: Ref ::
        { neverTriggered39(x_22_1), neverTriggered39(x_22_2) }
        (((x_22_1 != x_22_2 && Seq#Contains(xs, x_22_1)) && Seq#Contains(xs, x_22_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_22_1 != x_22_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m7 might not hold. There might be insufficient permission to access pred(x) (forall.vpr@44.9--44.74) [103092]"}
        (forall x_22_1: Ref ::
        { Heap[null, pred_3(x_22_1)] } { Mask[null, pred_3(x_22_1)] } { Seq#ContainsTrigger(xs, x_22_1) } { Seq#Contains(xs, x_22_1) }
        Seq#Contains(xs, x_22_1) ==> Mask[null, pred_3(x_22_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_22_1: Ref ::
        { Heap[null, pred_3(x_22_1)] } { Mask[null, pred_3(x_22_1)] } { Seq#ContainsTrigger(xs, x_22_1) } { Seq#Contains(xs, x_22_1) }
        Seq#Contains(xs, x_22_1) && NoPerm < FullPerm ==> invRecv39(x_22_1) == x_22_1 && qpRange39(x_22_1)
      );
      assume (forall x_23_1_1: Ref ::
        { invRecv39(x_23_1_1) }
        (Seq#Contains(xs, invRecv39(x_23_1_1)) && NoPerm < FullPerm) && qpRange39(x_23_1_1) ==> invRecv39(x_23_1_1) == x_23_1_1
      );
    
    // -- assume permission updates
      assume (forall x_23_1_1: Ref ::
        { QPMask[null, pred_3(x_23_1_1)] }
        (Seq#Contains(xs, invRecv39(x_23_1_1)) && NoPerm < FullPerm) && qpRange39(x_23_1_1) ==> invRecv39(x_23_1_1) == x_23_1_1 && QPMask[null, pred_3(x_23_1_1)] == Mask[null, pred_3(x_23_1_1)] - FullPerm
      );
      assume (forall x_23_1_1: Ref ::
        { QPMask[null, pred_3(x_23_1_1)] }
        !((Seq#Contains(xs, invRecv39(x_23_1_1)) && NoPerm < FullPerm) && qpRange39(x_23_1_1)) ==> QPMask[null, pred_3(x_23_1_1)] == Mask[null, pred_3(x_23_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(xs, x_24_2)) {
        assert {:msg "  Postcondition of m7 might not hold. Assertion x.f > 0 might not hold. (forall.vpr@45.10--45.45) [103093]"}
          Heap[x_24_2, f_7] > 0;
      }
      assume false;
    }
    assume (forall x_25_1: Ref ::
      { Seq#ContainsTrigger(xs, x_25_1) } { Seq#Contains(xs, x_25_1) }
      Seq#Contains(xs, x_25_1) ==> Heap[x_25_1, f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m8
// ==================================================

procedure m8(xs: (Seq Ref), ys: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && (x in ys) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@49.10--49.86) [103094]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && (Seq#Contains(xs, x_1) && Seq#Contains(ys, x_1))) && (Seq#Contains(xs, x_1_1) && Seq#Contains(ys, x_1_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) } { Seq#ContainsTrigger(ys, x_1) } { Seq#Contains(ys, x_1) }
        (Seq#Contains(xs, x_1) && Seq#Contains(ys, x_1)) && NoPerm < FullPerm ==> qpRange40(x_1) && invRecv40(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv40(o_4) }
        ((Seq#Contains(xs, invRecv40(o_4)) && Seq#Contains(ys, invRecv40(o_4))) && NoPerm < FullPerm) && qpRange40(o_4) ==> invRecv40(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) } { Seq#ContainsTrigger(ys, x_1) } { Seq#Contains(ys, x_1) }
        Seq#Contains(xs, x_1) && Seq#Contains(ys, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((Seq#Contains(xs, invRecv40(o_4)) && Seq#Contains(ys, invRecv40(o_4))) && NoPerm < FullPerm) && qpRange40(o_4) ==> (NoPerm < FullPerm ==> invRecv40(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(xs, invRecv40(o_4)) && Seq#Contains(ys, invRecv40(o_4))) && NoPerm < FullPerm) && qpRange40(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && (x in ys) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@49.10--49.86) [103095]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && (Seq#Contains(xs, x_3) && Seq#Contains(ys, x_3))) && (Seq#Contains(xs, x_3_1) && Seq#Contains(ys, x_3_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) } { Seq#ContainsTrigger(ys, x_3) } { Seq#Contains(ys, x_3) }
        (Seq#Contains(xs, x_3) && Seq#Contains(ys, x_3)) && NoPerm < FullPerm ==> qpRange41(x_3) && invRecv41(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv41(o_4) }
        ((Seq#Contains(xs, invRecv41(o_4)) && Seq#Contains(ys, invRecv41(o_4))) && NoPerm < FullPerm) && qpRange41(o_4) ==> invRecv41(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) } { Seq#ContainsTrigger(ys, x_3) } { Seq#Contains(ys, x_3) }
        Seq#Contains(xs, x_3) && Seq#Contains(ys, x_3) ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv41(o_4)) && Seq#Contains(ys, invRecv41(o_4))) && NoPerm < FullPerm) && qpRange41(o_4) ==> (NoPerm < FullPerm ==> invRecv41(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv41(o_4)) && Seq#Contains(ys, invRecv41(o_4))) && NoPerm < FullPerm) && qpRange41(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
// Translation of method m9
// ==================================================

procedure m9(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_44: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_45: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x_24_2: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@55.10--55.86) [103096]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange42(x_1) && invRecv42(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv42(o_4) }
        (Seq#Contains(xs, invRecv42(o_4)) && NoPerm < FullPerm) && qpRange42(o_4) ==> invRecv42(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv42(o_4)) && NoPerm < FullPerm) && qpRange42(o_4) ==> (NoPerm < FullPerm ==> invRecv42(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv42(o_4)) && NoPerm < FullPerm) && qpRange42(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@55.10--55.86) [103097]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> qpRange43(x_3) && invRecv43(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv43(o_4) }
        (Seq#Contains(xs, invRecv43(o_4)) && NoPerm < FullPerm) && qpRange43(o_4) ==> invRecv43(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv43(o_4)) && NoPerm < FullPerm) && qpRange43(o_4) ==> (NoPerm < FullPerm ==> invRecv43(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv43(o_4)) && NoPerm < FullPerm) && qpRange43(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@55.10--55.86) [103098]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered44(x_5), neverTriggered44(x_5_1) }
        (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
      );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { Heap[null, pred_3(x_5)] } { Mask[null, pred_3(x_5)] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> invRecv44(x_5) == x_5 && qpRange44(x_5)
      );
      assume (forall x_6_1_1: Ref ::
        { invRecv44(x_6_1_1) }
        (Seq#Contains(xs, invRecv44(x_6_1_1)) && NoPerm < FullPerm) && qpRange44(x_6_1_1) ==> invRecv44(x_6_1_1) == x_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, pred_3(x_6_1_1)] }
        (Seq#Contains(xs, invRecv44(x_6_1_1)) && NoPerm < FullPerm) && qpRange44(x_6_1_1) ==> (NoPerm < FullPerm ==> invRecv44(x_6_1_1) == x_6_1_1) && QPMask[null, pred_3(x_6_1_1)] == Mask[null, pred_3(x_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, pred_3(x_6_1_1)] }
        !((Seq#Contains(xs, invRecv44(x_6_1_1)) && NoPerm < FullPerm) && qpRange44(x_6_1_1)) ==> QPMask[null, pred_3(x_6_1_1)] == Mask[null, pred_3(x_6_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (Seq#Contains(xs, x_44)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (forall.vpr@55.10--55.86) [103099]"}
            HasDirectPerm(Mask, x_44, f_7);
        }
        assume false;
      }
    assume (forall x_9_2: Ref ::
      { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
      Seq#Contains(xs, x_9_2) ==> Heap[x_9_2, f_7] > 0
    );
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@56.9--56.85) [103100]"}
      (forall x_11_1: Ref, x_11_2: Ref ::
      
      (((x_11_1 != x_11_2 && Seq#Contains(xs, x_11_1)) && Seq#Contains(xs, x_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
    );
    
    // -- Define Inverse Function
      assume (forall x_11_1: Ref ::
        { PostHeap[x_11_1, f_7] } { QPMask[x_11_1, f_7] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && NoPerm < FullPerm ==> qpRange45(x_11_1) && invRecv45(x_11_1) == x_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv45(o_4) }
        (Seq#Contains(xs, invRecv45(o_4)) && NoPerm < FullPerm) && qpRange45(o_4) ==> invRecv45(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_11_1: Ref ::
        { PostHeap[x_11_1, f_7] } { QPMask[x_11_1, f_7] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) ==> x_11_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv45(o_4)) && NoPerm < FullPerm) && qpRange45(o_4) ==> (NoPerm < FullPerm ==> invRecv45(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv45(o_4)) && NoPerm < FullPerm) && qpRange45(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@56.9--56.85) [103101]"}
      (forall x_13_2: Ref, x_13_3: Ref ::
      
      (((x_13_2 != x_13_3 && Seq#Contains(xs, x_13_2)) && Seq#Contains(xs, x_13_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_13_2 != x_13_3
    );
    
    // -- Define Inverse Function
      assume (forall x_13_2: Ref ::
        { PostHeap[x_13_2, g] } { QPMask[x_13_2, g] } { Seq#ContainsTrigger(xs, x_13_2) } { Seq#Contains(xs, x_13_2) }
        Seq#Contains(xs, x_13_2) && NoPerm < FullPerm ==> qpRange46(x_13_2) && invRecv46(x_13_2) == x_13_2
      );
      assume (forall o_4: Ref ::
        { invRecv46(o_4) }
        (Seq#Contains(xs, invRecv46(o_4)) && NoPerm < FullPerm) && qpRange46(o_4) ==> invRecv46(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_13_2: Ref ::
        { PostHeap[x_13_2, g] } { QPMask[x_13_2, g] } { Seq#ContainsTrigger(xs, x_13_2) } { Seq#Contains(xs, x_13_2) }
        Seq#Contains(xs, x_13_2) ==> x_13_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv46(o_4)) && NoPerm < FullPerm) && qpRange46(o_4) ==> (NoPerm < FullPerm ==> invRecv46(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv46(o_4)) && NoPerm < FullPerm) && qpRange46(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@56.9--56.85) [103102]"}
        (forall x_15_2: Ref, x_15_3: Ref ::
        { neverTriggered47(x_15_2), neverTriggered47(x_15_3) }
        (((x_15_2 != x_15_3 && Seq#Contains(xs, x_15_2)) && Seq#Contains(xs, x_15_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_15_2 != x_15_3
      );
    
    // -- Define Inverse Function
      assume (forall x_15_2: Ref ::
        { PostHeap[null, pred_3(x_15_2)] } { PostMask[null, pred_3(x_15_2)] } { Seq#ContainsTrigger(xs, x_15_2) } { Seq#Contains(xs, x_15_2) }
        Seq#Contains(xs, x_15_2) && NoPerm < FullPerm ==> invRecv47(x_15_2) == x_15_2 && qpRange47(x_15_2)
      );
      assume (forall x_16_1_1: Ref ::
        { invRecv47(x_16_1_1) }
        (Seq#Contains(xs, invRecv47(x_16_1_1)) && NoPerm < FullPerm) && qpRange47(x_16_1_1) ==> invRecv47(x_16_1_1) == x_16_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_16_1_1: Ref ::
        { QPMask[null, pred_3(x_16_1_1)] }
        (Seq#Contains(xs, invRecv47(x_16_1_1)) && NoPerm < FullPerm) && qpRange47(x_16_1_1) ==> (NoPerm < FullPerm ==> invRecv47(x_16_1_1) == x_16_1_1) && QPMask[null, pred_3(x_16_1_1)] == PostMask[null, pred_3(x_16_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_16_1_1: Ref ::
        { QPMask[null, pred_3(x_16_1_1)] }
        !((Seq#Contains(xs, invRecv47(x_16_1_1)) && NoPerm < FullPerm) && qpRange47(x_16_1_1)) ==> QPMask[null, pred_3(x_16_1_1)] == PostMask[null, pred_3(x_16_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (Seq#Contains(xs, x_45)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (forall.vpr@56.9--56.85) [103103]"}
            HasDirectPerm(PostMask, x_45, f_7);
        }
        assume false;
      }
    assume (forall x_19_1: Ref ::
      { Seq#ContainsTrigger(xs, x_19_1) } { Seq#Contains(xs, x_19_1) }
      Seq#Contains(xs, x_19_1) ==> PostHeap[x_19_1, f_7] > 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall.vpr@56.9--56.85) [103104]"}
        (forall x_20_2: Ref, x_20_3: Ref ::
        { neverTriggered48(x_20_2), neverTriggered48(x_20_3) }
        (((x_20_2 != x_20_3 && Seq#Contains(xs, x_20_2)) && Seq#Contains(xs, x_20_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_20_2 != x_20_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m9 might not hold. There might be insufficient permission to access x.f (forall.vpr@56.9--56.85) [103105]"}
        (forall x_20_2: Ref ::
        { Heap[x_20_2, f_7] } { QPMask[x_20_2, f_7] } { Seq#ContainsTrigger(xs, x_20_2) } { Seq#Contains(xs, x_20_2) }
        Seq#Contains(xs, x_20_2) ==> Mask[x_20_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_20_2: Ref ::
        { Heap[x_20_2, f_7] } { QPMask[x_20_2, f_7] } { Seq#ContainsTrigger(xs, x_20_2) } { Seq#Contains(xs, x_20_2) }
        Seq#Contains(xs, x_20_2) && NoPerm < FullPerm ==> qpRange48(x_20_2) && invRecv48(x_20_2) == x_20_2
      );
      assume (forall o_4: Ref ::
        { invRecv48(o_4) }
        Seq#Contains(xs, invRecv48(o_4)) && (NoPerm < FullPerm && qpRange48(o_4)) ==> invRecv48(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv48(o_4)) && (NoPerm < FullPerm && qpRange48(o_4)) ==> invRecv48(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv48(o_4)) && (NoPerm < FullPerm && qpRange48(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (forall.vpr@56.9--56.85) [103106]"}
        (forall x_21_1: Ref, x_21_2: Ref ::
        { neverTriggered49(x_21_1), neverTriggered49(x_21_2) }
        (((x_21_1 != x_21_2 && Seq#Contains(xs, x_21_1)) && Seq#Contains(xs, x_21_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_21_1 != x_21_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m9 might not hold. There might be insufficient permission to access x.g (forall.vpr@56.9--56.85) [103107]"}
        (forall x_21_1: Ref ::
        { Heap[x_21_1, g] } { QPMask[x_21_1, g] } { Seq#ContainsTrigger(xs, x_21_1) } { Seq#Contains(xs, x_21_1) }
        Seq#Contains(xs, x_21_1) ==> Mask[x_21_1, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_21_1: Ref ::
        { Heap[x_21_1, g] } { QPMask[x_21_1, g] } { Seq#ContainsTrigger(xs, x_21_1) } { Seq#Contains(xs, x_21_1) }
        Seq#Contains(xs, x_21_1) && NoPerm < FullPerm ==> qpRange49(x_21_1) && invRecv49(x_21_1) == x_21_1
      );
      assume (forall o_4: Ref ::
        { invRecv49(o_4) }
        Seq#Contains(xs, invRecv49(o_4)) && (NoPerm < FullPerm && qpRange49(o_4)) ==> invRecv49(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Seq#Contains(xs, invRecv49(o_4)) && (NoPerm < FullPerm && qpRange49(o_4)) ==> invRecv49(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(Seq#Contains(xs, invRecv49(o_4)) && (NoPerm < FullPerm && qpRange49(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (forall.vpr@56.9--56.85) [103108]"}
        (forall x_22_1: Ref, x_22_2: Ref ::
        { neverTriggered50(x_22_1), neverTriggered50(x_22_2) }
        (((x_22_1 != x_22_2 && Seq#Contains(xs, x_22_1)) && Seq#Contains(xs, x_22_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_22_1 != x_22_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m9 might not hold. There might be insufficient permission to access pred(x) (forall.vpr@56.9--56.85) [103109]"}
        (forall x_22_1: Ref ::
        { Heap[null, pred_3(x_22_1)] } { Mask[null, pred_3(x_22_1)] } { Seq#ContainsTrigger(xs, x_22_1) } { Seq#Contains(xs, x_22_1) }
        Seq#Contains(xs, x_22_1) ==> Mask[null, pred_3(x_22_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_22_1: Ref ::
        { Heap[null, pred_3(x_22_1)] } { Mask[null, pred_3(x_22_1)] } { Seq#ContainsTrigger(xs, x_22_1) } { Seq#Contains(xs, x_22_1) }
        Seq#Contains(xs, x_22_1) && NoPerm < FullPerm ==> invRecv50(x_22_1) == x_22_1 && qpRange50(x_22_1)
      );
      assume (forall x_23_1_1: Ref ::
        { invRecv50(x_23_1_1) }
        (Seq#Contains(xs, invRecv50(x_23_1_1)) && NoPerm < FullPerm) && qpRange50(x_23_1_1) ==> invRecv50(x_23_1_1) == x_23_1_1
      );
    
    // -- assume permission updates
      assume (forall x_23_1_1: Ref ::
        { QPMask[null, pred_3(x_23_1_1)] }
        (Seq#Contains(xs, invRecv50(x_23_1_1)) && NoPerm < FullPerm) && qpRange50(x_23_1_1) ==> invRecv50(x_23_1_1) == x_23_1_1 && QPMask[null, pred_3(x_23_1_1)] == Mask[null, pred_3(x_23_1_1)] - FullPerm
      );
      assume (forall x_23_1_1: Ref ::
        { QPMask[null, pred_3(x_23_1_1)] }
        !((Seq#Contains(xs, invRecv50(x_23_1_1)) && NoPerm < FullPerm) && qpRange50(x_23_1_1)) ==> QPMask[null, pred_3(x_23_1_1)] == Mask[null, pred_3(x_23_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(xs, x_24_2)) {
        assert {:msg "  Postcondition of m9 might not hold. Assertion x.f > 0 might not hold. (forall.vpr@56.9--56.85) [103110]"}
          Heap[x_24_2, f_7] > 0;
      }
      assume false;
    }
    assume (forall x_25_1: Ref ::
      { Seq#ContainsTrigger(xs, x_25_1) } { Seq#Contains(xs, x_25_1) }
      Seq#Contains(xs, x_25_1) ==> Heap[x_25_1, f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}