// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:59:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/graph-copy/graph-copy.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/graph-copy/graph-copy-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_39: Ref, f_45: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_39, f_45] }
  Heap[o_39, $allocated] ==> Heap[Heap[o_39, f_45], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_50, f_51) ==> Heap[o_50, f_51] == ExhaleHeap[o_50, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25), ExhaleHeap[null, WandMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> Heap[null, WandMaskField(pm_f_25)] == ExhaleHeap[null, WandMaskField(pm_f_25)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_50, $allocated] ==> ExhaleHeap[o_50, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_39: Ref, f_18: (Field A B), v: B ::
  { Heap[o_39, f_18:=v] }
  succHeap(Heap, Heap[o_39, f_18:=v])
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
function  neverTriggered3(x_9_2: Ref): bool;
function  neverTriggered4(x_11_1: Ref): bool;
function  neverTriggered5(x_13_2: Ref): bool;
function  neverTriggered6(x_17_1: Ref): bool;
function  neverTriggered7(x_25_2: Ref): bool;
function  neverTriggered8(x_27_1: Ref): bool;
function  neverTriggered9(x_28_1: Ref): bool;
function  neverTriggered10(x_31_1: Ref): bool;
function  neverTriggered11(x_38_1: Ref): bool;
function  neverTriggered12(x_39_1: Ref): bool;
function  neverTriggered13(x_40_1: Ref): bool;
function  neverTriggered14(x_43_1: Ref): bool;
function  neverTriggered15(r_4: Ref): bool;
function  neverTriggered16(r_5: Ref): bool;
function  neverTriggered17(x_47: Ref): bool;
function  neverTriggered18(x_51: Ref): bool;
function  neverTriggered19(r_11_2: Ref): bool;
function  neverTriggered20(r_13_2: Ref): bool;
function  neverTriggered21(x_54: Ref): bool;
function  neverTriggered22(x_56: Ref): bool;
function  neverTriggered23(r_16: Ref): bool;
function  neverTriggered24(r_17: Ref): bool;
function  neverTriggered25(x_58: Ref): bool;
function  neverTriggered26(x_59: Ref): bool;
function  neverTriggered27(x_64: Ref): bool;
function  neverTriggered28(x_65: Ref): bool;
function  neverTriggered29(x_66: Ref): bool;
function  neverTriggered30(x_68: Ref): bool;
function  neverTriggered31(x_72: Ref): bool;
function  neverTriggered32(x_73: Ref): bool;
function  neverTriggered33(x_74: Ref): bool;
function  neverTriggered34(x_77: Ref): bool;
function  neverTriggered35(r_22: Ref): bool;
function  neverTriggered36(r_23_2: Ref): bool;
function  neverTriggered37(x_80: Ref): bool;
function  neverTriggered38(x_82: Ref): bool;
function  neverTriggered39(r_26_2: Ref): bool;
function  neverTriggered40(r_27_1: Ref): bool;
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
function  invRecv19(recv: Ref): Ref;
function  invRecv20(recv: Ref): Ref;
function  invRecv21(recv: Ref): Ref;
function  invRecv22(recv: Ref): Ref;
function  invRecv23(recv: Ref): Ref;
function  invRecv24(recv: Ref): Ref;
function  invRecv25(recv: Ref): Ref;
function  invRecv26(recv: Ref): Ref;
function  invRecv27(recv: Ref): Ref;
function  invRecv28(recv: Ref): Ref;
function  invRecv29(recv: Ref): Ref;
function  invRecv30(recv: Ref): Ref;
function  invRecv31(recv: Ref): Ref;
function  invRecv32(recv: Ref): Ref;
function  invRecv33(recv: Ref): Ref;
function  invRecv34(recv: Ref): Ref;
function  invRecv35(recv: Ref): Ref;
function  invRecv36(recv: Ref): Ref;
function  invRecv37(recv: Ref): Ref;
function  invRecv38(recv: Ref): Ref;
function  invRecv39(recv: Ref): Ref;
function  invRecv40(recv: Ref): Ref;
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
// Preamble of Set module.
// ==================================================


type Set T = [T]bool;

function Set#Card<T>(Set T): int;
axiom (forall<T> s: Set T :: { Set#Card(s) } 0 <= Set#Card(s));

function Set#Empty<T>(): Set T;
axiom (forall<T> o: T :: { Set#Empty()[o] } !Set#Empty()[o]);
axiom (forall<T> s: Set T :: { Set#Card(s) }
  (Set#Card(s) == 0 <==> s == Set#Empty()) &&
  (Set#Card(s) != 0 ==> (exists x: T :: s[x])));

function Set#Singleton<T>(T): Set T;
axiom (forall<T> r: T :: { Set#Singleton(r) } Set#Singleton(r)[r]);
axiom (forall<T> r: T, o: T :: { Set#Singleton(r)[o] } Set#Singleton(r)[o] <==> r == o);
axiom (forall<T> r: T :: { Set#Card(Set#Singleton(r)) } Set#Card(Set#Singleton(r)) == 1);

function Set#UnionOne<T>(Set T, T): Set T;
axiom (forall<T> a: Set T, x: T, o: T :: { Set#UnionOne(a,x)[o] }
  Set#UnionOne(a,x)[o] <==> o == x || a[o]);
axiom (forall<T> a: Set T, x: T :: { Set#UnionOne(a, x) }
  Set#UnionOne(a, x)[x]);
axiom (forall<T> a: Set T, x: T, y: T :: { Set#UnionOne(a, x), a[y] }
  a[y] ==> Set#UnionOne(a, x)[y]);
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  !a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

function Set#Union<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Union(a,b)[o] }
  Set#Union(a,b)[o] <==> a[o] || b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), a[y] }
  a[y] ==> Set#Union(a, b)[y]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), b[y] }
  b[y] ==> Set#Union(a, b)[y]);
//axiom (forall<T> a, b: Set T :: { Set#Union(a, b) }
//  Set#Disjoint(a, b) ==>
//    Set#Difference(Set#Union(a, b), a) == b &&
//    Set#Difference(Set#Union(a, b), b) == a);

function Set#Intersection<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Intersection(a,b)[o] } {Set#Intersection(a,b), a[o]} {Set#Intersection(a,b), b[o]} // AS: added alternative triggers 20/06/19
  Set#Intersection(a,b)[o] <==> a[o] && b[o]);

axiom (forall<T> a, b: Set T :: { Set#Union(Set#Union(a, b), b) }
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Union(a, Set#Union(a, b)) }
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(Set#Intersection(a, b), b) }
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(a, Set#Intersection(a, b)) }
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Card(Set#Union(a, b)) }{ Set#Card(Set#Intersection(a, b)) }
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b)) == Set#Card(a) + Set#Card(b));

function Set#Difference<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Difference(a,b)[o] } { Set#Difference(a,b), a[o] }
  Set#Difference(a,b)[o] <==> a[o] && !b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Difference(a, b), b[y] }
  b[y] ==> !Set#Difference(a, b)[y] );
axiom (forall<T> a, b: Set T ::
  { Set#Card(Set#Difference(a, b)) }
  Set#Card(Set#Difference(a, b)) + Set#Card(Set#Difference(b, a))
  + Set#Card(Set#Intersection(a, b))
    == Set#Card(Set#Union(a, b)) &&
  Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

function Set#Subset<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Subset(a,b) }
  Set#Subset(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] ==> b[o]));
// axiom(forall<T> a: Set T, b: Set T ::
//   { Set#Subset(a,b), Set#Card(a), Set#Card(b) }  // very restrictive trigger
//   Set#Subset(a,b) ==> Set#Card(a) <= Set#Card(b));


function Set#Equal<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }
  Set#Equal(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] <==> b[o]));
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }  // extensionality axiom for sets
  Set#Equal(a,b) ==> a == b);

//function Set#Disjoint<T>(Set T, Set T): bool;
//axiom (forall<T> a: Set T, b: Set T :: { Set#Disjoint(a,b) }
//  Set#Disjoint(a,b) <==> (forall o: T :: {a[o]} {b[o]} !a[o] || !b[o]));

// ---------------------------------------------------------------
// -- Axiomatization of multisets --------------------------------
// ---------------------------------------------------------------

function Math#min(a: int, b: int): int;
axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);
axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);
axiom (forall a: int, b: int :: { Math#min(a, b) } Math#min(a, b) == a || Math#min(a, b) == b);

function Math#clip(a: int): int;
axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);
axiom (forall a: int :: { Math#clip(a) } a < 0  ==> Math#clip(a) == 0);

type MultiSet T; // = [T]int;

function MultiSet#Select<T>(ms: MultiSet T, x:T): int;

//function $IsGoodMultiSet<T>(ms: MultiSet T): bool;
// ints are non-negative, used after havocing, and for conversion from sequences to multisets.
//axiom (forall<T> ms: MultiSet T :: { $IsGoodMultiSet(ms) }
//  $IsGoodMultiSet(ms) <==>
//  (forall bx: T :: { ms[bx] } 0 <= ms[bx] && ms[bx] <= MultiSet#Card(ms)));

axiom (forall<T> ms: MultiSet T, x: T :: {MultiSet#Select(ms,x)} MultiSet#Select(ms,x) >= 0); // NEW

function MultiSet#Card<T>(MultiSet T): int;
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));
//axiom (forall<T> s: MultiSet T, x: T, n: int :: { MultiSet#Card(s[x := n]) }
//  0 <= n ==> MultiSet#Card(s[x := n]) == MultiSet#Card(s) - s[x] + n);
//
function MultiSet#Empty<T>(): MultiSet T;
axiom (forall<T> o: T :: { MultiSet#Select(MultiSet#Empty(),o) } MultiSet#Select(MultiSet#Empty(),o) == 0);
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) }
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty()) &&
  (MultiSet#Card(s) != 0 ==> (exists x: T :: 0 < MultiSet#Select(s,x))));

function MultiSet#Singleton<T>(T): MultiSet T;
axiom (forall<T> r: T, o: T :: { MultiSet#Select(MultiSet#Singleton(r),o) } (MultiSet#Select(MultiSet#Singleton(r),o) == 1 <==> r == o) &&
                                                            (MultiSet#Select(MultiSet#Singleton(r),o) == 0 <==> r != o));
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Card(MultiSet#Singleton(r)) == 1 && MultiSet#Select(MultiSet#Singleton(r),r) == 1); // AS: added
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r)); // AS: remove this?

function MultiSet#UnionOne<T>(MultiSet T, T): MultiSet T;
// union-ing increases count by one for x, not for others
axiom (forall<T> a: MultiSet T, x: T, o: T :: { MultiSet#Select(MultiSet#UnionOne(a,x),o) } { MultiSet#UnionOne(a, x), MultiSet#Select(a,o) } // AS: added back this trigger (used on a similar axiom before)
  MultiSet#Select(MultiSet#UnionOne(a, x),o) == (if x==o then MultiSet#Select(a,o) + 1 else MultiSet#Select(a,o)));
// non-decreasing
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#Card(MultiSet#UnionOne(a, x)) } {MultiSet#UnionOne(a, x), MultiSet#Card(a)} // AS: added alternative trigger
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);
// AS: added - concrete knowledge of element added
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#UnionOne(a,x)}
  MultiSet#Select(MultiSet#UnionOne(a, x),x) > 0 && MultiSet#Card(MultiSet#UnionOne(a, x)) > 0);

function MultiSet#Union<T>(MultiSet T, MultiSet T): MultiSet T;
// union-ing is the sum of the contents
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Union(a,b),o) } {MultiSet#Union(a,b), MultiSet#Select(a,o), MultiSet#Select(b,o)}// AS: added triggers
  MultiSet#Select(MultiSet#Union(a,b),o) == MultiSet#Select(a,o) + MultiSet#Select(b,o));
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Card(MultiSet#Union(a,b)) } {MultiSet#Card(a), MultiSet#Union(a,b)} {MultiSet#Card(b), MultiSet#Union(a,b)}
  MultiSet#Card(MultiSet#Union(a,b)) == MultiSet#Card(a) + MultiSet#Card(b));

function MultiSet#Intersection<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Intersection(a,b),o) }
  MultiSet#Select(MultiSet#Intersection(a,b),o) == Math#min(MultiSet#Select(a,o),  MultiSet#Select(b,o)));

// left and right pseudo-idempotence
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(MultiSet#Intersection(a, b), b) }
  MultiSet#Intersection(MultiSet#Intersection(a, b), b) == MultiSet#Intersection(a, b));
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) }
  MultiSet#Intersection(a, MultiSet#Intersection(a, b)) == MultiSet#Intersection(a, b));

// multiset difference, a - b. clip() makes it positive.
function MultiSet#Difference<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Difference(a,b),o) }
  MultiSet#Select(MultiSet#Difference(a,b),o) == Math#clip(MultiSet#Select(a,o) - MultiSet#Select(b,o)));
axiom (forall<T> a, b: MultiSet T, y: T :: { MultiSet#Difference(a, b), MultiSet#Select(b,y), MultiSet#Select(a,y) }
  MultiSet#Select(a,y) <= MultiSet#Select(b,y) ==> MultiSet#Select(MultiSet#Difference(a, b),y) == 0 );
axiom (forall<T> a, b: MultiSet T ::
  { MultiSet#Card(MultiSet#Difference(a, b)) }
  MultiSet#Card(MultiSet#Difference(a, b)) + MultiSet#Card(MultiSet#Difference(b, a))
  + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
    == MultiSet#Card(MultiSet#Union(a, b)) &&
  MultiSet#Card(MultiSet#Difference(a, b)) == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

// multiset subset means a must have at most as many of each element as b
function MultiSet#Subset<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Subset(a,b) }
  MultiSet#Subset(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) <= MultiSet#Select(b,o)));

function MultiSet#Equal<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == MultiSet#Select(b,o)));
// extensionality axiom for multisets
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) ==> a == b);

function MultiSet#Disjoint<T>(MultiSet T, MultiSet T): bool;
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Disjoint(a,b) }
  MultiSet#Disjoint(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == 0 || MultiSet#Select(b,o) == 0));

    

// ==================================================
// Translation of domain IEdges
// ==================================================

// The type for domain IEdges
type IEdgesDomainType;

// Translation of domain function edge_lookup
function  edge_lookup(e: IEdgesDomainType, i_79: int): Ref;

// Translation of domain function has_edge
function  has_edge(e: IEdgesDomainType, i_79: int): bool;

// Translation of domain function insert_edge
function  insert_edge(e: IEdgesDomainType, i_79: int, node_1: Ref): IEdgesDomainType;

// Translation of domain function edges_domain
function  edges_domain(e: IEdgesDomainType): Set int;

// Translation of domain function empty_edges
function  empty_edges(): IEdgesDomainType;

// Translation of domain axiom inserted_edge_present
axiom (forall e_1: IEdgesDomainType, i: int, node: Ref ::
  { (edge_lookup((insert_edge(e_1, i, node): IEdgesDomainType), i): Ref) }
  (edge_lookup((insert_edge(e_1, i, node): IEdgesDomainType), i): Ref) == node
);

// Translation of domain axiom other_edges_preserved_after_insertion
axiom (forall e_1: IEdgesDomainType, i: int, node: Ref, j_9: int ::
  { (edge_lookup(e_1, j_9): Ref), (insert_edge(e_1, i, node): IEdgesDomainType) } { (edge_lookup(e_1, j_9): Ref), (edge_lookup((insert_edge(e_1, i, node): IEdgesDomainType), j_9): Ref) } { (edge_lookup((insert_edge(e_1, i, node): IEdgesDomainType), j_9): Ref) }
  i != j_9 ==> (edge_lookup(e_1, j_9): Ref) == (edge_lookup((insert_edge(e_1, i, node): IEdgesDomainType), j_9): Ref)
);

// Translation of domain axiom inserted_edge_defined
axiom (forall e_1: IEdgesDomainType, i: int, node: Ref ::
  { (has_edge((insert_edge(e_1, i, node): IEdgesDomainType), i): bool) }
  (has_edge((insert_edge(e_1, i, node): IEdgesDomainType), i): bool)
);

// Translation of domain axiom has_edge_complete
axiom (forall e_1: IEdgesDomainType, i: int ::
  { (has_edge(e_1, i): bool) } { (edge_lookup(e_1, i): Ref) }
  (has_edge(e_1, i): bool) == ((edge_lookup(e_1, i): Ref) != null)
);

// Translation of domain axiom edges_domain_defined
axiom (forall e_1: IEdgesDomainType, i: int ::
  { (edges_domain(e_1): Set int), (has_edge(e_1, i): bool) } { (edges_domain(e_1): Set int)[i] } { (has_edge(e_1, i): bool) }
  (edges_domain(e_1): Set int)[i] == (has_edge(e_1, i): bool)
);

// Translation of domain axiom empty_edges_has_no_nodes
axiom (forall i: int ::
  { (has_edge((empty_edges(): IEdgesDomainType), i): bool) }
  !(has_edge((empty_edges(): IEdgesDomainType), i): bool)
);

// ==================================================
// Translation of domain INodeMap
// ==================================================

// The type for domain INodeMap
type INodeMapDomainType;

// Translation of domain function lookup
function  lookup(node_map: INodeMapDomainType, node_1: Ref): Ref;

// Translation of domain function has_node
function  has_node(node_map: INodeMapDomainType, node_1: Ref): bool;

// Translation of domain function insert
function  insert_1(node_map: INodeMapDomainType, key_node: Ref, val_node: Ref): INodeMapDomainType;

// Translation of domain function map_domain
function  map_domain(node_map: INodeMapDomainType): Seq Ref;

// Translation of domain function empty_map
function  empty_map(): INodeMapDomainType;

// Translation of domain axiom inserted_node_present
axiom (forall node_map_1: INodeMapDomainType, key_node_1: Ref, val_node_1: Ref ::
  { (lookup((insert_1(node_map_1, key_node_1, val_node_1): INodeMapDomainType), key_node_1): Ref) }
  (lookup((insert_1(node_map_1, key_node_1, val_node_1): INodeMapDomainType), key_node_1): Ref) == val_node_1
);

// Translation of domain axiom other_nodes_preserved_after_insertion
axiom (forall node_map_1: INodeMapDomainType, key_node_1: Ref, val_node_1: Ref, node: Ref ::
  { (lookup(node_map_1, node): Ref), (insert_1(node_map_1, key_node_1, val_node_1): INodeMapDomainType) } { (lookup(node_map_1, node): Ref), (lookup((insert_1(node_map_1, key_node_1, val_node_1): INodeMapDomainType), node): Ref) } { (lookup((insert_1(node_map_1, key_node_1, val_node_1): INodeMapDomainType), node): Ref) }
  node != key_node_1 ==> (lookup(node_map_1, node): Ref) == (lookup((insert_1(node_map_1, key_node_1, val_node_1): INodeMapDomainType), node): Ref)
);

// Translation of domain axiom inserted_node_defined
axiom (forall node_map_1: INodeMapDomainType, key_node_1: Ref, val_node_1: Ref ::
  { (has_node((insert_1(node_map_1, key_node_1, val_node_1): INodeMapDomainType), key_node_1): bool) }
  (has_node((insert_1(node_map_1, key_node_1, val_node_1): INodeMapDomainType), key_node_1): bool)
);

// Translation of domain axiom has_node_complete
axiom (forall node_map_1: INodeMapDomainType, node: Ref ::
  { (has_node(node_map_1, node): bool) } { (lookup(node_map_1, node): Ref) }
  (has_node(node_map_1, node): bool) == ((lookup(node_map_1, node): Ref) != null)
);

// Translation of domain axiom domain_is_defined
axiom (forall node_map_1: INodeMapDomainType, key_1: Ref ::
  { (map_domain(node_map_1): Seq Ref), (has_node(node_map_1, key_1): bool) } { Seq#ContainsTrigger((map_domain(node_map_1): Seq Ref), key_1) } { Seq#Contains((map_domain(node_map_1): Seq Ref), key_1) } { (has_node(node_map_1, key_1): bool) }
  Seq#Contains((map_domain(node_map_1): Seq Ref), key_1) == (has_node(node_map_1, key_1): bool)
);

// Translation of domain axiom empty_map_has_no_nodes
axiom (forall node: Ref ::
  { (has_node((empty_map(): INodeMapDomainType), node): bool) }
  !(has_node((empty_map(): INodeMapDomainType), node): bool)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique edges: Field NormalField IEdgesDomainType;
axiom !IsPredicateField(edges);
axiom !IsWandField(edges);

// ==================================================
// Translation of method graph_copy_rec
// ==================================================

procedure graph_copy_rec(this: Ref, node_map_1: INodeMapDomainType, setOfRef: (Set Ref), node_map_image: (Set Ref), rd_1: Perm) returns (nodeCopy: Ref, res_node_map: INodeMapDomainType, res_copy_nodes: (Set Ref))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_31: Ref;
  var i_4: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_18: Ref;
  var x_13: Ref;
  var x_14: Ref;
  var i_16: int;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var S: (Set int);
  var x_41_1: Ref;
  var x_44_1: Ref;
  var j_9: int;
  var r_1: Ref;
  var j_2_1: int;
  var r_2_1: Ref;
  var ExhaleHeap: HeapType;
  var i_6_1: int;
  var x_2: Ref;
  var x_17: Ref;
  var j_19: int;
  var r_24: Ref;
  var j_23: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var newNode: Ref;
  var nodeForId: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_s1: (Set int);
  var arg_node_map: INodeMapDomainType;
  var arg_node_map_image: (Set Ref);
  var arg_rd: Perm;
  var x_60: Ref;
  var i$0: int;
  var x_62: Ref;
  var x_75: Ref;
  var x_78: Ref;
  var j_10_2: int;
  var r_18_2: Ref;
  var j_12_2: int;
  var r_20: Ref;
  var x_29_1: Ref;
  var x_32_1: Ref;
  var x_34_1: Ref;
  var i_4_1: int;
  var x_36_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd_1;
    assume state(Heap, Mask);
    assume this != null;
    assume state(Heap, Mask);
    assume setOfRef[this];
    assume state(Heap, Mask);
    assume Set#Card(Set#Intersection(setOfRef, node_map_image)) == 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.val might not be injective. (graph-copy.vpr@96.12--96.61) [119674]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && setOfRef[x_1]) && setOfRef[x_1_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, val] } { QPMask[x_1, val] } { setOfRef[x_1] }
        setOfRef[x_1] && NoPerm < rd_1 ==> qpRange1(x_1) && invRecv1(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (setOfRef[invRecv1(o_4)] && NoPerm < rd_1) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (graph-copy.vpr@96.12--96.61) [119675]"}
      (forall x_1: Ref ::
      { Heap[x_1, val] } { QPMask[x_1, val] } { setOfRef[x_1] }
      setOfRef[x_1] ==> rd_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, val] } { QPMask[x_1, val] } { setOfRef[x_1] }
        setOfRef[x_1] && rd_1 > NoPerm ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((setOfRef[invRecv1(o_4)] && NoPerm < rd_1) && qpRange1(o_4) ==> (NoPerm < rd_1 ==> invRecv1(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + rd_1) && (!((setOfRef[invRecv1(o_4)] && NoPerm < rd_1) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.edges might not be injective. (graph-copy.vpr@97.12--97.63) [119676]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && setOfRef[x_3]) && setOfRef[x_3_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, edges] } { QPMask[x_3, edges] } { setOfRef[x_3] }
        setOfRef[x_3] && NoPerm < rd_1 ==> qpRange2(x_3) && invRecv2(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (setOfRef[invRecv2(o_4)] && NoPerm < rd_1) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (graph-copy.vpr@97.12--97.63) [119677]"}
      (forall x_3: Ref ::
      { Heap[x_3, edges] } { QPMask[x_3, edges] } { setOfRef[x_3] }
      setOfRef[x_3] ==> rd_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, edges] } { QPMask[x_3, edges] } { setOfRef[x_3] }
        setOfRef[x_3] && rd_1 > NoPerm ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, edges] }
        ((setOfRef[invRecv2(o_4)] && NoPerm < rd_1) && qpRange2(o_4) ==> (NoPerm < rd_1 ==> invRecv2(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + rd_1) && (!((setOfRef[invRecv2(o_4)] && NoPerm < rd_1) && qpRange2(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref, i: Int :: { (x in setOfRef), (i in edges_domain(x.edges)) } { (x in setOfRef), edge_lookup(x.edges, i) } { (x in setOfRef), (edge_lookup(x.edges, i) in setOfRef) } { edges_domain(x.edges), edge_lookup(x.edges, i) } { edges_domain(x.edges), (edge_lookup(x.edges, i) in setOfRef) } { (i in edges_domain(x.edges)) } { (edge_lookup(x.edges, i) in setOfRef) } (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef))
      if (*) {
        if (setOfRef[x_31]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.edges (graph-copy.vpr@98.12--98.120) [119678]"}
            HasDirectPerm(Mask, x_31, edges);
        }
        if (setOfRef[x_31] && (edges_domain(Heap[x_31, edges]): Set int)[i_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.edges (graph-copy.vpr@98.12--98.120) [119679]"}
            HasDirectPerm(Mask, x_31, edges);
        }
        assume false;
      }
    assume (forall x_5: Ref, i_1: int ::
      { setOfRef[x_5], (edges_domain(Heap[x_5, edges]): Set int)[i_1] } { setOfRef[x_5], (edge_lookup(Heap[x_5, edges], i_1): Ref) } { setOfRef[x_5], setOfRef[(edge_lookup(Heap[x_5, edges], i_1): Ref)] } { (edges_domain(Heap[x_5, edges]): Set int), (edge_lookup(Heap[x_5, edges], i_1): Ref) } { (edges_domain(Heap[x_5, edges]): Set int), setOfRef[(edge_lookup(Heap[x_5, edges], i_1): Ref)] } { (edges_domain(Heap[x_5, edges]): Set int)[i_1] } { setOfRef[(edge_lookup(Heap[x_5, edges], i_1): Ref)] }
      setOfRef[x_5] && (edges_domain(Heap[x_5, edges]): Set int)[i_1] ==> setOfRef[(edge_lookup(Heap[x_5, edges], i_1): Ref)]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in map_domain(node_map)) } { (lookup(node_map, x) in node_map_image) } (x in map_domain(node_map)) ==> (lookup(node_map, x) in node_map_image))
      if (*) {
        assume false;
      }
    assume (forall x_7: Ref ::
      { Seq#ContainsTrigger((map_domain(node_map_1): Seq Ref), x_7) } { Seq#Contains((map_domain(node_map_1): Seq Ref), x_7) } { node_map_image[(lookup(node_map_1, x_7): Ref)] }
      Seq#Contains((map_domain(node_map_1): Seq Ref), x_7) ==> node_map_image[(lookup(node_map_1, x_7): Ref)]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in node_map_image) } (x in node_map_image) ==> acc(x.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.val might not be injective. (graph-copy.vpr@101.12--101.63) [119680]"}
      (forall x_9_2: Ref, x_9_3: Ref ::
      
      (((x_9_2 != x_9_3 && node_map_image[x_9_2]) && node_map_image[x_9_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
    );
    
    // -- Define Inverse Function
      assume (forall x_9_2: Ref ::
        { Heap[x_9_2, val] } { QPMask[x_9_2, val] } { node_map_image[x_9_2] }
        node_map_image[x_9_2] && NoPerm < FullPerm ==> qpRange3(x_9_2) && invRecv3(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (node_map_image[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_9_2: Ref ::
        { Heap[x_9_2, val] } { QPMask[x_9_2, val] } { node_map_image[x_9_2] }
        node_map_image[x_9_2] ==> x_9_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((node_map_image[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((node_map_image[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in node_map_image) } (x in node_map_image) ==> acc(x.edges, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.edges might not be injective. (graph-copy.vpr@102.12--102.65) [119681]"}
      (forall x_11_1: Ref, x_11_2: Ref ::
      
      (((x_11_1 != x_11_2 && node_map_image[x_11_1]) && node_map_image[x_11_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
    );
    
    // -- Define Inverse Function
      assume (forall x_11_1: Ref ::
        { Heap[x_11_1, edges] } { QPMask[x_11_1, edges] } { node_map_image[x_11_1] }
        node_map_image[x_11_1] && NoPerm < FullPerm ==> qpRange4(x_11_1) && invRecv4(x_11_1) == x_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (node_map_image[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_11_1: Ref ::
        { Heap[x_11_1, edges] } { QPMask[x_11_1, edges] } { node_map_image[x_11_1] }
        node_map_image[x_11_1] ==> x_11_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, edges] }
        ((node_map_image[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + FullPerm) && (!((node_map_image[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assume nodeCopy != null;
    assume res_copy_nodes[nodeCopy];
    assume state(PostHeap, PostMask);
    assume Set#Card(Set#Intersection(setOfRef, res_copy_nodes)) == 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.val might not be injective. (graph-copy.vpr@106.11--106.60) [119682]"}
      (forall x_13_2: Ref, x_13_3: Ref ::
      
      (((x_13_2 != x_13_3 && setOfRef[x_13_2]) && setOfRef[x_13_3]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_13_2 != x_13_3
    );
    
    // -- Define Inverse Function
      assume (forall x_13_2: Ref ::
        { PostHeap[x_13_2, val] } { QPMask[x_13_2, val] } { setOfRef[x_13_2] }
        setOfRef[x_13_2] && NoPerm < rd_1 ==> qpRange5(x_13_2) && invRecv5(x_13_2) == x_13_2
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (setOfRef[invRecv5(o_4)] && NoPerm < rd_1) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (graph-copy.vpr@106.11--106.60) [119683]"}
      (forall x_13_2: Ref ::
      { PostHeap[x_13_2, val] } { QPMask[x_13_2, val] } { setOfRef[x_13_2] }
      setOfRef[x_13_2] ==> rd_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_13_2: Ref ::
        { PostHeap[x_13_2, val] } { QPMask[x_13_2, val] } { setOfRef[x_13_2] }
        setOfRef[x_13_2] && rd_1 > NoPerm ==> x_13_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((setOfRef[invRecv5(o_4)] && NoPerm < rd_1) && qpRange5(o_4) ==> (NoPerm < rd_1 ==> invRecv5(o_4) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + rd_1) && (!((setOfRef[invRecv5(o_4)] && NoPerm < rd_1) && qpRange5(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
      if (*) {
        if (setOfRef[x_18]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (graph-copy.vpr@107.11--107.65) [119684]"}
            HasDirectPerm(PostMask, x_18, val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (graph-copy.vpr@107.11--107.65) [119685]"}
            HasDirectPerm(oldMask, x_18, val);
        }
        assume false;
      }
    assume (forall x_15_2: Ref ::
      { setOfRef[x_15_2] }
      setOfRef[x_15_2] ==> PostHeap[x_15_2, val] == oldHeap[x_15_2, val]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.edges might not be injective. (graph-copy.vpr@108.11--108.62) [119686]"}
      (forall x_17_1: Ref, x_17_2: Ref ::
      
      (((x_17_1 != x_17_2 && setOfRef[x_17_1]) && setOfRef[x_17_2]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_17_1 != x_17_2
    );
    
    // -- Define Inverse Function
      assume (forall x_17_1: Ref ::
        { PostHeap[x_17_1, edges] } { QPMask[x_17_1, edges] } { setOfRef[x_17_1] }
        setOfRef[x_17_1] && NoPerm < rd_1 ==> qpRange6(x_17_1) && invRecv6(x_17_1) == x_17_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (setOfRef[invRecv6(o_4)] && NoPerm < rd_1) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (graph-copy.vpr@108.11--108.62) [119687]"}
      (forall x_17_1: Ref ::
      { PostHeap[x_17_1, edges] } { QPMask[x_17_1, edges] } { setOfRef[x_17_1] }
      setOfRef[x_17_1] ==> rd_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_17_1: Ref ::
        { PostHeap[x_17_1, edges] } { QPMask[x_17_1, edges] } { setOfRef[x_17_1] }
        setOfRef[x_17_1] && rd_1 > NoPerm ==> x_17_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, edges] }
        ((setOfRef[invRecv6(o_4)] && NoPerm < rd_1) && qpRange6(o_4) ==> (NoPerm < rd_1 ==> invRecv6(o_4) == o_4) && QPMask[o_4, edges] == PostMask[o_4, edges] + rd_1) && (!((setOfRef[invRecv6(o_4)] && NoPerm < rd_1) && qpRange6(o_4)) ==> QPMask[o_4, edges] == PostMask[o_4, edges])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != edges ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
      if (*) {
        if (setOfRef[x_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.edges (graph-copy.vpr@109.11--109.69) [119688]"}
            HasDirectPerm(PostMask, x_13, edges);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.edges (graph-copy.vpr@109.11--109.69) [119689]"}
            HasDirectPerm(oldMask, x_13, edges);
        }
        assume false;
      }
    assume (forall x_19_1: Ref ::
      { setOfRef[x_19_1] }
      setOfRef[x_19_1] ==> PostHeap[x_19_1, edges] == oldHeap[x_19_1, edges]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref, i: Int :: { (x in setOfRef), (i in edges_domain(x.edges)) } { (x in setOfRef), edge_lookup(x.edges, i) } { (x in setOfRef), (edge_lookup(x.edges, i) in setOfRef) } { edges_domain(x.edges), edge_lookup(x.edges, i) } { edges_domain(x.edges), (edge_lookup(x.edges, i) in setOfRef) } { (i in edges_domain(x.edges)) } { (edge_lookup(x.edges, i) in setOfRef) } (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef))
      if (*) {
        if (setOfRef[x_14]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.edges (graph-copy.vpr@110.11--110.119) [119690]"}
            HasDirectPerm(PostMask, x_14, edges);
        }
        if (setOfRef[x_14] && (edges_domain(PostHeap[x_14, edges]): Set int)[i_16]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.edges (graph-copy.vpr@110.11--110.119) [119691]"}
            HasDirectPerm(PostMask, x_14, edges);
        }
        assume false;
      }
    assume (forall x_21_1: Ref, i_3: int ::
      { setOfRef[x_21_1], (edges_domain(PostHeap[x_21_1, edges]): Set int)[i_3] } { setOfRef[x_21_1], (edge_lookup(PostHeap[x_21_1, edges], i_3): Ref) } { setOfRef[x_21_1], setOfRef[(edge_lookup(PostHeap[x_21_1, edges], i_3): Ref)] } { (edges_domain(PostHeap[x_21_1, edges]): Set int), (edge_lookup(PostHeap[x_21_1, edges], i_3): Ref) } { (edges_domain(PostHeap[x_21_1, edges]): Set int), setOfRef[(edge_lookup(PostHeap[x_21_1, edges], i_3): Ref)] } { (edges_domain(PostHeap[x_21_1, edges]): Set int)[i_3] } { setOfRef[(edge_lookup(PostHeap[x_21_1, edges], i_3): Ref)] }
      setOfRef[x_21_1] && (edges_domain(PostHeap[x_21_1, edges]): Set int)[i_3] ==> setOfRef[(edge_lookup(PostHeap[x_21_1, edges], i_3): Ref)]
    );
    assume state(PostHeap, PostMask);
    assume Set#Equal(res_copy_nodes, Set#Union(res_copy_nodes, node_map_image));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in map_domain(res_node_map)) } { (lookup(res_node_map, x) in res_copy_nodes) } (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes))
      if (*) {
        assume false;
      }
    assume (forall x_23_1: Ref ::
      { Seq#ContainsTrigger((map_domain(res_node_map): Seq Ref), x_23_1) } { Seq#Contains((map_domain(res_node_map): Seq Ref), x_23_1) } { res_copy_nodes[(lookup(res_node_map, x_23_1): Ref)] }
      Seq#Contains((map_domain(res_node_map): Seq Ref), x_23_1) ==> res_copy_nodes[(lookup(res_node_map, x_23_1): Ref)]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in res_copy_nodes) } (x in res_copy_nodes) ==> acc(x.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.val might not be injective. (graph-copy.vpr@113.11--113.62) [119692]"}
      (forall x_25_2: Ref, x_25_3: Ref ::
      
      (((x_25_2 != x_25_3 && res_copy_nodes[x_25_2]) && res_copy_nodes[x_25_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_25_2 != x_25_3
    );
    
    // -- Define Inverse Function
      assume (forall x_25_2: Ref ::
        { PostHeap[x_25_2, val] } { QPMask[x_25_2, val] } { res_copy_nodes[x_25_2] }
        res_copy_nodes[x_25_2] && NoPerm < FullPerm ==> qpRange7(x_25_2) && invRecv7(x_25_2) == x_25_2
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (res_copy_nodes[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_25_2: Ref ::
        { PostHeap[x_25_2, val] } { QPMask[x_25_2, val] } { res_copy_nodes[x_25_2] }
        res_copy_nodes[x_25_2] ==> x_25_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((res_copy_nodes[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!((res_copy_nodes[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in res_copy_nodes) } (x in res_copy_nodes) ==> acc(x.edges, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.edges might not be injective. (graph-copy.vpr@114.11--114.64) [119693]"}
      (forall x_27_1: Ref, x_27_2: Ref ::
      
      (((x_27_1 != x_27_2 && res_copy_nodes[x_27_1]) && res_copy_nodes[x_27_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_27_1 != x_27_2
    );
    
    // -- Define Inverse Function
      assume (forall x_27_1: Ref ::
        { PostHeap[x_27_1, edges] } { QPMask[x_27_1, edges] } { res_copy_nodes[x_27_1] }
        res_copy_nodes[x_27_1] && NoPerm < FullPerm ==> qpRange8(x_27_1) && invRecv8(x_27_1) == x_27_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (res_copy_nodes[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_27_1: Ref ::
        { PostHeap[x_27_1, edges] } { QPMask[x_27_1, edges] } { res_copy_nodes[x_27_1] }
        res_copy_nodes[x_27_1] ==> x_27_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, edges] }
        ((res_copy_nodes[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, edges] == PostMask[o_4, edges] + FullPerm) && (!((res_copy_nodes[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, edges] == PostMask[o_4, edges])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != edges ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (has_node(node_map, this)) -- graph-copy.vpr@119.3--169.4
    if ((has_node(node_map_1, this): bool)) {
      
      // -- Translating statement: nodeCopy := lookup(node_map, this) -- graph-copy.vpr@120.5--120.39
        nodeCopy := (lookup(node_map_1, this): Ref);
        assume state(Heap, Mask);
      
      // -- Translating statement: res_node_map := node_map -- graph-copy.vpr@121.5--121.29
        res_node_map := node_map_1;
        assume state(Heap, Mask);
      
      // -- Translating statement: res_copy_nodes := node_map_image -- graph-copy.vpr@122.5--122.37
        res_copy_nodes := node_map_image;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: nodeCopy := new(val, edges) -- graph-copy.vpr@124.5--124.32
        havoc freshObj;
        assume freshObj != null && !Heap[freshObj, $allocated];
        Heap := Heap[freshObj, $allocated:=true];
        nodeCopy := freshObj;
        Mask := Mask[nodeCopy, val:=Mask[nodeCopy, val] + FullPerm];
        Mask := Mask[nodeCopy, edges:=Mask[nodeCopy, edges] + FullPerm];
        assume state(Heap, Mask);
      
      // -- Translating statement: nodeCopy.val := this.val -- graph-copy.vpr@125.5--125.29
        
        // -- Check definedness of this.val
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.val (graph-copy.vpr@125.5--125.29) [119694]"}
            HasDirectPerm(Mask, this, val);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access nodeCopy.val (graph-copy.vpr@125.5--125.29) [119695]"}
          FullPerm == Mask[nodeCopy, val];
        Heap := Heap[nodeCopy, val:=Heap[this, val]];
        assume state(Heap, Mask);
      
      // -- Translating statement: res_node_map := insert(node_map, this, nodeCopy) -- graph-copy.vpr@127.5--127.53
        res_node_map := (insert_1(node_map_1, this, nodeCopy): INodeMapDomainType);
        assume state(Heap, Mask);
      
      // -- Translating statement: res_copy_nodes := (node_map_image union Set(nodeCopy)) -- graph-copy.vpr@129.5--129.57
        res_copy_nodes := Set#Union(node_map_image, Set#Singleton(nodeCopy));
        assume state(Heap, Mask);
      
      // -- Translating statement: assert ((setOfRef intersection node_map_image) union
  //   (setOfRef intersection Set(nodeCopy))) ==
  //   (setOfRef intersection res_copy_nodes) -- graph-copy.vpr@137.5--138.51
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion ((setOfRef intersection node_map_image) union (setOfRef intersection Set(nodeCopy))) == (setOfRef intersection res_copy_nodes) might not hold. (graph-copy.vpr@137.12--138.51) [119696]"}
          Set#Equal(Set#Union(Set#Intersection(setOfRef, node_map_image), Set#Intersection(setOfRef, Set#Singleton(nodeCopy))), Set#Intersection(setOfRef, res_copy_nodes));
        assume state(Heap, Mask);
      
      // -- Translating statement: S := edges_domain(this.edges) -- graph-copy.vpr@140.5--140.34
        
        // -- Check definedness of edges_domain(this.edges)
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.edges (graph-copy.vpr@140.5--140.34) [119697]"}
            HasDirectPerm(Mask, this, edges);
        S := (edges_domain(Heap[this, edges]): Set int);
        assume state(Heap, Mask);
      
      // -- Translating statement: while (|S| > 0) -- graph-copy.vpr@142.5--168.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Loop invariant (nodeCopy in res_copy_nodes) might not hold on entry. Assertion (nodeCopy in res_copy_nodes) might not hold. (graph-copy.vpr@143.17--143.43) [119698]"}
              res_copy_nodes[nodeCopy];
            assert {:msg "  Loop invariant (this in setOfRef) might not hold on entry. Assertion (this in setOfRef) might not hold. (graph-copy.vpr@144.17--144.33) [119699]"}
              setOfRef[this];
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd)) might not hold on entry. Fraction rd might be negative. (graph-copy.vpr@145.17--145.66) [119700]"}
                (forall x_40_1: Ref ::
                { Heap[x_40_1, val] } { QPMask[x_40_1, val] } { setOfRef[x_40_1] }
                setOfRef[x_40_1] && dummyFunction(Heap[x_40_1, val]) ==> rd_1 >= NoPerm
              );
            
            // -- check if receiver x is injective
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd)) might not hold on entry. Quantified resource x.val might not be injective. (graph-copy.vpr@145.17--145.66) [119701]"}
                (forall x_40_1: Ref, x_40_2: Ref ::
                { neverTriggered13(x_40_1), neverTriggered13(x_40_2) }
                (((x_40_1 != x_40_2 && setOfRef[x_40_1]) && setOfRef[x_40_2]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_40_1 != x_40_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd)) might not hold on entry. There might be insufficient permission to access x.val (graph-copy.vpr@145.17--145.66) [119702]"}
                (forall x_40_1: Ref ::
                { Heap[x_40_1, val] } { QPMask[x_40_1, val] } { setOfRef[x_40_1] }
                setOfRef[x_40_1] ==> Mask[x_40_1, val] >= rd_1
              );
            
            // -- assumptions for inverse of receiver x
              assume (forall x_40_1: Ref ::
                { Heap[x_40_1, val] } { QPMask[x_40_1, val] } { setOfRef[x_40_1] }
                setOfRef[x_40_1] && NoPerm < rd_1 ==> qpRange13(x_40_1) && invRecv13(x_40_1) == x_40_1
              );
              assume (forall o_4: Ref ::
                { invRecv13(o_4) }
                setOfRef[invRecv13(o_4)] && (NoPerm < rd_1 && qpRange13(o_4)) ==> invRecv13(o_4) == o_4
              );
            
            // -- assume permission updates for field val
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                (setOfRef[invRecv13(o_4)] && (NoPerm < rd_1 && qpRange13(o_4)) ==> invRecv13(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - rd_1) && (!(setOfRef[invRecv13(o_4)] && (NoPerm < rd_1 && qpRange13(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            if (*) {
              if (setOfRef[x_41_1]) {
                assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val)) might not hold on entry. Assertion x.val == old(x.val) might not hold. (graph-copy.vpr@146.17--146.71) [119703]"}
                  Heap[x_41_1, val] == oldHeap[x_41_1, val];
              }
              assume false;
            }
            assume (forall x_42_1: Ref ::
              { setOfRef[x_42_1] }
              setOfRef[x_42_1] ==> Heap[x_42_1, val] == oldHeap[x_42_1, val]
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd)) might not hold on entry. Fraction rd might be negative. (graph-copy.vpr@147.17--147.68) [119704]"}
                (forall x_43_1: Ref ::
                { Heap[x_43_1, edges] } { QPMask[x_43_1, edges] } { setOfRef[x_43_1] }
                setOfRef[x_43_1] && dummyFunction(Heap[x_43_1, edges]) ==> rd_1 >= NoPerm
              );
            
            // -- check if receiver x is injective
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd)) might not hold on entry. Quantified resource x.edges might not be injective. (graph-copy.vpr@147.17--147.68) [119705]"}
                (forall x_43_1: Ref, x_43_2: Ref ::
                { neverTriggered14(x_43_1), neverTriggered14(x_43_2) }
                (((x_43_1 != x_43_2 && setOfRef[x_43_1]) && setOfRef[x_43_2]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_43_1 != x_43_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd)) might not hold on entry. There might be insufficient permission to access x.edges (graph-copy.vpr@147.17--147.68) [119706]"}
                (forall x_43_1: Ref ::
                { Heap[x_43_1, edges] } { QPMask[x_43_1, edges] } { setOfRef[x_43_1] }
                setOfRef[x_43_1] ==> Mask[x_43_1, edges] >= rd_1
              );
            
            // -- assumptions for inverse of receiver x
              assume (forall x_43_1: Ref ::
                { Heap[x_43_1, edges] } { QPMask[x_43_1, edges] } { setOfRef[x_43_1] }
                setOfRef[x_43_1] && NoPerm < rd_1 ==> qpRange14(x_43_1) && invRecv14(x_43_1) == x_43_1
              );
              assume (forall o_4: Ref ::
                { invRecv14(o_4) }
                setOfRef[invRecv14(o_4)] && (NoPerm < rd_1 && qpRange14(o_4)) ==> invRecv14(o_4) == o_4
              );
            
            // -- assume permission updates for field edges
              assume (forall o_4: Ref ::
                { QPMask[o_4, edges] }
                (setOfRef[invRecv14(o_4)] && (NoPerm < rd_1 && qpRange14(o_4)) ==> invRecv14(o_4) == o_4 && QPMask[o_4, edges] == Mask[o_4, edges] - rd_1) && (!(setOfRef[invRecv14(o_4)] && (NoPerm < rd_1 && qpRange14(o_4))) ==> QPMask[o_4, edges] == Mask[o_4, edges])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            if (*) {
              if (setOfRef[x_44_1]) {
                assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges)) might not hold on entry. Assertion x.edges == old(x.edges) might not hold. (graph-copy.vpr@148.17--148.75) [119707]"}
                  Heap[x_44_1, edges] == oldHeap[x_44_1, edges];
              }
              assume false;
            }
            assume (forall x_45_1: Ref ::
              { setOfRef[x_45_1] }
              setOfRef[x_45_1] ==> Heap[x_45_1, edges] == oldHeap[x_45_1, edges]
            );
            if (*) {
              if (S[j_9]) {
                assert {:msg "  Loop invariant (forall j: Int :: { (j in S) } { (edge_lookup(this.edges, j) in setOfRef) } (j in S) ==> (edge_lookup(this.edges, j) in setOfRef)) might not hold on entry. Assertion (edge_lookup(this.edges, j) in setOfRef) might not hold. (graph-copy.vpr@149.17--149.83) [119708]"}
                  setOfRef[(edge_lookup(Heap[this, edges], j_9): Ref)];
              }
              assume false;
            }
            assume (forall j_1_1_1: int ::
              { S[j_1_1_1] } { setOfRef[(edge_lookup(Heap[this, edges], j_1_1_1): Ref)] }
              S[j_1_1_1] ==> setOfRef[(edge_lookup(Heap[this, edges], j_1_1_1): Ref)]
            );
            if (*) {
              if (setOfRef[r_1] && (edges_domain(Heap[r_1, edges]): Set int)[j_2_1]) {
                assert {:msg "  Loop invariant (forall r: Ref, j: Int :: { (r in setOfRef), (j in edges_domain(r.edges)) } { (r in setOfRef), edge_lookup(r.edges, j) } { (r in setOfRef), (edge_lookup(r.edges, j) in setOfRef) } { edges_domain(r.edges), edge_lookup(r.edges, j) } { edges_domain(r.edges), (edge_lookup(r.edges, j) in setOfRef) } { (j in edges_domain(r.edges)) } { (edge_lookup(r.edges, j) in setOfRef) } (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef)) might not hold on entry. Assertion (edge_lookup(r.edges, j) in setOfRef) might not hold. (graph-copy.vpr@150.17--150.125) [119709]"}
                  setOfRef[(edge_lookup(Heap[r_1, edges], j_2_1): Ref)];
              }
              assume false;
            }
            assume (forall r_1_1_1: Ref, j_3_1_1: int ::
              { setOfRef[r_1_1_1], (edges_domain(Heap[r_1_1_1, edges]): Set int)[j_3_1_1] } { setOfRef[r_1_1_1], (edge_lookup(Heap[r_1_1_1, edges], j_3_1_1): Ref) } { setOfRef[r_1_1_1], setOfRef[(edge_lookup(Heap[r_1_1_1, edges], j_3_1_1): Ref)] } { (edges_domain(Heap[r_1_1_1, edges]): Set int), (edge_lookup(Heap[r_1_1_1, edges], j_3_1_1): Ref) } { (edges_domain(Heap[r_1_1_1, edges]): Set int), setOfRef[(edge_lookup(Heap[r_1_1_1, edges], j_3_1_1): Ref)] } { (edges_domain(Heap[r_1_1_1, edges]): Set int)[j_3_1_1] } { setOfRef[(edge_lookup(Heap[r_1_1_1, edges], j_3_1_1): Ref)] }
              setOfRef[r_1_1_1] && (edges_domain(Heap[r_1_1_1, edges]): Set int)[j_3_1_1] ==> setOfRef[(edge_lookup(Heap[r_1_1_1, edges], j_3_1_1): Ref)]
            );
            assert {:msg "  Loop invariant (node_map_image subset res_copy_nodes) might not hold on entry. Assertion (node_map_image subset res_copy_nodes) might not hold. (graph-copy.vpr@151.17--151.53) [119710]"}
              Set#Subset(node_map_image, res_copy_nodes);
            assert {:msg "  Loop invariant |(setOfRef intersection res_copy_nodes)| == 0 might not hold on entry. Assertion |(setOfRef intersection res_copy_nodes)| == 0 might not hold. (graph-copy.vpr@152.17--152.60) [119711]"}
              Set#Card(Set#Intersection(setOfRef, res_copy_nodes)) == 0;
            if (*) {
              if (Seq#Contains((map_domain(res_node_map): Seq Ref), r_2_1)) {
                assert {:msg "  Loop invariant (forall r: Ref :: { (r in map_domain(res_node_map)) } { (lookup(res_node_map, r) in res_copy_nodes) } (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes)) might not hold on entry. Assertion (lookup(res_node_map, r) in res_copy_nodes) might not hold. (graph-copy.vpr@153.17--153.108) [119712]"}
                  res_copy_nodes[(lookup(res_node_map, r_2_1): Ref)];
              }
              assume false;
            }
            assume (forall r_3_1: Ref ::
              { Seq#ContainsTrigger((map_domain(res_node_map): Seq Ref), r_3_1) } { Seq#Contains((map_domain(res_node_map): Seq Ref), r_3_1) } { res_copy_nodes[(lookup(res_node_map, r_3_1): Ref)] }
              Seq#Contains((map_domain(res_node_map): Seq Ref), r_3_1) ==> res_copy_nodes[(lookup(res_node_map, r_3_1): Ref)]
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver r is injective
              assert {:msg "  Loop invariant (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.val, write)) might not hold on entry. Quantified resource r.val might not be injective. (graph-copy.vpr@154.17--154.68) [119713]"}
                (forall r_4: Ref, r_4_1: Ref ::
                { neverTriggered15(r_4), neverTriggered15(r_4_1) }
                (((r_4 != r_4_1 && res_copy_nodes[r_4]) && res_copy_nodes[r_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4 != r_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.val, write)) might not hold on entry. There might be insufficient permission to access r.val (graph-copy.vpr@154.17--154.68) [119714]"}
                (forall r_4: Ref ::
                { Heap[r_4, val] } { QPMask[r_4, val] } { res_copy_nodes[r_4] }
                res_copy_nodes[r_4] ==> Mask[r_4, val] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver r
              assume (forall r_4: Ref ::
                { Heap[r_4, val] } { QPMask[r_4, val] } { res_copy_nodes[r_4] }
                res_copy_nodes[r_4] && NoPerm < FullPerm ==> qpRange15(r_4) && invRecv15(r_4) == r_4
              );
              assume (forall o_4: Ref ::
                { invRecv15(o_4) }
                res_copy_nodes[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
              );
            
            // -- assume permission updates for field val
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                (res_copy_nodes[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!(res_copy_nodes[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver r is injective
              assert {:msg "  Loop invariant (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.edges, write)) might not hold on entry. Quantified resource r.edges might not be injective. (graph-copy.vpr@155.17--155.70) [119715]"}
                (forall r_5: Ref, r_5_1: Ref ::
                { neverTriggered16(r_5), neverTriggered16(r_5_1) }
                (((r_5 != r_5_1 && res_copy_nodes[r_5]) && res_copy_nodes[r_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_5 != r_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.edges, write)) might not hold on entry. There might be insufficient permission to access r.edges (graph-copy.vpr@155.17--155.70) [119716]"}
                (forall r_5: Ref ::
                { Heap[r_5, edges] } { QPMask[r_5, edges] } { res_copy_nodes[r_5] }
                res_copy_nodes[r_5] ==> Mask[r_5, edges] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver r
              assume (forall r_5: Ref ::
                { Heap[r_5, edges] } { QPMask[r_5, edges] } { res_copy_nodes[r_5] }
                res_copy_nodes[r_5] && NoPerm < FullPerm ==> qpRange16(r_5) && invRecv16(r_5) == r_5
              );
              assume (forall o_4: Ref ::
                { invRecv16(o_4) }
                res_copy_nodes[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
              );
            
            // -- assume permission updates for field edges
              assume (forall o_4: Ref ::
                { QPMask[o_4, edges] }
                (res_copy_nodes[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4)) ==> invRecv16(o_4) == o_4 && QPMask[o_4, edges] == Mask[o_4, edges] - FullPerm) && (!(res_copy_nodes[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4))) ==> QPMask[o_4, edges] == Mask[o_4, edges])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc S, i_6_1, res_node_map, res_copy_nodes;
        
        // -- Check definedness of invariant
          if (*) {
            assume res_copy_nodes[nodeCopy];
            assume state(Heap, Mask);
            assume setOfRef[this];
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd))
              if (*) {
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource x.val might not be injective. (graph-copy.vpr@145.17--145.66) [119717]"}
              (forall x_47: Ref, x_47_1: Ref ::
              
              (((x_47 != x_47_1 && setOfRef[x_47]) && setOfRef[x_47_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_47 != x_47_1
            );
            
            // -- Define Inverse Function
              assume (forall x_47: Ref ::
                { Heap[x_47, val] } { QPMask[x_47, val] } { setOfRef[x_47] }
                setOfRef[x_47] && NoPerm < rd_1 ==> qpRange17(x_47) && invRecv17(x_47) == x_47
              );
              assume (forall o_4: Ref ::
                { invRecv17(o_4) }
                (setOfRef[invRecv17(o_4)] && NoPerm < rd_1) && qpRange17(o_4) ==> invRecv17(o_4) == o_4
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (graph-copy.vpr@145.17--145.66) [119718]"}
              (forall x_47: Ref ::
              { Heap[x_47, val] } { QPMask[x_47, val] } { setOfRef[x_47] }
              setOfRef[x_47] ==> rd_1 >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall x_47: Ref ::
                { Heap[x_47, val] } { QPMask[x_47, val] } { setOfRef[x_47] }
                setOfRef[x_47] && rd_1 > NoPerm ==> x_47 != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                ((setOfRef[invRecv17(o_4)] && NoPerm < rd_1) && qpRange17(o_4) ==> (NoPerm < rd_1 ==> invRecv17(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + rd_1) && (!((setOfRef[invRecv17(o_4)] && NoPerm < rd_1) && qpRange17(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
              if (*) {
                if (setOfRef[x_2]) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (graph-copy.vpr@146.17--146.71) [119719]"}
                    HasDirectPerm(Mask, x_2, val);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (graph-copy.vpr@146.17--146.71) [119720]"}
                    HasDirectPerm(oldMask, x_2, val);
                }
                assume false;
              }
            assume (forall x_49: Ref ::
              { setOfRef[x_49] }
              setOfRef[x_49] ==> Heap[x_49, val] == oldHeap[x_49, val]
            );
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd))
              if (*) {
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource x.edges might not be injective. (graph-copy.vpr@147.17--147.68) [119721]"}
              (forall x_51: Ref, x_51_1: Ref ::
              
              (((x_51 != x_51_1 && setOfRef[x_51]) && setOfRef[x_51_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_51 != x_51_1
            );
            
            // -- Define Inverse Function
              assume (forall x_51: Ref ::
                { Heap[x_51, edges] } { QPMask[x_51, edges] } { setOfRef[x_51] }
                setOfRef[x_51] && NoPerm < rd_1 ==> qpRange18(x_51) && invRecv18(x_51) == x_51
              );
              assume (forall o_4: Ref ::
                { invRecv18(o_4) }
                (setOfRef[invRecv18(o_4)] && NoPerm < rd_1) && qpRange18(o_4) ==> invRecv18(o_4) == o_4
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (graph-copy.vpr@147.17--147.68) [119722]"}
              (forall x_51: Ref ::
              { Heap[x_51, edges] } { QPMask[x_51, edges] } { setOfRef[x_51] }
              setOfRef[x_51] ==> rd_1 >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall x_51: Ref ::
                { Heap[x_51, edges] } { QPMask[x_51, edges] } { setOfRef[x_51] }
                setOfRef[x_51] && rd_1 > NoPerm ==> x_51 != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, edges] }
                ((setOfRef[invRecv18(o_4)] && NoPerm < rd_1) && qpRange18(o_4) ==> (NoPerm < rd_1 ==> invRecv18(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + rd_1) && (!((setOfRef[invRecv18(o_4)] && NoPerm < rd_1) && qpRange18(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
              if (*) {
                if (setOfRef[x_17]) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.edges (graph-copy.vpr@148.17--148.75) [119723]"}
                    HasDirectPerm(Mask, x_17, edges);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.edges (graph-copy.vpr@148.17--148.75) [119724]"}
                    HasDirectPerm(oldMask, x_17, edges);
                }
                assume false;
              }
            assume (forall x_53: Ref ::
              { setOfRef[x_53] }
              setOfRef[x_53] ==> Heap[x_53, edges] == oldHeap[x_53, edges]
            );
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall j: Int :: { (j in S) } { (edge_lookup(this.edges, j) in setOfRef) } (j in S) ==> (edge_lookup(this.edges, j) in setOfRef))
              if (*) {
                if (S[j_19]) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.edges (graph-copy.vpr@149.17--149.83) [119725]"}
                    HasDirectPerm(Mask, this, edges);
                }
                assume false;
              }
            assume (forall j_5_1: int ::
              { S[j_5_1] } { setOfRef[(edge_lookup(Heap[this, edges], j_5_1): Ref)] }
              S[j_5_1] ==> setOfRef[(edge_lookup(Heap[this, edges], j_5_1): Ref)]
            );
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall r: Ref, j: Int :: { (r in setOfRef), (j in edges_domain(r.edges)) } { (r in setOfRef), edge_lookup(r.edges, j) } { (r in setOfRef), (edge_lookup(r.edges, j) in setOfRef) } { edges_domain(r.edges), edge_lookup(r.edges, j) } { edges_domain(r.edges), (edge_lookup(r.edges, j) in setOfRef) } { (j in edges_domain(r.edges)) } { (edge_lookup(r.edges, j) in setOfRef) } (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef))
              if (*) {
                if (setOfRef[r_24]) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.edges (graph-copy.vpr@150.17--150.125) [119726]"}
                    HasDirectPerm(Mask, r_24, edges);
                }
                if (setOfRef[r_24] && (edges_domain(Heap[r_24, edges]): Set int)[j_23]) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.edges (graph-copy.vpr@150.17--150.125) [119727]"}
                    HasDirectPerm(Mask, r_24, edges);
                }
                assume false;
              }
            assume (forall r_7: Ref, j_7_1: int ::
              { setOfRef[r_7], (edges_domain(Heap[r_7, edges]): Set int)[j_7_1] } { setOfRef[r_7], (edge_lookup(Heap[r_7, edges], j_7_1): Ref) } { setOfRef[r_7], setOfRef[(edge_lookup(Heap[r_7, edges], j_7_1): Ref)] } { (edges_domain(Heap[r_7, edges]): Set int), (edge_lookup(Heap[r_7, edges], j_7_1): Ref) } { (edges_domain(Heap[r_7, edges]): Set int), setOfRef[(edge_lookup(Heap[r_7, edges], j_7_1): Ref)] } { (edges_domain(Heap[r_7, edges]): Set int)[j_7_1] } { setOfRef[(edge_lookup(Heap[r_7, edges], j_7_1): Ref)] }
              setOfRef[r_7] && (edges_domain(Heap[r_7, edges]): Set int)[j_7_1] ==> setOfRef[(edge_lookup(Heap[r_7, edges], j_7_1): Ref)]
            );
            assume state(Heap, Mask);
            assume Set#Subset(node_map_image, res_copy_nodes);
            assume state(Heap, Mask);
            assume Set#Card(Set#Intersection(setOfRef, res_copy_nodes)) == 0;
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall r: Ref :: { (r in map_domain(res_node_map)) } { (lookup(res_node_map, r) in res_copy_nodes) } (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes))
              if (*) {
                assume false;
              }
            assume (forall r_9: Ref ::
              { Seq#ContainsTrigger((map_domain(res_node_map): Seq Ref), r_9) } { Seq#Contains((map_domain(res_node_map): Seq Ref), r_9) } { res_copy_nodes[(lookup(res_node_map, r_9): Ref)] }
              Seq#Contains((map_domain(res_node_map): Seq Ref), r_9) ==> res_copy_nodes[(lookup(res_node_map, r_9): Ref)]
            );
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.val, write))
              if (*) {
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource r.val might not be injective. (graph-copy.vpr@154.17--154.68) [119728]"}
              (forall r_11_2: Ref, r_11_3: Ref ::
              
              (((r_11_2 != r_11_3 && res_copy_nodes[r_11_2]) && res_copy_nodes[r_11_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_11_2 != r_11_3
            );
            
            // -- Define Inverse Function
              assume (forall r_11_2: Ref ::
                { Heap[r_11_2, val] } { QPMask[r_11_2, val] } { res_copy_nodes[r_11_2] }
                res_copy_nodes[r_11_2] && NoPerm < FullPerm ==> qpRange19(r_11_2) && invRecv19(r_11_2) == r_11_2
              );
              assume (forall o_4: Ref ::
                { invRecv19(o_4) }
                (res_copy_nodes[invRecv19(o_4)] && NoPerm < FullPerm) && qpRange19(o_4) ==> invRecv19(o_4) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall r_11_2: Ref ::
                { Heap[r_11_2, val] } { QPMask[r_11_2, val] } { res_copy_nodes[r_11_2] }
                res_copy_nodes[r_11_2] ==> r_11_2 != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                ((res_copy_nodes[invRecv19(o_4)] && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> invRecv19(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((res_copy_nodes[invRecv19(o_4)] && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.edges, write))
              if (*) {
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource r.edges might not be injective. (graph-copy.vpr@155.17--155.70) [119729]"}
              (forall r_13_2: Ref, r_13_3: Ref ::
              
              (((r_13_2 != r_13_3 && res_copy_nodes[r_13_2]) && res_copy_nodes[r_13_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_13_2 != r_13_3
            );
            
            // -- Define Inverse Function
              assume (forall r_13_2: Ref ::
                { Heap[r_13_2, edges] } { QPMask[r_13_2, edges] } { res_copy_nodes[r_13_2] }
                res_copy_nodes[r_13_2] && NoPerm < FullPerm ==> qpRange20(r_13_2) && invRecv20(r_13_2) == r_13_2
              );
              assume (forall o_4: Ref ::
                { invRecv20(o_4) }
                (res_copy_nodes[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4) ==> invRecv20(o_4) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall r_13_2: Ref ::
                { Heap[r_13_2, edges] } { QPMask[r_13_2, edges] } { res_copy_nodes[r_13_2] }
                res_copy_nodes[r_13_2] ==> r_13_2 != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, edges] }
                ((res_copy_nodes[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> invRecv20(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + FullPerm) && (!((res_copy_nodes[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
            assume res_copy_nodes[nodeCopy];
            assume setOfRef[this];
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource x.val might not be injective. (graph-copy.vpr@145.17--145.66) [119730]"}
              (forall x_54: Ref, x_54_1: Ref ::
              
              (((x_54 != x_54_1 && setOfRef[x_54]) && setOfRef[x_54_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_54 != x_54_1
            );
            
            // -- Define Inverse Function
              assume (forall x_54: Ref ::
                { Heap[x_54, val] } { QPMask[x_54, val] } { setOfRef[x_54] }
                setOfRef[x_54] && NoPerm < rd_1 ==> qpRange21(x_54) && invRecv21(x_54) == x_54
              );
              assume (forall o_4: Ref ::
                { invRecv21(o_4) }
                (setOfRef[invRecv21(o_4)] && NoPerm < rd_1) && qpRange21(o_4) ==> invRecv21(o_4) == o_4
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  While statement might fail. Fraction rd might be negative. (graph-copy.vpr@145.17--145.66) [119731]"}
              (forall x_54: Ref ::
              { Heap[x_54, val] } { QPMask[x_54, val] } { setOfRef[x_54] }
              setOfRef[x_54] ==> rd_1 >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall x_54: Ref ::
                { Heap[x_54, val] } { QPMask[x_54, val] } { setOfRef[x_54] }
                setOfRef[x_54] && rd_1 > NoPerm ==> x_54 != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                ((setOfRef[invRecv21(o_4)] && NoPerm < rd_1) && qpRange21(o_4) ==> (NoPerm < rd_1 ==> invRecv21(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + rd_1) && (!((setOfRef[invRecv21(o_4)] && NoPerm < rd_1) && qpRange21(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume (forall x_55: Ref ::
              { setOfRef[x_55] }
              setOfRef[x_55] ==> Heap[x_55, val] == oldHeap[x_55, val]
            );
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource x.edges might not be injective. (graph-copy.vpr@147.17--147.68) [119732]"}
              (forall x_56: Ref, x_56_1: Ref ::
              
              (((x_56 != x_56_1 && setOfRef[x_56]) && setOfRef[x_56_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_56 != x_56_1
            );
            
            // -- Define Inverse Function
              assume (forall x_56: Ref ::
                { Heap[x_56, edges] } { QPMask[x_56, edges] } { setOfRef[x_56] }
                setOfRef[x_56] && NoPerm < rd_1 ==> qpRange22(x_56) && invRecv22(x_56) == x_56
              );
              assume (forall o_4: Ref ::
                { invRecv22(o_4) }
                (setOfRef[invRecv22(o_4)] && NoPerm < rd_1) && qpRange22(o_4) ==> invRecv22(o_4) == o_4
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  While statement might fail. Fraction rd might be negative. (graph-copy.vpr@147.17--147.68) [119733]"}
              (forall x_56: Ref ::
              { Heap[x_56, edges] } { QPMask[x_56, edges] } { setOfRef[x_56] }
              setOfRef[x_56] ==> rd_1 >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall x_56: Ref ::
                { Heap[x_56, edges] } { QPMask[x_56, edges] } { setOfRef[x_56] }
                setOfRef[x_56] && rd_1 > NoPerm ==> x_56 != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, edges] }
                ((setOfRef[invRecv22(o_4)] && NoPerm < rd_1) && qpRange22(o_4) ==> (NoPerm < rd_1 ==> invRecv22(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + rd_1) && (!((setOfRef[invRecv22(o_4)] && NoPerm < rd_1) && qpRange22(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume (forall x_57: Ref ::
              { setOfRef[x_57] }
              setOfRef[x_57] ==> Heap[x_57, edges] == oldHeap[x_57, edges]
            );
            assume (forall j_8: int ::
              { S[j_8] } { setOfRef[(edge_lookup(Heap[this, edges], j_8): Ref)] }
              S[j_8] ==> setOfRef[(edge_lookup(Heap[this, edges], j_8): Ref)]
            );
            assume (forall r_14: Ref, j_9_1: int ::
              { setOfRef[r_14], (edges_domain(Heap[r_14, edges]): Set int)[j_9_1] } { setOfRef[r_14], (edge_lookup(Heap[r_14, edges], j_9_1): Ref) } { setOfRef[r_14], setOfRef[(edge_lookup(Heap[r_14, edges], j_9_1): Ref)] } { (edges_domain(Heap[r_14, edges]): Set int), (edge_lookup(Heap[r_14, edges], j_9_1): Ref) } { (edges_domain(Heap[r_14, edges]): Set int), setOfRef[(edge_lookup(Heap[r_14, edges], j_9_1): Ref)] } { (edges_domain(Heap[r_14, edges]): Set int)[j_9_1] } { setOfRef[(edge_lookup(Heap[r_14, edges], j_9_1): Ref)] }
              setOfRef[r_14] && (edges_domain(Heap[r_14, edges]): Set int)[j_9_1] ==> setOfRef[(edge_lookup(Heap[r_14, edges], j_9_1): Ref)]
            );
            assume Set#Subset(node_map_image, res_copy_nodes);
            assume Set#Card(Set#Intersection(setOfRef, res_copy_nodes)) == 0;
            assume (forall r_15_2: Ref ::
              { Seq#ContainsTrigger((map_domain(res_node_map): Seq Ref), r_15_2) } { Seq#Contains((map_domain(res_node_map): Seq Ref), r_15_2) } { res_copy_nodes[(lookup(res_node_map, r_15_2): Ref)] }
              Seq#Contains((map_domain(res_node_map): Seq Ref), r_15_2) ==> res_copy_nodes[(lookup(res_node_map, r_15_2): Ref)]
            );
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource r.val might not be injective. (graph-copy.vpr@154.17--154.68) [119734]"}
              (forall r_16: Ref, r_16_1: Ref ::
              
              (((r_16 != r_16_1 && res_copy_nodes[r_16]) && res_copy_nodes[r_16_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_16 != r_16_1
            );
            
            // -- Define Inverse Function
              assume (forall r_16: Ref ::
                { Heap[r_16, val] } { QPMask[r_16, val] } { res_copy_nodes[r_16] }
                res_copy_nodes[r_16] && NoPerm < FullPerm ==> qpRange23(r_16) && invRecv23(r_16) == r_16
              );
              assume (forall o_4: Ref ::
                { invRecv23(o_4) }
                (res_copy_nodes[invRecv23(o_4)] && NoPerm < FullPerm) && qpRange23(o_4) ==> invRecv23(o_4) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall r_16: Ref ::
                { Heap[r_16, val] } { QPMask[r_16, val] } { res_copy_nodes[r_16] }
                res_copy_nodes[r_16] ==> r_16 != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                ((res_copy_nodes[invRecv23(o_4)] && NoPerm < FullPerm) && qpRange23(o_4) ==> (NoPerm < FullPerm ==> invRecv23(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((res_copy_nodes[invRecv23(o_4)] && NoPerm < FullPerm) && qpRange23(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource r.edges might not be injective. (graph-copy.vpr@155.17--155.70) [119735]"}
              (forall r_17: Ref, r_17_1: Ref ::
              
              (((r_17 != r_17_1 && res_copy_nodes[r_17]) && res_copy_nodes[r_17_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_17 != r_17_1
            );
            
            // -- Define Inverse Function
              assume (forall r_17: Ref ::
                { Heap[r_17, edges] } { QPMask[r_17, edges] } { res_copy_nodes[r_17] }
                res_copy_nodes[r_17] && NoPerm < FullPerm ==> qpRange24(r_17) && invRecv24(r_17) == r_17
              );
              assume (forall o_4: Ref ::
                { invRecv24(o_4) }
                (res_copy_nodes[invRecv24(o_4)] && NoPerm < FullPerm) && qpRange24(o_4) ==> invRecv24(o_4) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall r_17: Ref ::
                { Heap[r_17, edges] } { QPMask[r_17, edges] } { res_copy_nodes[r_17] }
                res_copy_nodes[r_17] ==> r_17 != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, edges] }
                ((res_copy_nodes[invRecv24(o_4)] && NoPerm < FullPerm) && qpRange24(o_4) ==> (NoPerm < FullPerm ==> invRecv24(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + FullPerm) && (!((res_copy_nodes[invRecv24(o_4)] && NoPerm < FullPerm) && qpRange24(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            // Check and assume guard
            assume Set#Card(S) > 0;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Assumptions about local variables
                assume Heap[newNode, $allocated];
                assume Heap[nodeForId, $allocated];
              
              // -- Translating statement: S, i := pop(S) -- graph-copy.vpr@157.7--157.21
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_s1 := S;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method pop might not hold. Assertion 0 < |S| might not hold. (graph-copy.vpr@157.7--157.21) [119736]"}
                    0 < Set#Card(arg_s1);
                
                // -- Havocing target variables
                  havoc S, i_6_1;
                
                // -- Inhaling postcondition
                  assume arg_s1[i_6_1];
                  assume Set#Equal(S, Set#Difference(arg_s1, Set#Singleton(i_6_1)));
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: nodeForId := edge_lookup(this.edges, i) -- graph-copy.vpr@163.7--163.46
                
                // -- Check definedness of edge_lookup(this.edges, i)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access this.edges (graph-copy.vpr@163.7--163.46) [119737]"}
                    HasDirectPerm(Mask, this, edges);
                nodeForId := (edge_lookup(Heap[this, edges], i_6_1): Ref);
                assume state(Heap, Mask);
              
              // -- Translating statement: newNode, res_node_map, res_copy_nodes := graph_copy_rec(nodeForId, res_node_map,
  //   setOfRef, res_copy_nodes, rd / 2) -- graph-copy.vpr@165.7--165.119
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_node_map := res_node_map;
                arg_node_map_image := res_copy_nodes;
                arg_rd := rd_1 / 2;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method graph_copy_rec might not hold. Assertion none < rd / 2 might not hold. (graph-copy.vpr@165.7--165.119) [119738]"}
                    NoPerm < arg_rd;
                  assert {:msg "  The precondition of method graph_copy_rec might not hold. Assertion nodeForId != null might not hold. (graph-copy.vpr@165.7--165.119) [119739]"}
                    nodeForId != null;
                  assert {:msg "  The precondition of method graph_copy_rec might not hold. Assertion (nodeForId in setOfRef) might not hold. (graph-copy.vpr@165.7--165.119) [119740]"}
                    setOfRef[nodeForId];
                  assert {:msg "  The precondition of method graph_copy_rec might not hold. Assertion |(setOfRef intersection res_copy_nodes)| == 0 might not hold. (graph-copy.vpr@165.7--165.119) [119741]"}
                    Set#Card(Set#Intersection(setOfRef, arg_node_map_image)) == 0;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. Fraction rd / 2 might be negative. (graph-copy.vpr@165.7--165.119) [119742]"}
                      (forall x_58: Ref ::
                      { Heap[x_58, val] } { QPMask[x_58, val] } { setOfRef[x_58] }
                      setOfRef[x_58] && dummyFunction(Heap[x_58, val]) ==> arg_rd >= NoPerm
                    );
                  
                  // -- check if receiver x is injective
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. Quantified resource x.val might not be injective. (graph-copy.vpr@165.7--165.119) [119743]"}
                      (forall x_58: Ref, x_58_1: Ref ::
                      { neverTriggered25(x_58), neverTriggered25(x_58_1) }
                      (((x_58 != x_58_1 && setOfRef[x_58]) && setOfRef[x_58_1]) && NoPerm < arg_rd) && NoPerm < arg_rd ==> x_58 != x_58_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. There might be insufficient permission to access x.val (graph-copy.vpr@165.7--165.119) [119744]"}
                      (forall x_58: Ref ::
                      { Heap[x_58, val] } { QPMask[x_58, val] } { setOfRef[x_58] }
                      setOfRef[x_58] ==> Mask[x_58, val] >= arg_rd
                    );
                  
                  // -- assumptions for inverse of receiver x
                    assume (forall x_58: Ref ::
                      { Heap[x_58, val] } { QPMask[x_58, val] } { setOfRef[x_58] }
                      setOfRef[x_58] && NoPerm < arg_rd ==> qpRange25(x_58) && invRecv25(x_58) == x_58
                    );
                    assume (forall o_4: Ref ::
                      { invRecv25(o_4) }
                      setOfRef[invRecv25(o_4)] && (NoPerm < arg_rd && qpRange25(o_4)) ==> invRecv25(o_4) == o_4
                    );
                  
                  // -- assume permission updates for field val
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, val] }
                      (setOfRef[invRecv25(o_4)] && (NoPerm < arg_rd && qpRange25(o_4)) ==> invRecv25(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - arg_rd) && (!(setOfRef[invRecv25(o_4)] && (NoPerm < arg_rd && qpRange25(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. Fraction rd / 2 might be negative. (graph-copy.vpr@165.7--165.119) [119745]"}
                      (forall x_59: Ref ::
                      { Heap[x_59, edges] } { QPMask[x_59, edges] } { setOfRef[x_59] }
                      setOfRef[x_59] && dummyFunction(Heap[x_59, edges]) ==> arg_rd >= NoPerm
                    );
                  
                  // -- check if receiver x is injective
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. Quantified resource x.edges might not be injective. (graph-copy.vpr@165.7--165.119) [119746]"}
                      (forall x_59: Ref, x_59_1: Ref ::
                      { neverTriggered26(x_59), neverTriggered26(x_59_1) }
                      (((x_59 != x_59_1 && setOfRef[x_59]) && setOfRef[x_59_1]) && NoPerm < arg_rd) && NoPerm < arg_rd ==> x_59 != x_59_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. There might be insufficient permission to access x.edges (graph-copy.vpr@165.7--165.119) [119747]"}
                      (forall x_59: Ref ::
                      { Heap[x_59, edges] } { QPMask[x_59, edges] } { setOfRef[x_59] }
                      setOfRef[x_59] ==> Mask[x_59, edges] >= arg_rd
                    );
                  
                  // -- assumptions for inverse of receiver x
                    assume (forall x_59: Ref ::
                      { Heap[x_59, edges] } { QPMask[x_59, edges] } { setOfRef[x_59] }
                      setOfRef[x_59] && NoPerm < arg_rd ==> qpRange26(x_59) && invRecv26(x_59) == x_59
                    );
                    assume (forall o_4: Ref ::
                      { invRecv26(o_4) }
                      setOfRef[invRecv26(o_4)] && (NoPerm < arg_rd && qpRange26(o_4)) ==> invRecv26(o_4) == o_4
                    );
                  
                  // -- assume permission updates for field edges
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, edges] }
                      (setOfRef[invRecv26(o_4)] && (NoPerm < arg_rd && qpRange26(o_4)) ==> invRecv26(o_4) == o_4 && QPMask[o_4, edges] == Mask[o_4, edges] - arg_rd) && (!(setOfRef[invRecv26(o_4)] && (NoPerm < arg_rd && qpRange26(o_4))) ==> QPMask[o_4, edges] == Mask[o_4, edges])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (setOfRef[x_60] && (edges_domain(Heap[x_60, edges]): Set int)[i$0]) {
                      assert {:msg "  The precondition of method graph_copy_rec might not hold. Assertion (edge_lookup(x.edges, i$0) in setOfRef) might not hold. (graph-copy.vpr@165.7--165.119) [119748]"}
                        setOfRef[(edge_lookup(Heap[x_60, edges], i$0): Ref)];
                    }
                    assume false;
                  }
                  assume (forall x_61_1: Ref, i$0_1_1_1: int ::
                    { setOfRef[x_61_1], (edges_domain(Heap[x_61_1, edges]): Set int)[i$0_1_1_1] } { setOfRef[x_61_1], (edge_lookup(Heap[x_61_1, edges], i$0_1_1_1): Ref) } { setOfRef[x_61_1], setOfRef[(edge_lookup(Heap[x_61_1, edges], i$0_1_1_1): Ref)] } { (edges_domain(Heap[x_61_1, edges]): Set int), (edge_lookup(Heap[x_61_1, edges], i$0_1_1_1): Ref) } { (edges_domain(Heap[x_61_1, edges]): Set int), setOfRef[(edge_lookup(Heap[x_61_1, edges], i$0_1_1_1): Ref)] } { (edges_domain(Heap[x_61_1, edges]): Set int)[i$0_1_1_1] } { setOfRef[(edge_lookup(Heap[x_61_1, edges], i$0_1_1_1): Ref)] }
                    setOfRef[x_61_1] && (edges_domain(Heap[x_61_1, edges]): Set int)[i$0_1_1_1] ==> setOfRef[(edge_lookup(Heap[x_61_1, edges], i$0_1_1_1): Ref)]
                  );
                  if (*) {
                    if (Seq#Contains((map_domain(arg_node_map): Seq Ref), x_62)) {
                      assert {:msg "  The precondition of method graph_copy_rec might not hold. Assertion (lookup(res_node_map, x) in res_copy_nodes) might not hold. (graph-copy.vpr@165.7--165.119) [119749]"}
                        arg_node_map_image[(lookup(arg_node_map, x_62): Ref)];
                    }
                    assume false;
                  }
                  assume (forall x_63_1: Ref ::
                    { Seq#ContainsTrigger((map_domain(arg_node_map): Seq Ref), x_63_1) } { Seq#Contains((map_domain(arg_node_map): Seq Ref), x_63_1) } { arg_node_map_image[(lookup(arg_node_map, x_63_1): Ref)] }
                    Seq#Contains((map_domain(arg_node_map): Seq Ref), x_63_1) ==> arg_node_map_image[(lookup(arg_node_map, x_63_1): Ref)]
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver x is injective
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. Quantified resource x.val might not be injective. (graph-copy.vpr@165.7--165.119) [119750]"}
                      (forall x_64: Ref, x_64_1: Ref ::
                      { neverTriggered27(x_64), neverTriggered27(x_64_1) }
                      (((x_64 != x_64_1 && arg_node_map_image[x_64]) && arg_node_map_image[x_64_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_64 != x_64_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. There might be insufficient permission to access x.val (graph-copy.vpr@165.7--165.119) [119751]"}
                      (forall x_64: Ref ::
                      { Heap[x_64, val] } { QPMask[x_64, val] } { arg_node_map_image[x_64] }
                      arg_node_map_image[x_64] ==> Mask[x_64, val] >= FullPerm
                    );
                  
                  // -- assumptions for inverse of receiver x
                    assume (forall x_64: Ref ::
                      { Heap[x_64, val] } { QPMask[x_64, val] } { arg_node_map_image[x_64] }
                      arg_node_map_image[x_64] && NoPerm < FullPerm ==> qpRange27(x_64) && invRecv27(x_64) == x_64
                    );
                    assume (forall o_4: Ref ::
                      { invRecv27(o_4) }
                      arg_node_map_image[invRecv27(o_4)] && (NoPerm < FullPerm && qpRange27(o_4)) ==> invRecv27(o_4) == o_4
                    );
                  
                  // -- assume permission updates for field val
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, val] }
                      (arg_node_map_image[invRecv27(o_4)] && (NoPerm < FullPerm && qpRange27(o_4)) ==> invRecv27(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!(arg_node_map_image[invRecv27(o_4)] && (NoPerm < FullPerm && qpRange27(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver x is injective
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. Quantified resource x.edges might not be injective. (graph-copy.vpr@165.7--165.119) [119752]"}
                      (forall x_65: Ref, x_65_1: Ref ::
                      { neverTriggered28(x_65), neverTriggered28(x_65_1) }
                      (((x_65 != x_65_1 && arg_node_map_image[x_65]) && arg_node_map_image[x_65_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_65 != x_65_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method graph_copy_rec might not hold. There might be insufficient permission to access x.edges (graph-copy.vpr@165.7--165.119) [119753]"}
                      (forall x_65: Ref ::
                      { Heap[x_65, edges] } { QPMask[x_65, edges] } { arg_node_map_image[x_65] }
                      arg_node_map_image[x_65] ==> Mask[x_65, edges] >= FullPerm
                    );
                  
                  // -- assumptions for inverse of receiver x
                    assume (forall x_65: Ref ::
                      { Heap[x_65, edges] } { QPMask[x_65, edges] } { arg_node_map_image[x_65] }
                      arg_node_map_image[x_65] && NoPerm < FullPerm ==> qpRange28(x_65) && invRecv28(x_65) == x_65
                    );
                    assume (forall o_4: Ref ::
                      { invRecv28(o_4) }
                      arg_node_map_image[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4)) ==> invRecv28(o_4) == o_4
                    );
                  
                  // -- assume permission updates for field edges
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, edges] }
                      (arg_node_map_image[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4)) ==> invRecv28(o_4) == o_4 && QPMask[o_4, edges] == Mask[o_4, edges] - FullPerm) && (!(arg_node_map_image[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4))) ==> QPMask[o_4, edges] == Mask[o_4, edges])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc newNode, res_node_map, res_copy_nodes;
                
                // -- Inhaling postcondition
                  assume newNode != null;
                  assume res_copy_nodes[newNode];
                  assume Set#Card(Set#Intersection(setOfRef, res_copy_nodes)) == 0;
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource x.val might not be injective. (graph-copy.vpr@165.7--165.119) [119754]"}
                    (forall x_66: Ref, x_66_1: Ref ::
                    
                    (((x_66 != x_66_1 && setOfRef[x_66]) && setOfRef[x_66_1]) && NoPerm < arg_rd) && NoPerm < arg_rd ==> x_66 != x_66_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall x_66: Ref ::
                      { Heap[x_66, val] } { QPMask[x_66, val] } { setOfRef[x_66] }
                      setOfRef[x_66] && NoPerm < arg_rd ==> qpRange29(x_66) && invRecv29(x_66) == x_66
                    );
                    assume (forall o_4: Ref ::
                      { invRecv29(o_4) }
                      (setOfRef[invRecv29(o_4)] && NoPerm < arg_rd) && qpRange29(o_4) ==> invRecv29(o_4) == o_4
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction rd / 2 might be negative. (graph-copy.vpr@165.7--165.119) [119755]"}
                    (forall x_66: Ref ::
                    { Heap[x_66, val] } { QPMask[x_66, val] } { setOfRef[x_66] }
                    setOfRef[x_66] ==> arg_rd >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall x_66: Ref ::
                      { Heap[x_66, val] } { QPMask[x_66, val] } { setOfRef[x_66] }
                      setOfRef[x_66] && arg_rd > NoPerm ==> x_66 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, val] }
                      ((setOfRef[invRecv29(o_4)] && NoPerm < arg_rd) && qpRange29(o_4) ==> (NoPerm < arg_rd ==> invRecv29(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + arg_rd) && (!((setOfRef[invRecv29(o_4)] && NoPerm < arg_rd) && qpRange29(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall x_67: Ref ::
                    { setOfRef[x_67] }
                    setOfRef[x_67] ==> Heap[x_67, val] == PreCallHeap[x_67, val]
                  );
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource x.edges might not be injective. (graph-copy.vpr@165.7--165.119) [119756]"}
                    (forall x_68: Ref, x_68_1: Ref ::
                    
                    (((x_68 != x_68_1 && setOfRef[x_68]) && setOfRef[x_68_1]) && NoPerm < arg_rd) && NoPerm < arg_rd ==> x_68 != x_68_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall x_68: Ref ::
                      { Heap[x_68, edges] } { QPMask[x_68, edges] } { setOfRef[x_68] }
                      setOfRef[x_68] && NoPerm < arg_rd ==> qpRange30(x_68) && invRecv30(x_68) == x_68
                    );
                    assume (forall o_4: Ref ::
                      { invRecv30(o_4) }
                      (setOfRef[invRecv30(o_4)] && NoPerm < arg_rd) && qpRange30(o_4) ==> invRecv30(o_4) == o_4
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction rd / 2 might be negative. (graph-copy.vpr@165.7--165.119) [119757]"}
                    (forall x_68: Ref ::
                    { Heap[x_68, edges] } { QPMask[x_68, edges] } { setOfRef[x_68] }
                    setOfRef[x_68] ==> arg_rd >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall x_68: Ref ::
                      { Heap[x_68, edges] } { QPMask[x_68, edges] } { setOfRef[x_68] }
                      setOfRef[x_68] && arg_rd > NoPerm ==> x_68 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, edges] }
                      ((setOfRef[invRecv30(o_4)] && NoPerm < arg_rd) && qpRange30(o_4) ==> (NoPerm < arg_rd ==> invRecv30(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + arg_rd) && (!((setOfRef[invRecv30(o_4)] && NoPerm < arg_rd) && qpRange30(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall x_69: Ref ::
                    { setOfRef[x_69] }
                    setOfRef[x_69] ==> Heap[x_69, edges] == PreCallHeap[x_69, edges]
                  );
                  assume (forall x_70: Ref, i$0_2: int ::
                    { setOfRef[x_70], (edges_domain(Heap[x_70, edges]): Set int)[i$0_2] } { setOfRef[x_70], (edge_lookup(Heap[x_70, edges], i$0_2): Ref) } { setOfRef[x_70], setOfRef[(edge_lookup(Heap[x_70, edges], i$0_2): Ref)] } { (edges_domain(Heap[x_70, edges]): Set int), (edge_lookup(Heap[x_70, edges], i$0_2): Ref) } { (edges_domain(Heap[x_70, edges]): Set int), setOfRef[(edge_lookup(Heap[x_70, edges], i$0_2): Ref)] } { (edges_domain(Heap[x_70, edges]): Set int)[i$0_2] } { setOfRef[(edge_lookup(Heap[x_70, edges], i$0_2): Ref)] }
                    setOfRef[x_70] && (edges_domain(Heap[x_70, edges]): Set int)[i$0_2] ==> setOfRef[(edge_lookup(Heap[x_70, edges], i$0_2): Ref)]
                  );
                  assume Set#Equal(res_copy_nodes, Set#Union(res_copy_nodes, arg_node_map_image));
                  assume (forall x_71: Ref ::
                    { Seq#ContainsTrigger((map_domain(res_node_map): Seq Ref), x_71) } { Seq#Contains((map_domain(res_node_map): Seq Ref), x_71) } { res_copy_nodes[(lookup(res_node_map, x_71): Ref)] }
                    Seq#Contains((map_domain(res_node_map): Seq Ref), x_71) ==> res_copy_nodes[(lookup(res_node_map, x_71): Ref)]
                  );
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource x.val might not be injective. (graph-copy.vpr@165.7--165.119) [119758]"}
                    (forall x_72: Ref, x_72_1: Ref ::
                    
                    (((x_72 != x_72_1 && res_copy_nodes[x_72]) && res_copy_nodes[x_72_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_72 != x_72_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall x_72: Ref ::
                      { Heap[x_72, val] } { QPMask[x_72, val] } { res_copy_nodes[x_72] }
                      res_copy_nodes[x_72] && NoPerm < FullPerm ==> qpRange31(x_72) && invRecv31(x_72) == x_72
                    );
                    assume (forall o_4: Ref ::
                      { invRecv31(o_4) }
                      (res_copy_nodes[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> invRecv31(o_4) == o_4
                    );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall x_72: Ref ::
                      { Heap[x_72, val] } { QPMask[x_72, val] } { res_copy_nodes[x_72] }
                      res_copy_nodes[x_72] ==> x_72 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, val] }
                      ((res_copy_nodes[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> (NoPerm < FullPerm ==> invRecv31(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((res_copy_nodes[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource x.edges might not be injective. (graph-copy.vpr@165.7--165.119) [119759]"}
                    (forall x_73: Ref, x_73_1: Ref ::
                    
                    (((x_73 != x_73_1 && res_copy_nodes[x_73]) && res_copy_nodes[x_73_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_73 != x_73_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall x_73: Ref ::
                      { Heap[x_73, edges] } { QPMask[x_73, edges] } { res_copy_nodes[x_73] }
                      res_copy_nodes[x_73] && NoPerm < FullPerm ==> qpRange32(x_73) && invRecv32(x_73) == x_73
                    );
                    assume (forall o_4: Ref ::
                      { invRecv32(o_4) }
                      (res_copy_nodes[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4) ==> invRecv32(o_4) == o_4
                    );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall x_73: Ref ::
                      { Heap[x_73, edges] } { QPMask[x_73, edges] } { res_copy_nodes[x_73] }
                      res_copy_nodes[x_73] ==> x_73 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, edges] }
                      ((res_copy_nodes[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4) ==> (NoPerm < FullPerm ==> invRecv32(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + FullPerm) && (!((res_copy_nodes[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume state(Heap, Mask);
                assume Heap[newNode, $allocated];
                assume state(Heap, Mask);
              
              // -- Translating statement: nodeCopy.edges := insert_edge(nodeCopy.edges, i, newNode) -- graph-copy.vpr@167.7--167.64
                
                // -- Check definedness of insert_edge(nodeCopy.edges, i, newNode)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access nodeCopy.edges (graph-copy.vpr@167.7--167.64) [119760]"}
                    HasDirectPerm(Mask, nodeCopy, edges);
                assert {:msg "  Assignment might fail. There might be insufficient permission to access nodeCopy.edges (graph-copy.vpr@167.7--167.64) [119761]"}
                  FullPerm == Mask[nodeCopy, edges];
                Heap := Heap[nodeCopy, edges:=(insert_edge(Heap[nodeCopy, edges], i_6_1, newNode): IEdgesDomainType)];
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Loop invariant (nodeCopy in res_copy_nodes) might not be preserved. Assertion (nodeCopy in res_copy_nodes) might not hold. (graph-copy.vpr@143.17--143.43) [119762]"}
              res_copy_nodes[nodeCopy];
            assert {:msg "  Loop invariant (this in setOfRef) might not be preserved. Assertion (this in setOfRef) might not hold. (graph-copy.vpr@144.17--144.33) [119763]"}
              setOfRef[this];
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd)) might not be preserved. Fraction rd might be negative. (graph-copy.vpr@145.17--145.66) [119764]"}
                (forall x_74: Ref ::
                { Heap[x_74, val] } { QPMask[x_74, val] } { setOfRef[x_74] }
                setOfRef[x_74] && dummyFunction(Heap[x_74, val]) ==> rd_1 >= NoPerm
              );
            
            // -- check if receiver x is injective
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd)) might not be preserved. Quantified resource x.val might not be injective. (graph-copy.vpr@145.17--145.66) [119765]"}
                (forall x_74: Ref, x_74_1: Ref ::
                { neverTriggered33(x_74), neverTriggered33(x_74_1) }
                (((x_74 != x_74_1 && setOfRef[x_74]) && setOfRef[x_74_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_74 != x_74_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.val, rd)) might not be preserved. There might be insufficient permission to access x.val (graph-copy.vpr@145.17--145.66) [119766]"}
                (forall x_74: Ref ::
                { Heap[x_74, val] } { QPMask[x_74, val] } { setOfRef[x_74] }
                setOfRef[x_74] ==> Mask[x_74, val] >= rd_1
              );
            
            // -- assumptions for inverse of receiver x
              assume (forall x_74: Ref ::
                { Heap[x_74, val] } { QPMask[x_74, val] } { setOfRef[x_74] }
                setOfRef[x_74] && NoPerm < rd_1 ==> qpRange33(x_74) && invRecv33(x_74) == x_74
              );
              assume (forall o_4: Ref ::
                { invRecv33(o_4) }
                setOfRef[invRecv33(o_4)] && (NoPerm < rd_1 && qpRange33(o_4)) ==> invRecv33(o_4) == o_4
              );
            
            // -- assume permission updates for field val
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                (setOfRef[invRecv33(o_4)] && (NoPerm < rd_1 && qpRange33(o_4)) ==> invRecv33(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - rd_1) && (!(setOfRef[invRecv33(o_4)] && (NoPerm < rd_1 && qpRange33(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            if (*) {
              if (setOfRef[x_75]) {
                assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val)) might not be preserved. Assertion x.val == old(x.val) might not hold. (graph-copy.vpr@146.17--146.71) [119767]"}
                  Heap[x_75, val] == oldHeap[x_75, val];
              }
              assume false;
            }
            assume (forall x_76_1: Ref ::
              { setOfRef[x_76_1] }
              setOfRef[x_76_1] ==> Heap[x_76_1, val] == oldHeap[x_76_1, val]
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd)) might not be preserved. Fraction rd might be negative. (graph-copy.vpr@147.17--147.68) [119768]"}
                (forall x_77: Ref ::
                { Heap[x_77, edges] } { QPMask[x_77, edges] } { setOfRef[x_77] }
                setOfRef[x_77] && dummyFunction(Heap[x_77, edges]) ==> rd_1 >= NoPerm
              );
            
            // -- check if receiver x is injective
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd)) might not be preserved. Quantified resource x.edges might not be injective. (graph-copy.vpr@147.17--147.68) [119769]"}
                (forall x_77: Ref, x_77_1: Ref ::
                { neverTriggered34(x_77), neverTriggered34(x_77_1) }
                (((x_77 != x_77_1 && setOfRef[x_77]) && setOfRef[x_77_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_77 != x_77_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> acc(x.edges, rd)) might not be preserved. There might be insufficient permission to access x.edges (graph-copy.vpr@147.17--147.68) [119770]"}
                (forall x_77: Ref ::
                { Heap[x_77, edges] } { QPMask[x_77, edges] } { setOfRef[x_77] }
                setOfRef[x_77] ==> Mask[x_77, edges] >= rd_1
              );
            
            // -- assumptions for inverse of receiver x
              assume (forall x_77: Ref ::
                { Heap[x_77, edges] } { QPMask[x_77, edges] } { setOfRef[x_77] }
                setOfRef[x_77] && NoPerm < rd_1 ==> qpRange34(x_77) && invRecv34(x_77) == x_77
              );
              assume (forall o_4: Ref ::
                { invRecv34(o_4) }
                setOfRef[invRecv34(o_4)] && (NoPerm < rd_1 && qpRange34(o_4)) ==> invRecv34(o_4) == o_4
              );
            
            // -- assume permission updates for field edges
              assume (forall o_4: Ref ::
                { QPMask[o_4, edges] }
                (setOfRef[invRecv34(o_4)] && (NoPerm < rd_1 && qpRange34(o_4)) ==> invRecv34(o_4) == o_4 && QPMask[o_4, edges] == Mask[o_4, edges] - rd_1) && (!(setOfRef[invRecv34(o_4)] && (NoPerm < rd_1 && qpRange34(o_4))) ==> QPMask[o_4, edges] == Mask[o_4, edges])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            if (*) {
              if (setOfRef[x_78]) {
                assert {:msg "  Loop invariant (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges)) might not be preserved. Assertion x.edges == old(x.edges) might not hold. (graph-copy.vpr@148.17--148.75) [119771]"}
                  Heap[x_78, edges] == oldHeap[x_78, edges];
              }
              assume false;
            }
            assume (forall x_79_1: Ref ::
              { setOfRef[x_79_1] }
              setOfRef[x_79_1] ==> Heap[x_79_1, edges] == oldHeap[x_79_1, edges]
            );
            if (*) {
              if (S[j_10_2]) {
                assert {:msg "  Loop invariant (forall j: Int :: { (j in S) } { (edge_lookup(this.edges, j) in setOfRef) } (j in S) ==> (edge_lookup(this.edges, j) in setOfRef)) might not be preserved. Assertion (edge_lookup(this.edges, j) in setOfRef) might not hold. (graph-copy.vpr@149.17--149.83) [119772]"}
                  setOfRef[(edge_lookup(Heap[this, edges], j_10_2): Ref)];
              }
              assume false;
            }
            assume (forall j_11_1: int ::
              { S[j_11_1] } { setOfRef[(edge_lookup(Heap[this, edges], j_11_1): Ref)] }
              S[j_11_1] ==> setOfRef[(edge_lookup(Heap[this, edges], j_11_1): Ref)]
            );
            if (*) {
              if (setOfRef[r_18_2] && (edges_domain(Heap[r_18_2, edges]): Set int)[j_12_2]) {
                assert {:msg "  Loop invariant (forall r: Ref, j: Int :: { (r in setOfRef), (j in edges_domain(r.edges)) } { (r in setOfRef), edge_lookup(r.edges, j) } { (r in setOfRef), (edge_lookup(r.edges, j) in setOfRef) } { edges_domain(r.edges), edge_lookup(r.edges, j) } { edges_domain(r.edges), (edge_lookup(r.edges, j) in setOfRef) } { (j in edges_domain(r.edges)) } { (edge_lookup(r.edges, j) in setOfRef) } (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef)) might not be preserved. Assertion (edge_lookup(r.edges, j) in setOfRef) might not hold. (graph-copy.vpr@150.17--150.125) [119773]"}
                  setOfRef[(edge_lookup(Heap[r_18_2, edges], j_12_2): Ref)];
              }
              assume false;
            }
            assume (forall r_19_1_1: Ref, j_13_1: int ::
              { setOfRef[r_19_1_1], (edges_domain(Heap[r_19_1_1, edges]): Set int)[j_13_1] } { setOfRef[r_19_1_1], (edge_lookup(Heap[r_19_1_1, edges], j_13_1): Ref) } { setOfRef[r_19_1_1], setOfRef[(edge_lookup(Heap[r_19_1_1, edges], j_13_1): Ref)] } { (edges_domain(Heap[r_19_1_1, edges]): Set int), (edge_lookup(Heap[r_19_1_1, edges], j_13_1): Ref) } { (edges_domain(Heap[r_19_1_1, edges]): Set int), setOfRef[(edge_lookup(Heap[r_19_1_1, edges], j_13_1): Ref)] } { (edges_domain(Heap[r_19_1_1, edges]): Set int)[j_13_1] } { setOfRef[(edge_lookup(Heap[r_19_1_1, edges], j_13_1): Ref)] }
              setOfRef[r_19_1_1] && (edges_domain(Heap[r_19_1_1, edges]): Set int)[j_13_1] ==> setOfRef[(edge_lookup(Heap[r_19_1_1, edges], j_13_1): Ref)]
            );
            assert {:msg "  Loop invariant (node_map_image subset res_copy_nodes) might not be preserved. Assertion (node_map_image subset res_copy_nodes) might not hold. (graph-copy.vpr@151.17--151.53) [119774]"}
              Set#Subset(node_map_image, res_copy_nodes);
            assert {:msg "  Loop invariant |(setOfRef intersection res_copy_nodes)| == 0 might not be preserved. Assertion |(setOfRef intersection res_copy_nodes)| == 0 might not hold. (graph-copy.vpr@152.17--152.60) [119775]"}
              Set#Card(Set#Intersection(setOfRef, res_copy_nodes)) == 0;
            if (*) {
              if (Seq#Contains((map_domain(res_node_map): Seq Ref), r_20)) {
                assert {:msg "  Loop invariant (forall r: Ref :: { (r in map_domain(res_node_map)) } { (lookup(res_node_map, r) in res_copy_nodes) } (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes)) might not be preserved. Assertion (lookup(res_node_map, r) in res_copy_nodes) might not hold. (graph-copy.vpr@153.17--153.108) [119776]"}
                  res_copy_nodes[(lookup(res_node_map, r_20): Ref)];
              }
              assume false;
            }
            assume (forall r_21_1: Ref ::
              { Seq#ContainsTrigger((map_domain(res_node_map): Seq Ref), r_21_1) } { Seq#Contains((map_domain(res_node_map): Seq Ref), r_21_1) } { res_copy_nodes[(lookup(res_node_map, r_21_1): Ref)] }
              Seq#Contains((map_domain(res_node_map): Seq Ref), r_21_1) ==> res_copy_nodes[(lookup(res_node_map, r_21_1): Ref)]
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver r is injective
              assert {:msg "  Loop invariant (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.val, write)) might not be preserved. Quantified resource r.val might not be injective. (graph-copy.vpr@154.17--154.68) [119777]"}
                (forall r_22: Ref, r_22_1: Ref ::
                { neverTriggered35(r_22), neverTriggered35(r_22_1) }
                (((r_22 != r_22_1 && res_copy_nodes[r_22]) && res_copy_nodes[r_22_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_22 != r_22_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.val, write)) might not be preserved. There might be insufficient permission to access r.val (graph-copy.vpr@154.17--154.68) [119778]"}
                (forall r_22: Ref ::
                { Heap[r_22, val] } { QPMask[r_22, val] } { res_copy_nodes[r_22] }
                res_copy_nodes[r_22] ==> Mask[r_22, val] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver r
              assume (forall r_22: Ref ::
                { Heap[r_22, val] } { QPMask[r_22, val] } { res_copy_nodes[r_22] }
                res_copy_nodes[r_22] && NoPerm < FullPerm ==> qpRange35(r_22) && invRecv35(r_22) == r_22
              );
              assume (forall o_4: Ref ::
                { invRecv35(o_4) }
                res_copy_nodes[invRecv35(o_4)] && (NoPerm < FullPerm && qpRange35(o_4)) ==> invRecv35(o_4) == o_4
              );
            
            // -- assume permission updates for field val
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                (res_copy_nodes[invRecv35(o_4)] && (NoPerm < FullPerm && qpRange35(o_4)) ==> invRecv35(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!(res_copy_nodes[invRecv35(o_4)] && (NoPerm < FullPerm && qpRange35(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver r is injective
              assert {:msg "  Loop invariant (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.edges, write)) might not be preserved. Quantified resource r.edges might not be injective. (graph-copy.vpr@155.17--155.70) [119779]"}
                (forall r_23_2: Ref, r_23_3: Ref ::
                { neverTriggered36(r_23_2), neverTriggered36(r_23_3) }
                (((r_23_2 != r_23_3 && res_copy_nodes[r_23_2]) && res_copy_nodes[r_23_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_23_2 != r_23_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant (forall r: Ref :: { (r in res_copy_nodes) } (r in res_copy_nodes) ==> acc(r.edges, write)) might not be preserved. There might be insufficient permission to access r.edges (graph-copy.vpr@155.17--155.70) [119780]"}
                (forall r_23_2: Ref ::
                { Heap[r_23_2, edges] } { QPMask[r_23_2, edges] } { res_copy_nodes[r_23_2] }
                res_copy_nodes[r_23_2] ==> Mask[r_23_2, edges] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver r
              assume (forall r_23_2: Ref ::
                { Heap[r_23_2, edges] } { QPMask[r_23_2, edges] } { res_copy_nodes[r_23_2] }
                res_copy_nodes[r_23_2] && NoPerm < FullPerm ==> qpRange36(r_23_2) && invRecv36(r_23_2) == r_23_2
              );
              assume (forall o_4: Ref ::
                { invRecv36(o_4) }
                res_copy_nodes[invRecv36(o_4)] && (NoPerm < FullPerm && qpRange36(o_4)) ==> invRecv36(o_4) == o_4
              );
            
            // -- assume permission updates for field edges
              assume (forall o_4: Ref ::
                { QPMask[o_4, edges] }
                (res_copy_nodes[invRecv36(o_4)] && (NoPerm < FullPerm && qpRange36(o_4)) ==> invRecv36(o_4) == o_4 && QPMask[o_4, edges] == Mask[o_4, edges] - FullPerm) && (!(res_copy_nodes[invRecv36(o_4)] && (NoPerm < FullPerm && qpRange36(o_4))) ==> QPMask[o_4, edges] == Mask[o_4, edges])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
          assume !(Set#Card(S) > 0);
          assume state(Heap, Mask);
          assume res_copy_nodes[nodeCopy];
          assume setOfRef[this];
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource x.val might not be injective. (graph-copy.vpr@145.17--145.66) [119781]"}
            (forall x_80: Ref, x_80_1: Ref ::
            
            (((x_80 != x_80_1 && setOfRef[x_80]) && setOfRef[x_80_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_80 != x_80_1
          );
          
          // -- Define Inverse Function
            assume (forall x_80: Ref ::
              { Heap[x_80, val] } { QPMask[x_80, val] } { setOfRef[x_80] }
              setOfRef[x_80] && NoPerm < rd_1 ==> qpRange37(x_80) && invRecv37(x_80) == x_80
            );
            assume (forall o_4: Ref ::
              { invRecv37(o_4) }
              (setOfRef[invRecv37(o_4)] && NoPerm < rd_1) && qpRange37(o_4) ==> invRecv37(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  While statement might fail. Fraction rd might be negative. (graph-copy.vpr@145.17--145.66) [119782]"}
            (forall x_80: Ref ::
            { Heap[x_80, val] } { QPMask[x_80, val] } { setOfRef[x_80] }
            setOfRef[x_80] ==> rd_1 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall x_80: Ref ::
              { Heap[x_80, val] } { QPMask[x_80, val] } { setOfRef[x_80] }
              setOfRef[x_80] && rd_1 > NoPerm ==> x_80 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, val] }
              ((setOfRef[invRecv37(o_4)] && NoPerm < rd_1) && qpRange37(o_4) ==> (NoPerm < rd_1 ==> invRecv37(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + rd_1) && (!((setOfRef[invRecv37(o_4)] && NoPerm < rd_1) && qpRange37(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall x_81: Ref ::
            { setOfRef[x_81] }
            setOfRef[x_81] ==> Heap[x_81, val] == oldHeap[x_81, val]
          );
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource x.edges might not be injective. (graph-copy.vpr@147.17--147.68) [119783]"}
            (forall x_82: Ref, x_82_1: Ref ::
            
            (((x_82 != x_82_1 && setOfRef[x_82]) && setOfRef[x_82_1]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_82 != x_82_1
          );
          
          // -- Define Inverse Function
            assume (forall x_82: Ref ::
              { Heap[x_82, edges] } { QPMask[x_82, edges] } { setOfRef[x_82] }
              setOfRef[x_82] && NoPerm < rd_1 ==> qpRange38(x_82) && invRecv38(x_82) == x_82
            );
            assume (forall o_4: Ref ::
              { invRecv38(o_4) }
              (setOfRef[invRecv38(o_4)] && NoPerm < rd_1) && qpRange38(o_4) ==> invRecv38(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  While statement might fail. Fraction rd might be negative. (graph-copy.vpr@147.17--147.68) [119784]"}
            (forall x_82: Ref ::
            { Heap[x_82, edges] } { QPMask[x_82, edges] } { setOfRef[x_82] }
            setOfRef[x_82] ==> rd_1 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall x_82: Ref ::
              { Heap[x_82, edges] } { QPMask[x_82, edges] } { setOfRef[x_82] }
              setOfRef[x_82] && rd_1 > NoPerm ==> x_82 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, edges] }
              ((setOfRef[invRecv38(o_4)] && NoPerm < rd_1) && qpRange38(o_4) ==> (NoPerm < rd_1 ==> invRecv38(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + rd_1) && (!((setOfRef[invRecv38(o_4)] && NoPerm < rd_1) && qpRange38(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall x_83: Ref ::
            { setOfRef[x_83] }
            setOfRef[x_83] ==> Heap[x_83, edges] == oldHeap[x_83, edges]
          );
          assume (forall j_14_1: int ::
            { S[j_14_1] } { setOfRef[(edge_lookup(Heap[this, edges], j_14_1): Ref)] }
            S[j_14_1] ==> setOfRef[(edge_lookup(Heap[this, edges], j_14_1): Ref)]
          );
          assume (forall r_24_1: Ref, j_15_1: int ::
            { setOfRef[r_24_1], (edges_domain(Heap[r_24_1, edges]): Set int)[j_15_1] } { setOfRef[r_24_1], (edge_lookup(Heap[r_24_1, edges], j_15_1): Ref) } { setOfRef[r_24_1], setOfRef[(edge_lookup(Heap[r_24_1, edges], j_15_1): Ref)] } { (edges_domain(Heap[r_24_1, edges]): Set int), (edge_lookup(Heap[r_24_1, edges], j_15_1): Ref) } { (edges_domain(Heap[r_24_1, edges]): Set int), setOfRef[(edge_lookup(Heap[r_24_1, edges], j_15_1): Ref)] } { (edges_domain(Heap[r_24_1, edges]): Set int)[j_15_1] } { setOfRef[(edge_lookup(Heap[r_24_1, edges], j_15_1): Ref)] }
            setOfRef[r_24_1] && (edges_domain(Heap[r_24_1, edges]): Set int)[j_15_1] ==> setOfRef[(edge_lookup(Heap[r_24_1, edges], j_15_1): Ref)]
          );
          assume Set#Subset(node_map_image, res_copy_nodes);
          assume Set#Card(Set#Intersection(setOfRef, res_copy_nodes)) == 0;
          assume (forall r_25: Ref ::
            { Seq#ContainsTrigger((map_domain(res_node_map): Seq Ref), r_25) } { Seq#Contains((map_domain(res_node_map): Seq Ref), r_25) } { res_copy_nodes[(lookup(res_node_map, r_25): Ref)] }
            Seq#Contains((map_domain(res_node_map): Seq Ref), r_25) ==> res_copy_nodes[(lookup(res_node_map, r_25): Ref)]
          );
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource r.val might not be injective. (graph-copy.vpr@154.17--154.68) [119785]"}
            (forall r_26_2: Ref, r_26_3: Ref ::
            
            (((r_26_2 != r_26_3 && res_copy_nodes[r_26_2]) && res_copy_nodes[r_26_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_26_2 != r_26_3
          );
          
          // -- Define Inverse Function
            assume (forall r_26_2: Ref ::
              { Heap[r_26_2, val] } { QPMask[r_26_2, val] } { res_copy_nodes[r_26_2] }
              res_copy_nodes[r_26_2] && NoPerm < FullPerm ==> qpRange39(r_26_2) && invRecv39(r_26_2) == r_26_2
            );
            assume (forall o_4: Ref ::
              { invRecv39(o_4) }
              (res_copy_nodes[invRecv39(o_4)] && NoPerm < FullPerm) && qpRange39(o_4) ==> invRecv39(o_4) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall r_26_2: Ref ::
              { Heap[r_26_2, val] } { QPMask[r_26_2, val] } { res_copy_nodes[r_26_2] }
              res_copy_nodes[r_26_2] ==> r_26_2 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, val] }
              ((res_copy_nodes[invRecv39(o_4)] && NoPerm < FullPerm) && qpRange39(o_4) ==> (NoPerm < FullPerm ==> invRecv39(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((res_copy_nodes[invRecv39(o_4)] && NoPerm < FullPerm) && qpRange39(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource r.edges might not be injective. (graph-copy.vpr@155.17--155.70) [119786]"}
            (forall r_27_1: Ref, r_27_2: Ref ::
            
            (((r_27_1 != r_27_2 && res_copy_nodes[r_27_1]) && res_copy_nodes[r_27_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_27_1 != r_27_2
          );
          
          // -- Define Inverse Function
            assume (forall r_27_1: Ref ::
              { Heap[r_27_1, edges] } { QPMask[r_27_1, edges] } { res_copy_nodes[r_27_1] }
              res_copy_nodes[r_27_1] && NoPerm < FullPerm ==> qpRange40(r_27_1) && invRecv40(r_27_1) == r_27_1
            );
            assume (forall o_4: Ref ::
              { invRecv40(o_4) }
              (res_copy_nodes[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4) ==> invRecv40(o_4) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall r_27_1: Ref ::
              { Heap[r_27_1, edges] } { QPMask[r_27_1, edges] } { res_copy_nodes[r_27_1] }
              res_copy_nodes[r_27_1] ==> r_27_1 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, edges] }
              ((res_copy_nodes[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4) ==> (NoPerm < FullPerm ==> invRecv40(o_4) == o_4) && QPMask[o_4, edges] == Mask[o_4, edges] + FullPerm) && (!((res_copy_nodes[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4)) ==> QPMask[o_4, edges] == Mask[o_4, edges])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assert {:msg "  Postcondition of graph_copy_rec might not hold. Assertion nodeCopy != null might not hold. (graph-copy.vpr@104.11--104.57) [119787]"}
      nodeCopy != null;
    assert {:msg "  Postcondition of graph_copy_rec might not hold. Assertion (nodeCopy in res_copy_nodes) might not hold. (graph-copy.vpr@104.11--104.57) [119788]"}
      res_copy_nodes[nodeCopy];
    assert {:msg "  Postcondition of graph_copy_rec might not hold. Assertion |(setOfRef intersection res_copy_nodes)| == 0 might not hold. (graph-copy.vpr@105.11--105.54) [119789]"}
      Set#Card(Set#Intersection(setOfRef, res_copy_nodes)) == 0;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of graph_copy_rec might not hold. Fraction rd might be negative. (graph-copy.vpr@106.11--106.60) [119790]"}
        (forall x_28_1: Ref ::
        { Heap[x_28_1, val] } { QPMask[x_28_1, val] } { setOfRef[x_28_1] }
        setOfRef[x_28_1] && dummyFunction(Heap[x_28_1, val]) ==> rd_1 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.val might not be injective. (graph-copy.vpr@106.11--106.60) [119791]"}
        (forall x_28_1: Ref, x_28_2: Ref ::
        { neverTriggered9(x_28_1), neverTriggered9(x_28_2) }
        (((x_28_1 != x_28_2 && setOfRef[x_28_1]) && setOfRef[x_28_2]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_28_1 != x_28_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of graph_copy_rec might not hold. There might be insufficient permission to access x.val (graph-copy.vpr@106.11--106.60) [119792]"}
        (forall x_28_1: Ref ::
        { Heap[x_28_1, val] } { QPMask[x_28_1, val] } { setOfRef[x_28_1] }
        setOfRef[x_28_1] ==> Mask[x_28_1, val] >= rd_1
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_28_1: Ref ::
        { Heap[x_28_1, val] } { QPMask[x_28_1, val] } { setOfRef[x_28_1] }
        setOfRef[x_28_1] && NoPerm < rd_1 ==> qpRange9(x_28_1) && invRecv9(x_28_1) == x_28_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        setOfRef[invRecv9(o_4)] && (NoPerm < rd_1 && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (setOfRef[invRecv9(o_4)] && (NoPerm < rd_1 && qpRange9(o_4)) ==> invRecv9(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - rd_1) && (!(setOfRef[invRecv9(o_4)] && (NoPerm < rd_1 && qpRange9(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (setOfRef[x_29_1]) {
        assert {:msg "  Postcondition of graph_copy_rec might not hold. Assertion x.val == old(x.val) might not hold. (graph-copy.vpr@107.11--107.65) [119793]"}
          Heap[x_29_1, val] == oldHeap[x_29_1, val];
      }
      assume false;
    }
    assume (forall x_30_1: Ref ::
      { setOfRef[x_30_1] }
      setOfRef[x_30_1] ==> Heap[x_30_1, val] == oldHeap[x_30_1, val]
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of graph_copy_rec might not hold. Fraction rd might be negative. (graph-copy.vpr@108.11--108.62) [119794]"}
        (forall x_31_1: Ref ::
        { Heap[x_31_1, edges] } { QPMask[x_31_1, edges] } { setOfRef[x_31_1] }
        setOfRef[x_31_1] && dummyFunction(Heap[x_31_1, edges]) ==> rd_1 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.edges might not be injective. (graph-copy.vpr@108.11--108.62) [119795]"}
        (forall x_31_1: Ref, x_31_2: Ref ::
        { neverTriggered10(x_31_1), neverTriggered10(x_31_2) }
        (((x_31_1 != x_31_2 && setOfRef[x_31_1]) && setOfRef[x_31_2]) && NoPerm < rd_1) && NoPerm < rd_1 ==> x_31_1 != x_31_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of graph_copy_rec might not hold. There might be insufficient permission to access x.edges (graph-copy.vpr@108.11--108.62) [119796]"}
        (forall x_31_1: Ref ::
        { Heap[x_31_1, edges] } { QPMask[x_31_1, edges] } { setOfRef[x_31_1] }
        setOfRef[x_31_1] ==> Mask[x_31_1, edges] >= rd_1
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_31_1: Ref ::
        { Heap[x_31_1, edges] } { QPMask[x_31_1, edges] } { setOfRef[x_31_1] }
        setOfRef[x_31_1] && NoPerm < rd_1 ==> qpRange10(x_31_1) && invRecv10(x_31_1) == x_31_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        setOfRef[invRecv10(o_4)] && (NoPerm < rd_1 && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
      );
    
    // -- assume permission updates for field edges
      assume (forall o_4: Ref ::
        { QPMask[o_4, edges] }
        (setOfRef[invRecv10(o_4)] && (NoPerm < rd_1 && qpRange10(o_4)) ==> invRecv10(o_4) == o_4 && QPMask[o_4, edges] == Mask[o_4, edges] - rd_1) && (!(setOfRef[invRecv10(o_4)] && (NoPerm < rd_1 && qpRange10(o_4))) ==> QPMask[o_4, edges] == Mask[o_4, edges])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (setOfRef[x_32_1]) {
        assert {:msg "  Postcondition of graph_copy_rec might not hold. Assertion x.edges == old(x.edges) might not hold. (graph-copy.vpr@109.11--109.69) [119797]"}
          Heap[x_32_1, edges] == oldHeap[x_32_1, edges];
      }
      assume false;
    }
    assume (forall x_33_1: Ref ::
      { setOfRef[x_33_1] }
      setOfRef[x_33_1] ==> Heap[x_33_1, edges] == oldHeap[x_33_1, edges]
    );
    if (*) {
      if (setOfRef[x_34_1] && (edges_domain(Heap[x_34_1, edges]): Set int)[i_4_1]) {
        assert {:msg "  Postcondition of graph_copy_rec might not hold. Assertion (edge_lookup(x.edges, i) in setOfRef) might not hold. (graph-copy.vpr@110.11--110.119) [119798]"}
          setOfRef[(edge_lookup(Heap[x_34_1, edges], i_4_1): Ref)];
      }
      assume false;
    }
    assume (forall x_35_1: Ref, i_5_1_1: int ::
      { setOfRef[x_35_1], (edges_domain(Heap[x_35_1, edges]): Set int)[i_5_1_1] } { setOfRef[x_35_1], (edge_lookup(Heap[x_35_1, edges], i_5_1_1): Ref) } { setOfRef[x_35_1], setOfRef[(edge_lookup(Heap[x_35_1, edges], i_5_1_1): Ref)] } { (edges_domain(Heap[x_35_1, edges]): Set int), (edge_lookup(Heap[x_35_1, edges], i_5_1_1): Ref) } { (edges_domain(Heap[x_35_1, edges]): Set int), setOfRef[(edge_lookup(Heap[x_35_1, edges], i_5_1_1): Ref)] } { (edges_domain(Heap[x_35_1, edges]): Set int)[i_5_1_1] } { setOfRef[(edge_lookup(Heap[x_35_1, edges], i_5_1_1): Ref)] }
      setOfRef[x_35_1] && (edges_domain(Heap[x_35_1, edges]): Set int)[i_5_1_1] ==> setOfRef[(edge_lookup(Heap[x_35_1, edges], i_5_1_1): Ref)]
    );
    assert {:msg "  Postcondition of graph_copy_rec might not hold. Assertion res_copy_nodes == (res_copy_nodes union old(node_map_image)) might not hold. (graph-copy.vpr@111.11--111.69) [119799]"}
      Set#Equal(res_copy_nodes, Set#Union(res_copy_nodes, node_map_image));
    if (*) {
      if (Seq#Contains((map_domain(res_node_map): Seq Ref), x_36_1)) {
        assert {:msg "  Postcondition of graph_copy_rec might not hold. Assertion (lookup(res_node_map, x) in res_copy_nodes) might not hold. (graph-copy.vpr@112.11--112.102) [119800]"}
          res_copy_nodes[(lookup(res_node_map, x_36_1): Ref)];
      }
      assume false;
    }
    assume (forall x_37_1: Ref ::
      { Seq#ContainsTrigger((map_domain(res_node_map): Seq Ref), x_37_1) } { Seq#Contains((map_domain(res_node_map): Seq Ref), x_37_1) } { res_copy_nodes[(lookup(res_node_map, x_37_1): Ref)] }
      Seq#Contains((map_domain(res_node_map): Seq Ref), x_37_1) ==> res_copy_nodes[(lookup(res_node_map, x_37_1): Ref)]
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.val might not be injective. (graph-copy.vpr@113.11--113.62) [119801]"}
        (forall x_38_1: Ref, x_38_2: Ref ::
        { neverTriggered11(x_38_1), neverTriggered11(x_38_2) }
        (((x_38_1 != x_38_2 && res_copy_nodes[x_38_1]) && res_copy_nodes[x_38_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_38_1 != x_38_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of graph_copy_rec might not hold. There might be insufficient permission to access x.val (graph-copy.vpr@113.11--113.62) [119802]"}
        (forall x_38_1: Ref ::
        { Heap[x_38_1, val] } { QPMask[x_38_1, val] } { res_copy_nodes[x_38_1] }
        res_copy_nodes[x_38_1] ==> Mask[x_38_1, val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_38_1: Ref ::
        { Heap[x_38_1, val] } { QPMask[x_38_1, val] } { res_copy_nodes[x_38_1] }
        res_copy_nodes[x_38_1] && NoPerm < FullPerm ==> qpRange11(x_38_1) && invRecv11(x_38_1) == x_38_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        res_copy_nodes[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (res_copy_nodes[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!(res_copy_nodes[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.edges might not be injective. (graph-copy.vpr@114.11--114.64) [119803]"}
        (forall x_39_1: Ref, x_39_2: Ref ::
        { neverTriggered12(x_39_1), neverTriggered12(x_39_2) }
        (((x_39_1 != x_39_2 && res_copy_nodes[x_39_1]) && res_copy_nodes[x_39_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_39_1 != x_39_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of graph_copy_rec might not hold. There might be insufficient permission to access x.edges (graph-copy.vpr@114.11--114.64) [119804]"}
        (forall x_39_1: Ref ::
        { Heap[x_39_1, edges] } { QPMask[x_39_1, edges] } { res_copy_nodes[x_39_1] }
        res_copy_nodes[x_39_1] ==> Mask[x_39_1, edges] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_39_1: Ref ::
        { Heap[x_39_1, edges] } { QPMask[x_39_1, edges] } { res_copy_nodes[x_39_1] }
        res_copy_nodes[x_39_1] && NoPerm < FullPerm ==> qpRange12(x_39_1) && invRecv12(x_39_1) == x_39_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        res_copy_nodes[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
      );
    
    // -- assume permission updates for field edges
      assume (forall o_4: Ref ::
        { QPMask[o_4, edges] }
        (res_copy_nodes[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4 && QPMask[o_4, edges] == Mask[o_4, edges] - FullPerm) && (!(res_copy_nodes[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, edges] == Mask[o_4, edges])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != edges ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method pop
// ==================================================

procedure vpop(s1: (Set int)) returns (s2: (Set int), i: int)
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
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 < Set#Card(s1);
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
    assume s1[i];
    assume state(PostHeap, PostMask);
    assume Set#Equal(s2, Set#Difference(s1, Set#Singleton(i)));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- graph-copy.vpr@177.10--177.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of pop might not hold. Assertion (i in s1) might not hold. (graph-copy.vpr@175.11--175.18) [119805]"}
      s1[i];
    assert {:msg "  Postcondition of pop might not hold. Assertion s2 == (s1 setminus Set(i)) might not hold. (graph-copy.vpr@176.12--176.36) [119806]"}
      Set#Equal(s2, Set#Difference(s1, Set#Singleton(i)));
}