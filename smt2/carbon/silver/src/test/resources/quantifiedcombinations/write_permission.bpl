// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:56:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/write_permission.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/write_permission-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_13: Ref, f_18: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_13, f_18] }
  Heap[o_13, $allocated] ==> Heap[Heap[o_13, f_18], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_14: Ref, f_19: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_14, f_19] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_14, f_19) ==> Heap[o_14, f_19] == ExhaleHeap[o_14, f_19]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6), ExhaleHeap[null, PredicateMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> Heap[null, PredicateMaskField(pm_f_6)] == ExhaleHeap[null, PredicateMaskField(pm_f_6)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_6, f_19] }
    Heap[null, PredicateMaskField(pm_f_6)][o2_6, f_19] ==> Heap[o2_6, f_19] == ExhaleHeap[o2_6, f_19]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6), ExhaleHeap[null, WandMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> Heap[null, WandMaskField(pm_f_6)] == ExhaleHeap[null, WandMaskField(pm_f_6)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_6, f_19] }
    Heap[null, WandMaskField(pm_f_6)][o2_6, f_19] ==> Heap[o2_6, f_19] == ExhaleHeap[o2_6, f_19]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_14: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_14, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_14, $allocated] ==> ExhaleHeap[o_14, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_13: Ref, f_13: (Field A B), v: B ::
  { Heap[o_13, f_13:=v] }
  succHeap(Heap, Heap[o_13, f_13:=v])
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
function  neverTriggered3(x_5: Ref): bool;
function  neverTriggered4(x_7: Ref): bool;
function  neverTriggered5(x_8_1: Ref): bool;
function  neverTriggered6(x_9_2: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_3: Ref): bool;
function  neverTriggered9(x_5: Ref): bool;
function  neverTriggered10(x_7: Ref): bool;
function  neverTriggered11(x_8_1: Ref): bool;
function  neverTriggered12(x_9_2: Ref): bool;
function  neverTriggered13(x_1: Ref): bool;
function  neverTriggered14(x_3: Ref): bool;
function  neverTriggered15(x_5: Ref): bool;
function  neverTriggered16(x_7: Ref): bool;
function  neverTriggered17(x_8_1: Ref): bool;
function  neverTriggered18(x_9_2: Ref): bool;
function  neverTriggered19(x_1: Ref): bool;
function  neverTriggered20(x_4: Ref): bool;
function  neverTriggered21(x_6: Ref): bool;
function  neverTriggered22(x_9_2: Ref): bool;
function  neverTriggered23(x_10_1: Ref): bool;
function  neverTriggered24(x_11_1: Ref): bool;
function  neverTriggered25(x_1: Ref): bool;
function  neverTriggered26(x_4: Ref): bool;
function  neverTriggered27(x_6: Ref): bool;
function  neverTriggered28(x_9_2: Ref): bool;
function  neverTriggered29(x_10_1: Ref): bool;
function  neverTriggered30(x_11_1: Ref): bool;
function  neverTriggered31(x_1: Ref): bool;
function  neverTriggered32(x_4: Ref): bool;
function  neverTriggered33(x_6: Ref): bool;
function  neverTriggered34(x_9_2: Ref): bool;
function  neverTriggered35(x_10_1: Ref): bool;
function  neverTriggered36(x_11_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(recv: Ref): Ref;
function  invRecv15(recv: Ref): Ref;
function  invRecv16(recv: Ref): Ref;
function  invRecv17(recv: Ref): Ref;
function  invRecv18(recv: Ref): Ref;
function  invRecv19(r_1_1_1: Ref): Ref;
function  invRecv20(recv: Ref): Ref;
function  invRecv21(r_2_1_1: Ref): Ref;
function  invRecv22(recv: Ref): Ref;
function  invRecv23(r_3_1: Ref): Ref;
function  invRecv24(recv: Ref): Ref;
function  invRecv25(r_1_1_1: Ref): Ref;
function  invRecv26(recv: Ref): Ref;
function  invRecv27(r_2_1_1: Ref): Ref;
function  invRecv28(recv: Ref): Ref;
function  invRecv29(r_3_1: Ref): Ref;
function  invRecv30(recv: Ref): Ref;
function  invRecv31(r_1_1_1: Ref, i_1_1_1: int): Ref;
function  invRecv32(recv: Ref): Ref;
function  invRecv33(r_2_1_1: Ref, i_2_1_1: int): Ref;
function  invRecv34(recv: Ref): Ref;
function  invRecv35(r_3_1: Ref, i_3_1_1: int): Ref;
function  invRecv36(recv: Ref): Ref;
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
function  qpRange19(r_1_1_1: Ref): bool;
function  qpRange20(recv: Ref): bool;
function  qpRange21(r_2_1_1: Ref): bool;
function  qpRange22(recv: Ref): bool;
function  qpRange23(r_3_1: Ref): bool;
function  qpRange24(recv: Ref): bool;
function  qpRange25(r_1_1_1: Ref): bool;
function  qpRange26(recv: Ref): bool;
function  qpRange27(r_2_1_1: Ref): bool;
function  qpRange28(recv: Ref): bool;
function  qpRange29(r_3_1: Ref): bool;
function  qpRange30(recv: Ref): bool;
function  qpRange31(r_1_1_1: Ref, i_1_1_1: int): bool;
function  qpRange32(recv: Ref): bool;
function  qpRange33(r_2_1_1: Ref, i_2_1_1: int): bool;
function  qpRange34(recv: Ref): bool;
function  qpRange35(r_3_1: Ref, i_3_1_1: int): bool;
function  qpRange36(recv: Ref): bool;

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
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(r_1: Ref): Field PredicateType_p FrameType;
function  p#sm(r_1: Ref): Field PredicateType_p PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(p_14(r_1)) }
  PredicateMaskField(p_14(r_1)) == p#sm(r_1)
);
axiom (forall r_1: Ref ::
  { p_14(r_1) }
  IsPredicateField(p_14(r_1))
);
axiom (forall r_1: Ref ::
  { p_14(r_1) }
  getPredWandId(p_14(r_1)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { p_14(r_1), p_14(r2) }
  p_14(r_1) == p_14(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { p#sm(r_1), p#sm(r2) }
  p#sm(r_1) == p#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { p#trigger(Heap, p_14(r_1)) }
  p#everUsed(p_14(r_1))
);

procedure p#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(r_1: Ref, i: int): Field PredicateType_p2 FrameType;
function  p2#sm(r_1: Ref, i: int): Field PredicateType_p2 PMaskType;
axiom (forall r_1: Ref, i: int ::
  { PredicateMaskField(p2(r_1, i)) }
  PredicateMaskField(p2(r_1, i)) == p2#sm(r_1, i)
);
axiom (forall r_1: Ref, i: int ::
  { p2(r_1, i) }
  IsPredicateField(p2(r_1, i))
);
axiom (forall r_1: Ref, i: int ::
  { p2(r_1, i) }
  getPredWandId(p2(r_1, i)) == 1
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { p2(r_1, i), p2(r2, i2_1) }
  p2(r_1, i) == p2(r2, i2_1) ==> r_1 == r2 && i == i2_1
);
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { p2#sm(r_1, i), p2#sm(r2, i2_1) }
  p2#sm(r_1, i) == p2#sm(r2, i2_1) ==> r_1 == r2 && i == i2_1
);

axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { p2#trigger(Heap, p2(r_1, i)) }
  p2#everUsed(p2(r_1, i))
);

procedure p2#definedness(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (write_permission.vpr@11.1--13.2) [104105]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == i;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1_1
// ==================================================

procedure m1_1(r_1: Ref, xs: (Seq Ref), i: int) returns ()
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
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, r_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@17.10--17.87) [104106]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && (Seq#Contains(xs, x_1) && i > 0)) && (Seq#Contains(xs, x_1_1) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        (Seq#Contains(xs, x_1) && i > 0) && NoPerm < FullPerm ==> qpRange1(x_1) && invRecv1(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((Seq#Contains(xs, invRecv1(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && i > 0 ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((Seq#Contains(xs, invRecv1(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(xs, invRecv1(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i <= 0 ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@17.10--17.87) [104107]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && (Seq#Contains(xs, x_3) && i <= 0)) && (Seq#Contains(xs, x_3_1) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        (Seq#Contains(xs, x_3) && i <= 0) && NoPerm < FullPerm ==> qpRange2(x_3) && invRecv2(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((Seq#Contains(xs, invRecv2(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && i <= 0 ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv2(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv2(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@18.9--18.86) [104108]"}
      (forall x_5: Ref, x_5_1: Ref ::
      
      (((x_5 != x_5_1 && (Seq#Contains(xs, x_5) && i > 0)) && (Seq#Contains(xs, x_5_1) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
    );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        (Seq#Contains(xs, x_5) && i > 0) && NoPerm < FullPerm ==> qpRange3(x_5) && invRecv3(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((Seq#Contains(xs, invRecv3(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && i > 0 ==> x_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((Seq#Contains(xs, invRecv3(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(xs, invRecv3(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i <= 0 ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@18.9--18.86) [104109]"}
      (forall x_7: Ref, x_7_1: Ref ::
      
      (((x_7 != x_7_1 && (Seq#Contains(xs, x_7) && i <= 0)) && (Seq#Contains(xs, x_7_1) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
    );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        (Seq#Contains(xs, x_7) && i <= 0) && NoPerm < FullPerm ==> qpRange4(x_7) && invRecv4(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((Seq#Contains(xs, invRecv4(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && i <= 0 ==> x_7 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv4(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv4(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i > 0) {
      
      // -- Check definedness of r.f == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (write_permission.vpr@19.9--19.27) [104110]"}
          HasDirectPerm(PostMask, r_1, f_7);
      assume PostHeap[r_1, f_7] == 1;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i > 0) -- write_permission.vpr@21.5--25.6
    if (i > 0) {
      
      // -- Translating statement: r.f := 1 -- write_permission.vpr@22.9--22.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (write_permission.vpr@22.9--22.17) [104111]"}
          FullPerm == Mask[r_1, f_7];
        Heap := Heap[r_1, f_7:=1];
        assume state(Heap, Mask);
      
      // -- Translating statement: r.g := 2 -- write_permission.vpr@24.9--24.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.g (write_permission.vpr@24.9--24.17) [104112]"}
          FullPerm == Mask[r_1, g];
        Heap := Heap[r_1, g:=2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@18.9--18.86) [104113]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered5(x_8_1), neverTriggered5(x_8_2) }
        (((x_8_1 != x_8_2 && (Seq#Contains(xs, x_8_1) && i > 0)) && (Seq#Contains(xs, x_8_2) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1_1 might not hold. There might be insufficient permission to access x.f (write_permission.vpr@18.9--18.86) [104114]"}
        (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && i > 0 ==> Mask[x_8_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        (Seq#Contains(xs, x_8_1) && i > 0) && NoPerm < FullPerm ==> qpRange5(x_8_1) && invRecv5(x_8_1) == x_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (Seq#Contains(xs, invRecv5(o_4)) && i > 0) && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv5(o_4)) && i > 0) && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((Seq#Contains(xs, invRecv5(o_4)) && i > 0) && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@18.9--18.86) [104115]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered6(x_9_2), neverTriggered6(x_9_3) }
        (((x_9_2 != x_9_3 && (Seq#Contains(xs, x_9_2) && i <= 0)) && (Seq#Contains(xs, x_9_3) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1_1 might not hold. There might be insufficient permission to access x.g (write_permission.vpr@18.9--18.86) [104116]"}
        (forall x_9_2: Ref ::
        { Heap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && i <= 0 ==> Mask[x_9_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_9_2: Ref ::
        { Heap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        (Seq#Contains(xs, x_9_2) && i <= 0) && NoPerm < FullPerm ==> qpRange6(x_9_2) && invRecv6(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (Seq#Contains(xs, invRecv6(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv6(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!((Seq#Contains(xs, invRecv6(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (i > 0) {
      assert {:msg "  Postcondition of m1_1 might not hold. Assertion r.f == 1 might not hold. (write_permission.vpr@19.9--19.27) [104117]"}
        Heap[r_1, f_7] == 1;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m1_2
// ==================================================

procedure m1_2(r_1: Ref, xs: (Seq Ref), i: int) returns ()
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
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, r_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@31.10--31.87) [104118]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && (Seq#Contains(xs, x_1) && i > 0)) && (Seq#Contains(xs, x_1_1) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        (Seq#Contains(xs, x_1) && i > 0) && NoPerm < FullPerm ==> qpRange7(x_1) && invRecv7(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        ((Seq#Contains(xs, invRecv7(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && i > 0 ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((Seq#Contains(xs, invRecv7(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(xs, invRecv7(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i <= 0 ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@31.10--31.87) [104119]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && (Seq#Contains(xs, x_3) && i <= 0)) && (Seq#Contains(xs, x_3_1) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        (Seq#Contains(xs, x_3) && i <= 0) && NoPerm < FullPerm ==> qpRange8(x_3) && invRecv8(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((Seq#Contains(xs, invRecv8(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && i <= 0 ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv8(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv8(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@32.9--32.86) [104120]"}
      (forall x_5: Ref, x_5_1: Ref ::
      
      (((x_5 != x_5_1 && (Seq#Contains(xs, x_5) && i > 0)) && (Seq#Contains(xs, x_5_1) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
    );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        (Seq#Contains(xs, x_5) && i > 0) && NoPerm < FullPerm ==> qpRange9(x_5) && invRecv9(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((Seq#Contains(xs, invRecv9(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange9(o_4) ==> invRecv9(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && i > 0 ==> x_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((Seq#Contains(xs, invRecv9(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> invRecv9(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(xs, invRecv9(o_4)) && i > 0) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i <= 0 ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@32.9--32.86) [104121]"}
      (forall x_7: Ref, x_7_1: Ref ::
      
      (((x_7 != x_7_1 && (Seq#Contains(xs, x_7) && i <= 0)) && (Seq#Contains(xs, x_7_1) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
    );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        (Seq#Contains(xs, x_7) && i <= 0) && NoPerm < FullPerm ==> qpRange10(x_7) && invRecv10(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((Seq#Contains(xs, invRecv10(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange10(o_4) ==> invRecv10(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && i <= 0 ==> x_7 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv10(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> invRecv10(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv10(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i <= 0) {
      
      // -- Check definedness of r.g == 4
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.g (write_permission.vpr@33.9--33.28) [104122]"}
          HasDirectPerm(PostMask, r_1, g);
      assume PostHeap[r_1, g] == 4;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i <= 0) -- write_permission.vpr@35.5--39.6
    if (i <= 0) {
      
      // -- Translating statement: r.f := 3 -- write_permission.vpr@37.9--37.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (write_permission.vpr@37.9--37.17) [104123]"}
          FullPerm == Mask[r_1, f_7];
        Heap := Heap[r_1, f_7:=3];
        assume state(Heap, Mask);
      
      // -- Translating statement: r.g := 4 -- write_permission.vpr@38.9--38.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.g (write_permission.vpr@38.9--38.17) [104124]"}
          FullPerm == Mask[r_1, g];
        Heap := Heap[r_1, g:=4];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@32.9--32.86) [104125]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered11(x_8_1), neverTriggered11(x_8_2) }
        (((x_8_1 != x_8_2 && (Seq#Contains(xs, x_8_1) && i > 0)) && (Seq#Contains(xs, x_8_2) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1_2 might not hold. There might be insufficient permission to access x.f (write_permission.vpr@32.9--32.86) [104126]"}
        (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && i > 0 ==> Mask[x_8_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        (Seq#Contains(xs, x_8_1) && i > 0) && NoPerm < FullPerm ==> qpRange11(x_8_1) && invRecv11(x_8_1) == x_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (Seq#Contains(xs, invRecv11(o_4)) && i > 0) && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv11(o_4)) && i > 0) && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!((Seq#Contains(xs, invRecv11(o_4)) && i > 0) && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@32.9--32.86) [104127]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered12(x_9_2), neverTriggered12(x_9_3) }
        (((x_9_2 != x_9_3 && (Seq#Contains(xs, x_9_2) && i <= 0)) && (Seq#Contains(xs, x_9_3) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1_2 might not hold. There might be insufficient permission to access x.g (write_permission.vpr@32.9--32.86) [104128]"}
        (forall x_9_2: Ref ::
        { Heap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && i <= 0 ==> Mask[x_9_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_9_2: Ref ::
        { Heap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        (Seq#Contains(xs, x_9_2) && i <= 0) && NoPerm < FullPerm ==> qpRange12(x_9_2) && invRecv12(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (Seq#Contains(xs, invRecv12(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv12(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!((Seq#Contains(xs, invRecv12(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (i <= 0) {
      assert {:msg "  Postcondition of m1_2 might not hold. Assertion r.g == 4 might not hold. (write_permission.vpr@33.9--33.28) [104129]"}
        Heap[r_1, g] == 4;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(r_1: Ref, xs: (Seq Ref), i: int) returns ()
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
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, r_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@45.10--45.58) [104130]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange13(x_1) && invRecv13(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Seq#Contains(xs, invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> invRecv13(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> invRecv13(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@45.10--45.58) [104131]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> qpRange14(x_3) && invRecv14(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (Seq#Contains(xs, invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> invRecv14(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> x_3 != null
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@46.9--46.57) [104132]"}
      (forall x_5: Ref, x_5_1: Ref ::
      
      (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
    );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> qpRange15(x_5) && invRecv15(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (Seq#Contains(xs, invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> invRecv15(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) ==> x_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> invRecv15(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@46.9--46.57) [104133]"}
      (forall x_7: Ref, x_7_1: Ref ::
      
      (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
    );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> qpRange16(x_7) && invRecv16(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (Seq#Contains(xs, invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> invRecv16(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_7: Ref ::
        { PostHeap[x_7, g] } { QPMask[x_7, g] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) ==> x_7 != null
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
    if (i > 0) {
      
      // -- Check definedness of r.f == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (write_permission.vpr@47.9--47.39) [104134]"}
          HasDirectPerm(PostMask, r_1, f_7);
      assume PostHeap[r_1, f_7] == 1;
      
      // -- Check definedness of r.g == 2
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.g (write_permission.vpr@47.9--47.39) [104135]"}
          HasDirectPerm(PostMask, r_1, g);
      assume PostHeap[r_1, g] == 2;
    }
    assume state(PostHeap, PostMask);
    if (i <= 0) {
      
      // -- Check definedness of r.g == 4
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.g (write_permission.vpr@48.9--48.40) [104136]"}
          HasDirectPerm(PostMask, r_1, g);
      assume PostHeap[r_1, g] == 4;
      
      // -- Check definedness of r.f == 3
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (write_permission.vpr@48.9--48.40) [104137]"}
          HasDirectPerm(PostMask, r_1, f_7);
      assume PostHeap[r_1, f_7] == 3;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i > 0) -- write_permission.vpr@50.5--56.6
    if (i > 0) {
      
      // -- Translating statement: r.f := 1 -- write_permission.vpr@51.9--51.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (write_permission.vpr@51.9--51.17) [104138]"}
          FullPerm == Mask[r_1, f_7];
        Heap := Heap[r_1, f_7:=1];
        assume state(Heap, Mask);
      
      // -- Translating statement: r.g := 2 -- write_permission.vpr@52.9--52.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.g (write_permission.vpr@52.9--52.17) [104139]"}
          FullPerm == Mask[r_1, g];
        Heap := Heap[r_1, g:=2];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: r.f := 3 -- write_permission.vpr@54.9--54.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (write_permission.vpr@54.9--54.17) [104140]"}
          FullPerm == Mask[r_1, f_7];
        Heap := Heap[r_1, f_7:=3];
        assume state(Heap, Mask);
      
      // -- Translating statement: r.g := 4 -- write_permission.vpr@55.9--55.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.g (write_permission.vpr@55.9--55.17) [104141]"}
          FullPerm == Mask[r_1, g];
        Heap := Heap[r_1, g:=4];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (write_permission.vpr@46.9--46.57) [104142]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered17(x_8_1), neverTriggered17(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access x.f (write_permission.vpr@46.9--46.57) [104143]"}
        (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) ==> Mask[x_8_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> qpRange17(x_8_1) && invRecv17(x_8_1) == x_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        Seq#Contains(xs, invRecv17(o_4)) && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv17(o_4)) && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv17(o_4)) && (NoPerm < FullPerm && qpRange17(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@46.9--46.57) [104144]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered18(x_9_2), neverTriggered18(x_9_3) }
        (((x_9_2 != x_9_3 && Seq#Contains(xs, x_9_2)) && Seq#Contains(xs, x_9_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access x.g (write_permission.vpr@46.9--46.57) [104145]"}
        (forall x_9_2: Ref ::
        { Heap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) ==> Mask[x_9_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_9_2: Ref ::
        { Heap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && NoPerm < FullPerm ==> qpRange18(x_9_2) && invRecv18(x_9_2) == x_9_2
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
    if (i > 0) {
      assert {:msg "  Postcondition of m2 might not hold. Assertion r.f == 1 might not hold. (write_permission.vpr@47.9--47.39) [104146]"}
        Heap[r_1, f_7] == 1;
      assert {:msg "  Postcondition of m2 might not hold. Assertion r.g == 2 might not hold. (write_permission.vpr@47.9--47.39) [104147]"}
        Heap[r_1, g] == 2;
    }
    if (i <= 0) {
      assert {:msg "  Postcondition of m2 might not hold. Assertion r.g == 4 might not hold. (write_permission.vpr@48.9--48.40) [104148]"}
        Heap[r_1, g] == 4;
      assert {:msg "  Postcondition of m2 might not hold. Assertion r.f == 3 might not hold. (write_permission.vpr@48.9--48.40) [104149]"}
        Heap[r_1, f_7] == 3;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3_1
// ==================================================

procedure m3_1(r_1: Ref, xs: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, r_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> acc(p(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(x) might not be injective. (write_permission.vpr@62.10--62.88) [104150]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered19(x_1), neverTriggered19(x_1_1) }
        (((x_1 != x_1_1 && (Seq#Contains(xs, x_1) && i > 0)) && (Seq#Contains(xs, x_1_1) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, p_14(x_1)] } { Mask[null, p_14(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        (Seq#Contains(xs, x_1) && i > 0) && NoPerm < FullPerm ==> invRecv19(x_1) == x_1 && qpRange19(x_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv19(r_1_1_1) }
        ((Seq#Contains(xs, invRecv19(r_1_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange19(r_1_1_1) ==> invRecv19(r_1_1_1) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, p_14(r_1_1_1)] }
        ((Seq#Contains(xs, invRecv19(r_1_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange19(r_1_1_1) ==> (NoPerm < FullPerm ==> invRecv19(r_1_1_1) == r_1_1_1) && QPMask[null, p_14(r_1_1_1)] == Mask[null, p_14(r_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, p_14(r_1_1_1)] }
        !(((Seq#Contains(xs, invRecv19(r_1_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange19(r_1_1_1)) ==> QPMask[null, p_14(r_1_1_1)] == Mask[null, p_14(r_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i <= 0 ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@62.10--62.88) [104151]"}
      (forall x_4: Ref, x_4_1: Ref ::
      
      (((x_4 != x_4_1 && (Seq#Contains(xs, x_4) && i <= 0)) && (Seq#Contains(xs, x_4_1) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
    );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        (Seq#Contains(xs, x_4) && i <= 0) && NoPerm < FullPerm ==> qpRange20(x_4) && invRecv20(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        ((Seq#Contains(xs, invRecv20(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange20(o_4) ==> invRecv20(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) && i <= 0 ==> x_4 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv20(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> invRecv20(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv20(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> acc(p(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(x) might not be injective. (write_permission.vpr@63.9--63.87) [104152]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered21(x_6), neverTriggered21(x_6_1) }
        (((x_6 != x_6_1 && (Seq#Contains(xs, x_6) && i > 0)) && (Seq#Contains(xs, x_6_1) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
      );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { PostHeap[null, p_14(x_6)] } { PostMask[null, p_14(x_6)] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        (Seq#Contains(xs, x_6) && i > 0) && NoPerm < FullPerm ==> invRecv21(x_6) == x_6 && qpRange21(x_6)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv21(r_2_1_1) }
        ((Seq#Contains(xs, invRecv21(r_2_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange21(r_2_1_1) ==> invRecv21(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p_14(r_2_1_1)] }
        ((Seq#Contains(xs, invRecv21(r_2_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange21(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv21(r_2_1_1) == r_2_1_1) && QPMask[null, p_14(r_2_1_1)] == PostMask[null, p_14(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p_14(r_2_1_1)] }
        !(((Seq#Contains(xs, invRecv21(r_2_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange21(r_2_1_1)) ==> QPMask[null, p_14(r_2_1_1)] == PostMask[null, p_14(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i <= 0 ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@63.9--63.87) [104153]"}
      (forall x_9_2: Ref, x_9_3: Ref ::
      
      (((x_9_2 != x_9_3 && (Seq#Contains(xs, x_9_2) && i <= 0)) && (Seq#Contains(xs, x_9_3) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
    );
    
    // -- Define Inverse Function
      assume (forall x_9_2: Ref ::
        { PostHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        (Seq#Contains(xs, x_9_2) && i <= 0) && NoPerm < FullPerm ==> qpRange22(x_9_2) && invRecv22(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        ((Seq#Contains(xs, invRecv22(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange22(o_4) ==> invRecv22(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_9_2: Ref ::
        { PostHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && i <= 0 ==> x_9_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv22(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange22(o_4) ==> (NoPerm < FullPerm ==> invRecv22(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv22(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange22(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i > 0) {
      
      // -- Check definedness of (unfolding acc(p(r), write) in r.f == 1)
        UnfoldingHeap := PostHeap;
        UnfoldingMask := PostMask;
        assume p#trigger(UnfoldingHeap, p_14(r_1));
        assume UnfoldingHeap[null, p_14(r_1)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p(r) (write_permission.vpr@64.9--64.47) [104154]"}
            perm <= UnfoldingMask[null, p_14(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, p_14(r_1):=UnfoldingMask[null, p_14(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (write_permission.vpr@64.9--64.47) [104155]"}
          HasDirectPerm(UnfoldingMask, r_1, f_7);
        
        // -- Free assumptions (exp module)
          PostHeap := PostHeap[null, p#sm(r_1):=PostHeap[null, p#sm(r_1)][r_1, f_7:=true]];
          assume state(PostHeap, PostMask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := PostHeap;
        UnfoldingMask := PostMask;
        assume p#trigger(UnfoldingHeap, p_14(r_1));
        assume UnfoldingHeap[null, p_14(r_1)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, p_14(r_1):=UnfoldingMask[null, p_14(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
      assume PostHeap[r_1, f_7] == 1;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i > 0) -- write_permission.vpr@66.5--72.6
    if (i > 0) {
      
      // -- Translating statement: unfold acc(p(r), write) -- write_permission.vpr@67.9--67.20
        assume p#trigger(Heap, p_14(r_1));
        assume Heap[null, p_14(r_1)] == FrameFragment(Heap[r_1, f_7]);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding p(r) might fail. There might be insufficient permission to access p(r) (write_permission.vpr@67.9--67.20) [104158]"}
            perm <= Mask[null, p_14(r_1)];
        }
        Mask := Mask[null, p_14(r_1):=Mask[null, p_14(r_1)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, p_14(r_1))) {
            havoc newVersion;
            Heap := Heap[null, p_14(r_1):=newVersion];
          }
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: r.f := 1 -- write_permission.vpr@68.9--68.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (write_permission.vpr@68.9--68.17) [104160]"}
          FullPerm == Mask[r_1, f_7];
        Heap := Heap[r_1, f_7:=1];
        assume state(Heap, Mask);
      
      // -- Translating statement: r.g := 2 -- write_permission.vpr@70.9--70.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.g (write_permission.vpr@70.9--70.17) [104161]"}
          FullPerm == Mask[r_1, g];
        Heap := Heap[r_1, g:=2];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(p(r), write) -- write_permission.vpr@71.9--71.18
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding p(r) might fail. There might be insufficient permission to access r.f (write_permission.vpr@71.9--71.18) [104164]"}
            perm <= Mask[r_1, f_7];
        }
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
        perm := FullPerm;
        Mask := Mask[null, p_14(r_1):=Mask[null, p_14(r_1)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume p#trigger(Heap, p_14(r_1));
        assume Heap[null, p_14(r_1)] == FrameFragment(Heap[r_1, f_7]);
        if (!HasDirectPerm(Mask, null, p_14(r_1))) {
          Heap := Heap[null, p#sm(r_1):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, p_14(r_1):=freshVersion];
        }
        Heap := Heap[null, p#sm(r_1):=Heap[null, p#sm(r_1)][r_1, f_7:=true]];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(x) might not be injective. (write_permission.vpr@63.9--63.87) [104166]"}
        (forall x_10_1: Ref, x_10_2: Ref ::
        { neverTriggered23(x_10_1), neverTriggered23(x_10_2) }
        (((x_10_1 != x_10_2 && (Seq#Contains(xs, x_10_1) && i > 0)) && (Seq#Contains(xs, x_10_2) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_10_1 != x_10_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3_1 might not hold. There might be insufficient permission to access p(x) (write_permission.vpr@63.9--63.87) [104167]"}
        (forall x_10_1: Ref ::
        { Heap[null, p_14(x_10_1)] } { Mask[null, p_14(x_10_1)] } { Seq#ContainsTrigger(xs, x_10_1) } { Seq#Contains(xs, x_10_1) }
        Seq#Contains(xs, x_10_1) && i > 0 ==> Mask[null, p_14(x_10_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(x), write)
      assume (forall x_10_1: Ref ::
        { Heap[null, p_14(x_10_1)] } { Mask[null, p_14(x_10_1)] } { Seq#ContainsTrigger(xs, x_10_1) } { Seq#Contains(xs, x_10_1) }
        (Seq#Contains(xs, x_10_1) && i > 0) && NoPerm < FullPerm ==> invRecv23(x_10_1) == x_10_1 && qpRange23(x_10_1)
      );
      assume (forall r_3_1: Ref ::
        { invRecv23(r_3_1) }
        ((Seq#Contains(xs, invRecv23(r_3_1)) && i > 0) && NoPerm < FullPerm) && qpRange23(r_3_1) ==> invRecv23(r_3_1) == r_3_1
      );
    
    // -- assume permission updates
      assume (forall r_3_1: Ref ::
        { QPMask[null, p_14(r_3_1)] }
        ((Seq#Contains(xs, invRecv23(r_3_1)) && i > 0) && NoPerm < FullPerm) && qpRange23(r_3_1) ==> invRecv23(r_3_1) == r_3_1 && QPMask[null, p_14(r_3_1)] == Mask[null, p_14(r_3_1)] - FullPerm
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, p_14(r_3_1)] }
        !(((Seq#Contains(xs, invRecv23(r_3_1)) && i > 0) && NoPerm < FullPerm) && qpRange23(r_3_1)) ==> QPMask[null, p_14(r_3_1)] == Mask[null, p_14(r_3_1)]
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
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@63.9--63.87) [104168]"}
        (forall x_11_1: Ref, x_11_2: Ref ::
        { neverTriggered24(x_11_1), neverTriggered24(x_11_2) }
        (((x_11_1 != x_11_2 && (Seq#Contains(xs, x_11_1) && i <= 0)) && (Seq#Contains(xs, x_11_2) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3_1 might not hold. There might be insufficient permission to access x.g (write_permission.vpr@63.9--63.87) [104169]"}
        (forall x_11_1: Ref ::
        { Heap[x_11_1, g] } { QPMask[x_11_1, g] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && i <= 0 ==> Mask[x_11_1, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_11_1: Ref ::
        { Heap[x_11_1, g] } { QPMask[x_11_1, g] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        (Seq#Contains(xs, x_11_1) && i <= 0) && NoPerm < FullPerm ==> qpRange24(x_11_1) && invRecv24(x_11_1) == x_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        (Seq#Contains(xs, invRecv24(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange24(o_4)) ==> invRecv24(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv24(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange24(o_4)) ==> invRecv24(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!((Seq#Contains(xs, invRecv24(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange24(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (i > 0) {
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume p#trigger(UnfoldingHeap, p_14(r_1));
        assume UnfoldingHeap[null, p_14(r_1)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of m3_1 might not hold. There might be insufficient permission to access p(r) (write_permission.vpr@64.9--64.47) [104170]"}
            perm <= UnfoldingMask[null, p_14(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, p_14(r_1):=UnfoldingMask[null, p_14(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Postcondition of m3_1 might not hold. Assertion r.f == 1 might not hold. (write_permission.vpr@64.9--64.47) [104171]"}
        Heap[r_1, f_7] == 1;
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, p#sm(r_1):=Heap[null, p#sm(r_1)][r_1, f_7:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3_2
// ==================================================

procedure m3_2(r_1: Ref, xs: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, r_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> acc(p(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(x) might not be injective. (write_permission.vpr@78.10--78.88) [104172]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered25(x_1), neverTriggered25(x_1_1) }
        (((x_1 != x_1_1 && (Seq#Contains(xs, x_1) && i > 0)) && (Seq#Contains(xs, x_1_1) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, p_14(x_1)] } { Mask[null, p_14(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        (Seq#Contains(xs, x_1) && i > 0) && NoPerm < FullPerm ==> invRecv25(x_1) == x_1 && qpRange25(x_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv25(r_1_1_1) }
        ((Seq#Contains(xs, invRecv25(r_1_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange25(r_1_1_1) ==> invRecv25(r_1_1_1) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, p_14(r_1_1_1)] }
        ((Seq#Contains(xs, invRecv25(r_1_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange25(r_1_1_1) ==> (NoPerm < FullPerm ==> invRecv25(r_1_1_1) == r_1_1_1) && QPMask[null, p_14(r_1_1_1)] == Mask[null, p_14(r_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, p_14(r_1_1_1)] }
        !(((Seq#Contains(xs, invRecv25(r_1_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange25(r_1_1_1)) ==> QPMask[null, p_14(r_1_1_1)] == Mask[null, p_14(r_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i <= 0 ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@78.10--78.88) [104173]"}
      (forall x_4: Ref, x_4_1: Ref ::
      
      (((x_4 != x_4_1 && (Seq#Contains(xs, x_4) && i <= 0)) && (Seq#Contains(xs, x_4_1) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
    );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        (Seq#Contains(xs, x_4) && i <= 0) && NoPerm < FullPerm ==> qpRange26(x_4) && invRecv26(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        ((Seq#Contains(xs, invRecv26(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange26(o_4) ==> invRecv26(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) && i <= 0 ==> x_4 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv26(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange26(o_4) ==> (NoPerm < FullPerm ==> invRecv26(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv26(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange26(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> acc(p(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(x) might not be injective. (write_permission.vpr@79.9--79.87) [104174]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered27(x_6), neverTriggered27(x_6_1) }
        (((x_6 != x_6_1 && (Seq#Contains(xs, x_6) && i > 0)) && (Seq#Contains(xs, x_6_1) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
      );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { PostHeap[null, p_14(x_6)] } { PostMask[null, p_14(x_6)] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        (Seq#Contains(xs, x_6) && i > 0) && NoPerm < FullPerm ==> invRecv27(x_6) == x_6 && qpRange27(x_6)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv27(r_2_1_1) }
        ((Seq#Contains(xs, invRecv27(r_2_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange27(r_2_1_1) ==> invRecv27(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p_14(r_2_1_1)] }
        ((Seq#Contains(xs, invRecv27(r_2_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange27(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv27(r_2_1_1) == r_2_1_1) && QPMask[null, p_14(r_2_1_1)] == PostMask[null, p_14(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p_14(r_2_1_1)] }
        !(((Seq#Contains(xs, invRecv27(r_2_1_1)) && i > 0) && NoPerm < FullPerm) && qpRange27(r_2_1_1)) ==> QPMask[null, p_14(r_2_1_1)] == PostMask[null, p_14(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && i <= 0 ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@79.9--79.87) [104175]"}
      (forall x_9_2: Ref, x_9_3: Ref ::
      
      (((x_9_2 != x_9_3 && (Seq#Contains(xs, x_9_2) && i <= 0)) && (Seq#Contains(xs, x_9_3) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
    );
    
    // -- Define Inverse Function
      assume (forall x_9_2: Ref ::
        { PostHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        (Seq#Contains(xs, x_9_2) && i <= 0) && NoPerm < FullPerm ==> qpRange28(x_9_2) && invRecv28(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv28(o_4) }
        ((Seq#Contains(xs, invRecv28(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange28(o_4) ==> invRecv28(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_9_2: Ref ::
        { PostHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && i <= 0 ==> x_9_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv28(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange28(o_4) ==> (NoPerm < FullPerm ==> invRecv28(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv28(o_4)) && i <= 0) && NoPerm < FullPerm) && qpRange28(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i <= 0) {
      
      // -- Check definedness of r.g == 4
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.g (write_permission.vpr@80.9--80.28) [104176]"}
          HasDirectPerm(PostMask, r_1, g);
      assume PostHeap[r_1, g] == 4;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i <= 0) -- write_permission.vpr@82.5--88.6
    if (i <= 0) {
      
      // -- Translating statement: unfold acc(p(r), write) -- write_permission.vpr@84.9--84.20
        assume p#trigger(Heap, p_14(r_1));
        assume Heap[null, p_14(r_1)] == FrameFragment(Heap[r_1, f_7]);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding p(r) might fail. There might be insufficient permission to access p(r) (write_permission.vpr@84.9--84.20) [104179]"}
            perm <= Mask[null, p_14(r_1)];
        }
        Mask := Mask[null, p_14(r_1):=Mask[null, p_14(r_1)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, p_14(r_1))) {
            havoc newVersion;
            Heap := Heap[null, p_14(r_1):=newVersion];
          }
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: r.f := 3 -- write_permission.vpr@85.9--85.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (write_permission.vpr@85.9--85.17) [104181]"}
          FullPerm == Mask[r_1, f_7];
        Heap := Heap[r_1, f_7:=3];
        assume state(Heap, Mask);
      
      // -- Translating statement: r.g := 4 -- write_permission.vpr@86.9--86.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.g (write_permission.vpr@86.9--86.17) [104182]"}
          FullPerm == Mask[r_1, g];
        Heap := Heap[r_1, g:=4];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(p(r), write) -- write_permission.vpr@87.9--87.18
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding p(r) might fail. There might be insufficient permission to access r.f (write_permission.vpr@87.9--87.18) [104185]"}
            perm <= Mask[r_1, f_7];
        }
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
        perm := FullPerm;
        Mask := Mask[null, p_14(r_1):=Mask[null, p_14(r_1)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume p#trigger(Heap, p_14(r_1));
        assume Heap[null, p_14(r_1)] == FrameFragment(Heap[r_1, f_7]);
        if (!HasDirectPerm(Mask, null, p_14(r_1))) {
          Heap := Heap[null, p#sm(r_1):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, p_14(r_1):=freshVersion];
        }
        Heap := Heap[null, p#sm(r_1):=Heap[null, p#sm(r_1)][r_1, f_7:=true]];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(x) might not be injective. (write_permission.vpr@79.9--79.87) [104187]"}
        (forall x_10_1: Ref, x_10_2: Ref ::
        { neverTriggered29(x_10_1), neverTriggered29(x_10_2) }
        (((x_10_1 != x_10_2 && (Seq#Contains(xs, x_10_1) && i > 0)) && (Seq#Contains(xs, x_10_2) && i > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_10_1 != x_10_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3_2 might not hold. There might be insufficient permission to access p(x) (write_permission.vpr@79.9--79.87) [104188]"}
        (forall x_10_1: Ref ::
        { Heap[null, p_14(x_10_1)] } { Mask[null, p_14(x_10_1)] } { Seq#ContainsTrigger(xs, x_10_1) } { Seq#Contains(xs, x_10_1) }
        Seq#Contains(xs, x_10_1) && i > 0 ==> Mask[null, p_14(x_10_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(x), write)
      assume (forall x_10_1: Ref ::
        { Heap[null, p_14(x_10_1)] } { Mask[null, p_14(x_10_1)] } { Seq#ContainsTrigger(xs, x_10_1) } { Seq#Contains(xs, x_10_1) }
        (Seq#Contains(xs, x_10_1) && i > 0) && NoPerm < FullPerm ==> invRecv29(x_10_1) == x_10_1 && qpRange29(x_10_1)
      );
      assume (forall r_3_1: Ref ::
        { invRecv29(r_3_1) }
        ((Seq#Contains(xs, invRecv29(r_3_1)) && i > 0) && NoPerm < FullPerm) && qpRange29(r_3_1) ==> invRecv29(r_3_1) == r_3_1
      );
    
    // -- assume permission updates
      assume (forall r_3_1: Ref ::
        { QPMask[null, p_14(r_3_1)] }
        ((Seq#Contains(xs, invRecv29(r_3_1)) && i > 0) && NoPerm < FullPerm) && qpRange29(r_3_1) ==> invRecv29(r_3_1) == r_3_1 && QPMask[null, p_14(r_3_1)] == Mask[null, p_14(r_3_1)] - FullPerm
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, p_14(r_3_1)] }
        !(((Seq#Contains(xs, invRecv29(r_3_1)) && i > 0) && NoPerm < FullPerm) && qpRange29(r_3_1)) ==> QPMask[null, p_14(r_3_1)] == Mask[null, p_14(r_3_1)]
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
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@79.9--79.87) [104189]"}
        (forall x_11_1: Ref, x_11_2: Ref ::
        { neverTriggered30(x_11_1), neverTriggered30(x_11_2) }
        (((x_11_1 != x_11_2 && (Seq#Contains(xs, x_11_1) && i <= 0)) && (Seq#Contains(xs, x_11_2) && i <= 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3_2 might not hold. There might be insufficient permission to access x.g (write_permission.vpr@79.9--79.87) [104190]"}
        (forall x_11_1: Ref ::
        { Heap[x_11_1, g] } { QPMask[x_11_1, g] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && i <= 0 ==> Mask[x_11_1, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_11_1: Ref ::
        { Heap[x_11_1, g] } { QPMask[x_11_1, g] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        (Seq#Contains(xs, x_11_1) && i <= 0) && NoPerm < FullPerm ==> qpRange30(x_11_1) && invRecv30(x_11_1) == x_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv30(o_4) }
        (Seq#Contains(xs, invRecv30(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange30(o_4)) ==> invRecv30(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv30(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange30(o_4)) ==> invRecv30(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!((Seq#Contains(xs, invRecv30(o_4)) && i <= 0) && (NoPerm < FullPerm && qpRange30(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (i <= 0) {
      assert {:msg "  Postcondition of m3_2 might not hold. Assertion r.g == 4 might not hold. (write_permission.vpr@80.9--80.28) [104191]"}
        Heap[r_1, g] == 4;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(r_1: Ref, xs: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, r_1);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(p2(x, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(x, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(x, i) might not be injective. (write_permission.vpr@94.10--94.63) [104192]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered31(x_1), neverTriggered31(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1 || i != i
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, p2(x_1, i)] } { Mask[null, p2(x_1, i)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv31(x_1, i) == x_1 && qpRange31(x_1, i)
      );
      assume (forall r_1_1_1: Ref, i_1_1_1: int ::
        { invRecv31(r_1_1_1, i_1_1_1) }
        (Seq#Contains(xs, invRecv31(r_1_1_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange31(r_1_1_1, i_1_1_1) ==> invRecv31(r_1_1_1, i_1_1_1) == r_1_1_1 && i == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref, i_1_1_1: int ::
        { QPMask[null, p2(r_1_1_1, i_1_1_1)] }
        (Seq#Contains(xs, invRecv31(r_1_1_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange31(r_1_1_1, i_1_1_1) ==> (NoPerm < FullPerm ==> invRecv31(r_1_1_1, i_1_1_1) == r_1_1_1 && i == i_1_1_1) && QPMask[null, p2(r_1_1_1, i_1_1_1)] == Mask[null, p2(r_1_1_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1_1: Ref, i_1_1_1: int ::
        { QPMask[null, p2(r_1_1_1, i_1_1_1)] }
        !((Seq#Contains(xs, invRecv31(r_1_1_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange31(r_1_1_1, i_1_1_1)) ==> QPMask[null, p2(r_1_1_1, i_1_1_1)] == Mask[null, p2(r_1_1_1, i_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@94.10--94.63) [104193]"}
      (forall x_4: Ref, x_4_1: Ref ::
      
      (((x_4 != x_4_1 && Seq#Contains(xs, x_4)) && Seq#Contains(xs, x_4_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
    );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) && NoPerm < FullPerm ==> qpRange32(x_4) && invRecv32(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv32(o_4) }
        (Seq#Contains(xs, invRecv32(o_4)) && NoPerm < FullPerm) && qpRange32(o_4) ==> invRecv32(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) ==> x_4 != null
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(p2(x, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(x, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(x, i) might not be injective. (write_permission.vpr@95.9--95.62) [104194]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered33(x_6), neverTriggered33(x_6_1) }
        (((x_6 != x_6_1 && Seq#Contains(xs, x_6)) && Seq#Contains(xs, x_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1 || i != i
      );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { PostHeap[null, p2(x_6, i)] } { PostMask[null, p2(x_6, i)] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) && NoPerm < FullPerm ==> invRecv33(x_6, i) == x_6 && qpRange33(x_6, i)
      );
      assume (forall r_2_1_1: Ref, i_2_1_1: int ::
        { invRecv33(r_2_1_1, i_2_1_1) }
        (Seq#Contains(xs, invRecv33(r_2_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange33(r_2_1_1, i_2_1_1) ==> invRecv33(r_2_1_1, i_2_1_1) == r_2_1_1 && i == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref, i_2_1_1: int ::
        { QPMask[null, p2(r_2_1_1, i_2_1_1)] }
        (Seq#Contains(xs, invRecv33(r_2_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange33(r_2_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> invRecv33(r_2_1_1, i_2_1_1) == r_2_1_1 && i == i_2_1_1) && QPMask[null, p2(r_2_1_1, i_2_1_1)] == PostMask[null, p2(r_2_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref, i_2_1_1: int ::
        { QPMask[null, p2(r_2_1_1, i_2_1_1)] }
        !((Seq#Contains(xs, invRecv33(r_2_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange33(r_2_1_1, i_2_1_1)) ==> QPMask[null, p2(r_2_1_1, i_2_1_1)] == PostMask[null, p2(r_2_1_1, i_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@95.9--95.62) [104195]"}
      (forall x_9_2: Ref, x_9_3: Ref ::
      
      (((x_9_2 != x_9_3 && Seq#Contains(xs, x_9_2)) && Seq#Contains(xs, x_9_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
    );
    
    // -- Define Inverse Function
      assume (forall x_9_2: Ref ::
        { PostHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && NoPerm < FullPerm ==> qpRange34(x_9_2) && invRecv34(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv34(o_4) }
        (Seq#Contains(xs, invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> invRecv34(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_9_2: Ref ::
        { PostHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) ==> x_9_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Seq#Contains(xs, invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> (NoPerm < FullPerm ==> invRecv34(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((Seq#Contains(xs, invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i > 0) {
      
      // -- Check definedness of (unfolding acc(p2(r, i), write) in r.f == i && r.g == 2)
        UnfoldingHeap := PostHeap;
        UnfoldingMask := PostMask;
        assume p2#trigger(UnfoldingHeap, p2(r_1, i));
        assume UnfoldingHeap[null, p2(r_1, i)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p2(r, i) (write_permission.vpr@96.9--96.63) [104196]"}
            perm <= UnfoldingMask[null, p2(r_1, i)];
        }
        UnfoldingMask := UnfoldingMask[null, p2(r_1, i):=UnfoldingMask[null, p2(r_1, i)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, f_7] == i;
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (write_permission.vpr@96.9--96.63) [104197]"}
          HasDirectPerm(UnfoldingMask, r_1, f_7);
        if (UnfoldingHeap[r_1, f_7] == i) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.g (write_permission.vpr@96.9--96.63) [104198]"}
            HasDirectPerm(UnfoldingMask, r_1, g);
        }
        
        // -- Free assumptions (exp module)
          PostHeap := PostHeap[null, p2#sm(r_1, i):=PostHeap[null, p2#sm(r_1, i)][r_1, f_7:=true]];
          assume state(PostHeap, PostMask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := PostHeap;
        UnfoldingMask := PostMask;
        assume p2#trigger(UnfoldingHeap, p2(r_1, i));
        assume UnfoldingHeap[null, p2(r_1, i)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, p2(r_1, i):=UnfoldingMask[null, p2(r_1, i)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, f_7] == i;
        assume state(UnfoldingHeap, UnfoldingMask);
      assume PostHeap[r_1, f_7] == i && PostHeap[r_1, g] == 2;
    }
    assume state(PostHeap, PostMask);
    if (i <= 0) {
      
      // -- Check definedness of (unfolding acc(p2(r, i), write) in r.f == i && r.g == 4)
        UnfoldingHeap := PostHeap;
        UnfoldingMask := PostMask;
        assume p2#trigger(UnfoldingHeap, p2(r_1, i));
        assume UnfoldingHeap[null, p2(r_1, i)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p2(r, i) (write_permission.vpr@97.9--97.64) [104199]"}
            perm <= UnfoldingMask[null, p2(r_1, i)];
        }
        UnfoldingMask := UnfoldingMask[null, p2(r_1, i):=UnfoldingMask[null, p2(r_1, i)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, f_7] == i;
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (write_permission.vpr@97.9--97.64) [104200]"}
          HasDirectPerm(UnfoldingMask, r_1, f_7);
        if (UnfoldingHeap[r_1, f_7] == i) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.g (write_permission.vpr@97.9--97.64) [104201]"}
            HasDirectPerm(UnfoldingMask, r_1, g);
        }
        
        // -- Free assumptions (exp module)
          PostHeap := PostHeap[null, p2#sm(r_1, i):=PostHeap[null, p2#sm(r_1, i)][r_1, f_7:=true]];
          assume state(PostHeap, PostMask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := PostHeap;
        UnfoldingMask := PostMask;
        assume p2#trigger(UnfoldingHeap, p2(r_1, i));
        assume UnfoldingHeap[null, p2(r_1, i)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, p2(r_1, i):=UnfoldingMask[null, p2(r_1, i)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, f_7] == i;
        assume state(UnfoldingHeap, UnfoldingMask);
      assume PostHeap[r_1, f_7] == i && PostHeap[r_1, g] == 4;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i > 0) -- write_permission.vpr@99.5--109.6
    if (i > 0) {
      
      // -- Translating statement: unfold acc(p2(r, i), write) -- write_permission.vpr@100.9--100.24
        assume p2#trigger(Heap, p2(r_1, i));
        assume Heap[null, p2(r_1, i)] == FrameFragment(Heap[r_1, f_7]);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding p2(r, i) might fail. There might be insufficient permission to access p2(r, i) (write_permission.vpr@100.9--100.24) [104204]"}
            perm <= Mask[null, p2(r_1, i)];
        }
        Mask := Mask[null, p2(r_1, i):=Mask[null, p2(r_1, i)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, p2(r_1, i))) {
            havoc newVersion;
            Heap := Heap[null, p2(r_1, i):=newVersion];
          }
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
        assume state(Heap, Mask);
        assume Heap[r_1, f_7] == i;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert r.f == i -- write_permission.vpr@101.9--101.24
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of r.f == i
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (write_permission.vpr@101.16--101.24) [104206]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
        assert {:msg "  Assert might fail. Assertion r.f == i might not hold. (write_permission.vpr@101.16--101.24) [104207]"}
          Heap[r_1, f_7] == i;
        assume state(Heap, Mask);
      
      // -- Translating statement: r.g := 2 -- write_permission.vpr@102.9--102.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.g (write_permission.vpr@102.9--102.17) [104208]"}
          FullPerm == Mask[r_1, g];
        Heap := Heap[r_1, g:=2];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(p2(r, i), write) -- write_permission.vpr@103.9--103.22
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding p2(r, i) might fail. There might be insufficient permission to access r.f (write_permission.vpr@103.9--103.22) [104211]"}
            perm <= Mask[r_1, f_7];
        }
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
        assert {:msg "  Folding p2(r, i) might fail. Assertion r.f == i might not hold. (write_permission.vpr@103.9--103.22) [104212]"}
          Heap[r_1, f_7] == i;
        perm := FullPerm;
        Mask := Mask[null, p2(r_1, i):=Mask[null, p2(r_1, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume p2#trigger(Heap, p2(r_1, i));
        assume Heap[null, p2(r_1, i)] == FrameFragment(Heap[r_1, f_7]);
        if (!HasDirectPerm(Mask, null, p2(r_1, i))) {
          Heap := Heap[null, p2#sm(r_1, i):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, p2(r_1, i):=freshVersion];
        }
        Heap := Heap[null, p2#sm(r_1, i):=Heap[null, p2#sm(r_1, i)][r_1, f_7:=true]];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: unfold acc(p2(r, i), write) -- write_permission.vpr@105.9--105.24
        assume p2#trigger(Heap, p2(r_1, i));
        assume Heap[null, p2(r_1, i)] == FrameFragment(Heap[r_1, f_7]);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding p2(r, i) might fail. There might be insufficient permission to access p2(r, i) (write_permission.vpr@105.9--105.24) [104216]"}
            perm <= Mask[null, p2(r_1, i)];
        }
        Mask := Mask[null, p2(r_1, i):=Mask[null, p2(r_1, i)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, p2(r_1, i))) {
            havoc newVersion;
            Heap := Heap[null, p2(r_1, i):=newVersion];
          }
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
        assume state(Heap, Mask);
        assume Heap[r_1, f_7] == i;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert r.f == i -- write_permission.vpr@106.9--106.24
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of r.f == i
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (write_permission.vpr@106.16--106.24) [104218]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
        assert {:msg "  Assert might fail. Assertion r.f == i might not hold. (write_permission.vpr@106.16--106.24) [104219]"}
          Heap[r_1, f_7] == i;
        assume state(Heap, Mask);
      
      // -- Translating statement: r.g := 4 -- write_permission.vpr@107.9--107.17
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.g (write_permission.vpr@107.9--107.17) [104220]"}
          FullPerm == Mask[r_1, g];
        Heap := Heap[r_1, g:=4];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(p2(r, i), write) -- write_permission.vpr@108.9--108.22
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding p2(r, i) might fail. There might be insufficient permission to access r.f (write_permission.vpr@108.9--108.22) [104223]"}
            perm <= Mask[r_1, f_7];
        }
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
        assert {:msg "  Folding p2(r, i) might fail. Assertion r.f == i might not hold. (write_permission.vpr@108.9--108.22) [104224]"}
          Heap[r_1, f_7] == i;
        perm := FullPerm;
        Mask := Mask[null, p2(r_1, i):=Mask[null, p2(r_1, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume p2#trigger(Heap, p2(r_1, i));
        assume Heap[null, p2(r_1, i)] == FrameFragment(Heap[r_1, f_7]);
        if (!HasDirectPerm(Mask, null, p2(r_1, i))) {
          Heap := Heap[null, p2#sm(r_1, i):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, p2(r_1, i):=freshVersion];
        }
        Heap := Heap[null, p2#sm(r_1, i):=Heap[null, p2#sm(r_1, i)][r_1, f_7:=true]];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(x, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(x, i) might not be injective. (write_permission.vpr@95.9--95.62) [104226]"}
        (forall x_10_1: Ref, x_10_2: Ref ::
        { neverTriggered35(x_10_1), neverTriggered35(x_10_2) }
        (((x_10_1 != x_10_2 && Seq#Contains(xs, x_10_1)) && Seq#Contains(xs, x_10_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_10_1 != x_10_2 || i != i
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access p2(x, i) (write_permission.vpr@95.9--95.62) [104227]"}
        (forall x_10_1: Ref ::
        { Heap[null, p2(x_10_1, i)] } { Mask[null, p2(x_10_1, i)] } { Seq#ContainsTrigger(xs, x_10_1) } { Seq#Contains(xs, x_10_1) }
        Seq#Contains(xs, x_10_1) ==> Mask[null, p2(x_10_1, i)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(x, i), write)
      assume (forall x_10_1: Ref ::
        { Heap[null, p2(x_10_1, i)] } { Mask[null, p2(x_10_1, i)] } { Seq#ContainsTrigger(xs, x_10_1) } { Seq#Contains(xs, x_10_1) }
        Seq#Contains(xs, x_10_1) && NoPerm < FullPerm ==> invRecv35(x_10_1, i) == x_10_1 && qpRange35(x_10_1, i)
      );
      assume (forall r_3_1: Ref, i_3_1_1: int ::
        { invRecv35(r_3_1, i_3_1_1) }
        (Seq#Contains(xs, invRecv35(r_3_1, i_3_1_1)) && NoPerm < FullPerm) && qpRange35(r_3_1, i_3_1_1) ==> invRecv35(r_3_1, i_3_1_1) == r_3_1 && i == i_3_1_1
      );
    
    // -- assume permission updates
      assume (forall r_3_1: Ref, i_3_1_1: int ::
        { QPMask[null, p2(r_3_1, i_3_1_1)] }
        (Seq#Contains(xs, invRecv35(r_3_1, i_3_1_1)) && NoPerm < FullPerm) && qpRange35(r_3_1, i_3_1_1) ==> (invRecv35(r_3_1, i_3_1_1) == r_3_1 && i == i_3_1_1) && QPMask[null, p2(r_3_1, i_3_1_1)] == Mask[null, p2(r_3_1, i_3_1_1)] - FullPerm
      );
      assume (forall r_3_1: Ref, i_3_1_1: int ::
        { QPMask[null, p2(r_3_1, i_3_1_1)] }
        !((Seq#Contains(xs, invRecv35(r_3_1, i_3_1_1)) && NoPerm < FullPerm) && qpRange35(r_3_1, i_3_1_1)) ==> QPMask[null, p2(r_3_1, i_3_1_1)] == Mask[null, p2(r_3_1, i_3_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (write_permission.vpr@95.9--95.62) [104228]"}
        (forall x_11_1: Ref, x_11_2: Ref ::
        { neverTriggered36(x_11_1), neverTriggered36(x_11_2) }
        (((x_11_1 != x_11_2 && Seq#Contains(xs, x_11_1)) && Seq#Contains(xs, x_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access x.g (write_permission.vpr@95.9--95.62) [104229]"}
        (forall x_11_1: Ref ::
        { Heap[x_11_1, g] } { QPMask[x_11_1, g] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) ==> Mask[x_11_1, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_11_1: Ref ::
        { Heap[x_11_1, g] } { QPMask[x_11_1, g] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && NoPerm < FullPerm ==> qpRange36(x_11_1) && invRecv36(x_11_1) == x_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv36(o_4) }
        Seq#Contains(xs, invRecv36(o_4)) && (NoPerm < FullPerm && qpRange36(o_4)) ==> invRecv36(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Seq#Contains(xs, invRecv36(o_4)) && (NoPerm < FullPerm && qpRange36(o_4)) ==> invRecv36(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(Seq#Contains(xs, invRecv36(o_4)) && (NoPerm < FullPerm && qpRange36(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (i > 0) {
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume p2#trigger(UnfoldingHeap, p2(r_1, i));
        assume UnfoldingHeap[null, p2(r_1, i)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access p2(r, i) (write_permission.vpr@96.9--96.63) [104230]"}
            perm <= UnfoldingMask[null, p2(r_1, i)];
        }
        UnfoldingMask := UnfoldingMask[null, p2(r_1, i):=UnfoldingMask[null, p2(r_1, i)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, f_7] == i;
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Postcondition of m4 might not hold. Assertion r.f == i might not hold. (write_permission.vpr@96.9--96.63) [104231]"}
        Heap[r_1, f_7] == i;
      assert {:msg "  Postcondition of m4 might not hold. Assertion r.g == 2 might not hold. (write_permission.vpr@96.9--96.63) [104232]"}
        Heap[r_1, g] == 2;
    }
    if (i <= 0) {
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume p2#trigger(UnfoldingHeap, p2(r_1, i));
        assume UnfoldingHeap[null, p2(r_1, i)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access p2(r, i) (write_permission.vpr@97.9--97.64) [104233]"}
            perm <= UnfoldingMask[null, p2(r_1, i)];
        }
        UnfoldingMask := UnfoldingMask[null, p2(r_1, i):=UnfoldingMask[null, p2(r_1, i)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, f_7] == i;
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Postcondition of m4 might not hold. Assertion r.f == i might not hold. (write_permission.vpr@97.9--97.64) [104234]"}
        Heap[r_1, f_7] == i;
      assert {:msg "  Postcondition of m4 might not hold. Assertion r.g == 4 might not hold. (write_permission.vpr@97.9--97.64) [104235]"}
        Heap[r_1, g] == 4;
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, p2#sm(r_1, i):=Heap[null, p2#sm(r_1, i)][r_1, f_7:=true]];
      assume state(Heap, Mask);
      Heap := Heap[null, p2#sm(r_1, i):=Heap[null, p2#sm(r_1, i)][r_1, f_7:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}