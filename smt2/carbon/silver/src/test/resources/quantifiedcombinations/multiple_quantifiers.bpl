// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:24:25
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/multiple_quantifiers-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered2(c_3: int, r_3_2: int): bool;
function  neverTriggered3(r_3_2: int): bool;
function  neverTriggered4(c_3: int): bool;
function  neverTriggered6(i_1: int, j_1: int): bool;
function  neverTriggered8(i_3: int, j_3_1: int): bool;
function  neverTriggered10(i_1: int, j_1: int): bool;
function  neverTriggered12(i_3: int, j_3_1: int): bool;
function  neverTriggered14(i_5: int, j_5_1: int): bool;
function  neverTriggered16(i_1: int, j_1: int): bool;
function  neverTriggered17(i_3: int): bool;
function  neverTriggered19(c_1: int, r_1_1: int): bool;
function  neverTriggered21(c_6: int, r_6_1: int): bool;
function  neverTriggered22(r_7: int): bool;
function  neverTriggered23(c_7: int): bool;
function  neverTriggered25(c_8: int, r_8: int): bool;
function  neverTriggered26(r_9: int): bool;
function  neverTriggered27(c_9: int): bool;
function  neverTriggered29(i1_1_1: int, i2_1_1: int): bool;
function  neverTriggered31(i1_4_1: int, i2_4: int): bool;
function  neverTriggered33(i1_1_1: int, i2_1_1: int): bool;
function  neverTriggered35(i1_4_1: int, i2_4: int): bool;
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
function  invRecv28(x: Ref, y: Ref): int;
function  invRecv29(x: Ref, y: Ref): int;
function  invRecv30(x_1: Ref, y_1: Ref): int;
function  invRecv31(x_1: Ref, y_1: Ref): int;
function  invRecv32(x: Ref, y: Ref): int;
function  invRecv33(x: Ref, y: Ref): int;
function  invRecv34(x_1: Ref, y_1: Ref): int;
function  invRecv35(x_1: Ref, y_1: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange21(recv: Ref): bool;
function  qpRange22(recv: Ref): bool;
function  qpRange23(recv: Ref): bool;
function  qpRange25(recv: Ref): bool;
function  qpRange26(recv: Ref): bool;
function  qpRange27(recv: Ref): bool;
function  qpRange29(x: Ref, y: Ref): bool;
function  qpRange31(x_1: Ref, y_1: Ref): bool;
function  qpRange33(x: Ref, y: Ref): bool;
function  qpRange35(x_1: Ref, y_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 5: det
// - height 4: colsum
// - height 3: prm
// - height 2: rowsum
// - height 1: getP
// - height 0: rcvr
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
// Translation of domain IArray
// ==================================================

// The type for domain IArray
type IArrayDomainType T;

// Translation of domain function aloc
function  aloc<T>(a_3: (IArrayDomainType T), i_79: int): T;

// Translation of domain function len
function  len_1<T>(a_3: (IArrayDomainType T)): int;

// Translation of domain function first
function  first<T>(r_3: T): IArrayDomainType T;

// Translation of domain function second
function  second<T>(r_3: T): int;

// Translation of domain axiom array_all_diff
axiom (forall <T> a_2: (IArrayDomainType T), i: int ::
  { (aloc(a_2, i): T) }
  (first((aloc(a_2, i): T)): IArrayDomainType T) == a_2 && (second((aloc(a_2, i): T)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall <T> a_2: (IArrayDomainType T) ::
  { (len_1(a_2): int) }
  (len_1(a_2): int) >= 0
);

// ==================================================
// Translation of domain IMatrix
// ==================================================

// The type for domain IMatrix
type IMatrixDomainType;

// Translation of domain function loc
function  loc(mat: IMatrixDomainType, col_1: int, row: int): Ref;

// Translation of domain function cols
function  cols(mat: IMatrixDomainType): int;

// Translation of domain function rows
function  rows(mat: IMatrixDomainType): int;

// Translation of domain function loc_mat
function  loc_mat(r_3: Ref): IMatrixDomainType;

// Translation of domain function loc_col
function  loc_col(r_3: Ref): int;

// Translation of domain function loc_row
function  loc_row(r_3: Ref): int;

// Translation of domain axiom all_diff
axiom (forall mat_1: IMatrixDomainType, col_2: int, row_1: int ::
  { (loc(mat_1, col_2, row_1): Ref) }
  (loc_mat((loc(mat_1, col_2, row_1): Ref)): IMatrixDomainType) == mat_1 && ((loc_col((loc(mat_1, col_2, row_1): Ref)): int) == col_2 && (loc_row((loc(mat_1, col_2, row_1): Ref)): int) == row_1)
);

// Translation of domain axiom cols_nonneg
axiom (forall mat_1: IMatrixDomainType ::
  { (cols(mat_1): int) }
  (cols(mat_1): int) >= 0
);

// Translation of domain axiom rows_nonneg
axiom (forall mat_1: IMatrixDomainType ::
  { (rows(mat_1): int) }
  (rows(mat_1): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function rcvr
// ==================================================

// Uninterpreted function definitions
function  rcvr(Heap: HeapType, i: int, j_9: int): Ref;
function  rcvr'(Heap: HeapType, i: int, j_9: int): Ref;
axiom (forall Heap: HeapType, i: int, j_9: int ::
  { rcvr(Heap, i, j_9) }
  rcvr(Heap, i, j_9) == rcvr'(Heap, i, j_9) && dummyFunction(rcvr#triggerStateless(i, j_9))
);
axiom (forall Heap: HeapType, i: int, j_9: int ::
  { rcvr'(Heap, i, j_9) }
  dummyFunction(rcvr#triggerStateless(i, j_9))
);

// Framing axioms
function  rcvr#frame(frame: FrameType, i: int, j_9: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, j_9: int ::
  { state(Heap, Mask), rcvr'(Heap, i, j_9) }
  state(Heap, Mask) ==> rcvr'(Heap, i, j_9) == rcvr#frame(EmptyFrame, i, j_9)
);

// Trigger function (controlling recursive postconditions)
function  rcvr#trigger(frame: FrameType, i: int, j_9: int): bool;

// State-independent trigger function
function  rcvr#triggerStateless(i: int, j_9: int): Ref;

// Check contract well-formedness and postcondition
procedure rcvr#definedness(i: int, j_9: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of function prm
// ==================================================

// Uninterpreted function definitions
function  prm(Heap: HeapType, i: int): Perm;
function  prm'(Heap: HeapType, i: int): Perm;
axiom (forall Heap: HeapType, i: int ::
  { prm(Heap, i) }
  prm(Heap, i) == prm'(Heap, i) && dummyFunction(prm#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { prm'(Heap, i) }
  dummyFunction(prm#triggerStateless(i))
);

// Framing axioms
function  prm#frame(frame: FrameType, i: int): Perm;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), prm'(Heap, i) }
  state(Heap, Mask) ==> prm'(Heap, i) == prm#frame(EmptyFrame, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), prm'(Heap, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || prm#trigger(EmptyFrame, i)) ==> NoPerm < prm'(Heap, i)
);

// Trigger function (controlling recursive postconditions)
function  prm#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  prm#triggerStateless(i: int): Perm;

// Check contract well-formedness and postcondition
procedure prm#definedness(i: int) returns (Result: Perm)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Checking definedness of postcondition (no body)
    assume NoPerm < Result;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function det
// ==================================================

// Uninterpreted function definitions
function  det(Heap: HeapType, mat_1: IMatrixDomainType): int;
function  det'(Heap: HeapType, mat_1: IMatrixDomainType): int;
axiom (forall Heap: HeapType, mat_1: IMatrixDomainType ::
  { det(Heap, mat_1) }
  det(Heap, mat_1) == det'(Heap, mat_1) && dummyFunction(det#triggerStateless(mat_1))
);
axiom (forall Heap: HeapType, mat_1: IMatrixDomainType ::
  { det'(Heap, mat_1) }
  dummyFunction(det#triggerStateless(mat_1))
);

// Framing axioms
function  det#frame(frame: FrameType, mat_1: IMatrixDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, mat_1: IMatrixDomainType ::
  { state(Heap, Mask), det'(Heap, mat_1) }
  state(Heap, Mask) ==> det'(Heap, mat_1) == det#frame(FrameFragment(det#condqp1(Heap, mat_1)), mat_1)
);
// ==================================================
// Function used for framing of quantified permission (forall c: Int, r: Int :: { loc(mat, c, r) } 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat))) ==> acc(loc(mat, c, r).val, write)) in function det
// ==================================================

function  det#condqp1(Heap: HeapType, mat_1_1: IMatrixDomainType): int;
function  sk_det#condqp1(fnAppH1: int, fnAppH2: int): int;
function  sk_det#condqp1_1(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, mat_1: IMatrixDomainType ::
  { det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_det#condqp1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) && (sk_det#condqp1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) < (cols(mat_1): int) && (0 <= sk_det#condqp1_1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) && sk_det#condqp1_1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) < (rows(mat_1): int)))) && NoPerm < FullPerm <==> (0 <= sk_det#condqp1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) && (sk_det#condqp1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) < (cols(mat_1): int) && (0 <= sk_det#condqp1_1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) && sk_det#condqp1_1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) < (rows(mat_1): int)))) && NoPerm < FullPerm) && ((0 <= sk_det#condqp1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) && (sk_det#condqp1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) < (cols(mat_1): int) && (0 <= sk_det#condqp1_1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) && sk_det#condqp1_1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)) < (rows(mat_1): int)))) && NoPerm < FullPerm ==> Heap2Heap[(loc(mat_1, sk_det#condqp1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)), sk_det#condqp1_1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1))): Ref), val] == Heap1Heap[(loc(mat_1, sk_det#condqp1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1)), sk_det#condqp1_1(det#condqp1(Heap2Heap, mat_1), det#condqp1(Heap1Heap, mat_1))): Ref), val]) ==> det#condqp1(Heap2Heap, mat_1) == det#condqp1(Heap1Heap, mat_1)
);

// Trigger function (controlling recursive postconditions)
function  det#trigger(frame: FrameType, mat_1: IMatrixDomainType): bool;

// State-independent trigger function
function  det#triggerStateless(mat_1: IMatrixDomainType): int;

// Check contract well-formedness and postcondition
procedure det#definedness(mat_1: IMatrixDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall c: Int, r: Int :: { loc(mat, c, r) } 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat))) ==> acc(loc(mat, c, r).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(mat, c, r).val might not be injective. (multiple_quantifiers.vpr@66.12--68.40) [104468]"}
      (forall c_3: int, r_3_2: int, c_3_1: int, r_3_3: int ::
      
      ((((c_3 != c_3_1 && r_3_2 != r_3_3) && (0 <= c_3 && (c_3 < (cols(mat_1): int) && (0 <= r_3_2 && r_3_2 < (rows(mat_1): int))))) && (0 <= c_3_1 && (c_3_1 < (cols(mat_1): int) && (0 <= r_3_3 && r_3_3 < (rows(mat_1): int))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, c_3, r_3_2): Ref) != (loc(mat_1, c_3_1, r_3_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall c_3: int, r_3_2: int ::
        { (loc(mat_1, c_3, r_3_2): Ref) } { (loc(mat_1, c_3, r_3_2): Ref) }
        (0 <= c_3 && (c_3 < (cols(mat_1): int) && (0 <= r_3_2 && r_3_2 < (rows(mat_1): int)))) && NoPerm < FullPerm ==> (qpRange2((loc(mat_1, c_3, r_3_2): Ref)) && invRecv1((loc(mat_1, c_3, r_3_2): Ref)) == c_3) && invRecv2((loc(mat_1, c_3, r_3_2): Ref)) == r_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4), invRecv2(o_4) }
        ((0 <= invRecv1(o_4) && (invRecv1(o_4) < (cols(mat_1): int) && (0 <= invRecv2(o_4) && invRecv2(o_4) < (rows(mat_1): int)))) && NoPerm < FullPerm) && qpRange2(o_4) ==> (loc(mat_1, invRecv1(o_4), invRecv2(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall c_3: int, r_3_2: int ::
        { (loc(mat_1, c_3, r_3_2): Ref) } { (loc(mat_1, c_3, r_3_2): Ref) }
        0 <= c_3 && (c_3 < (cols(mat_1): int) && (0 <= r_3_2 && r_3_2 < (rows(mat_1): int))) ==> (loc(mat_1, c_3, r_3_2): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv1(o_4) && (invRecv1(o_4) < (cols(mat_1): int) && (0 <= invRecv2(o_4) && invRecv2(o_4) < (rows(mat_1): int)))) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> (loc(mat_1, invRecv1(o_4), invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv1(o_4) && (invRecv1(o_4) < (cols(mat_1): int) && (0 <= invRecv2(o_4) && invRecv2(o_4) < (rows(mat_1): int)))) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function colsum
// ==================================================

// Uninterpreted function definitions
function  colsum(Heap: HeapType, mat_1: IMatrixDomainType, col_2: int): int;
function  colsum'(Heap: HeapType, mat_1: IMatrixDomainType, col_2: int): int;
axiom (forall Heap: HeapType, mat_1: IMatrixDomainType, col_2: int ::
  { colsum(Heap, mat_1, col_2) }
  colsum(Heap, mat_1, col_2) == colsum'(Heap, mat_1, col_2) && dummyFunction(colsum#triggerStateless(mat_1, col_2))
);
axiom (forall Heap: HeapType, mat_1: IMatrixDomainType, col_2: int ::
  { colsum'(Heap, mat_1, col_2) }
  dummyFunction(colsum#triggerStateless(mat_1, col_2))
);

// Framing axioms
function  colsum#frame(frame: FrameType, mat_1: IMatrixDomainType, col_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, mat_1: IMatrixDomainType, col_2: int ::
  { state(Heap, Mask), colsum'(Heap, mat_1, col_2) }
  state(Heap, Mask) ==> colsum'(Heap, mat_1, col_2) == colsum#frame(FrameFragment(colsum#condqp2(Heap, mat_1, col_2)), mat_1, col_2)
);
// ==================================================
// Function used for framing of quantified permission (forall r: Int :: { loc(mat, col, r) } 0 <= r && r < rows(mat) ==> acc(loc(mat, col, r).val, write)) in function colsum
// ==================================================

function  colsum#condqp2(Heap: HeapType, mat_1_1: IMatrixDomainType, col_1_1: int): int;
function  sk_colsum#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, mat_1: IMatrixDomainType, col_2: int ::
  { colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_colsum#condqp2(colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2)) && sk_colsum#condqp2(colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2)) < (rows(mat_1): int)) && NoPerm < FullPerm <==> (0 <= sk_colsum#condqp2(colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2)) && sk_colsum#condqp2(colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2)) < (rows(mat_1): int)) && NoPerm < FullPerm) && ((0 <= sk_colsum#condqp2(colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2)) && sk_colsum#condqp2(colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2)) < (rows(mat_1): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(mat_1, col_2, sk_colsum#condqp2(colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2))): Ref), val] == Heap1Heap[(loc(mat_1, col_2, sk_colsum#condqp2(colsum#condqp2(Heap2Heap, mat_1, col_2), colsum#condqp2(Heap1Heap, mat_1, col_2))): Ref), val]) ==> colsum#condqp2(Heap2Heap, mat_1, col_2) == colsum#condqp2(Heap1Heap, mat_1, col_2)
);

// Trigger function (controlling recursive postconditions)
function  colsum#trigger(frame: FrameType, mat_1: IMatrixDomainType, col_2: int): bool;

// State-independent trigger function
function  colsum#triggerStateless(mat_1: IMatrixDomainType, col_2: int): int;

// Check contract well-formedness and postcondition
procedure colsum#definedness(mat_1: IMatrixDomainType, col_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= col_2;
    assume col_2 < (cols(mat_1): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Int :: { loc(mat, col, r) } 0 <= r && r < rows(mat) ==> acc(loc(mat, col, r).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(mat, col, r).val might not be injective. (multiple_quantifiers.vpr@72.12--72.82) [104469]"}
      (forall r_3_2: int, r_3_3: int ::
      
      (((r_3_2 != r_3_3 && (0 <= r_3_2 && r_3_2 < (rows(mat_1): int))) && (0 <= r_3_3 && r_3_3 < (rows(mat_1): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, col_2, r_3_2): Ref) != (loc(mat_1, col_2, r_3_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall r_3_2: int ::
        { (loc(mat_1, col_2, r_3_2): Ref) } { (loc(mat_1, col_2, r_3_2): Ref) }
        (0 <= r_3_2 && r_3_2 < (rows(mat_1): int)) && NoPerm < FullPerm ==> qpRange3((loc(mat_1, col_2, r_3_2): Ref)) && invRecv3((loc(mat_1, col_2, r_3_2): Ref)) == r_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < (rows(mat_1): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (loc(mat_1, col_2, invRecv3(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_3_2: int ::
        { (loc(mat_1, col_2, r_3_2): Ref) } { (loc(mat_1, col_2, r_3_2): Ref) }
        0 <= r_3_2 && r_3_2 < (rows(mat_1): int) ==> (loc(mat_1, col_2, r_3_2): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < (rows(mat_1): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> (loc(mat_1, col_2, invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < (rows(mat_1): int)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function rowsum
// ==================================================

// Uninterpreted function definitions
function  rowsum(Heap: HeapType, mat_1: IMatrixDomainType, row_1: int): int;
function  rowsum'(Heap: HeapType, mat_1: IMatrixDomainType, row_1: int): int;
axiom (forall Heap: HeapType, mat_1: IMatrixDomainType, row_1: int ::
  { rowsum(Heap, mat_1, row_1) }
  rowsum(Heap, mat_1, row_1) == rowsum'(Heap, mat_1, row_1) && dummyFunction(rowsum#triggerStateless(mat_1, row_1))
);
axiom (forall Heap: HeapType, mat_1: IMatrixDomainType, row_1: int ::
  { rowsum'(Heap, mat_1, row_1) }
  dummyFunction(rowsum#triggerStateless(mat_1, row_1))
);

// Framing axioms
function  rowsum#frame(frame: FrameType, mat_1: IMatrixDomainType, row_1: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, mat_1: IMatrixDomainType, row_1: int ::
  { state(Heap, Mask), rowsum'(Heap, mat_1, row_1) }
  state(Heap, Mask) ==> rowsum'(Heap, mat_1, row_1) == rowsum#frame(FrameFragment(rowsum#condqp3(Heap, mat_1, row_1)), mat_1, row_1)
);
// ==================================================
// Function used for framing of quantified permission (forall c: Int :: { loc(mat, c, row) } 0 <= c && c < cols(mat) ==> acc(loc(mat, c, row).val, write)) in function rowsum
// ==================================================

function  rowsum#condqp3(Heap: HeapType, mat_1_1: IMatrixDomainType, row_1_1: int): int;
function  sk_rowsum#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, mat_1: IMatrixDomainType, row_1: int ::
  { rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_rowsum#condqp3(rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1)) && sk_rowsum#condqp3(rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1)) < (cols(mat_1): int)) && NoPerm < FullPerm <==> (0 <= sk_rowsum#condqp3(rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1)) && sk_rowsum#condqp3(rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1)) < (cols(mat_1): int)) && NoPerm < FullPerm) && ((0 <= sk_rowsum#condqp3(rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1)) && sk_rowsum#condqp3(rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1)) < (cols(mat_1): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(mat_1, sk_rowsum#condqp3(rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1)), row_1): Ref), val] == Heap1Heap[(loc(mat_1, sk_rowsum#condqp3(rowsum#condqp3(Heap2Heap, mat_1, row_1), rowsum#condqp3(Heap1Heap, mat_1, row_1)), row_1): Ref), val]) ==> rowsum#condqp3(Heap2Heap, mat_1, row_1) == rowsum#condqp3(Heap1Heap, mat_1, row_1)
);

// Trigger function (controlling recursive postconditions)
function  rowsum#trigger(frame: FrameType, mat_1: IMatrixDomainType, row_1: int): bool;

// State-independent trigger function
function  rowsum#triggerStateless(mat_1: IMatrixDomainType, row_1: int): int;

// Check contract well-formedness and postcondition
procedure rowsum#definedness(mat_1: IMatrixDomainType, row_1: int) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= row_1;
    assume row_1 < (rows(mat_1): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall c: Int :: { loc(mat, c, row) } 0 <= c && c < cols(mat) ==> acc(loc(mat, c, row).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(mat, c, row).val might not be injective. (multiple_quantifiers.vpr@76.12--76.82) [104470]"}
      (forall c_3: int, c_3_1: int ::
      
      (((c_3 != c_3_1 && (0 <= c_3 && c_3 < (cols(mat_1): int))) && (0 <= c_3_1 && c_3_1 < (cols(mat_1): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, c_3, row_1): Ref) != (loc(mat_1, c_3_1, row_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall c_3: int ::
        { (loc(mat_1, c_3, row_1): Ref) } { (loc(mat_1, c_3, row_1): Ref) }
        (0 <= c_3 && c_3 < (cols(mat_1): int)) && NoPerm < FullPerm ==> qpRange4((loc(mat_1, c_3, row_1): Ref)) && invRecv4((loc(mat_1, c_3, row_1): Ref)) == c_3
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < (cols(mat_1): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (loc(mat_1, invRecv4(o_4), row_1): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall c_3: int ::
        { (loc(mat_1, c_3, row_1): Ref) } { (loc(mat_1, c_3, row_1): Ref) }
        0 <= c_3 && c_3 < (cols(mat_1): int) ==> (loc(mat_1, c_3, row_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < (cols(mat_1): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> (loc(mat_1, invRecv4(o_4), row_1): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < (cols(mat_1): int)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function getP
// ==================================================

// Uninterpreted function definitions
function  getP(Heap: HeapType, x: Ref, y: Ref): int;
function  getP'(Heap: HeapType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { getP(Heap, x, y) }
  getP(Heap, x, y) == getP'(Heap, x, y) && dummyFunction(getP#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { getP'(Heap, x, y) }
  dummyFunction(getP#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), getP(Heap, x, y) } { state(Heap, Mask), getP#triggerStateless(x, y), P#trigger(Heap, P(x, y)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> getP(Heap, x, y) == Heap[x, f_7] + Heap[y, f_7]
);

// Framing axioms
function  getP#frame(frame: FrameType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), getP'(Heap, x, y) }
  state(Heap, Mask) ==> getP'(Heap, x, y) == getP#frame(Heap[null, P(x, y)], x, y)
);

// Trigger function (controlling recursive postconditions)
function  getP#trigger(frame: FrameType, x: Ref, y: Ref): bool;

// State-independent trigger function
function  getP#triggerStateless(x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure getP#definedness(x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x, y):=Mask[null, P(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(x, y), write) in x.f + y.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x, y));
      assume UnfoldingHeap[null, P(x, y)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[y, f_7]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x, y) (multiple_quantifiers.vpr@105.1--107.35) [104471]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x, y)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, f_7:=UnfoldingMask[y, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[x, f_7] < UnfoldingHeap[y, f_7];
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (multiple_quantifiers.vpr@105.1--107.35) [104472]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (multiple_quantifiers.vpr@105.1--107.35) [104473]"}
        HasDirectPerm(UnfoldingMask, y, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x, y):=Heap[null, P#sm(x, y)][x, f_7:=true]];
        Heap := Heap[null, P#sm(x, y):=Heap[null, P#sm(x, y)][y, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[y, f_7];
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref, y: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref, y: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref, y: Ref ::
  { PredicateMaskField(P(x, y)) }
  PredicateMaskField(P(x, y)) == P#sm(x, y)
);
axiom (forall x: Ref, y: Ref ::
  { P(x, y) }
  IsPredicateField(P(x, y))
);
axiom (forall x: Ref, y: Ref ::
  { P(x, y) }
  getPredWandId(P(x, y)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { P(x, y), P(x2, y2) }
  P(x, y) == P(x2, y2) ==> x == x2 && y == y2
);
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { P#sm(x, y), P#sm(x2, y2) }
  P#sm(x, y) == P#sm(x2, y2) ==> x == x2 && y == y2
);

axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { P#trigger(Heap, P(x, y)) }
  P#everUsed(P(x, y))
);

procedure P#definedness(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
      assume Heap[y, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f < y.f
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (multiple_quantifiers.vpr@101.1--103.2) [104474]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access y.f (multiple_quantifiers.vpr@101.1--103.2) [104475]"}
        HasDirectPerm(Mask, y, f_7);
    assume Heap[x, f_7] < Heap[y, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ix_27: int;
  var jx_27: int;
  var i_7: int;
  var j_7: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i1_25: int;
  var i2_14: int;
  var i1_1_1: int;
  var i2_1_1: int;
  var i_9: int;
  var j_10: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 0 <= n && n <= |xs| -- multiple_quantifiers.vpr@14.3--14.29
    assume 0 <= n;
    assume n <= Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall ix: Int, jx: Int ::
  //     { rcvr(ix, ix), rcvr(jx, jx) }
  //     ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==>
  //     rcvr(ix, ix) != rcvr(jx, jx)) -- multiple_quantifiers.vpr@16.3--16.118
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { rcvr(ix, ix), rcvr(jx, jx) } ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix) != rcvr(jx, jx))
      if (*) {
        if (ix_27 >= 0 && (ix_27 < n && (jx_27 >= 0 && (jx_27 < n && ix_27 != jx_27)))) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { rcvr#frame(EmptyFrame, ix_1, ix_1), rcvr#frame(EmptyFrame, jx_1, jx_1) }
      ix_1 >= 0 && (ix_1 < n && (jx_1 >= 0 && (jx_1 < n && ix_1 != jx_1))) ==> rcvr(Heap, ix_1, ix_1) != rcvr(Heap, jx_1, jx_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { rcvr(i, j) }
  //     0 <= i && (i < n && j == i) ==> acc(rcvr(i, j).f, prm(i))) -- multiple_quantifiers.vpr@17.3--18.60
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { rcvr(i, j) } 0 <= i && (i < n && j == i) ==> acc(rcvr(i, j).f, prm(i)))
      if (*) {
        if (0 <= i_7 && (i_7 < n && j_7 == i_7)) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource rcvr(i, j).f might not be injective. (multiple_quantifiers.vpr@17.10--18.60) [104476]"}
      (forall i_1: int, j_1: int, i_1_1: int, j_1_1: int ::
      
      ((((i_1 != i_1_1 && j_1 != j_1_1) && (0 <= i_1 && (i_1 < n && j_1 == i_1))) && (0 <= i_1_1 && (i_1_1 < n && j_1_1 == i_1_1))) && NoPerm < prm(Heap, i_1)) && NoPerm < prm(Heap, i_1_1) ==> rcvr(Heap, i_1, j_1) != rcvr(Heap, i_1_1, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int, j_1: int ::
        { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
        (0 <= i_1 && (i_1 < n && j_1 == i_1)) && NoPerm < prm(Heap, i_1) ==> (qpRange6(rcvr(Heap, i_1, j_1)) && invRecv5(rcvr(Heap, i_1, j_1)) == i_1) && invRecv6(rcvr(Heap, i_1, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4), invRecv6(o_4) }
        ((0 <= invRecv5(o_4) && (invRecv5(o_4) < n && invRecv6(o_4) == invRecv5(o_4))) && NoPerm < prm(Heap, invRecv5(o_4))) && qpRange6(o_4) ==> rcvr(Heap, invRecv5(o_4), invRecv6(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction prm(i) might be negative. (multiple_quantifiers.vpr@17.10--18.60) [104477]"}
      (forall i_1: int, j_1: int ::
      { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
      0 <= i_1 && (i_1 < n && j_1 == i_1) ==> prm(Heap, i_1) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int, j_1: int ::
        { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
        (0 <= i_1 && (i_1 < n && j_1 == i_1)) && prm(Heap, i_1) > NoPerm ==> rcvr(Heap, i_1, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv5(o_4) && (invRecv5(o_4) < n && invRecv6(o_4) == invRecv5(o_4))) && NoPerm < prm(Heap, invRecv5(o_4))) && qpRange6(o_4) ==> (NoPerm < prm(Heap, invRecv5(o_4)) ==> rcvr(Heap, invRecv5(o_4), invRecv6(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + prm(Heap, invRecv5(o_4))) && (!(((0 <= invRecv5(o_4) && (invRecv5(o_4) < n && invRecv6(o_4) == invRecv5(o_4))) && NoPerm < prm(Heap, invRecv5(o_4))) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i1: Int, i2: Int ::
  //     { rcvr(i1, i1), rcvr(i2, i2) }
  //     0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==>
  //     rcvr(i1, i1) != rcvr(i2, i2)) -- multiple_quantifiers.vpr@20.3--22.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { rcvr(i1, i1), rcvr(i2, i2) } 0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==> rcvr(i1, i1) != rcvr(i2, i2))
      if (*) {
        if (0 <= i1_25 && (i1_25 < n && (0 <= i2_14 && (i2_14 < n && i1_25 != i2_14)))) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i1_1_1 && (i1_1_1 < n && (0 <= i2_1_1 && (i2_1_1 < n && i1_1_1 != i2_1_1)))) {
        assert {:msg "  Assert might fail. Assertion rcvr(i1, i1) != rcvr(i2, i2) might not hold. (multiple_quantifiers.vpr@20.10--22.35) [104478]"}
          rcvr(Heap, i1_1_1, i1_1_1) != rcvr(Heap, i2_1_1, i2_1_1);
      }
      assume false;
    }
    assume (forall i1_2_1_1: int, i2_2_1_1: int ::
      { rcvr#frame(EmptyFrame, i1_2_1_1, i1_2_1_1), rcvr#frame(EmptyFrame, i2_2_1_1, i2_2_1_1) }
      0 <= i1_2_1_1 && (i1_2_1_1 < n && (0 <= i2_2_1_1 && (i2_2_1_1 < n && i1_2_1_1 != i2_2_1_1))) ==> rcvr(Heap, i1_2_1_1, i1_2_1_1) != rcvr(Heap, i2_2_1_1, i2_2_1_1)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int, j: Int ::
  //     { rcvr(i, j) }
  //     0 <= i && (i < n && i == j) ==> acc(rcvr(i, j).f, prm(i))) -- multiple_quantifiers.vpr@24.3--25.60
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int, j: Int :: { rcvr(i, j) } 0 <= i && (i < n && i == j) ==> acc(rcvr(i, j).f, prm(i)))
      if (*) {
        if (0 <= i_9 && (i_9 < n && i_9 == j_10)) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction prm(i) might be negative. (multiple_quantifiers.vpr@24.10--25.60) [104479]"}
        (forall i_3: int, j_3_1: int ::
        { rcvr#frame(EmptyFrame, i_3, j_3_1) } { rcvr#frame(EmptyFrame, i_3, j_3_1) }
        (0 <= i_3 && (i_3 < n && i_3 == j_3_1)) && dummyFunction(Heap[rcvr(Heap, i_3, j_3_1), f_7]) ==> prm(Heap, i_3) >= NoPerm
      );
    
    // -- check if receiver rcvr(i, j) is injective
      assert {:msg "  Exhale might fail. Quantified resource rcvr(i, j).f might not be injective. (multiple_quantifiers.vpr@24.10--25.60) [104480]"}
        (forall i_3: int, j_3_1: int, i_3_1: int, j_3_2: int ::
        { neverTriggered8(i_3, j_3_1), neverTriggered8(i_3_1, j_3_2) }
        ((((i_3 != i_3_1 && j_3_1 != j_3_2) && (0 <= i_3 && (i_3 < n && i_3 == j_3_1))) && (0 <= i_3_1 && (i_3_1 < n && i_3_1 == j_3_2))) && NoPerm < prm(Heap, i_3)) && NoPerm < prm(Heap, i_3_1) ==> rcvr(Heap, i_3, j_3_1) != rcvr(Heap, i_3_1, j_3_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access rcvr(i, j).f (multiple_quantifiers.vpr@24.10--25.60) [104481]"}
        (forall i_3: int, j_3_1: int ::
        { rcvr#frame(EmptyFrame, i_3, j_3_1) } { rcvr#frame(EmptyFrame, i_3, j_3_1) }
        0 <= i_3 && (i_3 < n && i_3 == j_3_1) ==> Mask[rcvr(Heap, i_3, j_3_1), f_7] >= prm(Heap, i_3)
      );
    
    // -- assumptions for inverse of receiver rcvr(i, j)
      assume (forall i_3: int, j_3_1: int ::
        { rcvr#frame(EmptyFrame, i_3, j_3_1) } { rcvr#frame(EmptyFrame, i_3, j_3_1) }
        (0 <= i_3 && (i_3 < n && i_3 == j_3_1)) && NoPerm < prm(Heap, i_3) ==> (qpRange8(rcvr(Heap, i_3, j_3_1)) && invRecv7(rcvr(Heap, i_3, j_3_1)) == i_3) && invRecv8(rcvr(Heap, i_3, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4), invRecv8(o_4) }
        (0 <= invRecv7(o_4) && (invRecv7(o_4) < n && invRecv7(o_4) == invRecv8(o_4))) && (NoPerm < prm(Heap, invRecv7(o_4)) && qpRange8(o_4)) ==> rcvr(Heap, invRecv7(o_4), invRecv8(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv7(o_4) && (invRecv7(o_4) < n && invRecv7(o_4) == invRecv8(o_4))) && (NoPerm < prm(Heap, invRecv7(o_4)) && qpRange8(o_4)) ==> rcvr(Heap, invRecv7(o_4), invRecv8(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - prm(Heap, invRecv7(o_4))) && (!((0 <= invRecv7(o_4) && (invRecv7(o_4) < n && invRecv7(o_4) == invRecv8(o_4))) && (NoPerm < prm(Heap, invRecv7(o_4)) && qpRange8(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_fail
// ==================================================

procedure test01_fail(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ix_26: int;
  var jx_26: int;
  var i_11: int;
  var j_11: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i1_34: int;
  var i2_30: int;
  var i1_1_1: int;
  var i2_1_1: int;
  var i_16: int;
  var j_18: int;
  var ExhaleHeap: HeapType;
  var i_18: int;
  var j_21: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 0 <= n && n <= |xs| -- multiple_quantifiers.vpr@29.3--29.29
    assume 0 <= n;
    assume n <= Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall ix: Int, jx: Int ::
  //     { rcvr(ix, ix), rcvr(jx, jx) }
  //     ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==>
  //     rcvr(ix, ix) != rcvr(jx, jx)) -- multiple_quantifiers.vpr@31.3--31.118
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { rcvr(ix, ix), rcvr(jx, jx) } ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix) != rcvr(jx, jx))
      if (*) {
        if (ix_26 >= 0 && (ix_26 < n && (jx_26 >= 0 && (jx_26 < n && ix_26 != jx_26)))) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { rcvr#frame(EmptyFrame, ix_1, ix_1), rcvr#frame(EmptyFrame, jx_1, jx_1) }
      ix_1 >= 0 && (ix_1 < n && (jx_1 >= 0 && (jx_1 < n && ix_1 != jx_1))) ==> rcvr(Heap, ix_1, ix_1) != rcvr(Heap, jx_1, jx_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { rcvr(i, j) }
  //     0 <= i && (i < n && j == i) ==> acc(rcvr(i, j).f, prm(i))) -- multiple_quantifiers.vpr@32.3--33.60
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { rcvr(i, j) } 0 <= i && (i < n && j == i) ==> acc(rcvr(i, j).f, prm(i)))
      if (*) {
        if (0 <= i_11 && (i_11 < n && j_11 == i_11)) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource rcvr(i, j).f might not be injective. (multiple_quantifiers.vpr@32.10--33.60) [104482]"}
      (forall i_1: int, j_1: int, i_1_1: int, j_1_1: int ::
      
      ((((i_1 != i_1_1 && j_1 != j_1_1) && (0 <= i_1 && (i_1 < n && j_1 == i_1))) && (0 <= i_1_1 && (i_1_1 < n && j_1_1 == i_1_1))) && NoPerm < prm(Heap, i_1)) && NoPerm < prm(Heap, i_1_1) ==> rcvr(Heap, i_1, j_1) != rcvr(Heap, i_1_1, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int, j_1: int ::
        { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
        (0 <= i_1 && (i_1 < n && j_1 == i_1)) && NoPerm < prm(Heap, i_1) ==> (qpRange10(rcvr(Heap, i_1, j_1)) && invRecv9(rcvr(Heap, i_1, j_1)) == i_1) && invRecv10(rcvr(Heap, i_1, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4), invRecv10(o_4) }
        ((0 <= invRecv9(o_4) && (invRecv9(o_4) < n && invRecv10(o_4) == invRecv9(o_4))) && NoPerm < prm(Heap, invRecv9(o_4))) && qpRange10(o_4) ==> rcvr(Heap, invRecv9(o_4), invRecv10(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction prm(i) might be negative. (multiple_quantifiers.vpr@32.10--33.60) [104483]"}
      (forall i_1: int, j_1: int ::
      { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
      0 <= i_1 && (i_1 < n && j_1 == i_1) ==> prm(Heap, i_1) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int, j_1: int ::
        { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
        (0 <= i_1 && (i_1 < n && j_1 == i_1)) && prm(Heap, i_1) > NoPerm ==> rcvr(Heap, i_1, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv9(o_4) && (invRecv9(o_4) < n && invRecv10(o_4) == invRecv9(o_4))) && NoPerm < prm(Heap, invRecv9(o_4))) && qpRange10(o_4) ==> (NoPerm < prm(Heap, invRecv9(o_4)) ==> rcvr(Heap, invRecv9(o_4), invRecv10(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + prm(Heap, invRecv9(o_4))) && (!(((0 <= invRecv9(o_4) && (invRecv9(o_4) < n && invRecv10(o_4) == invRecv9(o_4))) && NoPerm < prm(Heap, invRecv9(o_4))) && qpRange10(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i1: Int, i2: Int ::
  //     { rcvr(i1, i1), rcvr(i2, i2) }
  //     0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==>
  //     rcvr(i1, i1) != rcvr(i2, i2)) -- multiple_quantifiers.vpr@35.3--37.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { rcvr(i1, i1), rcvr(i2, i2) } 0 <= i1 && (i1 < n && (0 <= i2 && (i2 < n && i1 != i2))) ==> rcvr(i1, i1) != rcvr(i2, i2))
      if (*) {
        if (0 <= i1_34 && (i1_34 < n && (0 <= i2_30 && (i2_30 < n && i1_34 != i2_30)))) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i1_1_1 && (i1_1_1 < n && (0 <= i2_1_1 && (i2_1_1 < n && i1_1_1 != i2_1_1)))) {
        assert {:msg "  Assert might fail. Assertion rcvr(i1, i1) != rcvr(i2, i2) might not hold. (multiple_quantifiers.vpr@35.10--37.35) [104484]"}
          rcvr(Heap, i1_1_1, i1_1_1) != rcvr(Heap, i2_1_1, i2_1_1);
      }
      assume false;
    }
    assume (forall i1_2_1_1: int, i2_2_1_1: int ::
      { rcvr#frame(EmptyFrame, i1_2_1_1, i1_2_1_1), rcvr#frame(EmptyFrame, i2_2_1_1, i2_2_1_1) }
      0 <= i1_2_1_1 && (i1_2_1_1 < n && (0 <= i2_2_1_1 && (i2_2_1_1 < n && i1_2_1_1 != i2_2_1_1))) ==> rcvr(Heap, i1_2_1_1, i1_2_1_1) != rcvr(Heap, i2_2_1_1, i2_2_1_1)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int, j: Int ::
  //     { rcvr(i, j) }
  //     0 <= i && (i < n && i == j) ==> acc(rcvr(i, j).f, prm(i))) -- multiple_quantifiers.vpr@39.3--40.60
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int, j: Int :: { rcvr(i, j) } 0 <= i && (i < n && i == j) ==> acc(rcvr(i, j).f, prm(i)))
      if (*) {
        if (0 <= i_16 && (i_16 < n && i_16 == j_18)) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction prm(i) might be negative. (multiple_quantifiers.vpr@39.10--40.60) [104485]"}
        (forall i_3: int, j_3_1: int ::
        { rcvr#frame(EmptyFrame, i_3, j_3_1) } { rcvr#frame(EmptyFrame, i_3, j_3_1) }
        (0 <= i_3 && (i_3 < n && i_3 == j_3_1)) && dummyFunction(Heap[rcvr(Heap, i_3, j_3_1), f_7]) ==> prm(Heap, i_3) >= NoPerm
      );
    
    // -- check if receiver rcvr(i, j) is injective
      assert {:msg "  Exhale might fail. Quantified resource rcvr(i, j).f might not be injective. (multiple_quantifiers.vpr@39.10--40.60) [104486]"}
        (forall i_3: int, j_3_1: int, i_3_1: int, j_3_2: int ::
        { neverTriggered12(i_3, j_3_1), neverTriggered12(i_3_1, j_3_2) }
        ((((i_3 != i_3_1 && j_3_1 != j_3_2) && (0 <= i_3 && (i_3 < n && i_3 == j_3_1))) && (0 <= i_3_1 && (i_3_1 < n && i_3_1 == j_3_2))) && NoPerm < prm(Heap, i_3)) && NoPerm < prm(Heap, i_3_1) ==> rcvr(Heap, i_3, j_3_1) != rcvr(Heap, i_3_1, j_3_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access rcvr(i, j).f (multiple_quantifiers.vpr@39.10--40.60) [104487]"}
        (forall i_3: int, j_3_1: int ::
        { rcvr#frame(EmptyFrame, i_3, j_3_1) } { rcvr#frame(EmptyFrame, i_3, j_3_1) }
        0 <= i_3 && (i_3 < n && i_3 == j_3_1) ==> Mask[rcvr(Heap, i_3, j_3_1), f_7] >= prm(Heap, i_3)
      );
    
    // -- assumptions for inverse of receiver rcvr(i, j)
      assume (forall i_3: int, j_3_1: int ::
        { rcvr#frame(EmptyFrame, i_3, j_3_1) } { rcvr#frame(EmptyFrame, i_3, j_3_1) }
        (0 <= i_3 && (i_3 < n && i_3 == j_3_1)) && NoPerm < prm(Heap, i_3) ==> (qpRange12(rcvr(Heap, i_3, j_3_1)) && invRecv11(rcvr(Heap, i_3, j_3_1)) == i_3) && invRecv12(rcvr(Heap, i_3, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4), invRecv12(o_4) }
        (0 <= invRecv11(o_4) && (invRecv11(o_4) < n && invRecv11(o_4) == invRecv12(o_4))) && (NoPerm < prm(Heap, invRecv11(o_4)) && qpRange12(o_4)) ==> rcvr(Heap, invRecv11(o_4), invRecv12(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv11(o_4) && (invRecv11(o_4) < n && invRecv11(o_4) == invRecv12(o_4))) && (NoPerm < prm(Heap, invRecv11(o_4)) && qpRange12(o_4)) ==> rcvr(Heap, invRecv11(o_4), invRecv12(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - prm(Heap, invRecv11(o_4))) && (!((0 <= invRecv11(o_4) && (invRecv11(o_4) < n && invRecv11(o_4) == invRecv12(o_4))) && (NoPerm < prm(Heap, invRecv11(o_4)) && qpRange12(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int, j: Int ::
  //     { rcvr(i, j) }
  //     0 <= i && (i < n && i == j) ==> acc(rcvr(i, j).f, prm(i))) -- multiple_quantifiers.vpr@43.3--44.62
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int, j: Int :: { rcvr(i, j) } 0 <= i && (i < n && i == j) ==> acc(rcvr(i, j).f, prm(i)))
      if (*) {
        if (0 <= i_18 && (i_18 < n && i_18 == j_21)) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction prm(i) might be negative. (multiple_quantifiers.vpr@43.10--44.62) [104488]"}
        (forall i_5: int, j_5_1: int ::
        { rcvr#frame(EmptyFrame, i_5, j_5_1) } { rcvr#frame(EmptyFrame, i_5, j_5_1) }
        (0 <= i_5 && (i_5 < n && i_5 == j_5_1)) && dummyFunction(Heap[rcvr(Heap, i_5, j_5_1), f_7]) ==> prm(Heap, i_5) >= NoPerm
      );
    
    // -- check if receiver rcvr(i, j) is injective
      assert {:msg "  Exhale might fail. Quantified resource rcvr(i, j).f might not be injective. (multiple_quantifiers.vpr@43.10--44.62) [104489]"}
        (forall i_5: int, j_5_1: int, i_5_1: int, j_5_2: int ::
        { neverTriggered14(i_5, j_5_1), neverTriggered14(i_5_1, j_5_2) }
        ((((i_5 != i_5_1 && j_5_1 != j_5_2) && (0 <= i_5 && (i_5 < n && i_5 == j_5_1))) && (0 <= i_5_1 && (i_5_1 < n && i_5_1 == j_5_2))) && NoPerm < prm(Heap, i_5)) && NoPerm < prm(Heap, i_5_1) ==> rcvr(Heap, i_5, j_5_1) != rcvr(Heap, i_5_1, j_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access rcvr(i, j).f (multiple_quantifiers.vpr@43.10--44.62) [104490]"}
        (forall i_5: int, j_5_1: int ::
        { rcvr#frame(EmptyFrame, i_5, j_5_1) } { rcvr#frame(EmptyFrame, i_5, j_5_1) }
        0 <= i_5 && (i_5 < n && i_5 == j_5_1) ==> Mask[rcvr(Heap, i_5, j_5_1), f_7] >= prm(Heap, i_5)
      );
    
    // -- assumptions for inverse of receiver rcvr(i, j)
      assume (forall i_5: int, j_5_1: int ::
        { rcvr#frame(EmptyFrame, i_5, j_5_1) } { rcvr#frame(EmptyFrame, i_5, j_5_1) }
        (0 <= i_5 && (i_5 < n && i_5 == j_5_1)) && NoPerm < prm(Heap, i_5) ==> (qpRange14(rcvr(Heap, i_5, j_5_1)) && invRecv13(rcvr(Heap, i_5, j_5_1)) == i_5) && invRecv14(rcvr(Heap, i_5, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4), invRecv14(o_4) }
        (0 <= invRecv13(o_4) && (invRecv13(o_4) < n && invRecv13(o_4) == invRecv14(o_4))) && (NoPerm < prm(Heap, invRecv13(o_4)) && qpRange14(o_4)) ==> rcvr(Heap, invRecv13(o_4), invRecv14(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv13(o_4) && (invRecv13(o_4) < n && invRecv13(o_4) == invRecv14(o_4))) && (NoPerm < prm(Heap, invRecv13(o_4)) && qpRange14(o_4)) ==> rcvr(Heap, invRecv13(o_4), invRecv14(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - prm(Heap, invRecv13(o_4))) && (!((0 <= invRecv13(o_4) && (invRecv13(o_4) < n && invRecv13(o_4) == invRecv14(o_4))) && (NoPerm < prm(Heap, invRecv13(o_4)) && qpRange14(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Seq Ref), n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ix_24: int;
  var jx_24: int;
  var i_20: int;
  var j_13: int;
  var QPMask: MaskType;
  var a_2: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_22: int;
  var i_24: int;
  var i_5: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 0 <= n && n <= |xs| -- multiple_quantifiers.vpr@48.3--48.29
    assume 0 <= n;
    assume n <= Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall ix: Int, jx: Int, fresh__332: Int, fresh__333: Int ::
  //     { rcvr(ix, fresh__332), rcvr(jx, fresh__333) }
  //     ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==>
  //     rcvr(ix, ix + 1) != rcvr(jx, jx + 1)) -- multiple_quantifiers.vpr@50.3--50.122
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int, fresh__332: Int, fresh__333: Int :: { rcvr(ix, fresh__332), rcvr(jx, fresh__333) } ix >= 0 && (ix < n && (jx >= 0 && (jx < n && ix != jx))) ==> rcvr(ix, ix + 1) != rcvr(jx, jx + 1))
      if (*) {
        if (ix_24 >= 0 && (ix_24 < n && (jx_24 >= 0 && (jx_24 < n && ix_24 != jx_24)))) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int, fresh__332_1: int, fresh__333_1: int ::
      { rcvr#frame(EmptyFrame, ix_1, fresh__332_1), rcvr#frame(EmptyFrame, jx_1, fresh__333_1) }
      ix_1 >= 0 && (ix_1 < n && (jx_1 >= 0 && (jx_1 < n && ix_1 != jx_1))) ==> rcvr(Heap, ix_1, ix_1 + 1) != rcvr(Heap, jx_1, jx_1 + 1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { rcvr(i, j) }
  //     0 <= i && (i < n && j == i + 1) ==> acc(rcvr(i, j).f, prm(i))) -- multiple_quantifiers.vpr@51.3--52.64
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { rcvr(i, j) } 0 <= i && (i < n && j == i + 1) ==> acc(rcvr(i, j).f, prm(i)))
      if (*) {
        if (0 <= i_20 && (i_20 < n && j_13 == i_20 + 1)) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource rcvr(i, j).f might not be injective. (multiple_quantifiers.vpr@51.10--52.64) [104491]"}
      (forall i_1: int, j_1: int, i_1_1: int, j_1_1: int ::
      
      ((((i_1 != i_1_1 && j_1 != j_1_1) && (0 <= i_1 && (i_1 < n && j_1 == i_1 + 1))) && (0 <= i_1_1 && (i_1_1 < n && j_1_1 == i_1_1 + 1))) && NoPerm < prm(Heap, i_1)) && NoPerm < prm(Heap, i_1_1) ==> rcvr(Heap, i_1, j_1) != rcvr(Heap, i_1_1, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int, j_1: int ::
        { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
        (0 <= i_1 && (i_1 < n && j_1 == i_1 + 1)) && NoPerm < prm(Heap, i_1) ==> (qpRange16(rcvr(Heap, i_1, j_1)) && invRecv15(rcvr(Heap, i_1, j_1)) == i_1) && invRecv16(rcvr(Heap, i_1, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4), invRecv16(o_4) }
        ((0 <= invRecv15(o_4) && (invRecv15(o_4) < n && invRecv16(o_4) == invRecv15(o_4) + 1)) && NoPerm < prm(Heap, invRecv15(o_4))) && qpRange16(o_4) ==> rcvr(Heap, invRecv15(o_4), invRecv16(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction prm(i) might be negative. (multiple_quantifiers.vpr@51.10--52.64) [104492]"}
      (forall i_1: int, j_1: int ::
      { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
      0 <= i_1 && (i_1 < n && j_1 == i_1 + 1) ==> prm(Heap, i_1) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int, j_1: int ::
        { rcvr#frame(EmptyFrame, i_1, j_1) } { rcvr#frame(EmptyFrame, i_1, j_1) }
        (0 <= i_1 && (i_1 < n && j_1 == i_1 + 1)) && prm(Heap, i_1) > NoPerm ==> rcvr(Heap, i_1, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv15(o_4) && (invRecv15(o_4) < n && invRecv16(o_4) == invRecv15(o_4) + 1)) && NoPerm < prm(Heap, invRecv15(o_4))) && qpRange16(o_4) ==> (NoPerm < prm(Heap, invRecv15(o_4)) ==> rcvr(Heap, invRecv15(o_4), invRecv16(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + prm(Heap, invRecv15(o_4))) && (!(((0 <= invRecv15(o_4) && (invRecv15(o_4) < n && invRecv16(o_4) == invRecv15(o_4) + 1)) && NoPerm < prm(Heap, invRecv15(o_4))) && qpRange16(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= a && a < n -- multiple_quantifiers.vpr@55.3--55.25
    assume 0 <= a_2;
    assume a_2 < n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale rcvr(a, a + 1).f > 1 -- multiple_quantifiers.vpr@56.3--56.30
    assume state(Heap, Mask);
    
    // -- Check definedness of rcvr(a, a + 1).f > 1
      if (*) {
        // Stop execution
        assume false;
      }
      assert {:msg "  Inhale might fail. There might be insufficient permission to access rcvr(a, a + 1).f (multiple_quantifiers.vpr@56.10--56.30) [104493]"}
        HasDirectPerm(Mask, rcvr(Heap, a_2, a_2 + 1), f_7);
    assume Heap[rcvr(Heap, a_2, a_2 + 1), f_7] > 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i: Int ::
  //     { prm(i) }
  //     0 <= i && i < n ==> acc(rcvr(i, i + 1).f, prm(i))) &&
  //   (forall i: Int, fresh__335: Int ::
  //     { rcvr(i, fresh__335) }
  //     0 <= i && i < n ==> i != a || rcvr(i, i + 1).f > 1) -- multiple_quantifiers.vpr@58.3--61.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { prm(i) } 0 <= i && i < n ==> acc(rcvr(i, i + 1).f, prm(i)))
      if (*) {
        if (0 <= i_22 && i_22 < n) {
          if (*) {
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction prm(i) might be negative. (multiple_quantifiers.vpr@58.10--61.42) [104494]"}
        (forall i_3: int ::
        { prm#frame(EmptyFrame, i_3) }
        (0 <= i_3 && i_3 < n) && dummyFunction(Heap[rcvr(Heap, i_3, i_3 + 1), f_7]) ==> prm(Heap, i_3) >= NoPerm
      );
    
    // -- check if receiver rcvr(i, i + 1) is injective
      assert {:msg "  Exhale might fail. Quantified resource rcvr(i, i + 1).f might not be injective. (multiple_quantifiers.vpr@58.10--61.42) [104495]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered17(i_3), neverTriggered17(i_3_1) }
        (((i_3 != i_3_1 && (0 <= i_3 && i_3 < n)) && (0 <= i_3_1 && i_3_1 < n)) && NoPerm < prm(Heap, i_3)) && NoPerm < prm(Heap, i_3_1) ==> rcvr(Heap, i_3, i_3 + 1) != rcvr(Heap, i_3_1, i_3_1 + 1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access rcvr(i, i + 1).f (multiple_quantifiers.vpr@58.10--61.42) [104496]"}
        (forall i_3: int ::
        { prm#frame(EmptyFrame, i_3) }
        0 <= i_3 && i_3 < n ==> Mask[rcvr(Heap, i_3, i_3 + 1), f_7] >= prm(Heap, i_3)
      );
    
    // -- assumptions for inverse of receiver rcvr(i, i + 1)
      assume (forall i_3: int ::
        { prm#frame(EmptyFrame, i_3) }
        (0 <= i_3 && i_3 < n) && NoPerm < prm(Heap, i_3) ==> qpRange17(rcvr(Heap, i_3, i_3 + 1)) && invRecv17(rcvr(Heap, i_3, i_3 + 1)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        (0 <= invRecv17(o_4) && invRecv17(o_4) < n) && (NoPerm < prm(Heap, invRecv17(o_4)) && qpRange17(o_4)) ==> rcvr(Heap, invRecv17(o_4), invRecv17(o_4) + 1) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv17(o_4) && invRecv17(o_4) < n) && (NoPerm < prm(Heap, invRecv17(o_4)) && qpRange17(o_4)) ==> rcvr(Heap, invRecv17(o_4), invRecv17(o_4) + 1) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - prm(Heap, invRecv17(o_4))) && (!((0 <= invRecv17(o_4) && invRecv17(o_4) < n) && (NoPerm < prm(Heap, invRecv17(o_4)) && qpRange17(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    
    // -- Check definedness of (forall i: Int, fresh__335: Int :: { rcvr(i, fresh__335) } 0 <= i && i < n ==> i != a || rcvr(i, i + 1).f > 1)
      if (*) {
        if (0 <= i_24 && i_24 < n) {
          if (!(i_24 != a_2)) {
            if (*) {
              // Stop execution
              assume false;
            }
            assert {:msg "  Exhale might fail. There might be insufficient permission to access rcvr(i, i + 1).f (multiple_quantifiers.vpr@58.10--61.42) [104497]"}
              HasDirectPerm(ExhaleWellDef0Mask, rcvr(Heap, i_24, i_24 + 1), f_7);
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i_5 && i_5 < n) {
        assert {:msg "  Exhale might fail. Assertion i != a || rcvr(i, i + 1).f > 1 might not hold. (multiple_quantifiers.vpr@58.10--61.42) [104498]"}
          i_5 != a_2 || Heap[rcvr(Heap, i_5, i_5 + 1), f_7] > 1;
      }
      assume false;
    }
    assume (forall i_6_1_1: int, fresh__335_2_1: int ::
      { rcvr#frame(EmptyFrame, i_6_1_1, fresh__335_2_1) }
      0 <= i_6_1_1 && i_6_1_1 < n ==> i_6_1_1 != a_2 || Heap[rcvr(Heap, i_6_1_1, i_6_1_1 + 1), f_7] > 1
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(mat_1: IMatrixDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var c_4: int;
  var r_10: int;
  var c_5: int;
  var r_11: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var olddet: int;
  var oldcolsum3: int;
  var oldrowsum2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall c: Int, r: Int :: { loc(mat, c, r) } 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat))) ==> acc(loc(mat, c, r).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(mat, c, r).val might not be injective. (multiple_quantifiers.vpr@79.12--81.66) [104499]"}
      (forall c_1: int, r_1_1: int, c_1_1: int, r_1_2: int ::
      
      ((((c_1 != c_1_1 && r_1_1 != r_1_2) && (0 <= c_1 && (c_1 < (cols(mat_1): int) && (0 <= r_1_1 && r_1_1 < (rows(mat_1): int))))) && (0 <= c_1_1 && (c_1_1 < (cols(mat_1): int) && (0 <= r_1_2 && r_1_2 < (rows(mat_1): int))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, c_1, r_1_1): Ref) != (loc(mat_1, c_1_1, r_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall c_1: int, r_1_1: int ::
        { (loc(mat_1, c_1, r_1_1): Ref) } { (loc(mat_1, c_1, r_1_1): Ref) }
        (0 <= c_1 && (c_1 < (cols(mat_1): int) && (0 <= r_1_1 && r_1_1 < (rows(mat_1): int)))) && NoPerm < FullPerm ==> (qpRange19((loc(mat_1, c_1, r_1_1): Ref)) && invRecv18((loc(mat_1, c_1, r_1_1): Ref)) == c_1) && invRecv19((loc(mat_1, c_1, r_1_1): Ref)) == r_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4), invRecv19(o_4) }
        ((0 <= invRecv18(o_4) && (invRecv18(o_4) < (cols(mat_1): int) && (0 <= invRecv19(o_4) && invRecv19(o_4) < (rows(mat_1): int)))) && NoPerm < FullPerm) && qpRange19(o_4) ==> (loc(mat_1, invRecv18(o_4), invRecv19(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall c_1: int, r_1_1: int ::
        { (loc(mat_1, c_1, r_1_1): Ref) } { (loc(mat_1, c_1, r_1_1): Ref) }
        0 <= c_1 && (c_1 < (cols(mat_1): int) && (0 <= r_1_1 && r_1_1 < (rows(mat_1): int))) ==> (loc(mat_1, c_1, r_1_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv18(o_4) && (invRecv18(o_4) < (cols(mat_1): int) && (0 <= invRecv19(o_4) && invRecv19(o_4) < (rows(mat_1): int)))) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> (loc(mat_1, invRecv18(o_4), invRecv19(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv18(o_4) && (invRecv18(o_4) < (cols(mat_1): int) && (0 <= invRecv19(o_4) && invRecv19(o_4) < (rows(mat_1): int)))) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall c: Int, r: Int :: { loc(mat, c, r) } 0 <= c && (c < cols(mat) && (0 <= r && r < rows(mat))) ==> loc(mat, c, r).val > 0)
      if (*) {
        if (0 <= c_4 && (c_4 < (cols(mat_1): int) && (0 <= r_10 && r_10 < (rows(mat_1): int)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(mat, c, r).val (multiple_quantifiers.vpr@79.12--81.66) [104500]"}
            HasDirectPerm(Mask, (loc(mat_1, c_4, r_10): Ref), val);
        }
        assume false;
      }
    assume (forall c_3: int, r_3_2: int ::
      { (loc(mat_1, c_3, r_3_2): Ref) }
      0 <= c_3 && (c_3 < (cols(mat_1): int) && (0 <= r_3_2 && r_3_2 < (rows(mat_1): int))) ==> Heap[(loc(mat_1, c_3, r_3_2): Ref), val] > 0
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall c: Int, r: Int :: { loc(mat, c, r) } 0 < c && (c < cols(mat) && (0 < r && r < rows(mat))) ==> loc(mat, c, r).val == loc(mat, c - 1, r).val + loc(mat, c, r - 1).val)
      if (*) {
        if (0 < c_5 && (c_5 < (cols(mat_1): int) && (0 < r_11 && r_11 < (rows(mat_1): int)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(mat, c, r).val (multiple_quantifiers.vpr@82.12--85.67) [104501]"}
            HasDirectPerm(Mask, (loc(mat_1, c_5, r_11): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(mat, c - 1, r).val (multiple_quantifiers.vpr@82.12--85.67) [104502]"}
            HasDirectPerm(Mask, (loc(mat_1, c_5 - 1, r_11): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(mat, c, r - 1).val (multiple_quantifiers.vpr@82.12--85.67) [104503]"}
            HasDirectPerm(Mask, (loc(mat_1, c_5, r_11 - 1): Ref), val);
        }
        assume false;
      }
    assume (forall c_5_1: int, r_5: int ::
      { (loc(mat_1, c_5_1, r_5): Ref) }
      0 < c_5_1 && (c_5_1 < (cols(mat_1): int) && (0 < r_5 && r_5 < (rows(mat_1): int))) ==> Heap[(loc(mat_1, c_5_1, r_5): Ref), val] == Heap[(loc(mat_1, c_5_1 - 1, r_5): Ref), val] + Heap[(loc(mat_1, c_5_1, r_5 - 1): Ref), val]
    );
    assume state(Heap, Mask);
    assume 5 <= (cols(mat_1): int);
    assume (cols(mat_1): int) <= (rows(mat_1): int);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert loc(mat, 1, 0).val == 1 && loc(mat, 0, 1).val == 3 ==>
  //   loc(mat, 1, 1).val == 4 -- multiple_quantifiers.vpr@88.3--89.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of loc(mat, 1, 0).val == 1 && loc(mat, 0, 1).val == 3
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(mat, 1, 0).val (multiple_quantifiers.vpr@88.14--89.37) [104504]"}
        HasDirectPerm(ExhaleWellDef0Mask, (loc(mat_1, 1, 0): Ref), val);
      if (Heap[(loc(mat_1, 1, 0): Ref), val] == 1) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access loc(mat, 0, 1).val (multiple_quantifiers.vpr@88.14--89.37) [104505]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(mat_1, 0, 1): Ref), val);
      }
    if (Heap[(loc(mat_1, 1, 0): Ref), val] == 1 && Heap[(loc(mat_1, 0, 1): Ref), val] == 3) {
      
      // -- Check definedness of loc(mat, 1, 1).val == 4
        assert {:msg "  Assert might fail. There might be insufficient permission to access loc(mat, 1, 1).val (multiple_quantifiers.vpr@88.14--89.37) [104506]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(mat_1, 1, 1): Ref), val);
      assert {:msg "  Assert might fail. Assertion loc(mat, 1, 1).val == 4 might not hold. (multiple_quantifiers.vpr@88.14--89.37) [104507]"}
        Heap[(loc(mat_1, 1, 1): Ref), val] == 4;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: olddet := det(mat) -- multiple_quantifiers.vpr@91.3--91.30
    
    // -- Check definedness of det(mat)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(mat, c, r) is injective
          assert {:msg "  Precondition of function det might not hold. Quantified resource loc(mat, c, r).val might not be injective. (multiple_quantifiers.vpr@91.22--91.30) [104508]"}
            (forall c_6: int, r_6_1: int, c_6_1: int, r_6_2: int ::
            { neverTriggered21(c_6, r_6_1), neverTriggered21(c_6_1, r_6_2) }
            ((((c_6 != c_6_1 && r_6_1 != r_6_2) && (0 <= c_6 && (c_6 < (cols(mat_1): int) && (0 <= r_6_1 && r_6_1 < (rows(mat_1): int))))) && (0 <= c_6_1 && (c_6_1 < (cols(mat_1): int) && (0 <= r_6_2 && r_6_2 < (rows(mat_1): int))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, c_6, r_6_1): Ref) != (loc(mat_1, c_6_1, r_6_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function det might not hold. There might be insufficient permission to access loc(mat, c, r).val (multiple_quantifiers.vpr@91.22--91.30) [104509]"}
            (forall c_6: int, r_6_1: int ::
            { (loc(mat_1, c_6, r_6_1): Ref) } { (loc(mat_1, c_6, r_6_1): Ref) }
            0 <= c_6 && (c_6 < (cols(mat_1): int) && (0 <= r_6_1 && r_6_1 < (rows(mat_1): int))) ==> FullPerm > NoPerm ==> Mask[(loc(mat_1, c_6, r_6_1): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(mat, c, r)
          assume (forall c_6: int, r_6_1: int ::
            { (loc(mat_1, c_6, r_6_1): Ref) } { (loc(mat_1, c_6, r_6_1): Ref) }
            (0 <= c_6 && (c_6 < (cols(mat_1): int) && (0 <= r_6_1 && r_6_1 < (rows(mat_1): int)))) && NoPerm < FullPerm ==> (qpRange21((loc(mat_1, c_6, r_6_1): Ref)) && invRecv20((loc(mat_1, c_6, r_6_1): Ref)) == c_6) && invRecv21((loc(mat_1, c_6, r_6_1): Ref)) == r_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv20(o_4), invRecv21(o_4) }
            (0 <= invRecv20(o_4) && (invRecv20(o_4) < (cols(mat_1): int) && (0 <= invRecv21(o_4) && invRecv21(o_4) < (rows(mat_1): int)))) && (NoPerm < FullPerm && qpRange21(o_4)) ==> (loc(mat_1, invRecv20(o_4), invRecv21(o_4)): Ref) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    olddet := det(Heap, mat_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: oldcolsum3 := colsum(mat, 3) -- multiple_quantifiers.vpr@92.3--92.40
    
    // -- Check definedness of colsum(mat, 3)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function colsum might not hold. Assertion 3 < cols(mat) might not hold. (multiple_quantifiers.vpr@92.26--92.40) [104510]"}
          3 < (cols(mat_1): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(mat, 3, r) is injective
          assert {:msg "  Precondition of function colsum might not hold. Quantified resource loc(mat, 3, r).val might not be injective. (multiple_quantifiers.vpr@92.26--92.40) [104511]"}
            (forall r_7: int, r_7_1: int ::
            { neverTriggered22(r_7), neverTriggered22(r_7_1) }
            (((r_7 != r_7_1 && (0 <= r_7 && r_7 < (rows(mat_1): int))) && (0 <= r_7_1 && r_7_1 < (rows(mat_1): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, 3, r_7): Ref) != (loc(mat_1, 3, r_7_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function colsum might not hold. There might be insufficient permission to access loc(mat, 3, r).val (multiple_quantifiers.vpr@92.26--92.40) [104512]"}
            (forall r_7: int ::
            { (loc(mat_1, 3, r_7): Ref) } { (loc(mat_1, 3, r_7): Ref) }
            0 <= r_7 && r_7 < (rows(mat_1): int) ==> FullPerm > NoPerm ==> Mask[(loc(mat_1, 3, r_7): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(mat, 3, r)
          assume (forall r_7: int ::
            { (loc(mat_1, 3, r_7): Ref) } { (loc(mat_1, 3, r_7): Ref) }
            (0 <= r_7 && r_7 < (rows(mat_1): int)) && NoPerm < FullPerm ==> qpRange22((loc(mat_1, 3, r_7): Ref)) && invRecv22((loc(mat_1, 3, r_7): Ref)) == r_7
          );
          assume (forall o_4: Ref ::
            { invRecv22(o_4) }
            (0 <= invRecv22(o_4) && invRecv22(o_4) < (rows(mat_1): int)) && (NoPerm < FullPerm && qpRange22(o_4)) ==> (loc(mat_1, 3, invRecv22(o_4)): Ref) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    oldcolsum3 := colsum(Heap, mat_1, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: oldrowsum2 := rowsum(mat, 2) -- multiple_quantifiers.vpr@93.3--93.40
    
    // -- Check definedness of rowsum(mat, 2)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function rowsum might not hold. Assertion 2 < rows(mat) might not hold. (multiple_quantifiers.vpr@93.26--93.40) [104513]"}
          2 < (rows(mat_1): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(mat, c, 2) is injective
          assert {:msg "  Precondition of function rowsum might not hold. Quantified resource loc(mat, c, 2).val might not be injective. (multiple_quantifiers.vpr@93.26--93.40) [104514]"}
            (forall c_7: int, c_7_1: int ::
            { neverTriggered23(c_7), neverTriggered23(c_7_1) }
            (((c_7 != c_7_1 && (0 <= c_7 && c_7 < (cols(mat_1): int))) && (0 <= c_7_1 && c_7_1 < (cols(mat_1): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, c_7, 2): Ref) != (loc(mat_1, c_7_1, 2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function rowsum might not hold. There might be insufficient permission to access loc(mat, c, 2).val (multiple_quantifiers.vpr@93.26--93.40) [104515]"}
            (forall c_7: int ::
            { (loc(mat_1, c_7, 2): Ref) } { (loc(mat_1, c_7, 2): Ref) }
            0 <= c_7 && c_7 < (cols(mat_1): int) ==> FullPerm > NoPerm ==> Mask[(loc(mat_1, c_7, 2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(mat, c, 2)
          assume (forall c_7: int ::
            { (loc(mat_1, c_7, 2): Ref) } { (loc(mat_1, c_7, 2): Ref) }
            (0 <= c_7 && c_7 < (cols(mat_1): int)) && NoPerm < FullPerm ==> qpRange23((loc(mat_1, c_7, 2): Ref)) && invRecv23((loc(mat_1, c_7, 2): Ref)) == c_7
          );
          assume (forall o_4: Ref ::
            { invRecv23(o_4) }
            (0 <= invRecv23(o_4) && invRecv23(o_4) < (cols(mat_1): int)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> (loc(mat_1, invRecv23(o_4), 2): Ref) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    oldrowsum2 := rowsum(Heap, mat_1, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert det(mat) == olddet -- multiple_quantifiers.vpr@95.3--95.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of det(mat) == olddet
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(mat, c, r) is injective
          assert {:msg "  Precondition of function det might not hold. Quantified resource loc(mat, c, r).val might not be injective. (multiple_quantifiers.vpr@95.10--95.18) [104516]"}
            (forall c_8: int, r_8: int, c_8_1: int, r_8_1: int ::
            { neverTriggered25(c_8, r_8), neverTriggered25(c_8_1, r_8_1) }
            ((((c_8 != c_8_1 && r_8 != r_8_1) && (0 <= c_8 && (c_8 < (cols(mat_1): int) && (0 <= r_8 && r_8 < (rows(mat_1): int))))) && (0 <= c_8_1 && (c_8_1 < (cols(mat_1): int) && (0 <= r_8_1 && r_8_1 < (rows(mat_1): int))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, c_8, r_8): Ref) != (loc(mat_1, c_8_1, r_8_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function det might not hold. There might be insufficient permission to access loc(mat, c, r).val (multiple_quantifiers.vpr@95.10--95.18) [104517]"}
            (forall c_8: int, r_8: int ::
            { (loc(mat_1, c_8, r_8): Ref) } { (loc(mat_1, c_8, r_8): Ref) }
            0 <= c_8 && (c_8 < (cols(mat_1): int) && (0 <= r_8 && r_8 < (rows(mat_1): int))) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(mat_1, c_8, r_8): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(mat, c, r)
          assume (forall c_8: int, r_8: int ::
            { (loc(mat_1, c_8, r_8): Ref) } { (loc(mat_1, c_8, r_8): Ref) }
            (0 <= c_8 && (c_8 < (cols(mat_1): int) && (0 <= r_8 && r_8 < (rows(mat_1): int)))) && NoPerm < FullPerm ==> (qpRange25((loc(mat_1, c_8, r_8): Ref)) && invRecv24((loc(mat_1, c_8, r_8): Ref)) == c_8) && invRecv25((loc(mat_1, c_8, r_8): Ref)) == r_8
          );
          assume (forall o_4: Ref ::
            { invRecv24(o_4), invRecv25(o_4) }
            (0 <= invRecv24(o_4) && (invRecv24(o_4) < (cols(mat_1): int) && (0 <= invRecv25(o_4) && invRecv25(o_4) < (rows(mat_1): int)))) && (NoPerm < FullPerm && qpRange25(o_4)) ==> (loc(mat_1, invRecv24(o_4), invRecv25(o_4)): Ref) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion det(mat) == olddet might not hold. (multiple_quantifiers.vpr@95.10--95.28) [104518]"}
      det(Heap, mat_1) == olddet;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert colsum(mat, 3) == oldcolsum3 -- multiple_quantifiers.vpr@96.3--96.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of colsum(mat, 3) == oldcolsum3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function colsum might not hold. Assertion 3 < cols(mat) might not hold. (multiple_quantifiers.vpr@96.10--96.24) [104519]"}
          3 < (cols(mat_1): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(mat, 3, r) is injective
          assert {:msg "  Precondition of function colsum might not hold. Quantified resource loc(mat, 3, r).val might not be injective. (multiple_quantifiers.vpr@96.10--96.24) [104520]"}
            (forall r_9: int, r_9_1: int ::
            { neverTriggered26(r_9), neverTriggered26(r_9_1) }
            (((r_9 != r_9_1 && (0 <= r_9 && r_9 < (rows(mat_1): int))) && (0 <= r_9_1 && r_9_1 < (rows(mat_1): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, 3, r_9): Ref) != (loc(mat_1, 3, r_9_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function colsum might not hold. There might be insufficient permission to access loc(mat, 3, r).val (multiple_quantifiers.vpr@96.10--96.24) [104521]"}
            (forall r_9: int ::
            { (loc(mat_1, 3, r_9): Ref) } { (loc(mat_1, 3, r_9): Ref) }
            0 <= r_9 && r_9 < (rows(mat_1): int) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(mat_1, 3, r_9): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(mat, 3, r)
          assume (forall r_9: int ::
            { (loc(mat_1, 3, r_9): Ref) } { (loc(mat_1, 3, r_9): Ref) }
            (0 <= r_9 && r_9 < (rows(mat_1): int)) && NoPerm < FullPerm ==> qpRange26((loc(mat_1, 3, r_9): Ref)) && invRecv26((loc(mat_1, 3, r_9): Ref)) == r_9
          );
          assume (forall o_4: Ref ::
            { invRecv26(o_4) }
            (0 <= invRecv26(o_4) && invRecv26(o_4) < (rows(mat_1): int)) && (NoPerm < FullPerm && qpRange26(o_4)) ==> (loc(mat_1, 3, invRecv26(o_4)): Ref) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion colsum(mat, 3) == oldcolsum3 might not hold. (multiple_quantifiers.vpr@96.10--96.38) [104522]"}
      colsum(Heap, mat_1, 3) == oldcolsum3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert rowsum(mat, 2) == oldrowsum2 -- multiple_quantifiers.vpr@97.3--97.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of rowsum(mat, 2) == oldrowsum2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function rowsum might not hold. Assertion 2 < rows(mat) might not hold. (multiple_quantifiers.vpr@97.10--97.24) [104523]"}
          2 < (rows(mat_1): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(mat, c, 2) is injective
          assert {:msg "  Precondition of function rowsum might not hold. Quantified resource loc(mat, c, 2).val might not be injective. (multiple_quantifiers.vpr@97.10--97.24) [104524]"}
            (forall c_9: int, c_9_1: int ::
            { neverTriggered27(c_9), neverTriggered27(c_9_1) }
            (((c_9 != c_9_1 && (0 <= c_9 && c_9 < (cols(mat_1): int))) && (0 <= c_9_1 && c_9_1 < (cols(mat_1): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(mat_1, c_9, 2): Ref) != (loc(mat_1, c_9_1, 2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function rowsum might not hold. There might be insufficient permission to access loc(mat, c, 2).val (multiple_quantifiers.vpr@97.10--97.24) [104525]"}
            (forall c_9: int ::
            { (loc(mat_1, c_9, 2): Ref) } { (loc(mat_1, c_9, 2): Ref) }
            0 <= c_9 && c_9 < (cols(mat_1): int) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(mat_1, c_9, 2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(mat, c, 2)
          assume (forall c_9: int ::
            { (loc(mat_1, c_9, 2): Ref) } { (loc(mat_1, c_9, 2): Ref) }
            (0 <= c_9 && c_9 < (cols(mat_1): int)) && NoPerm < FullPerm ==> qpRange27((loc(mat_1, c_9, 2): Ref)) && invRecv27((loc(mat_1, c_9, 2): Ref)) == c_9
          );
          assume (forall o_4: Ref ::
            { invRecv27(o_4) }
            (0 <= invRecv27(o_4) && invRecv27(o_4) < (cols(mat_1): int)) && (NoPerm < FullPerm && qpRange27(o_4)) ==> (loc(mat_1, invRecv27(o_4), 2): Ref) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion rowsum(mat, 2) == oldrowsum2 might not hold. (multiple_quantifiers.vpr@97.10--97.38) [104526]"}
      rowsum(Heap, mat_1, 2) == oldrowsum2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(rs1: (IArrayDomainType Ref), rs2: (IArrayDomainType Ref)) returns ()
  modifies Heap, Mask;
{
  var l1_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var k1: int;
  var k2: int;
  var Labell1Mask: MaskType;
  var Labell1Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i1_2: int;
  var i2_31: int;
  var i1_6_1: int;
  var i2_6: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    l1_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref) }
  //     0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
  //     acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write)) -- multiple_quantifiers.vpr@110.3--111.93
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref) } 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==> acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) might not be injective. (multiple_quantifiers.vpr@110.10--111.93) [104527]"}
        (forall i1_1_1: int, i2_1_1: int, i1_1_2: int, i2_1_2: int ::
        { neverTriggered29(i1_1_1, i2_1_1), neverTriggered29(i1_1_2, i2_1_2) }
        ((((i1_1_1 != i1_1_2 && i2_1_1 != i2_1_2) && (0 <= i1_1_1 && (i1_1_1 < (len_1(rs1): int) && (0 <= i2_1_1 && i2_1_1 < (len_1(rs2): int))))) && (0 <= i1_1_2 && (i1_1_2 < (len_1(rs1): int) && (0 <= i2_1_2 && i2_1_2 < (len_1(rs2): int))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (aloc(rs1, i1_1_1): Ref) != (aloc(rs1, i1_1_2): Ref) || (aloc(rs2, i2_1_1): Ref) != (aloc(rs2, i2_1_2): Ref)
      );
    
    // -- Define Inverse Function
      assume (forall i1_1_1: int, i2_1_1: int ::
        { Heap[null, P((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref))] } { Mask[null, P((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref))] } { (aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref) }
        (0 <= i1_1_1 && (i1_1_1 < (len_1(rs1): int) && (0 <= i2_1_1 && i2_1_1 < (len_1(rs2): int)))) && NoPerm < FullPerm ==> (invRecv28((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref)) == i1_1_1 && invRecv29((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref)) == i2_1_1) && qpRange29((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref))
      );
      assume (forall x: Ref, y: Ref ::
        { invRecv28(x, y), invRecv29(x, y) }
        ((0 <= invRecv28(x, y) && (invRecv28(x, y) < (len_1(rs1): int) && (0 <= invRecv29(x, y) && invRecv29(x, y) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange29(x, y) ==> (aloc(rs1, invRecv28(x, y)): Ref) == x && (aloc(rs2, invRecv29(x, y)): Ref) == y
      );
    
    // -- Define updated permissions
      assume (forall x: Ref, y: Ref ::
        { QPMask[null, P(x, y)] }
        ((0 <= invRecv28(x, y) && (invRecv28(x, y) < (len_1(rs1): int) && (0 <= invRecv29(x, y) && invRecv29(x, y) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange29(x, y) ==> (NoPerm < FullPerm ==> (aloc(rs1, invRecv28(x, y)): Ref) == x && (aloc(rs2, invRecv29(x, y)): Ref) == y) && QPMask[null, P(x, y)] == Mask[null, P(x, y)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x: Ref, y: Ref ::
        { QPMask[null, P(x, y)] }
        !(((0 <= invRecv28(x, y) && (invRecv28(x, y) < (len_1(rs1): int) && (0 <= invRecv29(x, y) && invRecv29(x, y) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange29(x, y)) ==> QPMask[null, P(x, y)] == Mask[null, P(x, y)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= k1 && k1 < (len(rs1): Int) -- multiple_quantifiers.vpr@117.3--117.34
    assume 0 <= k1;
    assume k1 < (len_1(rs1): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= k2 && k2 < (len(rs2): Int) -- multiple_quantifiers.vpr@118.3--118.34
    assume 0 <= k2;
    assume k2 < (len_1(rs2): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label l1 -- multiple_quantifiers.vpr@120.3--120.11
    l1_2:
    Labell1Mask := Mask;
    Labell1Heap := Heap;
    l1_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)), write) -- multiple_quantifiers.vpr@122.3--122.41
    assume P#trigger(Heap, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)));
    assume Heap[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))] == CombineFrames(FrameFragment(Heap[(aloc(rs1, k1): Ref), f_7]), FrameFragment(Heap[(aloc(rs2, k2): Ref), f_7]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) might fail. There might be insufficient permission to access P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) (multiple_quantifiers.vpr@122.3--122.41) [104530]"}
        perm <= Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))];
    }
    Mask := Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)))) {
        havoc newVersion;
        Heap := Heap[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=newVersion];
      }
    perm := FullPerm;
    assume (aloc(rs1, k1): Ref) != null;
    Mask := Mask[(aloc(rs1, k1): Ref), f_7:=Mask[(aloc(rs1, k1): Ref), f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume (aloc(rs2, k2): Ref) != null;
    Mask := Mask[(aloc(rs2, k2): Ref), f_7:=Mask[(aloc(rs2, k2): Ref), f_7] + perm];
    assume state(Heap, Mask);
    assume Heap[(aloc(rs1, k1): Ref), f_7] < Heap[(aloc(rs2, k2): Ref), f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: (aloc(rs1, k1): Ref).f := (aloc(rs2, k2): Ref).f -- multiple_quantifiers.vpr@123.3--123.37
    
    // -- Check definedness of (aloc(rs2, k2): Ref).f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access (aloc(rs2, k2): Ref).f (multiple_quantifiers.vpr@123.3--123.37) [104533]"}
        HasDirectPerm(Mask, (aloc(rs2, k2): Ref), f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access (aloc(rs1, k1): Ref).f (multiple_quantifiers.vpr@123.3--123.37) [104534]"}
      FullPerm == Mask[(aloc(rs1, k1): Ref), f_7];
    Heap := Heap[(aloc(rs1, k1): Ref), f_7:=Heap[(aloc(rs2, k2): Ref), f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: (aloc(rs2, k2): Ref).f := (aloc(rs2, k2): Ref).f + 1 -- multiple_quantifiers.vpr@124.3--124.41
    
    // -- Check definedness of (aloc(rs2, k2): Ref).f + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access (aloc(rs2, k2): Ref).f (multiple_quantifiers.vpr@124.3--124.41) [104535]"}
        HasDirectPerm(Mask, (aloc(rs2, k2): Ref), f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access (aloc(rs2, k2): Ref).f (multiple_quantifiers.vpr@124.3--124.41) [104536]"}
      FullPerm == Mask[(aloc(rs2, k2): Ref), f_7];
    Heap := Heap[(aloc(rs2, k2): Ref), f_7:=Heap[(aloc(rs2, k2): Ref), f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)), write) -- multiple_quantifiers.vpr@125.3--125.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) might fail. There might be insufficient permission to access (aloc(rs1, k1): Ref).f (multiple_quantifiers.vpr@125.3--125.39) [104539]"}
        perm <= Mask[(aloc(rs1, k1): Ref), f_7];
    }
    Mask := Mask[(aloc(rs1, k1): Ref), f_7:=Mask[(aloc(rs1, k1): Ref), f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) might fail. There might be insufficient permission to access (aloc(rs2, k2): Ref).f (multiple_quantifiers.vpr@125.3--125.39) [104541]"}
        perm <= Mask[(aloc(rs2, k2): Ref), f_7];
    }
    Mask := Mask[(aloc(rs2, k2): Ref), f_7:=Mask[(aloc(rs2, k2): Ref), f_7] - perm];
    assert {:msg "  Folding P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) might fail. Assertion (aloc(rs1, k1): Ref).f < (aloc(rs2, k2): Ref).f might not hold. (multiple_quantifiers.vpr@125.3--125.39) [104542]"}
      Heap[(aloc(rs1, k1): Ref), f_7] < Heap[(aloc(rs2, k2): Ref), f_7];
    perm := FullPerm;
    Mask := Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)));
    assume Heap[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))] == CombineFrames(FrameFragment(Heap[(aloc(rs1, k1): Ref), f_7]), FrameFragment(Heap[(aloc(rs2, k2): Ref), f_7]));
    if (!HasDirectPerm(Mask, null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)))) {
      Heap := Heap[null, P#sm((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=freshVersion];
    }
    Heap := Heap[null, P#sm((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=Heap[null, P#sm((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))][(aloc(rs1, k1): Ref), f_7:=true]];
    Heap := Heap[null, P#sm((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=Heap[null, P#sm((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))][(aloc(rs2, k2): Ref), f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) >
  //   old[l1](getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))) -- multiple_quantifiers.vpr@127.3--127.90
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) > old[l1](getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function getP might not hold. There might be insufficient permission to access P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) (multiple_quantifiers.vpr@127.10--127.44) [104544]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. Did not reach labelled state l1 required to evaluate old[l1](getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))). (multiple_quantifiers.vpr@127.10--127.90) [104545]"}
        l1_lblGuard;
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := Labell1Mask;
        ExhaleWellDef1Heap := Labell1Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function getP might not hold. There might be insufficient permission to access P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) (multiple_quantifiers.vpr@127.55--127.89) [104546]"}
          NoPerm < perm ==> NoPerm < Labell1Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Labell1Heap, ExhaleHeap, Labell1Mask);
        Labell1Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) > old[l1](getP((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))) might not hold. (multiple_quantifiers.vpr@127.10--127.90) [104547]"}
      getP(Heap, (aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) > getP(Labell1Heap, (aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref));
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i1: Int, i2: Int ::
  //     { (aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref) }
  //     0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
  //     acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write)) &&
  //   (forall i1: Int, i2: Int ::
  //     { old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))) }
  //     0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
  //     i1 != k1 && i2 != k2 ==>
  //     getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) ==
  //     old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)))) -- multiple_quantifiers.vpr@129.3--132.118
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref) } 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==> acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) might not be injective. (multiple_quantifiers.vpr@129.10--132.118) [104549]"}
        (forall i1_4_1: int, i2_4: int, i1_4_2: int, i2_4_1: int ::
        { neverTriggered31(i1_4_1, i2_4), neverTriggered31(i1_4_2, i2_4_1) }
        ((((i1_4_1 != i1_4_2 && i2_4 != i2_4_1) && (0 <= i1_4_1 && (i1_4_1 < (len_1(rs1): int) && (0 <= i2_4 && i2_4 < (len_1(rs2): int))))) && (0 <= i1_4_2 && (i1_4_2 < (len_1(rs1): int) && (0 <= i2_4_1 && i2_4_1 < (len_1(rs2): int))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (aloc(rs1, i1_4_1): Ref) != (aloc(rs1, i1_4_2): Ref) || (aloc(rs2, i2_4): Ref) != (aloc(rs2, i2_4_1): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) (multiple_quantifiers.vpr@129.10--132.118) [104550]"}
        (forall i1_4_1: int, i2_4: int ::
        { Heap[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] } { Mask[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] } { (aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref) }
        0 <= i1_4_1 && (i1_4_1 < (len_1(rs1): int) && (0 <= i2_4 && i2_4 < (len_1(rs2): int))) ==> Mask[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write)
      assume (forall i1_4_1: int, i2_4: int ::
        { Heap[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] } { Mask[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] } { (aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref) }
        (0 <= i1_4_1 && (i1_4_1 < (len_1(rs1): int) && (0 <= i2_4 && i2_4 < (len_1(rs2): int)))) && NoPerm < FullPerm ==> (invRecv30((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref)) == i1_4_1 && invRecv31((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref)) == i2_4) && qpRange31((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))
      );
      assume (forall x_1: Ref, y_1: Ref ::
        { invRecv30(x_1, y_1), invRecv31(x_1, y_1) }
        ((0 <= invRecv30(x_1, y_1) && (invRecv30(x_1, y_1) < (len_1(rs1): int) && (0 <= invRecv31(x_1, y_1) && invRecv31(x_1, y_1) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange31(x_1, y_1) ==> (aloc(rs1, invRecv30(x_1, y_1)): Ref) == x_1 && (aloc(rs2, invRecv31(x_1, y_1)): Ref) == y_1
      );
    
    // -- assume permission updates
      assume (forall x_1: Ref, y_1: Ref ::
        { QPMask[null, P(x_1, y_1)] }
        ((0 <= invRecv30(x_1, y_1) && (invRecv30(x_1, y_1) < (len_1(rs1): int) && (0 <= invRecv31(x_1, y_1) && invRecv31(x_1, y_1) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange31(x_1, y_1) ==> ((aloc(rs1, invRecv30(x_1, y_1)): Ref) == x_1 && (aloc(rs2, invRecv31(x_1, y_1)): Ref) == y_1) && QPMask[null, P(x_1, y_1)] == Mask[null, P(x_1, y_1)] - FullPerm
      );
      assume (forall x_1: Ref, y_1: Ref ::
        { QPMask[null, P(x_1, y_1)] }
        !(((0 <= invRecv30(x_1, y_1) && (invRecv30(x_1, y_1) < (len_1(rs1): int) && (0 <= invRecv31(x_1, y_1) && invRecv31(x_1, y_1) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange31(x_1, y_1)) ==> QPMask[null, P(x_1, y_1)] == Mask[null, P(x_1, y_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))) } 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==> i1 != k1 && i2 != k2 ==> getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) == old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))))
      if (*) {
        if (0 <= i1_2 && (i1_2 < (len_1(rs1): int) && (0 <= i2_31 && i2_31 < (len_1(rs2): int)))) {
          if (i1_2 != k1 && i2_31 != k2) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function getP might not hold. There might be insufficient permission to access P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) (multiple_quantifiers.vpr@132.36--132.70) [104551]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P((aloc(rs1, i1_2): Ref), (aloc(rs2, i2_31): Ref))];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            assert {:msg "  Exhale might fail. Did not reach labelled state l1 required to evaluate old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))). (multiple_quantifiers.vpr@129.10--132.118) [104552]"}
              l1_lblGuard;
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Mask := Labell1Mask;
              ExhaleWellDef1Heap := Labell1Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function getP might not hold. There might be insufficient permission to access P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) (multiple_quantifiers.vpr@132.82--132.116) [104553]"}
                NoPerm < perm ==> NoPerm < Labell1Mask[null, P((aloc(rs1, i1_2): Ref), (aloc(rs2, i2_31): Ref))];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Labell1Heap, ExhaleHeap, Labell1Mask);
              Labell1Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i1_6_1 && (i1_6_1 < (len_1(rs1): int) && (0 <= i2_6 && i2_6 < (len_1(rs2): int)))) {
        if (i1_6_1 != k1 && i2_6 != k2) {
          assert {:msg "  Exhale might fail. Assertion getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) == old[l1](getP((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref))) might not hold. (multiple_quantifiers.vpr@129.10--132.118) [104554]"}
            getP(Heap, (aloc(rs1, i1_6_1): Ref), (aloc(rs2, i2_6): Ref)) == getP(Labell1Heap, (aloc(rs1, i1_6_1): Ref), (aloc(rs2, i2_6): Ref));
        }
      }
      assume false;
    }
    assume (forall i1_7_1_1: int, i2_7_1: int ::
      { getP#frame(Labell1Heap[null, P((aloc(rs1, i1_7_1_1): Ref), (aloc(rs2, i2_7_1): Ref))], (aloc(rs1, i1_7_1_1): Ref), (aloc(rs2, i2_7_1): Ref)) }
      0 <= i1_7_1_1 && (i1_7_1_1 < (len_1(rs1): int) && (0 <= i2_7_1 && i2_7_1 < (len_1(rs2): int))) ==> i1_7_1_1 != k1 && i2_7_1 != k2 ==> getP(Heap, (aloc(rs1, i1_7_1_1): Ref), (aloc(rs2, i2_7_1): Ref)) == getP(Labell1Heap, (aloc(rs1, i1_7_1_1): Ref), (aloc(rs2, i2_7_1): Ref))
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04_fail
// ==================================================

procedure test04_fail(rs1: (IArrayDomainType Ref), rs2: (IArrayDomainType Ref)) returns ()
  modifies Heap, Mask;
{
  var l1_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var k1: int;
  var k2: int;
  var Labell1Mask: MaskType;
  var Labell1Heap: HeapType;
  var perm: Perm;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    l1_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i1: Int, i2: Int ::
  //     { (aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref) }
  //     0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
  //     acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write)) -- multiple_quantifiers.vpr@136.3--137.93
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref) } 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==> acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) might not be injective. (multiple_quantifiers.vpr@136.10--137.93) [104555]"}
        (forall i1_1_1: int, i2_1_1: int, i1_1_2: int, i2_1_2: int ::
        { neverTriggered33(i1_1_1, i2_1_1), neverTriggered33(i1_1_2, i2_1_2) }
        ((((i1_1_1 != i1_1_2 && i2_1_1 != i2_1_2) && (0 <= i1_1_1 && (i1_1_1 < (len_1(rs1): int) && (0 <= i2_1_1 && i2_1_1 < (len_1(rs2): int))))) && (0 <= i1_1_2 && (i1_1_2 < (len_1(rs1): int) && (0 <= i2_1_2 && i2_1_2 < (len_1(rs2): int))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (aloc(rs1, i1_1_1): Ref) != (aloc(rs1, i1_1_2): Ref) || (aloc(rs2, i2_1_1): Ref) != (aloc(rs2, i2_1_2): Ref)
      );
    
    // -- Define Inverse Function
      assume (forall i1_1_1: int, i2_1_1: int ::
        { Heap[null, P((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref))] } { Mask[null, P((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref))] } { (aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref) }
        (0 <= i1_1_1 && (i1_1_1 < (len_1(rs1): int) && (0 <= i2_1_1 && i2_1_1 < (len_1(rs2): int)))) && NoPerm < FullPerm ==> (invRecv32((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref)) == i1_1_1 && invRecv33((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref)) == i2_1_1) && qpRange33((aloc(rs1, i1_1_1): Ref), (aloc(rs2, i2_1_1): Ref))
      );
      assume (forall x: Ref, y: Ref ::
        { invRecv32(x, y), invRecv33(x, y) }
        ((0 <= invRecv32(x, y) && (invRecv32(x, y) < (len_1(rs1): int) && (0 <= invRecv33(x, y) && invRecv33(x, y) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange33(x, y) ==> (aloc(rs1, invRecv32(x, y)): Ref) == x && (aloc(rs2, invRecv33(x, y)): Ref) == y
      );
    
    // -- Define updated permissions
      assume (forall x: Ref, y: Ref ::
        { QPMask[null, P(x, y)] }
        ((0 <= invRecv32(x, y) && (invRecv32(x, y) < (len_1(rs1): int) && (0 <= invRecv33(x, y) && invRecv33(x, y) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange33(x, y) ==> (NoPerm < FullPerm ==> (aloc(rs1, invRecv32(x, y)): Ref) == x && (aloc(rs2, invRecv33(x, y)): Ref) == y) && QPMask[null, P(x, y)] == Mask[null, P(x, y)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x: Ref, y: Ref ::
        { QPMask[null, P(x, y)] }
        !(((0 <= invRecv32(x, y) && (invRecv32(x, y) < (len_1(rs1): int) && (0 <= invRecv33(x, y) && invRecv33(x, y) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange33(x, y)) ==> QPMask[null, P(x, y)] == Mask[null, P(x, y)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall i1: Int, i2: Int ::
  //     { (aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref) }
  //     0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==>
  //     acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write)) -- multiple_quantifiers.vpr@139.3--140.95
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i1: Int, i2: Int :: { (aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref) } 0 <= i1 && (i1 < (len(rs1): Int) && (0 <= i2 && i2 < (len(rs2): Int))) ==> acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) might not be injective. (multiple_quantifiers.vpr@139.10--140.95) [104557]"}
        (forall i1_4_1: int, i2_4: int, i1_4_2: int, i2_4_1: int ::
        { neverTriggered35(i1_4_1, i2_4), neverTriggered35(i1_4_2, i2_4_1) }
        ((((i1_4_1 != i1_4_2 && i2_4 != i2_4_1) && (0 <= i1_4_1 && (i1_4_1 < (len_1(rs1): int) && (0 <= i2_4 && i2_4 < (len_1(rs2): int))))) && (0 <= i1_4_2 && (i1_4_2 < (len_1(rs1): int) && (0 <= i2_4_1 && i2_4_1 < (len_1(rs2): int))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (aloc(rs1, i1_4_1): Ref) != (aloc(rs1, i1_4_2): Ref) || (aloc(rs2, i2_4): Ref) != (aloc(rs2, i2_4_1): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)) (multiple_quantifiers.vpr@139.10--140.95) [104558]"}
        (forall i1_4_1: int, i2_4: int ::
        { Heap[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] } { Mask[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] } { (aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref) }
        0 <= i1_4_1 && (i1_4_1 < (len_1(rs1): int) && (0 <= i2_4 && i2_4 < (len_1(rs2): int))) ==> Mask[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(P((aloc(rs1, i1): Ref), (aloc(rs2, i2): Ref)), write)
      assume (forall i1_4_1: int, i2_4: int ::
        { Heap[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] } { Mask[null, P((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))] } { (aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref) }
        (0 <= i1_4_1 && (i1_4_1 < (len_1(rs1): int) && (0 <= i2_4 && i2_4 < (len_1(rs2): int)))) && NoPerm < FullPerm ==> (invRecv34((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref)) == i1_4_1 && invRecv35((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref)) == i2_4) && qpRange35((aloc(rs1, i1_4_1): Ref), (aloc(rs2, i2_4): Ref))
      );
      assume (forall x_1: Ref, y_1: Ref ::
        { invRecv34(x_1, y_1), invRecv35(x_1, y_1) }
        ((0 <= invRecv34(x_1, y_1) && (invRecv34(x_1, y_1) < (len_1(rs1): int) && (0 <= invRecv35(x_1, y_1) && invRecv35(x_1, y_1) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange35(x_1, y_1) ==> (aloc(rs1, invRecv34(x_1, y_1)): Ref) == x_1 && (aloc(rs2, invRecv35(x_1, y_1)): Ref) == y_1
      );
    
    // -- assume permission updates
      assume (forall x_1: Ref, y_1: Ref ::
        { QPMask[null, P(x_1, y_1)] }
        ((0 <= invRecv34(x_1, y_1) && (invRecv34(x_1, y_1) < (len_1(rs1): int) && (0 <= invRecv35(x_1, y_1) && invRecv35(x_1, y_1) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange35(x_1, y_1) ==> ((aloc(rs1, invRecv34(x_1, y_1)): Ref) == x_1 && (aloc(rs2, invRecv35(x_1, y_1)): Ref) == y_1) && QPMask[null, P(x_1, y_1)] == Mask[null, P(x_1, y_1)] - FullPerm
      );
      assume (forall x_1: Ref, y_1: Ref ::
        { QPMask[null, P(x_1, y_1)] }
        !(((0 <= invRecv34(x_1, y_1) && (invRecv34(x_1, y_1) < (len_1(rs1): int) && (0 <= invRecv35(x_1, y_1) && invRecv35(x_1, y_1) < (len_1(rs2): int)))) && NoPerm < FullPerm) && qpRange35(x_1, y_1)) ==> QPMask[null, P(x_1, y_1)] == Mask[null, P(x_1, y_1)]
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
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= k1 && k1 < (len(rs1): Int) -- multiple_quantifiers.vpr@146.3--146.34
    assume 0 <= k1;
    assume k1 < (len_1(rs1): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= k2 && k2 < (len(rs2): Int) -- multiple_quantifiers.vpr@147.3--147.34
    assume 0 <= k2;
    assume k2 < (len_1(rs2): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label l1 -- multiple_quantifiers.vpr@149.3--149.11
    l1_2:
    Labell1Mask := Mask;
    Labell1Heap := Heap;
    l1_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)), write) -- multiple_quantifiers.vpr@152.3--152.41
    assume P#trigger(Heap, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)));
    assume Heap[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))] == CombineFrames(FrameFragment(Heap[(aloc(rs1, k1): Ref), f_7]), FrameFragment(Heap[(aloc(rs2, k2): Ref), f_7]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) might fail. There might be insufficient permission to access P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)) (multiple_quantifiers.vpr@152.3--152.41) [104561]"}
        perm <= Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))];
    }
    Mask := Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=Mask[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref))] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)))) {
        havoc newVersion;
        Heap := Heap[null, P((aloc(rs1, k1): Ref), (aloc(rs2, k2): Ref)):=newVersion];
      }
    perm := FullPerm;
    assume (aloc(rs1, k1): Ref) != null;
    Mask := Mask[(aloc(rs1, k1): Ref), f_7:=Mask[(aloc(rs1, k1): Ref), f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume (aloc(rs2, k2): Ref) != null;
    Mask := Mask[(aloc(rs2, k2): Ref), f_7:=Mask[(aloc(rs2, k2): Ref), f_7] + perm];
    assume state(Heap, Mask);
    assume Heap[(aloc(rs1, k1): Ref), f_7] < Heap[(aloc(rs2, k2): Ref), f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}