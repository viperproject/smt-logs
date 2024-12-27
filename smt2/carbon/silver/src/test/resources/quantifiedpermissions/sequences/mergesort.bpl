// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:10:19
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
axiom (forall o_43: Ref, f_15: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_43, f_15] }
  Heap[o_43, $allocated] ==> Heap[Heap[o_43, f_15], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_44: Ref, f_47: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_44, f_47] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_44, f_47) ==> Heap[o_44, f_47] == ExhaleHeap[o_44, f_47]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19), ExhaleHeap[null, PredicateMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> Heap[null, PredicateMaskField(pm_f_19)] == ExhaleHeap[null, PredicateMaskField(pm_f_19)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_47: (Field A B) ::
    { ExhaleHeap[o2_19, f_47] }
    Heap[null, PredicateMaskField(pm_f_19)][o2_19, f_47] ==> Heap[o2_19, f_47] == ExhaleHeap[o2_19, f_47]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19), ExhaleHeap[null, WandMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> Heap[null, WandMaskField(pm_f_19)] == ExhaleHeap[null, WandMaskField(pm_f_19)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_47: (Field A B) ::
    { ExhaleHeap[o2_19, f_47] }
    Heap[null, WandMaskField(pm_f_19)][o2_19, f_47] ==> Heap[o2_19, f_47] == ExhaleHeap[o2_19, f_47]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_44: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_44, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_44, $allocated] ==> ExhaleHeap[o_44, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_43: Ref, f_41: (Field A B), v: B ::
  { Heap[o_43, f_41:=v] }
  succHeap(Heap, Heap[o_43, f_41:=v])
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

function  neverTriggered1(i_3: int): bool;
function  neverTriggered2(i_7_1: int): bool;
function  neverTriggered3(i_11_1: int): bool;
function  neverTriggered4(i_15: int): bool;
function  neverTriggered5(i_18_1: int): bool;
function  neverTriggered6(i_21: int): bool;
function  neverTriggered7(i_23: int): bool;
function  neverTriggered8(i_25: int): bool;
function  neverTriggered9(i_27: int): bool;
function  neverTriggered10(i_29_1: int): bool;
function  neverTriggered11(i_31_1: int): bool;
function  neverTriggered12(i_33_1: int): bool;
function  neverTriggered13(i_35_1: int): bool;
function  neverTriggered14(i_37: int): bool;
function  neverTriggered15(k: int): bool;
function  neverTriggered16(l_2: int): bool;
function  neverTriggered17(i_43_2: int): bool;
function  neverTriggered18(i_45_2: int): bool;
function  neverTriggered19(k_1_1: int): bool;
function  neverTriggered20(l_1: int): bool;
function  neverTriggered21(i_7_1: int): bool;
function  neverTriggered22(i_11_1: int): bool;
function  neverTriggered23(i_14_1: int): bool;
function  neverTriggered24(i_17: int): bool;
function  neverTriggered25(i_18_1: int): bool;
function  neverTriggered26(i_19: int): bool;
function  neverTriggered27(i_21: int): bool;
function  neverTriggered28(i_23: int): bool;
function  neverTriggered29(i_24_1: int): bool;
function  neverTriggered30(i_25: int): bool;
function  neverTriggered31(i_26: int): bool;
function  neverTriggered32(i_27: int): bool;
function  neverTriggered33(i_28: int): bool;
function  neverTriggered34(i_29_1: int): bool;
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

const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);
const unique array: Field NormalField (Seq Ref);
axiom !IsPredicateField(array);
axiom !IsWandField(array);

// ==================================================
// Translation of method parallel_mergesort
// ==================================================

procedure parallel_mergesort(a_2: Ref, b_24: Ref, start: int, end: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var QPMask: MaskType;
  var i_4: int;
  var j_6: int;
  var i_6: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_7: int;
  var j_7: int;
  var i_8: int;
  var i_9: int;
  var j_10: int;
  var i_10: int;
  var middle: int;
  var t1A: (Seq Ref);
  var t1B: (Seq Ref);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i_11: int;
  var i_12: int;
  var t2A: (Seq Ref);
  var t2B: (Seq Ref);
  var i_16: int;
  var i_18: int;
  var i_13: int;
  var i_20: int;
  var i_22: int;
  var i_24: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var i_38: int;
  var j_12_2: int;
  var i_40: int;
  var j_14_1: int;
  var i_16_1: int;
  var j_8: int;
  var i_19: int;
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
    Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume b_24 != null;
    Mask := Mask[b_24, array:=Mask[b_24, array] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume start >= 0;
    
    // -- Check definedness of end <= |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@13.12--13.68) [64246]"}
        HasDirectPerm(Mask, a_2, array);
    assume end <= Seq#Length(Heap[a_2, array]);
    
    // -- Check definedness of |a.array| == |b.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@13.12--13.68) [64247]"}
        HasDirectPerm(Mask, a_2, array);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@13.12--13.68) [64248]"}
        HasDirectPerm(Mask, b_24, array);
    assume Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_14) && (Seq#Contains(Seq#Range(start, end), j_5) && i_14 != j_5)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@14.12--14.112) [64249]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@14.12--14.112) [64250]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@14.12--14.112) [64251]"}
            i_14 < Seq#Length(Heap[a_2, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@14.12--14.112) [64252]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (mergesort.vpr@14.12--14.112) [64253]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (mergesort.vpr@14.12--14.112) [64254]"}
            j_5 < Seq#Length(Heap[a_2, array]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#ContainsTrigger(Seq#Range(start, end), j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#Contains(Seq#Range(start, end), j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#ContainsTrigger(Seq#Range(start, end), j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#Contains(Seq#Range(start, end), j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#Index(Heap[a_2, array], j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#Index(Heap[a_2, array], j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_1), Seq#Index(Heap[a_2, array], i_1) } { Seq#Contains(Seq#Range(start, end), j_1), Seq#Index(Heap[a_2, array], i_1) } { Seq#Index(Heap[a_2, array], i_1), Seq#Index(Heap[a_2, array], j_1) }
      Seq#Contains(Seq#Range(start, end), i_1) && (Seq#Contains(Seq#Range(start, end), j_1) && i_1 != j_1) ==> Seq#Index(Heap[a_2, array], i_1) != Seq#Index(Heap[a_2, array], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_2)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@15.12--15.78) [64255]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@15.12--15.78) [64256]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@15.12--15.78) [64257]"}
            i_2 < Seq#Length(Heap[a_2, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@15.12--15.78) [64258]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(start, end), i_3)) && Seq#Contains(Seq#Range(start, end), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_3) != Seq#Index(Heap[a_2, array], i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(Heap[a_2, array], i_3) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3) } { Seq#Contains(Seq#Range(start, end), i_3) } { Seq#Index(Heap[a_2, array], i_3) }
        Seq#Contains(Seq#Range(start, end), i_3) && NoPerm < FullPerm ==> qpRange1(Seq#Index(Heap[a_2, array], i_3)) && invRecv1(Seq#Index(Heap[a_2, array], i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(Heap[a_2, array], invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(Heap[a_2, array], i_3) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3) } { Seq#Contains(Seq#Range(start, end), i_3) } { Seq#Index(Heap[a_2, array], i_3) }
        Seq#Contains(Seq#Range(start, end), i_3) ==> Seq#Index(Heap[a_2, array], i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], invRecv1(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_4) && (Seq#Contains(Seq#Range(start, end), j_6) && i_4 != j_6)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@16.12--16.112) [64259]"}
            HasDirectPerm(Mask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@16.12--16.112) [64260]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@16.12--16.112) [64261]"}
            i_4 < Seq#Length(Heap[b_24, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@16.12--16.112) [64262]"}
            HasDirectPerm(Mask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might be negative. (mergesort.vpr@16.12--16.112) [64263]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might exceed sequence length. (mergesort.vpr@16.12--16.112) [64264]"}
            j_6 < Seq#Length(Heap[b_24, array]);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#ContainsTrigger(Seq#Range(start, end), j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#Contains(Seq#Range(start, end), j_3_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#ContainsTrigger(Seq#Range(start, end), j_3_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#Contains(Seq#Range(start, end), j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#Index(Heap[b_24, array], j_3_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#Index(Heap[b_24, array], j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_3_1), Seq#Index(Heap[b_24, array], i_5) } { Seq#Contains(Seq#Range(start, end), j_3_1), Seq#Index(Heap[b_24, array], i_5) } { Seq#Index(Heap[b_24, array], i_5), Seq#Index(Heap[b_24, array], j_3_1) }
      Seq#Contains(Seq#Range(start, end), i_5) && (Seq#Contains(Seq#Range(start, end), j_3_1) && i_5 != j_3_1) ==> Seq#Index(Heap[b_24, array], i_5) != Seq#Index(Heap[b_24, array], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_6)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@17.12--17.78) [64265]"}
            HasDirectPerm(Mask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@17.12--17.78) [64266]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@17.12--17.78) [64267]"}
            i_6 < Seq#Length(Heap[b_24, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@17.12--17.78) [64268]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(start, end), i_7_1)) && Seq#Contains(Seq#Range(start, end), i_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_7_1) != Seq#Index(Heap[b_24, array], i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(Heap[b_24, array], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_7_1) } { Seq#Contains(Seq#Range(start, end), i_7_1) } { Seq#Index(Heap[b_24, array], i_7_1) }
        Seq#Contains(Seq#Range(start, end), i_7_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(Heap[b_24, array], i_7_1)) && invRecv2(Seq#Index(Heap[b_24, array], i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(Heap[b_24, array], invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(Heap[b_24, array], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_7_1) } { Seq#Contains(Seq#Range(start, end), i_7_1) } { Seq#Index(Heap[b_24, array], i_7_1) }
        Seq#Contains(Seq#Range(start, end), i_7_1) ==> Seq#Index(Heap[b_24, array], i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], invRecv2(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    PostMask := PostMask[a_2, array:=PostMask[a_2, array] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume b_24 != null;
    PostMask := PostMask[b_24, array:=PostMask[b_24, array] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume start >= 0;
    
    // -- Check definedness of end <= |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@20.11--20.67) [64269]"}
        HasDirectPerm(PostMask, a_2, array);
    assume end <= Seq#Length(PostHeap[a_2, array]);
    
    // -- Check definedness of |a.array| == |b.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@20.11--20.67) [64270]"}
        HasDirectPerm(PostMask, a_2, array);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@20.11--20.67) [64271]"}
        HasDirectPerm(PostMask, b_24, array);
    assume Seq#Length(PostHeap[a_2, array]) == Seq#Length(PostHeap[b_24, array]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_7) && (Seq#Contains(Seq#Range(start, end), j_7) && i_7 != j_7)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@21.11--21.111) [64272]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@21.11--21.111) [64273]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@21.11--21.111) [64274]"}
            i_7 < Seq#Length(PostHeap[a_2, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@21.11--21.111) [64275]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (mergesort.vpr@21.11--21.111) [64276]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (mergesort.vpr@21.11--21.111) [64277]"}
            j_7 < Seq#Length(PostHeap[a_2, array]);
        }
        assume false;
      }
    assume (forall i_9_1: int, j_5_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1), Seq#ContainsTrigger(Seq#Range(start, end), j_5_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1), Seq#Contains(Seq#Range(start, end), j_5_1) } { Seq#Contains(Seq#Range(start, end), i_9_1), Seq#ContainsTrigger(Seq#Range(start, end), j_5_1) } { Seq#Contains(Seq#Range(start, end), i_9_1), Seq#Contains(Seq#Range(start, end), j_5_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1), Seq#Index(PostHeap[a_2, array], j_5_1) } { Seq#Contains(Seq#Range(start, end), i_9_1), Seq#Index(PostHeap[a_2, array], j_5_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_5_1), Seq#Index(PostHeap[a_2, array], i_9_1) } { Seq#Contains(Seq#Range(start, end), j_5_1), Seq#Index(PostHeap[a_2, array], i_9_1) } { Seq#Index(PostHeap[a_2, array], i_9_1), Seq#Index(PostHeap[a_2, array], j_5_1) }
      Seq#Contains(Seq#Range(start, end), i_9_1) && (Seq#Contains(Seq#Range(start, end), j_5_1) && i_9_1 != j_5_1) ==> Seq#Index(PostHeap[a_2, array], i_9_1) != Seq#Index(PostHeap[a_2, array], j_5_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_8)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@22.11--22.77) [64278]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@22.11--22.77) [64279]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@22.11--22.77) [64280]"}
            i_8 < Seq#Length(PostHeap[a_2, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@22.11--22.77) [64281]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(start, end), i_11_1)) && Seq#Contains(Seq#Range(start, end), i_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[a_2, array], i_11_1) != Seq#Index(PostHeap[a_2, array], i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[a_2, array], i_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_11_1) } { Seq#Contains(Seq#Range(start, end), i_11_1) } { Seq#Index(PostHeap[a_2, array], i_11_1) }
        Seq#Contains(Seq#Range(start, end), i_11_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(PostHeap[a_2, array], i_11_1)) && invRecv3(Seq#Index(PostHeap[a_2, array], i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(PostHeap[a_2, array], invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[a_2, array], i_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_11_1) } { Seq#Contains(Seq#Range(start, end), i_11_1) } { Seq#Index(PostHeap[a_2, array], i_11_1) }
        Seq#Contains(Seq#Range(start, end), i_11_1) ==> Seq#Index(PostHeap[a_2, array], i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[a_2, array], invRecv3(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_9) && (Seq#Contains(Seq#Range(start, end), j_10) && i_9 != j_10)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@23.11--23.111) [64282]"}
            HasDirectPerm(PostMask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@23.11--23.111) [64283]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@23.11--23.111) [64284]"}
            i_9 < Seq#Length(PostHeap[b_24, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@23.11--23.111) [64285]"}
            HasDirectPerm(PostMask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might be negative. (mergesort.vpr@23.11--23.111) [64286]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might exceed sequence length. (mergesort.vpr@23.11--23.111) [64287]"}
            j_10 < Seq#Length(PostHeap[b_24, array]);
        }
        assume false;
      }
    assume (forall i_13_1: int, j_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_13_1), Seq#ContainsTrigger(Seq#Range(start, end), j_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_13_1), Seq#Contains(Seq#Range(start, end), j_7_1) } { Seq#Contains(Seq#Range(start, end), i_13_1), Seq#ContainsTrigger(Seq#Range(start, end), j_7_1) } { Seq#Contains(Seq#Range(start, end), i_13_1), Seq#Contains(Seq#Range(start, end), j_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_13_1), Seq#Index(PostHeap[b_24, array], j_7_1) } { Seq#Contains(Seq#Range(start, end), i_13_1), Seq#Index(PostHeap[b_24, array], j_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_7_1), Seq#Index(PostHeap[b_24, array], i_13_1) } { Seq#Contains(Seq#Range(start, end), j_7_1), Seq#Index(PostHeap[b_24, array], i_13_1) } { Seq#Index(PostHeap[b_24, array], i_13_1), Seq#Index(PostHeap[b_24, array], j_7_1) }
      Seq#Contains(Seq#Range(start, end), i_13_1) && (Seq#Contains(Seq#Range(start, end), j_7_1) && i_13_1 != j_7_1) ==> Seq#Index(PostHeap[b_24, array], i_13_1) != Seq#Index(PostHeap[b_24, array], j_7_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_10)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@24.11--24.77) [64288]"}
            HasDirectPerm(PostMask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@24.11--24.77) [64289]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@24.11--24.77) [64290]"}
            i_10 < Seq#Length(PostHeap[b_24, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@24.11--24.77) [64291]"}
      (forall i_15: int, i_15_1: int ::
      
      (((i_15 != i_15_1 && Seq#Contains(Seq#Range(start, end), i_15)) && Seq#Contains(Seq#Range(start, end), i_15_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[b_24, array], i_15) != Seq#Index(PostHeap[b_24, array], i_15_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_15: int ::
        { Seq#Index(PostHeap[b_24, array], i_15) } { Seq#ContainsTrigger(Seq#Range(start, end), i_15) } { Seq#Contains(Seq#Range(start, end), i_15) } { Seq#Index(PostHeap[b_24, array], i_15) }
        Seq#Contains(Seq#Range(start, end), i_15) && NoPerm < FullPerm ==> qpRange4(Seq#Index(PostHeap[b_24, array], i_15)) && invRecv4(Seq#Index(PostHeap[b_24, array], i_15)) == i_15
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(PostHeap[b_24, array], invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_15: int ::
        { Seq#Index(PostHeap[b_24, array], i_15) } { Seq#ContainsTrigger(Seq#Range(start, end), i_15) } { Seq#Contains(Seq#Range(start, end), i_15) } { Seq#Index(PostHeap[b_24, array], i_15) }
        Seq#Contains(Seq#Range(start, end), i_15) ==> Seq#Index(PostHeap[b_24, array], i_15) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[b_24, array], invRecv4(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a.array == old(a.array)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@25.11--25.34) [64292]"}
        HasDirectPerm(PostMask, a_2, array);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@25.11--25.34) [64293]"}
        HasDirectPerm(oldMask, a_2, array);
    assume Seq#Equal(PostHeap[a_2, array], oldHeap[a_2, array]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of b.array == old(b.array)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@26.11--26.34) [64294]"}
        HasDirectPerm(PostMask, b_24, array);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@26.11--26.34) [64295]"}
        HasDirectPerm(oldMask, b_24, array);
    assume Seq#Equal(PostHeap[b_24, array], oldHeap[b_24, array]);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (end - start > 1) -- mergesort.vpr@34.5--73.6
    if (end - start > 1) {
      
      // -- Translating statement: middle := start + (end - start) \ 2 -- mergesort.vpr@36.9--36.40
        middle := start + (end - start) div 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: t1A := a.array -- mergesort.vpr@39.3--39.17
        
        // -- Check definedness of a.array
          assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (mergesort.vpr@39.3--39.17) [64296]"}
            HasDirectPerm(Mask, a_2, array);
        t1A := Heap[a_2, array];
        assume state(Heap, Mask);
      
      // -- Translating statement: t1B := b.array -- mergesort.vpr@40.3--40.17
        
        // -- Check definedness of b.array
          assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array (mergesort.vpr@40.3--40.17) [64297]"}
            HasDirectPerm(Mask, b_24, array);
        t1B := Heap[b_24, array];
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(a.array, wildcard) -- mergesort.vpr@41.3--41.32
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@41.10--41.32) [64298]"}
          Mask[a_2, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array];
        Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(b.array, wildcard) -- mergesort.vpr@42.9--42.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@42.16--42.38) [64299]"}
          Mask[b_24, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[b_24, array];
        Mask := Mask[b_24, array:=Mask[b_24, array] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale start >= 0 && (middle <= |a.array| && |a.array| == |b.array|) -- mergesort.vpr@43.9--43.75
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion start >= 0 might not hold. (mergesort.vpr@43.16--43.75) [64300]"}
          start >= 0;
        
        // -- Check definedness of middle <= |a.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@43.16--43.75) [64301]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
        assert {:msg "  Exhale might fail. Assertion middle <= |a.array| might not hold. (mergesort.vpr@43.16--43.75) [64302]"}
          middle <= Seq#Length(Heap[a_2, array]);
        
        // -- Check definedness of |a.array| == |b.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@43.16--43.75) [64303]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@43.16--43.75) [64304]"}
            HasDirectPerm(ExhaleWellDef0Mask, b_24, array);
        assert {:msg "  Exhale might fail. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@43.16--43.75) [64305]"}
          Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [start..middle)) }
  //     { a.array[i] }
  //     (i in [start..middle)) ==> acc(a.array[i].value, write)) -- mergesort.vpr@44.9--44.85
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i: Int :: { (i in [start..middle)) } { a.array[i] } (i in [start..middle)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start, middle), i_11)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@44.16--44.85) [64306]"}
                HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
              assert {:msg "  Exhale might fail. Index a.array[i] into a.array might be negative. (mergesort.vpr@44.16--44.85) [64307]"}
                i_11 >= 0;
              assert {:msg "  Exhale might fail. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@44.16--44.85) [64308]"}
                i_11 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a.array[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@44.16--44.85) [64310]"}
            (forall i_23: int, i_23_1: int ::
            { neverTriggered7(i_23), neverTriggered7(i_23_1) }
            (((i_23 != i_23_1 && Seq#Contains(Seq#Range(start, middle), i_23)) && Seq#Contains(Seq#Range(start, middle), i_23_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_23) != Seq#Index(Heap[a_2, array], i_23_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array[i].value (mergesort.vpr@44.16--44.85) [64311]"}
            (forall i_23: int ::
            { Seq#Index(Heap[a_2, array], i_23) } { Seq#ContainsTrigger(Seq#Range(start, middle), i_23) } { Seq#Contains(Seq#Range(start, middle), i_23) } { Seq#Index(Heap[a_2, array], i_23) }
            Seq#Contains(Seq#Range(start, middle), i_23) ==> Mask[Seq#Index(Heap[a_2, array], i_23), value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a.array[i]
          assume (forall i_23: int ::
            { Seq#Index(Heap[a_2, array], i_23) } { Seq#ContainsTrigger(Seq#Range(start, middle), i_23) } { Seq#Contains(Seq#Range(start, middle), i_23) } { Seq#Index(Heap[a_2, array], i_23) }
            Seq#Contains(Seq#Range(start, middle), i_23) && NoPerm < FullPerm ==> qpRange7(Seq#Index(Heap[a_2, array], i_23)) && invRecv7(Seq#Index(Heap[a_2, array], i_23)) == i_23
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            Seq#Contains(Seq#Range(start, middle), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv7(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(start, middle), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv7(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, middle), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
            if (Seq#Contains(Seq#Range(start, middle), i_12)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@45.16--45.85) [64312]"}
                HasDirectPerm(ExhaleWellDef0Mask, b_24, array);
              assert {:msg "  Exhale might fail. Index b.array[i] into b.array might be negative. (mergesort.vpr@45.16--45.85) [64313]"}
                i_12 >= 0;
              assert {:msg "  Exhale might fail. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@45.16--45.85) [64314]"}
                i_12 < Seq#Length(Heap[b_24, array]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b.array[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@45.16--45.85) [64316]"}
            (forall i_25: int, i_25_2: int ::
            { neverTriggered8(i_25), neverTriggered8(i_25_2) }
            (((i_25 != i_25_2 && Seq#Contains(Seq#Range(start, middle), i_25)) && Seq#Contains(Seq#Range(start, middle), i_25_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_25) != Seq#Index(Heap[b_24, array], i_25_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array[i].value (mergesort.vpr@45.16--45.85) [64317]"}
            (forall i_25: int ::
            { Seq#Index(Heap[b_24, array], i_25) } { Seq#ContainsTrigger(Seq#Range(start, middle), i_25) } { Seq#Contains(Seq#Range(start, middle), i_25) } { Seq#Index(Heap[b_24, array], i_25) }
            Seq#Contains(Seq#Range(start, middle), i_25) ==> Mask[Seq#Index(Heap[b_24, array], i_25), value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b.array[i]
          assume (forall i_25: int ::
            { Seq#Index(Heap[b_24, array], i_25) } { Seq#ContainsTrigger(Seq#Range(start, middle), i_25) } { Seq#Contains(Seq#Range(start, middle), i_25) } { Seq#Index(Heap[b_24, array], i_25) }
            Seq#Contains(Seq#Range(start, middle), i_25) && NoPerm < FullPerm ==> qpRange8(Seq#Index(Heap[b_24, array], i_25)) && invRecv8(Seq#Index(Heap[b_24, array], i_25)) == i_25
          );
          assume (forall o_4: Ref ::
            { invRecv8(o_4) }
            Seq#Contains(Seq#Range(start, middle), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv8(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(start, middle), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv8(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, middle), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: t2A := a.array -- mergesort.vpr@48.3--48.17
        
        // -- Check definedness of a.array
          assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (mergesort.vpr@48.3--48.17) [64318]"}
            HasDirectPerm(Mask, a_2, array);
        t2A := Heap[a_2, array];
        assume state(Heap, Mask);
      
      // -- Translating statement: t2B := b.array -- mergesort.vpr@49.3--49.17
        
        // -- Check definedness of b.array
          assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array (mergesort.vpr@49.3--49.17) [64319]"}
            HasDirectPerm(Mask, b_24, array);
        t2B := Heap[b_24, array];
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(a.array, wildcard) -- mergesort.vpr@50.3--50.32
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@50.10--50.32) [64320]"}
          Mask[a_2, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array];
        Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(b.array, wildcard) -- mergesort.vpr@51.9--51.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@51.16--51.38) [64321]"}
          Mask[b_24, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[b_24, array];
        Mask := Mask[b_24, array:=Mask[b_24, array] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale middle >= 0 && (end <= |a.array| && |a.array| == |b.array|) -- mergesort.vpr@52.9--52.73
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion middle >= 0 might not hold. (mergesort.vpr@52.16--52.73) [64322]"}
          middle >= 0;
        
        // -- Check definedness of end <= |a.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@52.16--52.73) [64323]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
        assert {:msg "  Exhale might fail. Assertion end <= |a.array| might not hold. (mergesort.vpr@52.16--52.73) [64324]"}
          end <= Seq#Length(Heap[a_2, array]);
        
        // -- Check definedness of |a.array| == |b.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@52.16--52.73) [64325]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@52.16--52.73) [64326]"}
            HasDirectPerm(ExhaleWellDef0Mask, b_24, array);
        assert {:msg "  Exhale might fail. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@52.16--52.73) [64327]"}
          Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i: Int ::
  //     { (i in [middle..end)) }
  //     { a.array[i] }
  //     (i in [middle..end)) ==> acc(a.array[i].value, write)) -- mergesort.vpr@53.9--53.83
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i: Int :: { (i in [middle..end)) } { a.array[i] } (i in [middle..end)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end), i_16)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@53.16--53.83) [64328]"}
                HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
              assert {:msg "  Exhale might fail. Index a.array[i] into a.array might be negative. (mergesort.vpr@53.16--53.83) [64329]"}
                i_16 >= 0;
              assert {:msg "  Exhale might fail. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@53.16--53.83) [64330]"}
                i_16 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a.array[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@53.16--53.83) [64332]"}
            (forall i_27: int, i_27_1: int ::
            { neverTriggered9(i_27), neverTriggered9(i_27_1) }
            (((i_27 != i_27_1 && Seq#Contains(Seq#Range(middle, end), i_27)) && Seq#Contains(Seq#Range(middle, end), i_27_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_27) != Seq#Index(Heap[a_2, array], i_27_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array[i].value (mergesort.vpr@53.16--53.83) [64333]"}
            (forall i_27: int ::
            { Seq#Index(Heap[a_2, array], i_27) } { Seq#ContainsTrigger(Seq#Range(middle, end), i_27) } { Seq#Contains(Seq#Range(middle, end), i_27) } { Seq#Index(Heap[a_2, array], i_27) }
            Seq#Contains(Seq#Range(middle, end), i_27) ==> Mask[Seq#Index(Heap[a_2, array], i_27), value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a.array[i]
          assume (forall i_27: int ::
            { Seq#Index(Heap[a_2, array], i_27) } { Seq#ContainsTrigger(Seq#Range(middle, end), i_27) } { Seq#Contains(Seq#Range(middle, end), i_27) } { Seq#Index(Heap[a_2, array], i_27) }
            Seq#Contains(Seq#Range(middle, end), i_27) && NoPerm < FullPerm ==> qpRange9(Seq#Index(Heap[a_2, array], i_27)) && invRecv9(Seq#Index(Heap[a_2, array], i_27)) == i_27
          );
          assume (forall o_4: Ref ::
            { invRecv9(o_4) }
            Seq#Contains(Seq#Range(middle, end), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv9(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(middle, end), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv9(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(middle, end), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
            if (Seq#Contains(Seq#Range(middle, end), i_18)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@54.16--54.83) [64334]"}
                HasDirectPerm(ExhaleWellDef0Mask, b_24, array);
              assert {:msg "  Exhale might fail. Index b.array[i] into b.array might be negative. (mergesort.vpr@54.16--54.83) [64335]"}
                i_18 >= 0;
              assert {:msg "  Exhale might fail. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@54.16--54.83) [64336]"}
                i_18 < Seq#Length(Heap[b_24, array]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b.array[i] is injective
          assert {:msg "  Exhale might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@54.16--54.83) [64338]"}
            (forall i_29_1: int, i_29_2: int ::
            { neverTriggered10(i_29_1), neverTriggered10(i_29_2) }
            (((i_29_1 != i_29_2 && Seq#Contains(Seq#Range(middle, end), i_29_1)) && Seq#Contains(Seq#Range(middle, end), i_29_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_29_1) != Seq#Index(Heap[b_24, array], i_29_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access b.array[i].value (mergesort.vpr@54.16--54.83) [64339]"}
            (forall i_29_1: int ::
            { Seq#Index(Heap[b_24, array], i_29_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i_29_1) } { Seq#Contains(Seq#Range(middle, end), i_29_1) } { Seq#Index(Heap[b_24, array], i_29_1) }
            Seq#Contains(Seq#Range(middle, end), i_29_1) ==> Mask[Seq#Index(Heap[b_24, array], i_29_1), value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b.array[i]
          assume (forall i_29_1: int ::
            { Seq#Index(Heap[b_24, array], i_29_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i_29_1) } { Seq#Contains(Seq#Range(middle, end), i_29_1) } { Seq#Index(Heap[b_24, array], i_29_1) }
            Seq#Contains(Seq#Range(middle, end), i_29_1) && NoPerm < FullPerm ==> qpRange10(Seq#Index(Heap[b_24, array], i_29_1)) && invRecv10(Seq#Index(Heap[b_24, array], i_29_1)) == i_29_1
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            Seq#Contains(Seq#Range(middle, end), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv10(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(middle, end), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv10(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(middle, end), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
        Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(b.array, wildcard) -- mergesort.vpr@58.9--58.38
        havoc wildcard;
        perm := wildcard;
        assume b_24 != null;
        Mask := Mask[b_24, array:=Mask[b_24, array] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [start..middle)) }
  //     { a.array[i] }
  //     (i in [start..middle)) ==> acc(a.array[i].value, write)) -- mergesort.vpr@59.9--59.85
        
        // -- Check definedness of (forall i: Int :: { (i in [start..middle)) } { a.array[i] } (i in [start..middle)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start, middle), i_13)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@59.16--59.85) [64340]"}
                HasDirectPerm(Mask, a_2, array);
              assert {:msg "  Inhale might fail. Index a.array[i] into a.array might be negative. (mergesort.vpr@59.16--59.85) [64341]"}
                i_13 >= 0;
              assert {:msg "  Inhale might fail. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@59.16--59.85) [64342]"}
                i_13 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@59.16--59.85) [64343]"}
          (forall i_31_1: int, i_31_2: int ::
          
          (((i_31_1 != i_31_2 && Seq#Contains(Seq#Range(start, middle), i_31_1)) && Seq#Contains(Seq#Range(start, middle), i_31_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_31_1) != Seq#Index(Heap[a_2, array], i_31_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_31_1: int ::
            { Seq#Index(Heap[a_2, array], i_31_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i_31_1) } { Seq#Contains(Seq#Range(start, middle), i_31_1) } { Seq#Index(Heap[a_2, array], i_31_1) }
            Seq#Contains(Seq#Range(start, middle), i_31_1) && NoPerm < FullPerm ==> qpRange11(Seq#Index(Heap[a_2, array], i_31_1)) && invRecv11(Seq#Index(Heap[a_2, array], i_31_1)) == i_31_1
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            (Seq#Contains(Seq#Range(start, middle), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(Heap[a_2, array], invRecv11(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_31_1: int ::
            { Seq#Index(Heap[a_2, array], i_31_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i_31_1) } { Seq#Contains(Seq#Range(start, middle), i_31_1) } { Seq#Index(Heap[a_2, array], i_31_1) }
            Seq#Contains(Seq#Range(start, middle), i_31_1) ==> Seq#Index(Heap[a_2, array], i_31_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(start, middle), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], invRecv11(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, middle), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
            if (Seq#Contains(Seq#Range(start, middle), i_20)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@60.16--60.85) [64344]"}
                HasDirectPerm(Mask, b_24, array);
              assert {:msg "  Inhale might fail. Index b.array[i] into b.array might be negative. (mergesort.vpr@60.16--60.85) [64345]"}
                i_20 >= 0;
              assert {:msg "  Inhale might fail. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@60.16--60.85) [64346]"}
                i_20 < Seq#Length(Heap[b_24, array]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@60.16--60.85) [64347]"}
          (forall i_33_1: int, i_33_2: int ::
          
          (((i_33_1 != i_33_2 && Seq#Contains(Seq#Range(start, middle), i_33_1)) && Seq#Contains(Seq#Range(start, middle), i_33_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_33_1) != Seq#Index(Heap[b_24, array], i_33_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_33_1: int ::
            { Seq#Index(Heap[b_24, array], i_33_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i_33_1) } { Seq#Contains(Seq#Range(start, middle), i_33_1) } { Seq#Index(Heap[b_24, array], i_33_1) }
            Seq#Contains(Seq#Range(start, middle), i_33_1) && NoPerm < FullPerm ==> qpRange12(Seq#Index(Heap[b_24, array], i_33_1)) && invRecv12(Seq#Index(Heap[b_24, array], i_33_1)) == i_33_1
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            (Seq#Contains(Seq#Range(start, middle), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(Heap[b_24, array], invRecv12(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_33_1: int ::
            { Seq#Index(Heap[b_24, array], i_33_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i_33_1) } { Seq#Contains(Seq#Range(start, middle), i_33_1) } { Seq#Index(Heap[b_24, array], i_33_1) }
            Seq#Contains(Seq#Range(start, middle), i_33_1) ==> Seq#Index(Heap[b_24, array], i_33_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(start, middle), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], invRecv12(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, middle), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale a.array == t1A -- mergesort.vpr@61.9--61.30
        
        // -- Check definedness of a.array == t1A
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@61.16--61.30) [64348]"}
            HasDirectPerm(Mask, a_2, array);
        assume Seq#Equal(Heap[a_2, array], t1A);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale b.array == t1B -- mergesort.vpr@62.9--62.30
        
        // -- Check definedness of b.array == t1B
          assert {:msg "  Inhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@62.16--62.30) [64349]"}
            HasDirectPerm(Mask, b_24, array);
        assume Seq#Equal(Heap[b_24, array], t1B);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(a.array, wildcard) -- mergesort.vpr@65.6--65.35
        havoc wildcard;
        perm := wildcard;
        assume a_2 != null;
        Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(b.array, wildcard) -- mergesort.vpr@66.9--66.38
        havoc wildcard;
        perm := wildcard;
        assume b_24 != null;
        Mask := Mask[b_24, array:=Mask[b_24, array] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i: Int ::
  //     { (i in [middle..end)) }
  //     { a.array[i] }
  //     (i in [middle..end)) ==> acc(a.array[i].value, write)) -- mergesort.vpr@67.9--67.83
        
        // -- Check definedness of (forall i: Int :: { (i in [middle..end)) } { a.array[i] } (i in [middle..end)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end), i_22)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@67.16--67.83) [64350]"}
                HasDirectPerm(Mask, a_2, array);
              assert {:msg "  Inhale might fail. Index a.array[i] into a.array might be negative. (mergesort.vpr@67.16--67.83) [64351]"}
                i_22 >= 0;
              assert {:msg "  Inhale might fail. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@67.16--67.83) [64352]"}
                i_22 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@67.16--67.83) [64353]"}
          (forall i_35_1: int, i_35_2: int ::
          
          (((i_35_1 != i_35_2 && Seq#Contains(Seq#Range(middle, end), i_35_1)) && Seq#Contains(Seq#Range(middle, end), i_35_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_35_1) != Seq#Index(Heap[a_2, array], i_35_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_35_1: int ::
            { Seq#Index(Heap[a_2, array], i_35_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i_35_1) } { Seq#Contains(Seq#Range(middle, end), i_35_1) } { Seq#Index(Heap[a_2, array], i_35_1) }
            Seq#Contains(Seq#Range(middle, end), i_35_1) && NoPerm < FullPerm ==> qpRange13(Seq#Index(Heap[a_2, array], i_35_1)) && invRecv13(Seq#Index(Heap[a_2, array], i_35_1)) == i_35_1
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            (Seq#Contains(Seq#Range(middle, end), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(Heap[a_2, array], invRecv13(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_35_1: int ::
            { Seq#Index(Heap[a_2, array], i_35_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i_35_1) } { Seq#Contains(Seq#Range(middle, end), i_35_1) } { Seq#Index(Heap[a_2, array], i_35_1) }
            Seq#Contains(Seq#Range(middle, end), i_35_1) ==> Seq#Index(Heap[a_2, array], i_35_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(middle, end), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], invRecv13(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(middle, end), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
            if (Seq#Contains(Seq#Range(middle, end), i_24)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@68.16--68.83) [64354]"}
                HasDirectPerm(Mask, b_24, array);
              assert {:msg "  Inhale might fail. Index b.array[i] into b.array might be negative. (mergesort.vpr@68.16--68.83) [64355]"}
                i_24 >= 0;
              assert {:msg "  Inhale might fail. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@68.16--68.83) [64356]"}
                i_24 < Seq#Length(Heap[b_24, array]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@68.16--68.83) [64357]"}
          (forall i_37: int, i_37_1: int ::
          
          (((i_37 != i_37_1 && Seq#Contains(Seq#Range(middle, end), i_37)) && Seq#Contains(Seq#Range(middle, end), i_37_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_37) != Seq#Index(Heap[b_24, array], i_37_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_37: int ::
            { Seq#Index(Heap[b_24, array], i_37) } { Seq#ContainsTrigger(Seq#Range(middle, end), i_37) } { Seq#Contains(Seq#Range(middle, end), i_37) } { Seq#Index(Heap[b_24, array], i_37) }
            Seq#Contains(Seq#Range(middle, end), i_37) && NoPerm < FullPerm ==> qpRange14(Seq#Index(Heap[b_24, array], i_37)) && invRecv14(Seq#Index(Heap[b_24, array], i_37)) == i_37
          );
          assume (forall o_4: Ref ::
            { invRecv14(o_4) }
            (Seq#Contains(Seq#Range(middle, end), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(Heap[b_24, array], invRecv14(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_37: int ::
            { Seq#Index(Heap[b_24, array], i_37) } { Seq#ContainsTrigger(Seq#Range(middle, end), i_37) } { Seq#Contains(Seq#Range(middle, end), i_37) } { Seq#Index(Heap[b_24, array], i_37) }
            Seq#Contains(Seq#Range(middle, end), i_37) ==> Seq#Index(Heap[b_24, array], i_37) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(middle, end), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], invRecv14(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(middle, end), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale a.array == t2A -- mergesort.vpr@69.9--69.30
        
        // -- Check definedness of a.array == t2A
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (mergesort.vpr@69.16--69.30) [64358]"}
            HasDirectPerm(Mask, a_2, array);
        assume Seq#Equal(Heap[a_2, array], t2A);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale b.array == t2B -- mergesort.vpr@70.9--70.30
        
        // -- Check definedness of b.array == t2B
          assert {:msg "  Inhale might fail. There might be insufficient permission to access b.array (mergesort.vpr@70.16--70.30) [64359]"}
            HasDirectPerm(Mask, b_24, array);
        assume Seq#Equal(Heap[b_24, array], t2B);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: merge(a, b, start, middle, end) -- mergesort.vpr@72.9--72.36
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method merge might not hold. There might be insufficient permission to access a.array (mergesort.vpr@72.9--72.36) [64360]"}
            Mask[a_2, array] > NoPerm;
          havoc wildcard;
          assume wildcard < Mask[a_2, array];
          Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
          assert {:msg "  The precondition of method merge might not hold. There might be insufficient permission to access b.array (mergesort.vpr@72.9--72.36) [64361]"}
            Mask[b_24, array] > NoPerm;
          havoc wildcard;
          assume wildcard < Mask[b_24, array];
          Mask := Mask[b_24, array:=Mask[b_24, array] - wildcard];
          assert {:msg "  The precondition of method merge might not hold. Assertion 0 <= start might not hold. (mergesort.vpr@72.9--72.36) [64362]"}
            0 <= start;
          assert {:msg "  The precondition of method merge might not hold. Assertion end <= |a.array| might not hold. (mergesort.vpr@72.9--72.36) [64363]"}
            end <= Seq#Length(Heap[a_2, array]);
          assert {:msg "  The precondition of method merge might not hold. Assertion |b.array| == |a.array| might not hold. (mergesort.vpr@72.9--72.36) [64364]"}
            Seq#Length(Heap[b_24, array]) == Seq#Length(Heap[a_2, array]);
          assert {:msg "  The precondition of method merge might not hold. Assertion start < middle might not hold. (mergesort.vpr@72.9--72.36) [64365]"}
            start < middle;
          assert {:msg "  The precondition of method merge might not hold. Assertion middle < end might not hold. (mergesort.vpr@72.9--72.36) [64366]"}
            middle < end;
          if (*) {
            if (Seq#Contains(Seq#Range(start, end), i_38) && (Seq#Contains(Seq#Range(start, end), j_12_2) && i_38 != j_12_2)) {
              assert {:msg "  The precondition of method merge might not hold. Assertion a.array[i] != a.array[j] might not hold. (mergesort.vpr@72.9--72.36) [64367]"}
                Seq#Index(Heap[a_2, array], i_38) != Seq#Index(Heap[a_2, array], j_12_2);
            }
            assume false;
          }
          assume (forall i_39_1_1: int, j_13_1: int ::
            { Seq#ContainsTrigger(Seq#Range(start, end), i_39_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_13_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_39_1_1), Seq#Contains(Seq#Range(start, end), j_13_1) } { Seq#Contains(Seq#Range(start, end), i_39_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_13_1) } { Seq#Contains(Seq#Range(start, end), i_39_1_1), Seq#Contains(Seq#Range(start, end), j_13_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_39_1_1), Seq#Index(Heap[a_2, array], j_13_1) } { Seq#Contains(Seq#Range(start, end), i_39_1_1), Seq#Index(Heap[a_2, array], j_13_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_13_1), Seq#Index(Heap[a_2, array], i_39_1_1) } { Seq#Contains(Seq#Range(start, end), j_13_1), Seq#Index(Heap[a_2, array], i_39_1_1) } { Seq#Index(Heap[a_2, array], i_39_1_1), Seq#Index(Heap[a_2, array], j_13_1) }
            Seq#Contains(Seq#Range(start, end), i_39_1_1) && (Seq#Contains(Seq#Range(start, end), j_13_1) && i_39_1_1 != j_13_1) ==> Seq#Index(Heap[a_2, array], i_39_1_1) != Seq#Index(Heap[a_2, array], j_13_1)
          );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver a.array[k] is injective
            assert {:msg "  The precondition of method merge might not hold. Quantified resource a.array[k].value might not be injective. (mergesort.vpr@72.9--72.36) [64368]"}
              (forall k: int, k_42: int ::
              { neverTriggered15(k), neverTriggered15(k_42) }
              (((k != k_42 && Seq#Contains(Seq#Range(start, end), k)) && Seq#Contains(Seq#Range(start, end), k_42)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], k) != Seq#Index(Heap[a_2, array], k_42)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method merge might not hold. There might be insufficient permission to access a.array[k].value (mergesort.vpr@72.9--72.36) [64369]"}
              (forall k: int ::
              { Seq#Index(Heap[a_2, array], k) } { Seq#ContainsTrigger(Seq#Range(start, end), k) } { Seq#Contains(Seq#Range(start, end), k) } { Seq#Index(Heap[a_2, array], k) }
              Seq#Contains(Seq#Range(start, end), k) ==> Mask[Seq#Index(Heap[a_2, array], k), value] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver a.array[k]
            assume (forall k: int ::
              { Seq#Index(Heap[a_2, array], k) } { Seq#ContainsTrigger(Seq#Range(start, end), k) } { Seq#Contains(Seq#Range(start, end), k) } { Seq#Index(Heap[a_2, array], k) }
              Seq#Contains(Seq#Range(start, end), k) && NoPerm < FullPerm ==> qpRange15(Seq#Index(Heap[a_2, array], k)) && invRecv15(Seq#Index(Heap[a_2, array], k)) == k
            );
            assume (forall o_4: Ref ::
              { invRecv15(o_4) }
              Seq#Contains(Seq#Range(start, end), invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv15(o_4)) == o_4
            );
          
          // -- assume permission updates for field value
            assume (forall o_4: Ref ::
              { QPMask[o_4, value] }
              (Seq#Contains(Seq#Range(start, end), invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv15(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (Seq#Contains(Seq#Range(start, end), i_40) && (Seq#Contains(Seq#Range(start, end), j_14_1) && i_40 != j_14_1)) {
              assert {:msg "  The precondition of method merge might not hold. Assertion b.array[i] != b.array[j] might not hold. (mergesort.vpr@72.9--72.36) [64370]"}
                Seq#Index(Heap[b_24, array], i_40) != Seq#Index(Heap[b_24, array], j_14_1);
            }
            assume false;
          }
          assume (forall i_41_1: int, j_15_1_1: int ::
            { Seq#ContainsTrigger(Seq#Range(start, end), i_41_1), Seq#ContainsTrigger(Seq#Range(start, end), j_15_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_41_1), Seq#Contains(Seq#Range(start, end), j_15_1_1) } { Seq#Contains(Seq#Range(start, end), i_41_1), Seq#ContainsTrigger(Seq#Range(start, end), j_15_1_1) } { Seq#Contains(Seq#Range(start, end), i_41_1), Seq#Contains(Seq#Range(start, end), j_15_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_41_1), Seq#Index(Heap[b_24, array], j_15_1_1) } { Seq#Contains(Seq#Range(start, end), i_41_1), Seq#Index(Heap[b_24, array], j_15_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_15_1_1), Seq#Index(Heap[b_24, array], i_41_1) } { Seq#Contains(Seq#Range(start, end), j_15_1_1), Seq#Index(Heap[b_24, array], i_41_1) } { Seq#Index(Heap[b_24, array], i_41_1), Seq#Index(Heap[b_24, array], j_15_1_1) }
            Seq#Contains(Seq#Range(start, end), i_41_1) && (Seq#Contains(Seq#Range(start, end), j_15_1_1) && i_41_1 != j_15_1_1) ==> Seq#Index(Heap[b_24, array], i_41_1) != Seq#Index(Heap[b_24, array], j_15_1_1)
          );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver b.array[l] is injective
            assert {:msg "  The precondition of method merge might not hold. Quantified resource b.array[l].value might not be injective. (mergesort.vpr@72.9--72.36) [64371]"}
              (forall l_2: int, l_3: int ::
              { neverTriggered16(l_2), neverTriggered16(l_3) }
              (((l_2 != l_3 && Seq#Contains(Seq#Range(start, end), l_2)) && Seq#Contains(Seq#Range(start, end), l_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], l_2) != Seq#Index(Heap[b_24, array], l_3)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method merge might not hold. There might be insufficient permission to access b.array[l].value (mergesort.vpr@72.9--72.36) [64372]"}
              (forall l_2: int ::
              { Seq#Index(Heap[b_24, array], l_2) } { Seq#ContainsTrigger(Seq#Range(start, end), l_2) } { Seq#Contains(Seq#Range(start, end), l_2) } { Seq#Index(Heap[b_24, array], l_2) }
              Seq#Contains(Seq#Range(start, end), l_2) ==> Mask[Seq#Index(Heap[b_24, array], l_2), value] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver b.array[l]
            assume (forall l_2: int ::
              { Seq#Index(Heap[b_24, array], l_2) } { Seq#ContainsTrigger(Seq#Range(start, end), l_2) } { Seq#Contains(Seq#Range(start, end), l_2) } { Seq#Index(Heap[b_24, array], l_2) }
              Seq#Contains(Seq#Range(start, end), l_2) && NoPerm < FullPerm ==> qpRange16(Seq#Index(Heap[b_24, array], l_2)) && invRecv16(Seq#Index(Heap[b_24, array], l_2)) == l_2
            );
            assume (forall o_4: Ref ::
              { invRecv16(o_4) }
              Seq#Contains(Seq#Range(start, end), invRecv16(o_4)) && (NoPerm < FullPerm && qpRange16(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv16(o_4)) == o_4
            );
          
          // -- assume permission updates for field value
            assume (forall o_4: Ref ::
              { QPMask[o_4, value] }
              (Seq#Contains(Seq#Range(start, end), invRecv16(o_4)) && (NoPerm < FullPerm && qpRange16(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv16(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv16(o_4)) && (NoPerm < FullPerm && qpRange16(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
          Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
          assume state(Heap, Mask);
          havoc wildcard;
          perm := wildcard;
          assume b_24 != null;
          Mask := Mask[b_24, array:=Mask[b_24, array] + perm];
          assume state(Heap, Mask);
          assume Seq#Equal(Heap[a_2, array], PreCallHeap[a_2, array]);
          assume Seq#Equal(Heap[b_24, array], PreCallHeap[b_24, array]);
          assume (forall i_42: int, j_16_2: int ::
            { Seq#ContainsTrigger(Seq#Range(start, end), i_42), Seq#ContainsTrigger(Seq#Range(start, end), j_16_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i_42), Seq#Contains(Seq#Range(start, end), j_16_2) } { Seq#Contains(Seq#Range(start, end), i_42), Seq#ContainsTrigger(Seq#Range(start, end), j_16_2) } { Seq#Contains(Seq#Range(start, end), i_42), Seq#Contains(Seq#Range(start, end), j_16_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i_42), Seq#Index(Heap[a_2, array], j_16_2) } { Seq#Contains(Seq#Range(start, end), i_42), Seq#Index(Heap[a_2, array], j_16_2) } { Seq#ContainsTrigger(Seq#Range(start, end), j_16_2), Seq#Index(Heap[a_2, array], i_42) } { Seq#Contains(Seq#Range(start, end), j_16_2), Seq#Index(Heap[a_2, array], i_42) } { Seq#Index(Heap[a_2, array], i_42), Seq#Index(Heap[a_2, array], j_16_2) }
            Seq#Contains(Seq#Range(start, end), i_42) && (Seq#Contains(Seq#Range(start, end), j_16_2) && i_42 != j_16_2) ==> Seq#Index(Heap[a_2, array], i_42) != Seq#Index(Heap[a_2, array], j_16_2)
          );
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@72.9--72.36) [64373]"}
            (forall i_43_2: int, i_43_3: int ::
            
            (((i_43_2 != i_43_3 && Seq#Contains(Seq#Range(start, end), i_43_2)) && Seq#Contains(Seq#Range(start, end), i_43_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_43_2) != Seq#Index(Heap[a_2, array], i_43_3)
          );
          
          // -- Define Inverse Function
            assume (forall i_43_2: int ::
              { Seq#Index(Heap[a_2, array], i_43_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i_43_2) } { Seq#Contains(Seq#Range(start, end), i_43_2) } { Seq#Index(Heap[a_2, array], i_43_2) }
              Seq#Contains(Seq#Range(start, end), i_43_2) && NoPerm < FullPerm ==> qpRange17(Seq#Index(Heap[a_2, array], i_43_2)) && invRecv17(Seq#Index(Heap[a_2, array], i_43_2)) == i_43_2
            );
            assume (forall o_4: Ref ::
              { invRecv17(o_4) }
              (Seq#Contains(Seq#Range(start, end), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4) ==> Seq#Index(Heap[a_2, array], invRecv17(o_4)) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall i_43_2: int ::
              { Seq#Index(Heap[a_2, array], i_43_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i_43_2) } { Seq#Contains(Seq#Range(start, end), i_43_2) } { Seq#Index(Heap[a_2, array], i_43_2) }
              Seq#Contains(Seq#Range(start, end), i_43_2) ==> Seq#Index(Heap[a_2, array], i_43_2) != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, value] }
              ((Seq#Contains(Seq#Range(start, end), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], invRecv17(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall i_44: int, j_17_1: int ::
            { Seq#ContainsTrigger(Seq#Range(start, end), i_44), Seq#ContainsTrigger(Seq#Range(start, end), j_17_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_44), Seq#Contains(Seq#Range(start, end), j_17_1) } { Seq#Contains(Seq#Range(start, end), i_44), Seq#ContainsTrigger(Seq#Range(start, end), j_17_1) } { Seq#Contains(Seq#Range(start, end), i_44), Seq#Contains(Seq#Range(start, end), j_17_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_44), Seq#Index(Heap[b_24, array], j_17_1) } { Seq#Contains(Seq#Range(start, end), i_44), Seq#Index(Heap[b_24, array], j_17_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_17_1), Seq#Index(Heap[b_24, array], i_44) } { Seq#Contains(Seq#Range(start, end), j_17_1), Seq#Index(Heap[b_24, array], i_44) } { Seq#Index(Heap[b_24, array], i_44), Seq#Index(Heap[b_24, array], j_17_1) }
            Seq#Contains(Seq#Range(start, end), i_44) && (Seq#Contains(Seq#Range(start, end), j_17_1) && i_44 != j_17_1) ==> Seq#Index(Heap[b_24, array], i_44) != Seq#Index(Heap[b_24, array], j_17_1)
          );
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@72.9--72.36) [64374]"}
            (forall i_45_2: int, i_45_3: int ::
            
            (((i_45_2 != i_45_3 && Seq#Contains(Seq#Range(start, end), i_45_2)) && Seq#Contains(Seq#Range(start, end), i_45_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_45_2) != Seq#Index(Heap[b_24, array], i_45_3)
          );
          
          // -- Define Inverse Function
            assume (forall i_45_2: int ::
              { Seq#Index(Heap[b_24, array], i_45_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i_45_2) } { Seq#Contains(Seq#Range(start, end), i_45_2) } { Seq#Index(Heap[b_24, array], i_45_2) }
              Seq#Contains(Seq#Range(start, end), i_45_2) && NoPerm < FullPerm ==> qpRange18(Seq#Index(Heap[b_24, array], i_45_2)) && invRecv18(Seq#Index(Heap[b_24, array], i_45_2)) == i_45_2
            );
            assume (forall o_4: Ref ::
              { invRecv18(o_4) }
              (Seq#Contains(Seq#Range(start, end), invRecv18(o_4)) && NoPerm < FullPerm) && qpRange18(o_4) ==> Seq#Index(Heap[b_24, array], invRecv18(o_4)) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall i_45_2: int ::
              { Seq#Index(Heap[b_24, array], i_45_2) } { Seq#ContainsTrigger(Seq#Range(start, end), i_45_2) } { Seq#Contains(Seq#Range(start, end), i_45_2) } { Seq#Index(Heap[b_24, array], i_45_2) }
              Seq#Contains(Seq#Range(start, end), i_45_2) ==> Seq#Index(Heap[b_24, array], i_45_2) != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, value] }
              ((Seq#Contains(Seq#Range(start, end), invRecv18(o_4)) && NoPerm < FullPerm) && qpRange18(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], invRecv18(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv18(o_4)) && NoPerm < FullPerm) && qpRange18(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assert {:msg "  Postcondition of parallel_mergesort might not hold. There might be insufficient permission to access a.array (mergesort.vpr@18.11--18.33) [64375]"}
      Mask[a_2, array] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[a_2, array];
    Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
    assert {:msg "  Postcondition of parallel_mergesort might not hold. There might be insufficient permission to access b.array (mergesort.vpr@19.11--19.33) [64376]"}
      Mask[b_24, array] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[b_24, array];
    Mask := Mask[b_24, array:=Mask[b_24, array] - wildcard];
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion start >= 0 might not hold. (mergesort.vpr@20.11--20.67) [64377]"}
      start >= 0;
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion end <= |a.array| might not hold. (mergesort.vpr@20.11--20.67) [64378]"}
      end <= Seq#Length(Heap[a_2, array]);
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@20.11--20.67) [64379]"}
      Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
    if (*) {
      if (Seq#Contains(Seq#Range(start, end), i_16_1) && (Seq#Contains(Seq#Range(start, end), j_8) && i_16_1 != j_8)) {
        assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion a.array[i] != a.array[j] might not hold. (mergesort.vpr@21.11--21.111) [64380]"}
          Seq#Index(Heap[a_2, array], i_16_1) != Seq#Index(Heap[a_2, array], j_8);
      }
      assume false;
    }
    assume (forall i_17_1_1: int, j_9_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_17_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_17_1_1), Seq#Contains(Seq#Range(start, end), j_9_1_1) } { Seq#Contains(Seq#Range(start, end), i_17_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_9_1_1) } { Seq#Contains(Seq#Range(start, end), i_17_1_1), Seq#Contains(Seq#Range(start, end), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_17_1_1), Seq#Index(Heap[a_2, array], j_9_1_1) } { Seq#Contains(Seq#Range(start, end), i_17_1_1), Seq#Index(Heap[a_2, array], j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_9_1_1), Seq#Index(Heap[a_2, array], i_17_1_1) } { Seq#Contains(Seq#Range(start, end), j_9_1_1), Seq#Index(Heap[a_2, array], i_17_1_1) } { Seq#Index(Heap[a_2, array], i_17_1_1), Seq#Index(Heap[a_2, array], j_9_1_1) }
      Seq#Contains(Seq#Range(start, end), i_17_1_1) && (Seq#Contains(Seq#Range(start, end), j_9_1_1) && i_17_1_1 != j_9_1_1) ==> Seq#Index(Heap[a_2, array], i_17_1_1) != Seq#Index(Heap[a_2, array], j_9_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@22.11--22.77) [64381]"}
        (forall i_18_1: int, i_18_2: int ::
        { neverTriggered5(i_18_1), neverTriggered5(i_18_2) }
        (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(start, end), i_18_1)) && Seq#Contains(Seq#Range(start, end), i_18_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_18_1) != Seq#Index(Heap[a_2, array], i_18_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of parallel_mergesort might not hold. There might be insufficient permission to access a.array[i].value (mergesort.vpr@22.11--22.77) [64382]"}
        (forall i_18_1: int ::
        { Seq#Index(Heap[a_2, array], i_18_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_18_1) } { Seq#Contains(Seq#Range(start, end), i_18_1) } { Seq#Index(Heap[a_2, array], i_18_1) }
        Seq#Contains(Seq#Range(start, end), i_18_1) ==> Mask[Seq#Index(Heap[a_2, array], i_18_1), value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a.array[i]
      assume (forall i_18_1: int ::
        { Seq#Index(Heap[a_2, array], i_18_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_18_1) } { Seq#Contains(Seq#Range(start, end), i_18_1) } { Seq#Index(Heap[a_2, array], i_18_1) }
        Seq#Contains(Seq#Range(start, end), i_18_1) && NoPerm < FullPerm ==> qpRange5(Seq#Index(Heap[a_2, array], i_18_1)) && invRecv5(Seq#Index(Heap[a_2, array], i_18_1)) == i_18_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        Seq#Contains(Seq#Range(start, end), invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv5(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(start, end), invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv5(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(start, end), i_19) && (Seq#Contains(Seq#Range(start, end), j_10_2) && i_19 != j_10_2)) {
        assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion b.array[i] != b.array[j] might not hold. (mergesort.vpr@23.11--23.111) [64383]"}
          Seq#Index(Heap[b_24, array], i_19) != Seq#Index(Heap[b_24, array], j_10_2);
      }
      assume false;
    }
    assume (forall i_20_1_1: int, j_11_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_20_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_20_1_1), Seq#Contains(Seq#Range(start, end), j_11_1) } { Seq#Contains(Seq#Range(start, end), i_20_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_11_1) } { Seq#Contains(Seq#Range(start, end), i_20_1_1), Seq#Contains(Seq#Range(start, end), j_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_20_1_1), Seq#Index(Heap[b_24, array], j_11_1) } { Seq#Contains(Seq#Range(start, end), i_20_1_1), Seq#Index(Heap[b_24, array], j_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_11_1), Seq#Index(Heap[b_24, array], i_20_1_1) } { Seq#Contains(Seq#Range(start, end), j_11_1), Seq#Index(Heap[b_24, array], i_20_1_1) } { Seq#Index(Heap[b_24, array], i_20_1_1), Seq#Index(Heap[b_24, array], j_11_1) }
      Seq#Contains(Seq#Range(start, end), i_20_1_1) && (Seq#Contains(Seq#Range(start, end), j_11_1) && i_20_1_1 != j_11_1) ==> Seq#Index(Heap[b_24, array], i_20_1_1) != Seq#Index(Heap[b_24, array], j_11_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver b.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@24.11--24.77) [64384]"}
        (forall i_21: int, i_21_1: int ::
        { neverTriggered6(i_21), neverTriggered6(i_21_1) }
        (((i_21 != i_21_1 && Seq#Contains(Seq#Range(start, end), i_21)) && Seq#Contains(Seq#Range(start, end), i_21_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_21) != Seq#Index(Heap[b_24, array], i_21_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of parallel_mergesort might not hold. There might be insufficient permission to access b.array[i].value (mergesort.vpr@24.11--24.77) [64385]"}
        (forall i_21: int ::
        { Seq#Index(Heap[b_24, array], i_21) } { Seq#ContainsTrigger(Seq#Range(start, end), i_21) } { Seq#Contains(Seq#Range(start, end), i_21) } { Seq#Index(Heap[b_24, array], i_21) }
        Seq#Contains(Seq#Range(start, end), i_21) ==> Mask[Seq#Index(Heap[b_24, array], i_21), value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver b.array[i]
      assume (forall i_21: int ::
        { Seq#Index(Heap[b_24, array], i_21) } { Seq#ContainsTrigger(Seq#Range(start, end), i_21) } { Seq#Contains(Seq#Range(start, end), i_21) } { Seq#Index(Heap[b_24, array], i_21) }
        Seq#Contains(Seq#Range(start, end), i_21) && NoPerm < FullPerm ==> qpRange6(Seq#Index(Heap[b_24, array], i_21)) && invRecv6(Seq#Index(Heap[b_24, array], i_21)) == i_21
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        Seq#Contains(Seq#Range(start, end), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv6(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(start, end), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv6(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion a.array == old(a.array) might not hold. (mergesort.vpr@25.11--25.34) [64386]"}
      Seq#Equal(Heap[a_2, array], oldHeap[a_2, array]);
    assert {:msg "  Postcondition of parallel_mergesort might not hold. Assertion b.array == old(b.array) might not hold. (mergesort.vpr@26.11--26.34) [64387]"}
      Seq#Equal(Heap[b_24, array], oldHeap[b_24, array]);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method merge
// ==================================================

procedure merge(a_2: Ref, b_24: Ref, start: int, middle: int, end: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_29: int;
  var j_16: int;
  var k_23: int;
  var QPMask: MaskType;
  var i_31: int;
  var j_19: int;
  var l_4: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_33: int;
  var j_17: int;
  var i_34: int;
  var i_35: int;
  var j_20: int;
  var i_36: int;
  var I: int;
  var J: int;
  var N: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i_41: int;
  var i_43: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_12_1: int;
  var j_8: int;
  var i_15: int;
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
    Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume b_24 != null;
    Mask := Mask[b_24, array:=Mask[b_24, array] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= start;
    
    // -- Check definedness of end <= |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@79.12--79.102) [64388]"}
        HasDirectPerm(Mask, a_2, array);
    assume end <= Seq#Length(Heap[a_2, array]);
    
    // -- Check definedness of |b.array| == |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@79.12--79.102) [64389]"}
        HasDirectPerm(Mask, b_24, array);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@79.12--79.102) [64390]"}
        HasDirectPerm(Mask, a_2, array);
    assume Seq#Length(Heap[b_24, array]) == Seq#Length(Heap[a_2, array]);
    assume start < middle;
    assume middle < end;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_29) && (Seq#Contains(Seq#Range(start, end), j_16) && i_29 != j_16)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@80.12--80.112) [64391]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@80.12--80.112) [64392]"}
            i_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@80.12--80.112) [64393]"}
            i_29 < Seq#Length(Heap[a_2, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@80.12--80.112) [64394]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (mergesort.vpr@80.12--80.112) [64395]"}
            j_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (mergesort.vpr@80.12--80.112) [64396]"}
            j_16 < Seq#Length(Heap[a_2, array]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#ContainsTrigger(Seq#Range(start, end), j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#Contains(Seq#Range(start, end), j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#ContainsTrigger(Seq#Range(start, end), j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#Contains(Seq#Range(start, end), j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#Index(Heap[a_2, array], j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#Index(Heap[a_2, array], j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_1), Seq#Index(Heap[a_2, array], i_1) } { Seq#Contains(Seq#Range(start, end), j_1), Seq#Index(Heap[a_2, array], i_1) } { Seq#Index(Heap[a_2, array], i_1), Seq#Index(Heap[a_2, array], j_1) }
      Seq#Contains(Seq#Range(start, end), i_1) && (Seq#Contains(Seq#Range(start, end), j_1) && i_1 != j_1) ==> Seq#Index(Heap[a_2, array], i_1) != Seq#Index(Heap[a_2, array], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [start..end)) } { a.array[k] } (k in [start..end)) ==> acc(a.array[k].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), k_23)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@81.12--81.78) [64397]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[k] into a.array might be negative. (mergesort.vpr@81.12--81.78) [64398]"}
            k_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[k] into a.array might exceed sequence length. (mergesort.vpr@81.12--81.78) [64399]"}
            k_23 < Seq#Length(Heap[a_2, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[k].value might not be injective. (mergesort.vpr@81.12--81.78) [64400]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && Seq#Contains(Seq#Range(start, end), k_1_1)) && Seq#Contains(Seq#Range(start, end), k_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], k_1_1) != Seq#Index(Heap[a_2, array], k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(Heap[a_2, array], k_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), k_1_1) } { Seq#Contains(Seq#Range(start, end), k_1_1) } { Seq#Index(Heap[a_2, array], k_1_1) }
        Seq#Contains(Seq#Range(start, end), k_1_1) && NoPerm < FullPerm ==> qpRange19(Seq#Index(Heap[a_2, array], k_1_1)) && invRecv19(Seq#Index(Heap[a_2, array], k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> Seq#Index(Heap[a_2, array], invRecv19(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(Heap[a_2, array], k_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), k_1_1) } { Seq#Contains(Seq#Range(start, end), k_1_1) } { Seq#Index(Heap[a_2, array], k_1_1) }
        Seq#Contains(Seq#Range(start, end), k_1_1) ==> Seq#Index(Heap[a_2, array], k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], invRecv19(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_31) && (Seq#Contains(Seq#Range(start, end), j_19) && i_31 != j_19)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@82.12--82.112) [64401]"}
            HasDirectPerm(Mask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@82.12--82.112) [64402]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@82.12--82.112) [64403]"}
            i_31 < Seq#Length(Heap[b_24, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@82.12--82.112) [64404]"}
            HasDirectPerm(Mask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might be negative. (mergesort.vpr@82.12--82.112) [64405]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might exceed sequence length. (mergesort.vpr@82.12--82.112) [64406]"}
            j_19 < Seq#Length(Heap[b_24, array]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_3), Seq#ContainsTrigger(Seq#Range(start, end), j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3), Seq#Contains(Seq#Range(start, end), j_3_1) } { Seq#Contains(Seq#Range(start, end), i_3), Seq#ContainsTrigger(Seq#Range(start, end), j_3_1) } { Seq#Contains(Seq#Range(start, end), i_3), Seq#Contains(Seq#Range(start, end), j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3), Seq#Index(Heap[b_24, array], j_3_1) } { Seq#Contains(Seq#Range(start, end), i_3), Seq#Index(Heap[b_24, array], j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_3_1), Seq#Index(Heap[b_24, array], i_3) } { Seq#Contains(Seq#Range(start, end), j_3_1), Seq#Index(Heap[b_24, array], i_3) } { Seq#Index(Heap[b_24, array], i_3), Seq#Index(Heap[b_24, array], j_3_1) }
      Seq#Contains(Seq#Range(start, end), i_3) && (Seq#Contains(Seq#Range(start, end), j_3_1) && i_3 != j_3_1) ==> Seq#Index(Heap[b_24, array], i_3) != Seq#Index(Heap[b_24, array], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall l: Int :: { (l in [start..end)) } { b.array[l] } (l in [start..end)) ==> acc(b.array[l].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), l_4)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@83.12--83.78) [64407]"}
            HasDirectPerm(Mask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[l] into b.array might be negative. (mergesort.vpr@83.12--83.78) [64408]"}
            l_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[l] into b.array might exceed sequence length. (mergesort.vpr@83.12--83.78) [64409]"}
            l_4 < Seq#Length(Heap[b_24, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b.array[l].value might not be injective. (mergesort.vpr@83.12--83.78) [64410]"}
      (forall l_1: int, l_1_2: int ::
      
      (((l_1 != l_1_2 && Seq#Contains(Seq#Range(start, end), l_1)) && Seq#Contains(Seq#Range(start, end), l_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], l_1) != Seq#Index(Heap[b_24, array], l_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall l_1: int ::
        { Seq#Index(Heap[b_24, array], l_1) } { Seq#ContainsTrigger(Seq#Range(start, end), l_1) } { Seq#Contains(Seq#Range(start, end), l_1) } { Seq#Index(Heap[b_24, array], l_1) }
        Seq#Contains(Seq#Range(start, end), l_1) && NoPerm < FullPerm ==> qpRange20(Seq#Index(Heap[b_24, array], l_1)) && invRecv20(Seq#Index(Heap[b_24, array], l_1)) == l_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv20(o_4)) && NoPerm < FullPerm) && qpRange20(o_4) ==> Seq#Index(Heap[b_24, array], invRecv20(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall l_1: int ::
        { Seq#Index(Heap[b_24, array], l_1) } { Seq#ContainsTrigger(Seq#Range(start, end), l_1) } { Seq#Contains(Seq#Range(start, end), l_1) } { Seq#Index(Heap[b_24, array], l_1) }
        Seq#Contains(Seq#Range(start, end), l_1) ==> Seq#Index(Heap[b_24, array], l_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv20(o_4)) && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], invRecv20(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv20(o_4)) && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    PostMask := PostMask[a_2, array:=PostMask[a_2, array] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume b_24 != null;
    PostMask := PostMask[b_24, array:=PostMask[b_24, array] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a.array == old(a.array)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@86.11--86.34) [64411]"}
        HasDirectPerm(PostMask, a_2, array);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@86.11--86.34) [64412]"}
        HasDirectPerm(oldMask, a_2, array);
    assume Seq#Equal(PostHeap[a_2, array], oldHeap[a_2, array]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of b.array == old(b.array)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@87.11--87.34) [64413]"}
        HasDirectPerm(PostMask, b_24, array);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@87.11--87.34) [64414]"}
        HasDirectPerm(oldMask, b_24, array);
    assume Seq#Equal(PostHeap[b_24, array], oldHeap[b_24, array]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_33) && (Seq#Contains(Seq#Range(start, end), j_17) && i_33 != j_17)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@88.11--88.111) [64415]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@88.11--88.111) [64416]"}
            i_33 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@88.11--88.111) [64417]"}
            i_33 < Seq#Length(PostHeap[a_2, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@88.11--88.111) [64418]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (mergesort.vpr@88.11--88.111) [64419]"}
            j_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (mergesort.vpr@88.11--88.111) [64420]"}
            j_17 < Seq#Length(PostHeap[a_2, array]);
        }
        assume false;
      }
    assume (forall i_5: int, j_5_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#ContainsTrigger(Seq#Range(start, end), j_5_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#Contains(Seq#Range(start, end), j_5_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#ContainsTrigger(Seq#Range(start, end), j_5_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#Contains(Seq#Range(start, end), j_5_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#Index(PostHeap[a_2, array], j_5_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#Index(PostHeap[a_2, array], j_5_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_5_1), Seq#Index(PostHeap[a_2, array], i_5) } { Seq#Contains(Seq#Range(start, end), j_5_1), Seq#Index(PostHeap[a_2, array], i_5) } { Seq#Index(PostHeap[a_2, array], i_5), Seq#Index(PostHeap[a_2, array], j_5_1) }
      Seq#Contains(Seq#Range(start, end), i_5) && (Seq#Contains(Seq#Range(start, end), j_5_1) && i_5 != j_5_1) ==> Seq#Index(PostHeap[a_2, array], i_5) != Seq#Index(PostHeap[a_2, array], j_5_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_34)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@89.11--89.77) [64421]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@89.11--89.77) [64422]"}
            i_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@89.11--89.77) [64423]"}
            i_34 < Seq#Length(PostHeap[a_2, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@89.11--89.77) [64424]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(start, end), i_7_1)) && Seq#Contains(Seq#Range(start, end), i_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[a_2, array], i_7_1) != Seq#Index(PostHeap[a_2, array], i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[a_2, array], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_7_1) } { Seq#Contains(Seq#Range(start, end), i_7_1) } { Seq#Index(PostHeap[a_2, array], i_7_1) }
        Seq#Contains(Seq#Range(start, end), i_7_1) && NoPerm < FullPerm ==> qpRange21(Seq#Index(PostHeap[a_2, array], i_7_1)) && invRecv21(Seq#Index(PostHeap[a_2, array], i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv21(o_4)) && NoPerm < FullPerm) && qpRange21(o_4) ==> Seq#Index(PostHeap[a_2, array], invRecv21(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[a_2, array], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_7_1) } { Seq#Contains(Seq#Range(start, end), i_7_1) } { Seq#Index(PostHeap[a_2, array], i_7_1) }
        Seq#Contains(Seq#Range(start, end), i_7_1) ==> Seq#Index(PostHeap[a_2, array], i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv21(o_4)) && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[a_2, array], invRecv21(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv21(o_4)) && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_35) && (Seq#Contains(Seq#Range(start, end), j_20) && i_35 != j_20)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@90.11--90.111) [64425]"}
            HasDirectPerm(PostMask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@90.11--90.111) [64426]"}
            i_35 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@90.11--90.111) [64427]"}
            i_35 < Seq#Length(PostHeap[b_24, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@90.11--90.111) [64428]"}
            HasDirectPerm(PostMask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might be negative. (mergesort.vpr@90.11--90.111) [64429]"}
            j_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[j] into b.array might exceed sequence length. (mergesort.vpr@90.11--90.111) [64430]"}
            j_20 < Seq#Length(PostHeap[b_24, array]);
        }
        assume false;
      }
    assume (forall i_9_1: int, j_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1), Seq#ContainsTrigger(Seq#Range(start, end), j_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1), Seq#Contains(Seq#Range(start, end), j_7_1) } { Seq#Contains(Seq#Range(start, end), i_9_1), Seq#ContainsTrigger(Seq#Range(start, end), j_7_1) } { Seq#Contains(Seq#Range(start, end), i_9_1), Seq#Contains(Seq#Range(start, end), j_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1), Seq#Index(PostHeap[b_24, array], j_7_1) } { Seq#Contains(Seq#Range(start, end), i_9_1), Seq#Index(PostHeap[b_24, array], j_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_7_1), Seq#Index(PostHeap[b_24, array], i_9_1) } { Seq#Contains(Seq#Range(start, end), j_7_1), Seq#Index(PostHeap[b_24, array], i_9_1) } { Seq#Index(PostHeap[b_24, array], i_9_1), Seq#Index(PostHeap[b_24, array], j_7_1) }
      Seq#Contains(Seq#Range(start, end), i_9_1) && (Seq#Contains(Seq#Range(start, end), j_7_1) && i_9_1 != j_7_1) ==> Seq#Index(PostHeap[b_24, array], i_9_1) != Seq#Index(PostHeap[b_24, array], j_7_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_36)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@91.11--91.77) [64431]"}
            HasDirectPerm(PostMask, b_24, array);
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@91.11--91.77) [64432]"}
            i_36 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@91.11--91.77) [64433]"}
            i_36 < Seq#Length(PostHeap[b_24, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@91.11--91.77) [64434]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(start, end), i_11_1)) && Seq#Contains(Seq#Range(start, end), i_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[b_24, array], i_11_1) != Seq#Index(PostHeap[b_24, array], i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[b_24, array], i_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_11_1) } { Seq#Contains(Seq#Range(start, end), i_11_1) } { Seq#Index(PostHeap[b_24, array], i_11_1) }
        Seq#Contains(Seq#Range(start, end), i_11_1) && NoPerm < FullPerm ==> qpRange22(Seq#Index(PostHeap[b_24, array], i_11_1)) && invRecv22(Seq#Index(PostHeap[b_24, array], i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv22(o_4)) && NoPerm < FullPerm) && qpRange22(o_4) ==> Seq#Index(PostHeap[b_24, array], invRecv22(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(PostHeap[b_24, array], i_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_11_1) } { Seq#Contains(Seq#Range(start, end), i_11_1) } { Seq#Index(PostHeap[b_24, array], i_11_1) }
        Seq#Contains(Seq#Range(start, end), i_11_1) ==> Seq#Index(PostHeap[b_24, array], i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv22(o_4)) && NoPerm < FullPerm) && qpRange22(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[b_24, array], invRecv22(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv22(o_4)) && NoPerm < FullPerm) && qpRange22(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: I := start -- mergesort.vpr@93.5--93.23
    I := start;
    assume state(Heap, Mask);
  
  // -- Translating statement: J := middle -- mergesort.vpr@94.5--94.24
    J := middle;
    assume state(Heap, Mask);
  
  // -- Translating statement: N := start -- mergesort.vpr@95.5--95.23
    N := start;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (N < end) -- mergesort.vpr@97.5--121.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant acc(a.array, wildcard) might not hold on entry. There might be insufficient permission to access a.array (mergesort.vpr@98.17--98.39) [64435]"}
          Mask[a_2, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array];
        Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
        assert {:msg "  Loop invariant acc(b.array, wildcard) might not hold on entry. There might be insufficient permission to access b.array (mergesort.vpr@99.17--99.39) [64436]"}
          Mask[b_24, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[b_24, array];
        Mask := Mask[b_24, array:=Mask[b_24, array] - wildcard];
        assert {:msg "  Loop invariant 0 <= start && end <= |a.array| might not hold on entry. Assertion 0 <= start might not hold. (mergesort.vpr@100.17--100.47) [64437]"}
          0 <= start;
        assert {:msg "  Loop invariant 0 <= start && end <= |a.array| might not hold on entry. Assertion end <= |a.array| might not hold. (mergesort.vpr@100.17--100.47) [64438]"}
          end <= Seq#Length(Heap[a_2, array]);
        assert {:msg "  Loop invariant N == I + J - middle && 0 <= start might not hold on entry. Assertion N == I + J - middle might not hold. (mergesort.vpr@101.17--101.46) [64439]"}
          N == I + J - middle;
        assert {:msg "  Loop invariant N == I + J - middle && 0 <= start might not hold on entry. Assertion 0 <= start might not hold. (mergesort.vpr@101.17--101.46) [64440]"}
          0 <= start;
        assert {:msg "  Loop invariant start <= I might not hold on entry. Assertion start <= I might not hold. (mergesort.vpr@102.17--102.27) [64441]"}
          start <= I;
        assert {:msg "  Loop invariant middle <= J might not hold on entry. Assertion middle <= J might not hold. (mergesort.vpr@103.17--103.28) [64442]"}
          middle <= J;
        assert {:msg "  Loop invariant J <= end might not hold on entry. Assertion J <= end might not hold. (mergesort.vpr@104.17--104.25) [64443]"}
          J <= end;
        assert {:msg "  Loop invariant |a.array| == |b.array| might not hold on entry. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@105.17--105.39) [64444]"}
          Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
        assert {:msg "  Loop invariant a.array == old(a.array) might not hold on entry. Assertion a.array == old(a.array) might not hold. (mergesort.vpr@106.17--106.40) [64445]"}
          Seq#Equal(Heap[a_2, array], oldHeap[a_2, array]);
        assert {:msg "  Loop invariant b.array == old(b.array) might not hold on entry. Assertion b.array == old(b.array) might not hold. (mergesort.vpr@107.14--107.37) [64446]"}
          Seq#Equal(Heap[b_24, array], oldHeap[b_24, array]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a.array[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write)) might not hold on entry. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [64447]"}
            (forall i_18_1: int, i_18_2: int ::
            { neverTriggered25(i_18_1), neverTriggered25(i_18_2) }
            (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(start, end), i_18_1)) && Seq#Contains(Seq#Range(start, end), i_18_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_18_1) != Seq#Index(Heap[a_2, array], i_18_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write)) might not hold on entry. There might be insufficient permission to access a.array[i].value (mergesort.vpr@108.17--108.83) [64448]"}
            (forall i_18_1: int ::
            { Seq#Index(Heap[a_2, array], i_18_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_18_1) } { Seq#Contains(Seq#Range(start, end), i_18_1) } { Seq#Index(Heap[a_2, array], i_18_1) }
            Seq#Contains(Seq#Range(start, end), i_18_1) ==> Mask[Seq#Index(Heap[a_2, array], i_18_1), value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a.array[i]
          assume (forall i_18_1: int ::
            { Seq#Index(Heap[a_2, array], i_18_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_18_1) } { Seq#Contains(Seq#Range(start, end), i_18_1) } { Seq#Index(Heap[a_2, array], i_18_1) }
            Seq#Contains(Seq#Range(start, end), i_18_1) && NoPerm < FullPerm ==> qpRange25(Seq#Index(Heap[a_2, array], i_18_1)) && invRecv25(Seq#Index(Heap[a_2, array], i_18_1)) == i_18_1
          );
          assume (forall o_4: Ref ::
            { invRecv25(o_4) }
            Seq#Contains(Seq#Range(start, end), invRecv25(o_4)) && (NoPerm < FullPerm && qpRange25(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv25(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(start, end), invRecv25(o_4)) && (NoPerm < FullPerm && qpRange25(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv25(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv25(o_4)) && (NoPerm < FullPerm && qpRange25(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b.array[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write)) might not hold on entry. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [64449]"}
            (forall i_19: int, i_19_1: int ::
            { neverTriggered26(i_19), neverTriggered26(i_19_1) }
            (((i_19 != i_19_1 && Seq#Contains(Seq#Range(start, end), i_19)) && Seq#Contains(Seq#Range(start, end), i_19_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_19) != Seq#Index(Heap[b_24, array], i_19_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write)) might not hold on entry. There might be insufficient permission to access b.array[i].value (mergesort.vpr@109.14--109.80) [64450]"}
            (forall i_19: int ::
            { Seq#Index(Heap[b_24, array], i_19) } { Seq#ContainsTrigger(Seq#Range(start, end), i_19) } { Seq#Contains(Seq#Range(start, end), i_19) } { Seq#Index(Heap[b_24, array], i_19) }
            Seq#Contains(Seq#Range(start, end), i_19) ==> Mask[Seq#Index(Heap[b_24, array], i_19), value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b.array[i]
          assume (forall i_19: int ::
            { Seq#Index(Heap[b_24, array], i_19) } { Seq#ContainsTrigger(Seq#Range(start, end), i_19) } { Seq#Contains(Seq#Range(start, end), i_19) } { Seq#Index(Heap[b_24, array], i_19) }
            Seq#Contains(Seq#Range(start, end), i_19) && NoPerm < FullPerm ==> qpRange26(Seq#Index(Heap[b_24, array], i_19)) && invRecv26(Seq#Index(Heap[b_24, array], i_19)) == i_19
          );
          assume (forall o_4: Ref ::
            { invRecv26(o_4) }
            Seq#Contains(Seq#Range(start, end), invRecv26(o_4)) && (NoPerm < FullPerm && qpRange26(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv26(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(start, end), invRecv26(o_4)) && (NoPerm < FullPerm && qpRange26(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv26(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv26(o_4)) && (NoPerm < FullPerm && qpRange26(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc N, J, I;
    
    // -- Check definedness of invariant
      if (*) {
        havoc wildcard;
        perm := wildcard;
        assume a_2 != null;
        Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume b_24 != null;
        Mask := Mask[b_24, array:=Mask[b_24, array] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume 0 <= start;
        
        // -- Check definedness of end <= |a.array|
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@100.17--100.47) [64451]"}
            HasDirectPerm(Mask, a_2, array);
        assume end <= Seq#Length(Heap[a_2, array]);
        assume state(Heap, Mask);
        assume N == I + J - middle;
        assume 0 <= start;
        assume state(Heap, Mask);
        assume start <= I;
        assume state(Heap, Mask);
        assume middle <= J;
        assume state(Heap, Mask);
        assume J <= end;
        assume state(Heap, Mask);
        
        // -- Check definedness of |a.array| == |b.array|
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@105.17--105.39) [64452]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@105.17--105.39) [64453]"}
            HasDirectPerm(Mask, b_24, array);
        assume Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
        assume state(Heap, Mask);
        
        // -- Check definedness of a.array == old(a.array)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@106.17--106.40) [64454]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@106.17--106.40) [64455]"}
            HasDirectPerm(oldMask, a_2, array);
        assume Seq#Equal(Heap[a_2, array], oldHeap[a_2, array]);
        assume state(Heap, Mask);
        
        // -- Check definedness of b.array == old(b.array)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@107.14--107.37) [64456]"}
            HasDirectPerm(Mask, b_24, array);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@107.14--107.37) [64457]"}
            HasDirectPerm(oldMask, b_24, array);
        assume Seq#Equal(Heap[b_24, array], oldHeap[b_24, array]);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start, end), i_41)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (mergesort.vpr@108.17--108.83) [64458]"}
                HasDirectPerm(Mask, a_2, array);
              assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (mergesort.vpr@108.17--108.83) [64459]"}
                i_41 >= 0;
              assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (mergesort.vpr@108.17--108.83) [64460]"}
                i_41 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [64461]"}
          (forall i_21: int, i_21_1: int ::
          
          (((i_21 != i_21_1 && Seq#Contains(Seq#Range(start, end), i_21)) && Seq#Contains(Seq#Range(start, end), i_21_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_21) != Seq#Index(Heap[a_2, array], i_21_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_21: int ::
            { Seq#Index(Heap[a_2, array], i_21) } { Seq#ContainsTrigger(Seq#Range(start, end), i_21) } { Seq#Contains(Seq#Range(start, end), i_21) } { Seq#Index(Heap[a_2, array], i_21) }
            Seq#Contains(Seq#Range(start, end), i_21) && NoPerm < FullPerm ==> qpRange27(Seq#Index(Heap[a_2, array], i_21)) && invRecv27(Seq#Index(Heap[a_2, array], i_21)) == i_21
          );
          assume (forall o_4: Ref ::
            { invRecv27(o_4) }
            (Seq#Contains(Seq#Range(start, end), invRecv27(o_4)) && NoPerm < FullPerm) && qpRange27(o_4) ==> Seq#Index(Heap[a_2, array], invRecv27(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_21: int ::
            { Seq#Index(Heap[a_2, array], i_21) } { Seq#ContainsTrigger(Seq#Range(start, end), i_21) } { Seq#Contains(Seq#Range(start, end), i_21) } { Seq#Index(Heap[a_2, array], i_21) }
            Seq#Contains(Seq#Range(start, end), i_21) ==> Seq#Index(Heap[a_2, array], i_21) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(start, end), invRecv27(o_4)) && NoPerm < FullPerm) && qpRange27(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], invRecv27(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv27(o_4)) && NoPerm < FullPerm) && qpRange27(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(start, end), i_43)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.array (mergesort.vpr@109.14--109.80) [64462]"}
                HasDirectPerm(Mask, b_24, array);
              assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might be negative. (mergesort.vpr@109.14--109.80) [64463]"}
                i_43 >= 0;
              assert {:msg "  Contract might not be well-formed. Index b.array[i] into b.array might exceed sequence length. (mergesort.vpr@109.14--109.80) [64464]"}
                i_43 < Seq#Length(Heap[b_24, array]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [64465]"}
          (forall i_23: int, i_23_1: int ::
          
          (((i_23 != i_23_1 && Seq#Contains(Seq#Range(start, end), i_23)) && Seq#Contains(Seq#Range(start, end), i_23_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_23) != Seq#Index(Heap[b_24, array], i_23_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_23: int ::
            { Seq#Index(Heap[b_24, array], i_23) } { Seq#ContainsTrigger(Seq#Range(start, end), i_23) } { Seq#Contains(Seq#Range(start, end), i_23) } { Seq#Index(Heap[b_24, array], i_23) }
            Seq#Contains(Seq#Range(start, end), i_23) && NoPerm < FullPerm ==> qpRange28(Seq#Index(Heap[b_24, array], i_23)) && invRecv28(Seq#Index(Heap[b_24, array], i_23)) == i_23
          );
          assume (forall o_4: Ref ::
            { invRecv28(o_4) }
            (Seq#Contains(Seq#Range(start, end), invRecv28(o_4)) && NoPerm < FullPerm) && qpRange28(o_4) ==> Seq#Index(Heap[b_24, array], invRecv28(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_23: int ::
            { Seq#Index(Heap[b_24, array], i_23) } { Seq#ContainsTrigger(Seq#Range(start, end), i_23) } { Seq#Contains(Seq#Range(start, end), i_23) } { Seq#Index(Heap[b_24, array], i_23) }
            Seq#Contains(Seq#Range(start, end), i_23) ==> Seq#Index(Heap[b_24, array], i_23) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(start, end), invRecv28(o_4)) && NoPerm < FullPerm) && qpRange28(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], invRecv28(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv28(o_4)) && NoPerm < FullPerm) && qpRange28(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
        Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume b_24 != null;
        Mask := Mask[b_24, array:=Mask[b_24, array] + perm];
        assume state(Heap, Mask);
        assume 0 <= start;
        assume end <= Seq#Length(Heap[a_2, array]);
        assume N == I + J - middle;
        assume 0 <= start;
        assume start <= I;
        assume middle <= J;
        assume J <= end;
        assume Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
        assume Seq#Equal(Heap[a_2, array], oldHeap[a_2, array]);
        assume Seq#Equal(Heap[b_24, array], oldHeap[b_24, array]);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [64466]"}
          (forall i_24_1: int, i_24_2: int ::
          
          (((i_24_1 != i_24_2 && Seq#Contains(Seq#Range(start, end), i_24_1)) && Seq#Contains(Seq#Range(start, end), i_24_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_24_1) != Seq#Index(Heap[a_2, array], i_24_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_24_1: int ::
            { Seq#Index(Heap[a_2, array], i_24_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_24_1) } { Seq#Contains(Seq#Range(start, end), i_24_1) } { Seq#Index(Heap[a_2, array], i_24_1) }
            Seq#Contains(Seq#Range(start, end), i_24_1) && NoPerm < FullPerm ==> qpRange29(Seq#Index(Heap[a_2, array], i_24_1)) && invRecv29(Seq#Index(Heap[a_2, array], i_24_1)) == i_24_1
          );
          assume (forall o_4: Ref ::
            { invRecv29(o_4) }
            (Seq#Contains(Seq#Range(start, end), invRecv29(o_4)) && NoPerm < FullPerm) && qpRange29(o_4) ==> Seq#Index(Heap[a_2, array], invRecv29(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_24_1: int ::
            { Seq#Index(Heap[a_2, array], i_24_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_24_1) } { Seq#Contains(Seq#Range(start, end), i_24_1) } { Seq#Index(Heap[a_2, array], i_24_1) }
            Seq#Contains(Seq#Range(start, end), i_24_1) ==> Seq#Index(Heap[a_2, array], i_24_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(start, end), invRecv29(o_4)) && NoPerm < FullPerm) && qpRange29(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], invRecv29(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv29(o_4)) && NoPerm < FullPerm) && qpRange29(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [64467]"}
          (forall i_25: int, i_25_2: int ::
          
          (((i_25 != i_25_2 && Seq#Contains(Seq#Range(start, end), i_25)) && Seq#Contains(Seq#Range(start, end), i_25_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_25) != Seq#Index(Heap[b_24, array], i_25_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_25: int ::
            { Seq#Index(Heap[b_24, array], i_25) } { Seq#ContainsTrigger(Seq#Range(start, end), i_25) } { Seq#Contains(Seq#Range(start, end), i_25) } { Seq#Index(Heap[b_24, array], i_25) }
            Seq#Contains(Seq#Range(start, end), i_25) && NoPerm < FullPerm ==> qpRange30(Seq#Index(Heap[b_24, array], i_25)) && invRecv30(Seq#Index(Heap[b_24, array], i_25)) == i_25
          );
          assume (forall o_4: Ref ::
            { invRecv30(o_4) }
            (Seq#Contains(Seq#Range(start, end), invRecv30(o_4)) && NoPerm < FullPerm) && qpRange30(o_4) ==> Seq#Index(Heap[b_24, array], invRecv30(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_25: int ::
            { Seq#Index(Heap[b_24, array], i_25) } { Seq#ContainsTrigger(Seq#Range(start, end), i_25) } { Seq#Contains(Seq#Range(start, end), i_25) } { Seq#Index(Heap[b_24, array], i_25) }
            Seq#Contains(Seq#Range(start, end), i_25) ==> Seq#Index(Heap[b_24, array], i_25) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(start, end), invRecv30(o_4)) && NoPerm < FullPerm) && qpRange30(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], invRecv30(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv30(o_4)) && NoPerm < FullPerm) && qpRange30(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume N < end;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: if (J == end || a.array[I].value < a.array[J].value) -- mergesort.vpr@111.9--119.10
            
            // -- Check definedness of J == end || a.array[I].value < a.array[J].value
              if (!(J == end)) {
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access a.array (mergesort.vpr@111.12--111.63) [64468]"}
                  HasDirectPerm(Mask, a_2, array);
                assert {:msg "  Conditional statement might fail. Index a.array[I] into a.array might be negative. (mergesort.vpr@111.12--111.63) [64469]"}
                  I >= 0;
                assert {:msg "  Conditional statement might fail. Index a.array[I] into a.array might exceed sequence length. (mergesort.vpr@111.12--111.63) [64470]"}
                  I < Seq#Length(Heap[a_2, array]);
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access a.array[I].value (mergesort.vpr@111.12--111.63) [64471]"}
                  HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], I), value);
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access a.array (mergesort.vpr@111.12--111.63) [64472]"}
                  HasDirectPerm(Mask, a_2, array);
                assert {:msg "  Conditional statement might fail. Index a.array[J] into a.array might be negative. (mergesort.vpr@111.12--111.63) [64473]"}
                  J >= 0;
                assert {:msg "  Conditional statement might fail. Index a.array[J] into a.array might exceed sequence length. (mergesort.vpr@111.12--111.63) [64474]"}
                  J < Seq#Length(Heap[a_2, array]);
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access a.array[J].value (mergesort.vpr@111.12--111.63) [64475]"}
                  HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], J), value);
              }
            if (J == end || Heap[Seq#Index(Heap[a_2, array], I), value] < Heap[Seq#Index(Heap[a_2, array], J), value]) {
              
              // -- Translating statement: b.array[N].value := a.array[I].value -- mergesort.vpr@113.13--113.53
                
                // -- Check definedness of b.array[N]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array (mergesort.vpr@113.13--113.53) [64476]"}
                    HasDirectPerm(Mask, b_24, array);
                  assert {:msg "  Assignment might fail. Index b.array[N] into b.array might be negative. (mergesort.vpr@113.13--113.53) [64477]"}
                    N >= 0;
                  assert {:msg "  Assignment might fail. Index b.array[N] into b.array might exceed sequence length. (mergesort.vpr@113.13--113.53) [64478]"}
                    N < Seq#Length(Heap[b_24, array]);
                
                // -- Check definedness of a.array[I].value
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (mergesort.vpr@113.13--113.53) [64479]"}
                    HasDirectPerm(Mask, a_2, array);
                  assert {:msg "  Assignment might fail. Index a.array[I] into a.array might be negative. (mergesort.vpr@113.13--113.53) [64480]"}
                    I >= 0;
                  assert {:msg "  Assignment might fail. Index a.array[I] into a.array might exceed sequence length. (mergesort.vpr@113.13--113.53) [64481]"}
                    I < Seq#Length(Heap[a_2, array]);
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array[I].value (mergesort.vpr@113.13--113.53) [64482]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], I), value);
                assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array[N].value (mergesort.vpr@113.13--113.53) [64483]"}
                  FullPerm == Mask[Seq#Index(Heap[b_24, array], N), value];
                Heap := Heap[Seq#Index(Heap[b_24, array], N), value:=Heap[Seq#Index(Heap[a_2, array], I), value]];
                assume state(Heap, Mask);
              
              // -- Translating statement: I := I + 1 -- mergesort.vpr@114.13--114.19
                I := I + 1;
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: b.array[N].value := a.array[J].value -- mergesort.vpr@117.13--117.53
                
                // -- Check definedness of b.array[N]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array (mergesort.vpr@117.13--117.53) [64484]"}
                    HasDirectPerm(Mask, b_24, array);
                  assert {:msg "  Assignment might fail. Index b.array[N] into b.array might be negative. (mergesort.vpr@117.13--117.53) [64485]"}
                    N >= 0;
                  assert {:msg "  Assignment might fail. Index b.array[N] into b.array might exceed sequence length. (mergesort.vpr@117.13--117.53) [64486]"}
                    N < Seq#Length(Heap[b_24, array]);
                
                // -- Check definedness of a.array[J].value
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (mergesort.vpr@117.13--117.53) [64487]"}
                    HasDirectPerm(Mask, a_2, array);
                  assert {:msg "  Assignment might fail. Index a.array[J] into a.array might be negative. (mergesort.vpr@117.13--117.53) [64488]"}
                    J >= 0;
                  assert {:msg "  Assignment might fail. Index a.array[J] into a.array might exceed sequence length. (mergesort.vpr@117.13--117.53) [64489]"}
                    J < Seq#Length(Heap[a_2, array]);
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array[J].value (mergesort.vpr@117.13--117.53) [64490]"}
                    HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], J), value);
                assert {:msg "  Assignment might fail. There might be insufficient permission to access b.array[N].value (mergesort.vpr@117.13--117.53) [64491]"}
                  FullPerm == Mask[Seq#Index(Heap[b_24, array], N), value];
                Heap := Heap[Seq#Index(Heap[b_24, array], N), value:=Heap[Seq#Index(Heap[a_2, array], J), value]];
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
        assert {:msg "  Loop invariant acc(a.array, wildcard) might not be preserved. There might be insufficient permission to access a.array (mergesort.vpr@98.17--98.39) [64492]"}
          Mask[a_2, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array];
        Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
        assert {:msg "  Loop invariant acc(b.array, wildcard) might not be preserved. There might be insufficient permission to access b.array (mergesort.vpr@99.17--99.39) [64493]"}
          Mask[b_24, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[b_24, array];
        Mask := Mask[b_24, array:=Mask[b_24, array] - wildcard];
        assert {:msg "  Loop invariant 0 <= start && end <= |a.array| might not be preserved. Assertion 0 <= start might not hold. (mergesort.vpr@100.17--100.47) [64494]"}
          0 <= start;
        assert {:msg "  Loop invariant 0 <= start && end <= |a.array| might not be preserved. Assertion end <= |a.array| might not hold. (mergesort.vpr@100.17--100.47) [64495]"}
          end <= Seq#Length(Heap[a_2, array]);
        assert {:msg "  Loop invariant N == I + J - middle && 0 <= start might not be preserved. Assertion N == I + J - middle might not hold. (mergesort.vpr@101.17--101.46) [64496]"}
          N == I + J - middle;
        assert {:msg "  Loop invariant N == I + J - middle && 0 <= start might not be preserved. Assertion 0 <= start might not hold. (mergesort.vpr@101.17--101.46) [64497]"}
          0 <= start;
        assert {:msg "  Loop invariant start <= I might not be preserved. Assertion start <= I might not hold. (mergesort.vpr@102.17--102.27) [64498]"}
          start <= I;
        assert {:msg "  Loop invariant middle <= J might not be preserved. Assertion middle <= J might not hold. (mergesort.vpr@103.17--103.28) [64499]"}
          middle <= J;
        assert {:msg "  Loop invariant J <= end might not be preserved. Assertion J <= end might not hold. (mergesort.vpr@104.17--104.25) [64500]"}
          J <= end;
        assert {:msg "  Loop invariant |a.array| == |b.array| might not be preserved. Assertion |a.array| == |b.array| might not hold. (mergesort.vpr@105.17--105.39) [64501]"}
          Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
        assert {:msg "  Loop invariant a.array == old(a.array) might not be preserved. Assertion a.array == old(a.array) might not hold. (mergesort.vpr@106.17--106.40) [64502]"}
          Seq#Equal(Heap[a_2, array], oldHeap[a_2, array]);
        assert {:msg "  Loop invariant b.array == old(b.array) might not be preserved. Assertion b.array == old(b.array) might not hold. (mergesort.vpr@107.14--107.37) [64503]"}
          Seq#Equal(Heap[b_24, array], oldHeap[b_24, array]);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a.array[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write)) might not be preserved. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [64504]"}
            (forall i_26: int, i_26_1: int ::
            { neverTriggered31(i_26), neverTriggered31(i_26_1) }
            (((i_26 != i_26_1 && Seq#Contains(Seq#Range(start, end), i_26)) && Seq#Contains(Seq#Range(start, end), i_26_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_26) != Seq#Index(Heap[a_2, array], i_26_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, write)) might not be preserved. There might be insufficient permission to access a.array[i].value (mergesort.vpr@108.17--108.83) [64505]"}
            (forall i_26: int ::
            { Seq#Index(Heap[a_2, array], i_26) } { Seq#ContainsTrigger(Seq#Range(start, end), i_26) } { Seq#Contains(Seq#Range(start, end), i_26) } { Seq#Index(Heap[a_2, array], i_26) }
            Seq#Contains(Seq#Range(start, end), i_26) ==> Mask[Seq#Index(Heap[a_2, array], i_26), value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a.array[i]
          assume (forall i_26: int ::
            { Seq#Index(Heap[a_2, array], i_26) } { Seq#ContainsTrigger(Seq#Range(start, end), i_26) } { Seq#Contains(Seq#Range(start, end), i_26) } { Seq#Index(Heap[a_2, array], i_26) }
            Seq#Contains(Seq#Range(start, end), i_26) && NoPerm < FullPerm ==> qpRange31(Seq#Index(Heap[a_2, array], i_26)) && invRecv31(Seq#Index(Heap[a_2, array], i_26)) == i_26
          );
          assume (forall o_4: Ref ::
            { invRecv31(o_4) }
            Seq#Contains(Seq#Range(start, end), invRecv31(o_4)) && (NoPerm < FullPerm && qpRange31(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv31(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(start, end), invRecv31(o_4)) && (NoPerm < FullPerm && qpRange31(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv31(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv31(o_4)) && (NoPerm < FullPerm && qpRange31(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b.array[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write)) might not be preserved. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [64506]"}
            (forall i_27: int, i_27_1: int ::
            { neverTriggered32(i_27), neverTriggered32(i_27_1) }
            (((i_27 != i_27_1 && Seq#Contains(Seq#Range(start, end), i_27)) && Seq#Contains(Seq#Range(start, end), i_27_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_27) != Seq#Index(Heap[b_24, array], i_27_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [start..end)) } { b.array[i] } (i in [start..end)) ==> acc(b.array[i].value, write)) might not be preserved. There might be insufficient permission to access b.array[i].value (mergesort.vpr@109.14--109.80) [64507]"}
            (forall i_27: int ::
            { Seq#Index(Heap[b_24, array], i_27) } { Seq#ContainsTrigger(Seq#Range(start, end), i_27) } { Seq#Contains(Seq#Range(start, end), i_27) } { Seq#Index(Heap[b_24, array], i_27) }
            Seq#Contains(Seq#Range(start, end), i_27) ==> Mask[Seq#Index(Heap[b_24, array], i_27), value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b.array[i]
          assume (forall i_27: int ::
            { Seq#Index(Heap[b_24, array], i_27) } { Seq#ContainsTrigger(Seq#Range(start, end), i_27) } { Seq#Contains(Seq#Range(start, end), i_27) } { Seq#Index(Heap[b_24, array], i_27) }
            Seq#Contains(Seq#Range(start, end), i_27) && NoPerm < FullPerm ==> qpRange32(Seq#Index(Heap[b_24, array], i_27)) && invRecv32(Seq#Index(Heap[b_24, array], i_27)) == i_27
          );
          assume (forall o_4: Ref ::
            { invRecv32(o_4) }
            Seq#Contains(Seq#Range(start, end), invRecv32(o_4)) && (NoPerm < FullPerm && qpRange32(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv32(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(start, end), invRecv32(o_4)) && (NoPerm < FullPerm && qpRange32(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv32(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv32(o_4)) && (NoPerm < FullPerm && qpRange32(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
      assume !(N < end);
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume a_2 != null;
      Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume b_24 != null;
      Mask := Mask[b_24, array:=Mask[b_24, array] + perm];
      assume state(Heap, Mask);
      assume 0 <= start;
      assume end <= Seq#Length(Heap[a_2, array]);
      assume N == I + J - middle;
      assume 0 <= start;
      assume start <= I;
      assume middle <= J;
      assume J <= end;
      assume Seq#Length(Heap[a_2, array]) == Seq#Length(Heap[b_24, array]);
      assume Seq#Equal(Heap[a_2, array], oldHeap[a_2, array]);
      assume Seq#Equal(Heap[b_24, array], oldHeap[b_24, array]);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@108.17--108.83) [64508]"}
        (forall i_28: int, i_28_1: int ::
        
        (((i_28 != i_28_1 && Seq#Contains(Seq#Range(start, end), i_28)) && Seq#Contains(Seq#Range(start, end), i_28_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_28) != Seq#Index(Heap[a_2, array], i_28_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_28: int ::
          { Seq#Index(Heap[a_2, array], i_28) } { Seq#ContainsTrigger(Seq#Range(start, end), i_28) } { Seq#Contains(Seq#Range(start, end), i_28) } { Seq#Index(Heap[a_2, array], i_28) }
          Seq#Contains(Seq#Range(start, end), i_28) && NoPerm < FullPerm ==> qpRange33(Seq#Index(Heap[a_2, array], i_28)) && invRecv33(Seq#Index(Heap[a_2, array], i_28)) == i_28
        );
        assume (forall o_4: Ref ::
          { invRecv33(o_4) }
          (Seq#Contains(Seq#Range(start, end), invRecv33(o_4)) && NoPerm < FullPerm) && qpRange33(o_4) ==> Seq#Index(Heap[a_2, array], invRecv33(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_28: int ::
          { Seq#Index(Heap[a_2, array], i_28) } { Seq#ContainsTrigger(Seq#Range(start, end), i_28) } { Seq#Contains(Seq#Range(start, end), i_28) } { Seq#Index(Heap[a_2, array], i_28) }
          Seq#Contains(Seq#Range(start, end), i_28) ==> Seq#Index(Heap[a_2, array], i_28) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, value] }
          ((Seq#Contains(Seq#Range(start, end), invRecv33(o_4)) && NoPerm < FullPerm) && qpRange33(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], invRecv33(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv33(o_4)) && NoPerm < FullPerm) && qpRange33(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@109.14--109.80) [64509]"}
        (forall i_29_1: int, i_29_2: int ::
        
        (((i_29_1 != i_29_2 && Seq#Contains(Seq#Range(start, end), i_29_1)) && Seq#Contains(Seq#Range(start, end), i_29_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_29_1) != Seq#Index(Heap[b_24, array], i_29_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_29_1: int ::
          { Seq#Index(Heap[b_24, array], i_29_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_29_1) } { Seq#Contains(Seq#Range(start, end), i_29_1) } { Seq#Index(Heap[b_24, array], i_29_1) }
          Seq#Contains(Seq#Range(start, end), i_29_1) && NoPerm < FullPerm ==> qpRange34(Seq#Index(Heap[b_24, array], i_29_1)) && invRecv34(Seq#Index(Heap[b_24, array], i_29_1)) == i_29_1
        );
        assume (forall o_4: Ref ::
          { invRecv34(o_4) }
          (Seq#Contains(Seq#Range(start, end), invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> Seq#Index(Heap[b_24, array], invRecv34(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_29_1: int ::
          { Seq#Index(Heap[b_24, array], i_29_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_29_1) } { Seq#Contains(Seq#Range(start, end), i_29_1) } { Seq#Index(Heap[b_24, array], i_29_1) }
          Seq#Contains(Seq#Range(start, end), i_29_1) ==> Seq#Index(Heap[b_24, array], i_29_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, value] }
          ((Seq#Contains(Seq#Range(start, end), invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], invRecv34(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + FullPerm) && (!((Seq#Contains(Seq#Range(start, end), invRecv34(o_4)) && NoPerm < FullPerm) && qpRange34(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of merge might not hold. There might be insufficient permission to access a.array (mergesort.vpr@84.11--84.33) [64510]"}
      Mask[a_2, array] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[a_2, array];
    Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
    assert {:msg "  Postcondition of merge might not hold. There might be insufficient permission to access b.array (mergesort.vpr@85.11--85.33) [64511]"}
      Mask[b_24, array] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[b_24, array];
    Mask := Mask[b_24, array:=Mask[b_24, array] - wildcard];
    assert {:msg "  Postcondition of merge might not hold. Assertion a.array == old(a.array) might not hold. (mergesort.vpr@86.11--86.34) [64512]"}
      Seq#Equal(Heap[a_2, array], oldHeap[a_2, array]);
    assert {:msg "  Postcondition of merge might not hold. Assertion b.array == old(b.array) might not hold. (mergesort.vpr@87.11--87.34) [64513]"}
      Seq#Equal(Heap[b_24, array], oldHeap[b_24, array]);
    if (*) {
      if (Seq#Contains(Seq#Range(start, end), i_12_1) && (Seq#Contains(Seq#Range(start, end), j_8) && i_12_1 != j_8)) {
        assert {:msg "  Postcondition of merge might not hold. Assertion a.array[i] != a.array[j] might not hold. (mergesort.vpr@88.11--88.111) [64514]"}
          Seq#Index(Heap[a_2, array], i_12_1) != Seq#Index(Heap[a_2, array], j_8);
      }
      assume false;
    }
    assume (forall i_13_1_1: int, j_9_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_13_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_13_1_1), Seq#Contains(Seq#Range(start, end), j_9_1_1) } { Seq#Contains(Seq#Range(start, end), i_13_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_9_1_1) } { Seq#Contains(Seq#Range(start, end), i_13_1_1), Seq#Contains(Seq#Range(start, end), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_13_1_1), Seq#Index(Heap[a_2, array], j_9_1_1) } { Seq#Contains(Seq#Range(start, end), i_13_1_1), Seq#Index(Heap[a_2, array], j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_9_1_1), Seq#Index(Heap[a_2, array], i_13_1_1) } { Seq#Contains(Seq#Range(start, end), j_9_1_1), Seq#Index(Heap[a_2, array], i_13_1_1) } { Seq#Index(Heap[a_2, array], i_13_1_1), Seq#Index(Heap[a_2, array], j_9_1_1) }
      Seq#Contains(Seq#Range(start, end), i_13_1_1) && (Seq#Contains(Seq#Range(start, end), j_9_1_1) && i_13_1_1 != j_9_1_1) ==> Seq#Index(Heap[a_2, array], i_13_1_1) != Seq#Index(Heap[a_2, array], j_9_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (mergesort.vpr@89.11--89.77) [64515]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered23(i_14_1), neverTriggered23(i_14_2) }
        (((i_14_1 != i_14_2 && Seq#Contains(Seq#Range(start, end), i_14_1)) && Seq#Contains(Seq#Range(start, end), i_14_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[a_2, array], i_14_1) != Seq#Index(Heap[a_2, array], i_14_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of merge might not hold. There might be insufficient permission to access a.array[i].value (mergesort.vpr@89.11--89.77) [64516]"}
        (forall i_14_1: int ::
        { Seq#Index(Heap[a_2, array], i_14_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_14_1) } { Seq#Contains(Seq#Range(start, end), i_14_1) } { Seq#Index(Heap[a_2, array], i_14_1) }
        Seq#Contains(Seq#Range(start, end), i_14_1) ==> Mask[Seq#Index(Heap[a_2, array], i_14_1), value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a.array[i]
      assume (forall i_14_1: int ::
        { Seq#Index(Heap[a_2, array], i_14_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_14_1) } { Seq#Contains(Seq#Range(start, end), i_14_1) } { Seq#Index(Heap[a_2, array], i_14_1) }
        Seq#Contains(Seq#Range(start, end), i_14_1) && NoPerm < FullPerm ==> qpRange23(Seq#Index(Heap[a_2, array], i_14_1)) && invRecv23(Seq#Index(Heap[a_2, array], i_14_1)) == i_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        Seq#Contains(Seq#Range(start, end), invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv23(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(start, end), invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv23(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(start, end), i_15) && (Seq#Contains(Seq#Range(start, end), j_10_2) && i_15 != j_10_2)) {
        assert {:msg "  Postcondition of merge might not hold. Assertion b.array[i] != b.array[j] might not hold. (mergesort.vpr@90.11--90.111) [64517]"}
          Seq#Index(Heap[b_24, array], i_15) != Seq#Index(Heap[b_24, array], j_10_2);
      }
      assume false;
    }
    assume (forall i_16_1_1: int, j_11_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_16_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_16_1_1), Seq#Contains(Seq#Range(start, end), j_11_1) } { Seq#Contains(Seq#Range(start, end), i_16_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_11_1) } { Seq#Contains(Seq#Range(start, end), i_16_1_1), Seq#Contains(Seq#Range(start, end), j_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_16_1_1), Seq#Index(Heap[b_24, array], j_11_1) } { Seq#Contains(Seq#Range(start, end), i_16_1_1), Seq#Index(Heap[b_24, array], j_11_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_11_1), Seq#Index(Heap[b_24, array], i_16_1_1) } { Seq#Contains(Seq#Range(start, end), j_11_1), Seq#Index(Heap[b_24, array], i_16_1_1) } { Seq#Index(Heap[b_24, array], i_16_1_1), Seq#Index(Heap[b_24, array], j_11_1) }
      Seq#Contains(Seq#Range(start, end), i_16_1_1) && (Seq#Contains(Seq#Range(start, end), j_11_1) && i_16_1_1 != j_11_1) ==> Seq#Index(Heap[b_24, array], i_16_1_1) != Seq#Index(Heap[b_24, array], j_11_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver b.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b.array[i].value might not be injective. (mergesort.vpr@91.11--91.77) [64518]"}
        (forall i_17: int, i_17_1: int ::
        { neverTriggered24(i_17), neverTriggered24(i_17_1) }
        (((i_17 != i_17_1 && Seq#Contains(Seq#Range(start, end), i_17)) && Seq#Contains(Seq#Range(start, end), i_17_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[b_24, array], i_17) != Seq#Index(Heap[b_24, array], i_17_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of merge might not hold. There might be insufficient permission to access b.array[i].value (mergesort.vpr@91.11--91.77) [64519]"}
        (forall i_17: int ::
        { Seq#Index(Heap[b_24, array], i_17) } { Seq#ContainsTrigger(Seq#Range(start, end), i_17) } { Seq#Contains(Seq#Range(start, end), i_17) } { Seq#Index(Heap[b_24, array], i_17) }
        Seq#Contains(Seq#Range(start, end), i_17) ==> Mask[Seq#Index(Heap[b_24, array], i_17), value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver b.array[i]
      assume (forall i_17: int ::
        { Seq#Index(Heap[b_24, array], i_17) } { Seq#ContainsTrigger(Seq#Range(start, end), i_17) } { Seq#Contains(Seq#Range(start, end), i_17) } { Seq#Index(Heap[b_24, array], i_17) }
        Seq#Contains(Seq#Range(start, end), i_17) && NoPerm < FullPerm ==> qpRange24(Seq#Index(Heap[b_24, array], i_17)) && invRecv24(Seq#Index(Heap[b_24, array], i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        Seq#Contains(Seq#Range(start, end), invRecv24(o_4)) && (NoPerm < FullPerm && qpRange24(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv24(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(start, end), invRecv24(o_4)) && (NoPerm < FullPerm && qpRange24(o_4)) ==> Seq#Index(Heap[b_24, array], invRecv24(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - FullPerm) && (!(Seq#Contains(Seq#Range(start, end), invRecv24(o_4)) && (NoPerm < FullPerm && qpRange24(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}