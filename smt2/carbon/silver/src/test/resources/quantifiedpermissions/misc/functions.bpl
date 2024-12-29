// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:09:56
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/functions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/functions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_58: Ref, f_60: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_58, f_60] }
  Heap[o_58, $allocated] ==> Heap[Heap[o_58, f_60], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_59: Ref, f_61: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_59, f_61] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_59, f_61) ==> Heap[o_59, f_61] == ExhaleHeap[o_59, f_61]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_31), ExhaleHeap[null, PredicateMaskField(pm_f_31)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsPredicateField(pm_f_31) ==> Heap[null, PredicateMaskField(pm_f_31)] == ExhaleHeap[null, PredicateMaskField(pm_f_31)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_31) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsPredicateField(pm_f_31) ==> (forall <A, B> o2_31: Ref, f_61: (Field A B) ::
    { ExhaleHeap[o2_31, f_61] }
    Heap[null, PredicateMaskField(pm_f_31)][o2_31, f_61] ==> Heap[o2_31, f_61] == ExhaleHeap[o2_31, f_61]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_31), ExhaleHeap[null, WandMaskField(pm_f_31)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsWandField(pm_f_31) ==> Heap[null, WandMaskField(pm_f_31)] == ExhaleHeap[null, WandMaskField(pm_f_31)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_31) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsWandField(pm_f_31) ==> (forall <A, B> o2_31: Ref, f_61: (Field A B) ::
    { ExhaleHeap[o2_31, f_61] }
    Heap[null, WandMaskField(pm_f_31)][o2_31, f_61] ==> Heap[o2_31, f_61] == ExhaleHeap[o2_31, f_61]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_59: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_59, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_59, $allocated] ==> ExhaleHeap[o_59, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_58: Ref, f_62: (Field A B), v: B ::
  { Heap[o_58, f_62:=v] }
  succHeap(Heap, Heap[o_58, f_62:=v])
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

function  neverTriggered1(i_8_2: int): bool;
function  neverTriggered2(i_8_2: int): bool;
function  neverTriggered3(j_11_2: int): bool;
function  neverTriggered4(j_13_2: int): bool;
function  neverTriggered5(j_1: int): bool;
function  neverTriggered6(j_2_1: int): bool;
function  neverTriggered7(j_1: int): bool;
function  neverTriggered8(j_2_1: int): bool;
function  neverTriggered9(i_8_2: int): bool;
function  neverTriggered10(i_11_1: int): bool;
function  neverTriggered11(i_14_1: int): bool;
function  neverTriggered12(j_8: int): bool;
function  neverTriggered13(j_5_1: int): bool;
function  neverTriggered14(j_7_1: int): bool;
function  neverTriggered15(j_5_1: int): bool;
function  neverTriggered16(j_7_1: int): bool;
function  neverTriggered17(i_3: int): bool;
function  neverTriggered18(i_6_1: int): bool;
function  neverTriggered19(i_9_1: int): bool;
function  neverTriggered20(i_3: int): bool;
function  neverTriggered21(i_6_1: int): bool;
function  neverTriggered22(i_9_1: int): bool;
function  neverTriggered23(i_12_1: int): bool;
function  neverTriggered24(j_3_1: int): bool;
function  neverTriggered25(j_5_1: int): bool;
function  neverTriggered26(j_8: int): bool;
function  neverTriggered27(j_9_1: int): bool;
function  neverTriggered28(j_12_2: int): bool;
function  neverTriggered29(j_13_2: int): bool;
function  neverTriggered30(j_3_1: int): bool;
function  neverTriggered31(j_5_1: int): bool;
function  neverTriggered32(j_8: int): bool;
function  neverTriggered33(j_9_1: int): bool;
function  neverTriggered34(j_13_2: int): bool;
function  neverTriggered35(j_14_1: int): bool;
function  neverTriggered36(j_1: int): bool;
function  neverTriggered37(j_2_1: int): bool;
function  neverTriggered38(j_5_1: int): bool;
function  neverTriggered39(j_6_1: int): bool;
function  neverTriggered40(j_10_2: int): bool;
function  neverTriggered41(j_11_2: int): bool;
function  neverTriggered42(j_1: int): bool;
function  neverTriggered43(j_2_1: int): bool;
function  neverTriggered44(j_5_1: int): bool;
function  neverTriggered45(j_6_1: int): bool;
function  neverTriggered46(j_10_2: int): bool;
function  neverTriggered47(j_11_2: int): bool;
function  neverTriggered48(j_14_1: int): bool;
function  neverTriggered49(j_15_1: int): bool;
function  neverTriggered50(j_1: int): bool;
function  neverTriggered51(j_2_1: int): bool;
function  neverTriggered52(j_5_1: int): bool;
function  neverTriggered53(j_6_1: int): bool;
function  neverTriggered54(j_10_2: int): bool;
function  neverTriggered55(j_11_2: int): bool;
function  neverTriggered56(j_14_1: int): bool;
function  neverTriggered57(j_15_1: int): bool;
function  neverTriggered58(i_1: int): bool;
function  neverTriggered59(i_4_1: int): bool;
function  neverTriggered60(j_4_1: int): bool;
function  neverTriggered61(i_7_1: int): bool;
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
function  invRecv47(recv: Ref): int;
function  invRecv48(recv: Ref): int;
function  invRecv49(recv: Ref): int;
function  invRecv50(recv: Ref): int;
function  invRecv51(recv: Ref): int;
function  invRecv52(recv: Ref): int;
function  invRecv53(recv: Ref): int;
function  invRecv54(recv: Ref): int;
function  invRecv55(recv: Ref): int;
function  invRecv56(recv: Ref): int;
function  invRecv57(recv: Ref): int;
function  invRecv58(recv: Ref): int;
function  invRecv59(recv: Ref): int;
function  invRecv60(recv: Ref): int;
function  invRecv61(recv: Ref): int;
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
function  qpRange47(recv: Ref): bool;
function  qpRange48(recv: Ref): bool;
function  qpRange49(recv: Ref): bool;
function  qpRange50(recv: Ref): bool;
function  qpRange51(recv: Ref): bool;
function  qpRange52(recv: Ref): bool;
function  qpRange53(recv: Ref): bool;
function  qpRange54(recv: Ref): bool;
function  qpRange55(recv: Ref): bool;
function  qpRange56(recv: Ref): bool;
function  qpRange57(recv: Ref): bool;
function  qpRange58(recv: Ref): bool;
function  qpRange59(recv: Ref): bool;
function  qpRange60(recv: Ref): bool;
function  qpRange61(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 6: fun01
// - height 5: fun03
// - height 4: fun02
// - height 3: fun07
// - height 2: fun04
// - height 1: fun06
// - height 0: fun08
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
const unique ss_1: Field NormalField (Seq Ref);
axiom !IsPredicateField(ss_1);
axiom !IsWandField(ss_1);

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

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun01(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> (forall i: int, j_9: int ::
    { Seq#Index(xs, i), Seq#Index(xs, j_9) }
    i >= 0 && (i < Seq#Length(xs) && (j_9 >= 0 && (j_9 < Seq#Length(xs) && i != j_9))) ==> Seq#Index(xs, i) != Seq#Index(xs, j_9)
  ) && Seq#Length(xs) > 3 ==> fun01(Heap, xs) == Heap[Seq#Index(xs, 0), f_7]
);

// Framing axioms
function  fun01#frame(frame: FrameType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun01'(Heap, xs) }
  state(Heap, Mask) ==> fun01'(Heap, xs) == fun01#frame(FrameFragment(fun01#condqp1(Heap, xs)), xs)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write)) in function fun01
// ==================================================

function  fun01#condqp1(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun01#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) && sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) < Seq#Length(xs)) && NoPerm < FullPerm <==> (0 <= sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) && sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) < Seq#Length(xs)) && NoPerm < FullPerm) && ((0 <= sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) && sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs)) < Seq#Length(xs)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun01#condqp1(fun01#condqp1(Heap2Heap, xs), fun01#condqp1(Heap1Heap, xs))), f_7]) ==> fun01#condqp1(Heap2Heap, xs) == fun01#condqp1(Heap1Heap, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun01#triggerStateless(xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness(xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_14 >= 0 && (i_14 < Seq#Length(xs) && (j_5 >= 0 && (j_5 < Seq#Length(xs) && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@7.12--7.106) [68396]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@7.12--7.106) [68397]"}
            i_14 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@7.12--7.106) [68398]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@7.12--7.106) [68399]"}
            j_5 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_6_1: int, j_3_1: int ::
      { Seq#Index(xs, i_6_1), Seq#Index(xs, j_3_1) }
      i_6_1 >= 0 && (i_6_1 < Seq#Length(xs) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(xs) && i_6_1 != j_3_1))) ==> Seq#Index(xs, i_6_1) != Seq#Index(xs, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_2 && i_2 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@8.12--8.64) [68400]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@8.12--8.64) [68401]"}
            i_2 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (functions.vpr@8.12--8.64) [68402]"}
      (forall i_8_2: int, i_8_3: int ::
      
      (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < Seq#Length(xs))) && (0 <= i_8_3 && i_8_3 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_8_2) != Seq#Index(xs, i_8_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#Index(xs, i_8_2) }
        (0 <= i_8_2 && i_8_2 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, i_8_2)) && invRecv1(Seq#Index(xs, i_8_2)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(xs, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#Index(xs, i_8_2) }
        0 <= i_8_2 && i_8_2 < Seq#Length(xs) ==> Seq#Index(xs, i_8_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(xs) > 3;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[0].f
      assert {:msg "  Function might not be well-formed. Index xs[0] into xs might exceed sequence length. (functions.vpr@6.1--10.12) [68403]"}
        0 < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[0].f (functions.vpr@6.1--10.12) [68404]"}
        HasDirectPerm(Mask, Seq#Index(xs, 0), f_7);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, 0), f_7];
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

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun02(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> (forall i: int, j_9: int ::
    { Seq#Index(xs, i), Seq#Index(xs, j_9) }
    i >= 0 && (i < Seq#Length(xs) && (j_9 >= 0 && (j_9 < Seq#Length(xs) && i != j_9))) ==> Seq#Index(xs, i) != Seq#Index(xs, j_9)
  ) && Seq#Length(xs) > 3 ==> fun02(Heap, xs) == Heap[Seq#Index(xs, 0), f_7] + Heap[Seq#Index(xs, 1), f_7]
);

// Framing axioms
function  fun02#frame(frame: FrameType, xs: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref) ::
  { state(Heap, Mask), fun02'(Heap, xs) }
  state(Heap, Mask) ==> fun02'(Heap, xs) == fun02#frame(FrameFragment(fun02#condqp2(Heap, xs)), xs)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write)) in function fun02
// ==================================================

function  fun02#condqp2(Heap: HeapType, xs_1_1: (Seq Ref)): int;
function  sk_fun02#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref) ::
  { fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) < Seq#Length(xs)) && NoPerm < FullPerm <==> (0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) < Seq#Length(xs)) && NoPerm < FullPerm) && ((0 <= sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) && sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs)) < Seq#Length(xs)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun02#condqp2(fun02#condqp2(Heap2Heap, xs), fun02#condqp2(Heap1Heap, xs))), f_7]) ==> fun02#condqp2(Heap2Heap, xs) == fun02#condqp2(Heap1Heap, xs)
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType, xs: (Seq Ref)): bool;

// State-independent trigger function
function  fun02#triggerStateless(xs: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure fun02#definedness(xs: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var i_4: int;
  var j_6: int;
  var i_6: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_4 >= 0 && (i_4 < Seq#Length(xs) && (j_6 >= 0 && (j_6 < Seq#Length(xs) && i_4 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@22.12--22.106) [68405]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@22.12--22.106) [68406]"}
            i_4 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@22.12--22.106) [68407]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@22.12--22.106) [68408]"}
            j_6 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_6_1: int, j_3_1: int ::
      { Seq#Index(xs, i_6_1), Seq#Index(xs, j_3_1) }
      i_6_1 >= 0 && (i_6_1 < Seq#Length(xs) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(xs) && i_6_1 != j_3_1))) ==> Seq#Index(xs, i_6_1) != Seq#Index(xs, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_6 && i_6 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@23.12--23.64) [68409]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@23.12--23.64) [68410]"}
            i_6 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (functions.vpr@23.12--23.64) [68411]"}
      (forall i_8_2: int, i_8_3: int ::
      
      (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < Seq#Length(xs))) && (0 <= i_8_3 && i_8_3 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_8_2) != Seq#Index(xs, i_8_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#Index(xs, i_8_2) }
        (0 <= i_8_2 && i_8_2 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange2(Seq#Index(xs, i_8_2)) && invRecv2(Seq#Index(xs, i_8_2)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(xs, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#Index(xs, i_8_2) }
        0 <= i_8_2 && i_8_2 < Seq#Length(xs) ==> Seq#Index(xs, i_8_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv2(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(xs) > 3;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[0].f + xs[1].f
      assert {:msg "  Function might not be well-formed. Index xs[0] into xs might exceed sequence length. (functions.vpr@21.1--25.22) [68412]"}
        0 < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[0].f (functions.vpr@21.1--25.22) [68413]"}
        HasDirectPerm(Mask, Seq#Index(xs, 0), f_7);
      assert {:msg "  Function might not be well-formed. Index xs[1] into xs might exceed sequence length. (functions.vpr@21.1--25.22) [68414]"}
        1 < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[1].f (functions.vpr@21.1--25.22) [68415]"}
        HasDirectPerm(Mask, Seq#Index(xs, 1), f_7);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, 0), f_7] + Heap[Seq#Index(xs, 1), f_7];
}

// ==================================================
// Translation of function fun03
// ==================================================

// Uninterpreted function definitions
function  fun03(Heap: HeapType, xs: (Seq Ref), i: int): int;
function  fun03'(Heap: HeapType, xs: (Seq Ref), i: int): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun03(Heap, xs, i) }
  fun03(Heap, xs, i) == fun03'(Heap, xs, i) && dummyFunction(fun03#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun03'(Heap, xs, i) }
  dummyFunction(fun03#triggerStateless(xs, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), fun03(Heap, xs, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> (Seq#Length(xs) > 6 && (forall k: int, j_9: int ::
    { Seq#Index(xs, k), Seq#Index(xs, j_9) }
    k >= 0 && (k < Seq#Length(xs) && (j_9 >= 0 && (j_9 < Seq#Length(xs) && k != j_9))) ==> Seq#Index(xs, k) != Seq#Index(xs, j_9)
  )) && (0 <= i && i < Seq#Length(xs)) ==> fun03(Heap, xs, i) == Heap[Seq#Index(xs, i), f_7]
);

// Framing axioms
function  fun03#frame(frame: FrameType, xs: (Seq Ref), i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), fun03'(Heap, xs, i) }
  state(Heap, Mask) ==> fun03'(Heap, xs, i) == fun03#frame(CombineFrames(FrameFragment(fun03#condqp3(Heap, xs, i)), FrameFragment(fun03#condqp4(Heap, xs, i))), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 0 <= j && j < 3 ==> acc(xs[j].f, write)) in function fun03
// ==================================================

function  fun03#condqp3(Heap: HeapType, xs_1_1: (Seq Ref), i_1_1_1: int): int;
function  sk_fun03#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun03#condqp3(fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i)) && sk_fun03#condqp3(fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i)) < 3) && NoPerm < FullPerm <==> (0 <= sk_fun03#condqp3(fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i)) && sk_fun03#condqp3(fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i)) < 3) && NoPerm < FullPerm) && ((0 <= sk_fun03#condqp3(fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i)) && sk_fun03#condqp3(fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun03#condqp3(fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun03#condqp3(fun03#condqp3(Heap2Heap, xs, i), fun03#condqp3(Heap1Heap, xs, i))), f_7]) ==> fun03#condqp3(Heap2Heap, xs, i) == fun03#condqp3(Heap1Heap, xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 3 <= j && j < |xs| ==> acc(xs[j].f, write)) in function fun03
// ==================================================

function  fun03#condqp4(Heap: HeapType, xs_1_1: (Seq Ref), i_1_1_1: int): int;
function  sk_fun03#condqp4(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((3 <= sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i)) && sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < FullPerm <==> (3 <= sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i)) && sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < FullPerm) && ((3 <= sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i)) && sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun03#condqp4(fun03#condqp4(Heap2Heap, xs, i), fun03#condqp4(Heap1Heap, xs, i))), f_7]) ==> fun03#condqp4(Heap2Heap, xs, i) == fun03#condqp4(Heap1Heap, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  fun03#trigger(frame: FrameType, xs: (Seq Ref), i: int): bool;

// State-independent trigger function
function  fun03#triggerStateless(xs: (Seq Ref), i: int): int;

// Check contract well-formedness and postcondition
procedure fun03#definedness(xs: (Seq Ref), i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var k_10: int;
  var j_7: int;
  var j_3: int;
  var QPMask: MaskType;
  var j_10: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume Seq#Length(xs) > 6;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
      if (*) {
        if (k_10 >= 0 && (k_10 < Seq#Length(xs) && (j_7 >= 0 && (j_7 < Seq#Length(xs) && k_10 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (functions.vpr@46.12--46.106) [68416]"}
            k_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (functions.vpr@46.12--46.106) [68417]"}
            k_10 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@46.12--46.106) [68418]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@46.12--46.106) [68419]"}
            j_7 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_3: int, j_9_1: int ::
      { Seq#Index(xs, k_3), Seq#Index(xs, j_9_1) }
      k_3 >= 0 && (k_3 < Seq#Length(xs) && (j_9_1 >= 0 && (j_9_1 < Seq#Length(xs) && k_3 != j_9_1))) ==> Seq#Index(xs, k_3) != Seq#Index(xs, j_9_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < 3 ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_3 && j_3 < 3) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@47.12--47.61) [68420]"}
            j_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@47.12--47.61) [68421]"}
            j_3 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (functions.vpr@47.12--47.61) [68422]"}
      (forall j_11_2: int, j_11_3: int ::
      
      (((j_11_2 != j_11_3 && (0 <= j_11_2 && j_11_2 < 3)) && (0 <= j_11_3 && j_11_3 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_11_2) != Seq#Index(xs, j_11_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_11_2: int ::
        { Seq#Index(xs, j_11_2) } { Seq#Index(xs, j_11_2) }
        (0 <= j_11_2 && j_11_2 < 3) && NoPerm < FullPerm ==> qpRange3(Seq#Index(xs, j_11_2)) && invRecv3(Seq#Index(xs, j_11_2)) == j_11_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < 3) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(xs, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_11_2: int ::
        { Seq#Index(xs, j_11_2) } { Seq#Index(xs, j_11_2) }
        0 <= j_11_2 && j_11_2 < 3 ==> Seq#Index(xs, j_11_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < 3) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv3(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < 3) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 3 <= j && j < |xs| ==> acc(xs[j].f, write))
      if (*) {
        if (3 <= j_10 && j_10 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@48.12--48.64) [68423]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@48.12--48.64) [68424]"}
            j_10 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (functions.vpr@48.12--48.64) [68425]"}
      (forall j_13_2: int, j_13_3: int ::
      
      (((j_13_2 != j_13_3 && (3 <= j_13_2 && j_13_2 < Seq#Length(xs))) && (3 <= j_13_3 && j_13_3 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_13_2) != Seq#Index(xs, j_13_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_13_2: int ::
        { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
        (3 <= j_13_2 && j_13_2 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange4(Seq#Index(xs, j_13_2)) && invRecv4(Seq#Index(xs, j_13_2)) == j_13_2
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((3 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(xs, invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_13_2: int ::
        { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
        3 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> Seq#Index(xs, j_13_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv4(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    assume i < Seq#Length(xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[i].f
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@44.1--50.12) [68426]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@44.1--50.12) [68427]"}
        i < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[i].f (functions.vpr@44.1--50.12) [68428]"}
        HasDirectPerm(Mask, Seq#Index(xs, i), f_7);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, i), f_7];
}

// ==================================================
// Translation of function fun06
// ==================================================

// Uninterpreted function definitions
function  fun06(Heap: HeapType, xs: (Seq Ref), n: int, i: int): int;
function  fun06'(Heap: HeapType, xs: (Seq Ref), n: int, i: int): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), n: int, i: int ::
  { fun06(Heap, xs, n, i) }
  fun06(Heap, xs, n, i) == fun06'(Heap, xs, n, i) && dummyFunction(fun06#triggerStateless(xs, n, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), n: int, i: int ::
  { fun06'(Heap, xs, n, i) }
  dummyFunction(fun06#triggerStateless(xs, n, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), n: int, i: int ::
  { state(Heap, Mask), fun06(Heap, xs, n, i) } { state(Heap, Mask), fun06#triggerStateless(xs, n, i), P02#trigger(Heap, P02(xs, n)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> 0 < i && i < n ==> fun06(Heap, xs, n, i) == Heap[Seq#Index(xs, i), f_7]
);

// Framing axioms
function  fun06#frame(frame: FrameType, xs: (Seq Ref), n: int, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), n: int, i: int ::
  { state(Heap, Mask), fun06'(Heap, xs, n, i) }
  state(Heap, Mask) ==> fun06'(Heap, xs, n, i) == fun06#frame(Heap[null, P02(xs, n)], xs, n, i)
);

// Trigger function (controlling recursive postconditions)
function  fun06#trigger(frame: FrameType, xs: (Seq Ref), n: int, i: int): bool;

// State-independent trigger function
function  fun06#triggerStateless(xs: (Seq Ref), n: int, i: int): int;

// Check contract well-formedness and postcondition
procedure fun06#definedness(xs: (Seq Ref), n: int, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 < i;
    assume i < n;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P02(xs, n), write) in xs[i].f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P02#trigger(UnfoldingHeap, P02(xs, n));
      assume UnfoldingHeap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(UnfoldingHeap, xs, n)), FrameFragment(P02#condqp6(UnfoldingHeap, xs, n)));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P02(xs, n) (functions.vpr@98.1--103.2) [68429]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P02(xs, n)];
      assume Seq#Length(xs) == n;
      assume 3 <= n;
      assume (forall k: int, j_9: int ::
        { Seq#Index(xs, k), Seq#Index(xs, j_9) }
        k >= 0 && (k < Seq#Length(xs) && (j_9 >= 0 && (j_9 < Seq#Length(xs) && k != j_9))) ==> Seq#Index(xs, k) != Seq#Index(xs, j_9)
      );
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource xs[j].f might not be injective. (functions.vpr@98.1--103.2) [68430]"}
        (forall j_1: int, j_1_1: int ::
        
        (((j_1 != j_1_1 && (0 <= j_1 && j_1 < 3)) && (0 <= j_1_1 && j_1_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
      );
      
      // -- Define Inverse Function
        assume (forall j_1: int ::
          { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
          (0 <= j_1 && j_1 < 3) && NoPerm < FullPerm ==> qpRange5(Seq#Index(xs, j_1)) && invRecv5(Seq#Index(xs, j_1)) == j_1
        );
        assume (forall o_4: Ref ::
          { invRecv5(o_4) }
          ((0 <= invRecv5(o_4) && invRecv5(o_4) < 3) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(xs, invRecv5(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_1: int ::
          { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
          0 <= j_1 && j_1 < 3 ==> Seq#Index(xs, j_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (((0 <= invRecv5(o_4) && invRecv5(o_4) < 3) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv5(o_4)) == o_4) && QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < 3) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource xs[j].f might not be injective. (functions.vpr@98.1--103.2) [68431]"}
        (forall j_2_1: int, j_2_2: int ::
        
        (((j_2_1 != j_2_2 && (3 <= j_2_1 && j_2_1 < n)) && (3 <= j_2_2 && j_2_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_2_1) != Seq#Index(xs, j_2_2)
      );
      
      // -- Define Inverse Function
        assume (forall j_2_1: int ::
          { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
          (3 <= j_2_1 && j_2_1 < n) && NoPerm < FullPerm ==> qpRange6(Seq#Index(xs, j_2_1)) && invRecv6(Seq#Index(xs, j_2_1)) == j_2_1
        );
        assume (forall o_4: Ref ::
          { invRecv6(o_4) }
          ((3 <= invRecv6(o_4) && invRecv6(o_4) < n) && NoPerm < FullPerm) && qpRange6(o_4) ==> Seq#Index(xs, invRecv6(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_2_1: int ::
          { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
          3 <= j_2_1 && j_2_1 < n ==> Seq#Index(xs, j_2_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (((3 <= invRecv6(o_4) && invRecv6(o_4) < n) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv6(o_4)) == o_4) && QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv6(o_4) && invRecv6(o_4) < n) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@98.1--103.2) [68432]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@98.1--103.2) [68433]"}
        i < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[i].f (functions.vpr@98.1--103.2) [68434]"}
        HasDirectPerm(UnfoldingMask, Seq#Index(xs, i), f_7);
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate P02
        havoc newPMask;
        assume (forall <A, B> o_18: Ref, f_22: (Field A B) ::
          { newPMask[o_18, f_22] }
          Heap[null, P02#sm(xs, n)][o_18, f_22] ==> newPMask[o_18, f_22]
        );
        assume (forall j_3_1: int ::
          
          0 <= j_3_1 && j_3_1 < 3 ==> newPMask[Seq#Index(xs, j_3_1), f_7]
        );
        Heap := Heap[null, P02#sm(xs, n):=newPMask];
        // register all known folded permissions guarded by predicate P02
        havoc newPMask;
        assume (forall <A, B> o_19: Ref, f_23: (Field A B) ::
          { newPMask[o_19, f_23] }
          Heap[null, P02#sm(xs, n)][o_19, f_23] ==> newPMask[o_19, f_23]
        );
        assume (forall j_4_1: int ::
          
          3 <= j_4_1 && j_4_1 < n ==> newPMask[Seq#Index(xs, j_4_1), f_7]
        );
        Heap := Heap[null, P02#sm(xs, n):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, i), f_7];
}

// ==================================================
// Translation of function fun04
// ==================================================

// Uninterpreted function definitions
function  fun04(Heap: HeapType, x: Ref, n: int, i: int): int;
function  fun04'(Heap: HeapType, x: Ref, n: int, i: int): int;
axiom (forall Heap: HeapType, x: Ref, n: int, i: int ::
  { fun04(Heap, x, n, i) }
  fun04(Heap, x, n, i) == fun04'(Heap, x, n, i) && dummyFunction(fun04#triggerStateless(x, n, i))
);
axiom (forall Heap: HeapType, x: Ref, n: int, i: int ::
  { fun04'(Heap, x, n, i) }
  dummyFunction(fun04#triggerStateless(x, n, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, n: int, i: int ::
  { state(Heap, Mask), fun04(Heap, x, n, i) } { state(Heap, Mask), fun04#triggerStateless(x, n, i), P01#trigger(Heap, P01(x, n)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> 0 < i && i < n ==> fun04(Heap, x, n, i) == Heap[Seq#Index(Heap[x, ss_1], i), f_7]
);

// Framing axioms
function  fun04#frame(frame: FrameType, x: Ref, n: int, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, n: int, i: int ::
  { state(Heap, Mask), fun04'(Heap, x, n, i) }
  state(Heap, Mask) ==> fun04'(Heap, x, n, i) == fun04#frame(Heap[null, P01(x, n)], x, n, i)
);

// Trigger function (controlling recursive postconditions)
function  fun04#trigger(frame: FrameType, x: Ref, n: int, i: int): bool;

// State-independent trigger function
function  fun04#triggerStateless(x: Ref, n: int, i: int): int;

// Check contract well-formedness and postcondition
procedure fun04#definedness(x: Ref, n: int, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P01(x, n):=Mask[null, P01(x, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 < i;
    assume i < n;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P01(x, n), write) in x.ss[i].f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P01#trigger(UnfoldingHeap, P01(x, n));
      assume UnfoldingHeap[null, P01(x, n)] == CombineFrames(FrameFragment(UnfoldingHeap[x, ss_1]), CombineFrames(FrameFragment(P01#condqp7(UnfoldingHeap, x, n)), FrameFragment(P01#condqp8(UnfoldingHeap, x, n))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P01(x, n) (functions.vpr@138.1--144.2) [68435]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P01(x, n)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, ss_1:=UnfoldingMask[x, ss_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume Seq#Length(UnfoldingHeap[x, ss_1]) == n;
      assume 3 <= n;
      assume (forall k: int, j_9: int ::
        { Seq#Index(UnfoldingHeap[x, ss_1], k), Seq#Index(UnfoldingHeap[x, ss_1], j_9) }
        k >= 0 && (k < Seq#Length(UnfoldingHeap[x, ss_1]) && (j_9 >= 0 && (j_9 < Seq#Length(UnfoldingHeap[x, ss_1]) && k != j_9))) ==> Seq#Index(UnfoldingHeap[x, ss_1], k) != Seq#Index(UnfoldingHeap[x, ss_1], j_9)
      );
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource x.ss[j].f might not be injective. (functions.vpr@138.1--144.2) [68436]"}
        (forall j_1: int, j_1_1: int ::
        
        (((j_1 != j_1_1 && (0 <= j_1 && j_1 < 3)) && (0 <= j_1_1 && j_1_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(UnfoldingHeap[x, ss_1], j_1) != Seq#Index(UnfoldingHeap[x, ss_1], j_1_1)
      );
      
      // -- Define Inverse Function
        assume (forall j_1: int ::
          { Seq#Index(UnfoldingHeap[x, ss_1], j_1) } { Seq#Index(UnfoldingHeap[x, ss_1], j_1) }
          (0 <= j_1 && j_1 < 3) && NoPerm < FullPerm ==> qpRange7(Seq#Index(UnfoldingHeap[x, ss_1], j_1)) && invRecv7(Seq#Index(UnfoldingHeap[x, ss_1], j_1)) == j_1
        );
        assume (forall o_4: Ref ::
          { invRecv7(o_4) }
          ((0 <= invRecv7(o_4) && invRecv7(o_4) < 3) && NoPerm < FullPerm) && qpRange7(o_4) ==> Seq#Index(UnfoldingHeap[x, ss_1], invRecv7(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_1: int ::
          { Seq#Index(UnfoldingHeap[x, ss_1], j_1) } { Seq#Index(UnfoldingHeap[x, ss_1], j_1) }
          0 <= j_1 && j_1 < 3 ==> Seq#Index(UnfoldingHeap[x, ss_1], j_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (((0 <= invRecv7(o_4) && invRecv7(o_4) < 3) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(UnfoldingHeap[x, ss_1], invRecv7(o_4)) == o_4) && QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv7(o_4) && invRecv7(o_4) < 3) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource x.ss[j].f might not be injective. (functions.vpr@138.1--144.2) [68437]"}
        (forall j_2_1: int, j_2_2: int ::
        
        (((j_2_1 != j_2_2 && (3 <= j_2_1 && j_2_1 < n)) && (3 <= j_2_2 && j_2_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(UnfoldingHeap[x, ss_1], j_2_1) != Seq#Index(UnfoldingHeap[x, ss_1], j_2_2)
      );
      
      // -- Define Inverse Function
        assume (forall j_2_1: int ::
          { Seq#Index(UnfoldingHeap[x, ss_1], j_2_1) } { Seq#Index(UnfoldingHeap[x, ss_1], j_2_1) }
          (3 <= j_2_1 && j_2_1 < n) && NoPerm < FullPerm ==> qpRange8(Seq#Index(UnfoldingHeap[x, ss_1], j_2_1)) && invRecv8(Seq#Index(UnfoldingHeap[x, ss_1], j_2_1)) == j_2_1
        );
        assume (forall o_4: Ref ::
          { invRecv8(o_4) }
          ((3 <= invRecv8(o_4) && invRecv8(o_4) < n) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(UnfoldingHeap[x, ss_1], invRecv8(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall j_2_1: int ::
          { Seq#Index(UnfoldingHeap[x, ss_1], j_2_1) } { Seq#Index(UnfoldingHeap[x, ss_1], j_2_1) }
          3 <= j_2_1 && j_2_1 < n ==> Seq#Index(UnfoldingHeap[x, ss_1], j_2_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (((3 <= invRecv8(o_4) && invRecv8(o_4) < n) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(UnfoldingHeap[x, ss_1], invRecv8(o_4)) == o_4) && QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv8(o_4) && invRecv8(o_4) < n) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.ss (functions.vpr@138.1--144.2) [68438]"}
        HasDirectPerm(UnfoldingMask, x, ss_1);
      assert {:msg "  Function might not be well-formed. Index x.ss[i] into x.ss might be negative. (functions.vpr@138.1--144.2) [68439]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index x.ss[i] into x.ss might exceed sequence length. (functions.vpr@138.1--144.2) [68440]"}
        i < Seq#Length(UnfoldingHeap[x, ss_1]);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.ss[i].f (functions.vpr@138.1--144.2) [68441]"}
        HasDirectPerm(UnfoldingMask, Seq#Index(UnfoldingHeap[x, ss_1], i), f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P01#sm(x, n):=Heap[null, P01#sm(x, n)][x, ss_1:=true]];
        // register all known folded permissions guarded by predicate P01
        havoc newPMask;
        assume (forall <A, B> o_5: Ref, f: (Field A B) ::
          { newPMask[o_5, f] }
          Heap[null, P01#sm(x, n)][o_5, f] ==> newPMask[o_5, f]
        );
        assume (forall j_3_1: int ::
          
          0 <= j_3_1 && j_3_1 < 3 ==> newPMask[Seq#Index(Heap[x, ss_1], j_3_1), f_7]
        );
        Heap := Heap[null, P01#sm(x, n):=newPMask];
        // register all known folded permissions guarded by predicate P01
        havoc newPMask;
        assume (forall <A, B> o_20: Ref, f_10: (Field A B) ::
          { newPMask[o_20, f_10] }
          Heap[null, P01#sm(x, n)][o_20, f_10] ==> newPMask[o_20, f_10]
        );
        assume (forall j_4_1: int ::
          
          3 <= j_4_1 && j_4_1 < n ==> newPMask[Seq#Index(Heap[x, ss_1], j_4_1), f_7]
        );
        Heap := Heap[null, P01#sm(x, n):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[Seq#Index(Heap[x, ss_1], i), f_7];
}

// ==================================================
// Translation of function fun07
// ==================================================

// Uninterpreted function definitions
function  fun07(Heap: HeapType, xs: (Seq Ref), j_9: int): int;
function  fun07'(Heap: HeapType, xs: (Seq Ref), j_9: int): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun07(Heap, xs, j_9) }
  fun07(Heap, xs, j_9) == fun07'(Heap, xs, j_9) && dummyFunction(fun07#triggerStateless(xs, j_9))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun07'(Heap, xs, j_9) }
  dummyFunction(fun07#triggerStateless(xs, j_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), j_9: int ::
  { state(Heap, Mask), fun07(Heap, xs, j_9) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> (forall k: int, i: int ::
    { Seq#Index(xs, k), Seq#Index(xs, i) }
    k >= 0 && (k < Seq#Length(xs) && (i >= 0 && (i < Seq#Length(xs) && k != i))) ==> Seq#Index(xs, k) != Seq#Index(xs, i)
  ) ==> fun07(Heap, xs, j_9) == (if j_9 < 0 then fun07'(Heap, xs, j_9 + 1) else (if Seq#Length(xs) <= j_9 then fun07'(Heap, xs, j_9 - 1) else Heap[Seq#Index(xs, j_9), f_7] * Heap[Seq#Index(xs, j_9), f_7]))
);

// Framing axioms
function  fun07#frame(frame: FrameType, xs: (Seq Ref), j_9: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), j_9: int ::
  { state(Heap, Mask), fun07'(Heap, xs, j_9) }
  state(Heap, Mask) ==> fun07'(Heap, xs, j_9) == fun07#frame(FrameFragment(fun07#condqp9(Heap, xs, j_9)), xs, j_9)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write)) in function fun07
// ==================================================

function  fun07#condqp9(Heap: HeapType, xs_1_1: (Seq Ref), j_1_1_1: int): int;
function  sk_fun07#condqp9(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun07#condqp9(fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9)) && sk_fun07#condqp9(fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm <==> (0 <= sk_fun07#condqp9(fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9)) && sk_fun07#condqp9(fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm) && ((0 <= sk_fun07#condqp9(fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9)) && sk_fun07#condqp9(fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun07#condqp9(fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun07#condqp9(fun07#condqp9(Heap2Heap, xs, j_9), fun07#condqp9(Heap1Heap, xs, j_9))), f_7]) ==> fun07#condqp9(Heap2Heap, xs, j_9) == fun07#condqp9(Heap1Heap, xs, j_9)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), j_9: int ::
  { state(Heap, Mask), fun07'(Heap, xs, j_9) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || fun07#trigger(FrameFragment(fun07#condqp9(Heap, xs, j_9)), xs, j_9)) ==> (forall k_1_1: int, i_3: int ::
    { Seq#Index(xs, k_1_1), Seq#Index(xs, i_3) }
    k_1_1 >= 0 && (k_1_1 < Seq#Length(xs) && (i_3 >= 0 && (i_3 < Seq#Length(xs) && k_1_1 != i_3))) ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, i_3)
  ) ==> fun07'(Heap, xs, j_9) >= 0
);

// Trigger function (controlling recursive postconditions)
function  fun07#trigger(frame: FrameType, xs: (Seq Ref), j_9: int): bool;

// State-independent trigger function
function  fun07#triggerStateless(xs: (Seq Ref), j_9: int): int;

// Check contract well-formedness and postcondition
procedure fun07#definedness(xs: (Seq Ref), j_9: int) returns (Result: int)
  modifies Heap, Mask;
{
  var k_32: int;
  var i_24: int;
  var i_29: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_4_1: int;
  var i_9_1: int;
  var ExhaleHeap: HeapType;
  var k_6: int;
  var i_12_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall k: Int, i: Int :: { xs[k], xs[i] } k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i])
      if (*) {
        if (k_32 >= 0 && (k_32 < Seq#Length(xs) && (i_24 >= 0 && (i_24 < Seq#Length(xs) && k_32 != i_24)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (functions.vpr@168.12--168.106) [68442]"}
            k_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (functions.vpr@168.12--168.106) [68443]"}
            k_32 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@168.12--168.106) [68444]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@168.12--168.106) [68445]"}
            i_24 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_3: int, i_6_1: int ::
      { Seq#Index(xs, k_3), Seq#Index(xs, i_6_1) }
      k_3 >= 0 && (k_3 < Seq#Length(xs) && (i_6_1 >= 0 && (i_6_1 < Seq#Length(xs) && k_3 != i_6_1))) ==> Seq#Index(xs, k_3) != Seq#Index(xs, i_6_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_29 && i_29 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@169.12--169.64) [68446]"}
            i_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@169.12--169.64) [68447]"}
            i_29 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (functions.vpr@169.12--169.64) [68448]"}
      (forall i_8_2: int, i_8_3: int ::
      
      (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < Seq#Length(xs))) && (0 <= i_8_3 && i_8_3 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_8_2) != Seq#Index(xs, i_8_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#Index(xs, i_8_2) }
        (0 <= i_8_2 && i_8_2 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange9(Seq#Index(xs, i_8_2)) && invRecv9(Seq#Index(xs, i_8_2)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(xs, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_8_2: int ::
        { Seq#Index(xs, i_8_2) } { Seq#Index(xs, i_8_2) }
        0 <= i_8_2 && i_8_2 < Seq#Length(xs) ==> Seq#Index(xs, i_8_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv9(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (j < 0 ? fun07(xs, j + 1) : (|xs| <= j ? fun07(xs, j - 1) : xs[j].f * xs[j].f))
      if (j_9 < 0) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          if (*) {
            if (k_4_1 >= 0 && (k_4_1 < Seq#Length(xs) && (i_9_1 >= 0 && (i_9_1 < Seq#Length(xs) && k_4_1 != i_9_1)))) {
              assert {:msg "  Precondition of function fun07 might not hold. Assertion xs[k] != xs[i] might not hold. (functions.vpr@172.17--172.33) [68449]"}
                Seq#Index(xs, k_4_1) != Seq#Index(xs, i_9_1);
            }
            assume false;
          }
          assume (forall k_5_1_1: int, i_10_1_1: int ::
            { Seq#Index(xs, k_5_1_1), Seq#Index(xs, i_10_1_1) }
            k_5_1_1 >= 0 && (k_5_1_1 < Seq#Length(xs) && (i_10_1_1 >= 0 && (i_10_1_1 < Seq#Length(xs) && k_5_1_1 != i_10_1_1))) ==> Seq#Index(xs, k_5_1_1) != Seq#Index(xs, i_10_1_1)
          );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver xs[i] is injective
            assert {:msg "  Precondition of function fun07 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@172.17--172.33) [68450]"}
              (forall i_11_1: int, i_11_2: int ::
              { neverTriggered10(i_11_1), neverTriggered10(i_11_2) }
              (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < Seq#Length(xs))) && (0 <= i_11_2 && i_11_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_11_1) != Seq#Index(xs, i_11_2)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function fun07 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@172.17--172.33) [68451]"}
              (forall i_11_1: int ::
              { Seq#Index(xs, i_11_1) } { Seq#Index(xs, i_11_1) }
              0 <= i_11_1 && i_11_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, i_11_1), f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver xs[i]
            assume (forall i_11_1: int ::
              { Seq#Index(xs, i_11_1) } { Seq#Index(xs, i_11_1) }
              (0 <= i_11_1 && i_11_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange10(Seq#Index(xs, i_11_1)) && invRecv10(Seq#Index(xs, i_11_1)) == i_11_1
            );
            assume (forall o_4: Ref ::
              { invRecv10(o_4) }
              (0 <= invRecv10(o_4) && invRecv10(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(xs, invRecv10(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun07#trigger(FrameFragment(fun07#condqp9(Heap, xs, j_9 + 1)), xs, j_9 + 1);
        }
      } else {
        if (Seq#Length(xs) <= j_9) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (*) {
              if (k_6 >= 0 && (k_6 < Seq#Length(xs) && (i_12_1 >= 0 && (i_12_1 < Seq#Length(xs) && k_6 != i_12_1)))) {
                assert {:msg "  Precondition of function fun07 might not hold. Assertion xs[k] != xs[i] might not hold. (functions.vpr@173.17--173.33) [68452]"}
                  Seq#Index(xs, k_6) != Seq#Index(xs, i_12_1);
              }
              assume false;
            }
            assume (forall k_7_1_1: int, i_13_1_1: int ::
              { Seq#Index(xs, k_7_1_1), Seq#Index(xs, i_13_1_1) }
              k_7_1_1 >= 0 && (k_7_1_1 < Seq#Length(xs) && (i_13_1_1 >= 0 && (i_13_1_1 < Seq#Length(xs) && k_7_1_1 != i_13_1_1))) ==> Seq#Index(xs, k_7_1_1) != Seq#Index(xs, i_13_1_1)
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver xs[i] is injective
              assert {:msg "  Precondition of function fun07 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@173.17--173.33) [68453]"}
                (forall i_14_1: int, i_14_2: int ::
                { neverTriggered11(i_14_1), neverTriggered11(i_14_2) }
                (((i_14_1 != i_14_2 && (0 <= i_14_1 && i_14_1 < Seq#Length(xs))) && (0 <= i_14_2 && i_14_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_14_1) != Seq#Index(xs, i_14_2)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function fun07 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@173.17--173.33) [68454]"}
                (forall i_14_1: int ::
                { Seq#Index(xs, i_14_1) } { Seq#Index(xs, i_14_1) }
                0 <= i_14_1 && i_14_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, i_14_1), f_7] > NoPerm
              );
            
            // -- assumptions for inverse of receiver xs[i]
              assume (forall i_14_1: int ::
                { Seq#Index(xs, i_14_1) } { Seq#Index(xs, i_14_1) }
                (0 <= i_14_1 && i_14_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange11(Seq#Index(xs, i_14_1)) && invRecv11(Seq#Index(xs, i_14_1)) == i_14_1
              );
              assume (forall o_4: Ref ::
                { invRecv11(o_4) }
                (0 <= invRecv11(o_4) && invRecv11(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(xs, invRecv11(o_4)) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume fun07#trigger(FrameFragment(fun07#condqp9(Heap, xs, j_9 - 1)), xs, j_9 - 1);
          }
        } else {
          assert {:msg "  Function might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@167.1--175.2) [68455]"}
            j_9 >= 0;
          assert {:msg "  Function might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@167.1--175.2) [68456]"}
            j_9 < Seq#Length(xs);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[j].f (functions.vpr@167.1--175.2) [68457]"}
            HasDirectPerm(Mask, Seq#Index(xs, j_9), f_7);
          assert {:msg "  Function might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@167.1--175.2) [68458]"}
            j_9 >= 0;
          assert {:msg "  Function might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@167.1--175.2) [68459]"}
            j_9 < Seq#Length(xs);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[j].f (functions.vpr@167.1--175.2) [68460]"}
            HasDirectPerm(Mask, Seq#Index(xs, j_9), f_7);
        }
      }
  
  // -- Translate function body
    Result := (if j_9 < 0 then fun07(Heap, xs, j_9 + 1) else (if Seq#Length(xs) <= j_9 then fun07(Heap, xs, j_9 - 1) else Heap[Seq#Index(xs, j_9), f_7] * Heap[Seq#Index(xs, j_9), f_7]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of fun07 might not hold. Assertion result >= 0 might not hold. (functions.vpr@170.11--170.22) [68461]"}
      Result >= 0;
}

// ==================================================
// Translation of function fun08
// ==================================================

// Uninterpreted function definitions
function  fun08(Heap: HeapType, xs: (Seq Ref), i: int): int;
function  fun08'(Heap: HeapType, xs: (Seq Ref), i: int): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun08(Heap, xs, i) }
  fun08(Heap, xs, i) == fun08'(Heap, xs, i) && dummyFunction(fun08#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun08'(Heap, xs, i) }
  dummyFunction(fun08#triggerStateless(xs, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), fun08(Heap, xs, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (forall k: int, j_9: int ::
    { Seq#Index(xs, k), Seq#Index(xs, j_9) }
    k >= 0 && (k < Seq#Length(xs) && (j_9 >= 0 && (j_9 < Seq#Length(xs) && k != j_9))) ==> Seq#Index(xs, k) != Seq#Index(xs, j_9)
  ) && (0 <= i && i < Seq#Length(xs)) ==> fun08(Heap, xs, i) == Heap[Seq#Index(xs, i), f_7] + 1
);

// Framing axioms
function  fun08#frame(frame: FrameType, xs: (Seq Ref), i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), fun08'(Heap, xs, i) }
  state(Heap, Mask) ==> fun08'(Heap, xs, i) == fun08#frame(FrameFragment(fun08#condqp10(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].f, write)) in function fun08
// ==================================================

function  fun08#condqp10(Heap: HeapType, xs_1_1: (Seq Ref), i_1_1_1: int): int;
function  sk_fun08#condqp10(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), i: int ::
  { fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun08#condqp10(fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i)) && sk_fun08#condqp10(fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < FullPerm <==> (0 <= sk_fun08#condqp10(fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i)) && sk_fun08#condqp10(fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < FullPerm) && ((0 <= sk_fun08#condqp10(fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i)) && sk_fun08#condqp10(fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i)) < Seq#Length(xs)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun08#condqp10(fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun08#condqp10(fun08#condqp10(Heap2Heap, xs, i), fun08#condqp10(Heap1Heap, xs, i))), f_7]) ==> fun08#condqp10(Heap2Heap, xs, i) == fun08#condqp10(Heap1Heap, xs, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), fun08'(Heap, xs, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || fun08#trigger(FrameFragment(fun08#condqp10(Heap, xs, i)), xs, i)) ==> (forall k_1_1: int, j_3_1: int ::
    { Seq#Index(xs, k_1_1), Seq#Index(xs, j_3_1) }
    k_1_1 >= 0 && (k_1_1 < Seq#Length(xs) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(xs) && k_1_1 != j_3_1))) ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, j_3_1)
  ) && (0 <= i && i < Seq#Length(xs)) ==> fun08'(Heap, xs, i) > Heap[Seq#Index(xs, i), f_7]
);

// Trigger function (controlling recursive postconditions)
function  fun08#trigger(frame: FrameType, xs: (Seq Ref), i: int): bool;

// State-independent trigger function
function  fun08#triggerStateless(xs: (Seq Ref), i: int): int;

// Check contract well-formedness and postcondition
procedure fun08#definedness(xs: (Seq Ref), i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var k_23: int;
  var j_22: int;
  var j_19: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
      if (*) {
        if (k_23 >= 0 && (k_23 < Seq#Length(xs) && (j_22 >= 0 && (j_22 < Seq#Length(xs) && k_23 != j_22)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might be negative. (functions.vpr@178.12--178.106) [68462]"}
            k_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[k] into xs might exceed sequence length. (functions.vpr@178.12--178.106) [68463]"}
            k_23 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@178.12--178.106) [68464]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@178.12--178.106) [68465]"}
            j_22 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_3: int, j_6_1: int ::
      { Seq#Index(xs, k_3), Seq#Index(xs, j_6_1) }
      k_3 >= 0 && (k_3 < Seq#Length(xs) && (j_6_1 >= 0 && (j_6_1 < Seq#Length(xs) && k_3 != j_6_1))) ==> Seq#Index(xs, k_3) != Seq#Index(xs, j_6_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < |xs| ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_19 && j_19 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@179.12--179.64) [68466]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@179.12--179.64) [68467]"}
            j_19 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[j].f might not be injective. (functions.vpr@179.12--179.64) [68468]"}
      (forall j_8: int, j_8_1: int ::
      
      (((j_8 != j_8_1 && (0 <= j_8 && j_8 < Seq#Length(xs))) && (0 <= j_8_1 && j_8_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_8) != Seq#Index(xs, j_8_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_8: int ::
        { Seq#Index(xs, j_8) } { Seq#Index(xs, j_8) }
        (0 <= j_8 && j_8 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange12(Seq#Index(xs, j_8)) && invRecv12(Seq#Index(xs, j_8)) == j_8
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((0 <= invRecv12(o_4) && invRecv12(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(xs, invRecv12(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_8: int ::
        { Seq#Index(xs, j_8) } { Seq#Index(xs, j_8) }
        0 <= j_8 && j_8 < Seq#Length(xs) ==> Seq#Index(xs, j_8) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv12(o_4) && invRecv12(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv12(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv12(o_4) && invRecv12(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    assume i < Seq#Length(xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[i].f + 1
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@177.1--182.16) [68469]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@177.1--182.16) [68470]"}
        i < Seq#Length(xs);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs[i].f (functions.vpr@177.1--182.16) [68471]"}
        HasDirectPerm(Mask, Seq#Index(xs, i), f_7);
  
  // -- Translate function body
    Result := Heap[Seq#Index(xs, i), f_7] + 1;
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result > xs[i].f
      assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@181.11--181.27) [68472]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@181.11--181.27) [68473]"}
        i < Seq#Length(xs);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access xs[i].f (functions.vpr@181.11--181.27) [68474]"}
        HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(xs, i), f_7);
    assert {:msg "  Postcondition of fun08 might not hold. Assertion result > xs[i].f might not hold. (functions.vpr@181.11--181.27) [68475]"}
      Result > Heap[Seq#Index(xs, i), f_7];
}

// ==================================================
// Translation of predicate P02
// ==================================================

type PredicateType_P02;
function  P02(xs: (Seq Ref), n: int): Field PredicateType_P02 FrameType;
function  P02#sm(xs: (Seq Ref), n: int): Field PredicateType_P02 PMaskType;
axiom (forall xs: (Seq Ref), n: int ::
  { PredicateMaskField(P02(xs, n)) }
  PredicateMaskField(P02(xs, n)) == P02#sm(xs, n)
);
axiom (forall xs: (Seq Ref), n: int ::
  { P02(xs, n) }
  IsPredicateField(P02(xs, n))
);
axiom (forall xs: (Seq Ref), n: int ::
  { P02(xs, n) }
  getPredWandId(P02(xs, n)) == 0
);
function  P02#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P02#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: (Seq Ref), n: int, xs2: (Seq Ref), n2: int ::
  { P02(xs, n), P02(xs2, n2) }
  P02(xs, n) == P02(xs2, n2) ==> xs == xs2 && n == n2
);
axiom (forall xs: (Seq Ref), n: int, xs2: (Seq Ref), n2: int ::
  { P02#sm(xs, n), P02#sm(xs2, n2) }
  P02#sm(xs, n) == P02#sm(xs2, n2) ==> xs == xs2 && n == n2
);

axiom (forall Heap: HeapType, xs: (Seq Ref), n: int ::
  { P02#trigger(Heap, P02(xs, n)) }
  P02#everUsed(P02(xs, n))
);

// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 0 <= j && j < 3 ==> acc(xs[j].f, write)) in predicate P02
// ==================================================

function  P02#condqp5(Heap: HeapType, xs_2_1: (Seq Ref), n_2_1_1: int): int;
function  sk_P02#condqp5(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), n: int ::
  { P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_P02#condqp5(P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n)) && sk_P02#condqp5(P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n)) < 3) && NoPerm < FullPerm <==> (0 <= sk_P02#condqp5(P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n)) && sk_P02#condqp5(P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n)) < 3) && NoPerm < FullPerm) && ((0 <= sk_P02#condqp5(P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n)) && sk_P02#condqp5(P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_P02#condqp5(P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n))), f_7] == Heap1Heap[Seq#Index(xs, sk_P02#condqp5(P02#condqp5(Heap2Heap, xs, n), P02#condqp5(Heap1Heap, xs, n))), f_7]) ==> P02#condqp5(Heap2Heap, xs, n) == P02#condqp5(Heap1Heap, xs, n)
);

// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { xs[j] } 3 <= j && j < n ==> acc(xs[j].f, write)) in predicate P02
// ==================================================

function  P02#condqp6(Heap: HeapType, xs_2_1: (Seq Ref), n_2_1_1: int): int;
function  sk_P02#condqp6(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), n: int ::
  { P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((3 <= sk_P02#condqp6(P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n)) && sk_P02#condqp6(P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n)) < n) && NoPerm < FullPerm <==> (3 <= sk_P02#condqp6(P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n)) && sk_P02#condqp6(P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n)) < n) && NoPerm < FullPerm) && ((3 <= sk_P02#condqp6(P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n)) && sk_P02#condqp6(P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n)) < n) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_P02#condqp6(P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n))), f_7] == Heap1Heap[Seq#Index(xs, sk_P02#condqp6(P02#condqp6(Heap2Heap, xs, n), P02#condqp6(Heap1Heap, xs, n))), f_7]) ==> P02#condqp6(Heap2Heap, xs, n) == P02#condqp6(Heap1Heap, xs, n)
);

procedure P02#definedness(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var k_25: int;
  var j_23: int;
  var j_17: int;
  var QPMask: MaskType;
  var j_30: int;
  
  // -- Check definedness of predicate body of P02
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume Seq#Length(xs) == n;
    assume 3 <= n;
    
    // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
      if (*) {
        if (k_25 >= 0 && (k_25 < Seq#Length(xs) && (j_23 >= 0 && (j_23 < Seq#Length(xs) && k_25 != j_23)))) {
          assert {:msg "  Predicate might not be well-formed. Index xs[k] into xs might be negative. (functions.vpr@62.1--68.2) [68476]"}
            k_25 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index xs[k] into xs might exceed sequence length. (functions.vpr@62.1--68.2) [68477]"}
            k_25 < Seq#Length(xs);
          assert {:msg "  Predicate might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@62.1--68.2) [68478]"}
            j_23 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@62.1--68.2) [68479]"}
            j_23 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_3_1: int ::
      { Seq#Index(xs, k_1_1), Seq#Index(xs, j_3_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(xs) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(xs) && k_1_1 != j_3_1))) ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, j_3_1)
    );
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < 3 ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_17 && j_17 < 3) {
          assert {:msg "  Predicate might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@62.1--68.2) [68480]"}
            j_17 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@62.1--68.2) [68481]"}
            j_17 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource xs[j].f might not be injective. (functions.vpr@62.1--68.2) [68482]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < 3)) && (0 <= j_5_2 && j_5_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_5_1) != Seq#Index(xs, j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        (0 <= j_5_1 && j_5_1 < 3) && NoPerm < FullPerm ==> qpRange13(Seq#Index(xs, j_5_1)) && invRecv13(Seq#Index(xs, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < 3) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(xs, invRecv13(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        0 <= j_5_1 && j_5_1 < 3 ==> Seq#Index(xs, j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv13(o_4) && invRecv13(o_4) < 3) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv13(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < 3) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 3 <= j && j < n ==> acc(xs[j].f, write))
      if (*) {
        if (3 <= j_30 && j_30 < n) {
          assert {:msg "  Predicate might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@62.1--68.2) [68483]"}
            j_30 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@62.1--68.2) [68484]"}
            j_30 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource xs[j].f might not be injective. (functions.vpr@62.1--68.2) [68485]"}
      (forall j_7_1: int, j_7_2: int ::
      
      (((j_7_1 != j_7_2 && (3 <= j_7_1 && j_7_1 < n)) && (3 <= j_7_2 && j_7_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_7_1) != Seq#Index(xs, j_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_7_1: int ::
        { Seq#Index(xs, j_7_1) } { Seq#Index(xs, j_7_1) }
        (3 <= j_7_1 && j_7_1 < n) && NoPerm < FullPerm ==> qpRange14(Seq#Index(xs, j_7_1)) && invRecv14(Seq#Index(xs, j_7_1)) == j_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((3 <= invRecv14(o_4) && invRecv14(o_4) < n) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(xs, invRecv14(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_7_1: int ::
        { Seq#Index(xs, j_7_1) } { Seq#Index(xs, j_7_1) }
        3 <= j_7_1 && j_7_1 < n ==> Seq#Index(xs, j_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv14(o_4) && invRecv14(o_4) < n) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv14(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv14(o_4) && invRecv14(o_4) < n) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
// Translation of predicate P01
// ==================================================

type PredicateType_P01;
function  P01(x: Ref, n: int): Field PredicateType_P01 FrameType;
function  P01#sm(x: Ref, n: int): Field PredicateType_P01 PMaskType;
axiom (forall x: Ref, n: int ::
  { PredicateMaskField(P01(x, n)) }
  PredicateMaskField(P01(x, n)) == P01#sm(x, n)
);
axiom (forall x: Ref, n: int ::
  { P01(x, n) }
  IsPredicateField(P01(x, n))
);
axiom (forall x: Ref, n: int ::
  { P01(x, n) }
  getPredWandId(P01(x, n)) == 1
);
function  P01#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P01#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, n: int, x2: Ref, n2: int ::
  { P01(x, n), P01(x2, n2) }
  P01(x, n) == P01(x2, n2) ==> x == x2 && n == n2
);
axiom (forall x: Ref, n: int, x2: Ref, n2: int ::
  { P01#sm(x, n), P01#sm(x2, n2) }
  P01#sm(x, n) == P01#sm(x2, n2) ==> x == x2 && n == n2
);

axiom (forall Heap: HeapType, x: Ref, n: int ::
  { P01#trigger(Heap, P01(x, n)) }
  P01#everUsed(P01(x, n))
);

// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { x.ss[j] } 0 <= j && j < 3 ==> acc(x.ss[j].f, write)) in predicate P01
// ==================================================

function  P01#condqp7(Heap: HeapType, x_2_1: Ref, n_2_1_1: int): int;
function  sk_P01#condqp7(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, n: int ::
  { P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_P01#condqp7(P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n)) && sk_P01#condqp7(P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n)) < 3) && NoPerm < FullPerm <==> (0 <= sk_P01#condqp7(P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n)) && sk_P01#condqp7(P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n)) < 3) && NoPerm < FullPerm) && ((0 <= sk_P01#condqp7(P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n)) && sk_P01#condqp7(P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n)) < 3) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(Heap2Heap[x, ss_1], sk_P01#condqp7(P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n))), f_7] == Heap1Heap[Seq#Index(Heap1Heap[x, ss_1], sk_P01#condqp7(P01#condqp7(Heap2Heap, x, n), P01#condqp7(Heap1Heap, x, n))), f_7]) ==> P01#condqp7(Heap2Heap, x, n) == P01#condqp7(Heap1Heap, x, n)
);

// ==================================================
// Function used for framing of quantified permission (forall j: Int :: { x.ss[j] } 3 <= j && j < n ==> acc(x.ss[j].f, write)) in predicate P01
// ==================================================

function  P01#condqp8(Heap: HeapType, x_2_1: Ref, n_2_1_1: int): int;
function  sk_P01#condqp8(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, n: int ::
  { P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((3 <= sk_P01#condqp8(P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n)) && sk_P01#condqp8(P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n)) < n) && NoPerm < FullPerm <==> (3 <= sk_P01#condqp8(P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n)) && sk_P01#condqp8(P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n)) < n) && NoPerm < FullPerm) && ((3 <= sk_P01#condqp8(P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n)) && sk_P01#condqp8(P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n)) < n) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(Heap2Heap[x, ss_1], sk_P01#condqp8(P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n))), f_7] == Heap1Heap[Seq#Index(Heap1Heap[x, ss_1], sk_P01#condqp8(P01#condqp8(Heap2Heap, x, n), P01#condqp8(Heap1Heap, x, n))), f_7]) ==> P01#condqp8(Heap2Heap, x, n) == P01#condqp8(Heap1Heap, x, n)
);

procedure P01#definedness(x: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var k_28: int;
  var j_20: int;
  var j_27: int;
  var QPMask: MaskType;
  var j_24: int;
  
  // -- Check definedness of predicate body of P01
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, ss_1:=Mask[x, ss_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of |x.ss| == n
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ss (functions.vpr@128.1--136.2) [68486]"}
        HasDirectPerm(Mask, x, ss_1);
    assume Seq#Length(Heap[x, ss_1]) == n;
    assume 3 <= n;
    
    // -- Check definedness of (forall k: Int, j: Int :: { x.ss[k], x.ss[j] } k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j])
      if (*) {
        if (k_28 >= 0) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ss (functions.vpr@128.1--136.2) [68487]"}
            HasDirectPerm(Mask, x, ss_1);
          if (k_28 < Seq#Length(Heap[x, ss_1])) {
            if (j_20 >= 0) {
              assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ss (functions.vpr@128.1--136.2) [68488]"}
                HasDirectPerm(Mask, x, ss_1);
            }
          }
        }
        if (k_28 >= 0 && (k_28 < Seq#Length(Heap[x, ss_1]) && (j_20 >= 0 && (j_20 < Seq#Length(Heap[x, ss_1]) && k_28 != j_20)))) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ss (functions.vpr@128.1--136.2) [68489]"}
            HasDirectPerm(Mask, x, ss_1);
          assert {:msg "  Predicate might not be well-formed. Index x.ss[k] into x.ss might be negative. (functions.vpr@128.1--136.2) [68490]"}
            k_28 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index x.ss[k] into x.ss might exceed sequence length. (functions.vpr@128.1--136.2) [68491]"}
            k_28 < Seq#Length(Heap[x, ss_1]);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ss (functions.vpr@128.1--136.2) [68492]"}
            HasDirectPerm(Mask, x, ss_1);
          assert {:msg "  Predicate might not be well-formed. Index x.ss[j] into x.ss might be negative. (functions.vpr@128.1--136.2) [68493]"}
            j_20 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index x.ss[j] into x.ss might exceed sequence length. (functions.vpr@128.1--136.2) [68494]"}
            j_20 < Seq#Length(Heap[x, ss_1]);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_3_1: int ::
      { Seq#Index(Heap[x, ss_1], k_1_1), Seq#Index(Heap[x, ss_1], j_3_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(Heap[x, ss_1]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[x, ss_1]) && k_1_1 != j_3_1))) ==> Seq#Index(Heap[x, ss_1], k_1_1) != Seq#Index(Heap[x, ss_1], j_3_1)
    );
    
    // -- Check definedness of (forall j: Int :: { x.ss[j] } 0 <= j && j < 3 ==> acc(x.ss[j].f, write))
      if (*) {
        if (0 <= j_27 && j_27 < 3) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ss (functions.vpr@128.1--136.2) [68495]"}
            HasDirectPerm(Mask, x, ss_1);
          assert {:msg "  Predicate might not be well-formed. Index x.ss[j] into x.ss might be negative. (functions.vpr@128.1--136.2) [68496]"}
            j_27 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index x.ss[j] into x.ss might exceed sequence length. (functions.vpr@128.1--136.2) [68497]"}
            j_27 < Seq#Length(Heap[x, ss_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.ss[j].f might not be injective. (functions.vpr@128.1--136.2) [68498]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < 3)) && (0 <= j_5_2 && j_5_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_5_1) != Seq#Index(Heap[x, ss_1], j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(Heap[x, ss_1], j_5_1) } { Seq#Index(Heap[x, ss_1], j_5_1) }
        (0 <= j_5_1 && j_5_1 < 3) && NoPerm < FullPerm ==> qpRange15(Seq#Index(Heap[x, ss_1], j_5_1)) && invRecv15(Seq#Index(Heap[x, ss_1], j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        ((0 <= invRecv15(o_4) && invRecv15(o_4) < 3) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(Heap[x, ss_1], invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(Heap[x, ss_1], j_5_1) } { Seq#Index(Heap[x, ss_1], j_5_1) }
        0 <= j_5_1 && j_5_1 < 3 ==> Seq#Index(Heap[x, ss_1], j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv15(o_4) && invRecv15(o_4) < 3) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], invRecv15(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv15(o_4) && invRecv15(o_4) < 3) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { x.ss[j] } 3 <= j && j < n ==> acc(x.ss[j].f, write))
      if (*) {
        if (3 <= j_24 && j_24 < n) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ss (functions.vpr@128.1--136.2) [68499]"}
            HasDirectPerm(Mask, x, ss_1);
          assert {:msg "  Predicate might not be well-formed. Index x.ss[j] into x.ss might be negative. (functions.vpr@128.1--136.2) [68500]"}
            j_24 >= 0;
          assert {:msg "  Predicate might not be well-formed. Index x.ss[j] into x.ss might exceed sequence length. (functions.vpr@128.1--136.2) [68501]"}
            j_24 < Seq#Length(Heap[x, ss_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.ss[j].f might not be injective. (functions.vpr@128.1--136.2) [68502]"}
      (forall j_7_1: int, j_7_2: int ::
      
      (((j_7_1 != j_7_2 && (3 <= j_7_1 && j_7_1 < n)) && (3 <= j_7_2 && j_7_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_7_1) != Seq#Index(Heap[x, ss_1], j_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_7_1: int ::
        { Seq#Index(Heap[x, ss_1], j_7_1) } { Seq#Index(Heap[x, ss_1], j_7_1) }
        (3 <= j_7_1 && j_7_1 < n) && NoPerm < FullPerm ==> qpRange16(Seq#Index(Heap[x, ss_1], j_7_1)) && invRecv16(Seq#Index(Heap[x, ss_1], j_7_1)) == j_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        ((3 <= invRecv16(o_4) && invRecv16(o_4) < n) && NoPerm < FullPerm) && qpRange16(o_4) ==> Seq#Index(Heap[x, ss_1], invRecv16(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_7_1: int ::
        { Seq#Index(Heap[x, ss_1], j_7_1) } { Seq#Index(Heap[x, ss_1], j_7_1) }
        3 <= j_7_1 && j_7_1 < n ==> Seq#Index(Heap[x, ss_1], j_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv16(o_4) && invRecv16(o_4) < n) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], invRecv16(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv16(o_4) && invRecv16(o_4) < n) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  var i_43: int;
  var j_28: int;
  var i_45: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_4_1: int;
  var j_2_1: int;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_7_1: int;
  var j_4_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- functions.vpr@13.3--13.104
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_43 >= 0 && (i_43 < Seq#Length(xs) && (j_28 >= 0 && (j_28 < Seq#Length(xs) && i_43 != j_28)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (functions.vpr@13.10--13.104) [68503]"}
            i_43 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (functions.vpr@13.10--13.104) [68504]"}
            i_43 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@13.10--13.104) [68505]"}
            j_28 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@13.10--13.104) [68506]"}
            j_28 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { xs[i] }
  //     0 <= i && i < |xs| ==> acc(xs[i].f, write)) -- functions.vpr@14.3--14.62
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_45 && i_45 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (functions.vpr@14.10--14.62) [68507]"}
            i_45 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (functions.vpr@14.10--14.62) [68508]"}
            i_45 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (functions.vpr@14.10--14.62) [68509]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(xs))) && (0 <= i_3_1 && i_3_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#Index(xs, i_3) }
        (0 <= i_3 && i_3 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange17(Seq#Index(xs, i_3)) && invRecv17(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        ((0 <= invRecv17(o_4) && invRecv17(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange17(o_4) ==> Seq#Index(xs, invRecv17(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#Index(xs, i_3) }
        0 <= i_3 && i_3 < Seq#Length(xs) ==> Seq#Index(xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv17(o_4) && invRecv17(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv17(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv17(o_4) && invRecv17(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale |xs| > 3 -- functions.vpr@15.3--15.18
    assume Seq#Length(xs) > 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(xs) == 5 -- functions.vpr@17.3--17.24
    assume state(Heap, Mask);
    
    // -- Check definedness of fun01(xs) == 5
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          if (i_4_1 >= 0 && (i_4_1 < Seq#Length(xs) && (j_2_1 >= 0 && (j_2_1 < Seq#Length(xs) && i_4_1 != j_2_1)))) {
            assert {:msg "  Precondition of function fun01 might not hold. Assertion xs[i] != xs[j] might not hold. (functions.vpr@17.10--17.19) [68510]"}
              Seq#Index(xs, i_4_1) != Seq#Index(xs, j_2_1);
          }
          assume false;
        }
        assume (forall i_5_1_1: int, j_3_1_1: int ::
          { Seq#Index(xs, i_5_1_1), Seq#Index(xs, j_3_1_1) }
          i_5_1_1 >= 0 && (i_5_1_1 < Seq#Length(xs) && (j_3_1_1 >= 0 && (j_3_1_1 < Seq#Length(xs) && i_5_1_1 != j_3_1_1))) ==> Seq#Index(xs, i_5_1_1) != Seq#Index(xs, j_3_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun01 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@17.10--17.19) [68511]"}
            (forall i_6_1: int, i_6_2: int ::
            { neverTriggered18(i_6_1), neverTriggered18(i_6_2) }
            (((i_6_1 != i_6_2 && (0 <= i_6_1 && i_6_1 < Seq#Length(xs))) && (0 <= i_6_2 && i_6_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_6_1) != Seq#Index(xs, i_6_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@17.10--17.19) [68512]"}
            (forall i_6_1: int ::
            { Seq#Index(xs, i_6_1) } { Seq#Index(xs, i_6_1) }
            0 <= i_6_1 && i_6_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> Mask[Seq#Index(xs, i_6_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_6_1: int ::
            { Seq#Index(xs, i_6_1) } { Seq#Index(xs, i_6_1) }
            (0 <= i_6_1 && i_6_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange18(Seq#Index(xs, i_6_1)) && invRecv18(Seq#Index(xs, i_6_1)) == i_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv18(o_4) }
            (0 <= invRecv18(o_4) && invRecv18(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> Seq#Index(xs, invRecv18(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun01 might not hold. Assertion |xs| > 3 might not hold. (functions.vpr@17.10--17.19) [68513]"}
          Seq#Length(xs) > 3;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun01(Heap, xs) == 5;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(xs) == 5 -- functions.vpr@18.3--18.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01(xs) == 5
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (*) {
          if (i_7_1 >= 0 && (i_7_1 < Seq#Length(xs) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(xs) && i_7_1 != j_4_1)))) {
            assert {:msg "  Precondition of function fun01 might not hold. Assertion xs[i] != xs[j] might not hold. (functions.vpr@18.10--18.19) [68514]"}
              Seq#Index(xs, i_7_1) != Seq#Index(xs, j_4_1);
          }
          assume false;
        }
        assume (forall i_8_1: int, j_5_1_1: int ::
          { Seq#Index(xs, i_8_1), Seq#Index(xs, j_5_1_1) }
          i_8_1 >= 0 && (i_8_1 < Seq#Length(xs) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(xs) && i_8_1 != j_5_1_1))) ==> Seq#Index(xs, i_8_1) != Seq#Index(xs, j_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun01 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@18.10--18.19) [68515]"}
            (forall i_9_1: int, i_9_2: int ::
            { neverTriggered19(i_9_1), neverTriggered19(i_9_2) }
            (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < Seq#Length(xs))) && (0 <= i_9_2 && i_9_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_9_1) != Seq#Index(xs, i_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@18.10--18.19) [68516]"}
            (forall i_9_1: int ::
            { Seq#Index(xs, i_9_1) } { Seq#Index(xs, i_9_1) }
            0 <= i_9_1 && i_9_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_9_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_9_1: int ::
            { Seq#Index(xs, i_9_1) } { Seq#Index(xs, i_9_1) }
            (0 <= i_9_1 && i_9_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange19(Seq#Index(xs, i_9_1)) && invRecv19(Seq#Index(xs, i_9_1)) == i_9_1
          );
          assume (forall o_4: Ref ::
            { invRecv19(o_4) }
            (0 <= invRecv19(o_4) && invRecv19(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange19(o_4)) ==> Seq#Index(xs, invRecv19(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun01 might not hold. Assertion |xs| > 3 might not hold. (functions.vpr@18.10--18.19) [68517]"}
          Seq#Length(xs) > 3;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(xs) == 5 might not hold. (functions.vpr@18.10--18.24) [68518]"}
      fun01(Heap, xs) == 5;
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
  var i_56: int;
  var j_29: int;
  var i_47: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_4_1: int;
  var j_2_1: int;
  var ExhaleHeap: HeapType;
  var i_7_1: int;
  var j_4_1: int;
  var i_10_1: int;
  var j_6_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- functions.vpr@28.3--28.104
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_56 >= 0 && (i_56 < Seq#Length(xs) && (j_29 >= 0 && (j_29 < Seq#Length(xs) && i_56 != j_29)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (functions.vpr@28.10--28.104) [68519]"}
            i_56 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (functions.vpr@28.10--28.104) [68520]"}
            i_56 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@28.10--28.104) [68521]"}
            j_29 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@28.10--28.104) [68522]"}
            j_29 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { xs[i] }
  //     0 <= i && i < |xs| ==> acc(xs[i].f, write)) -- functions.vpr@29.3--29.62
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_47 && i_47 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (functions.vpr@29.10--29.62) [68523]"}
            i_47 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (functions.vpr@29.10--29.62) [68524]"}
            i_47 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (functions.vpr@29.10--29.62) [68525]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(xs))) && (0 <= i_3_1 && i_3_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_3) != Seq#Index(xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#Index(xs, i_3) }
        (0 <= i_3 && i_3 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange20(Seq#Index(xs, i_3)) && invRecv20(Seq#Index(xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        ((0 <= invRecv20(o_4) && invRecv20(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange20(o_4) ==> Seq#Index(xs, invRecv20(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(xs, i_3) } { Seq#Index(xs, i_3) }
        0 <= i_3 && i_3 < Seq#Length(xs) ==> Seq#Index(xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv20(o_4) && invRecv20(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv20(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv20(o_4) && invRecv20(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale |xs| > 3 -- functions.vpr@30.3--30.18
    assume Seq#Length(xs) > 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[0].f := 3 -- functions.vpr@32.3--32.15
    
    // -- Check definedness of xs[0]
      assert {:msg "  Assignment might fail. Index xs[0] into xs might exceed sequence length. (functions.vpr@32.3--32.15) [68526]"}
        0 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[0].f (functions.vpr@32.3--32.15) [68527]"}
      FullPerm == Mask[Seq#Index(xs, 0), f_7];
    Heap := Heap[Seq#Index(xs, 0), f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[1].f := 7 -- functions.vpr@33.3--33.15
    
    // -- Check definedness of xs[1]
      assert {:msg "  Assignment might fail. Index xs[1] into xs might exceed sequence length. (functions.vpr@33.3--33.15) [68528]"}
        1 < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[1].f (functions.vpr@33.3--33.15) [68529]"}
      FullPerm == Mask[Seq#Index(xs, 1), f_7];
    Heap := Heap[Seq#Index(xs, 1), f_7:=7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(xs) == 10 -- functions.vpr@34.3--34.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(xs) == 10
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (*) {
          if (i_4_1 >= 0 && (i_4_1 < Seq#Length(xs) && (j_2_1 >= 0 && (j_2_1 < Seq#Length(xs) && i_4_1 != j_2_1)))) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion xs[i] != xs[j] might not hold. (functions.vpr@34.10--34.19) [68530]"}
              Seq#Index(xs, i_4_1) != Seq#Index(xs, j_2_1);
          }
          assume false;
        }
        assume (forall i_5_1_1: int, j_3_1_1: int ::
          { Seq#Index(xs, i_5_1_1), Seq#Index(xs, j_3_1_1) }
          i_5_1_1 >= 0 && (i_5_1_1 < Seq#Length(xs) && (j_3_1_1 >= 0 && (j_3_1_1 < Seq#Length(xs) && i_5_1_1 != j_3_1_1))) ==> Seq#Index(xs, i_5_1_1) != Seq#Index(xs, j_3_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@34.10--34.19) [68531]"}
            (forall i_6_1: int, i_6_2: int ::
            { neverTriggered21(i_6_1), neverTriggered21(i_6_2) }
            (((i_6_1 != i_6_2 && (0 <= i_6_1 && i_6_1 < Seq#Length(xs))) && (0 <= i_6_2 && i_6_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_6_1) != Seq#Index(xs, i_6_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@34.10--34.19) [68532]"}
            (forall i_6_1: int ::
            { Seq#Index(xs, i_6_1) } { Seq#Index(xs, i_6_1) }
            0 <= i_6_1 && i_6_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_6_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_6_1: int ::
            { Seq#Index(xs, i_6_1) } { Seq#Index(xs, i_6_1) }
            (0 <= i_6_1 && i_6_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange21(Seq#Index(xs, i_6_1)) && invRecv21(Seq#Index(xs, i_6_1)) == i_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv21(o_4) }
            (0 <= invRecv21(o_4) && invRecv21(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(xs, invRecv21(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun02 might not hold. Assertion |xs| > 3 might not hold. (functions.vpr@34.10--34.19) [68533]"}
          Seq#Length(xs) > 3;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(xs) == 10 might not hold. (functions.vpr@34.10--34.25) [68534]"}
      fun02(Heap, xs) == 10;
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[0].f := xs[1].f -- functions.vpr@36.3--36.21
    
    // -- Check definedness of xs[0]
      assert {:msg "  Assignment might fail. Index xs[0] into xs might exceed sequence length. (functions.vpr@36.3--36.21) [68535]"}
        0 < Seq#Length(xs);
    
    // -- Check definedness of xs[1].f
      assert {:msg "  Assignment might fail. Index xs[1] into xs might exceed sequence length. (functions.vpr@36.3--36.21) [68536]"}
        1 < Seq#Length(xs);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[1].f (functions.vpr@36.3--36.21) [68537]"}
        HasDirectPerm(Mask, Seq#Index(xs, 1), f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[0].f (functions.vpr@36.3--36.21) [68538]"}
      FullPerm == Mask[Seq#Index(xs, 0), f_7];
    Heap := Heap[Seq#Index(xs, 0), f_7:=Heap[Seq#Index(xs, 1), f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(xs) == 14 -- functions.vpr@37.3--37.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(xs) == 14
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (*) {
          if (i_7_1 >= 0 && (i_7_1 < Seq#Length(xs) && (j_4_1 >= 0 && (j_4_1 < Seq#Length(xs) && i_7_1 != j_4_1)))) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion xs[i] != xs[j] might not hold. (functions.vpr@37.10--37.19) [68539]"}
              Seq#Index(xs, i_7_1) != Seq#Index(xs, j_4_1);
          }
          assume false;
        }
        assume (forall i_8_1: int, j_5_1_1: int ::
          { Seq#Index(xs, i_8_1), Seq#Index(xs, j_5_1_1) }
          i_8_1 >= 0 && (i_8_1 < Seq#Length(xs) && (j_5_1_1 >= 0 && (j_5_1_1 < Seq#Length(xs) && i_8_1 != j_5_1_1))) ==> Seq#Index(xs, i_8_1) != Seq#Index(xs, j_5_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@37.10--37.19) [68540]"}
            (forall i_9_1: int, i_9_2: int ::
            { neverTriggered22(i_9_1), neverTriggered22(i_9_2) }
            (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < Seq#Length(xs))) && (0 <= i_9_2 && i_9_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_9_1) != Seq#Index(xs, i_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@37.10--37.19) [68541]"}
            (forall i_9_1: int ::
            { Seq#Index(xs, i_9_1) } { Seq#Index(xs, i_9_1) }
            0 <= i_9_1 && i_9_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_9_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_9_1: int ::
            { Seq#Index(xs, i_9_1) } { Seq#Index(xs, i_9_1) }
            (0 <= i_9_1 && i_9_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange22(Seq#Index(xs, i_9_1)) && invRecv22(Seq#Index(xs, i_9_1)) == i_9_1
          );
          assume (forall o_4: Ref ::
            { invRecv22(o_4) }
            (0 <= invRecv22(o_4) && invRecv22(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange22(o_4)) ==> Seq#Index(xs, invRecv22(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun02 might not hold. Assertion |xs| > 3 might not hold. (functions.vpr@37.10--37.19) [68542]"}
          Seq#Length(xs) > 3;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(xs) == 14 might not hold. (functions.vpr@37.10--37.25) [68543]"}
      fun02(Heap, xs) == 14;
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[0].f := xs[2].f -- functions.vpr@39.3--39.21
    
    // -- Check definedness of xs[0]
      assert {:msg "  Assignment might fail. Index xs[0] into xs might exceed sequence length. (functions.vpr@39.3--39.21) [68544]"}
        0 < Seq#Length(xs);
    
    // -- Check definedness of xs[2].f
      assert {:msg "  Assignment might fail. Index xs[2] into xs might exceed sequence length. (functions.vpr@39.3--39.21) [68545]"}
        2 < Seq#Length(xs);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[2].f (functions.vpr@39.3--39.21) [68546]"}
        HasDirectPerm(Mask, Seq#Index(xs, 2), f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[0].f (functions.vpr@39.3--39.21) [68547]"}
      FullPerm == Mask[Seq#Index(xs, 0), f_7];
    Heap := Heap[Seq#Index(xs, 0), f_7:=Heap[Seq#Index(xs, 2), f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(xs) == 14 -- functions.vpr@41.3--41.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(xs) == 14
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (*) {
          if (i_10_1 >= 0 && (i_10_1 < Seq#Length(xs) && (j_6_1 >= 0 && (j_6_1 < Seq#Length(xs) && i_10_1 != j_6_1)))) {
            assert {:msg "  Precondition of function fun02 might not hold. Assertion xs[i] != xs[j] might not hold. (functions.vpr@41.10--41.19) [68548]"}
              Seq#Index(xs, i_10_1) != Seq#Index(xs, j_6_1);
          }
          assume false;
        }
        assume (forall i_11_1_1: int, j_7_1_1: int ::
          { Seq#Index(xs, i_11_1_1), Seq#Index(xs, j_7_1_1) }
          i_11_1_1 >= 0 && (i_11_1_1 < Seq#Length(xs) && (j_7_1_1 >= 0 && (j_7_1_1 < Seq#Length(xs) && i_11_1_1 != j_7_1_1))) ==> Seq#Index(xs, i_11_1_1) != Seq#Index(xs, j_7_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun02 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@41.10--41.19) [68549]"}
            (forall i_12_1: int, i_12_2: int ::
            { neverTriggered23(i_12_1), neverTriggered23(i_12_2) }
            (((i_12_1 != i_12_2 && (0 <= i_12_1 && i_12_1 < Seq#Length(xs))) && (0 <= i_12_2 && i_12_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_12_1) != Seq#Index(xs, i_12_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@41.10--41.19) [68550]"}
            (forall i_12_1: int ::
            { Seq#Index(xs, i_12_1) } { Seq#Index(xs, i_12_1) }
            0 <= i_12_1 && i_12_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_12_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_12_1: int ::
            { Seq#Index(xs, i_12_1) } { Seq#Index(xs, i_12_1) }
            (0 <= i_12_1 && i_12_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange23(Seq#Index(xs, i_12_1)) && invRecv23(Seq#Index(xs, i_12_1)) == i_12_1
          );
          assume (forall o_4: Ref ::
            { invRecv23(o_4) }
            (0 <= invRecv23(o_4) && invRecv23(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> Seq#Index(xs, invRecv23(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun02 might not hold. Assertion |xs| > 3 might not hold. (functions.vpr@41.10--41.19) [68551]"}
          Seq#Length(xs) > 3;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(xs) == 14 might not hold. (functions.vpr@41.10--41.25) [68552]"}
      fun02(Heap, xs) == 14;
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
  var k_40: int;
  var j_34: int;
  var j_31: int;
  var QPMask: MaskType;
  var j_32: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var k_2_1: int;
  var j_6_1: int;
  var ExhaleHeap: HeapType;
  var k_4_1: int;
  var j_10_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |xs| > 6 -- functions.vpr@53.3--53.18
    assume Seq#Length(xs) > 6;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int, j: Int ::
  //     { xs[k], xs[j] }
  //     k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==>
  //     xs[k] != xs[j]) -- functions.vpr@54.3--54.104
    
    // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
      if (*) {
        if (k_40 >= 0 && (k_40 < Seq#Length(xs) && (j_34 >= 0 && (j_34 < Seq#Length(xs) && k_40 != j_34)))) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (functions.vpr@54.10--54.104) [68553]"}
            k_40 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (functions.vpr@54.10--54.104) [68554]"}
            k_40 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@54.10--54.104) [68555]"}
            j_34 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@54.10--54.104) [68556]"}
            j_34 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_1: int ::
      { Seq#Index(xs, k_1_1), Seq#Index(xs, j_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && k_1_1 != j_1))) ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall j: Int :: { xs[j] } 0 <= j && j < 3 ==> acc(xs[j].f, write)) -- functions.vpr@55.3--55.59
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < 3 ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_31 && j_31 < 3) {
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@55.10--55.59) [68557]"}
            j_31 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@55.10--55.59) [68558]"}
            j_31 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@55.10--55.59) [68559]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < 3)) && (0 <= j_3_2 && j_3_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_3_1) != Seq#Index(xs, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
        (0 <= j_3_1 && j_3_1 < 3) && NoPerm < FullPerm ==> qpRange24(Seq#Index(xs, j_3_1)) && invRecv24(Seq#Index(xs, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        ((0 <= invRecv24(o_4) && invRecv24(o_4) < 3) && NoPerm < FullPerm) && qpRange24(o_4) ==> Seq#Index(xs, invRecv24(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
        0 <= j_3_1 && j_3_1 < 3 ==> Seq#Index(xs, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv24(o_4) && invRecv24(o_4) < 3) && NoPerm < FullPerm) && qpRange24(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv24(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv24(o_4) && invRecv24(o_4) < 3) && NoPerm < FullPerm) && qpRange24(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall j: Int ::
  //     { xs[j] }
  //     3 <= j && j < |xs| ==> acc(xs[j].f, write)) -- functions.vpr@56.3--56.62
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 3 <= j && j < |xs| ==> acc(xs[j].f, write))
      if (*) {
        if (3 <= j_32 && j_32 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@56.10--56.62) [68560]"}
            j_32 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@56.10--56.62) [68561]"}
            j_32 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@56.10--56.62) [68562]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && (3 <= j_5_1 && j_5_1 < Seq#Length(xs))) && (3 <= j_5_2 && j_5_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_5_1) != Seq#Index(xs, j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        (3 <= j_5_1 && j_5_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange25(Seq#Index(xs, j_5_1)) && invRecv25(Seq#Index(xs, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv25(o_4) }
        ((3 <= invRecv25(o_4) && invRecv25(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange25(o_4) ==> Seq#Index(xs, invRecv25(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        3 <= j_5_1 && j_5_1 < Seq#Length(xs) ==> Seq#Index(xs, j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv25(o_4) && invRecv25(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange25(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv25(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv25(o_4) && invRecv25(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange25(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale xs[0].f < xs[1].f -- functions.vpr@58.3--58.27
    
    // -- Check definedness of xs[0].f < xs[1].f
      assert {:msg "  Inhale might fail. Index xs[0] into xs might exceed sequence length. (functions.vpr@58.10--58.27) [68563]"}
        0 < Seq#Length(xs);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access xs[0].f (functions.vpr@58.10--58.27) [68564]"}
        HasDirectPerm(Mask, Seq#Index(xs, 0), f_7);
      assert {:msg "  Inhale might fail. Index xs[1] into xs might exceed sequence length. (functions.vpr@58.10--58.27) [68565]"}
        1 < Seq#Length(xs);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access xs[1].f (functions.vpr@58.10--58.27) [68566]"}
        HasDirectPerm(Mask, Seq#Index(xs, 1), f_7);
    assume Heap[Seq#Index(xs, 0), f_7] < Heap[Seq#Index(xs, 1), f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun03(xs, 0) < fun03(xs, 1) -- functions.vpr@59.3--59.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun03(xs, 0) < fun03(xs, 1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun03 might not hold. Assertion |xs| > 6 might not hold. (functions.vpr@59.10--59.22) [68567]"}
          Seq#Length(xs) > 6;
        if (*) {
          if (k_2_1 >= 0 && (k_2_1 < Seq#Length(xs) && (j_6_1 >= 0 && (j_6_1 < Seq#Length(xs) && k_2_1 != j_6_1)))) {
            assert {:msg "  Precondition of function fun03 might not hold. Assertion xs[k] != xs[j] might not hold. (functions.vpr@59.10--59.22) [68568]"}
              Seq#Index(xs, k_2_1) != Seq#Index(xs, j_6_1);
          }
          assume false;
        }
        assume (forall k_3_1_1: int, j_7_1_1: int ::
          { Seq#Index(xs, k_3_1_1), Seq#Index(xs, j_7_1_1) }
          k_3_1_1 >= 0 && (k_3_1_1 < Seq#Length(xs) && (j_7_1_1 >= 0 && (j_7_1_1 < Seq#Length(xs) && k_3_1_1 != j_7_1_1))) ==> Seq#Index(xs, k_3_1_1) != Seq#Index(xs, j_7_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun03 might not hold. Quantified resource xs[j].f might not be injective. (functions.vpr@59.10--59.22) [68569]"}
            (forall j_8: int, j_8_1: int ::
            { neverTriggered26(j_8), neverTriggered26(j_8_1) }
            (((j_8 != j_8_1 && (0 <= j_8 && j_8 < 3)) && (0 <= j_8_1 && j_8_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_8) != Seq#Index(xs, j_8_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access xs[j].f (functions.vpr@59.10--59.22) [68570]"}
            (forall j_8: int ::
            { Seq#Index(xs, j_8) } { Seq#Index(xs, j_8) }
            0 <= j_8 && j_8 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_8), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_8: int ::
            { Seq#Index(xs, j_8) } { Seq#Index(xs, j_8) }
            (0 <= j_8 && j_8 < 3) && NoPerm < FullPerm ==> qpRange26(Seq#Index(xs, j_8)) && invRecv26(Seq#Index(xs, j_8)) == j_8
          );
          assume (forall o_4: Ref ::
            { invRecv26(o_4) }
            (0 <= invRecv26(o_4) && invRecv26(o_4) < 3) && (NoPerm < FullPerm && qpRange26(o_4)) ==> Seq#Index(xs, invRecv26(o_4)) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun03 might not hold. Quantified resource xs[j].f might not be injective. (functions.vpr@59.10--59.22) [68571]"}
            (forall j_9_1: int, j_9_2: int ::
            { neverTriggered27(j_9_1), neverTriggered27(j_9_2) }
            (((j_9_1 != j_9_2 && (3 <= j_9_1 && j_9_1 < Seq#Length(xs))) && (3 <= j_9_2 && j_9_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_9_1) != Seq#Index(xs, j_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access xs[j].f (functions.vpr@59.10--59.22) [68572]"}
            (forall j_9_1: int ::
            { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
            3 <= j_9_1 && j_9_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_9_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_9_1: int ::
            { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
            (3 <= j_9_1 && j_9_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange27(Seq#Index(xs, j_9_1)) && invRecv27(Seq#Index(xs, j_9_1)) == j_9_1
          );
          assume (forall o_4: Ref ::
            { invRecv27(o_4) }
            (3 <= invRecv27(o_4) && invRecv27(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange27(o_4)) ==> Seq#Index(xs, invRecv27(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun03 might not hold. Assertion 0 < |xs| might not hold. (functions.vpr@59.10--59.22) [68573]"}
          0 < Seq#Length(xs);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function fun03 might not hold. Assertion |xs| > 6 might not hold. (functions.vpr@59.25--59.37) [68574]"}
          Seq#Length(xs) > 6;
        if (*) {
          if (k_4_1 >= 0 && (k_4_1 < Seq#Length(xs) && (j_10_2 >= 0 && (j_10_2 < Seq#Length(xs) && k_4_1 != j_10_2)))) {
            assert {:msg "  Precondition of function fun03 might not hold. Assertion xs[k] != xs[j] might not hold. (functions.vpr@59.25--59.37) [68575]"}
              Seq#Index(xs, k_4_1) != Seq#Index(xs, j_10_2);
          }
          assume false;
        }
        assume (forall k_5_1_1: int, j_11_1: int ::
          { Seq#Index(xs, k_5_1_1), Seq#Index(xs, j_11_1) }
          k_5_1_1 >= 0 && (k_5_1_1 < Seq#Length(xs) && (j_11_1 >= 0 && (j_11_1 < Seq#Length(xs) && k_5_1_1 != j_11_1))) ==> Seq#Index(xs, k_5_1_1) != Seq#Index(xs, j_11_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun03 might not hold. Quantified resource xs[j].f might not be injective. (functions.vpr@59.25--59.37) [68576]"}
            (forall j_12_2: int, j_12_3: int ::
            { neverTriggered28(j_12_2), neverTriggered28(j_12_3) }
            (((j_12_2 != j_12_3 && (0 <= j_12_2 && j_12_2 < 3)) && (0 <= j_12_3 && j_12_3 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_12_2) != Seq#Index(xs, j_12_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access xs[j].f (functions.vpr@59.25--59.37) [68577]"}
            (forall j_12_2: int ::
            { Seq#Index(xs, j_12_2) } { Seq#Index(xs, j_12_2) }
            0 <= j_12_2 && j_12_2 < 3 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_12_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_12_2: int ::
            { Seq#Index(xs, j_12_2) } { Seq#Index(xs, j_12_2) }
            (0 <= j_12_2 && j_12_2 < 3) && NoPerm < FullPerm ==> qpRange28(Seq#Index(xs, j_12_2)) && invRecv28(Seq#Index(xs, j_12_2)) == j_12_2
          );
          assume (forall o_4: Ref ::
            { invRecv28(o_4) }
            (0 <= invRecv28(o_4) && invRecv28(o_4) < 3) && (NoPerm < FullPerm && qpRange28(o_4)) ==> Seq#Index(xs, invRecv28(o_4)) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun03 might not hold. Quantified resource xs[j].f might not be injective. (functions.vpr@59.25--59.37) [68578]"}
            (forall j_13_2: int, j_13_3: int ::
            { neverTriggered29(j_13_2), neverTriggered29(j_13_3) }
            (((j_13_2 != j_13_3 && (3 <= j_13_2 && j_13_2 < Seq#Length(xs))) && (3 <= j_13_3 && j_13_3 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_13_2) != Seq#Index(xs, j_13_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access xs[j].f (functions.vpr@59.25--59.37) [68579]"}
            (forall j_13_2: int ::
            { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
            3 <= j_13_2 && j_13_2 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_13_2), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_13_2: int ::
            { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
            (3 <= j_13_2 && j_13_2 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange29(Seq#Index(xs, j_13_2)) && invRecv29(Seq#Index(xs, j_13_2)) == j_13_2
          );
          assume (forall o_4: Ref ::
            { invRecv29(o_4) }
            (3 <= invRecv29(o_4) && invRecv29(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange29(o_4)) ==> Seq#Index(xs, invRecv29(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun03 might not hold. Assertion 1 < |xs| might not hold. (functions.vpr@59.25--59.37) [68580]"}
          1 < Seq#Length(xs);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun03(xs, 0) < fun03(xs, 1) might not hold. (functions.vpr@59.10--59.37) [68581]"}
      fun03(Heap, xs, 0) < fun03(Heap, xs, 1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06a
// ==================================================

procedure test06a(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var k_43: int;
  var j_37: int;
  var j_38: int;
  var QPMask: MaskType;
  var j_39: int;
  var v1: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_2_1: int;
  var j_6_1: int;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |xs| == n && 6 < n -- functions.vpr@71.3--71.28
    assume Seq#Length(xs) == n;
    assume 6 < n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int, j: Int ::
  //     { xs[k], xs[j] }
  //     k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==>
  //     xs[k] != xs[j]) -- functions.vpr@72.3--72.106
    
    // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
      if (*) {
        if (k_43 >= 0 && (k_43 < Seq#Length(xs) && (j_37 >= 0 && (j_37 < Seq#Length(xs) && k_43 != j_37)))) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (functions.vpr@72.11--72.105) [68582]"}
            k_43 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (functions.vpr@72.11--72.105) [68583]"}
            k_43 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@72.11--72.105) [68584]"}
            j_37 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@72.11--72.105) [68585]"}
            j_37 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_1: int ::
      { Seq#Index(xs, k_1_1), Seq#Index(xs, j_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && k_1_1 != j_1))) ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall j: Int :: { xs[j] } 0 <= j && j < 3 ==> acc(xs[j].f, write)) -- functions.vpr@73.3--73.61
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 0 <= j && j < 3 ==> acc(xs[j].f, write))
      if (*) {
        if (0 <= j_38 && j_38 < 3) {
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@73.11--73.60) [68586]"}
            j_38 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@73.11--73.60) [68587]"}
            j_38 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@73.11--73.60) [68588]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && (0 <= j_3_1 && j_3_1 < 3)) && (0 <= j_3_2 && j_3_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_3_1) != Seq#Index(xs, j_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
        (0 <= j_3_1 && j_3_1 < 3) && NoPerm < FullPerm ==> qpRange30(Seq#Index(xs, j_3_1)) && invRecv30(Seq#Index(xs, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv30(o_4) }
        ((0 <= invRecv30(o_4) && invRecv30(o_4) < 3) && NoPerm < FullPerm) && qpRange30(o_4) ==> Seq#Index(xs, invRecv30(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Seq#Index(xs, j_3_1) } { Seq#Index(xs, j_3_1) }
        0 <= j_3_1 && j_3_1 < 3 ==> Seq#Index(xs, j_3_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv30(o_4) && invRecv30(o_4) < 3) && NoPerm < FullPerm) && qpRange30(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv30(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv30(o_4) && invRecv30(o_4) < 3) && NoPerm < FullPerm) && qpRange30(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall j: Int :: { xs[j] } 3 <= j && j < n ==> acc(xs[j].f, write)) -- functions.vpr@74.3--74.61
    
    // -- Check definedness of (forall j: Int :: { xs[j] } 3 <= j && j < n ==> acc(xs[j].f, write))
      if (*) {
        if (3 <= j_39 && j_39 < n) {
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@74.11--74.60) [68589]"}
            j_39 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@74.11--74.60) [68590]"}
            j_39 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@74.11--74.60) [68591]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && (3 <= j_5_1 && j_5_1 < n)) && (3 <= j_5_2 && j_5_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_5_1) != Seq#Index(xs, j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        (3 <= j_5_1 && j_5_1 < n) && NoPerm < FullPerm ==> qpRange31(Seq#Index(xs, j_5_1)) && invRecv31(Seq#Index(xs, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv31(o_4) }
        ((3 <= invRecv31(o_4) && invRecv31(o_4) < n) && NoPerm < FullPerm) && qpRange31(o_4) ==> Seq#Index(xs, invRecv31(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        3 <= j_5_1 && j_5_1 < n ==> Seq#Index(xs, j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv31(o_4) && invRecv31(o_4) < n) && NoPerm < FullPerm) && qpRange31(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv31(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv31(o_4) && invRecv31(o_4) < n) && NoPerm < FullPerm) && qpRange31(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := xs[2].f -- functions.vpr@76.3--76.25
    
    // -- Check definedness of xs[2].f
      assert {:msg "  Assignment might fail. Index xs[2] into xs might exceed sequence length. (functions.vpr@76.3--76.25) [68592]"}
        2 < Seq#Length(xs);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[2].f (functions.vpr@76.3--76.25) [68593]"}
        HasDirectPerm(Mask, Seq#Index(xs, 2), f_7);
    v1 := Heap[Seq#Index(xs, 2), f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P02(xs, n), write) -- functions.vpr@78.3--78.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding P02(xs, n) might fail. Assertion |xs| == n might not hold. (functions.vpr@78.3--78.23) [68595]"}
      Seq#Length(xs) == n;
    assert {:msg "  Folding P02(xs, n) might fail. Assertion 3 <= n might not hold. (functions.vpr@78.3--78.23) [68596]"}
      3 <= n;
    if (*) {
      if (k_2_1 >= 0 && (k_2_1 < Seq#Length(xs) && (j_6_1 >= 0 && (j_6_1 < Seq#Length(xs) && k_2_1 != j_6_1)))) {
        assert {:msg "  Folding P02(xs, n) might fail. Assertion xs[k] != xs[j] might not hold. (functions.vpr@78.3--78.23) [68597]"}
          Seq#Index(xs, k_2_1) != Seq#Index(xs, j_6_1);
      }
      assume false;
    }
    assume (forall k_3_1_1: int, j_7_1_1: int ::
      { Seq#Index(xs, k_3_1_1), Seq#Index(xs, j_7_1_1) }
      k_3_1_1 >= 0 && (k_3_1_1 < Seq#Length(xs) && (j_7_1_1 >= 0 && (j_7_1_1 < Seq#Length(xs) && k_3_1_1 != j_7_1_1))) ==> Seq#Index(xs, k_3_1_1) != Seq#Index(xs, j_7_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Folding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@78.3--78.23) [68599]"}
        (forall j_8: int, j_8_1: int ::
        { neverTriggered32(j_8), neverTriggered32(j_8_1) }
        (((j_8 != j_8_1 && (0 <= j_8 && j_8 < 3)) && (0 <= j_8_1 && j_8_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_8) != Seq#Index(xs, j_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P02(xs, n) might fail. There might be insufficient permission to access xs[j].f (functions.vpr@78.3--78.23) [68600]"}
        (forall j_8: int ::
        { Seq#Index(xs, j_8) } { Seq#Index(xs, j_8) }
        0 <= j_8 && j_8 < 3 ==> Mask[Seq#Index(xs, j_8), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_8: int ::
        { Seq#Index(xs, j_8) } { Seq#Index(xs, j_8) }
        (0 <= j_8 && j_8 < 3) && NoPerm < FullPerm ==> qpRange32(Seq#Index(xs, j_8)) && invRecv32(Seq#Index(xs, j_8)) == j_8
      );
      assume (forall o_4: Ref ::
        { invRecv32(o_4) }
        (0 <= invRecv32(o_4) && invRecv32(o_4) < 3) && (NoPerm < FullPerm && qpRange32(o_4)) ==> Seq#Index(xs, invRecv32(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv32(o_4) && invRecv32(o_4) < 3) && (NoPerm < FullPerm && qpRange32(o_4)) ==> Seq#Index(xs, invRecv32(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((0 <= invRecv32(o_4) && invRecv32(o_4) < 3) && (NoPerm < FullPerm && qpRange32(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Folding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@78.3--78.23) [68602]"}
        (forall j_9_1: int, j_9_2: int ::
        { neverTriggered33(j_9_1), neverTriggered33(j_9_2) }
        (((j_9_1 != j_9_2 && (3 <= j_9_1 && j_9_1 < n)) && (3 <= j_9_2 && j_9_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_9_1) != Seq#Index(xs, j_9_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P02(xs, n) might fail. There might be insufficient permission to access xs[j].f (functions.vpr@78.3--78.23) [68603]"}
        (forall j_9_1: int ::
        { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
        3 <= j_9_1 && j_9_1 < n ==> Mask[Seq#Index(xs, j_9_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_9_1: int ::
        { Seq#Index(xs, j_9_1) } { Seq#Index(xs, j_9_1) }
        (3 <= j_9_1 && j_9_1 < n) && NoPerm < FullPerm ==> qpRange33(Seq#Index(xs, j_9_1)) && invRecv33(Seq#Index(xs, j_9_1)) == j_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv33(o_4) }
        (3 <= invRecv33(o_4) && invRecv33(o_4) < n) && (NoPerm < FullPerm && qpRange33(o_4)) ==> Seq#Index(xs, invRecv33(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((3 <= invRecv33(o_4) && invRecv33(o_4) < n) && (NoPerm < FullPerm && qpRange33(o_4)) ==> Seq#Index(xs, invRecv33(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((3 <= invRecv33(o_4) && invRecv33(o_4) < n) && (NoPerm < FullPerm && qpRange33(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    if (!HasDirectPerm(Mask, null, P02(xs, n))) {
      Heap := Heap[null, P02#sm(xs, n):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P02(xs, n):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P02
    havoc newPMask;
    assume (forall <A, B> o_9: Ref, f_18: (Field A B) ::
      { newPMask[o_9, f_18] }
      Heap[null, P02#sm(xs, n)][o_9, f_18] ==> newPMask[o_9, f_18]
    );
    assume (forall j_10_2: int ::
      
      0 <= j_10_2 && j_10_2 < 3 ==> newPMask[Seq#Index(xs, j_10_2), f_7]
    );
    Heap := Heap[null, P02#sm(xs, n):=newPMask];
    // register all known folded permissions guarded by predicate P02
    havoc newPMask;
    assume (forall <A, B> o_36: Ref, f_15: (Field A B) ::
      { newPMask[o_36, f_15] }
      Heap[null, P02#sm(xs, n)][o_36, f_15] ==> newPMask[o_36, f_15]
    );
    assume (forall j_11_2: int ::
      
      3 <= j_11_2 && j_11_2 < n ==> newPMask[Seq#Index(xs, j_11_2), f_7]
    );
    Heap := Heap[null, P02#sm(xs, n):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P02(xs, n), write) -- functions.vpr@79.3--79.25
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P02(xs, n) might fail. There might be insufficient permission to access P02(xs, n) (functions.vpr@79.3--79.25) [68607]"}
        perm <= Mask[null, P02(xs, n)];
    }
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P02(xs, n))) {
        havoc newVersion;
        Heap := Heap[null, P02(xs, n):=newVersion];
      }
    assume Seq#Length(xs) == n;
    assume 3 <= n;
    assume (forall k_4_1: int, j_12_2: int ::
      { Seq#Index(xs, k_4_1), Seq#Index(xs, j_12_2) }
      k_4_1 >= 0 && (k_4_1 < Seq#Length(xs) && (j_12_2 >= 0 && (j_12_2 < Seq#Length(xs) && k_4_1 != j_12_2))) ==> Seq#Index(xs, k_4_1) != Seq#Index(xs, j_12_2)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@79.3--79.25) [68608]"}
      (forall j_13_2: int, j_13_3: int ::
      
      (((j_13_2 != j_13_3 && (0 <= j_13_2 && j_13_2 < 3)) && (0 <= j_13_3 && j_13_3 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_13_2) != Seq#Index(xs, j_13_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_13_2: int ::
        { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
        (0 <= j_13_2 && j_13_2 < 3) && NoPerm < FullPerm ==> qpRange34(Seq#Index(xs, j_13_2)) && invRecv34(Seq#Index(xs, j_13_2)) == j_13_2
      );
      assume (forall o_4: Ref ::
        { invRecv34(o_4) }
        ((0 <= invRecv34(o_4) && invRecv34(o_4) < 3) && NoPerm < FullPerm) && qpRange34(o_4) ==> Seq#Index(xs, invRecv34(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_13_2: int ::
        { Seq#Index(xs, j_13_2) } { Seq#Index(xs, j_13_2) }
        0 <= j_13_2 && j_13_2 < 3 ==> Seq#Index(xs, j_13_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv34(o_4) && invRecv34(o_4) < 3) && NoPerm < FullPerm) && qpRange34(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv34(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv34(o_4) && invRecv34(o_4) < 3) && NoPerm < FullPerm) && qpRange34(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@79.3--79.25) [68609]"}
      (forall j_14_1: int, j_14_2: int ::
      
      (((j_14_1 != j_14_2 && (3 <= j_14_1 && j_14_1 < n)) && (3 <= j_14_2 && j_14_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_14_1) != Seq#Index(xs, j_14_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_14_1: int ::
        { Seq#Index(xs, j_14_1) } { Seq#Index(xs, j_14_1) }
        (3 <= j_14_1 && j_14_1 < n) && NoPerm < FullPerm ==> qpRange35(Seq#Index(xs, j_14_1)) && invRecv35(Seq#Index(xs, j_14_1)) == j_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv35(o_4) }
        ((3 <= invRecv35(o_4) && invRecv35(o_4) < n) && NoPerm < FullPerm) && qpRange35(o_4) ==> Seq#Index(xs, invRecv35(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_14_1: int ::
        { Seq#Index(xs, j_14_1) } { Seq#Index(xs, j_14_1) }
        3 <= j_14_1 && j_14_1 < n ==> Seq#Index(xs, j_14_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv35(o_4) && invRecv35(o_4) < n) && NoPerm < FullPerm) && qpRange35(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv35(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv35(o_4) && invRecv35(o_4) < n) && NoPerm < FullPerm) && qpRange35(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- functions.vpr@81.3--81.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (functions.vpr@81.10--81.15) [68610]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06b
// ==================================================

procedure test06b(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var v1: int;
  var v2: int;
  var k_1_1: int;
  var j_3_1: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(P02(xs, n), write) -- functions.vpr@85.3--85.25
    perm := FullPerm;
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 6 < n -- functions.vpr@86.3--86.15
    assume 6 < n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P02(xs, n), write) -- functions.vpr@88.3--88.25
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P02(xs, n) might fail. There might be insufficient permission to access P02(xs, n) (functions.vpr@88.3--88.25) [68614]"}
        perm <= Mask[null, P02(xs, n)];
    }
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P02(xs, n))) {
        havoc newVersion;
        Heap := Heap[null, P02(xs, n):=newVersion];
      }
    assume Seq#Length(xs) == n;
    assume 3 <= n;
    assume (forall k: int, j_9: int ::
      { Seq#Index(xs, k), Seq#Index(xs, j_9) }
      k >= 0 && (k < Seq#Length(xs) && (j_9 >= 0 && (j_9 < Seq#Length(xs) && k != j_9))) ==> Seq#Index(xs, k) != Seq#Index(xs, j_9)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@88.3--88.25) [68615]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < 3)) && (0 <= j_1_1 && j_1_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < 3) && NoPerm < FullPerm ==> qpRange36(Seq#Index(xs, j_1)) && invRecv36(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv36(o_4) }
        ((0 <= invRecv36(o_4) && invRecv36(o_4) < 3) && NoPerm < FullPerm) && qpRange36(o_4) ==> Seq#Index(xs, invRecv36(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < 3 ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv36(o_4) && invRecv36(o_4) < 3) && NoPerm < FullPerm) && qpRange36(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv36(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv36(o_4) && invRecv36(o_4) < 3) && NoPerm < FullPerm) && qpRange36(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@88.3--88.25) [68616]"}
      (forall j_2_1: int, j_2_2: int ::
      
      (((j_2_1 != j_2_2 && (3 <= j_2_1 && j_2_1 < n)) && (3 <= j_2_2 && j_2_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_2_1) != Seq#Index(xs, j_2_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_2_1: int ::
        { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
        (3 <= j_2_1 && j_2_1 < n) && NoPerm < FullPerm ==> qpRange37(Seq#Index(xs, j_2_1)) && invRecv37(Seq#Index(xs, j_2_1)) == j_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv37(o_4) }
        ((3 <= invRecv37(o_4) && invRecv37(o_4) < n) && NoPerm < FullPerm) && qpRange37(o_4) ==> Seq#Index(xs, invRecv37(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_2_1: int ::
        { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
        3 <= j_2_1 && j_2_1 < n ==> Seq#Index(xs, j_2_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv37(o_4) && invRecv37(o_4) < n) && NoPerm < FullPerm) && qpRange37(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv37(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv37(o_4) && invRecv37(o_4) < n) && NoPerm < FullPerm) && qpRange37(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := xs[2].f -- functions.vpr@89.3--89.25
    
    // -- Check definedness of xs[2].f
      assert {:msg "  Assignment might fail. Index xs[2] into xs might exceed sequence length. (functions.vpr@89.3--89.25) [68617]"}
        2 < Seq#Length(xs);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[2].f (functions.vpr@89.3--89.25) [68618]"}
        HasDirectPerm(Mask, Seq#Index(xs, 2), f_7);
    v1 := Heap[Seq#Index(xs, 2), f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: v2 := xs[1].f -- functions.vpr@90.3--90.25
    
    // -- Check definedness of xs[1].f
      assert {:msg "  Assignment might fail. Index xs[1] into xs might exceed sequence length. (functions.vpr@90.3--90.25) [68619]"}
        1 < Seq#Length(xs);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[1].f (functions.vpr@90.3--90.25) [68620]"}
        HasDirectPerm(Mask, Seq#Index(xs, 1), f_7);
    v2 := Heap[Seq#Index(xs, 1), f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P02(xs, n), write) -- functions.vpr@91.3--91.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding P02(xs, n) might fail. Assertion |xs| == n might not hold. (functions.vpr@91.3--91.23) [68622]"}
      Seq#Length(xs) == n;
    assert {:msg "  Folding P02(xs, n) might fail. Assertion 3 <= n might not hold. (functions.vpr@91.3--91.23) [68623]"}
      3 <= n;
    if (*) {
      if (k_1_1 >= 0 && (k_1_1 < Seq#Length(xs) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(xs) && k_1_1 != j_3_1)))) {
        assert {:msg "  Folding P02(xs, n) might fail. Assertion xs[k] != xs[j] might not hold. (functions.vpr@91.3--91.23) [68624]"}
          Seq#Index(xs, k_1_1) != Seq#Index(xs, j_3_1);
      }
      assume false;
    }
    assume (forall k_2_1_1: int, j_4_1_1: int ::
      { Seq#Index(xs, k_2_1_1), Seq#Index(xs, j_4_1_1) }
      k_2_1_1 >= 0 && (k_2_1_1 < Seq#Length(xs) && (j_4_1_1 >= 0 && (j_4_1_1 < Seq#Length(xs) && k_2_1_1 != j_4_1_1))) ==> Seq#Index(xs, k_2_1_1) != Seq#Index(xs, j_4_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Folding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@91.3--91.23) [68626]"}
        (forall j_5_1: int, j_5_2: int ::
        { neverTriggered38(j_5_1), neverTriggered38(j_5_2) }
        (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < 3)) && (0 <= j_5_2 && j_5_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_5_1) != Seq#Index(xs, j_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P02(xs, n) might fail. There might be insufficient permission to access xs[j].f (functions.vpr@91.3--91.23) [68627]"}
        (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        0 <= j_5_1 && j_5_1 < 3 ==> Mask[Seq#Index(xs, j_5_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        (0 <= j_5_1 && j_5_1 < 3) && NoPerm < FullPerm ==> qpRange38(Seq#Index(xs, j_5_1)) && invRecv38(Seq#Index(xs, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv38(o_4) }
        (0 <= invRecv38(o_4) && invRecv38(o_4) < 3) && (NoPerm < FullPerm && qpRange38(o_4)) ==> Seq#Index(xs, invRecv38(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv38(o_4) && invRecv38(o_4) < 3) && (NoPerm < FullPerm && qpRange38(o_4)) ==> Seq#Index(xs, invRecv38(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((0 <= invRecv38(o_4) && invRecv38(o_4) < 3) && (NoPerm < FullPerm && qpRange38(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Folding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@91.3--91.23) [68629]"}
        (forall j_6_1: int, j_6_2: int ::
        { neverTriggered39(j_6_1), neverTriggered39(j_6_2) }
        (((j_6_1 != j_6_2 && (3 <= j_6_1 && j_6_1 < n)) && (3 <= j_6_2 && j_6_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_6_1) != Seq#Index(xs, j_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P02(xs, n) might fail. There might be insufficient permission to access xs[j].f (functions.vpr@91.3--91.23) [68630]"}
        (forall j_6_1: int ::
        { Seq#Index(xs, j_6_1) } { Seq#Index(xs, j_6_1) }
        3 <= j_6_1 && j_6_1 < n ==> Mask[Seq#Index(xs, j_6_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_6_1: int ::
        { Seq#Index(xs, j_6_1) } { Seq#Index(xs, j_6_1) }
        (3 <= j_6_1 && j_6_1 < n) && NoPerm < FullPerm ==> qpRange39(Seq#Index(xs, j_6_1)) && invRecv39(Seq#Index(xs, j_6_1)) == j_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv39(o_4) }
        (3 <= invRecv39(o_4) && invRecv39(o_4) < n) && (NoPerm < FullPerm && qpRange39(o_4)) ==> Seq#Index(xs, invRecv39(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((3 <= invRecv39(o_4) && invRecv39(o_4) < n) && (NoPerm < FullPerm && qpRange39(o_4)) ==> Seq#Index(xs, invRecv39(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((3 <= invRecv39(o_4) && invRecv39(o_4) < n) && (NoPerm < FullPerm && qpRange39(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    if (!HasDirectPerm(Mask, null, P02(xs, n))) {
      Heap := Heap[null, P02#sm(xs, n):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P02(xs, n):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P02
    havoc newPMask;
    assume (forall <A, B> o_50: Ref, f_43: (Field A B) ::
      { newPMask[o_50, f_43] }
      Heap[null, P02#sm(xs, n)][o_50, f_43] ==> newPMask[o_50, f_43]
    );
    assume (forall j_7_1: int ::
      
      0 <= j_7_1 && j_7_1 < 3 ==> newPMask[Seq#Index(xs, j_7_1), f_7]
    );
    Heap := Heap[null, P02#sm(xs, n):=newPMask];
    // register all known folded permissions guarded by predicate P02
    havoc newPMask;
    assume (forall <A, B> o_10: Ref, f_19: (Field A B) ::
      { newPMask[o_10, f_19] }
      Heap[null, P02#sm(xs, n)][o_10, f_19] ==> newPMask[o_10, f_19]
    );
    assume (forall j_8: int ::
      
      3 <= j_8 && j_8 < n ==> newPMask[Seq#Index(xs, j_8), f_7]
    );
    Heap := Heap[null, P02#sm(xs, n):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P02(xs, n), write) -- functions.vpr@93.3--93.25
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P02(xs, n) might fail. There might be insufficient permission to access P02(xs, n) (functions.vpr@93.3--93.25) [68634]"}
        perm <= Mask[null, P02(xs, n)];
    }
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P02(xs, n))) {
        havoc newVersion;
        Heap := Heap[null, P02(xs, n):=newVersion];
      }
    assume Seq#Length(xs) == n;
    assume 3 <= n;
    assume (forall k_3: int, j_9_1: int ::
      { Seq#Index(xs, k_3), Seq#Index(xs, j_9_1) }
      k_3 >= 0 && (k_3 < Seq#Length(xs) && (j_9_1 >= 0 && (j_9_1 < Seq#Length(xs) && k_3 != j_9_1))) ==> Seq#Index(xs, k_3) != Seq#Index(xs, j_9_1)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@93.3--93.25) [68635]"}
      (forall j_10_2: int, j_10_3: int ::
      
      (((j_10_2 != j_10_3 && (0 <= j_10_2 && j_10_2 < 3)) && (0 <= j_10_3 && j_10_3 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_10_2) != Seq#Index(xs, j_10_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_10_2: int ::
        { Seq#Index(xs, j_10_2) } { Seq#Index(xs, j_10_2) }
        (0 <= j_10_2 && j_10_2 < 3) && NoPerm < FullPerm ==> qpRange40(Seq#Index(xs, j_10_2)) && invRecv40(Seq#Index(xs, j_10_2)) == j_10_2
      );
      assume (forall o_4: Ref ::
        { invRecv40(o_4) }
        ((0 <= invRecv40(o_4) && invRecv40(o_4) < 3) && NoPerm < FullPerm) && qpRange40(o_4) ==> Seq#Index(xs, invRecv40(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_10_2: int ::
        { Seq#Index(xs, j_10_2) } { Seq#Index(xs, j_10_2) }
        0 <= j_10_2 && j_10_2 < 3 ==> Seq#Index(xs, j_10_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv40(o_4) && invRecv40(o_4) < 3) && NoPerm < FullPerm) && qpRange40(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv40(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv40(o_4) && invRecv40(o_4) < 3) && NoPerm < FullPerm) && qpRange40(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@93.3--93.25) [68636]"}
      (forall j_11_2: int, j_11_3: int ::
      
      (((j_11_2 != j_11_3 && (3 <= j_11_2 && j_11_2 < n)) && (3 <= j_11_3 && j_11_3 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_11_2) != Seq#Index(xs, j_11_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_11_2: int ::
        { Seq#Index(xs, j_11_2) } { Seq#Index(xs, j_11_2) }
        (3 <= j_11_2 && j_11_2 < n) && NoPerm < FullPerm ==> qpRange41(Seq#Index(xs, j_11_2)) && invRecv41(Seq#Index(xs, j_11_2)) == j_11_2
      );
      assume (forall o_4: Ref ::
        { invRecv41(o_4) }
        ((3 <= invRecv41(o_4) && invRecv41(o_4) < n) && NoPerm < FullPerm) && qpRange41(o_4) ==> Seq#Index(xs, invRecv41(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_11_2: int ::
        { Seq#Index(xs, j_11_2) } { Seq#Index(xs, j_11_2) }
        3 <= j_11_2 && j_11_2 < n ==> Seq#Index(xs, j_11_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv41(o_4) && invRecv41(o_4) < n) && NoPerm < FullPerm) && qpRange41(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv41(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv41(o_4) && invRecv41(o_4) < n) && NoPerm < FullPerm) && qpRange41(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- functions.vpr@95.3--95.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (functions.vpr@95.10--95.15) [68637]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(xs: (Seq Ref), n: int, i: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var v1: int;
  var k_1_1: int;
  var j_3_1: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var k_4_1: int;
  var j_12_2: int;
  var v2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(P02(xs, n), write) -- functions.vpr@106.3--106.25
    perm := FullPerm;
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 6 < n -- functions.vpr@107.3--107.15
    assume 6 < n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale i == 4 -- functions.vpr@108.3--108.16
    assume i == 4;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P02(xs, n), write) -- functions.vpr@110.3--110.25
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P02(xs, n) might fail. There might be insufficient permission to access P02(xs, n) (functions.vpr@110.3--110.25) [68641]"}
        perm <= Mask[null, P02(xs, n)];
    }
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P02(xs, n))) {
        havoc newVersion;
        Heap := Heap[null, P02(xs, n):=newVersion];
      }
    assume Seq#Length(xs) == n;
    assume 3 <= n;
    assume (forall k: int, j_9: int ::
      { Seq#Index(xs, k), Seq#Index(xs, j_9) }
      k >= 0 && (k < Seq#Length(xs) && (j_9 >= 0 && (j_9 < Seq#Length(xs) && k != j_9))) ==> Seq#Index(xs, k) != Seq#Index(xs, j_9)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@110.3--110.25) [68642]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < 3)) && (0 <= j_1_1 && j_1_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_1) != Seq#Index(xs, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        (0 <= j_1 && j_1 < 3) && NoPerm < FullPerm ==> qpRange42(Seq#Index(xs, j_1)) && invRecv42(Seq#Index(xs, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv42(o_4) }
        ((0 <= invRecv42(o_4) && invRecv42(o_4) < 3) && NoPerm < FullPerm) && qpRange42(o_4) ==> Seq#Index(xs, invRecv42(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(xs, j_1) } { Seq#Index(xs, j_1) }
        0 <= j_1 && j_1 < 3 ==> Seq#Index(xs, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv42(o_4) && invRecv42(o_4) < 3) && NoPerm < FullPerm) && qpRange42(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv42(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv42(o_4) && invRecv42(o_4) < 3) && NoPerm < FullPerm) && qpRange42(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@110.3--110.25) [68643]"}
      (forall j_2_1: int, j_2_2: int ::
      
      (((j_2_1 != j_2_2 && (3 <= j_2_1 && j_2_1 < n)) && (3 <= j_2_2 && j_2_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_2_1) != Seq#Index(xs, j_2_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_2_1: int ::
        { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
        (3 <= j_2_1 && j_2_1 < n) && NoPerm < FullPerm ==> qpRange43(Seq#Index(xs, j_2_1)) && invRecv43(Seq#Index(xs, j_2_1)) == j_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv43(o_4) }
        ((3 <= invRecv43(o_4) && invRecv43(o_4) < n) && NoPerm < FullPerm) && qpRange43(o_4) ==> Seq#Index(xs, invRecv43(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_2_1: int ::
        { Seq#Index(xs, j_2_1) } { Seq#Index(xs, j_2_1) }
        3 <= j_2_1 && j_2_1 < n ==> Seq#Index(xs, j_2_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv43(o_4) && invRecv43(o_4) < n) && NoPerm < FullPerm) && qpRange43(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv43(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv43(o_4) && invRecv43(o_4) < n) && NoPerm < FullPerm) && qpRange43(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := xs[i].f -- functions.vpr@111.3--111.25
    
    // -- Check definedness of xs[i].f
      assert {:msg "  Assignment might fail. Index xs[i] into xs might be negative. (functions.vpr@111.3--111.25) [68644]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index xs[i] into xs might exceed sequence length. (functions.vpr@111.3--111.25) [68645]"}
        i < Seq#Length(xs);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i].f (functions.vpr@111.3--111.25) [68646]"}
        HasDirectPerm(Mask, Seq#Index(xs, i), f_7);
    v1 := Heap[Seq#Index(xs, i), f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P02(xs, n), write) -- functions.vpr@112.3--112.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding P02(xs, n) might fail. Assertion |xs| == n might not hold. (functions.vpr@112.3--112.23) [68648]"}
      Seq#Length(xs) == n;
    assert {:msg "  Folding P02(xs, n) might fail. Assertion 3 <= n might not hold. (functions.vpr@112.3--112.23) [68649]"}
      3 <= n;
    if (*) {
      if (k_1_1 >= 0 && (k_1_1 < Seq#Length(xs) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(xs) && k_1_1 != j_3_1)))) {
        assert {:msg "  Folding P02(xs, n) might fail. Assertion xs[k] != xs[j] might not hold. (functions.vpr@112.3--112.23) [68650]"}
          Seq#Index(xs, k_1_1) != Seq#Index(xs, j_3_1);
      }
      assume false;
    }
    assume (forall k_2_1_1: int, j_4_1_1: int ::
      { Seq#Index(xs, k_2_1_1), Seq#Index(xs, j_4_1_1) }
      k_2_1_1 >= 0 && (k_2_1_1 < Seq#Length(xs) && (j_4_1_1 >= 0 && (j_4_1_1 < Seq#Length(xs) && k_2_1_1 != j_4_1_1))) ==> Seq#Index(xs, k_2_1_1) != Seq#Index(xs, j_4_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Folding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@112.3--112.23) [68652]"}
        (forall j_5_1: int, j_5_2: int ::
        { neverTriggered44(j_5_1), neverTriggered44(j_5_2) }
        (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < 3)) && (0 <= j_5_2 && j_5_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_5_1) != Seq#Index(xs, j_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P02(xs, n) might fail. There might be insufficient permission to access xs[j].f (functions.vpr@112.3--112.23) [68653]"}
        (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        0 <= j_5_1 && j_5_1 < 3 ==> Mask[Seq#Index(xs, j_5_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_5_1: int ::
        { Seq#Index(xs, j_5_1) } { Seq#Index(xs, j_5_1) }
        (0 <= j_5_1 && j_5_1 < 3) && NoPerm < FullPerm ==> qpRange44(Seq#Index(xs, j_5_1)) && invRecv44(Seq#Index(xs, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv44(o_4) }
        (0 <= invRecv44(o_4) && invRecv44(o_4) < 3) && (NoPerm < FullPerm && qpRange44(o_4)) ==> Seq#Index(xs, invRecv44(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv44(o_4) && invRecv44(o_4) < 3) && (NoPerm < FullPerm && qpRange44(o_4)) ==> Seq#Index(xs, invRecv44(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((0 <= invRecv44(o_4) && invRecv44(o_4) < 3) && (NoPerm < FullPerm && qpRange44(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Folding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@112.3--112.23) [68655]"}
        (forall j_6_1: int, j_6_2: int ::
        { neverTriggered45(j_6_1), neverTriggered45(j_6_2) }
        (((j_6_1 != j_6_2 && (3 <= j_6_1 && j_6_1 < n)) && (3 <= j_6_2 && j_6_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_6_1) != Seq#Index(xs, j_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P02(xs, n) might fail. There might be insufficient permission to access xs[j].f (functions.vpr@112.3--112.23) [68656]"}
        (forall j_6_1: int ::
        { Seq#Index(xs, j_6_1) } { Seq#Index(xs, j_6_1) }
        3 <= j_6_1 && j_6_1 < n ==> Mask[Seq#Index(xs, j_6_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_6_1: int ::
        { Seq#Index(xs, j_6_1) } { Seq#Index(xs, j_6_1) }
        (3 <= j_6_1 && j_6_1 < n) && NoPerm < FullPerm ==> qpRange45(Seq#Index(xs, j_6_1)) && invRecv45(Seq#Index(xs, j_6_1)) == j_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv45(o_4) }
        (3 <= invRecv45(o_4) && invRecv45(o_4) < n) && (NoPerm < FullPerm && qpRange45(o_4)) ==> Seq#Index(xs, invRecv45(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((3 <= invRecv45(o_4) && invRecv45(o_4) < n) && (NoPerm < FullPerm && qpRange45(o_4)) ==> Seq#Index(xs, invRecv45(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((3 <= invRecv45(o_4) && invRecv45(o_4) < n) && (NoPerm < FullPerm && qpRange45(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    if (!HasDirectPerm(Mask, null, P02(xs, n))) {
      Heap := Heap[null, P02#sm(xs, n):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P02(xs, n):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P02
    havoc newPMask;
    assume (forall <A, B> o_37: Ref, f_47: (Field A B) ::
      { newPMask[o_37, f_47] }
      Heap[null, P02#sm(xs, n)][o_37, f_47] ==> newPMask[o_37, f_47]
    );
    assume (forall j_7_1: int ::
      
      0 <= j_7_1 && j_7_1 < 3 ==> newPMask[Seq#Index(xs, j_7_1), f_7]
    );
    Heap := Heap[null, P02#sm(xs, n):=newPMask];
    // register all known folded permissions guarded by predicate P02
    havoc newPMask;
    assume (forall <A, B> o_48: Ref, f_32: (Field A B) ::
      { newPMask[o_48, f_32] }
      Heap[null, P02#sm(xs, n)][o_48, f_32] ==> newPMask[o_48, f_32]
    );
    assume (forall j_8: int ::
      
      3 <= j_8 && j_8 < n ==> newPMask[Seq#Index(xs, j_8), f_7]
    );
    Heap := Heap[null, P02#sm(xs, n):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v1 == fun06(xs, n, i) -- functions.vpr@114.3--114.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of v1 == fun06(xs, n, i)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun06 might not hold. There might be insufficient permission to access P02(xs, n) (functions.vpr@114.16--114.31) [68658]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P02(xs, n)];
        assert {:msg "  Precondition of function fun06 might not hold. Assertion 0 < i might not hold. (functions.vpr@114.16--114.31) [68659]"}
          0 < i;
        assert {:msg "  Precondition of function fun06 might not hold. Assertion i < n might not hold. (functions.vpr@114.16--114.31) [68660]"}
          i < n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v1 == fun06(xs, n, i) might not hold. (functions.vpr@114.10--114.31) [68661]"}
      v1 == fun06(Heap, xs, n, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P02(xs, n), write) -- functions.vpr@116.3--116.25
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P02(xs, n) might fail. There might be insufficient permission to access P02(xs, n) (functions.vpr@116.3--116.25) [68664]"}
        perm <= Mask[null, P02(xs, n)];
    }
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P02(xs, n))) {
        havoc newVersion;
        Heap := Heap[null, P02(xs, n):=newVersion];
      }
    assume Seq#Length(xs) == n;
    assume 3 <= n;
    assume (forall k_3: int, j_9_1: int ::
      { Seq#Index(xs, k_3), Seq#Index(xs, j_9_1) }
      k_3 >= 0 && (k_3 < Seq#Length(xs) && (j_9_1 >= 0 && (j_9_1 < Seq#Length(xs) && k_3 != j_9_1))) ==> Seq#Index(xs, k_3) != Seq#Index(xs, j_9_1)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@116.3--116.25) [68665]"}
      (forall j_10_2: int, j_10_3: int ::
      
      (((j_10_2 != j_10_3 && (0 <= j_10_2 && j_10_2 < 3)) && (0 <= j_10_3 && j_10_3 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_10_2) != Seq#Index(xs, j_10_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_10_2: int ::
        { Seq#Index(xs, j_10_2) } { Seq#Index(xs, j_10_2) }
        (0 <= j_10_2 && j_10_2 < 3) && NoPerm < FullPerm ==> qpRange46(Seq#Index(xs, j_10_2)) && invRecv46(Seq#Index(xs, j_10_2)) == j_10_2
      );
      assume (forall o_4: Ref ::
        { invRecv46(o_4) }
        ((0 <= invRecv46(o_4) && invRecv46(o_4) < 3) && NoPerm < FullPerm) && qpRange46(o_4) ==> Seq#Index(xs, invRecv46(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_10_2: int ::
        { Seq#Index(xs, j_10_2) } { Seq#Index(xs, j_10_2) }
        0 <= j_10_2 && j_10_2 < 3 ==> Seq#Index(xs, j_10_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv46(o_4) && invRecv46(o_4) < 3) && NoPerm < FullPerm) && qpRange46(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv46(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv46(o_4) && invRecv46(o_4) < 3) && NoPerm < FullPerm) && qpRange46(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@116.3--116.25) [68666]"}
      (forall j_11_2: int, j_11_3: int ::
      
      (((j_11_2 != j_11_3 && (3 <= j_11_2 && j_11_2 < n)) && (3 <= j_11_3 && j_11_3 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_11_2) != Seq#Index(xs, j_11_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_11_2: int ::
        { Seq#Index(xs, j_11_2) } { Seq#Index(xs, j_11_2) }
        (3 <= j_11_2 && j_11_2 < n) && NoPerm < FullPerm ==> qpRange47(Seq#Index(xs, j_11_2)) && invRecv47(Seq#Index(xs, j_11_2)) == j_11_2
      );
      assume (forall o_4: Ref ::
        { invRecv47(o_4) }
        ((3 <= invRecv47(o_4) && invRecv47(o_4) < n) && NoPerm < FullPerm) && qpRange47(o_4) ==> Seq#Index(xs, invRecv47(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_11_2: int ::
        { Seq#Index(xs, j_11_2) } { Seq#Index(xs, j_11_2) }
        3 <= j_11_2 && j_11_2 < n ==> Seq#Index(xs, j_11_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv47(o_4) && invRecv47(o_4) < n) && NoPerm < FullPerm) && qpRange47(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv47(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv47(o_4) && invRecv47(o_4) < n) && NoPerm < FullPerm) && qpRange47(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs[i].f := 0 -- functions.vpr@117.3--117.15
    
    // -- Check definedness of xs[i]
      assert {:msg "  Assignment might fail. Index xs[i] into xs might be negative. (functions.vpr@117.3--117.15) [68667]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index xs[i] into xs might exceed sequence length. (functions.vpr@117.3--117.15) [68668]"}
        i < Seq#Length(xs);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs[i].f (functions.vpr@117.3--117.15) [68669]"}
      FullPerm == Mask[Seq#Index(xs, i), f_7];
    Heap := Heap[Seq#Index(xs, i), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P02(xs, n), write) -- functions.vpr@118.3--118.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding P02(xs, n) might fail. Assertion |xs| == n might not hold. (functions.vpr@118.3--118.23) [68671]"}
      Seq#Length(xs) == n;
    assert {:msg "  Folding P02(xs, n) might fail. Assertion 3 <= n might not hold. (functions.vpr@118.3--118.23) [68672]"}
      3 <= n;
    if (*) {
      if (k_4_1 >= 0 && (k_4_1 < Seq#Length(xs) && (j_12_2 >= 0 && (j_12_2 < Seq#Length(xs) && k_4_1 != j_12_2)))) {
        assert {:msg "  Folding P02(xs, n) might fail. Assertion xs[k] != xs[j] might not hold. (functions.vpr@118.3--118.23) [68673]"}
          Seq#Index(xs, k_4_1) != Seq#Index(xs, j_12_2);
      }
      assume false;
    }
    assume (forall k_5_1_1: int, j_13_1: int ::
      { Seq#Index(xs, k_5_1_1), Seq#Index(xs, j_13_1) }
      k_5_1_1 >= 0 && (k_5_1_1 < Seq#Length(xs) && (j_13_1 >= 0 && (j_13_1 < Seq#Length(xs) && k_5_1_1 != j_13_1))) ==> Seq#Index(xs, k_5_1_1) != Seq#Index(xs, j_13_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Folding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@118.3--118.23) [68675]"}
        (forall j_14_1: int, j_14_2: int ::
        { neverTriggered48(j_14_1), neverTriggered48(j_14_2) }
        (((j_14_1 != j_14_2 && (0 <= j_14_1 && j_14_1 < 3)) && (0 <= j_14_2 && j_14_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_14_1) != Seq#Index(xs, j_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P02(xs, n) might fail. There might be insufficient permission to access xs[j].f (functions.vpr@118.3--118.23) [68676]"}
        (forall j_14_1: int ::
        { Seq#Index(xs, j_14_1) } { Seq#Index(xs, j_14_1) }
        0 <= j_14_1 && j_14_1 < 3 ==> Mask[Seq#Index(xs, j_14_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_14_1: int ::
        { Seq#Index(xs, j_14_1) } { Seq#Index(xs, j_14_1) }
        (0 <= j_14_1 && j_14_1 < 3) && NoPerm < FullPerm ==> qpRange48(Seq#Index(xs, j_14_1)) && invRecv48(Seq#Index(xs, j_14_1)) == j_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv48(o_4) }
        (0 <= invRecv48(o_4) && invRecv48(o_4) < 3) && (NoPerm < FullPerm && qpRange48(o_4)) ==> Seq#Index(xs, invRecv48(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv48(o_4) && invRecv48(o_4) < 3) && (NoPerm < FullPerm && qpRange48(o_4)) ==> Seq#Index(xs, invRecv48(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((0 <= invRecv48(o_4) && invRecv48(o_4) < 3) && (NoPerm < FullPerm && qpRange48(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver xs[j] is injective
      assert {:msg "  Folding P02(xs, n) might fail. Quantified resource xs[j].f might not be injective. (functions.vpr@118.3--118.23) [68678]"}
        (forall j_15_1: int, j_15_2: int ::
        { neverTriggered49(j_15_1), neverTriggered49(j_15_2) }
        (((j_15_1 != j_15_2 && (3 <= j_15_1 && j_15_1 < n)) && (3 <= j_15_2 && j_15_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_15_1) != Seq#Index(xs, j_15_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P02(xs, n) might fail. There might be insufficient permission to access xs[j].f (functions.vpr@118.3--118.23) [68679]"}
        (forall j_15_1: int ::
        { Seq#Index(xs, j_15_1) } { Seq#Index(xs, j_15_1) }
        3 <= j_15_1 && j_15_1 < n ==> Mask[Seq#Index(xs, j_15_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver xs[j]
      assume (forall j_15_1: int ::
        { Seq#Index(xs, j_15_1) } { Seq#Index(xs, j_15_1) }
        (3 <= j_15_1 && j_15_1 < n) && NoPerm < FullPerm ==> qpRange49(Seq#Index(xs, j_15_1)) && invRecv49(Seq#Index(xs, j_15_1)) == j_15_1
      );
      assume (forall o_4: Ref ::
        { invRecv49(o_4) }
        (3 <= invRecv49(o_4) && invRecv49(o_4) < n) && (NoPerm < FullPerm && qpRange49(o_4)) ==> Seq#Index(xs, invRecv49(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((3 <= invRecv49(o_4) && invRecv49(o_4) < n) && (NoPerm < FullPerm && qpRange49(o_4)) ==> Seq#Index(xs, invRecv49(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((3 <= invRecv49(o_4) && invRecv49(o_4) < n) && (NoPerm < FullPerm && qpRange49(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P02(xs, n):=Mask[null, P02(xs, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P02#trigger(Heap, P02(xs, n));
    assume Heap[null, P02(xs, n)] == CombineFrames(FrameFragment(P02#condqp5(Heap, xs, n)), FrameFragment(P02#condqp6(Heap, xs, n)));
    if (!HasDirectPerm(Mask, null, P02(xs, n))) {
      Heap := Heap[null, P02#sm(xs, n):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P02(xs, n):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P02
    havoc newPMask;
    assume (forall <A, B> o_40: Ref, f_53: (Field A B) ::
      { newPMask[o_40, f_53] }
      Heap[null, P02#sm(xs, n)][o_40, f_53] ==> newPMask[o_40, f_53]
    );
    assume (forall j_16_2: int ::
      
      0 <= j_16_2 && j_16_2 < 3 ==> newPMask[Seq#Index(xs, j_16_2), f_7]
    );
    Heap := Heap[null, P02#sm(xs, n):=newPMask];
    // register all known folded permissions guarded by predicate P02
    havoc newPMask;
    assume (forall <A, B> o_60: Ref, f_50: (Field A B) ::
      { newPMask[o_60, f_50] }
      Heap[null, P02#sm(xs, n)][o_60, f_50] ==> newPMask[o_60, f_50]
    );
    assume (forall j_17_1: int ::
      
      3 <= j_17_1 && j_17_1 < n ==> newPMask[Seq#Index(xs, j_17_1), f_7]
    );
    Heap := Heap[null, P02#sm(xs, n):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: v2 := fun06(xs, n, i) -- functions.vpr@120.3--120.33
    
    // -- Check definedness of fun06(xs, n, i)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun06 might not hold. There might be insufficient permission to access P02(xs, n) (functions.vpr@120.18--120.33) [68681]"}
          NoPerm < perm ==> NoPerm < Mask[null, P02(xs, n)];
        assert {:msg "  Precondition of function fun06 might not hold. Assertion 0 < i might not hold. (functions.vpr@120.18--120.33) [68682]"}
          0 < i;
        assert {:msg "  Precondition of function fun06 might not hold. Assertion i < n might not hold. (functions.vpr@120.18--120.33) [68683]"}
          i < n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    v2 := fun06(Heap, xs, n, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v2 == 0 -- functions.vpr@121.3--121.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion v2 == 0 might not hold. (functions.vpr@121.10--121.17) [68684]"}
      v2 == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v2 == v1 -- functions.vpr@123.3--123.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion v2 == v1 might not hold. (functions.vpr@123.10--123.18) [68685]"}
      v2 == v1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var v1: int;
  var v2: int;
  var k_1_1: int;
  var j_3_1: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var k_4_1: int;
  var j_12_2: int;
  
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
  
  // -- Translating statement: inhale acc(P01(x, n), write) -- functions.vpr@147.3--147.24
    perm := FullPerm;
    Mask := Mask[null, P01(x, n):=Mask[null, P01(x, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 6 < n -- functions.vpr@148.3--148.15
    assume 6 < n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P01(x, n), write) -- functions.vpr@150.3--150.24
    assume P01#trigger(Heap, P01(x, n));
    assume Heap[null, P01(x, n)] == CombineFrames(FrameFragment(Heap[x, ss_1]), CombineFrames(FrameFragment(P01#condqp7(Heap, x, n)), FrameFragment(P01#condqp8(Heap, x, n))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P01(x, n) might fail. There might be insufficient permission to access P01(x, n) (functions.vpr@150.3--150.24) [68689]"}
        perm <= Mask[null, P01(x, n)];
    }
    Mask := Mask[null, P01(x, n):=Mask[null, P01(x, n)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P01(x, n))) {
        havoc newVersion;
        Heap := Heap[null, P01(x, n):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, ss_1:=Mask[x, ss_1] + perm];
    assume state(Heap, Mask);
    assume Seq#Length(Heap[x, ss_1]) == n;
    assume 3 <= n;
    assume (forall k: int, j_9: int ::
      { Seq#Index(Heap[x, ss_1], k), Seq#Index(Heap[x, ss_1], j_9) }
      k >= 0 && (k < Seq#Length(Heap[x, ss_1]) && (j_9 >= 0 && (j_9 < Seq#Length(Heap[x, ss_1]) && k != j_9))) ==> Seq#Index(Heap[x, ss_1], k) != Seq#Index(Heap[x, ss_1], j_9)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P01(x, n) might fail. Quantified resource x.ss[j].f might not be injective. (functions.vpr@150.3--150.24) [68691]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < 3)) && (0 <= j_1_1 && j_1_1 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_1) != Seq#Index(Heap[x, ss_1], j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(Heap[x, ss_1], j_1) } { Seq#Index(Heap[x, ss_1], j_1) }
        (0 <= j_1 && j_1 < 3) && NoPerm < FullPerm ==> qpRange50(Seq#Index(Heap[x, ss_1], j_1)) && invRecv50(Seq#Index(Heap[x, ss_1], j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv50(o_4) }
        ((0 <= invRecv50(o_4) && invRecv50(o_4) < 3) && NoPerm < FullPerm) && qpRange50(o_4) ==> Seq#Index(Heap[x, ss_1], invRecv50(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(Heap[x, ss_1], j_1) } { Seq#Index(Heap[x, ss_1], j_1) }
        0 <= j_1 && j_1 < 3 ==> Seq#Index(Heap[x, ss_1], j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv50(o_4) && invRecv50(o_4) < 3) && NoPerm < FullPerm) && qpRange50(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], invRecv50(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv50(o_4) && invRecv50(o_4) < 3) && NoPerm < FullPerm) && qpRange50(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P01(x, n) might fail. Quantified resource x.ss[j].f might not be injective. (functions.vpr@150.3--150.24) [68692]"}
      (forall j_2_1: int, j_2_2: int ::
      
      (((j_2_1 != j_2_2 && (3 <= j_2_1 && j_2_1 < n)) && (3 <= j_2_2 && j_2_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_2_1) != Seq#Index(Heap[x, ss_1], j_2_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_2_1: int ::
        { Seq#Index(Heap[x, ss_1], j_2_1) } { Seq#Index(Heap[x, ss_1], j_2_1) }
        (3 <= j_2_1 && j_2_1 < n) && NoPerm < FullPerm ==> qpRange51(Seq#Index(Heap[x, ss_1], j_2_1)) && invRecv51(Seq#Index(Heap[x, ss_1], j_2_1)) == j_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv51(o_4) }
        ((3 <= invRecv51(o_4) && invRecv51(o_4) < n) && NoPerm < FullPerm) && qpRange51(o_4) ==> Seq#Index(Heap[x, ss_1], invRecv51(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_2_1: int ::
        { Seq#Index(Heap[x, ss_1], j_2_1) } { Seq#Index(Heap[x, ss_1], j_2_1) }
        3 <= j_2_1 && j_2_1 < n ==> Seq#Index(Heap[x, ss_1], j_2_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv51(o_4) && invRecv51(o_4) < n) && NoPerm < FullPerm) && qpRange51(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], invRecv51(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv51(o_4) && invRecv51(o_4) < n) && NoPerm < FullPerm) && qpRange51(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := x.ss[2].f -- functions.vpr@151.3--151.27
    
    // -- Check definedness of x.ss[2].f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.ss (functions.vpr@151.3--151.27) [68693]"}
        HasDirectPerm(Mask, x, ss_1);
      assert {:msg "  Assignment might fail. Index x.ss[2] into x.ss might exceed sequence length. (functions.vpr@151.3--151.27) [68694]"}
        2 < Seq#Length(Heap[x, ss_1]);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.ss[2].f (functions.vpr@151.3--151.27) [68695]"}
        HasDirectPerm(Mask, Seq#Index(Heap[x, ss_1], 2), f_7);
    v1 := Heap[Seq#Index(Heap[x, ss_1], 2), f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: v2 := x.ss[4].f -- functions.vpr@152.3--152.27
    
    // -- Check definedness of x.ss[4].f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.ss (functions.vpr@152.3--152.27) [68696]"}
        HasDirectPerm(Mask, x, ss_1);
      assert {:msg "  Assignment might fail. Index x.ss[4] into x.ss might exceed sequence length. (functions.vpr@152.3--152.27) [68697]"}
        4 < Seq#Length(Heap[x, ss_1]);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.ss[4].f (functions.vpr@152.3--152.27) [68698]"}
        HasDirectPerm(Mask, Seq#Index(Heap[x, ss_1], 4), f_7);
    v2 := Heap[Seq#Index(Heap[x, ss_1], 4), f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P01(x, n), write) -- functions.vpr@153.3--153.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P01(x, n) might fail. There might be insufficient permission to access x.ss (functions.vpr@153.3--153.22) [68701]"}
        perm <= Mask[x, ss_1];
    }
    Mask := Mask[x, ss_1:=Mask[x, ss_1] - perm];
    assert {:msg "  Folding P01(x, n) might fail. Assertion |x.ss| == n might not hold. (functions.vpr@153.3--153.22) [68702]"}
      Seq#Length(Heap[x, ss_1]) == n;
    assert {:msg "  Folding P01(x, n) might fail. Assertion 3 <= n might not hold. (functions.vpr@153.3--153.22) [68703]"}
      3 <= n;
    if (*) {
      if (k_1_1 >= 0 && (k_1_1 < Seq#Length(Heap[x, ss_1]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[x, ss_1]) && k_1_1 != j_3_1)))) {
        assert {:msg "  Folding P01(x, n) might fail. Assertion x.ss[k] != x.ss[j] might not hold. (functions.vpr@153.3--153.22) [68704]"}
          Seq#Index(Heap[x, ss_1], k_1_1) != Seq#Index(Heap[x, ss_1], j_3_1);
      }
      assume false;
    }
    assume (forall k_2_1_1: int, j_4_1_1: int ::
      { Seq#Index(Heap[x, ss_1], k_2_1_1), Seq#Index(Heap[x, ss_1], j_4_1_1) }
      k_2_1_1 >= 0 && (k_2_1_1 < Seq#Length(Heap[x, ss_1]) && (j_4_1_1 >= 0 && (j_4_1_1 < Seq#Length(Heap[x, ss_1]) && k_2_1_1 != j_4_1_1))) ==> Seq#Index(Heap[x, ss_1], k_2_1_1) != Seq#Index(Heap[x, ss_1], j_4_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.ss[j] is injective
      assert {:msg "  Folding P01(x, n) might fail. Quantified resource x.ss[j].f might not be injective. (functions.vpr@153.3--153.22) [68706]"}
        (forall j_5_1: int, j_5_2: int ::
        { neverTriggered52(j_5_1), neverTriggered52(j_5_2) }
        (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < 3)) && (0 <= j_5_2 && j_5_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_5_1) != Seq#Index(Heap[x, ss_1], j_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P01(x, n) might fail. There might be insufficient permission to access x.ss[j].f (functions.vpr@153.3--153.22) [68707]"}
        (forall j_5_1: int ::
        { Seq#Index(Heap[x, ss_1], j_5_1) } { Seq#Index(Heap[x, ss_1], j_5_1) }
        0 <= j_5_1 && j_5_1 < 3 ==> Mask[Seq#Index(Heap[x, ss_1], j_5_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.ss[j]
      assume (forall j_5_1: int ::
        { Seq#Index(Heap[x, ss_1], j_5_1) } { Seq#Index(Heap[x, ss_1], j_5_1) }
        (0 <= j_5_1 && j_5_1 < 3) && NoPerm < FullPerm ==> qpRange52(Seq#Index(Heap[x, ss_1], j_5_1)) && invRecv52(Seq#Index(Heap[x, ss_1], j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv52(o_4) }
        (0 <= invRecv52(o_4) && invRecv52(o_4) < 3) && (NoPerm < FullPerm && qpRange52(o_4)) ==> Seq#Index(Heap[x, ss_1], invRecv52(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv52(o_4) && invRecv52(o_4) < 3) && (NoPerm < FullPerm && qpRange52(o_4)) ==> Seq#Index(Heap[x, ss_1], invRecv52(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((0 <= invRecv52(o_4) && invRecv52(o_4) < 3) && (NoPerm < FullPerm && qpRange52(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.ss[j] is injective
      assert {:msg "  Folding P01(x, n) might fail. Quantified resource x.ss[j].f might not be injective. (functions.vpr@153.3--153.22) [68709]"}
        (forall j_6_1: int, j_6_2: int ::
        { neverTriggered53(j_6_1), neverTriggered53(j_6_2) }
        (((j_6_1 != j_6_2 && (3 <= j_6_1 && j_6_1 < n)) && (3 <= j_6_2 && j_6_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_6_1) != Seq#Index(Heap[x, ss_1], j_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P01(x, n) might fail. There might be insufficient permission to access x.ss[j].f (functions.vpr@153.3--153.22) [68710]"}
        (forall j_6_1: int ::
        { Seq#Index(Heap[x, ss_1], j_6_1) } { Seq#Index(Heap[x, ss_1], j_6_1) }
        3 <= j_6_1 && j_6_1 < n ==> Mask[Seq#Index(Heap[x, ss_1], j_6_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.ss[j]
      assume (forall j_6_1: int ::
        { Seq#Index(Heap[x, ss_1], j_6_1) } { Seq#Index(Heap[x, ss_1], j_6_1) }
        (3 <= j_6_1 && j_6_1 < n) && NoPerm < FullPerm ==> qpRange53(Seq#Index(Heap[x, ss_1], j_6_1)) && invRecv53(Seq#Index(Heap[x, ss_1], j_6_1)) == j_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv53(o_4) }
        (3 <= invRecv53(o_4) && invRecv53(o_4) < n) && (NoPerm < FullPerm && qpRange53(o_4)) ==> Seq#Index(Heap[x, ss_1], invRecv53(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((3 <= invRecv53(o_4) && invRecv53(o_4) < n) && (NoPerm < FullPerm && qpRange53(o_4)) ==> Seq#Index(Heap[x, ss_1], invRecv53(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((3 <= invRecv53(o_4) && invRecv53(o_4) < n) && (NoPerm < FullPerm && qpRange53(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P01(x, n):=Mask[null, P01(x, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P01#trigger(Heap, P01(x, n));
    assume Heap[null, P01(x, n)] == CombineFrames(FrameFragment(Heap[x, ss_1]), CombineFrames(FrameFragment(P01#condqp7(Heap, x, n)), FrameFragment(P01#condqp8(Heap, x, n))));
    if (!HasDirectPerm(Mask, null, P01(x, n))) {
      Heap := Heap[null, P01#sm(x, n):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P01(x, n):=freshVersion];
    }
    Heap := Heap[null, P01#sm(x, n):=Heap[null, P01#sm(x, n)][x, ss_1:=true]];
    // register all known folded permissions guarded by predicate P01
    havoc newPMask;
    assume (forall <A, B> o_49: Ref, f_33: (Field A B) ::
      { newPMask[o_49, f_33] }
      Heap[null, P01#sm(x, n)][o_49, f_33] ==> newPMask[o_49, f_33]
    );
    assume (forall j_7_1: int ::
      
      0 <= j_7_1 && j_7_1 < 3 ==> newPMask[Seq#Index(Heap[x, ss_1], j_7_1), f_7]
    );
    Heap := Heap[null, P01#sm(x, n):=newPMask];
    // register all known folded permissions guarded by predicate P01
    havoc newPMask;
    assume (forall <A, B> o_45: Ref, f_63: (Field A B) ::
      { newPMask[o_45, f_63] }
      Heap[null, P01#sm(x, n)][o_45, f_63] ==> newPMask[o_45, f_63]
    );
    assume (forall j_8: int ::
      
      3 <= j_8 && j_8 < n ==> newPMask[Seq#Index(Heap[x, ss_1], j_8), f_7]
    );
    Heap := Heap[null, P01#sm(x, n):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v1 == fun04(x, n, 2) -- functions.vpr@155.3--155.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of v1 == fun04(x, n, 2)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04 might not hold. There might be insufficient permission to access P01(x, n) (functions.vpr@155.16--155.30) [68712]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P01(x, n)];
        assert {:msg "  Precondition of function fun04 might not hold. Assertion 2 < n might not hold. (functions.vpr@155.16--155.30) [68713]"}
          2 < n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v1 == fun04(x, n, 2) might not hold. (functions.vpr@155.10--155.30) [68714]"}
      v1 == fun04(Heap, x, n, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v2 == fun04(x, n, 4) -- functions.vpr@156.3--156.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of v2 == fun04(x, n, 4)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04 might not hold. There might be insufficient permission to access P01(x, n) (functions.vpr@156.16--156.30) [68715]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P01(x, n)];
        assert {:msg "  Precondition of function fun04 might not hold. Assertion 4 < n might not hold. (functions.vpr@156.16--156.30) [68716]"}
          4 < n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v2 == fun04(x, n, 4) might not hold. (functions.vpr@156.10--156.30) [68717]"}
      v2 == fun04(Heap, x, n, 4);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P01(x, n), write) -- functions.vpr@158.3--158.24
    assume P01#trigger(Heap, P01(x, n));
    assume Heap[null, P01(x, n)] == CombineFrames(FrameFragment(Heap[x, ss_1]), CombineFrames(FrameFragment(P01#condqp7(Heap, x, n)), FrameFragment(P01#condqp8(Heap, x, n))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P01(x, n) might fail. There might be insufficient permission to access P01(x, n) (functions.vpr@158.3--158.24) [68720]"}
        perm <= Mask[null, P01(x, n)];
    }
    Mask := Mask[null, P01(x, n):=Mask[null, P01(x, n)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P01(x, n))) {
        havoc newVersion;
        Heap := Heap[null, P01(x, n):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, ss_1:=Mask[x, ss_1] + perm];
    assume state(Heap, Mask);
    assume Seq#Length(Heap[x, ss_1]) == n;
    assume 3 <= n;
    assume (forall k_3: int, j_9_1: int ::
      { Seq#Index(Heap[x, ss_1], k_3), Seq#Index(Heap[x, ss_1], j_9_1) }
      k_3 >= 0 && (k_3 < Seq#Length(Heap[x, ss_1]) && (j_9_1 >= 0 && (j_9_1 < Seq#Length(Heap[x, ss_1]) && k_3 != j_9_1))) ==> Seq#Index(Heap[x, ss_1], k_3) != Seq#Index(Heap[x, ss_1], j_9_1)
    );
    havoc QPMask;
    assert {:msg "  Unfolding P01(x, n) might fail. Quantified resource x.ss[j].f might not be injective. (functions.vpr@158.3--158.24) [68722]"}
      (forall j_10_2: int, j_10_3: int ::
      
      (((j_10_2 != j_10_3 && (0 <= j_10_2 && j_10_2 < 3)) && (0 <= j_10_3 && j_10_3 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_10_2) != Seq#Index(Heap[x, ss_1], j_10_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_10_2: int ::
        { Seq#Index(Heap[x, ss_1], j_10_2) } { Seq#Index(Heap[x, ss_1], j_10_2) }
        (0 <= j_10_2 && j_10_2 < 3) && NoPerm < FullPerm ==> qpRange54(Seq#Index(Heap[x, ss_1], j_10_2)) && invRecv54(Seq#Index(Heap[x, ss_1], j_10_2)) == j_10_2
      );
      assume (forall o_4: Ref ::
        { invRecv54(o_4) }
        ((0 <= invRecv54(o_4) && invRecv54(o_4) < 3) && NoPerm < FullPerm) && qpRange54(o_4) ==> Seq#Index(Heap[x, ss_1], invRecv54(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_10_2: int ::
        { Seq#Index(Heap[x, ss_1], j_10_2) } { Seq#Index(Heap[x, ss_1], j_10_2) }
        0 <= j_10_2 && j_10_2 < 3 ==> Seq#Index(Heap[x, ss_1], j_10_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv54(o_4) && invRecv54(o_4) < 3) && NoPerm < FullPerm) && qpRange54(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], invRecv54(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv54(o_4) && invRecv54(o_4) < 3) && NoPerm < FullPerm) && qpRange54(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P01(x, n) might fail. Quantified resource x.ss[j].f might not be injective. (functions.vpr@158.3--158.24) [68723]"}
      (forall j_11_2: int, j_11_3: int ::
      
      (((j_11_2 != j_11_3 && (3 <= j_11_2 && j_11_2 < n)) && (3 <= j_11_3 && j_11_3 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_11_2) != Seq#Index(Heap[x, ss_1], j_11_3)
    );
    
    // -- Define Inverse Function
      assume (forall j_11_2: int ::
        { Seq#Index(Heap[x, ss_1], j_11_2) } { Seq#Index(Heap[x, ss_1], j_11_2) }
        (3 <= j_11_2 && j_11_2 < n) && NoPerm < FullPerm ==> qpRange55(Seq#Index(Heap[x, ss_1], j_11_2)) && invRecv55(Seq#Index(Heap[x, ss_1], j_11_2)) == j_11_2
      );
      assume (forall o_4: Ref ::
        { invRecv55(o_4) }
        ((3 <= invRecv55(o_4) && invRecv55(o_4) < n) && NoPerm < FullPerm) && qpRange55(o_4) ==> Seq#Index(Heap[x, ss_1], invRecv55(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_11_2: int ::
        { Seq#Index(Heap[x, ss_1], j_11_2) } { Seq#Index(Heap[x, ss_1], j_11_2) }
        3 <= j_11_2 && j_11_2 < n ==> Seq#Index(Heap[x, ss_1], j_11_2) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((3 <= invRecv55(o_4) && invRecv55(o_4) < n) && NoPerm < FullPerm) && qpRange55(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], invRecv55(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((3 <= invRecv55(o_4) && invRecv55(o_4) < n) && NoPerm < FullPerm) && qpRange55(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.ss[4].f := 0 -- functions.vpr@159.3--159.17
    
    // -- Check definedness of x.ss[4]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.ss (functions.vpr@159.3--159.17) [68724]"}
        HasDirectPerm(Mask, x, ss_1);
      assert {:msg "  Assignment might fail. Index x.ss[4] into x.ss might exceed sequence length. (functions.vpr@159.3--159.17) [68725]"}
        4 < Seq#Length(Heap[x, ss_1]);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.ss[4].f (functions.vpr@159.3--159.17) [68726]"}
      FullPerm == Mask[Seq#Index(Heap[x, ss_1], 4), f_7];
    Heap := Heap[Seq#Index(Heap[x, ss_1], 4), f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P01(x, n), write) -- functions.vpr@160.3--160.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P01(x, n) might fail. There might be insufficient permission to access x.ss (functions.vpr@160.3--160.22) [68729]"}
        perm <= Mask[x, ss_1];
    }
    Mask := Mask[x, ss_1:=Mask[x, ss_1] - perm];
    assert {:msg "  Folding P01(x, n) might fail. Assertion |x.ss| == n might not hold. (functions.vpr@160.3--160.22) [68730]"}
      Seq#Length(Heap[x, ss_1]) == n;
    assert {:msg "  Folding P01(x, n) might fail. Assertion 3 <= n might not hold. (functions.vpr@160.3--160.22) [68731]"}
      3 <= n;
    if (*) {
      if (k_4_1 >= 0 && (k_4_1 < Seq#Length(Heap[x, ss_1]) && (j_12_2 >= 0 && (j_12_2 < Seq#Length(Heap[x, ss_1]) && k_4_1 != j_12_2)))) {
        assert {:msg "  Folding P01(x, n) might fail. Assertion x.ss[k] != x.ss[j] might not hold. (functions.vpr@160.3--160.22) [68732]"}
          Seq#Index(Heap[x, ss_1], k_4_1) != Seq#Index(Heap[x, ss_1], j_12_2);
      }
      assume false;
    }
    assume (forall k_5_1_1: int, j_13_1: int ::
      { Seq#Index(Heap[x, ss_1], k_5_1_1), Seq#Index(Heap[x, ss_1], j_13_1) }
      k_5_1_1 >= 0 && (k_5_1_1 < Seq#Length(Heap[x, ss_1]) && (j_13_1 >= 0 && (j_13_1 < Seq#Length(Heap[x, ss_1]) && k_5_1_1 != j_13_1))) ==> Seq#Index(Heap[x, ss_1], k_5_1_1) != Seq#Index(Heap[x, ss_1], j_13_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.ss[j] is injective
      assert {:msg "  Folding P01(x, n) might fail. Quantified resource x.ss[j].f might not be injective. (functions.vpr@160.3--160.22) [68734]"}
        (forall j_14_1: int, j_14_2: int ::
        { neverTriggered56(j_14_1), neverTriggered56(j_14_2) }
        (((j_14_1 != j_14_2 && (0 <= j_14_1 && j_14_1 < 3)) && (0 <= j_14_2 && j_14_2 < 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_14_1) != Seq#Index(Heap[x, ss_1], j_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P01(x, n) might fail. There might be insufficient permission to access x.ss[j].f (functions.vpr@160.3--160.22) [68735]"}
        (forall j_14_1: int ::
        { Seq#Index(Heap[x, ss_1], j_14_1) } { Seq#Index(Heap[x, ss_1], j_14_1) }
        0 <= j_14_1 && j_14_1 < 3 ==> Mask[Seq#Index(Heap[x, ss_1], j_14_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.ss[j]
      assume (forall j_14_1: int ::
        { Seq#Index(Heap[x, ss_1], j_14_1) } { Seq#Index(Heap[x, ss_1], j_14_1) }
        (0 <= j_14_1 && j_14_1 < 3) && NoPerm < FullPerm ==> qpRange56(Seq#Index(Heap[x, ss_1], j_14_1)) && invRecv56(Seq#Index(Heap[x, ss_1], j_14_1)) == j_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv56(o_4) }
        (0 <= invRecv56(o_4) && invRecv56(o_4) < 3) && (NoPerm < FullPerm && qpRange56(o_4)) ==> Seq#Index(Heap[x, ss_1], invRecv56(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv56(o_4) && invRecv56(o_4) < 3) && (NoPerm < FullPerm && qpRange56(o_4)) ==> Seq#Index(Heap[x, ss_1], invRecv56(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((0 <= invRecv56(o_4) && invRecv56(o_4) < 3) && (NoPerm < FullPerm && qpRange56(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.ss[j] is injective
      assert {:msg "  Folding P01(x, n) might fail. Quantified resource x.ss[j].f might not be injective. (functions.vpr@160.3--160.22) [68737]"}
        (forall j_15_1: int, j_15_2: int ::
        { neverTriggered57(j_15_1), neverTriggered57(j_15_2) }
        (((j_15_1 != j_15_2 && (3 <= j_15_1 && j_15_1 < n)) && (3 <= j_15_2 && j_15_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[x, ss_1], j_15_1) != Seq#Index(Heap[x, ss_1], j_15_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P01(x, n) might fail. There might be insufficient permission to access x.ss[j].f (functions.vpr@160.3--160.22) [68738]"}
        (forall j_15_1: int ::
        { Seq#Index(Heap[x, ss_1], j_15_1) } { Seq#Index(Heap[x, ss_1], j_15_1) }
        3 <= j_15_1 && j_15_1 < n ==> Mask[Seq#Index(Heap[x, ss_1], j_15_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.ss[j]
      assume (forall j_15_1: int ::
        { Seq#Index(Heap[x, ss_1], j_15_1) } { Seq#Index(Heap[x, ss_1], j_15_1) }
        (3 <= j_15_1 && j_15_1 < n) && NoPerm < FullPerm ==> qpRange57(Seq#Index(Heap[x, ss_1], j_15_1)) && invRecv57(Seq#Index(Heap[x, ss_1], j_15_1)) == j_15_1
      );
      assume (forall o_4: Ref ::
        { invRecv57(o_4) }
        (3 <= invRecv57(o_4) && invRecv57(o_4) < n) && (NoPerm < FullPerm && qpRange57(o_4)) ==> Seq#Index(Heap[x, ss_1], invRecv57(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((3 <= invRecv57(o_4) && invRecv57(o_4) < n) && (NoPerm < FullPerm && qpRange57(o_4)) ==> Seq#Index(Heap[x, ss_1], invRecv57(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((3 <= invRecv57(o_4) && invRecv57(o_4) < n) && (NoPerm < FullPerm && qpRange57(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P01(x, n):=Mask[null, P01(x, n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P01#trigger(Heap, P01(x, n));
    assume Heap[null, P01(x, n)] == CombineFrames(FrameFragment(Heap[x, ss_1]), CombineFrames(FrameFragment(P01#condqp7(Heap, x, n)), FrameFragment(P01#condqp8(Heap, x, n))));
    if (!HasDirectPerm(Mask, null, P01(x, n))) {
      Heap := Heap[null, P01#sm(x, n):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P01(x, n):=freshVersion];
    }
    Heap := Heap[null, P01#sm(x, n):=Heap[null, P01#sm(x, n)][x, ss_1:=true]];
    // register all known folded permissions guarded by predicate P01
    havoc newPMask;
    assume (forall <A, B> o_61: Ref, f_64: (Field A B) ::
      { newPMask[o_61, f_64] }
      Heap[null, P01#sm(x, n)][o_61, f_64] ==> newPMask[o_61, f_64]
    );
    assume (forall j_16_2: int ::
      
      0 <= j_16_2 && j_16_2 < 3 ==> newPMask[Seq#Index(Heap[x, ss_1], j_16_2), f_7]
    );
    Heap := Heap[null, P01#sm(x, n):=newPMask];
    // register all known folded permissions guarded by predicate P01
    havoc newPMask;
    assume (forall <A, B> o_62: Ref, f_65: (Field A B) ::
      { newPMask[o_62, f_65] }
      Heap[null, P01#sm(x, n)][o_62, f_65] ==> newPMask[o_62, f_65]
    );
    assume (forall j_17_1: int ::
      
      3 <= j_17_1 && j_17_1 < n ==> newPMask[Seq#Index(Heap[x, ss_1], j_17_1), f_7]
    );
    Heap := Heap[null, P01#sm(x, n):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v1 == fun04(x, n, 2) -- functions.vpr@162.3--162.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of v1 == fun04(x, n, 2)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04 might not hold. There might be insufficient permission to access P01(x, n) (functions.vpr@162.16--162.30) [68740]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P01(x, n)];
        assert {:msg "  Precondition of function fun04 might not hold. Assertion 2 < n might not hold. (functions.vpr@162.16--162.30) [68741]"}
          2 < n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v1 == fun04(x, n, 2) might not hold. (functions.vpr@162.10--162.30) [68742]"}
      v1 == fun04(Heap, x, n, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v2 == fun04(x, n, 4) -- functions.vpr@164.3--164.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of v2 == fun04(x, n, 4)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun04 might not hold. There might be insufficient permission to access P01(x, n) (functions.vpr@164.16--164.30) [68743]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P01(x, n)];
        assert {:msg "  Precondition of function fun04 might not hold. Assertion 4 < n might not hold. (functions.vpr@164.16--164.30) [68744]"}
          4 < n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v2 == fun04(x, n, 4) might not hold. (functions.vpr@164.10--164.30) [68745]"}
      v2 == fun04(Heap, x, n, 4);
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
  var k_44: int;
  var j_40: int;
  var i_90: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var k_2_1: int;
  var i_2_1: int;
  var ExhaleHeap: HeapType;
  var k_4_1: int;
  var j_2_1: int;
  var k_6: int;
  var i_5: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall k: Int, j: Int ::
  //     { xs[k], xs[j] }
  //     k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==>
  //     xs[k] != xs[j]) -- functions.vpr@185.3--185.104
    
    // -- Check definedness of (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
      if (*) {
        if (k_44 >= 0 && (k_44 < Seq#Length(xs) && (j_40 >= 0 && (j_40 < Seq#Length(xs) && k_44 != j_40)))) {
          assert {:msg "  Inhale might fail. Index xs[k] into xs might be negative. (functions.vpr@185.10--185.104) [68746]"}
            k_44 >= 0;
          assert {:msg "  Inhale might fail. Index xs[k] into xs might exceed sequence length. (functions.vpr@185.10--185.104) [68747]"}
            k_44 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (functions.vpr@185.10--185.104) [68748]"}
            j_40 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (functions.vpr@185.10--185.104) [68749]"}
            j_40 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall k_1_1: int, j_1: int ::
      { Seq#Index(xs, k_1_1), Seq#Index(xs, j_1) }
      k_1_1 >= 0 && (k_1_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && k_1_1 != j_1))) ==> Seq#Index(xs, k_1_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { xs[i] }
  //     0 <= i && i < |xs| ==> acc(xs[i].f, write)) -- functions.vpr@186.3--186.62
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_90 && i_90 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (functions.vpr@186.10--186.62) [68750]"}
            i_90 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (functions.vpr@186.10--186.62) [68751]"}
            i_90 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[i].f might not be injective. (functions.vpr@186.10--186.62) [68752]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < Seq#Length(xs))) && (0 <= i_1_1 && i_1_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_1) != Seq#Index(xs, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
        (0 <= i_1 && i_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange58(Seq#Index(xs, i_1)) && invRecv58(Seq#Index(xs, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv58(o_4) }
        ((0 <= invRecv58(o_4) && invRecv58(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange58(o_4) ==> Seq#Index(xs, invRecv58(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(xs, i_1) } { Seq#Index(xs, i_1) }
        0 <= i_1 && i_1 < Seq#Length(xs) ==> Seq#Index(xs, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv58(o_4) && invRecv58(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange58(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv58(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv58(o_4) && invRecv58(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange58(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale |xs| > 3 -- functions.vpr@187.3--187.18
    assume Seq#Length(xs) > 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun07(xs, -10) >= 0 -- functions.vpr@189.3--189.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun07(xs, -10) >= 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (*) {
          if (k_2_1 >= 0 && (k_2_1 < Seq#Length(xs) && (i_2_1 >= 0 && (i_2_1 < Seq#Length(xs) && k_2_1 != i_2_1)))) {
            assert {:msg "  Precondition of function fun07 might not hold. Assertion xs[k] != xs[i] might not hold. (functions.vpr@189.10--189.24) [68753]"}
              Seq#Index(xs, k_2_1) != Seq#Index(xs, i_2_1);
          }
          assume false;
        }
        assume (forall k_3_1_1: int, i_3_1_1: int ::
          { Seq#Index(xs, k_3_1_1), Seq#Index(xs, i_3_1_1) }
          k_3_1_1 >= 0 && (k_3_1_1 < Seq#Length(xs) && (i_3_1_1 >= 0 && (i_3_1_1 < Seq#Length(xs) && k_3_1_1 != i_3_1_1))) ==> Seq#Index(xs, k_3_1_1) != Seq#Index(xs, i_3_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun07 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@189.10--189.24) [68754]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered59(i_4_1), neverTriggered59(i_4_2) }
            (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < Seq#Length(xs))) && (0 <= i_4_2 && i_4_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_4_1) != Seq#Index(xs, i_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun07 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@189.10--189.24) [68755]"}
            (forall i_4_1: int ::
            { Seq#Index(xs, i_4_1) } { Seq#Index(xs, i_4_1) }
            0 <= i_4_1 && i_4_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_4_1: int ::
            { Seq#Index(xs, i_4_1) } { Seq#Index(xs, i_4_1) }
            (0 <= i_4_1 && i_4_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange59(Seq#Index(xs, i_4_1)) && invRecv59(Seq#Index(xs, i_4_1)) == i_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv59(o_4) }
            (0 <= invRecv59(o_4) && invRecv59(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange59(o_4)) ==> Seq#Index(xs, invRecv59(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun07(xs, -10) >= 0 might not hold. (functions.vpr@189.10--189.29) [68756]"}
      fun07(Heap, xs, -10) >= 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun08(xs, 2) > xs[2].f -- functions.vpr@190.3--190.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun08(xs, 2) > xs[2].f
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (*) {
          if (k_4_1 >= 0 && (k_4_1 < Seq#Length(xs) && (j_2_1 >= 0 && (j_2_1 < Seq#Length(xs) && k_4_1 != j_2_1)))) {
            assert {:msg "  Precondition of function fun08 might not hold. Assertion xs[k] != xs[j] might not hold. (functions.vpr@190.10--190.22) [68757]"}
              Seq#Index(xs, k_4_1) != Seq#Index(xs, j_2_1);
          }
          assume false;
        }
        assume (forall k_5_1_1: int, j_3_1_1: int ::
          { Seq#Index(xs, k_5_1_1), Seq#Index(xs, j_3_1_1) }
          k_5_1_1 >= 0 && (k_5_1_1 < Seq#Length(xs) && (j_3_1_1 >= 0 && (j_3_1_1 < Seq#Length(xs) && k_5_1_1 != j_3_1_1))) ==> Seq#Index(xs, k_5_1_1) != Seq#Index(xs, j_3_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[j] is injective
          assert {:msg "  Precondition of function fun08 might not hold. Quantified resource xs[j].f might not be injective. (functions.vpr@190.10--190.22) [68758]"}
            (forall j_4_1: int, j_4_2: int ::
            { neverTriggered60(j_4_1), neverTriggered60(j_4_2) }
            (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < Seq#Length(xs))) && (0 <= j_4_2 && j_4_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, j_4_1) != Seq#Index(xs, j_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun08 might not hold. There might be insufficient permission to access xs[j].f (functions.vpr@190.10--190.22) [68759]"}
            (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            0 <= j_4_1 && j_4_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, j_4_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[j]
          assume (forall j_4_1: int ::
            { Seq#Index(xs, j_4_1) } { Seq#Index(xs, j_4_1) }
            (0 <= j_4_1 && j_4_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange60(Seq#Index(xs, j_4_1)) && invRecv60(Seq#Index(xs, j_4_1)) == j_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv60(o_4) }
            (0 <= invRecv60(o_4) && invRecv60(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange60(o_4)) ==> Seq#Index(xs, invRecv60(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun08 might not hold. Assertion 2 < |xs| might not hold. (functions.vpr@190.10--190.22) [68760]"}
          2 < Seq#Length(xs);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. Index xs[2] into xs might exceed sequence length. (functions.vpr@190.10--190.32) [68761]"}
        2 < Seq#Length(xs);
      assert {:msg "  Assert might fail. There might be insufficient permission to access xs[2].f (functions.vpr@190.10--190.32) [68762]"}
        HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(xs, 2), f_7);
    assert {:msg "  Assert might fail. Assertion fun08(xs, 2) > xs[2].f might not hold. (functions.vpr@190.10--190.32) [68763]"}
      fun08(Heap, xs, 2) > Heap[Seq#Index(xs, 2), f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun07(xs, -10) > 0 -- functions.vpr@193.3--193.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun07(xs, -10) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if (*) {
          if (k_6 >= 0 && (k_6 < Seq#Length(xs) && (i_5 >= 0 && (i_5 < Seq#Length(xs) && k_6 != i_5)))) {
            assert {:msg "  Precondition of function fun07 might not hold. Assertion xs[k] != xs[i] might not hold. (functions.vpr@193.10--193.24) [68764]"}
              Seq#Index(xs, k_6) != Seq#Index(xs, i_5);
          }
          assume false;
        }
        assume (forall k_7_1_1: int, i_6_1_1: int ::
          { Seq#Index(xs, k_7_1_1), Seq#Index(xs, i_6_1_1) }
          k_7_1_1 >= 0 && (k_7_1_1 < Seq#Length(xs) && (i_6_1_1 >= 0 && (i_6_1_1 < Seq#Length(xs) && k_7_1_1 != i_6_1_1))) ==> Seq#Index(xs, k_7_1_1) != Seq#Index(xs, i_6_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver xs[i] is injective
          assert {:msg "  Precondition of function fun07 might not hold. Quantified resource xs[i].f might not be injective. (functions.vpr@193.10--193.24) [68765]"}
            (forall i_7_1: int, i_7_2: int ::
            { neverTriggered61(i_7_1), neverTriggered61(i_7_2) }
            (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < Seq#Length(xs))) && (0 <= i_7_2 && i_7_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_7_1) != Seq#Index(xs, i_7_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun07 might not hold. There might be insufficient permission to access xs[i].f (functions.vpr@193.10--193.24) [68766]"}
            (forall i_7_1: int ::
            { Seq#Index(xs, i_7_1) } { Seq#Index(xs, i_7_1) }
            0 <= i_7_1 && i_7_1 < Seq#Length(xs) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[Seq#Index(xs, i_7_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver xs[i]
          assume (forall i_7_1: int ::
            { Seq#Index(xs, i_7_1) } { Seq#Index(xs, i_7_1) }
            (0 <= i_7_1 && i_7_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange61(Seq#Index(xs, i_7_1)) && invRecv61(Seq#Index(xs, i_7_1)) == i_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv61(o_4) }
            (0 <= invRecv61(o_4) && invRecv61(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange61(o_4)) ==> Seq#Index(xs, invRecv61(o_4)) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun07(xs, -10) > 0 might not hold. (functions.vpr@193.10--193.28) [68767]"}
      fun07(Heap, xs, -10) > 0;
    assume state(Heap, Mask);
}